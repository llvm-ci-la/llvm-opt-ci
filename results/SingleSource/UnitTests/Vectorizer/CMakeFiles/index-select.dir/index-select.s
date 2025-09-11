	.file	"index-select.cpp"
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
	addi.d	$sp, $sp, -1552
	.cfi_def_cfa_offset 5632
	ori	$a2, $zero, 15
	st.d	$a2, $sp, 616
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 616
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
	ori	$a1, $a1, 1512
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 904
	addi.d	$a1, $sp, 616
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 584
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 608
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 600
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 552
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 576
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 568
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 552
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:
	ld.d	$a3, $sp, 568
	beqz	$a3, .LBB0_5
# %bb.4:
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp10:                                # EH_LABEL
.LBB0_5:                                # %_ZNSt14_Function_baseD2Ev.exit
	ld.d	$a3, $sp, 600
	beqz	$a3, .LBB0_7
# %bb.6:
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp13:                                # EH_LABEL
.LBB0_7:                                # %_ZNSt14_Function_baseD2Ev.exit4
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 520
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 544
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 536
	vst	$vr0, $sp, 488
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 512
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 504
.Ltmp15:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 488
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.8:
	ld.d	$a3, $sp, 504
	beqz	$a3, .LBB0_10
# %bb.9:
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp25:                                # EH_LABEL
.LBB0_10:                               # %_ZNSt14_Function_baseD2Ev.exit6
	ld.d	$a3, $sp, 536
	beqz	$a3, .LBB0_12
# %bb.11:
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp28:                                # EH_LABEL
.LBB0_12:                               # %_ZNSt14_Function_baseD2Ev.exit8
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 456
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 480
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 472
	vst	$vr0, $sp, 424
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 448
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 440
.Ltmp30:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 424
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.13:
	ld.d	$a3, $sp, 440
	beqz	$a3, .LBB0_15
# %bb.14:
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp40:                                # EH_LABEL
.LBB0_15:                               # %_ZNSt14_Function_baseD2Ev.exit10
	ld.d	$a3, $sp, 472
	beqz	$a3, .LBB0_17
# %bb.16:
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp43:                                # EH_LABEL
.LBB0_17:                               # %_ZNSt14_Function_baseD2Ev.exit12
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 392
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 416
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 408
	vst	$vr0, $sp, 360
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 384
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 376
.Ltmp45:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 360
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.18:
	ld.d	$a3, $sp, 376
	beqz	$a3, .LBB0_20
# %bb.19:
.Ltmp54:                                # EH_LABEL
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp55:                                # EH_LABEL
.LBB0_20:                               # %_ZNSt14_Function_baseD2Ev.exit14
	ld.d	$a3, $sp, 408
	beqz	$a3, .LBB0_22
# %bb.21:
.Ltmp57:                                # EH_LABEL
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp58:                                # EH_LABEL
.LBB0_22:                               # %_ZNSt14_Function_baseD2Ev.exit16
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 328
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 352
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 344
	vst	$vr0, $sp, 296
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 320
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 312
.Ltmp60:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 296
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.23:
	ld.d	$a3, $sp, 312
	beqz	$a3, .LBB0_25
# %bb.24:
.Ltmp69:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp70:                                # EH_LABEL
.LBB0_25:                               # %_ZNSt14_Function_baseD2Ev.exit18
	ld.d	$a3, $sp, 344
	beqz	$a3, .LBB0_27
# %bb.26:
.Ltmp72:                                # EH_LABEL
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp73:                                # EH_LABEL
.LBB0_27:                               # %_ZNSt14_Function_baseD2Ev.exit20
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 264
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 288
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 280
	vst	$vr0, $sp, 232
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 256
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 248
.Ltmp75:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.28:
	ld.d	$a3, $sp, 248
	beqz	$a3, .LBB0_30
# %bb.29:
.Ltmp84:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp85:                                # EH_LABEL
.LBB0_30:                               # %_ZNSt14_Function_baseD2Ev.exit22
	ld.d	$a3, $sp, 280
	beqz	$a3, .LBB0_32
# %bb.31:
.Ltmp87:                                # EH_LABEL
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp88:                                # EH_LABEL
.LBB0_32:                               # %_ZNSt14_Function_baseD2Ev.exit24
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
.Ltmp90:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.33:
	ld.d	$a3, $sp, 184
	beqz	$a3, .LBB0_35
# %bb.34:
.Ltmp99:                                # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp100:                               # EH_LABEL
.LBB0_35:                               # %_ZNSt14_Function_baseD2Ev.exit26
	ld.d	$a3, $sp, 216
	beqz	$a3, .LBB0_37
# %bb.36:
.Ltmp102:                               # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp103:                               # EH_LABEL
.LBB0_37:                               # %_ZNSt14_Function_baseD2Ev.exit28
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 136
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 160
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 152
	vst	$vr0, $sp, 104
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 128
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 120
.Ltmp105:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.38:
	ld.d	$a3, $sp, 120
	beqz	$a3, .LBB0_40
# %bb.39:
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp115:                               # EH_LABEL
.LBB0_40:                               # %_ZNSt14_Function_baseD2Ev.exit30
	ld.d	$a3, $sp, 152
	beqz	$a3, .LBB0_42
# %bb.41:
.Ltmp117:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp118:                               # EH_LABEL
.LBB0_42:                               # %_ZNSt14_Function_baseD2Ev.exit32
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 96
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 88
	vst	$vr0, $sp, 40
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 64
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 56
.Ltmp120:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.43:
	ld.d	$a3, $sp, 56
	beqz	$a3, .LBB0_45
# %bb.44:
.Ltmp129:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp130:                               # EH_LABEL
.LBB0_45:                               # %_ZNSt14_Function_baseD2Ev.exit34
	ld.d	$a3, $sp, 88
	beqz	$a3, .LBB0_47
# %bb.46:
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp133:                               # EH_LABEL
.LBB0_47:                               # %_ZNSt14_Function_baseD2Ev.exit36
	move	$a0, $zero
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1568
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_48:
.Ltmp134:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_49:
.Ltmp131:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_50:
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_51:
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_52:
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_53:
.Ltmp101:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_54:
.Ltmp89:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_55:
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_56:
.Ltmp74:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_57:
.Ltmp71:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_58:
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_59:
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_60:
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_61:
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_62:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_63:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_64:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_65:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_66:
.Ltmp122:                               # EH_LABEL
	ld.d	$a3, $sp, 56
	move	$fp, $a0
	beqz	$a3, .LBB0_68
# %bb.67:
.Ltmp123:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp124:                               # EH_LABEL
.LBB0_68:                               # %_ZNSt14_Function_baseD2Ev.exit70
	ld.d	$a3, $sp, 88
	beqz	$a3, .LBB0_118
# %bb.69:
.Ltmp126:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp127:                               # EH_LABEL
	b	.LBB0_118
.LBB0_70:
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_71:
.Ltmp125:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_72:
.Ltmp107:                               # EH_LABEL
	ld.d	$a3, $sp, 120
	move	$fp, $a0
	beqz	$a3, .LBB0_74
# %bb.73:
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp109:                               # EH_LABEL
.LBB0_74:                               # %_ZNSt14_Function_baseD2Ev.exit66
	ld.d	$a3, $sp, 152
	beqz	$a3, .LBB0_118
# %bb.75:
.Ltmp111:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp112:                               # EH_LABEL
	b	.LBB0_118
.LBB0_76:
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_77:
.Ltmp110:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_78:
.Ltmp92:                                # EH_LABEL
	ld.d	$a3, $sp, 184
	move	$fp, $a0
	beqz	$a3, .LBB0_80
# %bb.79:
.Ltmp93:                                # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp94:                                # EH_LABEL
.LBB0_80:                               # %_ZNSt14_Function_baseD2Ev.exit62
	ld.d	$a3, $sp, 216
	beqz	$a3, .LBB0_118
# %bb.81:
.Ltmp96:                                # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp97:                                # EH_LABEL
	b	.LBB0_118
.LBB0_82:
.Ltmp98:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_83:
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_84:
.Ltmp77:                                # EH_LABEL
	ld.d	$a3, $sp, 248
	move	$fp, $a0
	beqz	$a3, .LBB0_86
# %bb.85:
.Ltmp78:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp79:                                # EH_LABEL
.LBB0_86:                               # %_ZNSt14_Function_baseD2Ev.exit58
	ld.d	$a3, $sp, 280
	beqz	$a3, .LBB0_118
# %bb.87:
.Ltmp81:                                # EH_LABEL
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp82:                                # EH_LABEL
	b	.LBB0_118
.LBB0_88:
.Ltmp83:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_89:
.Ltmp80:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_90:
.Ltmp62:                                # EH_LABEL
	ld.d	$a3, $sp, 312
	move	$fp, $a0
	beqz	$a3, .LBB0_92
# %bb.91:
.Ltmp63:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp64:                                # EH_LABEL
.LBB0_92:                               # %_ZNSt14_Function_baseD2Ev.exit54
	ld.d	$a3, $sp, 344
	beqz	$a3, .LBB0_118
# %bb.93:
.Ltmp66:                                # EH_LABEL
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp67:                                # EH_LABEL
	b	.LBB0_118
.LBB0_94:
.Ltmp68:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_95:
.Ltmp65:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_96:
.Ltmp47:                                # EH_LABEL
	ld.d	$a3, $sp, 376
	move	$fp, $a0
	beqz	$a3, .LBB0_98
# %bb.97:
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp49:                                # EH_LABEL
.LBB0_98:                               # %_ZNSt14_Function_baseD2Ev.exit50
	ld.d	$a3, $sp, 408
	beqz	$a3, .LBB0_118
# %bb.99:
.Ltmp51:                                # EH_LABEL
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp52:                                # EH_LABEL
	b	.LBB0_118
.LBB0_100:
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_101:
.Ltmp50:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_102:
.Ltmp32:                                # EH_LABEL
	ld.d	$a3, $sp, 440
	move	$fp, $a0
	beqz	$a3, .LBB0_104
# %bb.103:
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp34:                                # EH_LABEL
.LBB0_104:                              # %_ZNSt14_Function_baseD2Ev.exit46
	ld.d	$a3, $sp, 472
	beqz	$a3, .LBB0_118
# %bb.105:
.Ltmp36:                                # EH_LABEL
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp37:                                # EH_LABEL
	b	.LBB0_118
.LBB0_106:
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_107:
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_108:
.Ltmp17:                                # EH_LABEL
	ld.d	$a3, $sp, 504
	move	$fp, $a0
	beqz	$a3, .LBB0_110
# %bb.109:
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp19:                                # EH_LABEL
.LBB0_110:                              # %_ZNSt14_Function_baseD2Ev.exit42
	ld.d	$a3, $sp, 536
	beqz	$a3, .LBB0_118
# %bb.111:
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp22:                                # EH_LABEL
	b	.LBB0_118
.LBB0_112:
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_113:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_114:
.Ltmp2:                                 # EH_LABEL
	ld.d	$a3, $sp, 568
	move	$fp, $a0
	beqz	$a3, .LBB0_116
# %bb.115:
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp4:                                 # EH_LABEL
.LBB0_116:                              # %_ZNSt14_Function_baseD2Ev.exit38
	ld.d	$a3, $sp, 600
	beqz	$a3, .LBB0_118
# %bb.117:
.Ltmp6:                                 # EH_LABEL
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp7:                                 # EH_LABEL
.LBB0_118:                              # %_ZNSt14_Function_baseD2Ev.exit40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_119:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_120:
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
	.uleb128 .Ltmp133-.Lfunc_begin0         # >> Call Site 29 <<
	.uleb128 .Ltmp123-.Ltmp133              #   Call between .Ltmp133 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin0         # >> Call Site 30 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin0         #     jumps to .Ltmp125
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin0         #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp108-.Ltmp127              #   Call between .Ltmp127 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin0         # >> Call Site 33 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin0         #     jumps to .Ltmp110
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp111-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin0         #     jumps to .Ltmp113
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp93-.Ltmp112               #   Call between .Ltmp112 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin0          #     jumps to .Ltmp95
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp96-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin0          #     jumps to .Ltmp98
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 38 <<
	.uleb128 .Ltmp78-.Ltmp97                #   Call between .Ltmp97 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 39 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin0          #     jumps to .Ltmp80
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 40 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 41 <<
	.uleb128 .Ltmp63-.Ltmp82                #   Call between .Ltmp82 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 42 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 43 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 44 <<
	.uleb128 .Ltmp48-.Ltmp67                #   Call between .Ltmp67 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 45 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 46 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 47 <<
	.uleb128 .Ltmp33-.Ltmp52                #   Call between .Ltmp52 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 48 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 49 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 50 <<
	.uleb128 .Ltmp18-.Ltmp37                #   Call between .Ltmp37 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 51 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 52 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 53 <<
	.uleb128 .Ltmp3-.Ltmp22                 #   Call between .Ltmp22 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 54 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 55 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 56 <<
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
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc
	.type	_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc,@function
_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc: # @_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
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
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp135:                               # EH_LABEL
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
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
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp138:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$a1, $fp, $s5
	addi.d	$s5, $s5, 4
	stptr.w	$a0, $a1, 4000
	bnez	$s5, .LBB1_5
# %bb.7:
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 24
	ori	$s4, $s4, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
.Ltmp141:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.9:                                # %.noexc89
                                        #   in Loop: Header=BB1_8 Depth=1
	add.d	$a1, $s0, $s4
	addi.d	$s4, $s4, 4
	stptr.w	$a0, $a1, 4000
	bnez	$s4, .LBB1_8
# %bb.10:
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB1_45
# %bb.11:
	ld.d	$a4, $s2, 24
.Ltmp144:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp145:                               # EH_LABEL
# %bb.12:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB1_47
# %bb.13:
	ld.d	$a4, $s1, 24
.Ltmp146:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp147:                               # EH_LABEL
# %bb.14:
	bne	$s3, $a0, .LBB1_49
# %bb.15:
	addi.d	$a0, $fp, 2047
	addi.d	$s3, $a0, 1953
.Ltmp150:                               # EH_LABEL
	ori	$a2, $zero, 18
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.16:                               # %.noexc98
.Ltmp152:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.17:
	addi.d	$a0, $s0, 2047
	addi.d	$s3, $a0, 1953
.Ltmp154:                               # EH_LABEL
	ori	$a2, $zero, 18
	move	$a0, $s0
	move	$a1, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
# %bb.18:                               # %.noexc101
.Ltmp156:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.19:                               # %_ZSt4sortIPjEvT_S1_.exit103
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB1_50
# %bb.20:
	ld.d	$a4, $s2, 24
.Ltmp159:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp160:                               # EH_LABEL
# %bb.21:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB1_52
# %bb.22:
	ld.d	$a4, $s1, 24
.Ltmp161:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp162:                               # EH_LABEL
# %bb.23:
	bne	$s3, $a0, .LBB1_54
# %bb.24:                               # %.preheader197.preheader
	ori	$a1, $zero, 255
	ori	$a2, $zero, 4000
	move	$a0, $fp
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
	beqz	$a0, .LBB1_55
# %bb.25:
	ld.d	$a4, $s2, 24
.Ltmp165:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp166:                               # EH_LABEL
# %bb.26:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB1_57
# %bb.27:
	ld.d	$a4, $s1, 24
.Ltmp167:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp168:                               # EH_LABEL
# %bb.28:
	bne	$s3, $a0, .LBB1_59
# %bb.29:                               # %.preheader196.preheader
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
	beqz	$a0, .LBB1_60
# %bb.30:
	ld.d	$a4, $s2, 24
.Ltmp171:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp172:                               # EH_LABEL
# %bb.31:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB1_62
# %bb.32:
	ld.d	$a4, $s1, 24
.Ltmp173:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp174:                               # EH_LABEL
# %bb.33:
	bne	$s3, $a0, .LBB1_64
# %bb.34:                               # %.preheader195.preheader
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
	beqz	$a0, .LBB1_65
# %bb.35:
	ld.d	$a4, $s2, 24
.Ltmp177:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp178:                               # EH_LABEL
# %bb.36:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB1_67
# %bb.37:
	ld.d	$a4, $s1, 24
.Ltmp179:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp180:                               # EH_LABEL
# %bb.38:
	bne	$s3, $a0, .LBB1_69
# %bb.39:                               # %.preheader.preheader
	ori	$a2, $zero, 4000
	move	$a0, $fp
	move	$a1, $zero
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
	beqz	$a0, .LBB1_70
# %bb.40:
	ld.d	$a4, $s2, 24
.Ltmp183:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp184:                               # EH_LABEL
# %bb.41:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 24
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 12
	beqz	$a0, .LBB1_72
# %bb.42:
	ld.d	$a4, $s1, 24
.Ltmp185:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp186:                               # EH_LABEL
# %bb.43:
	bne	$s2, $a0, .LBB1_74
# %bb.44:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit147
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
.LBB1_45:
.Ltmp222:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.46:                               # %.noexc91
.LBB1_47:
.Ltmp219:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.48:                               # %.noexc94
.LBB1_49:
.Ltmp148:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
	b	.LBB1_75
.LBB1_50:
.Ltmp216:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
# %bb.51:                               # %.noexc105
.LBB1_52:
.Ltmp213:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.53:                               # %.noexc109
.LBB1_54:
.Ltmp163:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
	b	.LBB1_75
.LBB1_55:
.Ltmp210:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.56:                               # %.noexc113
.LBB1_57:
.Ltmp207:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp208:                               # EH_LABEL
# %bb.58:                               # %.noexc117
.LBB1_59:
.Ltmp169:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
	b	.LBB1_75
.LBB1_60:
.Ltmp204:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.61:                               # %.noexc121
.LBB1_62:
.Ltmp201:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.63:                               # %.noexc125
.LBB1_64:
.Ltmp175:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
	b	.LBB1_75
.LBB1_65:
.Ltmp198:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.66:                               # %.noexc129
.LBB1_67:
.Ltmp195:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.68:                               # %.noexc133
.LBB1_69:
.Ltmp181:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
	b	.LBB1_75
.LBB1_70:
.Ltmp192:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.71:                               # %.noexc137
.LBB1_72:
.Ltmp189:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.73:                               # %.noexc141
.LBB1_74:
.Ltmp187:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp188:                               # EH_LABEL
.LBB1_75:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_76:
.Ltmp137:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_77:
.Ltmp194:                               # EH_LABEL
	b	.LBB1_92
.LBB1_78:
.Ltmp200:                               # EH_LABEL
	b	.LBB1_92
.LBB1_79:
.Ltmp206:                               # EH_LABEL
	b	.LBB1_92
.LBB1_80:
.Ltmp212:                               # EH_LABEL
	b	.LBB1_92
.LBB1_81:
.Ltmp218:                               # EH_LABEL
	b	.LBB1_92
.LBB1_82:
.Ltmp224:                               # EH_LABEL
	b	.LBB1_92
.LBB1_83:
.Ltmp191:                               # EH_LABEL
	b	.LBB1_92
.LBB1_84:
.Ltmp197:                               # EH_LABEL
	b	.LBB1_92
.LBB1_85:
.Ltmp203:                               # EH_LABEL
	b	.LBB1_92
.LBB1_86:
.Ltmp209:                               # EH_LABEL
	b	.LBB1_92
.LBB1_87:
.Ltmp215:                               # EH_LABEL
	b	.LBB1_92
.LBB1_88:
.Ltmp221:                               # EH_LABEL
	b	.LBB1_92
.LBB1_89:                               # %.loopexit.split-lp.loopexit.split-lp
.Ltmp158:                               # EH_LABEL
	b	.LBB1_92
.LBB1_90:                               # %.loopexit
.Ltmp143:                               # EH_LABEL
	b	.LBB1_92
.LBB1_91:                               # %.loopexit.split-lp.loopexit
.Ltmp140:                               # EH_LABEL
.LBB1_92:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit150
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
	.size	_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc, .Lfunc_end1-_ZL19checkVectorFunctionIjjEvSt8functionIFT_PT0_S3_jEES5_PKc
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
	.uleb128 .Ltmp135-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp135
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin1         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin1         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin1         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp224-.Lfunc_begin1         #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp221-.Lfunc_begin1         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp157-.Ltmp150              #   Call between .Ltmp150 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp218-.Lfunc_begin1         #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp215-.Lfunc_begin1         #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp165-.Ltmp162              #   Call between .Ltmp162 and .Ltmp165
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp212-.Lfunc_begin1         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp209-.Lfunc_begin1         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp171-.Ltmp168              #   Call between .Ltmp168 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp206-.Lfunc_begin1         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp203-.Lfunc_begin1         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp177-.Ltmp174              #   Call between .Ltmp174 and .Ltmp177
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp200-.Lfunc_begin1         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp197-.Lfunc_begin1         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp183-.Ltmp180              #   Call between .Ltmp180 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp194-.Lfunc_begin1         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp191-.Lfunc_begin1         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp222-.Ltmp186              #   Call between .Ltmp186 and .Ltmp222
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin1         #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp149-.Ltmp219              #   Call between .Ltmp219 and .Ltmp149
	.uleb128 .Ltmp221-.Lfunc_begin1         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin1         #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp164-.Ltmp213              #   Call between .Ltmp213 and .Ltmp164
	.uleb128 .Ltmp215-.Lfunc_begin1         #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin1         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp170-.Ltmp207              #   Call between .Ltmp207 and .Ltmp170
	.uleb128 .Ltmp209-.Lfunc_begin1         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin1         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp176-.Ltmp201              #   Call between .Ltmp201 and .Ltmp176
	.uleb128 .Ltmp203-.Lfunc_begin1         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin1         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp182-.Ltmp195              #   Call between .Ltmp195 and .Ltmp182
	.uleb128 .Ltmp197-.Lfunc_begin1         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin1         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Ltmp188-.Ltmp189              #   Call between .Ltmp189 and .Ltmp188
	.uleb128 .Ltmp191-.Lfunc_begin1         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Lfunc_end1-.Ltmp188           #   Call between .Ltmp188 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
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
	bltu	$a2, $s2, .LBB3_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB3_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB3_3
.LBB3_4:                                # %_ZNSt24uniform_int_distributionIjE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB3_10
.LBB3_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB3_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB3_10
.LBB3_7:                                # %.preheader
	ori	$s3, $zero, 0
	lu32i.d	$s3, -1
	.p2align	4, , 16
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
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
	bltu	$s2, $a0, .LBB3_8
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB3_8
.LBB3_10:                               # %.loopexit
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
.Lfunc_end3:
	.size	_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE, .Lfunc_end3-_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE
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
	.section	.text._ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,@function
_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_: # @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
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
	blt	$s6, $a0, .LBB5_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 4
	addi.w	$a0, $zero, -4
	sub.d	$s3, $a0, $fp
	lu52i.d	$s4, $a0, 2047
	ori	$s5, $zero, 64
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bge	$s5, $s6, .LBB5_35
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
                                        #       Child Loop BB5_17 Depth 3
                                        #       Child Loop BB5_19 Depth 3
	beqz	$s0, .LBB5_22
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	srli.d	$a0, $s6, 1
	and	$a3, $a0, $s4
	ld.w	$a2, $fp, 4
	ldx.w	$a4, $fp, $a3
	ld.w	$a0, $a1, -4
	add.d	$a3, $fp, $a3
	bgeu	$a2, $a4, .LBB5_7
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	bgeu	$a4, $a0, .LBB5_9
# %bb.6:                                #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $fp, 0
	st.w	$a4, $fp, 0
	st.w	$a0, $a3, 0
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_7:                                #   in Loop: Header=BB5_3 Depth=1
	bgeu	$a2, $a0, .LBB5_11
# %bb.8:                                #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $fp, 0
	st.w	$a2, $fp, 0
	st.w	$a0, $fp, 4
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a3, $fp, 0
	bgeu	$a2, $a0, .LBB5_13
# %bb.10:                               #   in Loop: Header=BB5_3 Depth=1
	st.w	$a0, $fp, 0
	st.w	$a3, $a1, -4
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_11:                               #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a2, $fp, 0
	bgeu	$a4, $a0, .LBB5_14
# %bb.12:                               #   in Loop: Header=BB5_3 Depth=1
	st.w	$a0, $fp, 0
	st.w	$a2, $a1, -4
	b	.LBB5_15
.LBB5_13:                               #   in Loop: Header=BB5_3 Depth=1
	st.w	$a2, $fp, 0
	st.w	$a3, $fp, 4
	b	.LBB5_15
.LBB5_14:                               #   in Loop: Header=BB5_3 Depth=1
	st.w	$a4, $fp, 0
	st.w	$a2, $a3, 0
	.p2align	4, , 16
.LBB5_15:                               # %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB5_16:                               # %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
                                        #       Child Loop BB5_19 Depth 3
	ld.w	$a3, $fp, 0
	add.d	$s6, $s3, $a0
	.p2align	4, , 16
.LBB5_17:                               #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$s6, $s6, 4
	bltu	$a4, $a3, .LBB5_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB5_16 Depth=2
	addi.d	$s1, $a0, -4
	.p2align	4, , 16
.LBB5_19:                               # %.preheader.i.i
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a2, -4
	addi.d	$a2, $a2, -4
	bltu	$a3, $a5, .LBB5_19
# %bb.20:                               #   in Loop: Header=BB5_16 Depth=2
	bgeu	$s1, $a2, .LBB5_2
# %bb.21:                               #   in Loop: Header=BB5_16 Depth=2
	st.w	$a5, $s1, 0
	st.w	$a4, $a2, 0
	b	.LBB5_16
.LBB5_22:
	st.b	$zero, $sp, 23
	addi.d	$a2, $sp, 23
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	b	.LBB5_25
	.p2align	4, , 16
.LBB5_23:                               #   in Loop: Header=BB5_25 Depth=1
	move	$a5, $zero
.LBB5_24:                               # %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
                                        #   in Loop: Header=BB5_25 Depth=1
	slli.d	$a5, $a5, 2
	stx.w	$a3, $fp, $a5
	bge	$a2, $a4, .LBB5_35
.LBB5_25:                               # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
                                        #     Child Loop BB5_33 Depth 2
	move	$a5, $s0
	ld.w	$a3, $s0, -4
	ld.w	$a7, $fp, 0
	addi.d	$s0, $s0, -4
	sub.d	$a4, $s0, $fp
	srai.d	$a6, $a4, 2
	st.w	$a7, $a5, -4
	blt	$a6, $a0, .LBB5_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB5_25 Depth=1
	move	$a7, $zero
	addi.d	$a5, $a6, -1
	srli.d	$t0, $a5, 63
	add.d	$a5, $a5, $t0
	srai.d	$t0, $a5, 1
	.p2align	4, , 16
.LBB5_27:                               # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB5_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a5, $a7, 1
	addi.d	$t1, $a5, 2
	slli.d	$t2, $t1, 2
	alsl.d	$t3, $a7, $fp, 3
	ldx.w	$t2, $fp, $t2
	ld.w	$t3, $t3, 4
	sltu	$t2, $t2, $t3
	addi.d	$a5, $a5, 1
	masknez	$t1, $t1, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t1
	slli.d	$t1, $a5, 2
	ldx.w	$t1, $fp, $t1
	slli.d	$a7, $a7, 2
	stx.w	$t1, $fp, $a7
	move	$a7, $a5
	blt	$a5, $t0, .LBB5_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB5_25 Depth=1
	andi	$a7, $a4, 4
	beqz	$a7, .LBB5_30
	b	.LBB5_32
	.p2align	4, , 16
.LBB5_29:                               #   in Loop: Header=BB5_25 Depth=1
	move	$a5, $zero
	andi	$a7, $a4, 4
	bnez	$a7, .LBB5_32
.LBB5_30:                               #   in Loop: Header=BB5_25 Depth=1
	addi.d	$a6, $a6, -2
	srai.d	$a6, $a6, 1
	bne	$a5, $a6, .LBB5_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB5_25 Depth=1
	slli.d	$a6, $a5, 1
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $fp, $a7
	slli.d	$a5, $a5, 2
	stx.w	$a7, $fp, $a5
	move	$a5, $a6
	b	.LBB5_33
	.p2align	4, , 16
.LBB5_32:                               #   in Loop: Header=BB5_25 Depth=1
	beqz	$a5, .LBB5_23
	.p2align	4, , 16
.LBB5_33:                               # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB5_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $a5, -1
	srli.d	$a7, $a6, 1
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $fp, $t0
	bgeu	$t0, $a3, .LBB5_24
# %bb.34:                               #   in Loop: Header=BB5_33 Depth=2
	slli.d	$a5, $a5, 2
	stx.w	$t0, $fp, $a5
	move	$a5, $a7
	bltu	$a1, $a6, .LBB5_33
	b	.LBB5_23
.LBB5_35:                               # %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit
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
	.size	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, .Lfunc_end5-_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ # -- Begin function _ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,@function
_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_: # @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
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
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
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
.LBB6_7:                                # %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB6_9 Depth=1
	move	$a0, $s0
.LBB6_8:                                # %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB6_9 Depth=1
	addi.d	$a2, $s3, 4
	st.w	$s4, $a0, 0
	beq	$a2, $fp, .LBB6_25
.LBB6_9:                                # %.lr.ph.i17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_12 Depth 2
	move	$a1, $s3
	ld.w	$s4, $s3, 4
	ld.w	$a3, $s0, 0
	move	$s3, $a2
	bltu	$s4, $a3, .LBB6_5
# %bb.10:                               #   in Loop: Header=BB6_9 Depth=1
	ld.w	$a1, $a1, 0
	move	$a0, $s3
	bgeu	$s4, $a1, .LBB6_8
# %bb.11:                               # %.lr.ph.i.i24.preheader
                                        #   in Loop: Header=BB6_9 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB6_12:                               # %.lr.ph.i.i24
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $a0, 0
	ld.w	$a1, $a0, -8
	addi.d	$a0, $a0, -4
	bltu	$s4, $a1, .LBB6_12
	b	.LBB6_8
.LBB6_13:                               #   in Loop: Header=BB6_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB6_8
# %bb.14:                               #   in Loop: Header=BB6_9 Depth=1
	st.w	$a3, $a1, 4
	b	.LBB6_7
.LBB6_15:                               #   in Loop: Header=BB6_18 Depth=1
	st.w	$a1, $a0, 4
	.p2align	4, , 16
.LBB6_16:                               # %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB6_18 Depth=1
	move	$a0, $s0
.LBB6_17:                               # %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB6_18 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$s2, $s2, 4
	addi.d	$s5, $s5, 4
	beq	$s2, $s4, .LBB6_24
.LBB6_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_23 Depth 2
	ldx.w	$s7, $s0, $s2
	ld.w	$a1, $s0, 0
	move	$a0, $s6
	add.d	$s6, $s0, $s2
	bgeu	$s7, $a1, .LBB6_21
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
	ld.w	$a1, $a0, 0
	move	$a0, $s6
	bgeu	$s7, $a1, .LBB6_17
# %bb.22:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB6_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_23:                               # %.lr.ph.i.i
                                        #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $a0, 0
	ld.w	$a1, $a0, -8
	addi.d	$a0, $a0, -4
	bltu	$s7, $a1, .LBB6_23
	b	.LBB6_17
.LBB6_24:                               # %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	addi.d	$a0, $s0, 64
	bne	$a0, $fp, .LBB6_27
.LBB6_25:                               # %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
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
.LBB6_26:                               # %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB6_27 Depth=1
	addi.d	$a0, $a0, 4
	st.w	$a1, $a2, 0
	beq	$a0, $fp, .LBB6_25
.LBB6_27:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_29 Depth 2
	ld.w	$a1, $a0, 0
	ld.w	$a3, $a0, -4
	move	$a2, $a0
	bgeu	$a1, $a3, .LBB6_26
# %bb.28:                               # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB6_27 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_29:                               # %.lr.ph.i.i12
                                        #   Parent Loop BB6_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a2, 0
	ld.w	$a3, $a2, -8
	addi.d	$a2, $a2, -4
	bltu	$a1, $a3, .LBB6_29
	b	.LBB6_26
.Lfunc_end6:
	.size	_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .Lfunc_end6-_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 2
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB7_2
.LBB7_1:                                # %.loopexit
	ret
.LBB7_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 4
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB7_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 2
	alsl.d	$a5, $a2, $a0, 2
	move	$a7, $a2
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_4:                                #   in Loop: Header=BB7_6 Depth=1
	move	$t1, $t0
.LBB7_5:                                # %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
                                        #   in Loop: Header=BB7_6 Depth=1
	slli.d	$t0, $t1, 2
	stx.w	$a7, $a0, $t0
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB7_1
.LBB7_6:                                # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a0, $a7
	move	$t0, $a6
	bge	$a6, $a1, .LBB7_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$t1, $a6
	.p2align	4, , 16
.LBB7_8:                                # %.lr.ph.i
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $t1, 1
	addi.d	$t2, $t0, 2
	slli.d	$t3, $t2, 2
	alsl.d	$t4, $t1, $a0, 3
	ldx.w	$t3, $a0, $t3
	ld.w	$t4, $t4, 4
	sltu	$t3, $t3, $t4
	addi.d	$t0, $t0, 1
	masknez	$t2, $t2, $t3
	maskeqz	$t0, $t0, $t3
	or	$t0, $t0, $t2
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $a0, $t2
	slli.d	$t1, $t1, 2
	stx.w	$t2, $a0, $t1
	move	$t1, $t0
	blt	$t0, $a1, .LBB7_8
.LBB7_9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB7_6 Depth=1
	bne	$t0, $a2, .LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_6 Depth=1
	ld.w	$t0, $a4, 0
	st.w	$t0, $a5, 0
	move	$t0, $a3
.LBB7_11:                               #   in Loop: Header=BB7_6 Depth=1
	bge	$a6, $t0, .LBB7_4
	.p2align	4, , 16
.LBB7_12:                               # %.lr.ph.i.i
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a0, $t2
	bgeu	$t2, $a7, .LBB7_4
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=2
	slli.d	$t0, $t0, 2
	stx.w	$t2, $a0, $t0
	move	$t0, $t1
	blt	$a6, $t1, .LBB7_12
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_14:                               #   in Loop: Header=BB7_16 Depth=1
	move	$a5, $a4
.LBB7_15:                               # %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
                                        #   in Loop: Header=BB7_16 Depth=1
	slli.d	$a4, $a5, 2
	stx.w	$a2, $a0, $a4
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB7_1
.LBB7_16:                               # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
                                        #     Child Loop BB7_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	move	$a5, $a3
	bge	$a3, $a1, .LBB7_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB7_16 Depth=1
	move	$a4, $a3
	.p2align	4, , 16
.LBB7_18:                               # %.lr.ph.i.us
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a5, $a4
	slli.d	$a4, $a4, 1
	addi.d	$a6, $a4, 2
	slli.d	$a7, $a6, 2
	alsl.d	$t0, $a5, $a0, 3
	ldx.w	$a7, $a0, $a7
	ld.w	$t0, $t0, 4
	sltu	$a7, $a7, $t0
	addi.d	$a4, $a4, 1
	masknez	$a6, $a6, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $a6
	slli.d	$a6, $a4, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$a5, $a5, 2
	stx.w	$a6, $a0, $a5
	blt	$a4, $a1, .LBB7_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB7_16 Depth=1
	bge	$a3, $a4, .LBB7_14
	.p2align	4, , 16
.LBB7_20:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 63
	add.d	$a5, $a5, $a6
	srai.d	$a5, $a5, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	bgeu	$a6, $a2, .LBB7_14
# %bb.21:                               #   in Loop: Header=BB7_20 Depth=2
	slli.d	$a4, $a4, 2
	stx.w	$a6, $a0, $a4
	move	$a4, $a5
	blt	$a3, $a5, .LBB7_20
	b	.LBB7_15
.Lfunc_end7:
	.size	_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end7-_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB8_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a0, $zero
	addi.w	$a5, $zero, -1
	.p2align	4, , 16
.LBB8_2:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB8_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_0JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB8_4:
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end8-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB9_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB9_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB9_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_0)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_0)
.LBB9_4:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end9-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB10_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a0, $zero
	addi.w	$a5, $zero, -1
	.p2align	4, , 16
.LBB10_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB10_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_1JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB10_4:
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end10-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB11_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB11_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB11_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_1)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_1)
.LBB11_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end11:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end11-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a5, $a3, 0
	ori	$a0, $zero, 2
	bgeu	$a5, $a0, .LBB12_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB12_2:                               # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	move	$a4, $zero
	move	$a0, $zero
	bstrpick.d	$a5, $a5, 31, 1
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB12_3:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a1, 0
	ld.w	$t0, $a2, 0
	add.w	$a7, $t0, $a7
	sltu	$t0, $a7, $a6
	masknez	$a0, $a0, $t0
	maskeqz	$t1, $a3, $t0
	or	$a0, $t1, $a0
	maskeqz	$a7, $a7, $t0
	masknez	$a6, $a6, $t0
	or	$a6, $a7, $a6
	addi.d	$a4, $a4, 2
	addi.w	$a3, $a3, 2
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bltu	$a4, $a5, .LBB12_3
# %bb.4:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_2JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end12:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end12-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB13_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB13_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB13_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_2)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_2)
.LBB13_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end13-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a5, $a3, 0
	ori	$a0, $zero, 2
	bgeu	$a5, $a0, .LBB14_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB14_2:                               # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	move	$a4, $zero
	move	$a0, $zero
	bstrpick.d	$a5, $a5, 31, 1
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB14_3:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a1, 0
	ld.w	$t0, $a2, 0
	add.w	$a7, $t0, $a7
	sltu	$t0, $a7, $a6
	masknez	$a0, $a0, $t0
	maskeqz	$t1, $a3, $t0
	or	$a0, $t1, $a0
	maskeqz	$a7, $a7, $t0
	masknez	$a6, $a6, $t0
	or	$a6, $a7, $a6
	addi.d	$a4, $a4, 2
	addi.w	$a3, $a3, 2
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bltu	$a4, $a5, .LBB14_3
# %bb.4:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_3JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end14:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end14-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB15_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB15_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB15_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_3)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_3)
.LBB15_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end15:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end15-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB16_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	ori	$a0, $zero, 2
	addi.w	$a5, $zero, -1
	.p2align	4, , 16
.LBB16_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB16_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_4JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB16_4:
	ori	$a0, $zero, 2
	ret
.Lfunc_end16:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end16-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB17_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB17_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB17_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB17_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end17:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end17-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB18_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	ori	$a0, $zero, 2
	addi.w	$a5, $zero, -1
	.p2align	4, , 16
.LBB18_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB18_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_5JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB18_4:
	ori	$a0, $zero, 2
	ret
.Lfunc_end18:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end18-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB19_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB19_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB19_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB19_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end19:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end19-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB20_4
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a0, $zero
	addi.w	$a5, $zero, -1
	.p2align	4, , 16
.LBB20_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB20_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_6JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB20_4:
	move	$a0, $zero
	ret
.Lfunc_end20:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end20-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB21_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB21_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB21_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_6)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_6)
.LBB21_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end21:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end21-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB22_4
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a0, $zero
	addi.w	$a5, $zero, -1
	.p2align	4, , 16
.LBB22_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB22_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_7JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB22_4:
	move	$a0, $zero
	ret
.Lfunc_end22:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end22-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB23_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB23_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB23_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_7)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_7)
.LBB23_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end23:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end23-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB24_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a4, $a1, 0
	move	$a0, $zero
	bstrpick.d	$a5, $a3, 31, 0
	alsl.d	$a1, $a5, $a2, 2
	alsl.d	$a2, $a5, $a4, 2
	addi.w	$a4, $zero, -1
	.p2align	4, , 16
.LBB24_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a1, 0
	add.w	$a5, $a6, $a5
	sltu	$a6, $a5, $a4
	masknez	$a0, $a0, $a6
	maskeqz	$a7, $a3, $a6
	or	$a0, $a7, $a0
	maskeqz	$a5, $a5, $a6
	masknez	$a4, $a4, $a6
	or	$a4, $a5, $a4
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bnez	$a3, .LBB24_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_8JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB24_4:
	move	$a0, $zero
	ret
.Lfunc_end24:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end24-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB25_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB25_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB25_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB25_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end25:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end25-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB26_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a4, $a1, 0
	move	$a0, $zero
	bstrpick.d	$a5, $a3, 31, 0
	alsl.d	$a1, $a5, $a2, 2
	alsl.d	$a2, $a5, $a4, 2
	addi.w	$a4, $zero, -1
	.p2align	4, , 16
.LBB26_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a1, 0
	add.w	$a5, $a6, $a5
	sltu	$a6, $a5, $a4
	masknez	$a0, $a0, $a6
	maskeqz	$a7, $a3, $a6
	or	$a0, $a7, $a0
	maskeqz	$a5, $a5, $a6
	masknez	$a4, $a4, $a6
	or	$a4, $a5, $a4
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bnez	$a3, .LBB26_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE3$_9JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB26_4:
	move	$a0, $zero
	ret
.Lfunc_end26:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end26-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB27_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB27_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB27_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB27_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end27:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end27-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB28_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.w	$a4, $zero, -1
	move	$a5, $zero
	move	$a0, $a4
	.p2align	4, , 16
.LBB28_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a4
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a5, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a4, $a4, $a7
	or	$a4, $a6, $a4
	addi.d	$a3, $a3, -1
	addi.w	$a5, $a5, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB28_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE4$_10JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB28_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end28:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end28-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB29_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB29_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB29_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_10)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_10)
.LBB29_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end29:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end29-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	beqz	$a3, .LBB30_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.w	$a4, $zero, -1
	move	$a5, $zero
	move	$a0, $a4
	.p2align	4, , 16
.LBB30_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a4
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a5, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a4, $a4, $a7
	or	$a4, $a6, $a4
	addi.d	$a3, $a3, -1
	addi.w	$a5, $a5, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB30_2
# %bb.3:                                # %"_ZSt10__invoke_rIjRZ4mainE4$_11JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB30_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end30:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end30-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB31_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB31_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB31_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_11)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_11)
.LBB31_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end31:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end31-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 3
	bltu	$a3, $a4, .LBB32_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	addi.w	$a5, $zero, -1
	ori	$a4, $zero, 3
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB32_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB32_2
.LBB32_3:                               # %"_ZSt10__invoke_rIjRZ4mainE4$_12JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end32:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end32-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB33_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB33_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB33_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB33_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end33:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end33-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 3
	bltu	$a3, $a4, .LBB34_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	addi.w	$a5, $zero, -1
	ori	$a4, $zero, 3
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB34_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB34_2
.LBB34_3:                               # %"_ZSt10__invoke_rIjRZ4mainE4$_13JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end34:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end34-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB35_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB35_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB35_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB35_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end35:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end35-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 2
	bltu	$a3, $a4, .LBB36_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 2
	addi.w	$a5, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB36_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB36_2
.LBB36_3:                               # %"_ZSt10__invoke_rIjRZ4mainE4$_14JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end36:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end36-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB37_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB37_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB37_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_14)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_14)
.LBB37_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end37:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end37-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 2
	bltu	$a3, $a4, .LBB38_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 2
	addi.w	$a5, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB38_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB38_2
.LBB38_3:                               # %"_ZSt10__invoke_rIjRZ4mainE4$_15JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end38:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end38-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB39_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB39_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB39_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_15)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_15)
.LBB39_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end39:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end39-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	ori	$a0, $zero, 4
	bltu	$a3, $a0, .LBB40_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 4
	addi.w	$a5, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB40_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB40_2
.LBB40_3:                               # %"_ZSt10__invoke_rIjRZ4mainE4$_16JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end40:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end40-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB41_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB41_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB41_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_16)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_16)
.LBB41_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end41:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end41-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	ori	$a0, $zero, 4
	bltu	$a3, $a0, .LBB42_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 4
	addi.w	$a5, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB42_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a2, 0
	add.w	$a6, $a7, $a6
	sltu	$a7, $a6, $a5
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $a4, $a7
	or	$a0, $t0, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a6, $a5
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB42_2
.LBB42_3:                               # %"_ZSt10__invoke_rIjRZ4mainE4$_17JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end42:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end42-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB43_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB43_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB43_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_17)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_17)
.LBB43_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end43:
	.size	_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end43-_ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_index_select.cpp
	.type	_GLOBAL__sub_I_index_select.cpp,@function
_GLOBAL__sub_I_index_select.cpp:        # @_GLOBAL__sub_I_index_select.cpp
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
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a5, .LBB44_1
# %bb.2:                                # %__cxx_global_var_init.exit
	ori	$a1, $zero, 624
	stptr.d	$a1, $a0, 4992
	ret
.Lfunc_end44:
	.size	_GLOBAL__sub_I_index_select.cpp, .Lfunc_end44-_GLOBAL__sub_I_index_select.cpp
                                        # -- End function
	.type	_ZL3rng,@object                 # @_ZL3rng
	.local	_ZL3rng
	.comm	_ZL3rng,5000,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"min_index_select_u32_u32_start_0"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"min_index_select_u32_u32_start_0_inc_2"
	.size	.L.str.1, 39

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"min_index_select_u32_u32_start_2"
	.size	.L.str.2, 33

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"min_index_select_u32_u32_with_trunc"
	.size	.L.str.3, 36

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"min_index_select_u32_u32_induction_decrement"
	.size	.L.str.4, 45

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"min_index_select_u32_u32_start_0_min_idx_neg1"
	.size	.L.str.5, 46

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"min_index_select_u32_u32_start_3_min_idx_3"
	.size	.L.str.6, 43

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"min_index_select_u32_u32_start_3_min_idx_2"
	.size	.L.str.7, 43

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"min_index_select_u32_u32_start_3_min_idx_4"
	.size	.L.str.8, 43

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Checking "
	.size	.L.str.9, 10

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\n"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Miscompare\n"
	.size	.L.str.11, 12

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

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_index_select.cpp
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
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFjPjS0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _GLOBAL__sub_I_index_select.cpp
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
