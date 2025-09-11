	.file	"any-of.cpp"
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
	addi.d	$sp, $sp, -1744
	.cfi_def_cfa_offset 5824
	ori	$a2, $zero, 15
	st.d	$a2, $sp, 808
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 808
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
	ori	$a1, $a1, 1704
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 904
	addi.d	$a1, $sp, 808
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 776
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 800
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 792
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 744
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 768
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 760
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 744
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:
	ld.d	$a3, $sp, 760
	beqz	$a3, .LBB0_5
# %bb.4:
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 744
	addi.d	$a1, $sp, 744
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp10:                                # EH_LABEL
.LBB0_5:                                # %_ZNSt14_Function_baseD2Ev.exit
	ld.d	$a3, $sp, 792
	beqz	$a3, .LBB0_7
# %bb.6:
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 776
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp13:                                # EH_LABEL
.LBB0_7:                                # %_ZNSt14_Function_baseD2Ev.exit16
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 712
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 736
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 728
	vst	$vr0, $sp, 680
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 704
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 696
.Ltmp15:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 680
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.8:
	ld.d	$a3, $sp, 696
	beqz	$a3, .LBB0_10
# %bb.9:
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 680
	addi.d	$a1, $sp, 680
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp25:                                # EH_LABEL
.LBB0_10:                               # %_ZNSt14_Function_baseD2Ev.exit18
	ld.d	$a3, $sp, 728
	beqz	$a3, .LBB0_12
# %bb.11:
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 712
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp28:                                # EH_LABEL
.LBB0_12:                               # %_ZNSt14_Function_baseD2Ev.exit20
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 648
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 672
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 664
	vst	$vr0, $sp, 616
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 640
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 632
.Ltmp30:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 616
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.13:
	ld.d	$a3, $sp, 632
	beqz	$a3, .LBB0_15
# %bb.14:
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 616
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp40:                                # EH_LABEL
.LBB0_15:                               # %_ZNSt14_Function_baseD2Ev.exit22
	ld.d	$a3, $sp, 664
	beqz	$a3, .LBB0_17
# %bb.16:
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 648
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp43:                                # EH_LABEL
.LBB0_17:                               # %_ZNSt14_Function_baseD2Ev.exit24
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 584
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 608
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 600
	vst	$vr0, $sp, 552
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 576
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 568
.Ltmp45:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 552
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.18:
	ld.d	$a3, $sp, 568
	beqz	$a3, .LBB0_20
# %bb.19:
.Ltmp54:                                # EH_LABEL
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp55:                                # EH_LABEL
.LBB0_20:                               # %_ZNSt14_Function_baseD2Ev.exit26
	ld.d	$a3, $sp, 600
	beqz	$a3, .LBB0_22
# %bb.21:
.Ltmp57:                                # EH_LABEL
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp58:                                # EH_LABEL
.LBB0_22:                               # %_ZNSt14_Function_baseD2Ev.exit28
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 520
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 544
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 536
	vst	$vr0, $sp, 488
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 512
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 504
.Ltmp60:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 488
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.23:
	ld.d	$a3, $sp, 504
	beqz	$a3, .LBB0_25
# %bb.24:
.Ltmp69:                                # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp70:                                # EH_LABEL
.LBB0_25:                               # %_ZNSt14_Function_baseD2Ev.exit30
	ld.d	$a3, $sp, 536
	beqz	$a3, .LBB0_27
# %bb.26:
.Ltmp72:                                # EH_LABEL
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp73:                                # EH_LABEL
.LBB0_27:                               # %_ZNSt14_Function_baseD2Ev.exit32
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 456
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 480
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 472
	vst	$vr0, $sp, 424
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 448
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 440
.Ltmp75:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 424
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.28:
	ld.d	$a3, $sp, 440
	beqz	$a3, .LBB0_30
# %bb.29:
.Ltmp84:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp85:                                # EH_LABEL
.LBB0_30:                               # %_ZNSt14_Function_baseD2Ev.exit34
	ld.d	$a3, $sp, 472
	beqz	$a3, .LBB0_32
# %bb.31:
.Ltmp87:                                # EH_LABEL
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp88:                                # EH_LABEL
.LBB0_32:                               # %_ZNSt14_Function_baseD2Ev.exit36
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 392
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 416
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 408
	vst	$vr0, $sp, 360
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 384
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 376
.Ltmp90:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 360
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.33:
	ld.d	$a3, $sp, 376
	beqz	$a3, .LBB0_35
# %bb.34:
.Ltmp99:                                # EH_LABEL
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp100:                               # EH_LABEL
.LBB0_35:                               # %_ZNSt14_Function_baseD2Ev.exit38
	ld.d	$a3, $sp, 408
	beqz	$a3, .LBB0_37
# %bb.36:
.Ltmp102:                               # EH_LABEL
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp103:                               # EH_LABEL
.LBB0_37:                               # %_ZNSt14_Function_baseD2Ev.exit40
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 328
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 352
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 344
	vst	$vr0, $sp, 296
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 320
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 312
.Ltmp105:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 296
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjfEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.38:
	ld.d	$a3, $sp, 312
	beqz	$a3, .LBB0_40
# %bb.39:
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp115:                               # EH_LABEL
.LBB0_40:                               # %_ZNSt14_Function_baseD2Ev.exit42
	ld.d	$a3, $sp, 344
	beqz	$a3, .LBB0_42
# %bb.41:
.Ltmp117:                               # EH_LABEL
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp118:                               # EH_LABEL
.LBB0_42:                               # %_ZNSt14_Function_baseD2Ev.exit44
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 264
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 288
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 280
	vst	$vr0, $sp, 232
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 256
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 248
.Ltmp120:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIttEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.43:
	ld.d	$a3, $sp, 248
	beqz	$a3, .LBB0_45
# %bb.44:
.Ltmp129:                               # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp130:                               # EH_LABEL
.LBB0_45:                               # %_ZNSt14_Function_baseD2Ev.exit46
	ld.d	$a3, $sp, 280
	beqz	$a3, .LBB0_47
# %bb.46:
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp133:                               # EH_LABEL
.LBB0_47:                               # %_ZNSt14_Function_baseD2Ev.exit48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 200
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 224
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 216
	vst	$vr0, $sp, 168
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 192
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 184
.Ltmp135:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.48:
	ld.d	$a3, $sp, 184
	beqz	$a3, .LBB0_50
# %bb.49:
.Ltmp144:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp145:                               # EH_LABEL
.LBB0_50:                               # %_ZNSt14_Function_baseD2Ev.exit50
	ld.d	$a3, $sp, 216
	beqz	$a3, .LBB0_52
# %bb.51:
.Ltmp147:                               # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp148:                               # EH_LABEL
.LBB0_52:                               # %_ZNSt14_Function_baseD2Ev.exit52
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 136
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 160
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 152
	vst	$vr0, $sp, 104
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 128
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 120
.Ltmp150:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjfEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.53:
	ld.d	$a3, $sp, 120
	beqz	$a3, .LBB0_55
# %bb.54:
.Ltmp159:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp160:                               # EH_LABEL
.LBB0_55:                               # %_ZNSt14_Function_baseD2Ev.exit54
	ld.d	$a3, $sp, 152
	beqz	$a3, .LBB0_57
# %bb.56:
.Ltmp162:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp163:                               # EH_LABEL
.LBB0_57:                               # %_ZNSt14_Function_baseD2Ev.exit56
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 96
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 88
	vst	$vr0, $sp, 40
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 64
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 56
.Ltmp165:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIttEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.58:
	ld.d	$a3, $sp, 56
	beqz	$a3, .LBB0_60
# %bb.59:
.Ltmp174:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp175:                               # EH_LABEL
.LBB0_60:                               # %_ZNSt14_Function_baseD2Ev.exit58
	ld.d	$a3, $sp, 88
	beqz	$a3, .LBB0_62
# %bb.61:
.Ltmp177:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp178:                               # EH_LABEL
.LBB0_62:                               # %_ZNSt14_Function_baseD2Ev.exit60
	move	$a0, $zero
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1760
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_63:
.Ltmp179:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_64:
.Ltmp176:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_65:
.Ltmp164:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_66:
.Ltmp161:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_67:
.Ltmp149:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_68:
.Ltmp146:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_69:
.Ltmp134:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_70:
.Ltmp131:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_71:
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_72:
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_73:
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_74:
.Ltmp101:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_75:
.Ltmp89:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_76:
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_77:
.Ltmp74:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_78:
.Ltmp71:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_79:
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_80:
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_81:
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_82:
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_83:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_84:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_85:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_86:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_87:
.Ltmp167:                               # EH_LABEL
	ld.d	$a3, $sp, 56
	move	$fp, $a0
	beqz	$a3, .LBB0_89
# %bb.88:
.Ltmp168:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp169:                               # EH_LABEL
.LBB0_89:                               # %_ZNSt14_Function_baseD2Ev.exit106
	ld.d	$a3, $sp, 88
	beqz	$a3, .LBB0_157
# %bb.90:
.Ltmp171:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp172:                               # EH_LABEL
	b	.LBB0_157
.LBB0_91:
.Ltmp173:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_92:
.Ltmp170:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_93:
.Ltmp152:                               # EH_LABEL
	ld.d	$a3, $sp, 120
	move	$fp, $a0
	beqz	$a3, .LBB0_95
# %bb.94:
.Ltmp153:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp154:                               # EH_LABEL
.LBB0_95:                               # %_ZNSt14_Function_baseD2Ev.exit102
	ld.d	$a3, $sp, 152
	beqz	$a3, .LBB0_157
# %bb.96:
.Ltmp156:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp157:                               # EH_LABEL
	b	.LBB0_157
.LBB0_97:
.Ltmp158:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_98:
.Ltmp155:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_99:
.Ltmp137:                               # EH_LABEL
	ld.d	$a3, $sp, 184
	move	$fp, $a0
	beqz	$a3, .LBB0_101
# %bb.100:
.Ltmp138:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp139:                               # EH_LABEL
.LBB0_101:                              # %_ZNSt14_Function_baseD2Ev.exit98
	ld.d	$a3, $sp, 216
	beqz	$a3, .LBB0_157
# %bb.102:
.Ltmp141:                               # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp142:                               # EH_LABEL
	b	.LBB0_157
.LBB0_103:
.Ltmp143:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_104:
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_105:
.Ltmp122:                               # EH_LABEL
	ld.d	$a3, $sp, 248
	move	$fp, $a0
	beqz	$a3, .LBB0_107
# %bb.106:
.Ltmp123:                               # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp124:                               # EH_LABEL
.LBB0_107:                              # %_ZNSt14_Function_baseD2Ev.exit94
	ld.d	$a3, $sp, 280
	beqz	$a3, .LBB0_157
# %bb.108:
.Ltmp126:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp127:                               # EH_LABEL
	b	.LBB0_157
.LBB0_109:
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_110:
.Ltmp125:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_111:
.Ltmp107:                               # EH_LABEL
	ld.d	$a3, $sp, 312
	move	$fp, $a0
	beqz	$a3, .LBB0_113
# %bb.112:
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp109:                               # EH_LABEL
.LBB0_113:                              # %_ZNSt14_Function_baseD2Ev.exit90
	ld.d	$a3, $sp, 344
	beqz	$a3, .LBB0_157
# %bb.114:
.Ltmp111:                               # EH_LABEL
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp112:                               # EH_LABEL
	b	.LBB0_157
.LBB0_115:
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_116:
.Ltmp110:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_117:
.Ltmp92:                                # EH_LABEL
	ld.d	$a3, $sp, 376
	move	$fp, $a0
	beqz	$a3, .LBB0_119
# %bb.118:
.Ltmp93:                                # EH_LABEL
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp94:                                # EH_LABEL
.LBB0_119:                              # %_ZNSt14_Function_baseD2Ev.exit86
	ld.d	$a3, $sp, 408
	beqz	$a3, .LBB0_157
# %bb.120:
.Ltmp96:                                # EH_LABEL
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp97:                                # EH_LABEL
	b	.LBB0_157
.LBB0_121:
.Ltmp98:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_122:
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_123:
.Ltmp77:                                # EH_LABEL
	ld.d	$a3, $sp, 440
	move	$fp, $a0
	beqz	$a3, .LBB0_125
# %bb.124:
.Ltmp78:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp79:                                # EH_LABEL
.LBB0_125:                              # %_ZNSt14_Function_baseD2Ev.exit82
	ld.d	$a3, $sp, 472
	beqz	$a3, .LBB0_157
# %bb.126:
.Ltmp81:                                # EH_LABEL
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp82:                                # EH_LABEL
	b	.LBB0_157
.LBB0_127:
.Ltmp83:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_128:
.Ltmp80:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_129:
.Ltmp62:                                # EH_LABEL
	ld.d	$a3, $sp, 504
	move	$fp, $a0
	beqz	$a3, .LBB0_131
# %bb.130:
.Ltmp63:                                # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp64:                                # EH_LABEL
.LBB0_131:                              # %_ZNSt14_Function_baseD2Ev.exit78
	ld.d	$a3, $sp, 536
	beqz	$a3, .LBB0_157
# %bb.132:
.Ltmp66:                                # EH_LABEL
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp67:                                # EH_LABEL
	b	.LBB0_157
.LBB0_133:
.Ltmp68:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_134:
.Ltmp65:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_135:
.Ltmp47:                                # EH_LABEL
	ld.d	$a3, $sp, 568
	move	$fp, $a0
	beqz	$a3, .LBB0_137
# %bb.136:
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp49:                                # EH_LABEL
.LBB0_137:                              # %_ZNSt14_Function_baseD2Ev.exit74
	ld.d	$a3, $sp, 600
	beqz	$a3, .LBB0_157
# %bb.138:
.Ltmp51:                                # EH_LABEL
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp52:                                # EH_LABEL
	b	.LBB0_157
.LBB0_139:
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_140:
.Ltmp50:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_141:
.Ltmp32:                                # EH_LABEL
	ld.d	$a3, $sp, 632
	move	$fp, $a0
	beqz	$a3, .LBB0_143
# %bb.142:
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 616
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp34:                                # EH_LABEL
.LBB0_143:                              # %_ZNSt14_Function_baseD2Ev.exit70
	ld.d	$a3, $sp, 664
	beqz	$a3, .LBB0_157
# %bb.144:
.Ltmp36:                                # EH_LABEL
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 648
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp37:                                # EH_LABEL
	b	.LBB0_157
.LBB0_145:
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_146:
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_147:
.Ltmp17:                                # EH_LABEL
	ld.d	$a3, $sp, 696
	move	$fp, $a0
	beqz	$a3, .LBB0_149
# %bb.148:
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 680
	addi.d	$a1, $sp, 680
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp19:                                # EH_LABEL
.LBB0_149:                              # %_ZNSt14_Function_baseD2Ev.exit66
	ld.d	$a3, $sp, 728
	beqz	$a3, .LBB0_157
# %bb.150:
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 712
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp22:                                # EH_LABEL
	b	.LBB0_157
.LBB0_151:
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_152:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_153:
.Ltmp2:                                 # EH_LABEL
	ld.d	$a3, $sp, 760
	move	$fp, $a0
	beqz	$a3, .LBB0_155
# %bb.154:
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 744
	addi.d	$a1, $sp, 744
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp4:                                 # EH_LABEL
.LBB0_155:                              # %_ZNSt14_Function_baseD2Ev.exit62
	ld.d	$a3, $sp, 792
	beqz	$a3, .LBB0_157
# %bb.156:
.Ltmp6:                                 # EH_LABEL
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 776
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp7:                                 # EH_LABEL
.LBB0_157:                              # %_ZNSt14_Function_baseD2Ev.exit64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_158:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_159:
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
	.uleb128 .Ltmp178-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp168-.Ltmp178              #   Call between .Ltmp178 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin0         #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp171-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin0         #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp172-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp153-.Ltmp172              #   Call between .Ltmp172 and .Ltmp153
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin0         #     jumps to .Ltmp155
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp156-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin0         #     jumps to .Ltmp158
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp157-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp138-.Ltmp157              #   Call between .Ltmp157 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin0         #     jumps to .Ltmp140
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp141-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin0         #     jumps to .Ltmp143
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp123-.Ltmp142              #   Call between .Ltmp142 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin0         #     jumps to .Ltmp125
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin0         #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp108-.Ltmp127              #   Call between .Ltmp127 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin0         #     jumps to .Ltmp110
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp111-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin0         #     jumps to .Ltmp113
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp93-.Ltmp112               #   Call between .Ltmp112 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin0          # >> Call Site 54 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin0          #     jumps to .Ltmp95
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp96-.Lfunc_begin0          # >> Call Site 55 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin0          #     jumps to .Ltmp98
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 56 <<
	.uleb128 .Ltmp78-.Ltmp97                #   Call between .Ltmp97 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 57 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin0          #     jumps to .Ltmp80
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 58 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 59 <<
	.uleb128 .Ltmp63-.Ltmp82                #   Call between .Ltmp82 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 60 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 61 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 62 <<
	.uleb128 .Ltmp48-.Ltmp67                #   Call between .Ltmp67 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 63 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 64 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 65 <<
	.uleb128 .Ltmp33-.Ltmp52                #   Call between .Ltmp52 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 66 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 67 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 68 <<
	.uleb128 .Ltmp18-.Ltmp37                #   Call between .Ltmp37 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 69 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 70 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 71 <<
	.uleb128 .Ltmp3-.Ltmp22                 #   Call between .Ltmp22 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 72 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 73 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 74 <<
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
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_jEES5_PKc
	.type	_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_jEES5_PKc,@function
_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_jEES5_PKc: # @_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
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
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp180:                               # EH_LABEL
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
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
.Ltmp183:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
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
.Ltmp186:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
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
.Ltmp189:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp190:                               # EH_LABEL
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
.Ltmp191:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp192:                               # EH_LABEL
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
.Ltmp195:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp196:                               # EH_LABEL
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
.Ltmp197:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp198:                               # EH_LABEL
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
.Ltmp201:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp202:                               # EH_LABEL
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
.Ltmp203:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp204:                               # EH_LABEL
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
.Ltmp207:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp208:                               # EH_LABEL
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
.Ltmp209:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp210:                               # EH_LABEL
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
.Ltmp213:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp214:                               # EH_LABEL
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
.Ltmp215:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp216:                               # EH_LABEL
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
.Ltmp219:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp220:                               # EH_LABEL
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
.Ltmp221:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp222:                               # EH_LABEL
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
.Ltmp225:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp226:                               # EH_LABEL
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
.Ltmp227:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp228:                               # EH_LABEL
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
.Ltmp270:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.59:                               # %.noexc113
.LBB1_60:
.Ltmp267:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
# %bb.61:                               # %.noexc116
.LBB1_62:
.Ltmp193:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp194:                               # EH_LABEL
	b	.LBB1_93
.LBB1_63:
.Ltmp264:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.64:                               # %.noexc120
.LBB1_65:
.Ltmp261:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.66:                               # %.noexc124
.LBB1_67:
.Ltmp199:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp200:                               # EH_LABEL
	b	.LBB1_93
.LBB1_68:
.Ltmp258:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
# %bb.69:                               # %.noexc128
.LBB1_70:
.Ltmp255:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.71:                               # %.noexc132
.LBB1_72:
.Ltmp205:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
	b	.LBB1_93
.LBB1_73:
.Ltmp252:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.74:                               # %.noexc136
.LBB1_75:
.Ltmp249:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.76:                               # %.noexc140
.LBB1_77:
.Ltmp211:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
	b	.LBB1_93
.LBB1_78:
.Ltmp246:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.79:                               # %.noexc144
.LBB1_80:
.Ltmp243:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.81:                               # %.noexc148
.LBB1_82:
.Ltmp217:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
	b	.LBB1_93
.LBB1_83:
.Ltmp240:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.84:                               # %.noexc152
.LBB1_85:
.Ltmp237:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.86:                               # %.noexc156
.LBB1_87:
.Ltmp223:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp224:                               # EH_LABEL
	b	.LBB1_93
.LBB1_88:
.Ltmp234:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
# %bb.89:                               # %.noexc160
.LBB1_90:
.Ltmp231:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.91:                               # %.noexc164
.LBB1_92:
.Ltmp229:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp230:                               # EH_LABEL
.LBB1_93:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_94:
.Ltmp182:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_95:
.Ltmp236:                               # EH_LABEL
	b	.LBB1_111
.LBB1_96:
.Ltmp242:                               # EH_LABEL
	b	.LBB1_111
.LBB1_97:
.Ltmp248:                               # EH_LABEL
	b	.LBB1_111
.LBB1_98:
.Ltmp254:                               # EH_LABEL
	b	.LBB1_111
.LBB1_99:
.Ltmp260:                               # EH_LABEL
	b	.LBB1_111
.LBB1_100:
.Ltmp266:                               # EH_LABEL
	b	.LBB1_111
.LBB1_101:
.Ltmp272:                               # EH_LABEL
	b	.LBB1_111
.LBB1_102:
.Ltmp233:                               # EH_LABEL
	b	.LBB1_111
.LBB1_103:
.Ltmp239:                               # EH_LABEL
	b	.LBB1_111
.LBB1_104:
.Ltmp245:                               # EH_LABEL
	b	.LBB1_111
.LBB1_105:
.Ltmp251:                               # EH_LABEL
	b	.LBB1_111
.LBB1_106:
.Ltmp257:                               # EH_LABEL
	b	.LBB1_111
.LBB1_107:
.Ltmp263:                               # EH_LABEL
	b	.LBB1_111
.LBB1_108:
.Ltmp269:                               # EH_LABEL
	b	.LBB1_111
.LBB1_109:                              # %.loopexit
.Ltmp188:                               # EH_LABEL
	b	.LBB1_111
.LBB1_110:                              # %.loopexit.split-lp
.Ltmp185:                               # EH_LABEL
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
	.size	_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_jEES5_PKc, .Lfunc_end1-_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	.uleb128 .Ltmp180-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp180
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin1         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin1         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin1         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp272-.Lfunc_begin1         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp269-.Lfunc_begin1         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp266-.Lfunc_begin1         #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp263-.Lfunc_begin1         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp260-.Lfunc_begin1         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp257-.Lfunc_begin1         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp254-.Lfunc_begin1         #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp251-.Lfunc_begin1         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp248-.Lfunc_begin1         #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp245-.Lfunc_begin1         #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp242-.Lfunc_begin1         #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp239-.Lfunc_begin1         #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp236-.Lfunc_begin1         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp233-.Lfunc_begin1         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp270-.Ltmp228              #   Call between .Ltmp228 and .Ltmp270
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin1         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp194-.Ltmp267              #   Call between .Ltmp267 and .Ltmp194
	.uleb128 .Ltmp269-.Lfunc_begin1         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin1         #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp200-.Ltmp261              #   Call between .Ltmp261 and .Ltmp200
	.uleb128 .Ltmp263-.Lfunc_begin1         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin1         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp206-.Ltmp255              #   Call between .Ltmp255 and .Ltmp206
	.uleb128 .Ltmp257-.Lfunc_begin1         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin1         #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp212-.Ltmp249              #   Call between .Ltmp249 and .Ltmp212
	.uleb128 .Ltmp251-.Lfunc_begin1         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin1         #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp218-.Ltmp243              #   Call between .Ltmp243 and .Ltmp218
	.uleb128 .Ltmp245-.Lfunc_begin1         #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin1         #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp224-.Ltmp237              #   Call between .Ltmp237 and .Ltmp224
	.uleb128 .Ltmp239-.Lfunc_begin1         #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin1         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp230-.Ltmp231              #   Call between .Ltmp231 and .Ltmp230
	.uleb128 .Ltmp233-.Lfunc_begin1         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Lfunc_end1-.Ltmp230           #   Call between .Ltmp230 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_jEES5_PKc
	.type	_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_jEES5_PKc,@function
_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_jEES5_PKc: # @_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
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
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp273:                               # EH_LABEL
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
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
.Ltmp276:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp277:                               # EH_LABEL
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
.Ltmp278:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp279:                               # EH_LABEL
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
.Ltmp282:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp283:                               # EH_LABEL
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
.Ltmp284:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp285:                               # EH_LABEL
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
.Ltmp288:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp289:                               # EH_LABEL
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
.Ltmp290:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp291:                               # EH_LABEL
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
.Ltmp294:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp295:                               # EH_LABEL
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
.Ltmp296:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp297:                               # EH_LABEL
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
.Ltmp300:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp301:                               # EH_LABEL
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
.Ltmp302:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp303:                               # EH_LABEL
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
.Ltmp306:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp307:                               # EH_LABEL
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
.Ltmp308:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp309:                               # EH_LABEL
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
.Ltmp312:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp313:                               # EH_LABEL
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
.Ltmp314:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp315:                               # EH_LABEL
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
.Ltmp357:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.53:                               # %.noexc
.LBB2_54:
.Ltmp354:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.55:                               # %.noexc111
.LBB2_56:
.Ltmp280:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
	b	.LBB2_87
.LBB2_57:
.Ltmp351:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.58:                               # %.noexc115
.LBB2_59:
.Ltmp348:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp349:                               # EH_LABEL
# %bb.60:                               # %.noexc119
.LBB2_61:
.Ltmp286:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp287:                               # EH_LABEL
	b	.LBB2_87
.LBB2_62:
.Ltmp345:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.63:                               # %.noexc123
.LBB2_64:
.Ltmp342:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp343:                               # EH_LABEL
# %bb.65:                               # %.noexc127
.LBB2_66:
.Ltmp292:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
	b	.LBB2_87
.LBB2_67:
.Ltmp339:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.68:                               # %.noexc131
.LBB2_69:
.Ltmp336:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp337:                               # EH_LABEL
# %bb.70:                               # %.noexc135
.LBB2_71:
.Ltmp298:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
	b	.LBB2_87
.LBB2_72:
.Ltmp333:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.73:                               # %.noexc139
.LBB2_74:
.Ltmp330:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp331:                               # EH_LABEL
# %bb.75:                               # %.noexc143
.LBB2_76:
.Ltmp304:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
	b	.LBB2_87
.LBB2_77:
.Ltmp327:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp328:                               # EH_LABEL
# %bb.78:                               # %.noexc147
.LBB2_79:
.Ltmp324:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp325:                               # EH_LABEL
# %bb.80:                               # %.noexc151
.LBB2_81:
.Ltmp310:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp311:                               # EH_LABEL
	b	.LBB2_87
.LBB2_82:
.Ltmp321:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.83:                               # %.noexc155
.LBB2_84:
.Ltmp318:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp319:                               # EH_LABEL
# %bb.85:                               # %.noexc159
.LBB2_86:
.Ltmp316:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
.LBB2_87:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_88:
.Ltmp275:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_89:
.Ltmp323:                               # EH_LABEL
	b	.LBB2_103
.LBB2_90:
.Ltmp329:                               # EH_LABEL
	b	.LBB2_103
.LBB2_91:
.Ltmp335:                               # EH_LABEL
	b	.LBB2_103
.LBB2_92:
.Ltmp341:                               # EH_LABEL
	b	.LBB2_103
.LBB2_93:
.Ltmp347:                               # EH_LABEL
	b	.LBB2_103
.LBB2_94:
.Ltmp353:                               # EH_LABEL
	b	.LBB2_103
.LBB2_95:
.Ltmp359:                               # EH_LABEL
	b	.LBB2_103
.LBB2_96:
.Ltmp320:                               # EH_LABEL
	b	.LBB2_103
.LBB2_97:
.Ltmp326:                               # EH_LABEL
	b	.LBB2_103
.LBB2_98:
.Ltmp332:                               # EH_LABEL
	b	.LBB2_103
.LBB2_99:
.Ltmp338:                               # EH_LABEL
	b	.LBB2_103
.LBB2_100:
.Ltmp344:                               # EH_LABEL
	b	.LBB2_103
.LBB2_101:
.Ltmp350:                               # EH_LABEL
	b	.LBB2_103
.LBB2_102:
.Ltmp356:                               # EH_LABEL
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
	.size	_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_jEES5_PKc, .Lfunc_end2-_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	.uleb128 .Ltmp273-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp273
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin2         #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp276-.Ltmp274              #   Call between .Ltmp274 and .Ltmp276
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp359-.Lfunc_begin2         #     jumps to .Ltmp359
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp356-.Lfunc_begin2         #     jumps to .Ltmp356
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp353-.Lfunc_begin2         #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp350-.Lfunc_begin2         #     jumps to .Ltmp350
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp347-.Lfunc_begin2         #     jumps to .Ltmp347
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp344-.Lfunc_begin2         #     jumps to .Ltmp344
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp295-.Ltmp294              #   Call between .Ltmp294 and .Ltmp295
	.uleb128 .Ltmp341-.Lfunc_begin2         #     jumps to .Ltmp341
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp338-.Lfunc_begin2         #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.uleb128 .Ltmp335-.Lfunc_begin2         #     jumps to .Ltmp335
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp332-.Lfunc_begin2         #     jumps to .Ltmp332
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp329-.Lfunc_begin2         #     jumps to .Ltmp329
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp326-.Lfunc_begin2         #     jumps to .Ltmp326
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp313-.Ltmp312              #   Call between .Ltmp312 and .Ltmp313
	.uleb128 .Ltmp323-.Lfunc_begin2         #     jumps to .Ltmp323
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp320-.Lfunc_begin2         #     jumps to .Ltmp320
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp357-.Ltmp315              #   Call between .Ltmp315 and .Ltmp357
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp358-.Ltmp357              #   Call between .Ltmp357 and .Ltmp358
	.uleb128 .Ltmp359-.Lfunc_begin2         #     jumps to .Ltmp359
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp281-.Ltmp354              #   Call between .Ltmp354 and .Ltmp281
	.uleb128 .Ltmp356-.Lfunc_begin2         #     jumps to .Ltmp356
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin2         #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp287-.Ltmp348              #   Call between .Ltmp348 and .Ltmp287
	.uleb128 .Ltmp350-.Lfunc_begin2         #     jumps to .Ltmp350
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.uleb128 .Ltmp347-.Lfunc_begin2         #     jumps to .Ltmp347
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp293-.Ltmp342              #   Call between .Ltmp342 and .Ltmp293
	.uleb128 .Ltmp344-.Lfunc_begin2         #     jumps to .Ltmp344
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp339-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp340-.Ltmp339              #   Call between .Ltmp339 and .Ltmp340
	.uleb128 .Ltmp341-.Lfunc_begin2         #     jumps to .Ltmp341
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp336-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp299-.Ltmp336              #   Call between .Ltmp336 and .Ltmp299
	.uleb128 .Ltmp338-.Lfunc_begin2         #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp333-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp334-.Ltmp333              #   Call between .Ltmp333 and .Ltmp334
	.uleb128 .Ltmp335-.Lfunc_begin2         #     jumps to .Ltmp335
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp330-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp305-.Ltmp330              #   Call between .Ltmp330 and .Ltmp305
	.uleb128 .Ltmp332-.Lfunc_begin2         #     jumps to .Ltmp332
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp327-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp328-.Ltmp327              #   Call between .Ltmp327 and .Ltmp328
	.uleb128 .Ltmp329-.Lfunc_begin2         #     jumps to .Ltmp329
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Ltmp311-.Ltmp324              #   Call between .Ltmp324 and .Ltmp311
	.uleb128 .Ltmp326-.Lfunc_begin2         #     jumps to .Ltmp326
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp321-.Lfunc_begin2         # >> Call Site 31 <<
	.uleb128 .Ltmp322-.Ltmp321              #   Call between .Ltmp321 and .Ltmp322
	.uleb128 .Ltmp323-.Lfunc_begin2         #     jumps to .Ltmp323
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin2         # >> Call Site 32 <<
	.uleb128 .Ltmp317-.Ltmp318              #   Call between .Ltmp318 and .Ltmp317
	.uleb128 .Ltmp320-.Lfunc_begin2         #     jumps to .Ltmp320
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin2         # >> Call Site 33 <<
	.uleb128 .Lfunc_end2-.Ltmp317           #   Call between .Ltmp317 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_jEES5_PKc
	.type	_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_jEES5_PKc,@function
_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_jEES5_PKc: # @_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
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
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2000
	ori	$s4, $zero, 2000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp360:                               # EH_LABEL
	ori	$a0, $zero, 2000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp361:                               # EH_LABEL
# %bb.4:
	move	$s0, $a0
	lu12i.w	$s5, 524280
	st.w	$s5, $sp, 64
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s6, $zero
	.p2align	4, , 16
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp363:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp364:                               # EH_LABEL
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
.Ltmp366:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp367:                               # EH_LABEL
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
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_58
# %bb.11:
	ld.d	$a4, $s2, 24
.Ltmp369:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp370:                               # EH_LABEL
# %bb.12:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_60
# %bb.13:
	ld.d	$a4, $s1, 24
.Ltmp371:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp372:                               # EH_LABEL
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
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_63
# %bb.18:
	ld.d	$a4, $s2, 24
.Ltmp375:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp376:                               # EH_LABEL
# %bb.19:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_65
# %bb.20:
	ld.d	$a4, $s1, 24
.Ltmp377:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp378:                               # EH_LABEL
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
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_68
# %bb.25:
	ld.d	$a4, $s2, 24
.Ltmp381:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp382:                               # EH_LABEL
# %bb.26:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_70
# %bb.27:
	ld.d	$a4, $s1, 24
.Ltmp383:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp384:                               # EH_LABEL
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
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_73
# %bb.32:
	ld.d	$a4, $s2, 24
.Ltmp387:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp388:                               # EH_LABEL
# %bb.33:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_75
# %bb.34:
	ld.d	$a4, $s1, 24
.Ltmp389:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp390:                               # EH_LABEL
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
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_78
# %bb.39:
	ld.d	$a4, $s2, 24
.Ltmp393:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp394:                               # EH_LABEL
# %bb.40:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_80
# %bb.41:
	ld.d	$a4, $s1, 24
.Ltmp395:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp396:                               # EH_LABEL
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
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_83
# %bb.46:
	ld.d	$a4, $s2, 24
.Ltmp399:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp400:                               # EH_LABEL
# %bb.47:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_85
# %bb.48:
	ld.d	$a4, $s1, 24
.Ltmp401:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp402:                               # EH_LABEL
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
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_88
# %bb.53:
	ld.d	$a4, $s2, 24
.Ltmp405:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp406:                               # EH_LABEL
# %bb.54:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 52
	beqz	$a0, .LBB3_90
# %bb.55:
	ld.d	$a4, $s1, 24
.Ltmp407:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp408:                               # EH_LABEL
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
.Ltmp450:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp451:                               # EH_LABEL
# %bb.59:                               # %.noexc113
.LBB3_60:
.Ltmp447:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp448:                               # EH_LABEL
# %bb.61:                               # %.noexc116
.LBB3_62:
.Ltmp373:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
	b	.LBB3_93
.LBB3_63:
.Ltmp444:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp445:                               # EH_LABEL
# %bb.64:                               # %.noexc120
.LBB3_65:
.Ltmp441:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp442:                               # EH_LABEL
# %bb.66:                               # %.noexc124
.LBB3_67:
.Ltmp379:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
	b	.LBB3_93
.LBB3_68:
.Ltmp438:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp439:                               # EH_LABEL
# %bb.69:                               # %.noexc128
.LBB3_70:
.Ltmp435:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.71:                               # %.noexc132
.LBB3_72:
.Ltmp385:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
	b	.LBB3_93
.LBB3_73:
.Ltmp432:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp433:                               # EH_LABEL
# %bb.74:                               # %.noexc136
.LBB3_75:
.Ltmp429:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp430:                               # EH_LABEL
# %bb.76:                               # %.noexc140
.LBB3_77:
.Ltmp391:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
	b	.LBB3_93
.LBB3_78:
.Ltmp426:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp427:                               # EH_LABEL
# %bb.79:                               # %.noexc144
.LBB3_80:
.Ltmp423:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp424:                               # EH_LABEL
# %bb.81:                               # %.noexc148
.LBB3_82:
.Ltmp397:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
	b	.LBB3_93
.LBB3_83:
.Ltmp420:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp421:                               # EH_LABEL
# %bb.84:                               # %.noexc152
.LBB3_85:
.Ltmp417:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.86:                               # %.noexc156
.LBB3_87:
.Ltmp403:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp404:                               # EH_LABEL
	b	.LBB3_93
.LBB3_88:
.Ltmp414:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp415:                               # EH_LABEL
# %bb.89:                               # %.noexc160
.LBB3_90:
.Ltmp411:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.91:                               # %.noexc164
.LBB3_92:
.Ltmp409:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp410:                               # EH_LABEL
.LBB3_93:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_94:
.Ltmp362:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_95:
.Ltmp416:                               # EH_LABEL
	b	.LBB3_111
.LBB3_96:
.Ltmp422:                               # EH_LABEL
	b	.LBB3_111
.LBB3_97:
.Ltmp428:                               # EH_LABEL
	b	.LBB3_111
.LBB3_98:
.Ltmp434:                               # EH_LABEL
	b	.LBB3_111
.LBB3_99:
.Ltmp440:                               # EH_LABEL
	b	.LBB3_111
.LBB3_100:
.Ltmp446:                               # EH_LABEL
	b	.LBB3_111
.LBB3_101:
.Ltmp452:                               # EH_LABEL
	b	.LBB3_111
.LBB3_102:
.Ltmp413:                               # EH_LABEL
	b	.LBB3_111
.LBB3_103:
.Ltmp419:                               # EH_LABEL
	b	.LBB3_111
.LBB3_104:
.Ltmp425:                               # EH_LABEL
	b	.LBB3_111
.LBB3_105:
.Ltmp431:                               # EH_LABEL
	b	.LBB3_111
.LBB3_106:
.Ltmp437:                               # EH_LABEL
	b	.LBB3_111
.LBB3_107:
.Ltmp443:                               # EH_LABEL
	b	.LBB3_111
.LBB3_108:
.Ltmp449:                               # EH_LABEL
	b	.LBB3_111
.LBB3_109:                              # %.loopexit
.Ltmp368:                               # EH_LABEL
	b	.LBB3_111
.LBB3_110:                              # %.loopexit.split-lp
.Ltmp365:                               # EH_LABEL
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
	.size	_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_jEES5_PKc, .Lfunc_end3-_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	.uleb128 .Ltmp360-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp360
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp361-.Ltmp360              #   Call between .Ltmp360 and .Ltmp361
	.uleb128 .Ltmp362-.Lfunc_begin3         #     jumps to .Ltmp362
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp363-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp364-.Ltmp363              #   Call between .Ltmp363 and .Ltmp364
	.uleb128 .Ltmp365-.Lfunc_begin3         #     jumps to .Ltmp365
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp366-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp367-.Ltmp366              #   Call between .Ltmp366 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin3         #     jumps to .Ltmp368
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp370-.Ltmp369              #   Call between .Ltmp369 and .Ltmp370
	.uleb128 .Ltmp452-.Lfunc_begin3         #     jumps to .Ltmp452
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp371-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp372-.Ltmp371              #   Call between .Ltmp371 and .Ltmp372
	.uleb128 .Ltmp449-.Lfunc_begin3         #     jumps to .Ltmp449
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp375-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp376-.Ltmp375              #   Call between .Ltmp375 and .Ltmp376
	.uleb128 .Ltmp446-.Lfunc_begin3         #     jumps to .Ltmp446
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp377-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp378-.Ltmp377              #   Call between .Ltmp377 and .Ltmp378
	.uleb128 .Ltmp443-.Lfunc_begin3         #     jumps to .Ltmp443
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp381-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp382-.Ltmp381              #   Call between .Ltmp381 and .Ltmp382
	.uleb128 .Ltmp440-.Lfunc_begin3         #     jumps to .Ltmp440
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp383-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp384-.Ltmp383              #   Call between .Ltmp383 and .Ltmp384
	.uleb128 .Ltmp437-.Lfunc_begin3         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp387-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp388-.Ltmp387              #   Call between .Ltmp387 and .Ltmp388
	.uleb128 .Ltmp434-.Lfunc_begin3         #     jumps to .Ltmp434
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp389-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp390-.Ltmp389              #   Call between .Ltmp389 and .Ltmp390
	.uleb128 .Ltmp431-.Lfunc_begin3         #     jumps to .Ltmp431
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp394-.Ltmp393              #   Call between .Ltmp393 and .Ltmp394
	.uleb128 .Ltmp428-.Lfunc_begin3         #     jumps to .Ltmp428
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp395-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp396-.Ltmp395              #   Call between .Ltmp395 and .Ltmp396
	.uleb128 .Ltmp425-.Lfunc_begin3         #     jumps to .Ltmp425
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.uleb128 .Ltmp422-.Lfunc_begin3         #     jumps to .Ltmp422
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp402-.Ltmp401              #   Call between .Ltmp401 and .Ltmp402
	.uleb128 .Ltmp419-.Lfunc_begin3         #     jumps to .Ltmp419
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp406-.Ltmp405              #   Call between .Ltmp405 and .Ltmp406
	.uleb128 .Ltmp416-.Lfunc_begin3         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp408-.Ltmp407              #   Call between .Ltmp407 and .Ltmp408
	.uleb128 .Ltmp413-.Lfunc_begin3         #     jumps to .Ltmp413
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp408-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp450-.Ltmp408              #   Call between .Ltmp408 and .Ltmp450
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp450-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp452-.Lfunc_begin3         #     jumps to .Ltmp452
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp374-.Ltmp447              #   Call between .Ltmp447 and .Ltmp374
	.uleb128 .Ltmp449-.Lfunc_begin3         #     jumps to .Ltmp449
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp446-.Lfunc_begin3         #     jumps to .Ltmp446
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp441-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp380-.Ltmp441              #   Call between .Ltmp441 and .Ltmp380
	.uleb128 .Ltmp443-.Lfunc_begin3         #     jumps to .Ltmp443
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp440-.Lfunc_begin3         #     jumps to .Ltmp440
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp435-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Ltmp386-.Ltmp435              #   Call between .Ltmp435 and .Ltmp386
	.uleb128 .Ltmp437-.Lfunc_begin3         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp432-.Lfunc_begin3         # >> Call Site 26 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp434-.Lfunc_begin3         #     jumps to .Ltmp434
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin3         # >> Call Site 27 <<
	.uleb128 .Ltmp392-.Ltmp429              #   Call between .Ltmp429 and .Ltmp392
	.uleb128 .Ltmp431-.Lfunc_begin3         #     jumps to .Ltmp431
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin3         # >> Call Site 28 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp428-.Lfunc_begin3         #     jumps to .Ltmp428
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp423-.Lfunc_begin3         # >> Call Site 29 <<
	.uleb128 .Ltmp398-.Ltmp423              #   Call between .Ltmp423 and .Ltmp398
	.uleb128 .Ltmp425-.Lfunc_begin3         #     jumps to .Ltmp425
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin3         # >> Call Site 30 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp422-.Lfunc_begin3         #     jumps to .Ltmp422
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin3         # >> Call Site 31 <<
	.uleb128 .Ltmp404-.Ltmp417              #   Call between .Ltmp417 and .Ltmp404
	.uleb128 .Ltmp419-.Lfunc_begin3         #     jumps to .Ltmp419
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin3         # >> Call Site 32 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin3         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp411-.Lfunc_begin3         # >> Call Site 33 <<
	.uleb128 .Ltmp410-.Ltmp411              #   Call between .Ltmp411 and .Ltmp410
	.uleb128 .Ltmp413-.Lfunc_begin3         #     jumps to .Ltmp413
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp410-.Lfunc_begin3         # >> Call Site 34 <<
	.uleb128 .Lfunc_end3-.Ltmp410           #   Call between .Ltmp410 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc
	.type	_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc,@function
_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc: # @_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
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
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp453:                               # EH_LABEL
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.4:
	move	$s0, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 24
	lu12i.w	$s4, -1
	ori	$s5, $s4, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp456:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp457:                               # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB4_5 Depth=1
	add.d	$a1, $fp, $s5
	addi.d	$s5, $s5, 4
	stptr.w	$a0, $a1, 4000
	bnez	$s5, .LBB4_5
# %bb.7:
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 24
	ori	$s4, $s4, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
.Ltmp459:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.9:                                # %.noexc111
                                        #   in Loop: Header=BB4_8 Depth=1
	add.d	$a1, $s0, $s4
	addi.d	$s4, $s4, 4
	stptr.w	$a0, $a1, 4000
	bnez	$s4, .LBB4_8
# %bb.10:
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_46
# %bb.11:
	ld.d	$a4, $s2, 24
.Ltmp462:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp463:                               # EH_LABEL
# %bb.12:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_48
# %bb.13:
	ld.d	$a4, $s1, 24
.Ltmp464:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp465:                               # EH_LABEL
# %bb.14:
	bne	$s3, $a0, .LBB4_50
# %bb.15:                               # %.preheader231.preheader
	ori	$a1, $zero, 255
	ori	$a2, $zero, 4000
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4000
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_51
# %bb.16:
	ld.d	$a4, $s2, 24
.Ltmp468:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp469:                               # EH_LABEL
# %bb.17:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_53
# %bb.18:
	ld.d	$a4, $s1, 24
.Ltmp470:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp471:                               # EH_LABEL
# %bb.19:
	bne	$s3, $a0, .LBB4_55
# %bb.20:                               # %.preheader230.preheader
	ori	$a2, $zero, 4000
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 255
	ori	$a2, $zero, 4000
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_56
# %bb.21:
	ld.d	$a4, $s2, 24
.Ltmp474:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp475:                               # EH_LABEL
# %bb.22:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_58
# %bb.23:
	ld.d	$a4, $s1, 24
.Ltmp476:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp477:                               # EH_LABEL
# %bb.24:
	bne	$s3, $a0, .LBB4_60
# %bb.25:                               # %.preheader229.preheader
	ori	$a2, $zero, 4000
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4000
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -1
	lu32i.d	$s5, 0
	stptr.w	$s5, $fp, 3992
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_61
# %bb.26:
	ld.d	$a4, $s2, 24
.Ltmp480:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp481:                               # EH_LABEL
# %bb.27:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_63
# %bb.28:
	ld.d	$a4, $s1, 24
.Ltmp482:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp483:                               # EH_LABEL
# %bb.29:
	bne	$s3, $a0, .LBB4_65
# %bb.30:                               # %.preheader228.preheader
	ori	$a2, $zero, 4000
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s3, $fp, 4
	ori	$a2, $zero, 3996
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$s5, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_66
# %bb.31:
	ld.d	$a4, $s2, 24
.Ltmp486:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp487:                               # EH_LABEL
# %bb.32:
	move	$s4, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_68
# %bb.33:
	ld.d	$a4, $s1, 24
.Ltmp488:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp489:                               # EH_LABEL
# %bb.34:
	bne	$s4, $a0, .LBB4_70
# %bb.35:                               # %.preheader227.preheader
	ori	$a2, $zero, 4000
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3996
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stptr.w	$s5, $fp, 3996
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_71
# %bb.36:
	ld.d	$a4, $s2, 24
.Ltmp492:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp493:                               # EH_LABEL
# %bb.37:
	move	$s4, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_73
# %bb.38:
	ld.d	$a4, $s1, 24
.Ltmp494:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp495:                               # EH_LABEL
# %bb.39:
	bne	$s4, $a0, .LBB4_75
# %bb.40:                               # %.preheader.preheader
	ori	$a2, $zero, 4000
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3992
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stptr.w	$s5, $fp, 3996
	st.w	$s5, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_76
# %bb.41:
	ld.d	$a4, $s2, 24
.Ltmp498:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp499:                               # EH_LABEL
# %bb.42:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB4_78
# %bb.43:
	ld.d	$a4, $s1, 24
.Ltmp500:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp501:                               # EH_LABEL
# %bb.44:
	bne	$s2, $a0, .LBB4_80
# %bb.45:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit170
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB4_46:
.Ltmp543:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp544:                               # EH_LABEL
# %bb.47:                               # %.noexc113
.LBB4_48:
.Ltmp540:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
# %bb.49:                               # %.noexc116
.LBB4_50:
.Ltmp466:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp467:                               # EH_LABEL
	b	.LBB4_81
.LBB4_51:
.Ltmp537:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.52:                               # %.noexc120
.LBB4_53:
.Ltmp534:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp535:                               # EH_LABEL
# %bb.54:                               # %.noexc124
.LBB4_55:
.Ltmp472:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp473:                               # EH_LABEL
	b	.LBB4_81
.LBB4_56:
.Ltmp531:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp532:                               # EH_LABEL
# %bb.57:                               # %.noexc128
.LBB4_58:
.Ltmp528:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp529:                               # EH_LABEL
# %bb.59:                               # %.noexc132
.LBB4_60:
.Ltmp478:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp479:                               # EH_LABEL
	b	.LBB4_81
.LBB4_61:
.Ltmp525:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
# %bb.62:                               # %.noexc136
.LBB4_63:
.Ltmp522:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp523:                               # EH_LABEL
# %bb.64:                               # %.noexc140
.LBB4_65:
.Ltmp484:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp485:                               # EH_LABEL
	b	.LBB4_81
.LBB4_66:
.Ltmp519:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp520:                               # EH_LABEL
# %bb.67:                               # %.noexc144
.LBB4_68:
.Ltmp516:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp517:                               # EH_LABEL
# %bb.69:                               # %.noexc148
.LBB4_70:
.Ltmp490:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp491:                               # EH_LABEL
	b	.LBB4_81
.LBB4_71:
.Ltmp513:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp514:                               # EH_LABEL
# %bb.72:                               # %.noexc152
.LBB4_73:
.Ltmp510:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp511:                               # EH_LABEL
# %bb.74:                               # %.noexc156
.LBB4_75:
.Ltmp496:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp497:                               # EH_LABEL
	b	.LBB4_81
.LBB4_76:
.Ltmp507:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp508:                               # EH_LABEL
# %bb.77:                               # %.noexc160
.LBB4_78:
.Ltmp504:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp505:                               # EH_LABEL
# %bb.79:                               # %.noexc164
.LBB4_80:
.Ltmp502:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp503:                               # EH_LABEL
.LBB4_81:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_82:
.Ltmp455:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_83:
.Ltmp509:                               # EH_LABEL
	b	.LBB4_99
.LBB4_84:
.Ltmp515:                               # EH_LABEL
	b	.LBB4_99
.LBB4_85:
.Ltmp521:                               # EH_LABEL
	b	.LBB4_99
.LBB4_86:
.Ltmp527:                               # EH_LABEL
	b	.LBB4_99
.LBB4_87:
.Ltmp533:                               # EH_LABEL
	b	.LBB4_99
.LBB4_88:
.Ltmp539:                               # EH_LABEL
	b	.LBB4_99
.LBB4_89:
.Ltmp545:                               # EH_LABEL
	b	.LBB4_99
.LBB4_90:
.Ltmp506:                               # EH_LABEL
	b	.LBB4_99
.LBB4_91:
.Ltmp512:                               # EH_LABEL
	b	.LBB4_99
.LBB4_92:
.Ltmp518:                               # EH_LABEL
	b	.LBB4_99
.LBB4_93:
.Ltmp524:                               # EH_LABEL
	b	.LBB4_99
.LBB4_94:
.Ltmp530:                               # EH_LABEL
	b	.LBB4_99
.LBB4_95:
.Ltmp536:                               # EH_LABEL
	b	.LBB4_99
.LBB4_96:
.Ltmp542:                               # EH_LABEL
	b	.LBB4_99
.LBB4_97:                               # %.loopexit
.Ltmp461:                               # EH_LABEL
	b	.LBB4_99
.LBB4_98:                               # %.loopexit.split-lp
.Ltmp458:                               # EH_LABEL
.LBB4_99:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit173
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
.Lfunc_end4:
	.size	_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc, .Lfunc_end4-_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	.uleb128 .Ltmp453-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp453
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp453-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp454-.Ltmp453              #   Call between .Ltmp453 and .Ltmp454
	.uleb128 .Ltmp455-.Lfunc_begin4         #     jumps to .Ltmp455
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin4         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin4         #     jumps to .Ltmp461
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.uleb128 .Ltmp545-.Lfunc_begin4         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp464-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp465-.Ltmp464              #   Call between .Ltmp464 and .Ltmp465
	.uleb128 .Ltmp542-.Lfunc_begin4         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp468-.Ltmp465              #   Call between .Ltmp465 and .Ltmp468
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp469-.Ltmp468              #   Call between .Ltmp468 and .Ltmp469
	.uleb128 .Ltmp539-.Lfunc_begin4         #     jumps to .Ltmp539
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp470-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp471-.Ltmp470              #   Call between .Ltmp470 and .Ltmp471
	.uleb128 .Ltmp536-.Lfunc_begin4         #     jumps to .Ltmp536
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp474-.Ltmp471              #   Call between .Ltmp471 and .Ltmp474
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp475-.Ltmp474              #   Call between .Ltmp474 and .Ltmp475
	.uleb128 .Ltmp533-.Lfunc_begin4         #     jumps to .Ltmp533
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp477-.Ltmp476              #   Call between .Ltmp476 and .Ltmp477
	.uleb128 .Ltmp530-.Lfunc_begin4         #     jumps to .Ltmp530
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp480-.Ltmp477              #   Call between .Ltmp477 and .Ltmp480
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp481-.Ltmp480              #   Call between .Ltmp480 and .Ltmp481
	.uleb128 .Ltmp527-.Lfunc_begin4         #     jumps to .Ltmp527
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp482-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp483-.Ltmp482              #   Call between .Ltmp482 and .Ltmp483
	.uleb128 .Ltmp524-.Lfunc_begin4         #     jumps to .Ltmp524
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp486-.Ltmp483              #   Call between .Ltmp483 and .Ltmp486
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp487-.Ltmp486              #   Call between .Ltmp486 and .Ltmp487
	.uleb128 .Ltmp521-.Lfunc_begin4         #     jumps to .Ltmp521
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp489-.Ltmp488              #   Call between .Ltmp488 and .Ltmp489
	.uleb128 .Ltmp518-.Lfunc_begin4         #     jumps to .Ltmp518
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp492-.Ltmp489              #   Call between .Ltmp489 and .Ltmp492
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp492-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp493-.Ltmp492              #   Call between .Ltmp492 and .Ltmp493
	.uleb128 .Ltmp515-.Lfunc_begin4         #     jumps to .Ltmp515
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp494-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp495-.Ltmp494              #   Call between .Ltmp494 and .Ltmp495
	.uleb128 .Ltmp512-.Lfunc_begin4         #     jumps to .Ltmp512
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp495-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp498-.Ltmp495              #   Call between .Ltmp495 and .Ltmp498
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp498-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp499-.Ltmp498              #   Call between .Ltmp498 and .Ltmp499
	.uleb128 .Ltmp509-.Lfunc_begin4         #     jumps to .Ltmp509
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp500-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp501-.Ltmp500              #   Call between .Ltmp500 and .Ltmp501
	.uleb128 .Ltmp506-.Lfunc_begin4         #     jumps to .Ltmp506
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp543-.Ltmp501              #   Call between .Ltmp501 and .Ltmp543
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin4         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp467-.Ltmp540              #   Call between .Ltmp540 and .Ltmp467
	.uleb128 .Ltmp542-.Lfunc_begin4         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp539-.Lfunc_begin4         #     jumps to .Ltmp539
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp534-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp473-.Ltmp534              #   Call between .Ltmp534 and .Ltmp473
	.uleb128 .Ltmp536-.Lfunc_begin4         #     jumps to .Ltmp536
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp533-.Lfunc_begin4         #     jumps to .Ltmp533
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp528-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp479-.Ltmp528              #   Call between .Ltmp528 and .Ltmp479
	.uleb128 .Ltmp530-.Lfunc_begin4         #     jumps to .Ltmp530
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp527-.Lfunc_begin4         #     jumps to .Ltmp527
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp522-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Ltmp485-.Ltmp522              #   Call between .Ltmp522 and .Ltmp485
	.uleb128 .Ltmp524-.Lfunc_begin4         #     jumps to .Ltmp524
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.uleb128 .Ltmp521-.Lfunc_begin4         #     jumps to .Ltmp521
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp516-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp491-.Ltmp516              #   Call between .Ltmp516 and .Ltmp491
	.uleb128 .Ltmp518-.Lfunc_begin4         #     jumps to .Ltmp518
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp513-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp514-.Ltmp513              #   Call between .Ltmp513 and .Ltmp514
	.uleb128 .Ltmp515-.Lfunc_begin4         #     jumps to .Ltmp515
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp510-.Lfunc_begin4         # >> Call Site 37 <<
	.uleb128 .Ltmp497-.Ltmp510              #   Call between .Ltmp510 and .Ltmp497
	.uleb128 .Ltmp512-.Lfunc_begin4         #     jumps to .Ltmp512
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin4         # >> Call Site 38 <<
	.uleb128 .Ltmp508-.Ltmp507              #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp509-.Lfunc_begin4         #     jumps to .Ltmp509
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin4         # >> Call Site 39 <<
	.uleb128 .Ltmp503-.Ltmp504              #   Call between .Ltmp504 and .Ltmp503
	.uleb128 .Ltmp506-.Lfunc_begin4         #     jumps to .Ltmp506
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp503-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Lfunc_end4-.Ltmp503           #   Call between .Ltmp503 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIjfEvSt8functionIFT_PT0_S3_jEES5_PKc
	.type	_ZL19checkVectorFunctionIjfEvSt8functionIFT_PT0_S3_jEES5_PKc,@function
_ZL19checkVectorFunctionIjfEvSt8functionIFT_PT0_S3_jEES5_PKc: # @_ZL19checkVectorFunctionIjfEvSt8functionIFT_PT0_S3_jEES5_PKc
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
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
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp546:                               # EH_LABEL
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp547:                               # EH_LABEL
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
	beqz	$a0, .LBB5_52
# %bb.5:
	ld.d	$a4, $s2, 24
.Ltmp549:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp550:                               # EH_LABEL
# %bb.6:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_54
# %bb.7:
	ld.d	$a4, $s1, 24
.Ltmp551:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp552:                               # EH_LABEL
# %bb.8:
	bne	$s3, $a0, .LBB5_56
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
.LBB5_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $fp, $a0
	vstx	$vr1, $a3, $a1
	vstx	$vr1, $a3, $a2
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB5_10
# %bb.11:                               # %middle.block
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_57
# %bb.12:
	ld.d	$a4, $s2, 24
.Ltmp555:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp556:                               # EH_LABEL
# %bb.13:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_59
# %bb.14:
	ld.d	$a4, $s1, 24
.Ltmp557:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp558:                               # EH_LABEL
# %bb.15:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB5_61
# %bb.16:                               # %vector.body243.preheader
	ori	$a0, $s5, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB5_17:                               # %vector.body243
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $s0, $a0
	vstx	$vr1, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr1, $a3, $a2
	bnez	$a0, .LBB5_17
# %bb.18:                               # %middle.block246
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_62
# %bb.19:
	ld.d	$a4, $s2, 24
.Ltmp561:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp562:                               # EH_LABEL
# %bb.20:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_64
# %bb.21:
	ld.d	$a4, $s1, 24
.Ltmp563:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp564:                               # EH_LABEL
# %bb.22:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB5_66
# %bb.23:                               # %vector.body249.preheader
	ori	$a0, $s5, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB5_24:                               # %vector.body249
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB5_24
# %bb.25:                               # %middle.block252
	stptr.w	$s4, $fp, 3992
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_67
# %bb.26:
	ld.d	$a4, $s2, 24
.Ltmp567:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp568:                               # EH_LABEL
# %bb.27:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_69
# %bb.28:
	ld.d	$a4, $s1, 24
.Ltmp569:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp570:                               # EH_LABEL
# %bb.29:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB5_71
# %bb.30:                               # %vector.body255.preheader
	ori	$a0, $s5, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB5_31:                               # %vector.body255
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB5_31
# %bb.32:                               # %middle.block258
	st.w	$s4, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_72
# %bb.33:
	ld.d	$a4, $s2, 24
.Ltmp573:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp574:                               # EH_LABEL
# %bb.34:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_74
# %bb.35:
	ld.d	$a4, $s1, 24
.Ltmp575:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp576:                               # EH_LABEL
# %bb.36:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB5_76
# %bb.37:                               # %vector.body261.preheader
	ori	$a0, $s5, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB5_38:                               # %vector.body261
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB5_38
# %bb.39:                               # %middle.block264
	stptr.w	$s4, $fp, 3996
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_77
# %bb.40:
	ld.d	$a4, $s2, 24
.Ltmp579:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp580:                               # EH_LABEL
# %bb.41:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_79
# %bb.42:
	ld.d	$a4, $s1, 24
.Ltmp581:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp582:                               # EH_LABEL
# %bb.43:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB5_81
# %bb.44:                               # %vector.body267.preheader
	ori	$a0, $s5, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB5_45:                               # %vector.body267
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB5_45
# %bb.46:                               # %middle.block270
	stptr.w	$s4, $fp, 3996
	st.w	$s4, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_82
# %bb.47:
	ld.d	$a4, $s2, 24
.Ltmp585:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp586:                               # EH_LABEL
# %bb.48:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB5_84
# %bb.49:
	ld.d	$a4, $s1, 24
.Ltmp587:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp588:                               # EH_LABEL
# %bb.50:
	bne	$s2, $a0, .LBB5_86
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
.LBB5_52:
.Ltmp630:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp631:                               # EH_LABEL
# %bb.53:                               # %.noexc
.LBB5_54:
.Ltmp627:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp628:                               # EH_LABEL
# %bb.55:                               # %.noexc111
.LBB5_56:
.Ltmp553:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp554:                               # EH_LABEL
	b	.LBB5_87
.LBB5_57:
.Ltmp624:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp625:                               # EH_LABEL
# %bb.58:                               # %.noexc115
.LBB5_59:
.Ltmp621:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp622:                               # EH_LABEL
# %bb.60:                               # %.noexc119
.LBB5_61:
.Ltmp559:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp560:                               # EH_LABEL
	b	.LBB5_87
.LBB5_62:
.Ltmp618:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp619:                               # EH_LABEL
# %bb.63:                               # %.noexc123
.LBB5_64:
.Ltmp615:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.65:                               # %.noexc127
.LBB5_66:
.Ltmp565:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp566:                               # EH_LABEL
	b	.LBB5_87
.LBB5_67:
.Ltmp612:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp613:                               # EH_LABEL
# %bb.68:                               # %.noexc131
.LBB5_69:
.Ltmp609:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp610:                               # EH_LABEL
# %bb.70:                               # %.noexc135
.LBB5_71:
.Ltmp571:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp572:                               # EH_LABEL
	b	.LBB5_87
.LBB5_72:
.Ltmp606:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp607:                               # EH_LABEL
# %bb.73:                               # %.noexc139
.LBB5_74:
.Ltmp603:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp604:                               # EH_LABEL
# %bb.75:                               # %.noexc143
.LBB5_76:
.Ltmp577:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp578:                               # EH_LABEL
	b	.LBB5_87
.LBB5_77:
.Ltmp600:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp601:                               # EH_LABEL
# %bb.78:                               # %.noexc147
.LBB5_79:
.Ltmp597:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp598:                               # EH_LABEL
# %bb.80:                               # %.noexc151
.LBB5_81:
.Ltmp583:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp584:                               # EH_LABEL
	b	.LBB5_87
.LBB5_82:
.Ltmp594:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp595:                               # EH_LABEL
# %bb.83:                               # %.noexc155
.LBB5_84:
.Ltmp591:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp592:                               # EH_LABEL
# %bb.85:                               # %.noexc159
.LBB5_86:
.Ltmp589:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp590:                               # EH_LABEL
.LBB5_87:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB5_88:
.Ltmp548:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_89:
.Ltmp596:                               # EH_LABEL
	b	.LBB5_103
.LBB5_90:
.Ltmp602:                               # EH_LABEL
	b	.LBB5_103
.LBB5_91:
.Ltmp608:                               # EH_LABEL
	b	.LBB5_103
.LBB5_92:
.Ltmp614:                               # EH_LABEL
	b	.LBB5_103
.LBB5_93:
.Ltmp620:                               # EH_LABEL
	b	.LBB5_103
.LBB5_94:
.Ltmp626:                               # EH_LABEL
	b	.LBB5_103
.LBB5_95:
.Ltmp632:                               # EH_LABEL
	b	.LBB5_103
.LBB5_96:
.Ltmp593:                               # EH_LABEL
	b	.LBB5_103
.LBB5_97:
.Ltmp599:                               # EH_LABEL
	b	.LBB5_103
.LBB5_98:
.Ltmp605:                               # EH_LABEL
	b	.LBB5_103
.LBB5_99:
.Ltmp611:                               # EH_LABEL
	b	.LBB5_103
.LBB5_100:
.Ltmp617:                               # EH_LABEL
	b	.LBB5_103
.LBB5_101:
.Ltmp623:                               # EH_LABEL
	b	.LBB5_103
.LBB5_102:
.Ltmp629:                               # EH_LABEL
.LBB5_103:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit168
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
.Lfunc_end5:
	.size	_ZL19checkVectorFunctionIjfEvSt8functionIFT_PT0_S3_jEES5_PKc, .Lfunc_end5-_ZL19checkVectorFunctionIjfEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	.uleb128 .Ltmp546-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp546
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin5         #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp547-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp549-.Ltmp547              #   Call between .Ltmp547 and .Ltmp549
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp550-.Ltmp549              #   Call between .Ltmp549 and .Ltmp550
	.uleb128 .Ltmp632-.Lfunc_begin5         #     jumps to .Ltmp632
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp551-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp552-.Ltmp551              #   Call between .Ltmp551 and .Ltmp552
	.uleb128 .Ltmp629-.Lfunc_begin5         #     jumps to .Ltmp629
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp555-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp556-.Ltmp555              #   Call between .Ltmp555 and .Ltmp556
	.uleb128 .Ltmp626-.Lfunc_begin5         #     jumps to .Ltmp626
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp557-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp558-.Ltmp557              #   Call between .Ltmp557 and .Ltmp558
	.uleb128 .Ltmp623-.Lfunc_begin5         #     jumps to .Ltmp623
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp562-.Ltmp561              #   Call between .Ltmp561 and .Ltmp562
	.uleb128 .Ltmp620-.Lfunc_begin5         #     jumps to .Ltmp620
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp563-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp564-.Ltmp563              #   Call between .Ltmp563 and .Ltmp564
	.uleb128 .Ltmp617-.Lfunc_begin5         #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp567-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp568-.Ltmp567              #   Call between .Ltmp567 and .Ltmp568
	.uleb128 .Ltmp614-.Lfunc_begin5         #     jumps to .Ltmp614
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp569-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp570-.Ltmp569              #   Call between .Ltmp569 and .Ltmp570
	.uleb128 .Ltmp611-.Lfunc_begin5         #     jumps to .Ltmp611
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp573-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp574-.Ltmp573              #   Call between .Ltmp573 and .Ltmp574
	.uleb128 .Ltmp608-.Lfunc_begin5         #     jumps to .Ltmp608
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp575-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp576-.Ltmp575              #   Call between .Ltmp575 and .Ltmp576
	.uleb128 .Ltmp605-.Lfunc_begin5         #     jumps to .Ltmp605
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp602-.Lfunc_begin5         #     jumps to .Ltmp602
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp581-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp582-.Ltmp581              #   Call between .Ltmp581 and .Ltmp582
	.uleb128 .Ltmp599-.Lfunc_begin5         #     jumps to .Ltmp599
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp596-.Lfunc_begin5         #     jumps to .Ltmp596
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp587-.Lfunc_begin5         # >> Call Site 17 <<
	.uleb128 .Ltmp588-.Ltmp587              #   Call between .Ltmp587 and .Ltmp588
	.uleb128 .Ltmp593-.Lfunc_begin5         #     jumps to .Ltmp593
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin5         # >> Call Site 18 <<
	.uleb128 .Ltmp630-.Ltmp588              #   Call between .Ltmp588 and .Ltmp630
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin5         # >> Call Site 19 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp632-.Lfunc_begin5         #     jumps to .Ltmp632
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp627-.Lfunc_begin5         # >> Call Site 20 <<
	.uleb128 .Ltmp554-.Ltmp627              #   Call between .Ltmp627 and .Ltmp554
	.uleb128 .Ltmp629-.Lfunc_begin5         #     jumps to .Ltmp629
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin5         # >> Call Site 21 <<
	.uleb128 .Ltmp625-.Ltmp624              #   Call between .Ltmp624 and .Ltmp625
	.uleb128 .Ltmp626-.Lfunc_begin5         #     jumps to .Ltmp626
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp621-.Lfunc_begin5         # >> Call Site 22 <<
	.uleb128 .Ltmp560-.Ltmp621              #   Call between .Ltmp621 and .Ltmp560
	.uleb128 .Ltmp623-.Lfunc_begin5         #     jumps to .Ltmp623
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin5         # >> Call Site 23 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp620-.Lfunc_begin5         #     jumps to .Ltmp620
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp615-.Lfunc_begin5         # >> Call Site 24 <<
	.uleb128 .Ltmp566-.Ltmp615              #   Call between .Ltmp615 and .Ltmp566
	.uleb128 .Ltmp617-.Lfunc_begin5         #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp612-.Lfunc_begin5         # >> Call Site 25 <<
	.uleb128 .Ltmp613-.Ltmp612              #   Call between .Ltmp612 and .Ltmp613
	.uleb128 .Ltmp614-.Lfunc_begin5         #     jumps to .Ltmp614
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin5         # >> Call Site 26 <<
	.uleb128 .Ltmp572-.Ltmp609              #   Call between .Ltmp609 and .Ltmp572
	.uleb128 .Ltmp611-.Lfunc_begin5         #     jumps to .Ltmp611
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp606-.Lfunc_begin5         # >> Call Site 27 <<
	.uleb128 .Ltmp607-.Ltmp606              #   Call between .Ltmp606 and .Ltmp607
	.uleb128 .Ltmp608-.Lfunc_begin5         #     jumps to .Ltmp608
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp603-.Lfunc_begin5         # >> Call Site 28 <<
	.uleb128 .Ltmp578-.Ltmp603              #   Call between .Ltmp603 and .Ltmp578
	.uleb128 .Ltmp605-.Lfunc_begin5         #     jumps to .Ltmp605
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp600-.Lfunc_begin5         # >> Call Site 29 <<
	.uleb128 .Ltmp601-.Ltmp600              #   Call between .Ltmp600 and .Ltmp601
	.uleb128 .Ltmp602-.Lfunc_begin5         #     jumps to .Ltmp602
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp597-.Lfunc_begin5         # >> Call Site 30 <<
	.uleb128 .Ltmp584-.Ltmp597              #   Call between .Ltmp597 and .Ltmp584
	.uleb128 .Ltmp599-.Lfunc_begin5         #     jumps to .Ltmp599
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin5         # >> Call Site 31 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp596-.Lfunc_begin5         #     jumps to .Ltmp596
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin5         # >> Call Site 32 <<
	.uleb128 .Ltmp590-.Ltmp591              #   Call between .Ltmp591 and .Ltmp590
	.uleb128 .Ltmp593-.Lfunc_begin5         #     jumps to .Ltmp593
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp590-.Lfunc_begin5         # >> Call Site 33 <<
	.uleb128 .Lfunc_end5-.Ltmp590           #   Call between .Ltmp590 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIttEvSt8functionIFT_PT0_S3_jEES5_PKc
	.type	_ZL19checkVectorFunctionIttEvSt8functionIFT_PT0_S3_jEES5_PKc,@function
_ZL19checkVectorFunctionIttEvSt8functionIFT_PT0_S3_jEES5_PKc: # @_ZL19checkVectorFunctionIttEvSt8functionIFT_PT0_S3_jEES5_PKc
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
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
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2000
	ori	$s4, $zero, 2000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp633:                               # EH_LABEL
	ori	$a0, $zero, 2000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp634:                               # EH_LABEL
# %bb.4:
	move	$s0, $a0
	lu12i.w	$s5, -16
	lu32i.d	$s5, 0
	st.w	$s5, $sp, 32
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s6, $zero
	.p2align	4, , 16
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp636:                               # EH_LABEL
	addi.d	$a0, $sp, 32
	addi.d	$a2, $sp, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp637:                               # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB6_5 Depth=1
	stx.h	$a0, $fp, $s6
	addi.d	$s6, $s6, 2
	bne	$s6, $s4, .LBB6_5
# %bb.7:
	st.w	$s5, $sp, 32
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s4, $zero
	ori	$s5, $zero, 2000
	.p2align	4, , 16
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
.Ltmp639:                               # EH_LABEL
	addi.d	$a0, $sp, 32
	addi.d	$a2, $sp, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp640:                               # EH_LABEL
# %bb.9:                                # %.noexc111
                                        #   in Loop: Header=BB6_8 Depth=1
	stx.h	$a0, $s0, $s4
	addi.d	$s4, $s4, 2
	bne	$s4, $s5, .LBB6_8
# %bb.10:
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_46
# %bb.11:
	ld.d	$a4, $s2, 24
.Ltmp642:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp643:                               # EH_LABEL
# %bb.12:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_48
# %bb.13:
	ld.d	$a4, $s1, 24
.Ltmp644:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp645:                               # EH_LABEL
# %bb.14:
	bne	$s3, $a0, .LBB6_50
# %bb.15:                               # %.preheader231.preheader
	ori	$a1, $zero, 255
	ori	$a2, $zero, 2000
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2000
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_51
# %bb.16:
	ld.d	$a4, $s2, 24
.Ltmp648:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp649:                               # EH_LABEL
# %bb.17:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_53
# %bb.18:
	ld.d	$a4, $s1, 24
.Ltmp650:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp651:                               # EH_LABEL
# %bb.19:
	bne	$s3, $a0, .LBB6_55
# %bb.20:                               # %.preheader230.preheader
	ori	$a2, $zero, 2000
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 255
	ori	$a2, $zero, 2000
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_56
# %bb.21:
	ld.d	$a4, $s2, 24
.Ltmp654:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp655:                               # EH_LABEL
# %bb.22:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_58
# %bb.23:
	ld.d	$a4, $s1, 24
.Ltmp656:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp657:                               # EH_LABEL
# %bb.24:
	bne	$s3, $a0, .LBB6_60
# %bb.25:                               # %.preheader229.preheader
	ori	$a2, $zero, 2000
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2000
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 15
	ori	$s5, $a0, 4095
	st.h	$s5, $fp, 1996
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_61
# %bb.26:
	ld.d	$a4, $s2, 24
.Ltmp660:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp661:                               # EH_LABEL
# %bb.27:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_63
# %bb.28:
	ld.d	$a4, $s1, 24
.Ltmp662:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp663:                               # EH_LABEL
# %bb.29:
	bne	$s3, $a0, .LBB6_65
# %bb.30:                               # %.preheader228.preheader
	ori	$a2, $zero, 2000
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s3, $fp, 2
	ori	$a2, $zero, 1998
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.h	$s5, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_66
# %bb.31:
	ld.d	$a4, $s2, 24
.Ltmp666:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp667:                               # EH_LABEL
# %bb.32:
	move	$s4, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_68
# %bb.33:
	ld.d	$a4, $s1, 24
.Ltmp668:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp669:                               # EH_LABEL
# %bb.34:
	bne	$s4, $a0, .LBB6_70
# %bb.35:                               # %.preheader227.preheader
	ori	$a2, $zero, 2000
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1998
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.h	$s5, $fp, 1998
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_71
# %bb.36:
	ld.d	$a4, $s2, 24
.Ltmp672:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp673:                               # EH_LABEL
# %bb.37:
	move	$s4, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_73
# %bb.38:
	ld.d	$a4, $s1, 24
.Ltmp674:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp675:                               # EH_LABEL
# %bb.39:
	bne	$s4, $a0, .LBB6_75
# %bb.40:                               # %.preheader.preheader
	ori	$a2, $zero, 2000
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1996
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.h	$s5, $fp, 1998
	st.h	$s5, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_76
# %bb.41:
	ld.d	$a4, $s2, 24
.Ltmp678:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp679:                               # EH_LABEL
# %bb.42:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 24
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB6_78
# %bb.43:
	ld.d	$a4, $s1, 24
.Ltmp680:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 20
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp681:                               # EH_LABEL
# %bb.44:
	bne	$s2, $a0, .LBB6_80
# %bb.45:                               # %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit170
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB6_46:
.Ltmp723:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp724:                               # EH_LABEL
# %bb.47:                               # %.noexc113
.LBB6_48:
.Ltmp720:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp721:                               # EH_LABEL
# %bb.49:                               # %.noexc116
.LBB6_50:
.Ltmp646:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp647:                               # EH_LABEL
	b	.LBB6_81
.LBB6_51:
.Ltmp717:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp718:                               # EH_LABEL
# %bb.52:                               # %.noexc120
.LBB6_53:
.Ltmp714:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp715:                               # EH_LABEL
# %bb.54:                               # %.noexc124
.LBB6_55:
.Ltmp652:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp653:                               # EH_LABEL
	b	.LBB6_81
.LBB6_56:
.Ltmp711:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp712:                               # EH_LABEL
# %bb.57:                               # %.noexc128
.LBB6_58:
.Ltmp708:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp709:                               # EH_LABEL
# %bb.59:                               # %.noexc132
.LBB6_60:
.Ltmp658:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp659:                               # EH_LABEL
	b	.LBB6_81
.LBB6_61:
.Ltmp705:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp706:                               # EH_LABEL
# %bb.62:                               # %.noexc136
.LBB6_63:
.Ltmp702:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp703:                               # EH_LABEL
# %bb.64:                               # %.noexc140
.LBB6_65:
.Ltmp664:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp665:                               # EH_LABEL
	b	.LBB6_81
.LBB6_66:
.Ltmp699:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp700:                               # EH_LABEL
# %bb.67:                               # %.noexc144
.LBB6_68:
.Ltmp696:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp697:                               # EH_LABEL
# %bb.69:                               # %.noexc148
.LBB6_70:
.Ltmp670:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp671:                               # EH_LABEL
	b	.LBB6_81
.LBB6_71:
.Ltmp693:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp694:                               # EH_LABEL
# %bb.72:                               # %.noexc152
.LBB6_73:
.Ltmp690:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp691:                               # EH_LABEL
# %bb.74:                               # %.noexc156
.LBB6_75:
.Ltmp676:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp677:                               # EH_LABEL
	b	.LBB6_81
.LBB6_76:
.Ltmp687:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp688:                               # EH_LABEL
# %bb.77:                               # %.noexc160
.LBB6_78:
.Ltmp684:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp685:                               # EH_LABEL
# %bb.79:                               # %.noexc164
.LBB6_80:
.Ltmp682:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp683:                               # EH_LABEL
.LBB6_81:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_82:
.Ltmp635:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_83:
.Ltmp689:                               # EH_LABEL
	b	.LBB6_99
.LBB6_84:
.Ltmp695:                               # EH_LABEL
	b	.LBB6_99
.LBB6_85:
.Ltmp701:                               # EH_LABEL
	b	.LBB6_99
.LBB6_86:
.Ltmp707:                               # EH_LABEL
	b	.LBB6_99
.LBB6_87:
.Ltmp713:                               # EH_LABEL
	b	.LBB6_99
.LBB6_88:
.Ltmp719:                               # EH_LABEL
	b	.LBB6_99
.LBB6_89:
.Ltmp725:                               # EH_LABEL
	b	.LBB6_99
.LBB6_90:
.Ltmp686:                               # EH_LABEL
	b	.LBB6_99
.LBB6_91:
.Ltmp692:                               # EH_LABEL
	b	.LBB6_99
.LBB6_92:
.Ltmp698:                               # EH_LABEL
	b	.LBB6_99
.LBB6_93:
.Ltmp704:                               # EH_LABEL
	b	.LBB6_99
.LBB6_94:
.Ltmp710:                               # EH_LABEL
	b	.LBB6_99
.LBB6_95:
.Ltmp716:                               # EH_LABEL
	b	.LBB6_99
.LBB6_96:
.Ltmp722:                               # EH_LABEL
	b	.LBB6_99
.LBB6_97:                               # %.loopexit
.Ltmp641:                               # EH_LABEL
	b	.LBB6_99
.LBB6_98:                               # %.loopexit.split-lp
.Ltmp638:                               # EH_LABEL
.LBB6_99:                               # %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit173
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
.Lfunc_end6:
	.size	_ZL19checkVectorFunctionIttEvSt8functionIFT_PT0_S3_jEES5_PKc, .Lfunc_end6-_ZL19checkVectorFunctionIttEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	.uleb128 .Ltmp633-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp633
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp634-.Ltmp633              #   Call between .Ltmp633 and .Ltmp634
	.uleb128 .Ltmp635-.Lfunc_begin6         #     jumps to .Ltmp635
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.uleb128 .Ltmp638-.Lfunc_begin6         #     jumps to .Ltmp638
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp640-.Ltmp639              #   Call between .Ltmp639 and .Ltmp640
	.uleb128 .Ltmp641-.Lfunc_begin6         #     jumps to .Ltmp641
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp642-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp643-.Ltmp642              #   Call between .Ltmp642 and .Ltmp643
	.uleb128 .Ltmp725-.Lfunc_begin6         #     jumps to .Ltmp725
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp644-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp645-.Ltmp644              #   Call between .Ltmp644 and .Ltmp645
	.uleb128 .Ltmp722-.Lfunc_begin6         #     jumps to .Ltmp722
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp645-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp648-.Ltmp645              #   Call between .Ltmp645 and .Ltmp648
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp649-.Ltmp648              #   Call between .Ltmp648 and .Ltmp649
	.uleb128 .Ltmp719-.Lfunc_begin6         #     jumps to .Ltmp719
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp650-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp651-.Ltmp650              #   Call between .Ltmp650 and .Ltmp651
	.uleb128 .Ltmp716-.Lfunc_begin6         #     jumps to .Ltmp716
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp654-.Ltmp651              #   Call between .Ltmp651 and .Ltmp654
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp654-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp655-.Ltmp654              #   Call between .Ltmp654 and .Ltmp655
	.uleb128 .Ltmp713-.Lfunc_begin6         #     jumps to .Ltmp713
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp656-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp657-.Ltmp656              #   Call between .Ltmp656 and .Ltmp657
	.uleb128 .Ltmp710-.Lfunc_begin6         #     jumps to .Ltmp710
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp657-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp660-.Ltmp657              #   Call between .Ltmp657 and .Ltmp660
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp660-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp661-.Ltmp660              #   Call between .Ltmp660 and .Ltmp661
	.uleb128 .Ltmp707-.Lfunc_begin6         #     jumps to .Ltmp707
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp662-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp663-.Ltmp662              #   Call between .Ltmp662 and .Ltmp663
	.uleb128 .Ltmp704-.Lfunc_begin6         #     jumps to .Ltmp704
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp663-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp666-.Ltmp663              #   Call between .Ltmp663 and .Ltmp666
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp666-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp667-.Ltmp666              #   Call between .Ltmp666 and .Ltmp667
	.uleb128 .Ltmp701-.Lfunc_begin6         #     jumps to .Ltmp701
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp668-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp669-.Ltmp668              #   Call between .Ltmp668 and .Ltmp669
	.uleb128 .Ltmp698-.Lfunc_begin6         #     jumps to .Ltmp698
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp672-.Ltmp669              #   Call between .Ltmp669 and .Ltmp672
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp673-.Ltmp672              #   Call between .Ltmp672 and .Ltmp673
	.uleb128 .Ltmp695-.Lfunc_begin6         #     jumps to .Ltmp695
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp674-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp675-.Ltmp674              #   Call between .Ltmp674 and .Ltmp675
	.uleb128 .Ltmp692-.Lfunc_begin6         #     jumps to .Ltmp692
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp675-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp678-.Ltmp675              #   Call between .Ltmp675 and .Ltmp678
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp678-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp679-.Ltmp678              #   Call between .Ltmp678 and .Ltmp679
	.uleb128 .Ltmp689-.Lfunc_begin6         #     jumps to .Ltmp689
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp680-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp681-.Ltmp680              #   Call between .Ltmp680 and .Ltmp681
	.uleb128 .Ltmp686-.Lfunc_begin6         #     jumps to .Ltmp686
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp681-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp723-.Ltmp681              #   Call between .Ltmp681 and .Ltmp723
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp723-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp724-.Ltmp723              #   Call between .Ltmp723 and .Ltmp724
	.uleb128 .Ltmp725-.Lfunc_begin6         #     jumps to .Ltmp725
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp720-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp647-.Ltmp720              #   Call between .Ltmp720 and .Ltmp647
	.uleb128 .Ltmp722-.Lfunc_begin6         #     jumps to .Ltmp722
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp717-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp718-.Ltmp717              #   Call between .Ltmp717 and .Ltmp718
	.uleb128 .Ltmp719-.Lfunc_begin6         #     jumps to .Ltmp719
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp714-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp653-.Ltmp714              #   Call between .Ltmp714 and .Ltmp653
	.uleb128 .Ltmp716-.Lfunc_begin6         #     jumps to .Ltmp716
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp711-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp712-.Ltmp711              #   Call between .Ltmp711 and .Ltmp712
	.uleb128 .Ltmp713-.Lfunc_begin6         #     jumps to .Ltmp713
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp708-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp659-.Ltmp708              #   Call between .Ltmp708 and .Ltmp659
	.uleb128 .Ltmp710-.Lfunc_begin6         #     jumps to .Ltmp710
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp705-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp706-.Ltmp705              #   Call between .Ltmp705 and .Ltmp706
	.uleb128 .Ltmp707-.Lfunc_begin6         #     jumps to .Ltmp707
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp702-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp665-.Ltmp702              #   Call between .Ltmp702 and .Ltmp665
	.uleb128 .Ltmp704-.Lfunc_begin6         #     jumps to .Ltmp704
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp699-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp700-.Ltmp699              #   Call between .Ltmp699 and .Ltmp700
	.uleb128 .Ltmp701-.Lfunc_begin6         #     jumps to .Ltmp701
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp696-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp671-.Ltmp696              #   Call between .Ltmp696 and .Ltmp671
	.uleb128 .Ltmp698-.Lfunc_begin6         #     jumps to .Ltmp698
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp693-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp694-.Ltmp693              #   Call between .Ltmp693 and .Ltmp694
	.uleb128 .Ltmp695-.Lfunc_begin6         #     jumps to .Ltmp695
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp690-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp677-.Ltmp690              #   Call between .Ltmp690 and .Ltmp677
	.uleb128 .Ltmp692-.Lfunc_begin6         #     jumps to .Ltmp692
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp687-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp688-.Ltmp687              #   Call between .Ltmp687 and .Ltmp688
	.uleb128 .Ltmp689-.Lfunc_begin6         #     jumps to .Ltmp689
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp684-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Ltmp683-.Ltmp684              #   Call between .Ltmp684 and .Ltmp683
	.uleb128 .Ltmp686-.Lfunc_begin6         #     jumps to .Ltmp686
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp683-.Lfunc_begin6         # >> Call Site 40 <<
	.uleb128 .Lfunc_end6-.Ltmp683           #   Call between .Ltmp683 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
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
.Lfunc_end7:
	.size	__clang_call_terminate, .Lfunc_end7-__clang_call_terminate
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
	bltu	$a2, $s2, .LBB8_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB8_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB8_4
	.p2align	4, , 16
.LBB8_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB8_3
.LBB8_4:                                # %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB8_10
.LBB8_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB8_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB8_10
.LBB8_7:                                # %.preheader
	ori	$s3, $zero, 0
	lu32i.d	$s3, -1
	.p2align	4, , 16
.LBB8_8:                                # =>This Inner Loop Header: Depth=1
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
	bltu	$s2, $a0, .LBB8_8
# %bb.9:                                #   in Loop: Header=BB8_8 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB8_8
.LBB8_10:                               # %.loopexit
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
.Lfunc_end8:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, .Lfunc_end8-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
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
	bltu	$a2, $a1, .LBB9_6
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
.LBB9_2:                                # %vector.body
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
	bne	$a3, $a6, .LBB9_2
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
.LBB9_4:                                # %vector.body14
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
	bnez	$a2, .LBB9_4
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
.LBB9_6:
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
.Lfunc_end9:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end9-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB10_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB10_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB10_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_0JPiS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB10_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end10:
	.size	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end10-_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB11_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB11_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB11_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_0)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_0)
.LBB11_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end11:
	.size	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end11-_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB12_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a0, 31, 0
	bgeu	$a0, $a4, .LBB12_4
# %bb.2:
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	b	.LBB12_7
.LBB12_3:
	addi.w	$a0, $zero, -1
	ret
.LBB12_4:                               # %vector.ph
	bstrpick.d	$a0, $a3, 31, 3
	slli.d	$a4, $a0, 3
	addi.d	$a0, $a2, 16
	vrepli.b	$vr0, 0
	addi.d	$a5, $a1, 16
	move	$a6, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB12_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vslt.w	$vr2, $vr4, $vr2
	vslt.w	$vr3, $vr5, $vr3
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a6, $a6, -8
	addi.d	$a0, $a0, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB12_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	sltui	$a0, $a0, 1
	sub.w	$a0, $zero, $a0
	ori	$a0, $a0, 3
	beq	$a4, $a3, .LBB12_9
.LBB12_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB12_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB12_8
.LBB12_9:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_1JPiS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end12:
	.size	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end12-_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB13_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB13_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB13_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_1)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_1)
.LBB13_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end13-_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj
.LCPI14_0:
	.word	0x4f800000                      # float 4.2949673E+9
.LCPI14_1:
	.word	0x00800000                      # float 1.17549435E-38
.LCPI14_2:
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
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI14_0)
	lu32i.d	$t3, 0
	vldi	$vr13, -1168
	ori	$t4, $zero, 1000
	.p2align	4, , 16
.LBB14_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
                                        #       Child Loop BB14_5 Depth 3
                                        #       Child Loop BB14_7 Depth 3
	vldi	$vr0, -1168
	move	$a0, $a6
	fmov.s	$fa1, $fs0
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
                                        #   in Loop: Header=BB14_3 Depth=2
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
	beqz	$a0, .LBB14_9
.LBB14_3:                               # %select.unfold.i.i.i.i
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_5 Depth 3
                                        #       Child Loop BB14_7 Depth 3
	bltu	$fp, $t0, .LBB14_2
# %bb.4:                                # %vector.ph5
                                        #   in Loop: Header=BB14_3 Depth=2
	ld.d	$a2, $s1, 0
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB14_5:                               # %vector.body6
                                        #   Parent Loop BB14_1 Depth=1
                                        #     Parent Loop BB14_3 Depth=2
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
	bne	$a1, $s8, .LBB14_5
# %bb.6:                                # %vector.ph
                                        #   in Loop: Header=BB14_3 Depth=2
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
.LBB14_7:                               # %vector.body
                                        #   Parent Loop BB14_1 Depth=1
                                        #     Parent Loop BB14_3 Depth=2
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
	bnez	$a1, .LBB14_7
# %bb.8:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
                                        #   in Loop: Header=BB14_3 Depth=2
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
	b	.LBB14_2
	.p2align	4, , 16
.LBB14_9:                               #   in Loop: Header=BB14_1 Depth=1
	fdiv.s	$fa0, $fa1, $fa0
	fcmp.cult.s	$fcc0, $fa0, $ft5
	bceqz	$fcc0, .LBB14_11
.LBB14_10:                              # %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit
                                        #   in Loop: Header=BB14_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI14_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI14_1)
	pcalau12i	$a0, %pc_hi20(.LCPI14_2)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI14_2)
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	slli.d	$a0, $a7, 2
	addi.d	$a7, $a7, 1
	fstx.s	$fa0, $a5, $a0
	bne	$a7, $t4, .LBB14_1
	b	.LBB14_12
.LBB14_11:                              #   in Loop: Header=BB14_1 Depth=1
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
	b	.LBB14_10
.LBB14_12:
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
.Lfunc_end14:
	.size	_ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj, .Lfunc_end14-_ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB15_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB15_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB15_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_0JPfS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB15_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end15:
	.size	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end15-_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
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
	.size	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end16-_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB17_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a0, 31, 0
	bgeu	$a0, $a4, .LBB17_4
# %bb.2:
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	b	.LBB17_7
.LBB17_3:
	addi.w	$a0, $zero, -1
	ret
.LBB17_4:                               # %vector.ph
	bstrpick.d	$a0, $a3, 31, 3
	slli.d	$a4, $a0, 3
	addi.d	$a0, $a2, 16
	vrepli.b	$vr0, 0
	addi.d	$a5, $a1, 16
	move	$a6, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB17_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfcmp.clt.s	$vr2, $vr4, $vr2
	vfcmp.clt.s	$vr3, $vr5, $vr3
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a6, $a6, -8
	addi.d	$a0, $a0, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB17_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	sltui	$a0, $a0, 1
	sub.w	$a0, $zero, $a0
	ori	$a0, $a0, 3
	beq	$a4, $a3, .LBB17_9
.LBB17_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB17_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB17_8
.LBB17_9:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_1JPfS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end17:
	.size	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end17-_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
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
	.size	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end18-_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
	bgeu	$s2, $a2, .LBB19_5
# %bb.1:
	addi.d	$s1, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s2, $a1, .LBB19_4
# %bb.2:
	nor	$a2, $s2, $zero
	mod.wu	$s2, $a2, $s1
	bgeu	$a1, $s2, .LBB19_4
	.p2align	4, , 16
.LBB19_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB19_3
.LBB19_4:                               # %_ZNSt24uniform_int_distributionIsE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB19_8
.LBB19_5:
	move	$s1, $a0
	lu12i.w	$s3, -16
	lu32i.d	$s3, 0
	.p2align	4, , 16
.LBB19_6:                               # =>This Inner Loop Header: Depth=1
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
	bltu	$s2, $a0, .LBB19_6
# %bb.7:                                #   in Loop: Header=BB19_6 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB19_6
.LBB19_8:                               # %.loopexit
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
.Lfunc_end19:
	.size	_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE, .Lfunc_end19-_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	lu12i.w	$a4, 15
	beqz	$a0, .LBB20_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a1, $a4, 4095
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB20_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $a4, $a5
	or	$a1, $a5, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 2
	bnez	$a0, .LBB20_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE3$_2JPsS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a1
	ret
.LBB20_4:
	ori	$a1, $a4, 4095
	ext.w.h	$a0, $a1
	ret
.Lfunc_end20:
	.size	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end20-_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB21_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB21_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB21_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_2)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_2)
.LBB21_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end21:
	.size	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end21-_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	lu12i.w	$a4, 15
	beqz	$a3, .LBB22_3
# %bb.1:                                # %iter.check
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a5, $zero, 8
	bstrpick.d	$a2, $a3, 31, 0
	bgeu	$a3, $a5, .LBB22_4
# %bb.2:
	move	$a3, $zero
	ori	$a5, $a4, 4095
	b	.LBB22_14
.LBB22_3:
	ori	$a5, $a4, 4095
	ext.w.h	$a0, $a5
	ret
.LBB22_4:                               # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	ori	$a4, $a4, 4095
	bgeu	$a3, $a5, .LBB22_10
# %bb.5:
	move	$a3, $zero
	move	$a5, $a4
.LBB22_6:                               # %vec.epilog.ph
	move	$a6, $a3
	bstrpick.d	$a3, $a5, 15, 0
	xor	$a3, $a3, $a4
	sltu	$a4, $zero, $a3
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a3, $a3, 3
	vreplgr2vr.h	$vr0, $a4
	sub.d	$a4, $a6, $a3
	alsl.d	$a5, $a6, $a1, 1
	alsl.d	$a6, $a6, $a0, 1
	.p2align	4, , 16
.LBB22_7:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, 0
	vld	$vr2, $a5, 0
	vslt.h	$vr1, $vr2, $vr1
	vor.v	$vr0, $vr0, $vr1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB22_7
# %bb.8:                                # %vec.epilog.middle.block
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a4, $vr0, 0
	sltui	$a4, $a4, 1
	sub.d	$a4, $zero, $a4
	ori	$a5, $a4, 3
	bne	$a3, $a2, .LBB22_14
.LBB22_9:                               # %"_ZSt10__invoke_rIsRZ4mainE3$_3JPsS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a5
	ret
.LBB22_10:                              # %vector.ph
	bstrpick.d	$a3, $a2, 31, 4
	slli.d	$a3, $a3, 4
	addi.d	$a5, $a1, 16
	vrepli.b	$vr0, 0
	addi.d	$a6, $a0, 16
	move	$a7, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB22_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vld	$vr4, $a5, -16
	vld	$vr5, $a5, 0
	vslt.h	$vr2, $vr4, $vr2
	vslt.h	$vr3, $vr5, $vr3
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB22_11
# %bb.12:                               # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a5, $vr0, 0
	sltui	$a5, $a5, 1
	sub.d	$a5, $zero, $a5
	ori	$a5, $a5, 3
	beq	$a3, $a2, .LBB22_9
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a6, $a2, 8
	bnez	$a6, .LBB22_6
.LBB22_14:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a2, $a2, $a3
	alsl.d	$a1, $a3, $a1, 1
	alsl.d	$a0, $a3, $a0, 1
	ori	$a3, $zero, 3
	.p2align	4, , 16
.LBB22_15:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a0, 0
	ld.h	$a6, $a1, 0
	slt	$a4, $a6, $a4
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a3, $a4
	or	$a5, $a4, $a5
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB22_15
	b	.LBB22_9
.Lfunc_end22:
	.size	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end22-_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB23_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB23_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB23_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_3)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_3)
.LBB23_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end23:
	.size	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end23-_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB24_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB24_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a6, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB24_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_4JPiS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB24_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end24:
	.size	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end24-_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB25_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB25_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB25_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB25_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end25:
	.size	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end25-_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB26_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a0, 31, 0
	bgeu	$a0, $a4, .LBB26_4
# %bb.2:
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	b	.LBB26_7
.LBB26_3:
	addi.w	$a0, $zero, -1
	ret
.LBB26_4:                               # %vector.ph
	bstrpick.d	$a0, $a3, 31, 3
	slli.d	$a4, $a0, 3
	addi.d	$a0, $a2, 16
	vrepli.b	$vr0, 0
	addi.d	$a5, $a1, 16
	move	$a6, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB26_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vsle.w	$vr2, $vr2, $vr4
	vsle.w	$vr3, $vr3, $vr5
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a6, $a6, -8
	addi.d	$a0, $a0, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB26_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	sltui	$a0, $a0, 1
	sub.w	$a0, $zero, $a0
	ori	$a0, $a0, 3
	beq	$a4, $a3, .LBB26_9
.LBB26_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB26_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a6, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB26_8
.LBB26_9:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_5JPiS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end26:
	.size	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end26-_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB27_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB27_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB27_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB27_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end27:
	.size	_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end27-_ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB28_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB28_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a6, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB28_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_4JPfS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB28_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end28:
	.size	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end28-_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB29_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB29_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB29_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB29_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end29:
	.size	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end29-_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB30_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a0, 31, 0
	bgeu	$a0, $a4, .LBB30_4
# %bb.2:
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	b	.LBB30_7
.LBB30_3:
	addi.w	$a0, $zero, -1
	ret
.LBB30_4:                               # %vector.ph
	bstrpick.d	$a0, $a3, 31, 3
	slli.d	$a4, $a0, 3
	addi.d	$a0, $a2, 16
	vrepli.b	$vr0, 0
	addi.d	$a5, $a1, 16
	move	$a6, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB30_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfcmp.cule.s	$vr2, $vr2, $vr4
	vfcmp.cule.s	$vr3, $vr3, $vr5
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a6, $a6, -8
	addi.d	$a0, $a0, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB30_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	sltui	$a0, $a0, 1
	sub.w	$a0, $zero, $a0
	ori	$a0, $a0, 3
	beq	$a4, $a3, .LBB30_9
.LBB30_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB30_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a6, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB30_8
.LBB30_9:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_5JPfS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end30:
	.size	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end30-_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB31_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB31_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB31_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB31_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end31:
	.size	_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end31-_ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	lu12i.w	$a4, 15
	beqz	$a0, .LBB32_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a1, $a4, 4095
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB32_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a6, $a4, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 2
	bnez	$a0, .LBB32_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE3$_6JPsS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a1
	ret
.LBB32_4:
	ori	$a1, $a4, 4095
	ext.w.h	$a0, $a1
	ret
.Lfunc_end32:
	.size	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end32-_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB33_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB33_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB33_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_6)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_6)
.LBB33_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end33:
	.size	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end33-_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	lu12i.w	$a4, 15
	beqz	$a3, .LBB34_3
# %bb.1:                                # %iter.check
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a5, $zero, 8
	bstrpick.d	$a2, $a3, 31, 0
	bgeu	$a3, $a5, .LBB34_4
# %bb.2:
	move	$a3, $zero
	ori	$a5, $a4, 4095
	b	.LBB34_14
.LBB34_3:
	ori	$a5, $a4, 4095
	ext.w.h	$a0, $a5
	ret
.LBB34_4:                               # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	ori	$a4, $a4, 4095
	bgeu	$a3, $a5, .LBB34_10
# %bb.5:
	move	$a3, $zero
	move	$a5, $a4
.LBB34_6:                               # %vec.epilog.ph
	move	$a6, $a3
	bstrpick.d	$a3, $a5, 15, 0
	xor	$a3, $a3, $a4
	sltu	$a4, $zero, $a3
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a3, $a3, 3
	vreplgr2vr.h	$vr0, $a4
	sub.d	$a4, $a6, $a3
	alsl.d	$a5, $a6, $a1, 1
	alsl.d	$a6, $a6, $a0, 1
	.p2align	4, , 16
.LBB34_7:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, 0
	vld	$vr2, $a5, 0
	vsle.h	$vr1, $vr1, $vr2
	vor.v	$vr0, $vr0, $vr1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB34_7
# %bb.8:                                # %vec.epilog.middle.block
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a4, $vr0, 0
	sltui	$a4, $a4, 1
	sub.d	$a4, $zero, $a4
	ori	$a5, $a4, 3
	bne	$a3, $a2, .LBB34_14
.LBB34_9:                               # %"_ZSt10__invoke_rIsRZ4mainE3$_7JPsS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a5
	ret
.LBB34_10:                              # %vector.ph
	bstrpick.d	$a3, $a2, 31, 4
	slli.d	$a3, $a3, 4
	addi.d	$a5, $a1, 16
	vrepli.b	$vr0, 0
	addi.d	$a6, $a0, 16
	move	$a7, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB34_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vld	$vr4, $a5, -16
	vld	$vr5, $a5, 0
	vsle.h	$vr2, $vr2, $vr4
	vsle.h	$vr3, $vr3, $vr5
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB34_11
# %bb.12:                               # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a5, $vr0, 0
	sltui	$a5, $a5, 1
	sub.d	$a5, $zero, $a5
	ori	$a5, $a5, 3
	beq	$a3, $a2, .LBB34_9
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a6, $a2, 8
	bnez	$a6, .LBB34_6
.LBB34_14:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a2, $a2, $a3
	alsl.d	$a1, $a3, $a1, 1
	alsl.d	$a0, $a3, $a0, 1
	ori	$a3, $zero, 3
	.p2align	4, , 16
.LBB34_15:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a0, 0
	ld.h	$a6, $a1, 0
	slt	$a4, $a6, $a4
	masknez	$a6, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a5, $a4, $a6
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB34_15
	b	.LBB34_9
.Lfunc_end34:
	.size	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end34-_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB35_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB35_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB35_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_7)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_7)
.LBB35_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end35:
	.size	_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end35-_ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
	bltu	$a2, $s2, .LBB36_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB36_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB36_4
	.p2align	4, , 16
.LBB36_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB36_3
.LBB36_4:                               # %_ZNSt24uniform_int_distributionIjE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB36_10
.LBB36_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB36_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB36_10
.LBB36_7:                               # %.preheader
	ori	$s3, $zero, 0
	lu32i.d	$s3, -1
	.p2align	4, , 16
.LBB36_8:                               # =>This Inner Loop Header: Depth=1
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
	bltu	$s2, $a0, .LBB36_8
# %bb.9:                                #   in Loop: Header=BB36_8 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB36_8
.LBB36_10:                              # %.loopexit
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
.Lfunc_end36:
	.size	_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE, .Lfunc_end36-_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB37_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB37_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	sltu	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB37_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_8JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB37_4:
	move	$a0, $zero
	ret
.Lfunc_end37:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end37-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
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
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end38-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB39_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a0, 31, 0
	bgeu	$a0, $a4, .LBB39_4
# %bb.2:
	move	$a4, $zero
	b	.LBB39_7
.LBB39_3:
	move	$a0, $zero
	ret
.LBB39_4:                               # %vector.ph
	bstrpick.d	$a4, $a3, 31, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a2, 16
	vrepli.b	$vr0, 0
	addi.d	$a6, $a1, 16
	move	$a7, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB39_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vld	$vr4, $a5, -16
	vld	$vr5, $a5, 0
	vslt.wu	$vr2, $vr4, $vr2
	vslt.wu	$vr3, $vr5, $vr3
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB39_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a5, $vr0, 0
	sltui	$a5, $a5, 1
	ori	$a6, $zero, 3
	masknez	$a6, $a6, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	beq	$a4, $a3, .LBB39_9
.LBB39_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB39_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	sltu	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB39_8
.LBB39_9:                               # %"_ZSt10__invoke_rIjRZ4mainE3$_9JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end39:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end39-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
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
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end40-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB41_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB41_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB41_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_8JPfS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB41_4:
	move	$a0, $zero
	ret
.Lfunc_end41:
	.size	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end41-_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB42_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB42_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB42_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB42_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end42:
	.size	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end42-_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB43_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a0, 31, 0
	bgeu	$a0, $a4, .LBB43_4
# %bb.2:
	move	$a4, $zero
	b	.LBB43_7
.LBB43_3:
	move	$a0, $zero
	ret
.LBB43_4:                               # %vector.ph
	bstrpick.d	$a4, $a3, 31, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a2, 16
	vrepli.b	$vr0, 0
	addi.d	$a6, $a1, 16
	move	$a7, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB43_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vld	$vr4, $a5, -16
	vld	$vr5, $a5, 0
	vfcmp.clt.s	$vr2, $vr4, $vr2
	vfcmp.clt.s	$vr3, $vr5, $vr3
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB43_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a5, $vr0, 0
	sltui	$a5, $a5, 1
	ori	$a6, $zero, 3
	masknez	$a6, $a6, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	beq	$a4, $a3, .LBB43_9
.LBB43_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB43_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB43_8
.LBB43_9:                               # %"_ZSt10__invoke_rIjRZ4mainE3$_9JPfS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end43:
	.size	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end43-_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB44_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB44_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB44_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB44_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end44:
	.size	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end44-_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE
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
	ld.hu	$a2, $a2, 2
	ld.hu	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	move	$s0, $a1
	bgeu	$s2, $a2, .LBB45_5
# %bb.1:
	addi.d	$s1, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s2, $a1, .LBB45_4
# %bb.2:
	nor	$a2, $s2, $zero
	mod.wu	$s2, $a2, $s1
	bgeu	$a1, $s2, .LBB45_4
	.p2align	4, , 16
.LBB45_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB45_3
.LBB45_4:                               # %_ZNSt24uniform_int_distributionItE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB45_8
.LBB45_5:
	move	$s1, $a0
	lu12i.w	$s3, -16
	lu32i.d	$s3, 0
	.p2align	4, , 16
.LBB45_6:                               # =>This Inner Loop Header: Depth=1
	st.w	$s3, $sp, 20
	addi.d	$a2, $sp, 20
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	bltu	$s2, $a0, .LBB45_6
# %bb.7:                                #   in Loop: Header=BB45_6 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB45_6
.LBB45_8:                               # %.loopexit
	ld.h	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 15, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end45:
	.size	_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE, .Lfunc_end45-_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB46_4
# %bb.1:
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB46_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a1, 0
	ld.hu	$a6, $a2, 0
	sltu	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bnez	$a3, .LBB46_2
# %bb.3:                                # %"_ZSt10__invoke_rItRZ4mainE4$_10JPtS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	bstrpick.d	$a0, $a0, 15, 0
	ret
.LBB46_4:
	bstrpick.d	$a0, $zero, 15, 0
	ret
.Lfunc_end46:
	.size	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end46-_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB47_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB47_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB47_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_10)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_10)
.LBB47_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end47:
	.size	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end47-_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB48_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a0, 31, 0
	bgeu	$a0, $a4, .LBB48_4
# %bb.2:
	move	$a4, $zero
	b	.LBB48_7
.LBB48_3:
	bstrpick.d	$a0, $zero, 15, 0
	ret
.LBB48_4:                               # %vector.ph
	bstrpick.d	$a4, $a3, 31, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a2, 8
	vrepli.b	$vr0, 0
	addi.d	$a6, $a1, 8
	move	$a7, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB48_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a6, -8
	ld.d	$t1, $a6, 0
	ld.d	$t2, $a5, -8
	ld.d	$t3, $a5, 0
	vinsgr2vr.d	$vr2, $t0, 0
	vinsgr2vr.d	$vr3, $t1, 0
	vinsgr2vr.d	$vr4, $t2, 0
	vinsgr2vr.d	$vr5, $t3, 0
	vslt.hu	$vr2, $vr4, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vslt.hu	$vr3, $vr5, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB48_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a5, $vr0, 0
	sltui	$a5, $a5, 1
	ori	$a6, $zero, 3
	masknez	$a6, $a6, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	beq	$a4, $a3, .LBB48_9
.LBB48_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 1
	alsl.d	$a1, $a4, $a1, 1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB48_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a1, 0
	ld.hu	$a6, $a2, 0
	sltu	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bnez	$a3, .LBB48_8
.LBB48_9:                               # %"_ZSt10__invoke_rItRZ4mainE4$_11JPtS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	bstrpick.d	$a0, $a0, 15, 0
	ret
.Lfunc_end48:
	.size	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end48-_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB49_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB49_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB49_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_11)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_11)
.LBB49_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end49:
	.size	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end49-_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB50_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a3, 31, 0
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB50_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	sltu	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a3, $a5
	or	$a0, $a5, $a0
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB50_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE4$_12JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB50_4:
	ori	$a0, $zero, 3
	ret
.Lfunc_end50:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end50-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB51_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB51_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB51_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB51_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end51:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end51-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB52_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a0, $zero, 8
	bstrpick.d	$a4, $a3, 31, 0
	bgeu	$a3, $a0, .LBB52_4
# %bb.2:
	move	$a5, $zero
	ori	$a0, $zero, 3
	b	.LBB52_7
.LBB52_3:
	ori	$a0, $zero, 3
	ret
.LBB52_4:                               # %vector.ph
	bstrpick.d	$a0, $a4, 31, 3
	slli.d	$a5, $a0, 3
	addi.d	$a0, $a2, 16
	vrepli.b	$vr0, 0
	addi.d	$a6, $a1, 16
	move	$a7, $a5
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB52_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vslt.wu	$vr2, $vr4, $vr2
	vslt.wu	$vr3, $vr5, $vr3
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -8
	addi.d	$a0, $a0, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB52_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	sltui	$a0, $a0, 1
	masknez	$a6, $a3, $a0
	ori	$a7, $zero, 3
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a6
	beq	$a5, $a4, .LBB52_9
.LBB52_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a4, $a4, $a5
	alsl.d	$a2, $a5, $a2, 2
	alsl.d	$a1, $a5, $a1, 2
	.p2align	4, , 16
.LBB52_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	sltu	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a3, $a5
	or	$a0, $a5, $a0
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB52_8
.LBB52_9:                               # %"_ZSt10__invoke_rIjRZ4mainE4$_13JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end52:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end52-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB53_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB53_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB53_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB53_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end53:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end53-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB54_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a3, 31, 0
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB54_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a3, $a5
	or	$a0, $a5, $a0
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB54_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE4$_12JPfS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB54_4:
	ori	$a0, $zero, 3
	ret
.Lfunc_end54:
	.size	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end54-_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB55_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB55_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB55_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB55_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end55:
	.size	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end55-_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB56_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a0, $zero, 8
	bstrpick.d	$a4, $a3, 31, 0
	bgeu	$a3, $a0, .LBB56_4
# %bb.2:
	move	$a5, $zero
	ori	$a0, $zero, 3
	b	.LBB56_7
.LBB56_3:
	ori	$a0, $zero, 3
	ret
.LBB56_4:                               # %vector.ph
	bstrpick.d	$a0, $a4, 31, 3
	slli.d	$a5, $a0, 3
	addi.d	$a0, $a2, 16
	vrepli.b	$vr0, 0
	addi.d	$a6, $a1, 16
	move	$a7, $a5
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB56_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfcmp.clt.s	$vr2, $vr4, $vr2
	vfcmp.clt.s	$vr3, $vr5, $vr3
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -8
	addi.d	$a0, $a0, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB56_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	sltui	$a0, $a0, 1
	masknez	$a6, $a3, $a0
	ori	$a7, $zero, 3
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a6
	beq	$a5, $a4, .LBB56_9
.LBB56_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a4, $a4, $a5
	alsl.d	$a2, $a5, $a2, 2
	alsl.d	$a1, $a5, $a1, 2
	.p2align	4, , 16
.LBB56_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a3, $a5
	or	$a0, $a5, $a0
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB56_8
.LBB56_9:                               # %"_ZSt10__invoke_rIjRZ4mainE4$_13JPfS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end56:
	.size	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end56-_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB57_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB57_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB57_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB57_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end57:
	.size	_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end57-_ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB58_4
# %bb.1:                                # %.lr.ph.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	bstrpick.d	$a4, $a0, 31, 0
	ori	$a2, $zero, 3
	.p2align	4, , 16
.LBB58_2:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a1, 0
	ld.hu	$a6, $a3, 0
	sltu	$a5, $a6, $a5
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $a0, $a5
	or	$a2, $a5, $a2
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 2
	addi.d	$a1, $a1, 2
	bnez	$a4, .LBB58_2
# %bb.3:                                # %"_ZSt10__invoke_rItRZ4mainE4$_14JPtS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	bstrpick.d	$a0, $a2, 15, 0
	ret
.LBB58_4:
	ori	$a2, $zero, 3
	bstrpick.d	$a0, $a2, 15, 0
	ret
.Lfunc_end58:
	.size	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end58-_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB59_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB59_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB59_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_14)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_14)
.LBB59_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end59:
	.size	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end59-_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB60_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a0, 31, 0
	bgeu	$a0, $a4, .LBB60_4
# %bb.2:
	move	$a4, $zero
	ori	$a5, $zero, 3
	b	.LBB60_14
.LBB60_3:
	ori	$a5, $zero, 3
	bstrpick.d	$a0, $a5, 15, 0
	ret
.LBB60_4:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a0, $a4, .LBB60_10
# %bb.5:
	move	$a4, $zero
	ori	$a5, $zero, 3
.LBB60_6:                               # %vec.epilog.ph
	move	$a7, $a4
	bstrpick.d	$a4, $a5, 15, 0
	addi.d	$a4, $a4, -3
	sltu	$a5, $zero, $a4
	bstrpick.d	$a4, $a3, 31, 3
	slli.d	$a4, $a4, 3
	vreplgr2vr.h	$vr0, $a5
	sub.d	$a5, $a7, $a4
	alsl.d	$a6, $a7, $a2, 1
	alsl.d	$a7, $a7, $a1, 1
	.p2align	4, , 16
.LBB60_7:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $a6, 0
	vslt.hu	$vr1, $vr2, $vr1
	vor.v	$vr0, $vr0, $vr1
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB60_7
# %bb.8:                                # %vec.epilog.middle.block
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a5, $vr0, 0
	sltui	$a5, $a5, 1
	masknez	$a6, $a0, $a5
	ori	$a7, $zero, 3
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	bne	$a4, $a3, .LBB60_14
.LBB60_9:                               # %"_ZSt10__invoke_rItRZ4mainE4$_15JPtS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	bstrpick.d	$a0, $a5, 15, 0
	ret
.LBB60_10:                              # %vector.ph
	bstrpick.d	$a4, $a3, 31, 4
	slli.d	$a4, $a4, 4
	addi.d	$a5, $a2, 16
	vrepli.b	$vr0, 0
	addi.d	$a6, $a1, 16
	move	$a7, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB60_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vld	$vr4, $a5, -16
	vld	$vr5, $a5, 0
	vslt.hu	$vr2, $vr4, $vr2
	vslt.hu	$vr3, $vr5, $vr3
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB60_11
# %bb.12:                               # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a5, $vr0, 0
	sltui	$a5, $a5, 1
	masknez	$a6, $a0, $a5
	ori	$a7, $zero, 3
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	beq	$a4, $a3, .LBB60_9
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a6, $a3, 8
	bnez	$a6, .LBB60_6
.LBB60_14:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 1
	alsl.d	$a1, $a4, $a1, 1
	.p2align	4, , 16
.LBB60_15:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a1, 0
	ld.hu	$a6, $a2, 0
	sltu	$a4, $a6, $a4
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a0, $a4
	or	$a5, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bnez	$a3, .LBB60_15
	b	.LBB60_9
.Lfunc_end60:
	.size	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end60-_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB61_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB61_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB61_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_15)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_15)
.LBB61_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end61:
	.size	_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end61-_ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_any_of.cpp
	.type	_GLOBAL__sub_I_any_of.cpp,@function
_GLOBAL__sub_I_any_of.cpp:              # @_GLOBAL__sub_I_any_of.cpp
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
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a5, .LBB62_1
# %bb.2:                                # %__cxx_global_var_init.exit
	ori	$a1, $zero, 624
	stptr.d	$a1, $a0, 4992
	ret
.Lfunc_end62:
	.size	_GLOBAL__sub_I_any_of.cpp, .Lfunc_end62-_GLOBAL__sub_I_any_of.cpp
                                        # -- End function
	.type	_ZL3rng,@object                 # @_ZL3rng
	.local	_ZL3rng
	.comm	_ZL3rng,5000,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"anyof_icmp_s32_true_update"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"anyof_fcmp_s32_true_update"
	.size	.L.str.1, 27

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"anyof_icmp_s16_true_update"
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"anyof_icmp_s32_false_update"
	.size	.L.str.3, 28

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"anyof_fcmp_s32_false_update"
	.size	.L.str.4, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"anyof_icmp_s16_false_update"
	.size	.L.str.5, 28

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"anyof_icmp_u32_start_TC"
	.size	.L.str.6, 24

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"anyof_fcmp_u32_start_TC"
	.size	.L.str.7, 24

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"anyof_icmp_u16_start_TC"
	.size	.L.str.8, 24

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"anyof_icmp_u32_update_by_TC"
	.size	.L.str.9, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"anyof_fcmp_u32_update_by_TC"
	.size	.L.str.10, 28

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"anyof_icmp_u16_update_by_TC"
	.size	.L.str.11, 28

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Checking "
	.size	.L.str.12, 10

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\n"
	.size	.L.str.13, 2

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Miscompare\n"
	.size	.L.str.14, 12

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

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_any_of.cpp
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
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPfS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFtPtS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _GLOBAL__sub_I_any_of.cpp
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
