	.file	"dp_dec.c"
	.text
	.globl	unpc_block                      # -- Begin function unpc_block
	.p2align	5
	.type	unpc_block,@function
unpc_block:                             # @unpc_block
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
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	beqz	$a4, .LBB0_5
# %bb.1:
	ori	$t0, $zero, 32
	ori	$t1, $zero, 31
	sub.d	$a5, $t0, $a5
	bne	$a4, $t1, .LBB0_8
# %bb.2:                                # %.preheader517
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB0_69
# %bb.3:                                # %.lr.ph.preheader
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	add.d	$a3, $a3, $a7
	sll.w	$a3, $a3, $a5
	sra.w	$a7, $a3, $a5
	st.w	$a7, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_4
	b	.LBB0_69
.LBB0_5:
	beq	$a0, $a1, .LBB0_69
# %bb.6:
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB0_69
# %bb.7:
	addi.d	$a3, $a1, 4
	addi.d	$a1, $a0, 4
	slli.d	$a0, $a2, 2
	addi.d	$a2, $a0, -4
	move	$a0, $a3
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
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.LBB0_8:                                # %.preheader516
	addi.d	$a7, $a6, -1
	ori	$t0, $zero, 1
	addi.w	$t7, $a4, 1
	blez	$a4, .LBB0_11
# %bb.9:                                # %.lr.ph523.preheader
	bstrpick.d	$t4, $t7, 31, 0
	ld.w	$t3, $a1, 0
	addi.d	$t1, $a0, 4
	addi.d	$t2, $a1, 4
	addi.d	$t4, $t4, -1
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph523
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $t1, 0
	add.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a5
	sra.w	$t3, $t3, $a5
	st.w	$t3, $t2, 0
	addi.d	$t1, $t1, 4
	addi.d	$t4, $t4, -1
	addi.d	$t2, $t2, 4
	bnez	$t4, .LBB0_10
.LBB0_11:                               # %._crit_edge
	ori	$t1, $zero, 4
	sll.w	$a7, $t0, $a7
	beq	$a4, $t1, .LBB0_35
# %bb.12:                               # %._crit_edge
	ori	$t0, $zero, 8
	bne	$a4, $t0, .LBB0_49
# %bb.13:
	ld.hu	$a4, $a3, 0
	ld.hu	$t0, $a3, 2
	ld.hu	$t1, $a3, 4
	ld.hu	$t2, $a3, 6
	ld.hu	$t6, $a3, 8
	ld.hu	$t5, $a3, 10
	ld.hu	$t4, $a3, 12
	ld.hu	$t3, $a3, 14
	ori	$t8, $zero, 10
	blt	$a2, $t8, .LBB0_34
# %bb.14:                               # %.lr.ph534.preheader
	ld.w	$t8, $a1, 32
	slli.d	$t7, $t7, 2
	sub.d	$t7, $zero, $t7
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 36
	addi.d	$a0, $a0, 36
	addi.d	$a2, $a2, -9
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=1
	bltz	$s7, .LBB0_26
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	beqz	$a2, .LBB0_34
.LBB0_17:                               # %.lr.ph534
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$s7, $a1, $t7
	ld.w	$s0, $a1, -8
	ld.w	$s1, $a1, -12
	ld.w	$s2, $a1, -16
	sub.w	$fp, $s7, $t8
	sub.w	$s0, $s7, $s0
	sub.w	$s1, $s7, $s1
	sub.w	$s2, $s7, $s2
	ld.w	$t8, $a1, -20
	ld.w	$s4, $a1, -24
	ld.w	$s5, $a1, -28
	ld.w	$s6, $a1, -32
	sub.w	$s3, $s7, $t8
	sub.w	$s4, $s7, $s4
	sub.w	$s5, $s7, $s5
	sub.w	$s6, $s7, $s6
	ext.w.h	$t8, $a4
	ext.w.h	$s8, $t0
	ext.w.h	$ra, $t1
	mul.d	$t8, $fp, $t8
	mul.d	$s8, $s0, $s8
	add.d	$t8, $s8, $t8
	ext.w.h	$s8, $t2
	mul.d	$ra, $s1, $ra
	add.d	$t8, $t8, $ra
	ext.w.h	$ra, $t6
	mul.d	$s8, $s2, $s8
	add.d	$t8, $t8, $s8
	ext.w.h	$s8, $t5
	mul.d	$ra, $s3, $ra
	add.d	$t8, $t8, $ra
	ext.w.h	$ra, $t4
	mul.d	$s8, $s4, $s8
	add.d	$t8, $t8, $s8
	ext.w.h	$s8, $t3
	mul.d	$ra, $s5, $ra
	mul.d	$t7, $s6, $s8
	add.d	$t8, $t8, $ra
	ld.w	$s8, $a0, 0
	add.d	$t7, $t8, $t7
	sub.d	$t7, $a7, $t7
	sra.w	$t7, $t7, $a6
	slt	$t8, $zero, $s8
	add.d	$s7, $s8, $s7
	add.d	$t7, $s7, $t7
	srai.d	$s7, $s8, 31
	or	$ra, $s7, $t8
	sll.w	$t7, $t7, $a5
	sra.w	$t8, $t7, $a5
	st.w	$t8, $a1, 0
	blez	$ra, .LBB0_15
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s6
	srai.d	$s7, $s6, 31
	or	$t7, $s7, $t7
	mul.d	$s6, $t7, $s6
	sra.w	$s6, $s6, $a6
	sub.w	$s6, $s8, $s6
	sub.d	$t3, $t3, $t7
	blez	$s6, .LBB0_16
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s5
	srai.d	$s7, $s5, 31
	or	$t7, $s7, $t7
	mul.d	$s5, $t7, $s5
	sra.w	$s5, $s5, $a6
	slli.d	$s5, $s5, 1
	sub.w	$s5, $s6, $s5
	sub.d	$t4, $t4, $t7
	blez	$s5, .LBB0_16
# %bb.20:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s4
	srai.d	$s6, $s4, 31
	or	$t7, $s6, $t7
	mul.d	$s4, $t7, $s4
	sra.w	$s4, $s4, $a6
	alsl.d	$s4, $s4, $s4, 1
	sub.w	$s4, $s5, $s4
	sub.d	$t5, $t5, $t7
	blez	$s4, .LBB0_16
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s3
	srai.d	$s5, $s3, 31
	or	$t7, $s5, $t7
	mul.d	$s3, $t7, $s3
	sra.w	$s3, $s3, $a6
	slli.d	$s3, $s3, 2
	sub.w	$s3, $s4, $s3
	sub.d	$t6, $t6, $t7
	blez	$s3, .LBB0_16
# %bb.22:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s2
	srai.d	$s4, $s2, 31
	or	$t7, $s4, $t7
	mul.d	$s2, $t7, $s2
	sra.w	$s2, $s2, $a6
	alsl.d	$s2, $s2, $s2, 2
	sub.w	$s2, $s3, $s2
	sub.d	$t2, $t2, $t7
	blez	$s2, .LBB0_16
# %bb.23:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s1
	srai.d	$s3, $s1, 31
	or	$t7, $s3, $t7
	mul.d	$s1, $t7, $s1
	sra.w	$s1, $s1, $a6
	addi.d	$s3, $zero, -6
	mul.d	$s1, $s1, $s3
	add.w	$s1, $s2, $s1
	sub.d	$t1, $t1, $t7
	blez	$s1, .LBB0_16
# %bb.24:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s0
	srai.d	$s2, $s0, 31
	or	$t7, $s2, $t7
	mul.d	$s0, $t7, $s0
	sra.w	$s0, $s0, $a6
	slli.d	$s2, $s0, 3
	sub.d	$s0, $s0, $s2
	add.w	$s0, $s1, $s0
	sub.d	$t0, $t0, $t7
	blez	$s0, .LBB0_16
# %bb.25:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $fp
	srai.d	$fp, $fp, 31
	or	$t7, $fp, $t7
	sub.d	$a4, $a4, $t7
	b	.LBB0_16
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s6
	srai.d	$s7, $s6, 31
	or	$t7, $s7, $t7
	mul.d	$s6, $s6, $t7
	sub.d	$s6, $zero, $s6
	sra.w	$s6, $s6, $a6
	sub.w	$s6, $s8, $s6
	add.d	$t3, $t3, $t7
	bgez	$s6, .LBB0_16
# %bb.27:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s5
	srai.d	$s7, $s5, 31
	or	$t7, $s7, $t7
	mul.d	$s5, $s5, $t7
	sub.d	$s5, $zero, $s5
	sra.w	$s5, $s5, $a6
	slli.d	$s5, $s5, 1
	sub.w	$s5, $s6, $s5
	add.d	$t4, $t4, $t7
	bgez	$s5, .LBB0_16
# %bb.28:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s4
	srai.d	$s6, $s4, 31
	or	$t7, $s6, $t7
	mul.d	$s4, $s4, $t7
	sub.d	$s4, $zero, $s4
	sra.w	$s4, $s4, $a6
	alsl.d	$s4, $s4, $s4, 1
	sub.w	$s4, $s5, $s4
	add.d	$t5, $t5, $t7
	bgez	$s4, .LBB0_16
# %bb.29:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s3
	srai.d	$s5, $s3, 31
	or	$t7, $s5, $t7
	mul.d	$s3, $s3, $t7
	sub.d	$s3, $zero, $s3
	sra.w	$s3, $s3, $a6
	slli.d	$s3, $s3, 2
	sub.w	$s3, $s4, $s3
	add.d	$t6, $t6, $t7
	bgez	$s3, .LBB0_16
# %bb.30:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s2
	srai.d	$s4, $s2, 31
	or	$t7, $s4, $t7
	mul.d	$s2, $s2, $t7
	sub.d	$s2, $zero, $s2
	sra.w	$s2, $s2, $a6
	alsl.d	$s2, $s2, $s2, 2
	sub.w	$s2, $s3, $s2
	add.d	$t2, $t2, $t7
	bgez	$s2, .LBB0_16
# %bb.31:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s1
	srai.d	$s3, $s1, 31
	or	$t7, $s3, $t7
	mul.d	$s1, $s1, $t7
	sub.d	$s1, $zero, $s1
	sra.w	$s1, $s1, $a6
	addi.d	$s3, $zero, -6
	mul.d	$s1, $s1, $s3
	add.w	$s1, $s2, $s1
	add.d	$t1, $t1, $t7
	bgez	$s1, .LBB0_16
# %bb.32:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s0
	srai.d	$s2, $s0, 31
	or	$t7, $s2, $t7
	mul.d	$s0, $s0, $t7
	sub.d	$s0, $zero, $s0
	sra.w	$s0, $s0, $a6
	slli.d	$s2, $s0, 3
	sub.d	$s0, $s0, $s2
	add.w	$s0, $s1, $s0
	add.d	$t0, $t0, $t7
	bgez	$s0, .LBB0_16
# %bb.33:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $fp
	srai.d	$fp, $fp, 31
	or	$t7, $fp, $t7
	add.d	$a4, $a4, $t7
	b	.LBB0_16
.LBB0_34:                               # %._crit_edge535
	st.h	$a4, $a3, 0
	st.h	$t0, $a3, 2
	st.h	$t1, $a3, 4
	st.h	$t2, $a3, 6
	st.h	$t6, $a3, 8
	st.h	$t5, $a3, 10
	st.h	$t4, $a3, 12
	st.h	$t3, $a3, 14
	b	.LBB0_69
.LBB0_35:
	ld.hu	$t2, $a3, 0
	ld.hu	$t1, $a3, 2
	ld.hu	$t0, $a3, 4
	ld.hu	$a4, $a3, 6
	ori	$t3, $zero, 6
	blt	$a2, $t3, .LBB0_48
# %bb.36:                               # %.lr.ph549.preheader
	ld.w	$t4, $a1, 16
	slli.d	$t3, $t7, 2
	sub.d	$t3, $zero, $t3
	addi.d	$a1, $a1, 20
	addi.d	$a0, $a0, 20
	addi.d	$a2, $a2, -5
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_37:                               #   in Loop: Header=BB0_39 Depth=1
	bltz	$s0, .LBB0_44
.LBB0_38:                               #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	beqz	$a2, .LBB0_48
.LBB0_39:                               # %.lr.ph549
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s1, $a1, $t3
	ld.w	$t6, $a1, -8
	ld.w	$t7, $a1, -12
	ld.w	$t8, $a1, -16
	sub.w	$t5, $s1, $t4
	sub.w	$t6, $s1, $t6
	sub.w	$t7, $s1, $t7
	sub.w	$t8, $s1, $t8
	ext.w.h	$t4, $t2
	ext.w.h	$fp, $t1
	ext.w.h	$s0, $t0
	ext.w.h	$s2, $a4
	mul.d	$t4, $t5, $t4
	mul.d	$fp, $t6, $fp
	mul.d	$s0, $t7, $s0
	mul.d	$s2, $t8, $s2
	add.d	$t4, $fp, $t4
	add.d	$t4, $t4, $s0
	ld.w	$fp, $a0, 0
	add.d	$t4, $t4, $s2
	sub.d	$t4, $a7, $t4
	sra.w	$t4, $t4, $a6
	slt	$s2, $zero, $fp
	srai.d	$s0, $fp, 31
	or	$s2, $s0, $s2
	add.d	$s1, $fp, $s1
	add.d	$t4, $s1, $t4
	sll.w	$t4, $t4, $a5
	sra.w	$t4, $t4, $a5
	st.w	$t4, $a1, 0
	blez	$s2, .LBB0_37
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=1
	slt	$s0, $zero, $t8
	srai.d	$s1, $t8, 31
	or	$s0, $s1, $s0
	mul.d	$t8, $s0, $t8
	sra.w	$t8, $t8, $a6
	sub.w	$t8, $fp, $t8
	sub.d	$a4, $a4, $s0
	blez	$t8, .LBB0_38
# %bb.41:                               #   in Loop: Header=BB0_39 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $fp, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 1
	sub.w	$t7, $t8, $t7
	sub.d	$t0, $t0, $fp
	blez	$t7, .LBB0_38
# %bb.42:                               #   in Loop: Header=BB0_39 Depth=1
	slt	$t8, $zero, $t6
	srai.d	$fp, $t6, 31
	or	$t8, $fp, $t8
	mul.d	$t6, $t8, $t6
	sra.w	$t6, $t6, $a6
	alsl.d	$t6, $t6, $t6, 1
	sub.w	$t6, $t7, $t6
	sub.d	$t1, $t1, $t8
	blez	$t6, .LBB0_38
# %bb.43:                               #   in Loop: Header=BB0_39 Depth=1
	slt	$t6, $zero, $t5
	srai.d	$t5, $t5, 31
	or	$t5, $t5, $t6
	sub.d	$t2, $t2, $t5
	b	.LBB0_38
.LBB0_44:                               #   in Loop: Header=BB0_39 Depth=1
	slt	$s0, $zero, $t8
	srai.d	$s1, $t8, 31
	or	$s0, $s1, $s0
	mul.d	$t8, $t8, $s0
	sub.d	$t8, $zero, $t8
	sra.w	$t8, $t8, $a6
	sub.w	$t8, $fp, $t8
	add.d	$a4, $a4, $s0
	bgez	$t8, .LBB0_38
# %bb.45:                               #   in Loop: Header=BB0_39 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $t7, $fp
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 1
	sub.w	$t7, $t8, $t7
	add.d	$t0, $t0, $fp
	bgez	$t7, .LBB0_38
# %bb.46:                               #   in Loop: Header=BB0_39 Depth=1
	slt	$t8, $zero, $t6
	srai.d	$fp, $t6, 31
	or	$t8, $fp, $t8
	mul.d	$t6, $t6, $t8
	sub.d	$t6, $zero, $t6
	sra.w	$t6, $t6, $a6
	alsl.d	$t6, $t6, $t6, 1
	sub.w	$t6, $t7, $t6
	add.d	$t1, $t1, $t8
	bgez	$t6, .LBB0_38
# %bb.47:                               #   in Loop: Header=BB0_39 Depth=1
	slt	$t6, $zero, $t5
	srai.d	$t5, $t5, 31
	or	$t5, $t5, $t6
	add.d	$t2, $t2, $t5
	b	.LBB0_38
.LBB0_48:                               # %._crit_edge550
	st.h	$t2, $a3, 0
	st.h	$t1, $a3, 2
	st.h	$t0, $a3, 4
	st.h	$a4, $a3, 6
	b	.LBB0_69
.LBB0_49:                               # %.preheader514
	bge	$t7, $a2, .LBB0_69
# %bb.50:                               # %.lr.ph562
	bstrpick.d	$t0, $a4, 31, 0
	bstrpick.d	$t1, $a4, 30, 3
	slli.d	$t1, $t1, 3
	addi.d	$t2, $a3, 8
	slli.d	$t6, $t7, 2
	alsl.d	$t4, $t7, $a1, 2
	addi.d	$t3, $t4, -16
	addi.d	$t4, $t4, -4
	alsl.d	$t5, $a4, $a3, 1
	addi.d	$t5, $t5, -2
	slli.d	$t8, $a4, 2
	sub.d	$t6, $t6, $t8
	add.d	$t6, $a1, $t6
	ori	$t8, $zero, 8
	vrepli.b	$vr0, 0
	move	$fp, $t7
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_51:                               #   in Loop: Header=BB0_53 Depth=1
	bltz	$s3, .LBB0_66
.LBB0_52:                               # %.loopexit
                                        #   in Loop: Header=BB0_53 Depth=1
	addi.d	$fp, $fp, 1
	addi.w	$s0, $fp, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, 4
	beq	$a2, $s0, .LBB0_69
.LBB0_53:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_67 Depth 2
                                        #     Child Loop BB0_64 Depth 2
	sub.d	$s0, $fp, $t7
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a1, $s0
	blez	$a4, .LBB0_56
# %bb.54:                               # %.lr.ph558.preheader
                                        #   in Loop: Header=BB0_53 Depth=1
	bgeu	$a4, $t8, .LBB0_57
# %bb.55:                               #   in Loop: Header=BB0_53 Depth=1
	move	$s4, $zero
	move	$s2, $zero
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_56:                               #   in Loop: Header=BB0_53 Depth=1
	move	$s2, $zero
	b	.LBB0_62
	.p2align	4, , 16
.LBB0_57:                               # %vector.ph
                                        #   in Loop: Header=BB0_53 Depth=1
	vreplgr2vr.w	$vr1, $s0
	move	$s1, $t3
	move	$s2, $t2
	move	$s3, $t1
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB0_58:                               # %vector.body
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s2, -8
	ld.d	$s5, $s2, 0
	vinsgr2vr.d	$vr4, $s4, 0
	vinsgr2vr.d	$vr5, $s5, 0
	vld	$vr6, $s1, 0
	vld	$vr7, $s1, -16
	vsllwil.w.h	$vr4, $vr4, 0
	vsllwil.w.h	$vr5, $vr5, 0
	vshuf4i.w	$vr6, $vr6, 27
	vshuf4i.w	$vr7, $vr7, 27
	vsub.w	$vr6, $vr6, $vr1
	vsub.w	$vr7, $vr7, $vr1
	vmadd.w	$vr2, $vr6, $vr4
	vmadd.w	$vr3, $vr7, $vr5
	addi.d	$s3, $s3, -8
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, -32
	bnez	$s3, .LBB0_58
# %bb.59:                               # %middle.block
                                        #   in Loop: Header=BB0_53 Depth=1
	vadd.w	$vr1, $vr3, $vr2
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$s2, $vr1, 0
	move	$s4, $t1
	beq	$t1, $t0, .LBB0_62
.LBB0_60:                               # %.lr.ph558.preheader629
                                        #   in Loop: Header=BB0_53 Depth=1
	slli.d	$s1, $s4, 2
	sub.d	$s1, $t4, $s1
	alsl.d	$s3, $s4, $a3, 1
	sub.d	$s4, $t0, $s4
	.p2align	4, , 16
.LBB0_61:                               # %.lr.ph558
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s5, $s1, 0
	ld.h	$s6, $s3, 0
	sub.d	$s5, $s5, $s0
	mul.d	$s5, $s5, $s6
	add.d	$s2, $s5, $s2
	addi.d	$s1, $s1, -4
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 2
	bnez	$s4, .LBB0_61
.LBB0_62:                               # %._crit_edge559
                                        #   in Loop: Header=BB0_53 Depth=1
	slli.d	$s1, $fp, 2
	ldx.w	$s1, $a0, $s1
	alsl.d	$s4, $fp, $a1, 2
	slt	$s5, $zero, $s1
	srai.d	$s3, $s1, 31
	or	$s5, $s3, $s5
	add.d	$s2, $s2, $a7
	sra.w	$s2, $s2, $a6
	add.d	$s2, $s2, $s0
	add.d	$s2, $s2, $s1
	sll.w	$s2, $s2, $a5
	sra.w	$s2, $s2, $a5
	st.w	$s2, $s4, 0
	blez	$s5, .LBB0_51
# %bb.63:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_53 Depth=1
	move	$s2, $zero
	addi.d	$s3, $zero, -1
	move	$s4, $t5
	move	$s5, $a4
	.p2align	4, , 16
.LBB0_64:                               # %.preheader
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$s5, .LBB0_52
# %bb.65:                               #   in Loop: Header=BB0_64 Depth=2
	ldx.w	$s6, $t6, $s2
	sub.w	$s6, $s0, $s6
	slt	$s7, $zero, $s6
	ld.h	$s8, $s4, 0
	srai.d	$ra, $s6, 31
	or	$s7, $ra, $s7
	addi.d	$s5, $s5, -1
	sub.d	$s8, $s8, $s7
	st.h	$s8, $s4, 0
	mul.d	$s6, $s7, $s6
	sra.w	$s6, $s6, $a6
	mul.d	$s6, $s6, $s3
	add.w	$s1, $s6, $s1
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, -2
	addi.d	$s2, $s2, 4
	bgtz	$s1, .LBB0_64
	b	.LBB0_52
.LBB0_66:                               # %.preheader512.preheader
                                        #   in Loop: Header=BB0_53 Depth=1
	addi.d	$s2, $zero, -1
	move	$s3, $t6
	move	$s4, $t5
	move	$s5, $a4
	.p2align	4, , 16
.LBB0_67:                               # %.preheader512
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$s5, .LBB0_52
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=2
	ld.w	$s6, $s3, 0
	sub.w	$s6, $s0, $s6
	slt	$s7, $zero, $s6
	ld.h	$s8, $s4, 0
	srai.d	$ra, $s6, 31
	or	$s7, $ra, $s7
	addi.d	$s5, $s5, -1
	add.d	$s8, $s8, $s7
	st.h	$s8, $s4, 0
	mul.d	$s6, $s6, $s7
	sub.d	$s6, $zero, $s6
	sra.w	$s6, $s6, $a6
	mul.d	$s6, $s6, $s2
	add.w	$s1, $s6, $s1
	addi.d	$s2, $s2, -1
	addi.d	$s4, $s4, -2
	addi.d	$s3, $s3, 4
	bltz	$s1, .LBB0_67
	b	.LBB0_52
.LBB0_69:                               # %.loopexit515
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
.Lfunc_end0:
	.size	unpc_block, .Lfunc_end0-unpc_block
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
