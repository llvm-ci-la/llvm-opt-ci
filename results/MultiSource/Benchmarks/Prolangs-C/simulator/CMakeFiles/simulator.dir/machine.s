	.file	"machine.c"
	.text
	.globl	CALL_FUNCTION1                  # -- Begin function CALL_FUNCTION1
	.p2align	5
	.type	CALL_FUNCTION1,@function
CALL_FUNCTION1:                         # @CALL_FUNCTION1
# %bb.0:
	addi.d	$a0, $a0, -1
	ori	$a2, $zero, 43
	bltu	$a2, $a0, .LBB0_46
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB0_2:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(LDX_P)
	jr	$t8
.LBB0_3:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(STSW_P)
	jr	$t8
.LBB0_4:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(CLEAR_P)
	jr	$t8
.LBB0_5:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(RMO_P)
	jr	$t8
.LBB0_6:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(SVC_P)
	jr	$t8
.LBB0_7:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(STT_P)
	jr	$t8
.LBB0_8:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(SHIFTR_P)
	jr	$t8
.LBB0_9:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(OR_P)
	jr	$t8
.LBB0_10:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(J_P)
	jr	$t8
.LBB0_11:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(SHIFTL_P)
	jr	$t8
.LBB0_12:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(JEQ_P)
	jr	$t8
.LBB0_13:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(STL_P)
	jr	$t8
.LBB0_14:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(RD_P)
	jr	$t8
.LBB0_15:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(JGT_P)
	jr	$t8
.LBB0_16:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(COMP_P)
	jr	$t8
.LBB0_17:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(STB_P)
	jr	$t8
.LBB0_18:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(LDT_P)
	jr	$t8
.LBB0_19:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(STA_P)
	jr	$t8
.LBB0_20:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(AND_P)
	jr	$t8
.LBB0_21:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(STX_P)
	jr	$t8
.LBB0_22:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(MUL_P)
	jr	$t8
.LBB0_23:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(LDL_P)
	jr	$t8
.LBB0_24:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(DIVR_P)
	jr	$t8
.LBB0_25:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(JSUB_P)
	jr	$t8
.LBB0_26:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(WD_P)
	jr	$t8
.LBB0_27:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(STCH_P)
	jr	$t8
.LBB0_28:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(ADD_P)
	jr	$t8
.LBB0_29:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(LDA_P)
	jr	$t8
.LBB0_30:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(JLT_P)
	jr	$t8
.LBB0_31:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(SUB_P)
	jr	$t8
.LBB0_32:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(RSUB_P)
	jr	$t8
.LBB0_33:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(TIX_P)
	jr	$t8
.LBB0_34:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(DIV_P)
	jr	$t8
.LBB0_35:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(MULR_P)
	jr	$t8
.LBB0_36:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(COMPR_P)
	jr	$t8
.LBB0_37:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(LDB_P)
	jr	$t8
.LBB0_38:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(STI_P)
	jr	$t8
.LBB0_39:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(LDCH_P)
	jr	$t8
.LBB0_40:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(TD_P)
	jr	$t8
.LBB0_41:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(LDS_P)
	jr	$t8
.LBB0_42:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(ADDR_P)
	jr	$t8
.LBB0_43:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(SUBR_P)
	jr	$t8
.LBB0_44:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(TIXR_P)
	jr	$t8
.LBB0_45:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(STS_P)
	jr	$t8
.LBB0_46:
	ret
.Lfunc_end0:
	.size	CALL_FUNCTION1, .Lfunc_end0-CALL_FUNCTION1
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
	.word	.LBB0_16-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_12-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_30-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_25-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_39-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_37-.LJTI0_0
	.word	.LBB0_41-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_7-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_43-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_24-.LJTI0_0
	.word	.LBB0_36-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
	.word	.LBB0_8-.LJTI0_0
	.word	.LBB0_5-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_4-.LJTI0_0
	.word	.LBB0_44-.LJTI0_0
	.word	.LBB0_38-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_26-.LJTI0_0
	.word	.LBB0_40-.LJTI0_0
	.word	.LBB0_3-.LJTI0_0
                                        # -- End function
	.text
	.globl	RESET_DEVICES                   # -- Begin function RESET_DEVICES
	.p2align	5
	.type	RESET_DEVICES,@function
RESET_DEVICES:                          # @RESET_DEVICES
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(DEVICE)
	addi.d	$fp, $a0, %pc_lo12(DEVICE)
	st.w	$zero, $fp, 0
	st.d	$zero, $fp, 8
	stptr.w	$zero, $fp, 2048
	stptr.d	$zero, $fp, 2056
	lu12i.w	$s0, -1
	ori	$s1, $zero, 1
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi.d	$s0, $s0, 16
	beqz	$s0, .LBB1_6
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	add.d	$s2, $fp, $s0
	ldptr.w	$a0, $s2, 4096
	bne	$a0, $s1, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	stptr.w	$zero, $s2, 4096
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	ldptr.d	$a0, $s2, 4104
	beqz	$a0, .LBB1_1
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $s2, 4104
	b	.LBB1_1
.LBB1_6:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	RESET_DEVICES, .Lfunc_end1-RESET_DEVICES
                                        # -- End function
	.globl	PRINT_REG_NAME                  # -- Begin function PRINT_REG_NAME
	.p2align	5
	.type	PRINT_REG_NAME,@function
PRINT_REG_NAME:                         # @PRINT_REG_NAME
# %bb.0:
	move	$a3, $a2
	move	$a4, $a0
	alsl.d	$a0, $a1, $a1, 1
	pcalau12i	$a1, %pc_hi20(REG_NAMES)
	addi.d	$a1, $a1, %pc_lo12(REG_NAMES)
	add.d	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	move	$a1, $a4
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end2:
	.size	PRINT_REG_NAME, .Lfunc_end2-PRINT_REG_NAME
                                        # -- End function
	.globl	INSTR_CODE                      # -- Begin function INSTR_CODE
	.p2align	5
	.type	INSTR_CODE,@function
INSTR_CODE:                             # @INSTR_CODE
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(MEMORY)
	ld.d	$a1, $a1, %pc_lo12(MEMORY)
	ldx.b	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	INSTR_CODE, .Lfunc_end3-INSTR_CODE
                                        # -- End function
	.globl	BYTES_TO_BITS                   # -- Begin function BYTES_TO_BITS
	.p2align	5
	.type	BYTES_TO_BITS,@function
BYTES_TO_BITS:                          # @BYTES_TO_BITS
# %bb.0:
	blez	$a1, .LBB4_3
# %bb.1:                                # %.lr.ph.preheader
	slli.w	$a3, $a1, 3
	ori	$a1, $zero, 1
	slt	$a4, $a1, $a3
	masknez	$a1, $a1, $a4
	maskeqz	$a4, $a3, $a4
	or	$a1, $a4, $a1
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a0, 31, 31
	add.d	$a3, $a0, $a3
	addi.w	$a4, $a3, 0
	bstrpick.d	$a3, $a3, 31, 1
	slli.d	$a3, $a3, 1
	sub.d	$a0, $a0, $a3
	srai.d	$a3, $a4, 1
	st.w	$a0, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	move	$a0, $a3
	bnez	$a1, .LBB4_2
.LBB4_3:                                # %._crit_edge
	ret
.Lfunc_end4:
	.size	BYTES_TO_BITS, .Lfunc_end4-BYTES_TO_BITS
                                        # -- End function
	.globl	BITS_TO_BYTE                    # -- Begin function BITS_TO_BYTE
	.p2align	5
	.type	BITS_TO_BYTE,@function
BITS_TO_BYTE:                           # @BITS_TO_BYTE
# %bb.0:
	move	$a2, $zero
	blez	$a1, .LBB5_2
	.p2align	4, , 16
.LBB5_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	alsl.w	$a2, $a2, $a3, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB5_1
.LBB5_2:                                # %._crit_edge
	move	$a0, $a2
	ret
.Lfunc_end5:
	.size	BITS_TO_BYTE, .Lfunc_end5-BITS_TO_BYTE
                                        # -- End function
	.globl	SET_CC                          # -- Begin function SET_CC
	.p2align	5
	.type	SET_CC,@function
SET_CC:                                 # @SET_CC
# %bb.0:
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB6_2
# %bb.1:                                # %.lr.ph.i
	addi.d	$sp, $sp, -96
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(REGISTER+36)
	ld.wu	$t5, $a1, %pc_lo12(REGISTER+36)
	addi.w	$a4, $t5, 0
	srli.d	$a2, $t5, 31
	add.d	$a3, $t5, $a2
	bstrpick.d	$a2, $a3, 31, 1
	slli.d	$a2, $a2, 1
	sub.d	$a2, $t5, $a2
	srli.d	$t7, $a4, 31
	bstrpick.d	$a4, $t7, 31, 30
	add.w	$a4, $t5, $a4
	bstrpick.d	$a5, $t7, 31, 29
	add.w	$a5, $t5, $a5
	bstrpick.d	$a6, $t7, 31, 28
	add.w	$a6, $t5, $a6
	bstrpick.d	$a7, $t7, 31, 27
	add.w	$a7, $t5, $a7
	bstrpick.d	$t0, $t7, 31, 26
	add.w	$t0, $t5, $t0
	bstrpick.d	$t1, $t7, 31, 25
	add.w	$t1, $t5, $t1
	bstrpick.d	$t2, $t7, 31, 24
	add.w	$t2, $t5, $t2
	bstrpick.d	$t3, $t7, 31, 23
	add.w	$t3, $t5, $t3
	bstrpick.d	$t4, $t7, 31, 22
	add.w	$t4, $t5, $t4
	bstrpick.d	$t6, $t7, 31, 21
	add.w	$t6, $t5, $t6
	bstrpick.d	$t8, $t7, 31, 20
	add.w	$t8, $t5, $t8
	bstrpick.d	$fp, $t7, 31, 19
	add.w	$fp, $t5, $fp
	bstrpick.d	$s0, $t7, 31, 18
	add.w	$s0, $t5, $s0
	bstrpick.d	$s1, $t7, 31, 17
	add.w	$s1, $t5, $s1
	bstrpick.d	$s2, $t7, 31, 16
	add.w	$s2, $t5, $s2
	srli.d	$s2, $s2, 15
	addi.w	$s3, $zero, -2
	lu32i.d	$s3, 0
	and	$s2, $s2, $s3
	bstrpick.d	$s3, $t7, 31, 14
	add.w	$s3, $t5, $s3
	bstrpick.d	$s4, $t7, 31, 13
	add.w	$s4, $t5, $s4
	bstrpick.d	$s5, $t7, 31, 12
	add.w	$s5, $t5, $s5
	bstrpick.d	$s6, $t7, 31, 11
	add.w	$s6, $t5, $s6
	bstrpick.d	$s7, $t7, 31, 10
	add.w	$s7, $t5, $s7
	bstrpick.d	$s8, $t7, 31, 9
	add.w	$s8, $t5, $s8
	bstrpick.d	$t7, $t7, 31, 8
	add.w	$t5, $t5, $t7
	srai.d	$t7, $s7, 22
	srai.d	$s7, $s8, 23
	srli.d	$t5, $t5, 24
	sub.w	$t5, $zero, $t5
	slli.d	$t5, $t5, 2
	alsl.d	$t5, $s7, $t5, 1
	slli.d	$s7, $s7, 1
	sub.d	$s7, $t7, $s7
	add.d	$t5, $s7, $t5
	srai.d	$s6, $s6, 21
	slli.d	$s6, $s6, 1
	slli.d	$t7, $t7, 2
	sub.d	$t7, $s6, $t7
	alsl.d	$t5, $t5, $t7, 2
	srai.d	$t7, $s5, 20
	sub.d	$s5, $t7, $s6
	add.w	$t5, $s5, $t5
	srai.d	$s3, $s3, 18
	srai.d	$s4, $s4, 19
	slli.d	$s4, $s4, 1
	sub.d	$s3, $s3, $s4
	slli.d	$t7, $t7, 2
	sub.d	$t7, $s4, $t7
	alsl.d	$t5, $t5, $t7, 2
	add.d	$t5, $s3, $t5
	slli.d	$t5, $t5, 3
	slli.d	$a0, $a0, 1
	or	$a0, $t5, $a0
	srai.d	$t5, $s1, 15
	sub.d	$t7, $t5, $s2
	add.w	$a0, $t7, $a0
	srai.d	$t7, $s0, 14
	slli.d	$t7, $t7, 1
	slli.d	$t5, $t5, 2
	sub.d	$t5, $t7, $t5
	alsl.d	$a0, $a0, $t5, 2
	srai.d	$t5, $fp, 13
	sub.d	$t7, $t5, $t7
	add.d	$a0, $t7, $a0
	srai.d	$t7, $t8, 12
	slli.d	$t7, $t7, 1
	slli.d	$t5, $t5, 2
	sub.d	$t5, $t7, $t5
	alsl.d	$a0, $a0, $t5, 2
	srai.d	$t5, $t6, 11
	sub.d	$t6, $t5, $t7
	add.w	$a0, $t6, $a0
	srai.d	$t4, $t4, 10
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 2
	sub.d	$t5, $t4, $t5
	alsl.d	$a0, $a0, $t5, 2
	srai.d	$t3, $t3, 9
	sub.d	$t4, $t3, $t4
	add.d	$a0, $t4, $a0
	srai.d	$t2, $t2, 8
	slli.d	$t2, $t2, 1
	slli.d	$t3, $t3, 2
	sub.d	$t3, $t2, $t3
	alsl.d	$a0, $a0, $t3, 2
	srai.d	$t1, $t1, 7
	sub.d	$t2, $t1, $t2
	add.w	$a0, $t2, $a0
	srai.d	$t0, $t0, 6
	slli.d	$t0, $t0, 1
	slli.d	$t1, $t1, 2
	sub.d	$t1, $t0, $t1
	alsl.d	$a0, $a0, $t1, 2
	srai.d	$a7, $a7, 5
	sub.d	$t0, $a7, $t0
	add.d	$a0, $t0, $a0
	srai.d	$a6, $a6, 4
	slli.d	$a6, $a6, 1
	slli.d	$a7, $a7, 2
	sub.d	$a7, $a6, $a7
	alsl.w	$a0, $a0, $a7, 2
	srai.d	$a5, $a5, 3
	sub.d	$a6, $a5, $a6
	add.d	$a0, $a6, $a0
	srli.d	$a3, $a3, 1
	srai.d	$a4, $a4, 2
	slli.d	$a4, $a4, 1
	sub.d	$a3, $a3, $a4
	slli.d	$a5, $a5, 2
	sub.d	$a4, $a4, $a5
	alsl.d	$a0, $a0, $a4, 2
	add.d	$a0, $a3, $a0
	alsl.d	$a0, $a0, $a2, 1
	st.w	$a0, $a1, %pc_lo12(REGISTER+36)
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB6_2:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end6:
	.size	SET_CC, .Lfunc_end6-SET_CC
                                        # -- End function
	.globl	CC                              # -- Begin function CC
	.p2align	5
	.type	CC,@function
CC:                                     # @CC
# %bb.0:                                # %.lr.ph.i
	pcalau12i	$a0, %pc_hi20(REGISTER+36)
	ld.w	$a0, $a0, %pc_lo12(REGISTER+36)
	srli.d	$a1, $a0, 31
	bstrpick.d	$a2, $a1, 31, 16
	add.w	$a2, $a0, $a2
	srli.d	$a2, $a2, 16
	bstrpick.d	$a1, $a1, 31, 14
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 16
	addi.w	$a1, $zero, -4
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	sub.w	$a0, $a2, $a0
	ret
.Lfunc_end7:
	.size	CC, .Lfunc_end7-CC
                                        # -- End function
	.globl	SUPERVISOR_MODE                 # -- Begin function SUPERVISOR_MODE
	.p2align	5
	.type	SUPERVISOR_MODE,@function
SUPERVISOR_MODE:                        # @SUPERVISOR_MODE
# %bb.0:                                # %.lr.ph.i
	pcalau12i	$a0, %pc_hi20(REGISTER+36)
	ld.w	$a0, $a0, %pc_lo12(REGISTER+36)
	srli.d	$a1, $a0, 31
	bstrpick.d	$a2, $a1, 31, 9
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 23
	bstrpick.d	$a1, $a1, 31, 8
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 24
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a2, $a0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ret
.Lfunc_end8:
	.size	SUPERVISOR_MODE, .Lfunc_end8-SUPERVISOR_MODE
                                        # -- End function
	.globl	DIGIT_TO_CHAR                   # -- Begin function DIGIT_TO_CHAR
	.p2align	5
	.type	DIGIT_TO_CHAR,@function
DIGIT_TO_CHAR:                          # @DIGIT_TO_CHAR
# %bb.0:
	slti	$a1, $a0, 10
	ori	$a2, $zero, 55
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 48
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ext.w.b	$a0, $a0
	ret
.Lfunc_end9:
	.size	DIGIT_TO_CHAR, .Lfunc_end9-DIGIT_TO_CHAR
                                        # -- End function
	.globl	OPEN_DEVICE                     # -- Begin function OPEN_DEVICE
	.p2align	5
	.type	OPEN_DEVICE,@function
OPEN_DEVICE:                            # @OPEN_DEVICE
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(DEVICE)
	addi.d	$a1, $a1, %pc_lo12(DEVICE)
	alsl.d	$fp, $a0, $a1, 4
	ld.d	$a2, $fp, 8
	slli.d	$a3, $a0, 4
	ori	$a4, $zero, 1
	stx.w	$a4, $a1, $a3
	beqz	$a2, .LBB10_2
# %bb.1:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_2:
	lu12i.w	$a2, 6
	ori	$a2, $a2, 1380
	st.h	$a2, $sp, 10
	ori	$a2, $zero, 118
	st.b	$a2, $sp, 12
	ori	$a2, $zero, 128
	st.b	$zero, $sp, 15
	beq	$a0, $a2, .LBB10_5
# %bb.3:
	bnez	$a0, .LBB10_6
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 8
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_5:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	stptr.d	$a0, $a1, 2056
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_6:
	bstrpick.d	$a1, $a0, 62, 59
	add.d	$a1, $a0, $a1
	srli.d	$a2, $a1, 4
	slti	$a3, $a0, 160
	ori	$a4, $zero, 55
	masknez	$a5, $a4, $a3
	ori	$a6, $zero, 48
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a5
	add.d	$a2, $a3, $a2
	st.b	$a2, $sp, 13
	bstrpick.d	$a1, $a1, 31, 4
	slli.d	$a1, $a1, 4
	sub.w	$a1, $a0, $a1
	slti	$a2, $a1, 10
	masknez	$a3, $a4, $a2
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	ori	$a2, $zero, 127
	st.b	$a1, $sp, 14
	blt	$a2, $a0, .LBB10_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	b	.LBB10_9
.LBB10_8:
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a1, $a0, %pc_lo12(.L.str.63)
.LBB10_9:
	addi.d	$a0, $sp, 10
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	OPEN_DEVICE, .Lfunc_end10-OPEN_DEVICE
                                        # -- End function
	.globl	PRINT_ADDRESS                   # -- Begin function PRINT_ADDRESS
	.p2align	5
	.type	PRINT_ADDRESS,@function
PRINT_ADDRESS:                          # @PRINT_ADDRESS
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$a4, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(SYM_TAB)
	ld.d	$a0, $a0, %got_pc_lo12(SYM_TAB)
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB11_3
	.p2align	4, , 16
.LBB11_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, 20
	beq	$a0, $a4, .LBB11_7
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	ld.d	$a2, $a2, 32
	bnez	$a2, .LBB11_1
.LBB11_3:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(TYPE_OUT_MODE)
	ld.bu	$a0, $a0, %pc_lo12(TYPE_OUT_MODE)
	ori	$a1, $zero, 68
	bne	$a0, $a1, .LBB11_5
# %bb.4:
	ori	$a1, $zero, 10
	ori	$a2, $zero, 8
	addi.d	$a3, $sp, 15
	move	$a0, $a4
	pcaddu18i	$ra, %call36(NUM_TO_STR)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	b	.LBB11_16
.LBB11_5:
	ori	$a1, $zero, 16
	ori	$a2, $zero, 6
	addi.d	$a3, $sp, 15
	move	$a0, $a4
	pcaddu18i	$ra, %call36(NUM_TO_STR)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(PRINT_INSTR)
	ld.w	$a0, $a0, %pc_lo12(PRINT_INSTR)
	beqz	$a0, .LBB11_15
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	b	.LBB11_16
.LBB11_7:                               # %.preheader
	ld.bu	$a3, $a2, 7
	ori	$a1, $zero, 32
	ori	$a0, $zero, 7
	bne	$a3, $a1, .LBB11_14
# %bb.8:
	ld.bu	$a3, $a2, 6
	ori	$a0, $zero, 6
	bne	$a3, $a1, .LBB11_14
# %bb.9:
	ld.bu	$a3, $a2, 5
	ori	$a1, $zero, 32
	ori	$a0, $zero, 5
	bne	$a3, $a1, .LBB11_14
# %bb.10:
	ld.bu	$a3, $a2, 4
	ori	$a0, $zero, 4
	bne	$a3, $a1, .LBB11_14
# %bb.11:
	ld.bu	$a3, $a2, 3
	ori	$a1, $zero, 32
	ori	$a0, $zero, 3
	bne	$a3, $a1, .LBB11_14
# %bb.12:
	ld.bu	$a3, $a2, 2
	ori	$a0, $zero, 2
	bne	$a3, $a1, .LBB11_14
# %bb.13:
	ld.bu	$a0, $a2, 1
	addi.d	$a0, $a0, -32
	sltu	$a0, $zero, $a0
.LBB11_14:                              # %.critedge
	add.d	$s1, $a2, $a0
	ld.b	$s2, $s1, 1
	st.b	$zero, $s1, 1
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	st.b	$s2, $s1, 1
	b	.LBB11_17
.LBB11_15:
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
.LBB11_16:
	addi.d	$a2, $sp, 15
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_17:
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end11:
	.size	PRINT_ADDRESS, .Lfunc_end11-PRINT_ADDRESS
                                        # -- End function
	.globl	PRINT_CONSTANT                  # -- Begin function PRINT_CONSTANT
	.p2align	5
	.type	PRINT_CONSTANT,@function
PRINT_CONSTANT:                         # @PRINT_CONSTANT
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(TYPE_OUT_MODE)
	ld.bu	$a3, $a3, %pc_lo12(TYPE_OUT_MODE)
	ori	$a4, $zero, 68
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	bne	$a3, $a4, .LBB12_3
# %bb.1:
	beqz	$s1, .LBB12_5
# %bb.2:
	movgr2fr.w	$fa0, $s1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -279723
	ori	$a0, $a0, 1302
	lu32i.d	$a0, 158641
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a2, $a0, 1
	b	.LBB12_6
.LBB12_3:
	beqz	$s1, .LBB12_7
# %bb.4:
	movgr2fr.w	$fa0, $s1
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4189
	ori	$a0, $a0, 2543
	lu32i.d	$a0, 405058
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a2, $a0, 1
	b	.LBB12_8
.LBB12_5:
	ori	$a2, $zero, 1
.LBB12_6:
	ori	$a1, $zero, 10
	addi.d	$a3, $sp, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(NUM_TO_STR)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	b	.LBB12_9
.LBB12_7:
	ori	$a2, $zero, 1
.LBB12_8:
	ori	$a1, $zero, 16
	addi.d	$a3, $sp, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(NUM_TO_STR)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(PRINT_INSTR)
	ld.w	$a0, $a0, %pc_lo12(PRINT_INSTR)
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.66)
	addi.d	$a2, $a2, %pc_lo12(.L.str.66)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB12_9:
	addi.d	$a2, $sp, 7
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	PRINT_CONSTANT, .Lfunc_end12-PRINT_CONSTANT
                                        # -- End function
	.globl	PRINT_INSTRUCTION               # -- Begin function PRINT_INSTRUCTION
	.p2align	5
	.type	PRINT_INSTRUCTION,@function
PRINT_INSTRUCTION:                      # @PRINT_INSTRUCTION
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	move	$s1, $a0
	pcalau12i	$s8, %pc_hi20(MEMORY)
	ld.d	$a0, $s8, %pc_lo12(MEMORY)
	pcalau12i	$s3, %pc_hi20(PRINT_INSTR)
	ori	$a3, $zero, 1
	st.w	$a3, $s3, %pc_lo12(PRINT_INSTR)
	ldx.b	$a0, $a0, $s1
	move	$fp, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bstrpick.d	$a0, $a0, 62, 61
	add.w	$a0, $s0, $a0
	srai.d	$s4, $a0, 2
	bstrpick.d	$a0, $s1, 31, 20
	pcalau12i	$a1, %pc_hi20(INSTR)
	addi.d	$s6, $a1, %pc_lo12(INSTR)
	beqz	$a0, .LBB13_3
# %bb.1:
	st.w	$zero, $fp, 0
	beqz	$s2, .LBB13_32
# %bb.2:                                # %BYTES_TO_BITS.exit84.thread
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
                                        # implicit-def: $r28
                                        # implicit-def: $r30
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r31
	b	.LBB13_9
.LBB13_3:
	alsl.d	$a0, $s4, $s6, 4
	ld.w	$a0, $a0, 8
	ori	$a1, $zero, 2
	blt	$a1, $a0, .LBB13_5
# %bb.4:
	st.w	$a0, $fp, 0
                                        # implicit-def: $r28
                                        # implicit-def: $r30
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r31
	bnez	$s2, .LBB13_9
	b	.LBB13_32
.LBB13_5:                               # %.lr.ph.i
	ld.d	$a0, $s8, %pc_lo12(MEMORY)
	ldx.b	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	addi.w	$s7, $zero, -2
	lu32i.d	$s7, 0
	and	$a2, $a1, $s7
	sub.w	$a2, $a0, $a2
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a2, $s8, %pc_lo12(MEMORY)
	bstrpick.d	$a3, $a0, 62, 61
	add.w	$a3, $a0, $a3
	srai.d	$a1, $a1, 1
	add.d	$a0, $a2, $s1
	ld.b	$a0, $a0, 1
	srai.d	$a2, $a3, 2
	slli.d	$a2, $a2, 1
	sub.w	$a1, $a1, $a2
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	srai.d	$a2, $a1, 1
	and	$a1, $a1, $s7
	srli.d	$a3, $a0, 31
	bstrpick.d	$a4, $a3, 31, 30
	add.w	$a4, $a0, $a4
	srai.d	$a4, $a4, 2
	slli.d	$a5, $a4, 1
	sub.d	$a2, $a2, $a5
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a3, 31, 29
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 3
	slli.d	$a5, $a2, 1
	sub.d	$a4, $a4, $a5
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a4, $a3, 31, 28
	add.w	$a4, $a0, $a4
	srai.d	$a4, $a4, 4
	slli.d	$a5, $a4, 1
	sub.d	$a2, $a2, $a5
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a3, 31, 27
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a5, $a2, 1
	sub.d	$s5, $a4, $a5
	bstrpick.d	$a4, $a3, 31, 26
	add.w	$a4, $a0, $a4
	srai.d	$a4, $a4, 6
	slli.d	$a5, $a4, 1
	sub.d	$a2, $a2, $a5
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a3, 31, 25
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 7
	slli.d	$a5, $a2, 1
	sub.d	$a4, $a4, $a5
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a4, $s8, %pc_lo12(MEMORY)
	sub.w	$a1, $a0, $a1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 31, 24
	add.w	$a1, $a0, $a1
	add.d	$a0, $a4, $s1
	ld.b	$a0, $a0, 2
	srai.d	$a1, $a1, 8
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a2, $a1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	srai.d	$a2, $a1, 1
	and	$a1, $a1, $s7
	sub.w	$s7, $a0, $a1
	srli.d	$a1, $a0, 31
	bstrpick.d	$a3, $a1, 31, 30
	add.w	$a3, $a0, $a3
	srai.d	$a3, $a3, 2
	slli.d	$a4, $a3, 1
	sub.d	$a2, $a2, $a4
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a1, 31, 29
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 3
	slli.d	$a4, $a2, 1
	sub.d	$a3, $a3, $a4
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 31, 28
	add.w	$a3, $a0, $a3
	srai.d	$a3, $a3, 4
	slli.d	$a4, $a3, 1
	sub.d	$a2, $a2, $a4
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a1, 31, 27
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a4, $a2, 1
	sub.d	$a3, $a3, $a4
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 31, 26
	add.w	$a3, $a0, $a3
	srai.d	$a3, $a3, 6
	slli.d	$a4, $a3, 1
	sub.d	$a2, $a2, $a4
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a1, 31, 25
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 7
	slli.d	$a4, $a2, 1
	sub.d	$a3, $a3, $a4
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 24
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 8
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	sub.d	$a0, $a2, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bne	$s5, $a1, .LBB13_7
# %bb.6:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	bnez	$a0, .LBB13_8
.LBB13_7:
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
                                        # implicit-def: $r28
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r31
	bnez	$s2, .LBB13_9
	b	.LBB13_32
.LBB13_8:                               # %.lr.ph.i79
	ld.d	$a0, $s8, %pc_lo12(MEMORY)
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 0
	add.d	$a0, $a0, $s1
	ld.b	$a0, $a0, 3
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 31
	add.d	$a1, $a0, $a1
	addi.w	$a2, $a1, 0
	srai.d	$a2, $a2, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.d	$s8, $a0, $a1
	srli.d	$a1, $a0, 31
	bstrpick.d	$a3, $a1, 31, 30
	add.w	$a3, $a0, $a3
	srai.d	$a3, $a3, 2
	slli.d	$a4, $a3, 1
	sub.d	$a2, $a2, $a4
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a1, 31, 29
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 3
	slli.d	$a4, $a2, 1
	sub.d	$a3, $a3, $a4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 31, 28
	add.w	$a3, $a0, $a3
	srai.d	$a3, $a3, 4
	slli.d	$a4, $a3, 1
	sub.d	$a2, $a2, $a4
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a1, 31, 27
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 5
	slli.d	$a4, $a2, 1
	sub.d	$a3, $a3, $a4
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 31, 26
	add.w	$a3, $a0, $a3
	srai.d	$a3, $a3, 6
	slli.d	$a4, $a3, 1
	sub.d	$a2, $a2, $a4
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a1, 31, 25
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 7
	slli.d	$a4, $a2, 1
	sub.d	$a3, $a3, $a4
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 24
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 8
	slli.d	$a0, $a0, 1
	sub.d	$s5, $a2, $a0
	beqz	$s2, .LBB13_32
.LBB13_9:
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a2, $a1, %pc_lo12(.L.str.69)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, -4
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 32
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 43
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s4, 4
	ldx.d	$a1, $s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB13_31
# %bb.10:
	pcalau12i	$a0, %pc_hi20(REGISTER)
	addi.d	$s2, $a0, %pc_lo12(REGISTER)
	ld.w	$s6, $s2, 32
	st.w	$s1, $s2, 32
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB13_14
# %bb.11:
	addi.d	$a0, $sp, 196
	addi.d	$a1, $sp, 192
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, -45
	ori	$a1, $zero, 1
	st.w	$s6, $s2, 32
	bltu	$a1, $a0, .LBB13_18
# %bb.12:
	ld.w	$a0, $sp, 196
	ori	$a1, $zero, 9
	slt	$a1, $a1, $a0
	alsl.d	$a0, $a0, $a0, 1
	pcalau12i	$a2, %pc_hi20(REG_NAMES)
	addi.d	$a2, $a2, %pc_lo12(REG_NAMES)
	add.d	$a0, $a2, $a0
.LBB13_13:
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$a2, $a2, %pc_lo12(.Lstr.4)
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB13_31
.LBB13_14:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	addi.d	$a1, $a0, -1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	sltui	$a3, $a2, 1
	sltui	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	ori	$a4, $zero, 32
	masknez	$a5, $a4, $a2
	ori	$a6, $zero, 35
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a5
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a4, $a0
	or	$a0, $a2, $a0
	masknez	$a2, $a0, $a1
	masknez	$a0, $a0, $a3
	ori	$a4, $zero, 64
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	add.w	$a0, $a2, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.w	$a0, $a2, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 1
	ori	$a2, $zero, 3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	add.w	$a0, $a3, $a0
	bne	$a1, $a2, .LBB13_21
# %bb.15:                               # %.lr.ph.i85
	alsl.d	$a0, $a0, $s7, 1
	ld.w	$a1, $s2, 12
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	maskeqz	$a1, $a1, $a2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	ori	$a3, $zero, 1
	add.w	$a1, $a1, $a0
	bne	$a2, $a3, .LBB13_22
# %bb.16:
	ld.w	$a0, $s2, 32
	add.d	$a0, $a1, $a0
	ori	$a2, $zero, 2048
	blt	$a1, $a2, .LBB13_27
# %bb.17:
	addi.d	$a0, $a0, -2048
	addi.w	$a1, $a0, -2045
	lu12i.w	$a0, 255
	ori	$a0, $a0, 4095
	bge	$a0, $a1, .LBB13_23
	b	.LBB13_28
.LBB13_18:
	bstrins.d	$s0, $zero, 1, 0
	ori	$a0, $zero, 176
	bne	$s0, $a0, .LBB13_24
# %bb.19:
	ld.w	$a1, $sp, 196
	ori	$a0, $zero, 5
	blt	$a1, $a0, .LBB13_33
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB13_31
.LBB13_21:                              # %.lr.ph.i89
	slli.d	$a0, $a0, 2
	alsl.d	$a0, $s7, $a0, 1
	add.w	$a0, $s5, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	alsl.w	$a1, $a0, $s8, 1
.LBB13_22:                              # %BITS_TO_BYTE.exit94
	lu12i.w	$a0, 255
	ori	$a0, $a0, 4095
	blt	$a0, $a1, .LBB13_28
.LBB13_23:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	move	$a2, $a0
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB13_29
	b	.LBB13_30
.LBB13_24:
	ld.w	$a0, $sp, 196
	addi.d	$a1, $s4, -41
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB13_34
# %bb.25:
	ori	$a1, $zero, 10
	blt	$a0, $a1, .LBB13_36
# %bb.26:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB13_37
.LBB13_27:
	addi.w	$a1, $a0, 3
	lu12i.w	$a0, 255
	ori	$a0, $a0, 4095
	bge	$a0, $a1, .LBB13_23
.LBB13_28:
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB13_30
.LBB13_29:
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB13_30:
	st.w	$s6, $s2, 32
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB13_31:
	st.w	$zero, $s3, %pc_lo12(PRINT_INSTR)
.LBB13_32:
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB13_33:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB13_31
.LBB13_34:
	ori	$a1, $zero, 10
	pcalau12i	$a2, %pc_hi20(REG_NAMES)
	addi.d	$fp, $a2, %pc_lo12(REG_NAMES)
	blt	$a0, $a1, .LBB13_38
# %bb.35:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB13_39
.LBB13_36:
	alsl.d	$a0, $a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(REG_NAMES)
	addi.d	$a1, $a1, %pc_lo12(REG_NAMES)
	add.d	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB13_37:
	ld.w	$a1, $sp, 192
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	pcalau12i	$a2, %pc_hi20(.L.str.80)
	addi.d	$a2, $a2, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	b	.LBB13_31
.LBB13_38:
	alsl.d	$a0, $a0, $a0, 1
	add.d	$a1, $fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB13_39:
	ld.w	$a0, $sp, 192
	ori	$a1, $zero, 9
	slt	$a1, $a1, $a0
	alsl.d	$a0, $a0, $a0, 1
	add.d	$a0, $fp, $a0
	b	.LBB13_13
.Lfunc_end13:
	.size	PRINT_INSTRUCTION, .Lfunc_end13-PRINT_INSTRUCTION
                                        # -- End function
	.globl	EXEC                            # -- Begin function EXEC
	.p2align	5
	.type	EXEC,@function
EXEC:                                   # @EXEC
# %bb.0:
	addi.d	$sp, $sp, -112
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
	pcalau12i	$s4, %pc_hi20(REGISTER+32)
	ld.w	$a2, $s4, %pc_lo12(REGISTER+32)
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$s5, %pc_hi20(MEMORY)
	pcalau12i	$a0, %pc_hi20(INSTR)
	addi.d	$s6, $a0, %pc_lo12(INSTR)
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 4095
	ori	$s7, $a0, 4095
	pcalau12i	$a0, %got_pc_hi20(RETURN_STATUS)
	ld.d	$s2, $a0, %got_pc_lo12(RETURN_STATUS)
	pcalau12i	$s8, %pc_hi20(INTERVAL_TIMER)
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_1:                               #   in Loop: Header=BB14_3 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 0
	move	$a2, $s7
.LBB14_2:                               #   in Loop: Header=BB14_3 Depth=1
	ld.w	$a0, $s2, 0
	or	$a0, $s0, $a0
	bnez	$a0, .LBB14_12
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, %pc_lo12(MEMORY)
	ldx.b	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ld.w	$s3, $s4, %pc_lo12(REGISTER+32)
	ld.d	$a1, $s5, %pc_lo12(MEMORY)
	bstrins.d	$a0, $zero, 3, 0
	add.d	$a0, $s6, $a0
	ld.w	$s1, $a0, 12
	ldx.b	$a0, $a1, $s3
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	beqz	$s1, .LBB14_5
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	alsl.d	$a0, $a0, $s6, 4
	ld.w	$a0, $a0, 12
	move	$a1, $fp
	pcaddu18i	$ra, %call36(CALL_FUNCTION1)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, %pc_lo12(REGISTER+32)
	beq	$a2, $s7, .LBB14_1
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
	slli.d	$a0, $a0, 4
	ldx.d	$a2, $s6, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(REGISTER+32)
	ld.d	$a1, $s5, %pc_lo12(MEMORY)
	ldx.b	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	bstrins.d	$a0, $zero, 3, 0
	add.d	$a0, $s6, $a0
	ld.w	$a0, $a0, 8
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB14_7
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB14_8
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	ld.w	$a0, $s4, %pc_lo12(REGISTER+32)
	ld.d	$a1, $s5, %pc_lo12(MEMORY)
	ldx.b	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	bstrins.d	$a0, $zero, 3, 0
	add.d	$a0, $s6, $a0
	ld.w	$a0, $a0, 8
	ld.w	$a1, $s4, %pc_lo12(REGISTER+32)
	add.d	$a0, $a1, $a0
	st.w	$a0, $s4, %pc_lo12(REGISTER+32)
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, %pc_lo12(REGISTER+32)
	beq	$a2, $s7, .LBB14_1
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
	ld.w	$a0, $s8, %pc_lo12(INTERVAL_TIMER)
	blez	$a0, .LBB14_2
# %bb.10:                               #   in Loop: Header=BB14_3 Depth=1
	addi.w	$a0, $a0, -1
	st.w	$a0, $s8, %pc_lo12(INTERVAL_TIMER)
	bnez	$a0, .LBB14_2
# %bb.11:                               #   in Loop: Header=BB14_3 Depth=1
	ori	$a0, $zero, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, %pc_lo12(REGISTER+32)
	b	.LBB14_2
.LBB14_12:
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
.Lfunc_end14:
	.size	EXEC, .Lfunc_end14-EXEC
                                        # -- End function
	.type	MEMORY,@object                  # @MEMORY
	.bss
	.globl	MEMORY
	.p2align	3, 0x0
MEMORY:
	.dword	0
	.size	MEMORY, 8

	.type	INTERVAL_TIMER,@object          # @INTERVAL_TIMER
	.globl	INTERVAL_TIMER
	.p2align	2, 0x0
INTERVAL_TIMER:
	.word	0                               # 0x0
	.size	INTERVAL_TIMER, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LDA"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"LDX"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"LDL"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"STA"
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"STX"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"STL"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ADD"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"SUB"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"MUL"
	.size	.L.str.8, 4

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"DIV"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"COMP"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"TIX"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"JEQ"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"JGT"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"JLT"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"J"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"AND"
	.size	.L.str.16, 4

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"OR"
	.size	.L.str.17, 3

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"JSUB"
	.size	.L.str.18, 5

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"RSUB"
	.size	.L.str.19, 5

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"LDCH"
	.size	.L.str.20, 5

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"STCH"
	.size	.L.str.21, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"ADDF"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SUBF"
	.size	.L.str.23, 5

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"MULF"
	.size	.L.str.24, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"DIVF"
	.size	.L.str.25, 5

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"LDB"
	.size	.L.str.26, 4

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"LDS"
	.size	.L.str.27, 4

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"LDF"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"LDT"
	.size	.L.str.29, 4

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"STB"
	.size	.L.str.30, 4

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"STS"
	.size	.L.str.31, 4

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"STF"
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"STT"
	.size	.L.str.33, 4

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"COMPF"
	.size	.L.str.34, 6

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"UNDEF"
	.size	.L.str.35, 6

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"ADDR"
	.size	.L.str.36, 5

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"SUBR"
	.size	.L.str.37, 5

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"MULR"
	.size	.L.str.38, 5

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"DIVR"
	.size	.L.str.39, 5

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"COMPR"
	.size	.L.str.40, 6

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"SHIFTL"
	.size	.L.str.41, 7

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"SHIFTR"
	.size	.L.str.42, 7

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"RMO"
	.size	.L.str.43, 4

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"SVC"
	.size	.L.str.44, 4

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"CLEAR"
	.size	.L.str.45, 6

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"TIXR"
	.size	.L.str.46, 5

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"FLOAT"
	.size	.L.str.47, 6

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"FIX"
	.size	.L.str.48, 4

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"NORM"
	.size	.L.str.49, 5

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"LPS"
	.size	.L.str.50, 4

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"STI"
	.size	.L.str.51, 4

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"RD"
	.size	.L.str.52, 3

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"WD"
	.size	.L.str.53, 3

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"TD"
	.size	.L.str.54, 3

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"STSW"
	.size	.L.str.55, 5

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"SSK"
	.size	.L.str.56, 4

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"SIO"
	.size	.L.str.57, 4

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"HIO"
	.size	.L.str.58, 4

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"TIO"
	.size	.L.str.59, 4

	.type	INSTR,@object                   # @INSTR
	.data
	.globl	INSTR
	.p2align	3, 0x0
INSTR:
	.dword	.L.str
	.word	3                               # 0x3
	.word	22                              # 0x16
	.dword	.L.str.1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.dword	.L.str.2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.dword	.L.str.3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.dword	.L.str.4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.dword	.L.str.5
	.word	3                               # 0x3
	.word	5                               # 0x5
	.dword	.L.str.6
	.word	3                               # 0x3
	.word	6                               # 0x6
	.dword	.L.str.7
	.word	3                               # 0x3
	.word	7                               # 0x7
	.dword	.L.str.8
	.word	3                               # 0x3
	.word	8                               # 0x8
	.dword	.L.str.9
	.word	3                               # 0x3
	.word	9                               # 0x9
	.dword	.L.str.10
	.word	3                               # 0x3
	.word	10                              # 0xa
	.dword	.L.str.11
	.word	3                               # 0x3
	.word	11                              # 0xb
	.dword	.L.str.12
	.word	3                               # 0x3
	.word	12                              # 0xc
	.dword	.L.str.13
	.word	3                               # 0x3
	.word	13                              # 0xd
	.dword	.L.str.14
	.word	3                               # 0x3
	.word	14                              # 0xe
	.dword	.L.str.15
	.word	3                               # 0x3
	.word	15                              # 0xf
	.dword	.L.str.16
	.word	3                               # 0x3
	.word	16                              # 0x10
	.dword	.L.str.17
	.word	3                               # 0x3
	.word	17                              # 0x11
	.dword	.L.str.18
	.word	3                               # 0x3
	.word	18                              # 0x12
	.dword	.L.str.19
	.word	3                               # 0x3
	.word	19                              # 0x13
	.dword	.L.str.20
	.word	3                               # 0x3
	.word	20                              # 0x14
	.dword	.L.str.21
	.word	3                               # 0x3
	.word	21                              # 0x15
	.dword	.L.str.22
	.word	3                               # 0x3
	.word	0                               # 0x0
	.dword	.L.str.23
	.word	3                               # 0x3
	.word	0                               # 0x0
	.dword	.L.str.24
	.word	3                               # 0x3
	.word	0                               # 0x0
	.dword	.L.str.25
	.word	3                               # 0x3
	.word	0                               # 0x0
	.dword	.L.str.26
	.word	3                               # 0x3
	.word	23                              # 0x17
	.dword	.L.str.27
	.word	3                               # 0x3
	.word	24                              # 0x18
	.dword	.L.str.28
	.word	3                               # 0x3
	.word	0                               # 0x0
	.dword	.L.str.29
	.word	3                               # 0x3
	.word	25                              # 0x19
	.dword	.L.str.30
	.word	3                               # 0x3
	.word	26                              # 0x1a
	.dword	.L.str.31
	.word	3                               # 0x3
	.word	27                              # 0x1b
	.dword	.L.str.32
	.word	3                               # 0x3
	.word	0                               # 0x0
	.dword	.L.str.33
	.word	3                               # 0x3
	.word	28                              # 0x1c
	.dword	.L.str.34
	.word	3                               # 0x3
	.word	0                               # 0x0
	.dword	.L.str.35
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.36
	.word	2                               # 0x2
	.word	29                              # 0x1d
	.dword	.L.str.37
	.word	2                               # 0x2
	.word	30                              # 0x1e
	.dword	.L.str.38
	.word	2                               # 0x2
	.word	31                              # 0x1f
	.dword	.L.str.39
	.word	2                               # 0x2
	.word	32                              # 0x20
	.dword	.L.str.40
	.word	2                               # 0x2
	.word	33                              # 0x21
	.dword	.L.str.41
	.word	2                               # 0x2
	.word	34                              # 0x22
	.dword	.L.str.42
	.word	2                               # 0x2
	.word	35                              # 0x23
	.dword	.L.str.43
	.word	2                               # 0x2
	.word	36                              # 0x24
	.dword	.L.str.44
	.word	2                               # 0x2
	.word	37                              # 0x25
	.dword	.L.str.45
	.word	2                               # 0x2
	.word	38                              # 0x26
	.dword	.L.str.46
	.word	2                               # 0x2
	.word	39                              # 0x27
	.dword	.L.str.35
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.47
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.48
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.49
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.35
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.50
	.word	3                               # 0x3
	.word	0                               # 0x0
	.dword	.L.str.51
	.word	3                               # 0x3
	.word	40                              # 0x28
	.dword	.L.str.52
	.word	3                               # 0x3
	.word	41                              # 0x29
	.dword	.L.str.53
	.word	3                               # 0x3
	.word	42                              # 0x2a
	.dword	.L.str.54
	.word	3                               # 0x3
	.word	43                              # 0x2b
	.dword	.L.str.35
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.55
	.word	3                               # 0x3
	.word	44                              # 0x2c
	.dword	.L.str.56
	.word	3                               # 0x3
	.word	0                               # 0x0
	.dword	.L.str.57
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.58
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.59
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.35
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	INSTR, 1024

	.type	REG_NAMES,@object               # @REG_NAMES
	.globl	REG_NAMES
REG_NAMES:
	.asciz	"A\000"
	.asciz	"X\000"
	.asciz	"L\000"
	.asciz	"B\000"
	.asciz	"S\000"
	.asciz	"T\000"
	.asciz	"F\000"
	.asciz	"7\000"
	.asciz	"PC"
	.asciz	"SW"
	.size	REG_NAMES, 30

	.type	PRINT_INSTR,@object             # @PRINT_INSTR
	.bss
	.globl	PRINT_INSTR
	.p2align	2, 0x0
PRINT_INSTR:
	.word	0                               # 0x0
	.size	PRINT_INSTR, 4

	.type	DEVICE,@object                  # @DEVICE
	.comm	DEVICE,4096,8
	.type	.L.str.60,@object               # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"%S%S%S"
	.size	.L.str.60, 7

	.type	REGISTER,@object                # @REGISTER
	.comm	REGISTER,40,4
	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"r"
	.size	.L.str.62, 2

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"w"
	.size	.L.str.63, 2

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"%s%s%s"
	.size	.L.str.64, 7

	.type	TYPE_OUT_MODE,@object           # @TYPE_OUT_MODE
	.comm	TYPE_OUT_MODE,6,1
	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%s%s [base 10]%s"
	.size	.L.str.65, 17

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%s%s [base 16]%s"
	.size	.L.str.66, 17

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"======>"
	.size	.L.str.68, 8

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"\t"
	.size	.L.str.69, 2

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"%s\t"
	.size	.L.str.72, 4

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"%d\n"
	.size	.L.str.76, 4

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"illegal register,"
	.size	.L.str.77, 18

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"%s,"
	.size	.L.str.78, 4

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.space	1
	.size	.L.str.79, 1

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"\n"
	.size	.L.str.80, 2

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"invalid address"
	.size	.L.str.83, 16

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	",X"
	.size	.L.str.84, 3

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"%d %s "
	.size	.L.str.85, 7

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	" %d"
	.size	.L.str.86, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"SET_CC called improperly."
	.size	.Lstr, 26

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Address out of range."
	.size	.Lstr.1, 22

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"illegal argument"
	.size	.Lstr.3, 17

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"illegal register"
	.size	.Lstr.4, 17

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym REG_NAMES
