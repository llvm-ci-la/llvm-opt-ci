	.file	"pio.c"
	.text
	.globl	fputp                           # -- Begin function fputp
	.p2align	5
	.type	fputp,@function
fputp:                                  # @fputp
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a1, .LBB0_2
# %bb.1:
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $fp, 0
.LBB0_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ptoa)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_8
# %bb.3:
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB0_8
# %bb.4:                                # %.preheader.i.preheader
	move	$s2, $zero
	move	$s1, $a0
	addi.d	$s4, $a0, 1
	addi.w	$s3, $zero, -1
	.p2align	4, , 16
.LBB0_5:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s2, $s2, 1
	ext.w.b	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB0_7
# %bb.6:                                # %.preheader.i
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $s4, 0
	addi.d	$s4, $s4, 1
	bnez	$a1, .LBB0_5
.LBB0_7:
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s3, $a0
	or	$s0, $a0, $a1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB0_9
	b	.LBB0_11
.LBB0_8:
	move	$s0, $zero
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_11
.LBB0_9:
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $a0, 48
	st.h	$a0, $fp, 0
	bnez	$a1, .LBB0_11
# %bb.10:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB0_11:
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	fputp, .Lfunc_end0-fputp
                                        # -- End function
	.globl	putp                            # -- Begin function putp
	.p2align	5
	.type	putp,@function
putp:                                   # @putp
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB1_2
# %bb.1:
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $fp, 0
.LBB1_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ptoa)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s2, $a0, %got_pc_lo12(stdout)
	ld.d	$s1, $s2, 0
	beqz	$s0, .LBB1_8
# %bb.3:
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB1_8
# %bb.4:                                # %.preheader.i.preheader
	addi.d	$s3, $s0, 1
	addi.w	$s4, $zero, -1
	.p2align	4, , 16
.LBB1_5:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB1_7
# %bb.6:                                # %.preheader.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.bu	$a0, $s3, 0
	addi.d	$s3, $s3, 1
	bnez	$a0, .LBB1_5
.LBB1_7:                                # %fouts.exit.loopexit
	ld.d	$s1, $s2, 0
.LBB1_8:                                # %fouts.exit
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_11
# %bb.9:
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $a0, 48
	st.h	$a0, $fp, 0
	bnez	$a1, .LBB1_11
# %bb.10:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB1_11:
	move	$a0, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	putp, .Lfunc_end1-putp
                                        # -- End function
	.globl	fprintp                         # -- Begin function fprintp
	.p2align	5
	.type	fprintp,@function
fprintp:                                # @fprintp
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$s1, $a0
	beqz	$a1, .LBB2_2
# %bb.1:
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $fp, 0
.LBB2_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ptoa)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bltz	$s2, .LBB2_10
# %bb.3:                                # %.preheader
	addi.w	$s3, $a0, 0
	bge	$s3, $s2, .LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s2, $s2, -1
	ori	$a0, $zero, 32
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s3, $s2, .LBB2_4
.LBB2_5:                                # %._crit_edge
	ld.bu	$a1, $s0, 0
	beqz	$a1, .LBB2_15
# %bb.6:                                # %.preheader.i26.preheader
	move	$s2, $zero
	addi.d	$s4, $s0, 1
	addi.w	$s3, $zero, -1
	.p2align	4, , 16
.LBB2_7:                                # %.preheader.i26
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s2, $s2, 1
	ext.w.b	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB2_9
# %bb.8:                                # %.preheader.i26
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a1, $s4, 0
	addi.d	$s4, $s4, 1
	bnez	$a1, .LBB2_7
.LBB2_9:
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	b	.LBB2_19
.LBB2_10:
	ld.bu	$a1, $s0, 0
	beqz	$a1, .LBB2_16
# %bb.11:                               # %.preheader.i.preheader
	move	$s4, $a0
	move	$s3, $zero
	addi.d	$s6, $s0, 1
	addi.w	$s5, $zero, -1
	.p2align	4, , 16
.LBB2_12:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s3, $s3, 1
	ext.w.b	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB2_14
# %bb.13:                               # %.preheader.i
                                        #   in Loop: Header=BB2_12 Depth=1
	ld.bu	$a1, $s6, 0
	addi.d	$s6, $s6, 1
	bnez	$a1, .LBB2_12
.LBB2_14:
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s5, $a0
	or	$s3, $a0, $a1
	move	$a0, $s4
	sub.w	$a1, $zero, $a0
	blt	$s2, $a1, .LBB2_17
	b	.LBB2_19
.LBB2_15:
	move	$s3, $zero
	b	.LBB2_19
.LBB2_16:
	move	$s3, $zero
	sub.w	$a1, $zero, $a0
	bge	$s2, $a1, .LBB2_19
.LBB2_17:                               # %.lr.ph37.preheader
	add.d	$a0, $s2, $a0
	sub.d	$s2, $zero, $a0
	.p2align	4, , 16
.LBB2_18:                               # %.lr.ph37
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 32
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB2_18
.LBB2_19:                               # %fouts.exit31
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB2_22
# %bb.20:
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $a0, 48
	st.h	$a0, $fp, 0
	bnez	$a1, .LBB2_22
# %bb.21:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB2_22:
	move	$a0, $s3
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	fprintp, .Lfunc_end2-fprintp
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function fgetp
.LCPI3_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI3_1:
	.word	10                              # 0xa
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI3_2:
	.word	100                             # 0x64
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.text
	.globl	fgetp
	.p2align	5
	.type	fgetp,@function
fgetp:                                  # @fgetp
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	st.d	$zero, $sp, 16
	st.d	$zero, $sp, 8
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	beq	$a0, $s3, .LBB3_40
# %bb.1:                                # %.preheader46
	move	$s1, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s1, 1
	ldx.hu	$a1, $a1, $a2
	slli.d	$a1, $a1, 50
	bltz	$a1, .LBB3_3
# %bb.2:
	move	$a0, $s1
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	slli.d	$a2, $a0, 1
	ldx.hu	$a1, $a1, $a2
	slli.d	$a1, $a1, 50
	bltz	$a1, .LBB3_3
.LBB3_4:                                # %._crit_edge
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB3_6
# %bb.5:                                # %._crit_edge
	ori	$a1, $zero, 43
	move	$a2, $a0
	bne	$a0, $a1, .LBB3_7
.LBB3_6:                                # %.sink.split
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s1
.LBB3_7:
	ld.d	$a1, $s0, 0
	slli.d	$a3, $a2, 1
	ldx.hu	$a1, $a1, $a3
	slli.d	$a1, $a1, 52
	bltz	$a1, .LBB3_10
# %bb.8:
	beq	$a2, $s3, .LBB3_20
# %bb.9:
	move	$a0, $a2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	b	.LBB3_35
.LBB3_10:
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(pzero)
	ld.d	$a0, $a0, %got_pc_lo12(pzero)
	ld.d	$a1, $a0, 0
	move	$s1, $a2
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 244140
	ori	$a0, $a0, 2560
	pcaddu18i	$ra, %call36(utop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s0, 0
	addi.w	$s1, $a0, -48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB3_21
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	slli.d	$a1, $s1, 3
	ld.d	$s2, $s0, 0
	alsl.d	$a1, $s1, $a1, 1
	add.d	$a0, $a1, $a0
	addi.w	$s1, $a0, -48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB3_22
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=1
	slli.d	$a1, $s1, 3
	ld.d	$s2, $s0, 0
	alsl.d	$a1, $s1, $a1, 1
	add.d	$a0, $a1, $a0
	addi.w	$s1, $a0, -48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB3_23
# %bb.14:                               #   in Loop: Header=BB3_11 Depth=1
	slli.d	$a1, $s1, 3
	ld.d	$s2, $s0, 0
	alsl.d	$a1, $s1, $a1, 1
	add.d	$a0, $a1, $a0
	addi.w	$s1, $a0, -48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB3_24
# %bb.15:                               #   in Loop: Header=BB3_11 Depth=1
	slli.d	$a1, $s1, 3
	ld.d	$s2, $s0, 0
	alsl.d	$a1, $s1, $a1, 1
	add.d	$a0, $a1, $a0
	addi.w	$s1, $a0, -48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB3_25
# %bb.16:                               #   in Loop: Header=BB3_11 Depth=1
	slli.d	$a1, $s1, 3
	ld.d	$s2, $s0, 0
	alsl.d	$a1, $s1, $a1, 1
	add.d	$a0, $a1, $a0
	addi.w	$s1, $a0, -48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB3_26
# %bb.17:                               #   in Loop: Header=BB3_11 Depth=1
	slli.d	$a1, $s1, 3
	ld.d	$s2, $s0, 0
	alsl.d	$a1, $s1, $a1, 1
	add.d	$a0, $a1, $a0
	addi.w	$s1, $a0, -48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB3_27
# %bb.18:                               #   in Loop: Header=BB3_11 Depth=1
	slli.d	$a1, $s1, 3
	ld.d	$s2, $s0, 0
	alsl.d	$a1, $s1, $a1, 1
	add.d	$a0, $a1, $a0
	addi.w	$s1, $a0, -48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s2, $a1
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB3_28
# %bb.19:                               #   in Loop: Header=BB3_11 Depth=1
	slli.d	$a3, $s1, 3
	ld.d	$a2, $sp, 16
	ld.d	$a1, $sp, 8
	alsl.d	$a3, $s1, $a3, 1
	add.d	$a0, $a3, $a0
	addi.w	$s1, $a0, -48
	move	$a0, $a2
	pcaddu18i	$ra, %call36(pmul)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(utop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(padd)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $s1, $a1
	slli.d	$a1, $a1, 52
	bltz	$a1, .LBB3_11
	b	.LBB3_31
.LBB3_20:
	st.d	$zero, $sp, 16
	b	.LBB3_35
.LBB3_21:
	move	$s2, $a0
	ori	$a0, $zero, 10
	b	.LBB3_30
.LBB3_22:
	move	$a1, $zero
	b	.LBB3_29
.LBB3_23:
	ori	$a1, $zero, 1
	b	.LBB3_29
.LBB3_24:
	ori	$a1, $zero, 2
	b	.LBB3_29
.LBB3_25:
	ori	$a1, $zero, 3
	b	.LBB3_29
.LBB3_26:
	ori	$a1, $zero, 4
	b	.LBB3_29
.LBB3_27:
	ori	$a1, $zero, 5
	b	.LBB3_29
.LBB3_28:
	ori	$a1, $zero, 6
.LBB3_29:                               # %vector.ph
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI3_0)
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI3_1)
	pcalau12i	$a0, %pc_hi20(.LCPI3_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI3_2)
	xvreplgr2vr.w	$xr3, $a1
	xvslt.wu	$xr0, $xr3, $xr0
	xvbitsel.v	$xr0, $xr2, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 238
	xvshuf4i.w	$xr1, $xr1, 228
	xvmul.w	$xr0, $xr0, $xr1
	xvshuf4i.w	$xr1, $xr0, 14
	xvmul.w	$xr0, $xr0, $xr1
	xvrepl128vei.w	$xr1, $xr0, 1
	xvmul.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
.LBB3_30:                               # %._crit_edge58
	ld.d	$s0, $sp, 16
	pcaddu18i	$ra, %call36(utop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pmul)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(utop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(padd)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB3_31:                               # %.loopexit
	beq	$a0, $s3, .LBB3_33
# %bb.32:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
.LBB3_33:
	ori	$a0, $zero, 45
	bne	$s4, $a0, .LBB3_35
# %bb.34:
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(pneg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
.LBB3_35:
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB3_37
# %bb.36:
	ld.h	$a1, $a0, 0
	addi.d	$a1, $a1, -1
	slli.d	$a2, $a1, 48
	st.h	$a1, $a0, 0
	beqz	$a2, .LBB3_39
.LBB3_37:
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB3_40
.LBB3_38:
	pcaddu18i	$ra, %call36(presult)
	jirl	$ra, $ra, 0
	b	.LBB3_41
.LBB3_39:
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	bnez	$a0, .LBB3_38
.LBB3_40:
	move	$a0, $zero
.LBB3_41:                               # %.thread80
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
	.size	fgetp, .Lfunc_end3-fgetp
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
