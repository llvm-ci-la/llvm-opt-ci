	.file	"instruct2.c"
	.text
	.globl	MOD                             # -- Begin function MOD
	.p2align	5
	.type	MOD,@function
MOD:                                    # @MOD
# %bb.0:
	mod.w	$a0, $a0, $a1
	ret
.Lfunc_end0:
	.size	MOD, .Lfunc_end0-MOD
                                        # -- End function
	.globl	ADDR_P                          # -- Begin function ADDR_P
	.p2align	5
	.type	ADDR_P,@function
ADDR_P:                                 # @ADDR_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 12
	ld.w	$a1, $sp, 8
	ori	$a0, $zero, 10
	bltu	$a4, $a0, .LBB1_3
# %bb.1:
	ori	$a0, $zero, 9
	bgeu	$a0, $a1, .LBB1_3
# %bb.2:
	move	$a1, $zero
	b	.LBB1_14
.LBB1_3:
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	move	$s0, $zero
	slli.d	$a0, $a4, 2
	ldx.w	$a2, $s1, $a0
	slli.d	$a0, $a1, 2
	ldx.w	$a3, $s1, $a0
	lu12i.w	$a0, 2047
	ori	$a5, $a0, 4095
	alsl.d	$a0, $a1, $s1, 2
	move	$a6, $a3
	blt	$a5, $a2, .LBB1_6
# %bb.4:
	blt	$a5, $a3, .LBB1_6
# %bb.5:
	add.w	$a6, $a3, $a2
	st.w	$a6, $a0, 0
	slt	$s0, $a5, $a6
.LBB1_6:
	lu12i.w	$a5, 2048
	slt	$a7, $a3, $a5
	slt	$t0, $a2, $a5
	alsl.d	$a4, $a4, $s1, 2
	beq	$t0, $a7, .LBB1_8
# %bb.7:                                # %.sink.split
	ld.w	$a7, $a4, 0
	add.w	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 62, 39
	add.d	$a7, $a6, $a7
	lu12i.w	$t0, -4096
	lu32i.d	$t0, 0
	and	$a7, $a7, $t0
	sub.d	$a6, $a6, $a7
	st.w	$a6, $a0, 0
.LBB1_8:
	blt	$a2, $a5, .LBB1_11
# %bb.9:
	blt	$a3, $a5, .LBB1_11
# %bb.10:
	ld.w	$a2, $a4, 0
	add.w	$a2, $a2, $a6
	bstrpick.d	$a3, $a2, 62, 39
	add.d	$a3, $a2, $a3
	lu12i.w	$a4, -4096
	lu32i.d	$a4, 0
	and	$a3, $a3, $a4
	sub.w	$a2, $a2, $a3
	st.w	$a2, $a0, 0
	slt	$a0, $a2, $a5
	masknez	$a2, $s0, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s0, $a0, $a2
.LBB1_11:
	beqz	$fp, .LBB1_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB1_13:
	ori	$a1, $zero, 4
	beqz	$s0, .LBB1_15
.LBB1_14:                               # %.sink.split32
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB1_15:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	ADDR_P, .Lfunc_end1-ADDR_P
                                        # -- End function
	.globl	CLEAR_P                         # -- Begin function CLEAR_P
	.p2align	5
	.type	CLEAR_P,@function
CLEAR_P:                                # @CLEAR_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 4
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	ori	$a0, $zero, 10
	bgeu	$a1, $a0, .LBB2_3
# %bb.1:
	slli.d	$a0, $a1, 2
	pcalau12i	$a2, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a2, %got_pc_lo12(REGISTER)
	stx.w	$zero, $s0, $a0
	beqz	$fp, .LBB2_4
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 4
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	b	.LBB2_4
.LBB2_3:
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB2_4:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	CLEAR_P, .Lfunc_end2-CLEAR_P
                                        # -- End function
	.globl	COMPR_P                         # -- Begin function COMPR_P
	.p2align	5
	.type	COMPR_P,@function
COMPR_P:                                # @COMPR_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a1, $a1, %got_pc_lo12(REGISTER)
	ldx.w	$a0, $a1, $a0
	ld.w	$a2, $sp, 8
	lu12i.w	$a3, 2047
	ori	$a3, $a3, 4095
	slt	$a3, $a3, $a0
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	addu16i.d	$a2, $a0, -256
	masknez	$a0, $a0, $a3
	maskeqz	$a2, $a2, $a3
	or	$a0, $a2, $a0
	addi.w	$s0, $a0, 0
	addu16i.d	$a0, $a1, -256
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 0
	bne	$s0, $s1, .LBB3_3
# %bb.1:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_6
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_3:
	bge	$s0, $s1, .LBB3_6
# %bb.4:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_6:                                # %.thread
	bge	$s1, $s0, .LBB3_9
# %bb.7:
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_9:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	COMPR_P, .Lfunc_end3-COMPR_P
                                        # -- End function
	.globl	DIVR_P                          # -- Begin function DIVR_P
	.p2align	5
	.type	DIVR_P,@function
DIVR_P:                                 # @DIVR_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 12
	ld.w	$a0, $sp, 8
	ori	$a1, $zero, 10
	bltu	$a4, $a1, .LBB4_3
# %bb.1:
	bltu	$a0, $a1, .LBB4_3
# %bb.2:
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB4_14
	b	.LBB4_15
.LBB4_3:
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a5, $a1, %got_pc_lo12(REGISTER)
	slli.d	$a1, $a4, 2
	ldx.w	$a6, $a5, $a1
	beqz	$a6, .LBB4_9
# %bb.4:
	lu12i.w	$a2, 2047
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $a5, $a1
	ori	$a7, $a2, 4095
	slt	$a2, $a7, $a6
	alsl.d	$a0, $a0, $a5, 2
	slt	$a3, $a7, $a1
	blt	$a7, $a6, .LBB4_7
# %bb.5:
	blt	$a7, $a1, .LBB4_7
# %bb.6:
	div.w	$a1, $a1, $a6
	st.w	$a1, $a0, 0
.LBB4_7:
	alsl.d	$a4, $a4, $a5, 2
	xori	$a5, $a3, 1
	or	$a6, $a2, $a5
	lu12i.w	$a5, 4096
	bnez	$a6, .LBB4_11
# %bb.8:                                # %.thread
	ld.w	$a6, $a4, 0
	sub.w	$a1, $a5, $a1
	b	.LBB4_17
.LBB4_9:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB4_15
# %bb.10:                               # %.thread26
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB4_14
.LBB4_11:
	xori	$a6, $a2, 1
	or	$a6, $a3, $a6
	beqz	$a6, .LBB4_16
# %bb.12:
	and	$a2, $a2, $a3
	bnez	$a2, .LBB4_18
.LBB4_13:
	beqz	$fp, .LBB4_15
.LBB4_14:
	ld.w	$a1, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a1, $a1, %got_pc_lo12(REGISTER)
	ldx.w	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB4_15:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_16:
	ld.w	$a6, $a4, 0
	sub.w	$a6, $a5, $a6
.LBB4_17:                               # %.sink.split
	div.w	$a1, $a1, $a6
	sub.d	$a1, $a5, $a1
	st.w	$a1, $a0, 0
	and	$a2, $a2, $a3
	beqz	$a2, .LBB4_13
.LBB4_18:
	ld.w	$a2, $a4, 0
	sub.w	$a1, $a5, $a1
	sub.w	$a2, $a5, $a2
	div.w	$a1, $a1, $a2
	st.w	$a1, $a0, 0
	bnez	$fp, .LBB4_14
	b	.LBB4_15
.Lfunc_end4:
	.size	DIVR_P, .Lfunc_end4-DIVR_P
                                        # -- End function
	.globl	MULR_P                          # -- Begin function MULR_P
	.p2align	5
	.type	MULR_P,@function
MULR_P:                                 # @MULR_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 12
	ld.w	$a1, $sp, 8
	ori	$a0, $zero, 10
	bltu	$a6, $a0, .LBB5_3
# %bb.1:
	ori	$a0, $zero, 9
	bgeu	$a0, $a1, .LBB5_3
# %bb.2:
	move	$a1, $zero
	b	.LBB5_20
.LBB5_3:
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a0, %got_pc_lo12(REGISTER)
	move	$a5, $zero
	slli.d	$a0, $a6, 2
	ldx.w	$a7, $s0, $a0
	lu12i.w	$a0, 2047
	slli.d	$a2, $a1, 2
	ldx.w	$a4, $s0, $a2
	ori	$t0, $a0, 4095
	slt	$a2, $t0, $a7
	alsl.d	$a0, $a1, $s0, 2
	slt	$a3, $t0, $a4
	blt	$t0, $a7, .LBB5_7
# %bb.4:
	blt	$t0, $a4, .LBB5_7
# %bb.5:
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	lu52i.d	$a5, $zero, 1046
	movgr2fr.d	$fa1, $a5
	fcmp.cle.d	$fcc0, $fa1, $fa0
	ori	$a5, $zero, 1
	bcnez	$fcc0, .LBB5_7
# %bb.6:
	move	$a5, $zero
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	st.w	$a4, $a0, 0
.LBB5_7:
	xori	$a7, $a3, 1
	or	$a7, $a2, $a7
	alsl.d	$a6, $a6, $s0, 2
	bnez	$a7, .LBB5_10
# %bb.8:
	lu12i.w	$a7, 4096
	ld.w	$t0, $a6, 0
	sub.d	$a7, $a7, $a4
	movgr2fr.w	$fa0, $a7
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	lu52i.d	$a7, $zero, 999
	movgr2fr.d	$fa1, $a7
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
	slli.d	$a7, $a7, 24
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	lu52i.d	$a7, $zero, 1046
	movgr2fr.d	$fa1, $a7
	fcmp.cult.d	$fcc0, $fa0, $fa1
	ori	$a7, $zero, 1
	bcnez	$fcc0, .LBB5_12
.LBB5_9:                                # %.thread
	and	$a2, $a2, $a3
	bnez	$a2, .LBB5_14
	b	.LBB5_16
.LBB5_10:
	xori	$a7, $a2, 1
	or	$a7, $a3, $a7
	bnez	$a7, .LBB5_13
# %bb.11:
	ld.w	$a7, $a6, 0
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	lu12i.w	$t0, 4096
	sub.d	$a7, $t0, $a7
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	lu52i.d	$a7, $zero, 999
	movgr2fr.d	$fa1, $a7
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
	slli.d	$a7, $a7, 24
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	lu52i.d	$a7, $zero, 1046
	movgr2fr.d	$fa1, $a7
	fcmp.cle.d	$fcc0, $fa1, $fa0
	ori	$a7, $zero, 1
	bcnez	$fcc0, .LBB5_9
.LBB5_12:                               # %.thread.sink.split
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	lu12i.w	$a7, 4096
	sub.w	$a4, $a7, $a4
	st.w	$a4, $a0, 0
.LBB5_13:                               # %.thread
	move	$a7, $a5
	and	$a2, $a2, $a3
	beqz	$a2, .LBB5_16
.LBB5_14:
	lu12i.w	$a2, 4096
	ld.w	$a3, $a6, 0
	sub.d	$a4, $a2, $a4
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	sub.d	$a2, $a2, $a3
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	lu52i.d	$a2, $zero, 1046
	movgr2fr.d	$fa1, $a2
	fcmp.cle.d	$fcc0, $fa1, $fa0
	ori	$s1, $zero, 1
	bcnez	$fcc0, .LBB5_17
# %bb.15:
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	st.w	$a2, $a0, 0
.LBB5_16:
	move	$s1, $a7
.LBB5_17:
	beqz	$fp, .LBB5_19
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB5_19:
	ori	$a1, $zero, 4
	beqz	$s1, .LBB5_21
.LBB5_20:                               # %.sink.split
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB5_21:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	MULR_P, .Lfunc_end5-MULR_P
                                        # -- End function
	.globl	RMO_P                           # -- Begin function RMO_P
	.p2align	5
	.type	RMO_P,@function
RMO_P:                                  # @RMO_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 4
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 4
	ld.w	$a1, $sp, 0
	ori	$a2, $zero, 10
	bltu	$a0, $a2, .LBB6_3
# %bb.1:
	bltu	$a1, $a2, .LBB6_3
# %bb.2:
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	b	.LBB6_5
.LBB6_3:
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a2, %got_pc_lo12(REGISTER)
	ldx.w	$a0, $s0, $a0
	slli.d	$a2, $a1, 2
	stx.w	$a0, $s0, $a2
	beqz	$fp, .LBB6_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB6_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	RMO_P, .Lfunc_end6-RMO_P
                                        # -- End function
	.globl	SHIFTL_P                        # -- Begin function SHIFTL_P
	.p2align	5
	.type	SHIFTL_P,@function
SHIFTL_P:                               # @SHIFTL_P
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 204
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 204
	ori	$a1, $zero, 10
	bgeu	$a0, $a1, .LBB7_3
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a1, %got_pc_lo12(REGISTER)
	ldx.w	$a0, $s0, $a0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 104
	addi.d	$s1, $sp, 104
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 200
	addi.w	$a3, $a1, 1
	lu12i.w	$a0, 174762
	ori	$a2, $a0, 2731
	mul.d	$a0, $a3, $a2
	srli.d	$a4, $a0, 63
	srai.d	$a0, $a0, 34
	add.d	$a4, $a0, $a4
	ori	$a0, $zero, 24
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	addi.w	$a4, $a1, 2
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	addi.w	$a5, $a1, 3
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	addi.w	$a6, $a1, 4
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 34
	add.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a0
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s1
	st.w	$a3, $sp, 8
	st.w	$a4, $sp, 12
	st.w	$a5, $sp, 16
	st.w	$a6, $sp, 20
	addi.w	$a3, $a1, 5
	mul.d	$a4, $a3, $a2
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 34
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	addi.w	$a4, $a1, 6
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	addi.w	$a5, $a1, 7
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	addi.w	$a6, $a1, 8
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 34
	add.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a0
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s1
	st.w	$a3, $sp, 24
	st.w	$a4, $sp, 28
	st.w	$a5, $sp, 32
	st.w	$a6, $sp, 36
	addi.w	$a3, $a1, 9
	mul.d	$a4, $a3, $a2
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 34
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	addi.w	$a4, $a1, 10
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	addi.w	$a5, $a1, 11
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	addi.w	$a6, $a1, 12
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 34
	add.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a0
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s1
	st.w	$a3, $sp, 40
	st.w	$a4, $sp, 44
	st.w	$a5, $sp, 48
	st.w	$a6, $sp, 52
	addi.w	$a3, $a1, 13
	mul.d	$a4, $a3, $a2
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 34
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	addi.w	$a4, $a1, 14
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	addi.w	$a5, $a1, 15
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	addi.w	$a6, $a1, 16
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 34
	add.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a0
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s1
	st.w	$a3, $sp, 56
	st.w	$a4, $sp, 60
	st.w	$a5, $sp, 64
	st.w	$a6, $sp, 68
	addi.w	$a3, $a1, 17
	mul.d	$a4, $a3, $a2
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 34
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	addi.w	$a4, $a1, 18
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	addi.w	$a5, $a1, 19
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	addi.w	$a6, $a1, 20
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 34
	add.d	$a7, $a7, $t0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	mul.d	$a7, $a7, $a0
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s1
	st.w	$a3, $sp, 72
	st.w	$a4, $sp, 76
	st.w	$a5, $sp, 80
	st.w	$a6, $sp, 84
	addi.w	$a3, $a1, 21
	mul.d	$a4, $a3, $a2
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 34
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	addi.w	$a4, $a1, 22
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	addi.w	$a5, $a1, 23
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	addi.w	$a1, $a1, 24
	mul.d	$a2, $a1, $a2
	srli.d	$a6, $a2, 63
	srai.d	$a2, $a2, 34
	add.d	$a2, $a2, $a6
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	mul.d	$a0, $a2, $a0
	sub.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a0, $s1
	st.w	$a3, $sp, 88
	st.w	$a4, $sp, 92
	st.w	$a5, $sp, 96
	st.w	$a0, $sp, 100
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(BITS_TO_BYTE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 204
	slli.d	$a2, $a1, 2
	stx.w	$a0, $s0, $a2
	beqz	$fp, .LBB7_4
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 204
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	b	.LBB7_4
.LBB7_3:
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB7_4:
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end7:
	.size	SHIFTL_P, .Lfunc_end7-SHIFTL_P
                                        # -- End function
	.globl	SHIFTR_P                        # -- Begin function SHIFTR_P
	.p2align	5
	.type	SHIFTR_P,@function
SHIFTR_P:                               # @SHIFTR_P
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 204
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 204
	ori	$a1, $zero, 10
	bgeu	$a0, $a1, .LBB8_28
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a1, %got_pc_lo12(REGISTER)
	ldx.w	$a0, $s0, $a0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 104
	addi.d	$s1, $sp, 104
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 200
	ld.w	$a0, $sp, 104
	move	$a2, $a0
	bltz	$a1, .LBB8_30
# %bb.2:
	st.w	$a2, $sp, 8
	move	$a2, $a0
	blez	$a1, .LBB8_31
.LBB8_3:
	ori	$a3, $zero, 1
	st.w	$a2, $sp, 12
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_32
.LBB8_4:
	ori	$a3, $zero, 2
	st.w	$a2, $sp, 16
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_33
.LBB8_5:
	ori	$a3, $zero, 3
	st.w	$a2, $sp, 20
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_34
.LBB8_6:
	ori	$a3, $zero, 4
	st.w	$a2, $sp, 24
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_35
.LBB8_7:
	ori	$a3, $zero, 5
	st.w	$a2, $sp, 28
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_36
.LBB8_8:
	ori	$a3, $zero, 6
	st.w	$a2, $sp, 32
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_37
.LBB8_9:
	ori	$a3, $zero, 7
	st.w	$a2, $sp, 36
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_38
.LBB8_10:
	ori	$a3, $zero, 8
	st.w	$a2, $sp, 40
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_39
.LBB8_11:
	ori	$a3, $zero, 9
	st.w	$a2, $sp, 44
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_40
.LBB8_12:
	ori	$a3, $zero, 10
	st.w	$a2, $sp, 48
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_41
.LBB8_13:
	ori	$a3, $zero, 11
	st.w	$a2, $sp, 52
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_42
.LBB8_14:
	ori	$a3, $zero, 12
	st.w	$a2, $sp, 56
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_43
.LBB8_15:
	ori	$a3, $zero, 13
	st.w	$a2, $sp, 60
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_44
.LBB8_16:
	ori	$a3, $zero, 14
	st.w	$a2, $sp, 64
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_45
.LBB8_17:
	ori	$a3, $zero, 15
	st.w	$a2, $sp, 68
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_46
.LBB8_18:
	ori	$a3, $zero, 16
	st.w	$a2, $sp, 72
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_47
.LBB8_19:
	ori	$a3, $zero, 17
	st.w	$a2, $sp, 76
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_48
.LBB8_20:
	ori	$a3, $zero, 18
	st.w	$a2, $sp, 80
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_49
.LBB8_21:
	ori	$a3, $zero, 19
	st.w	$a2, $sp, 84
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_50
.LBB8_22:
	ori	$a3, $zero, 20
	st.w	$a2, $sp, 88
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_51
.LBB8_23:
	ori	$a3, $zero, 21
	st.w	$a2, $sp, 92
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_52
.LBB8_24:
	ori	$a3, $zero, 22
	st.w	$a2, $sp, 96
	blt	$a3, $a1, .LBB8_26
.LBB8_25:
	sub.w	$a0, $a3, $a1
	slli.d	$a0, $a0, 2
	addi.d	$a1, $sp, 104
	ldx.w	$a0, $a0, $a1
.LBB8_26:
	st.w	$a0, $sp, 100
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(BITS_TO_BYTE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 204
	slli.d	$a2, $a1, 2
	stx.w	$a0, $s0, $a2
	beqz	$fp, .LBB8_29
# %bb.27:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 204
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	b	.LBB8_29
.LBB8_28:
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB8_29:
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB8_30:
	nor	$a2, $a1, $zero
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s1
	st.w	$a2, $sp, 8
	move	$a2, $a0
	bgtz	$a1, .LBB8_3
.LBB8_31:
	sub.w	$a2, $zero, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 1
	st.w	$a2, $sp, 12
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_4
.LBB8_32:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 2
	st.w	$a2, $sp, 16
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_5
.LBB8_33:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 3
	st.w	$a2, $sp, 20
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_6
.LBB8_34:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 4
	st.w	$a2, $sp, 24
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_7
.LBB8_35:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 5
	st.w	$a2, $sp, 28
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_8
.LBB8_36:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 6
	st.w	$a2, $sp, 32
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_9
.LBB8_37:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 7
	st.w	$a2, $sp, 36
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_10
.LBB8_38:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 8
	st.w	$a2, $sp, 40
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_11
.LBB8_39:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 9
	st.w	$a2, $sp, 44
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_12
.LBB8_40:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 10
	st.w	$a2, $sp, 48
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_13
.LBB8_41:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 11
	st.w	$a2, $sp, 52
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_14
.LBB8_42:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 12
	st.w	$a2, $sp, 56
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_15
.LBB8_43:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 13
	st.w	$a2, $sp, 60
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_16
.LBB8_44:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 14
	st.w	$a2, $sp, 64
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_17
.LBB8_45:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 15
	st.w	$a2, $sp, 68
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_18
.LBB8_46:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 16
	st.w	$a2, $sp, 72
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_19
.LBB8_47:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 17
	st.w	$a2, $sp, 76
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_20
.LBB8_48:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 18
	st.w	$a2, $sp, 80
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_21
.LBB8_49:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 19
	st.w	$a2, $sp, 84
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_22
.LBB8_50:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 20
	st.w	$a2, $sp, 88
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_23
.LBB8_51:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 21
	st.w	$a2, $sp, 92
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_24
.LBB8_52:
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 22
	st.w	$a2, $sp, 96
	bge	$a3, $a1, .LBB8_25
	b	.LBB8_26
.Lfunc_end8:
	.size	SHIFTR_P, .Lfunc_end8-SHIFTR_P
                                        # -- End function
	.globl	SUBR_P                          # -- Begin function SUBR_P
	.p2align	5
	.type	SUBR_P,@function
SUBR_P:                                 # @SUBR_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 12
	ld.w	$a1, $sp, 8
	ori	$a0, $zero, 10
	bltu	$a6, $a0, .LBB9_3
# %bb.1:
	ori	$a0, $zero, 9
	bgeu	$a0, $a1, .LBB9_3
# %bb.2:
	move	$a1, $zero
	b	.LBB9_15
.LBB9_3:
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a0, %got_pc_lo12(REGISTER)
	slli.d	$a0, $a6, 2
	ldx.w	$t0, $s0, $a0
	lu12i.w	$a0, 2047
	slli.d	$a2, $a1, 2
	ldx.w	$a5, $s0, $a2
	ori	$a7, $a0, 4095
	slt	$a3, $a7, $t0
	alsl.d	$a0, $a1, $s0, 2
	slt	$a4, $a7, $a5
	lu12i.w	$a2, -4096
	blt	$a7, $t0, .LBB9_6
# %bb.4:
	blt	$a7, $a5, .LBB9_6
# %bb.5:
	sub.w	$a5, $a5, $t0
	addu16i.d	$a5, $a5, 256
	addi.w	$t0, $a5, 0
	bstrpick.d	$t0, $t0, 62, 39
	add.d	$t0, $a5, $t0
	move	$t1, $a2
	lu32i.d	$t1, 0
	and	$t0, $t0, $t1
	sub.w	$a5, $a5, $t0
	st.w	$a5, $a0, 0
.LBB9_6:
	xori	$t0, $a4, 1
	or	$t0, $a3, $t0
	alsl.d	$a6, $a6, $s0, 2
	bnez	$t0, .LBB9_8
# %bb.7:                                # %.thread
	ld.w	$a7, $a6, 0
	sub.w	$a5, $a5, $a7
	addu16i.d	$a5, $a5, 256
	addi.w	$a7, $a5, 0
	bstrpick.d	$a7, $a7, 62, 39
	add.d	$a7, $a5, $a7
	move	$t0, $a2
	lu32i.d	$t0, 0
	and	$a7, $a7, $t0
	sub.w	$a5, $a5, $a7
	st.w	$a5, $a0, 0
	lu12i.w	$a7, 2048
	slt	$s1, $a5, $a7
	and	$a3, $a3, $a4
	bnez	$a3, .LBB9_11
	b	.LBB9_12
.LBB9_8:
	xori	$t0, $a3, 1
	or	$t0, $a4, $t0
	bnez	$t0, .LBB9_10
# %bb.9:
	ld.w	$t0, $a6, 0
	sub.d	$a5, $a5, $t0
	addu16i.d	$t0, $a5, 256
	addi.w	$a5, $t0, 0
	st.w	$t0, $a0, 0
	slt	$s1, $a7, $a5
	and	$a3, $a3, $a4
	bnez	$a3, .LBB9_11
	b	.LBB9_12
.LBB9_10:
	move	$s1, $zero
	and	$a3, $a3, $a4
	beqz	$a3, .LBB9_12
.LBB9_11:
	ld.w	$a3, $a6, 0
	sub.d	$a3, $a5, $a3
	addu16i.d	$a3, $a3, 256
	addi.w	$a4, $a3, 0
	bstrpick.d	$a4, $a4, 62, 39
	add.d	$a4, $a3, $a4
	lu32i.d	$a2, 0
	and	$a2, $a4, $a2
	sub.d	$a2, $a3, $a2
	st.w	$a2, $a0, 0
.LBB9_12:
	beqz	$fp, .LBB9_14
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB9_14:
	ori	$a1, $zero, 4
	beqz	$s1, .LBB9_16
.LBB9_15:                               # %.sink.split
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB9_16:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	SUBR_P, .Lfunc_end9-SUBR_P
                                        # -- End function
	.globl	SVC_P                           # -- Begin function SVC_P
	.p2align	5
	.type	SVC_P,@function
SVC_P:                                  # @SVC_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	ori	$a0, $zero, 5
	bltu	$a1, $a0, .LBB10_3
# %bb.1:
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB10_2:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_3:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB10_2
# %bb.4:
	ld.w	$a1, $sp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	SVC_P, .Lfunc_end10-SVC_P
                                        # -- End function
	.globl	TIXR_P                          # -- Begin function TIXR_P
	.p2align	5
	.type	TIXR_P,@function
TIXR_P:                                 # @TIXR_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 4
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 4
	ori	$a1, $zero, 10
	bgeu	$a0, $a1, .LBB11_4
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a1, %got_pc_lo12(REGISTER)
	ld.w	$a1, $s0, 4
	addi.w	$a1, $a1, 1
	bstrpick.d	$a2, $a1, 62, 39
	add.d	$a2, $a1, $a2
	lu12i.w	$a3, -4096
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	sub.w	$a1, $a1, $a2
	lu12i.w	$a2, 2048
	st.w	$a1, $s0, 4
	bne	$a1, $a2, .LBB11_6
# %bb.2:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB11_5
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB11_5
.LBB11_4:
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB11_5:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB11_6:
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	slt	$a3, $a2, $a1
	addu16i.d	$a4, $a1, -256
	addi.w	$a4, $a4, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s0, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$s1, $a3, $a1
	slt	$a1, $a2, $a0
	addu16i.d	$a2, $a0, -256
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	addi.w	$s2, $a0, 0
	bne	$s1, $s2, .LBB11_9
# %bb.7:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB11_12
# %bb.8:
	ld.w	$a1, $s0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(.L.str.11)
	addi.d	$a2, $a2, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB11_9:
	bge	$s1, $s2, .LBB11_12
# %bb.10:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB11_12
# %bb.11:
	ld.w	$a1, $s0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(.L.str.12)
	addi.d	$a2, $a2, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB11_12:                              # %.thread
	bge	$s2, $s1, .LBB11_5
# %bb.13:
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB11_5
# %bb.14:
	ld.w	$a1, $s0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$a2, $a2, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	b	.LBB11_5
.Lfunc_end11:
	.size	TIXR_P, .Lfunc_end11-TIXR_P
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Set "
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.space	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" to "
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	".\n"
	.size	.L.str.3, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Generated SVC interupt %d.\n"
	.size	.L.str.8, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Set X to "
	.size	.L.str.10, 10

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" and set CC to =.\n"
	.size	.L.str.11, 19

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" and set CC to <.\n"
	.size	.L.str.12, 19

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" and set CC to >.\n"
	.size	.L.str.13, 19

	.type	TYPE_OUT_MODE,@object           # @TYPE_OUT_MODE
	.comm	TYPE_OUT_MODE,6,1
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Set CC to =."
	.size	.Lstr, 13

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Set CC to <."
	.size	.Lstr.1, 13

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Set CC to >."
	.size	.Lstr.2, 13

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Attempted division by zero."
	.size	.Lstr.3, 28

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"X has overflowed."
	.size	.Lstr.4, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
