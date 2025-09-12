	.file	"instruct.c"
	.text
	.globl	ADD_P                           # -- Begin function ADD_P
	.p2align	5
	.type	ADD_P,@function
ADD_P:                                  # @ADD_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 24
	sltu	$a1, $zero, $a1
	masknez	$a2, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a3, $a0, 0
	lu12i.w	$a1, 2047
	ori	$a4, $a1, 4095
	move	$s0, $zero
	move	$a1, $a3
	blt	$a4, $a3, .LBB0_3
# %bb.1:
	blt	$a4, $a2, .LBB0_3
# %bb.2:
	add.w	$a1, $a2, $a3
	st.w	$a1, $a0, 0
	slt	$s0, $a4, $a1
.LBB0_3:
	lu12i.w	$a4, 2048
	slt	$a5, $a3, $a4
	slt	$a6, $a2, $a4
	beq	$a6, $a5, .LBB0_5
# %bb.4:                                # %.sink.split
	add.w	$a1, $a1, $a2
	bstrpick.d	$a5, $a1, 62, 39
	add.d	$a5, $a1, $a5
	lu12i.w	$a6, -4096
	lu32i.d	$a6, 0
	and	$a5, $a5, $a6
	sub.w	$a1, $a1, $a5
	st.w	$a1, $a0, 0
.LBB0_5:
	blt	$a3, $a4, .LBB0_8
# %bb.6:
	blt	$a2, $a4, .LBB0_8
# %bb.7:
	add.w	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 62, 39
	add.d	$a2, $a1, $a2
	lu12i.w	$a3, -4096
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	sub.w	$a1, $a1, $a2
	st.w	$a1, $a0, 0
	slt	$a0, $a1, $a4
	masknez	$a2, $s0, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s0, $a0, $a2
.LBB0_8:
	beqz	$fp, .LBB0_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB0_10:
	beqz	$s0, .LBB0_12
# %bb.11:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(SIGNAL_INTERUPT)
	jr	$t8
.LBB0_12:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	ADD_P, .Lfunc_end0-ADD_P
                                        # -- End function
	.globl	AND_P                           # -- Begin function AND_P
	.p2align	5
	.type	AND_P,@function
AND_P:                                  # @AND_P
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 24
	sltu	$a1, $zero, $a1
	masknez	$s0, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $s1, 0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 112
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112
	vld	$vr1, $sp, 16
	vseqi.w	$vr2, $vr0, 0
	vrepli.b	$vr0, -1
	vxor.v	$vr2, $vr2, $vr0
	vseqi.w	$vr1, $vr1, 0
	vxor.v	$vr1, $vr1, $vr0
	vand.v	$vr2, $vr1, $vr2
	vrepli.w	$vr1, 1
	vld	$vr3, $sp, 128
	vand.v	$vr2, $vr2, $vr1
	vld	$vr4, $sp, 32
	vst	$vr2, $sp, 112
	vseqi.w	$vr2, $vr3, 0
	vxor.v	$vr2, $vr2, $vr0
	vseqi.w	$vr3, $vr4, 0
	vxor.v	$vr3, $vr3, $vr0
	vand.v	$vr2, $vr3, $vr2
	vld	$vr3, $sp, 144
	vand.v	$vr2, $vr2, $vr1
	vld	$vr4, $sp, 48
	vst	$vr2, $sp, 128
	vseqi.w	$vr2, $vr3, 0
	vxor.v	$vr2, $vr2, $vr0
	vseqi.w	$vr3, $vr4, 0
	vxor.v	$vr3, $vr3, $vr0
	vand.v	$vr2, $vr3, $vr2
	vld	$vr3, $sp, 160
	vand.v	$vr2, $vr2, $vr1
	vld	$vr4, $sp, 64
	vst	$vr2, $sp, 144
	vseqi.w	$vr2, $vr3, 0
	vxor.v	$vr2, $vr2, $vr0
	vseqi.w	$vr3, $vr4, 0
	vxor.v	$vr3, $vr3, $vr0
	vand.v	$vr2, $vr3, $vr2
	vld	$vr3, $sp, 176
	vand.v	$vr2, $vr2, $vr1
	vld	$vr4, $sp, 80
	vst	$vr2, $sp, 160
	vseqi.w	$vr2, $vr3, 0
	vxor.v	$vr2, $vr2, $vr0
	vseqi.w	$vr3, $vr4, 0
	vxor.v	$vr3, $vr3, $vr0
	vand.v	$vr2, $vr3, $vr2
	vld	$vr3, $sp, 192
	vand.v	$vr2, $vr2, $vr1
	vld	$vr4, $sp, 96
	vst	$vr2, $sp, 176
	vseqi.w	$vr2, $vr3, 0
	vxor.v	$vr2, $vr2, $vr0
	vseqi.w	$vr3, $vr4, 0
	vxor.v	$vr0, $vr3, $vr0
	vand.v	$vr0, $vr0, $vr2
	vand.v	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 192
	addi.d	$a0, $sp, 112
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(BITS_TO_BYTE)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 0
	beqz	$fp, .LBB1_2
# %bb.1:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB1_2:
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end1:
	.size	AND_P, .Lfunc_end1-AND_P
                                        # -- End function
	.globl	COMP_P                          # -- Begin function COMP_P
	.p2align	5
	.type	COMP_P,@function
COMP_P:                                 # @COMP_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a1, $a1, %got_pc_lo12(REGISTER)
	ld.w	$a1, $a1, 0
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	slt	$a3, $a2, $a1
	addu16i.d	$a4, $a1, -256
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$a1, $a3, $a1
	addi.w	$s0, $a1, 0
	slt	$a1, $a2, $a0
	addu16i.d	$a2, $a0, -256
	addi.w	$a2, $a2, 0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	bne	$s0, $s1, .LBB2_3
# %bb.1:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB2_6
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.30)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.30)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB2_3:
	bge	$s0, $s1, .LBB2_6
# %bb.4:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB2_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %.thread
	bge	$s1, $s0, .LBB2_9
# %bb.7:
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB2_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB2_9:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	COMP_P, .Lfunc_end2-COMP_P
                                        # -- End function
	.globl	DIV_P                           # -- Begin function DIV_P
	.p2align	5
	.type	DIV_P,@function
DIV_P:                                  # @DIV_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 24
	sltu	$a1, $zero, $a1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a0, $a1, $a0
	beqz	$a0, .LBB3_6
# %bb.1:
	lu12i.w	$a1, 2047
	ori	$a5, $a1, 4095
	slt	$a3, $a5, $a0
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a2, $a1, %got_pc_lo12(REGISTER)
	ld.w	$a1, $a2, 0
	slt	$a4, $a5, $a1
	blt	$a5, $a0, .LBB3_4
# %bb.2:
	blt	$a5, $a1, .LBB3_4
# %bb.3:
	div.w	$a1, $a1, $a0
	st.w	$a1, $a2, 0
.LBB3_4:
	xori	$a5, $a4, 1
	or	$a6, $a3, $a5
	lu12i.w	$a5, 4096
	bnez	$a6, .LBB3_8
# %bb.5:                                # %.thread
	sub.w	$a1, $a5, $a1
	div.w	$a1, $a1, $a0
	b	.LBB3_13
.LBB3_6:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_15
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB3_8:
	xori	$a6, $a3, 1
	or	$a6, $a4, $a6
	beqz	$a6, .LBB3_12
# %bb.9:
	and	$a3, $a3, $a4
	bnez	$a3, .LBB3_14
.LBB3_10:
	beqz	$fp, .LBB3_15
.LBB3_11:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB3_12:
	sub.w	$a6, $a5, $a0
	div.w	$a1, $a1, $a6
.LBB3_13:                               # %.sink.split
	sub.w	$a1, $a5, $a1
	st.w	$a1, $a2, 0
	and	$a3, $a3, $a4
	beqz	$a3, .LBB3_10
.LBB3_14:
	sub.w	$a1, $a5, $a1
	sub.w	$a0, $a5, $a0
	div.w	$a1, $a1, $a0
	st.w	$a1, $a2, 0
	bnez	$fp, .LBB3_11
.LBB3_15:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	DIV_P, .Lfunc_end3-DIV_P
                                        # -- End function
	.globl	J_P                             # -- Begin function J_P
	.p2align	5
	.type	J_P,@function
J_P:                                    # @J_P
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_3
# %bb.1:
	move	$a1, $a0
	bstrpick.d	$a2, $a0, 31, 20
	lu12i.w	$a0, 4095
	beqz	$a2, .LBB4_5
# %bb.2:
	ori	$a2, $a0, 4095
	beq	$a1, $a2, .LBB4_5
.LBB4_3:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB4_8
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB4_5:
	pcalau12i	$a2, %got_pc_hi20(REGISTER)
	ld.d	$a2, $a2, %got_pc_lo12(REGISTER)
	st.w	$a1, $a2, 32
	beqz	$fp, .LBB4_8
# %bb.6:
	ori	$a0, $a0, 4095
	bne	$a1, $a0, .LBB4_9
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.12)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB4_8:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB4_9:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.Lfunc_end4:
	.size	J_P, .Lfunc_end4-J_P
                                        # -- End function
	.globl	JEQ_P                           # -- Begin function JEQ_P
	.p2align	5
	.type	JEQ_P,@function
JEQ_P:                                  # @JEQ_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CC)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_3
# %bb.1:
	beqz	$fp, .LBB5_12
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.14)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.14)
	b	.LBB5_8
.LBB5_3:
	bltz	$s0, .LBB5_6
# %bb.4:
	bstrpick.d	$a1, $s0, 31, 20
	lu12i.w	$a0, 4095
	beqz	$a1, .LBB5_9
# %bb.5:
	ori	$a1, $a0, 4095
	beq	$s0, $a1, .LBB5_9
.LBB5_6:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB5_12
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
.LBB5_8:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB5_9:
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a1, $a1, %got_pc_lo12(REGISTER)
	st.w	$s0, $a1, 32
	beqz	$fp, .LBB5_12
# %bb.10:
	ori	$a0, $a0, 4095
	bne	$s0, $a0, .LBB5_13
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.12)
	b	.LBB5_8
.LBB5_12:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB5_13:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a2, $a1, %pc_lo12(.L.str.9)
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.Lfunc_end5:
	.size	JEQ_P, .Lfunc_end5-JEQ_P
                                        # -- End function
	.globl	JGT_P                           # -- Begin function JGT_P
	.p2align	5
	.type	JGT_P,@function
JGT_P:                                  # @JGT_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CC)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB6_6
# %bb.1:
	bltz	$s0, .LBB6_4
# %bb.2:
	bstrpick.d	$a1, $s0, 31, 20
	lu12i.w	$a0, 4095
	beqz	$a1, .LBB6_9
# %bb.3:
	ori	$a1, $a0, 4095
	beq	$s0, $a1, .LBB6_9
.LBB6_4:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB6_12
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.Lstr.10)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.10)
	b	.LBB6_8
.LBB6_6:
	beqz	$fp, .LBB6_12
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.Lstr.14)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.14)
.LBB6_8:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB6_9:
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a1, $a1, %got_pc_lo12(REGISTER)
	st.w	$s0, $a1, 32
	beqz	$fp, .LBB6_12
# %bb.10:
	ori	$a0, $a0, 4095
	bne	$s0, $a0, .LBB6_13
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.12)
	b	.LBB6_8
.LBB6_12:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_13:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a2, $a1, %pc_lo12(.L.str.9)
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.Lfunc_end6:
	.size	JGT_P, .Lfunc_end6-JGT_P
                                        # -- End function
	.globl	JLT_P                           # -- Begin function JLT_P
	.p2align	5
	.type	JLT_P,@function
JLT_P:                                  # @JLT_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CC)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB7_6
# %bb.1:
	bltz	$s0, .LBB7_4
# %bb.2:
	bstrpick.d	$a1, $s0, 31, 20
	lu12i.w	$a0, 4095
	beqz	$a1, .LBB7_9
# %bb.3:
	ori	$a1, $a0, 4095
	beq	$s0, $a1, .LBB7_9
.LBB7_4:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB7_12
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.Lstr.19)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.19)
	b	.LBB7_8
.LBB7_6:
	beqz	$fp, .LBB7_12
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.Lstr.14)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.14)
.LBB7_8:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB7_9:
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a1, $a1, %got_pc_lo12(REGISTER)
	st.w	$s0, $a1, 32
	beqz	$fp, .LBB7_12
# %bb.10:
	ori	$a0, $a0, 4095
	bne	$s0, $a0, .LBB7_13
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.12)
	b	.LBB7_8
.LBB7_12:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_13:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a2, $a1, %pc_lo12(.L.str.9)
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.Lfunc_end7:
	.size	JLT_P, .Lfunc_end7-JLT_P
                                        # -- End function
	.globl	JSUB_P                          # -- Begin function JSUB_P
	.p2align	5
	.type	JSUB_P,@function
JSUB_P:                                 # @JSUB_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 20
	beqz	$a1, .LBB8_3
# %bb.1:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB8_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.15)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.15)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB8_3:
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a1, %got_pc_lo12(REGISTER)
	ld.w	$a1, $s0, 32
	st.w	$a1, $s0, 8
	st.w	$a0, $s0, 32
	beqz	$fp, .LBB8_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB8_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	JSUB_P, .Lfunc_end8-JSUB_P
                                        # -- End function
	.globl	LDA_P                           # -- Begin function LDA_P
	.p2align	5
	.type	LDA_P,@function
LDA_P:                                  # @LDA_P
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	st.w	$a1, $a0, 0
	beqz	$fp, .LBB9_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB9_2:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	LDA_P, .Lfunc_end9-LDA_P
                                        # -- End function
	.globl	LDB_P                           # -- Begin function LDB_P
	.p2align	5
	.type	LDB_P,@function
LDB_P:                                  # @LDB_P
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	st.w	$a1, $a0, 12
	beqz	$fp, .LBB10_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB10_2:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	LDB_P, .Lfunc_end10-LDB_P
                                        # -- End function
	.globl	LDCH_P                          # -- Begin function LDCH_P
	.p2align	5
	.type	LDCH_P,@function
LDCH_P:                                 # @LDCH_P
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a2, $a1, %got_pc_lo12(REGISTER)
	ld.w	$a1, $a2, 0
	bstrpick.d	$a3, $a1, 62, 55
	add.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	add.w	$a1, $a1, $a0
	st.w	$a1, $a2, 0
	beqz	$fp, .LBB11_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB11_2:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	LDCH_P, .Lfunc_end11-LDCH_P
                                        # -- End function
	.globl	LDL_P                           # -- Begin function LDL_P
	.p2align	5
	.type	LDL_P,@function
LDL_P:                                  # @LDL_P
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	st.w	$a1, $a0, 8
	beqz	$fp, .LBB12_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB12_2:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end12:
	.size	LDL_P, .Lfunc_end12-LDL_P
                                        # -- End function
	.globl	LDS_P                           # -- Begin function LDS_P
	.p2align	5
	.type	LDS_P,@function
LDS_P:                                  # @LDS_P
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	st.w	$a1, $a0, 16
	beqz	$fp, .LBB13_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB13_2:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	LDS_P, .Lfunc_end13-LDS_P
                                        # -- End function
	.globl	LDT_P                           # -- Begin function LDT_P
	.p2align	5
	.type	LDT_P,@function
LDT_P:                                  # @LDT_P
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	st.w	$a1, $a0, 20
	beqz	$fp, .LBB14_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB14_2:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	LDT_P, .Lfunc_end14-LDT_P
                                        # -- End function
	.globl	LDX_P                           # -- Begin function LDX_P
	.p2align	5
	.type	LDX_P,@function
LDX_P:                                  # @LDX_P
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	st.w	$a1, $a0, 4
	beqz	$fp, .LBB15_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB15_2:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	LDX_P, .Lfunc_end15-LDX_P
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function MUL_P
.LCPI16_0:
	.dword	0x4160000000000000              # double 8388608
.LCPI16_1:
	.dword	0x3e70000000000000              # double 5.9604644775390625E-8
	.text
	.globl	MUL_P
	.p2align	5
	.type	MUL_P,@function
MUL_P:                                  # @MUL_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 24
	sltu	$a1, $zero, $a1
	masknez	$a2, $a0, $a1
	lu12i.w	$a0, 2047
	ori	$a6, $a0, 4095
	slt	$a3, $a6, $a2
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a1, $a0, 0
	move	$a5, $zero
	slt	$a4, $a6, $a1
	blt	$a6, $a1, .LBB16_4
# %bb.1:
	blt	$a6, $a2, .LBB16_4
# %bb.2:
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a5, %pc_hi20(.LCPI16_0)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI16_0)
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fcmp.cle.d	$fcc0, $fa1, $fa0
	ori	$a5, $zero, 1
	bcnez	$fcc0, .LBB16_4
# %bb.3:
	move	$a5, $zero
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.w	$a1, $a0, 0
.LBB16_4:
	xori	$a6, $a4, 1
	or	$a6, $a3, $a6
	bnez	$a6, .LBB16_6
# %bb.5:
	lu12i.w	$a6, 4096
	sub.d	$a6, $a6, $a1
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a6, %pc_hi20(.LCPI16_1)
	fld.d	$fa1, $a6, %pc_lo12(.LCPI16_1)
	movgr2fr.w	$fa2, $a2
	b	.LBB16_8
.LBB16_6:
	xori	$a6, $a3, 1
	or	$a6, $a4, $a6
	bnez	$a6, .LBB16_10
# %bb.7:
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a6, 4096
	sub.d	$a6, $a6, $a2
	pcalau12i	$a7, %pc_hi20(.LCPI16_1)
	fld.d	$fa1, $a7, %pc_lo12(.LCPI16_1)
	movgr2fr.w	$fa2, $a6
.LBB16_8:
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa2, $fa0
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	slli.d	$a6, $a6, 24
	pcalau12i	$a7, %pc_hi20(.LCPI16_0)
	fld.d	$fa1, $a7, %pc_lo12(.LCPI16_0)
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa0
	ori	$a6, $zero, 1
	bcnez	$fcc0, .LBB16_11
# %bb.9:                                # %.thread.sink.split
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	lu12i.w	$a6, 4096
	sub.w	$a1, $a6, $a1
	st.w	$a1, $a0, 0
.LBB16_10:                              # %.thread
	move	$a6, $a5
.LBB16_11:                              # %.thread
	and	$a3, $a4, $a3
	beqz	$a3, .LBB16_14
# %bb.12:
	lu12i.w	$a3, 4096
	sub.d	$a4, $a3, $a1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	sub.d	$a2, $a3, $a2
	pcalau12i	$a3, %pc_hi20(.LCPI16_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI16_0)
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa2, $fa0
	fcmp.cle.d	$fcc0, $fa1, $fa0
	ori	$s0, $zero, 1
	bcnez	$fcc0, .LBB16_15
# %bb.13:
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.w	$a1, $a0, 0
.LBB16_14:
	move	$s0, $a6
.LBB16_15:
	beqz	$fp, .LBB16_17
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB16_17:
	beqz	$s0, .LBB16_19
# %bb.18:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(SIGNAL_INTERUPT)
	jr	$t8
.LBB16_19:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	MUL_P, .Lfunc_end16-MUL_P
                                        # -- End function
	.globl	OR_P                            # -- Begin function OR_P
	.p2align	5
	.type	OR_P,@function
OR_P:                                   # @OR_P
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 24
	sltu	$a1, $zero, $a1
	masknez	$s0, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $s1, 0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 112
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112
	vld	$vr1, $sp, 16
	vseqi.w	$vr0, $vr0, 0
	vseqi.w	$vr1, $vr1, 0
	vrepli.b	$vr2, -1
	vxor.v	$vr1, $vr1, $vr2
	vrepli.w	$vr3, 1
	vand.v	$vr1, $vr1, $vr3
	vld	$vr4, $sp, 128
	vld	$vr5, $sp, 32
	vbitsel.v	$vr0, $vr3, $vr1, $vr0
	vst	$vr0, $sp, 112
	vseqi.w	$vr0, $vr4, 0
	vseqi.w	$vr1, $vr5, 0
	vxor.v	$vr1, $vr1, $vr2
	vand.v	$vr1, $vr1, $vr3
	vld	$vr4, $sp, 144
	vld	$vr5, $sp, 48
	vbitsel.v	$vr0, $vr3, $vr1, $vr0
	vst	$vr0, $sp, 128
	vseqi.w	$vr0, $vr4, 0
	vseqi.w	$vr1, $vr5, 0
	vxor.v	$vr1, $vr1, $vr2
	vand.v	$vr1, $vr1, $vr3
	vld	$vr4, $sp, 160
	vld	$vr5, $sp, 64
	vbitsel.v	$vr0, $vr3, $vr1, $vr0
	vst	$vr0, $sp, 144
	vseqi.w	$vr0, $vr4, 0
	vseqi.w	$vr1, $vr5, 0
	vxor.v	$vr1, $vr1, $vr2
	vand.v	$vr1, $vr1, $vr3
	vld	$vr4, $sp, 176
	vld	$vr5, $sp, 80
	vbitsel.v	$vr0, $vr3, $vr1, $vr0
	vst	$vr0, $sp, 160
	vseqi.w	$vr0, $vr4, 0
	vseqi.w	$vr1, $vr5, 0
	vxor.v	$vr1, $vr1, $vr2
	vand.v	$vr1, $vr1, $vr3
	vld	$vr4, $sp, 192
	vld	$vr5, $sp, 96
	vbitsel.v	$vr0, $vr3, $vr1, $vr0
	vst	$vr0, $sp, 176
	vseqi.w	$vr0, $vr4, 0
	vseqi.w	$vr1, $vr5, 0
	vxor.v	$vr1, $vr1, $vr2
	vand.v	$vr1, $vr1, $vr3
	vbitsel.v	$vr0, $vr3, $vr1, $vr0
	vst	$vr0, $sp, 192
	addi.d	$a0, $sp, 112
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(BITS_TO_BYTE)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 0
	beqz	$fp, .LBB17_2
# %bb.1:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB17_2:
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end17:
	.size	OR_P, .Lfunc_end17-OR_P
                                        # -- End function
	.globl	RD_P                            # -- Begin function RD_P
	.p2align	5
	.type	RD_P,@function
RD_P:                                   # @RD_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 256
	bgeu	$a0, $a2, .LBB18_6
# %bb.1:
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(DEVICE)
	ld.d	$a0, $a0, %got_pc_lo12(DEVICE)
	alsl.d	$s0, $a1, $a0, 4
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB18_6
# %bb.2:
	ori	$a2, $zero, 127
	bltu	$a2, $a1, .LBB18_6
# %bb.3:
	ld.w	$a1, $s0, 0
	beqz	$a1, .LBB18_6
# %bb.4:
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a2, $a1, %got_pc_lo12(REGISTER)
	ld.w	$a1, $a2, 0
	bstrpick.d	$a3, $a1, 62, 55
	add.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	add.w	$a1, $a1, $a0
	st.w	$a1, $a2, 0
	st.w	$zero, $s0, 0
	beqz	$fp, .LBB18_8
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB18_6:
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB18_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.Lstr.17)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.17)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB18_8:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end18:
	.size	RD_P, .Lfunc_end18-RD_P
                                        # -- End function
	.globl	SUB_P                           # -- Begin function SUB_P
	.p2align	5
	.type	SUB_P,@function
SUB_P:                                  # @SUB_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 24
	sltu	$a1, $zero, $a1
	masknez	$a2, $a0, $a1
	lu12i.w	$a0, 2047
	ori	$a6, $a0, 4095
	slt	$a3, $a6, $a2
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a1, $a0, 0
	slt	$a4, $a6, $a1
	blt	$a6, $a1, .LBB19_3
# %bb.1:
	blt	$a6, $a2, .LBB19_3
# %bb.2:
	sub.w	$a1, $a1, $a2
	st.w	$a1, $a0, 0
	bltz	$a1, .LBB19_5
.LBB19_3:
	xori	$a5, $a4, 1
	or	$a7, $a3, $a5
	lu12i.w	$a5, -4096
	bnez	$a7, .LBB19_6
.LBB19_4:                               # %.thread
	sub.w	$a1, $a1, $a2
	addu16i.d	$a1, $a1, 256
	addi.w	$a6, $a1, 0
	bstrpick.d	$a6, $a6, 62, 39
	add.d	$a6, $a1, $a6
	move	$a7, $a5
	lu32i.d	$a7, 0
	and	$a6, $a6, $a7
	sub.w	$a1, $a1, $a6
	st.w	$a1, $a0, 0
	lu12i.w	$a6, 2048
	slt	$s0, $a1, $a6
	and	$a3, $a4, $a3
	bnez	$a3, .LBB19_9
	b	.LBB19_10
.LBB19_5:
	addu16i.d	$a5, $a1, 256
	addi.w	$a1, $a5, 0
	st.w	$a5, $a0, 0
	xori	$a5, $a4, 1
	or	$a7, $a3, $a5
	lu12i.w	$a5, -4096
	beqz	$a7, .LBB19_4
.LBB19_6:
	xori	$a7, $a3, 1
	or	$a7, $a4, $a7
	bnez	$a7, .LBB19_8
# %bb.7:
	sub.d	$a1, $a1, $a2
	addu16i.d	$a7, $a1, 256
	addi.w	$a1, $a7, 0
	st.w	$a7, $a0, 0
	slt	$s0, $a6, $a1
	and	$a3, $a4, $a3
	bnez	$a3, .LBB19_9
	b	.LBB19_10
.LBB19_8:
	move	$s0, $zero
	and	$a3, $a4, $a3
	beqz	$a3, .LBB19_10
.LBB19_9:
	sub.w	$a1, $a1, $a2
	addu16i.d	$a1, $a1, 256
	addi.w	$a2, $a1, 0
	bstrpick.d	$a2, $a2, 62, 39
	add.d	$a2, $a1, $a2
	lu32i.d	$a5, 0
	and	$a2, $a2, $a5
	sub.w	$a1, $a1, $a2
	st.w	$a1, $a0, 0
.LBB19_10:
	beqz	$fp, .LBB19_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB19_12:
	beqz	$s0, .LBB19_14
# %bb.13:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(SIGNAL_INTERUPT)
	jr	$t8
.LBB19_14:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end19:
	.size	SUB_P, .Lfunc_end19-SUB_P
                                        # -- End function
	.globl	RSUB_P                          # -- Begin function RSUB_P
	.p2align	5
	.type	RSUB_P,@function
RSUB_P:                                 # @RSUB_P
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a1, $a0, 8
	bltz	$a1, .LBB20_3
# %bb.1:
	bstrpick.d	$a3, $a1, 31, 20
	lu12i.w	$a2, 4095
	beqz	$a3, .LBB20_5
# %bb.2:
	ori	$a3, $a2, 4095
	beq	$a1, $a3, .LBB20_5
.LBB20_3:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB20_8
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.Lstr.19)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.19)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB20_5:
	st.w	$a1, $a0, 32
	beqz	$fp, .LBB20_8
# %bb.6:
	ori	$a0, $a2, 4095
	bne	$a1, $a0, .LBB20_9
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.Lstr.18)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.18)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB20_8:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB20_9:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.Lfunc_end20:
	.size	RSUB_P, .Lfunc_end20-RSUB_P
                                        # -- End function
	.globl	STA_P                           # -- Begin function STA_P
	.p2align	5
	.type	STA_P,@function
STA_P:                                  # @STA_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4094
	blt	$a0, $a1, .LBB21_3
# %bb.1:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB21_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.20)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.20)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB21_3:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $s1, 0
	bstrpick.d	$a1, $a0, 62, 47
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(MEMORY)
	ld.d	$s2, $a1, %got_pc_lo12(MEMORY)
	ld.d	$a1, $s2, 0
	stx.b	$a0, $a1, $s0
	ld.d	$a0, $s2, 0
	ld.w	$s3, $s1, 0
	ldx.b	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 16
	sub.w	$a0, $s3, $a0
	bstrpick.d	$a1, $a0, 62, 55
	ld.d	$a2, $s2, 0
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 8
	addi.d	$a1, $s0, 1
	stx.b	$a0, $a2, $a1
	ld.d	$a0, $s2, 0
	ld.b	$s3, $s1, 0
	ldx.b	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s0
	st.b	$s3, $a0, 2
	beqz	$fp, .LBB21_5
# %bb.4:
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a1, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB21_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end21:
	.size	STA_P, .Lfunc_end21-STA_P
                                        # -- End function
	.globl	STB_P                           # -- Begin function STB_P
	.p2align	5
	.type	STB_P,@function
STB_P:                                  # @STB_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4094
	blt	$a0, $a1, .LBB22_3
# %bb.1:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB22_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.21)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.21)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB22_3:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $s1, 12
	bstrpick.d	$a1, $a0, 62, 47
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(MEMORY)
	ld.d	$s2, $a1, %got_pc_lo12(MEMORY)
	ld.d	$a1, $s2, 0
	stx.b	$a0, $a1, $s0
	ld.d	$a0, $s2, 0
	ld.w	$s3, $s1, 12
	ldx.b	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 16
	sub.w	$a0, $s3, $a0
	bstrpick.d	$a1, $a0, 62, 55
	ld.d	$a2, $s2, 0
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 8
	addi.d	$a1, $s0, 1
	stx.b	$a0, $a2, $a1
	ld.d	$a0, $s2, 0
	ld.b	$s3, $s1, 12
	ldx.b	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s0
	st.b	$s3, $a0, 2
	beqz	$fp, .LBB22_5
# %bb.4:
	ld.w	$a1, $s1, 12
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a1, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB22_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end22:
	.size	STB_P, .Lfunc_end22-STB_P
                                        # -- End function
	.globl	STCH_P                          # -- Begin function STCH_P
	.p2align	5
	.type	STCH_P,@function
STCH_P:                                 # @STCH_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ori	$a1, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	ld.b	$a1, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(MEMORY)
	ld.d	$a2, $a2, %got_pc_lo12(MEMORY)
	ld.d	$a2, $a2, 0
	stx.b	$a1, $a2, $fp
	beqz	$s0, .LBB23_2
# %bb.1:
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB23_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end23:
	.size	STCH_P, .Lfunc_end23-STCH_P
                                        # -- End function
	.globl	STI_P                           # -- Begin function STI_P
	.p2align	5
	.type	STI_P,@function
STI_P:                                  # @STI_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(SUPERVISOR_MODE)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB24_4
# %bb.1:
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4094
	blt	$a0, $a1, .LBB24_7
# %bb.2:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB24_9
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.Lstr.23)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.23)
	b	.LBB24_6
.LBB24_4:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB24_9
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.Lstr.22)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.22)
.LBB24_6:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB24_7:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(INTERVAL_TIMER)
	ld.d	$s1, $a0, %got_pc_lo12(INTERVAL_TIMER)
	ld.w	$a0, $s1, 0
	bstrpick.d	$a1, $a0, 62, 47
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(MEMORY)
	ld.d	$s2, $a1, %got_pc_lo12(MEMORY)
	ld.d	$a1, $s2, 0
	stx.b	$a0, $a1, $s0
	ld.d	$a0, $s2, 0
	ld.w	$s3, $s1, 0
	ldx.b	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 16
	sub.w	$a0, $s3, $a0
	bstrpick.d	$a1, $a0, 62, 55
	ld.d	$a2, $s2, 0
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 8
	addi.d	$a1, $s0, 1
	stx.b	$a0, $a2, $a1
	ld.d	$a0, $s2, 0
	ld.b	$s3, $s1, 0
	ldx.b	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s0
	st.b	$s3, $a0, 2
	beqz	$fp, .LBB24_9
# %bb.8:
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a1, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB24_9:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	STI_P, .Lfunc_end24-STI_P
                                        # -- End function
	.globl	STL_P                           # -- Begin function STL_P
	.p2align	5
	.type	STL_P,@function
STL_P:                                  # @STL_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4094
	blt	$a0, $a1, .LBB25_3
# %bb.1:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB25_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.24)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.24)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB25_3:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $s1, 8
	bstrpick.d	$a1, $a0, 62, 47
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(MEMORY)
	ld.d	$s2, $a1, %got_pc_lo12(MEMORY)
	ld.d	$a1, $s2, 0
	stx.b	$a0, $a1, $s0
	ld.d	$a0, $s2, 0
	ld.w	$s3, $s1, 8
	ldx.b	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 16
	sub.w	$a0, $s3, $a0
	bstrpick.d	$a1, $a0, 62, 55
	ld.d	$a2, $s2, 0
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 8
	addi.d	$a1, $s0, 1
	stx.b	$a0, $a2, $a1
	ld.d	$a0, $s2, 0
	ld.b	$s3, $s1, 8
	ldx.b	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s0
	st.b	$s3, $a0, 2
	beqz	$fp, .LBB25_5
# %bb.4:
	ld.w	$a1, $s1, 8
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a1, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB25_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end25:
	.size	STL_P, .Lfunc_end25-STL_P
                                        # -- End function
	.globl	STS_P                           # -- Begin function STS_P
	.p2align	5
	.type	STS_P,@function
STS_P:                                  # @STS_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4094
	blt	$a0, $a1, .LBB26_3
# %bb.1:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB26_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.25)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.25)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB26_3:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $s1, 16
	bstrpick.d	$a1, $a0, 62, 47
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(MEMORY)
	ld.d	$s2, $a1, %got_pc_lo12(MEMORY)
	ld.d	$a1, $s2, 0
	stx.b	$a0, $a1, $s0
	ld.d	$a0, $s2, 0
	ld.w	$s3, $s1, 16
	ldx.b	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 16
	sub.w	$a0, $s3, $a0
	bstrpick.d	$a1, $a0, 62, 55
	ld.d	$a2, $s2, 0
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 8
	addi.d	$a1, $s0, 1
	stx.b	$a0, $a2, $a1
	ld.d	$a0, $s2, 0
	ld.b	$s3, $s1, 16
	ldx.b	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s0
	st.b	$s3, $a0, 2
	beqz	$fp, .LBB26_5
# %bb.4:
	ld.w	$a1, $s1, 16
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a1, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB26_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end26:
	.size	STS_P, .Lfunc_end26-STS_P
                                        # -- End function
	.globl	STSW_P                          # -- Begin function STSW_P
	.p2align	5
	.type	STSW_P,@function
STSW_P:                                 # @STSW_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(SUPERVISOR_MODE)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_4
# %bb.1:
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4094
	blt	$a0, $a1, .LBB27_7
# %bb.2:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB27_9
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.Lstr.27)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.27)
	b	.LBB27_6
.LBB27_4:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB27_9
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.Lstr.26)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.26)
.LBB27_6:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB27_7:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $s1, 36
	bstrpick.d	$a1, $a0, 62, 47
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(MEMORY)
	ld.d	$s2, $a1, %got_pc_lo12(MEMORY)
	ld.d	$a1, $s2, 0
	stx.b	$a0, $a1, $s0
	ld.d	$a0, $s2, 0
	ld.w	$s3, $s1, 36
	ldx.b	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 16
	sub.w	$a0, $s3, $a0
	bstrpick.d	$a1, $a0, 62, 55
	ld.d	$a2, $s2, 0
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 8
	addi.d	$a1, $s0, 1
	stx.b	$a0, $a2, $a1
	ld.d	$a0, $s2, 0
	ld.b	$s3, $s1, 36
	ldx.b	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s0
	st.b	$s3, $a0, 2
	beqz	$fp, .LBB27_9
# %bb.8:
	ld.w	$a1, $s1, 36
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a1, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB27_9:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end27:
	.size	STSW_P, .Lfunc_end27-STSW_P
                                        # -- End function
	.globl	STT_P                           # -- Begin function STT_P
	.p2align	5
	.type	STT_P,@function
STT_P:                                  # @STT_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4094
	blt	$a0, $a1, .LBB28_3
# %bb.1:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB28_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.28)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.28)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB28_3:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $s1, 20
	bstrpick.d	$a1, $a0, 62, 47
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(MEMORY)
	ld.d	$s2, $a1, %got_pc_lo12(MEMORY)
	ld.d	$a1, $s2, 0
	stx.b	$a0, $a1, $s0
	ld.d	$a0, $s2, 0
	ld.w	$s3, $s1, 20
	ldx.b	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 16
	sub.w	$a0, $s3, $a0
	bstrpick.d	$a1, $a0, 62, 55
	ld.d	$a2, $s2, 0
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 8
	addi.d	$a1, $s0, 1
	stx.b	$a0, $a2, $a1
	ld.d	$a0, $s2, 0
	ld.b	$s3, $s1, 20
	ldx.b	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s0
	st.b	$s3, $a0, 2
	beqz	$fp, .LBB28_5
# %bb.4:
	ld.w	$a1, $s1, 20
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a1, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB28_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end28:
	.size	STT_P, .Lfunc_end28-STT_P
                                        # -- End function
	.globl	STX_P                           # -- Begin function STX_P
	.p2align	5
	.type	STX_P,@function
STX_P:                                  # @STX_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4094
	blt	$a0, $a1, .LBB29_3
# %bb.1:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB29_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.29)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.29)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB29_3:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $s1, 4
	bstrpick.d	$a1, $a0, 62, 47
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(MEMORY)
	ld.d	$s2, $a1, %got_pc_lo12(MEMORY)
	ld.d	$a1, $s2, 0
	stx.b	$a0, $a1, $s0
	ld.d	$a0, $s2, 0
	ld.w	$s3, $s1, 4
	ldx.b	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 16
	sub.w	$a0, $s3, $a0
	bstrpick.d	$a1, $a0, 62, 55
	ld.d	$a2, $s2, 0
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 8
	addi.d	$a1, $s0, 1
	stx.b	$a0, $a2, $a1
	ld.d	$a0, $s2, 0
	ld.b	$s3, $s1, 4
	ldx.b	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s0
	st.b	$s3, $a0, 2
	beqz	$fp, .LBB29_5
# %bb.4:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	move	$a1, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB29_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end29:
	.size	STX_P, .Lfunc_end29-STX_P
                                        # -- End function
	.globl	TD_P                            # -- Begin function TD_P
	.p2align	5
	.type	TD_P,@function
TD_P:                                   # @TD_P
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 256
	bltu	$a0, $a1, .LBB30_3
# %bb.1:
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB30_9
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.31)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.31)
	b	.LBB30_6
.LBB30_3:
	slli.d	$a1, $a0, 4
	pcalau12i	$a2, %got_pc_hi20(DEVICE)
	ld.d	$a2, $a2, %got_pc_lo12(DEVICE)
	ldx.w	$a1, $a2, $a1
	beqz	$a1, .LBB30_7
# %bb.4:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB30_9
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.Lstr.30)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.30)
.LBB30_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB30_7:
	move	$s0, $a0
	pcaddu18i	$ra, %call36(OPEN_DEVICE)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB30_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a2, $a1, %pc_lo12(.L.str.39)
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB30_9:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end30:
	.size	TD_P, .Lfunc_end30-TD_P
                                        # -- End function
	.globl	TIX_P                           # -- Begin function TIX_P
	.p2align	5
	.type	TIX_P,@function
TIX_P:                                  # @TIX_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
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
	bne	$a1, $a2, .LBB31_3
# %bb.1:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB31_12
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.32)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.32)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB31_3:
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	slt	$a3, $a2, $a1
	addu16i.d	$a4, $a1, -256
	addi.w	$a4, $a4, 0
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$s1, $a3, $a1
	slt	$a1, $a2, $a0
	addu16i.d	$a2, $a0, -256
	addi.w	$a2, $a2, 0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	bne	$s1, $s2, .LBB31_6
# %bb.4:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB31_9
# %bb.5:
	ld.w	$a1, $s0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a2, %pc_hi20(.L.str.41)
	addi.d	$a2, $a2, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB31_6:
	bge	$s1, $s2, .LBB31_9
# %bb.7:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB31_9
# %bb.8:
	ld.w	$a1, $s0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a2, %pc_hi20(.L.str.42)
	addi.d	$a2, $a2, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB31_9:                               # %.thread
	bge	$s2, $s1, .LBB31_12
# %bb.10:
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB31_12
# %bb.11:
	ld.w	$a1, $s0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a2, %pc_hi20(.L.str.43)
	addi.d	$a2, $a2, %pc_lo12(.L.str.43)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB31_12:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end31:
	.size	TIX_P, .Lfunc_end31-TIX_P
                                        # -- End function
	.globl	WD_P                            # -- Begin function WD_P
	.p2align	5
	.type	WD_P,@function
WD_P:                                   # @WD_P
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(FORMAT3_4)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 256
	bgeu	$a0, $a1, .LBB32_7
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(DEVICE)
	ld.d	$a1, $a1, %got_pc_lo12(DEVICE)
	alsl.d	$s2, $a0, $a1, 4
	ld.d	$a1, $s2, 8
	beqz	$a1, .LBB32_7
# %bb.2:
	ori	$a2, $zero, 128
	bltu	$a0, $a2, .LBB32_7
# %bb.3:
	ld.w	$a2, $s2, 0
	beqz	$a2, .LBB32_7
# %bb.4:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $a0, 0
	bstrpick.d	$a2, $a0, 62, 55
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a2, $a2, 8
	sub.w	$s1, $a0, $a2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB32_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a2, $a1, %pc_lo12(.L.str.47)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a2, $a1, %pc_lo12(.L.str.9)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB32_6:
	st.w	$zero, $s2, 0
	b	.LBB32_9
.LBB32_7:
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB32_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.Lstr.34)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.34)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB32_9:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end32:
	.size	WD_P, .Lfunc_end32-WD_P
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Set A to "
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	".\n"
	.size	.L.str.1, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Jump to "
	.size	.L.str.8, 9

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\n"
	.size	.L.str.9, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Put "
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	" into L and jump to "
	.size	.L.str.16, 21

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.space	1
	.size	.L.str.17, 1

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Set B to "
	.size	.L.str.18, 10

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Set L to "
	.size	.L.str.19, 10

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Set S to "
	.size	.L.str.20, 10

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Set T to "
	.size	.L.str.21, 10

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Set X to "
	.size	.L.str.22, 10

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"RSUB to "
	.size	.L.str.25, 9

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	" into "
	.size	.L.str.27, 7

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Set CC to <. Marked Device "
	.size	.L.str.38, 28

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	" as in use.\n"
	.size	.L.str.39, 13

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	" and set CC to =.\n"
	.size	.L.str.41, 19

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	" and set CC to <.\n"
	.size	.L.str.42, 19

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	" and set CC to >.\n"
	.size	.L.str.43, 19

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Wrote ASCII char "
	.size	.L.str.46, 18

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	" to device "
	.size	.L.str.47, 12

	.type	TYPE_OUT_MODE,@object           # @TYPE_OUT_MODE
	.comm	TYPE_OUT_MODE,6,1
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

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"J m, m is an illegal address."
	.size	.Lstr.5, 30

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"JEQ m, m is an illegal address."
	.size	.Lstr.7, 32

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"JGT m, m is an illegal address."
	.size	.Lstr.10, 32

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"Returning to Operating System."
	.size	.Lstr.12, 31

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"No action taken."
	.size	.Lstr.14, 17

	.type	.Lstr.15,@object                # @str.15
.Lstr.15:
	.asciz	"JSUB m, m is an illegal address."
	.size	.Lstr.15, 33

	.type	.Lstr.17,@object                # @str.17
.Lstr.17:
	.asciz	"RD illegal device."
	.size	.Lstr.17, 19

	.type	.Lstr.18,@object                # @str.18
.Lstr.18:
	.asciz	"RSUB to Operating System."
	.size	.Lstr.18, 26

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	"JLT m, m is an illegal address."
	.size	.Lstr.19, 32

	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	"STA m, m is an illegal address."
	.size	.Lstr.20, 32

	.type	.Lstr.21,@object                # @str.21
.Lstr.21:
	.asciz	"STB m, m is an illegal address."
	.size	.Lstr.21, 32

	.type	.Lstr.22,@object                # @str.22
.Lstr.22:
	.asciz	"STI is a privileged instruction."
	.size	.Lstr.22, 33

	.type	.Lstr.23,@object                # @str.23
.Lstr.23:
	.asciz	"STI m, m is an illegal address."
	.size	.Lstr.23, 32

	.type	.Lstr.24,@object                # @str.24
.Lstr.24:
	.asciz	"STL m, m is an illegal address."
	.size	.Lstr.24, 32

	.type	.Lstr.25,@object                # @str.25
.Lstr.25:
	.asciz	"STS m, m is an illegal address."
	.size	.Lstr.25, 32

	.type	.Lstr.26,@object                # @str.26
.Lstr.26:
	.asciz	"STSW is a privileged instruction."
	.size	.Lstr.26, 34

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"STSW m, m is an illegal address."
	.size	.Lstr.27, 33

	.type	.Lstr.28,@object                # @str.28
.Lstr.28:
	.asciz	"STT m, m is an illegal address."
	.size	.Lstr.28, 32

	.type	.Lstr.29,@object                # @str.29
.Lstr.29:
	.asciz	"STX m, m is an illegal address."
	.size	.Lstr.29, 32

	.type	.Lstr.30,@object                # @str.30
.Lstr.30:
	.asciz	"Set CC to =."
	.size	.Lstr.30, 13

	.type	.Lstr.31,@object                # @str.31
.Lstr.31:
	.asciz	"TD illegal device."
	.size	.Lstr.31, 19

	.type	.Lstr.32,@object                # @str.32
.Lstr.32:
	.asciz	"X has overflowed."
	.size	.Lstr.32, 18

	.type	.Lstr.34,@object                # @str.34
.Lstr.34:
	.asciz	"WD illegal device."
	.size	.Lstr.34, 19

	.section	".note.GNU-stack","",@progbits
	.addrsig
