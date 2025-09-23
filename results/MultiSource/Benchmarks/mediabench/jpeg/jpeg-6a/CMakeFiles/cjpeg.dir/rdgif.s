	.file	"rdgif.c"
	.text
	.globl	jinit_read_gif                  # -- Begin function jinit_read_gif
	.p2align	5
	.type	jinit_read_gif,@function
jinit_read_gif:                         # @jinit_read_gif
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 440
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$fp, $a0, 48
	pcalau12i	$a1, %pc_hi20(start_input_gif)
	addi.d	$a1, $a1, %pc_lo12(start_input_gif)
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(finish_input_gif)
	addi.d	$a1, $a1, %pc_lo12(finish_input_gif)
	st.d	$a1, $a0, 16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	jinit_read_gif, .Lfunc_end0-jinit_read_gif
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function start_input_gif
.LCPI1_0:
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.p2align	5
	.type	start_input_gif,@function
start_input_gif:                        # @start_input_gif
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a4, $a0, 16
	move	$s0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	ori	$a3, $zero, 3
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.d	$a3, $s0, 24
	st.d	$a0, $s0, 56
	addi.d	$a0, $sp, 30
	ori	$a1, $zero, 1
	ori	$a2, $zero, 6
	ori	$s1, $zero, 6
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB1_2
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1016
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB1_2:
	ld.bu	$a0, $sp, 30
	ori	$a1, $zero, 71
	bne	$a0, $a1, .LBB1_5
# %bb.3:
	ld.bu	$a0, $sp, 31
	ori	$a1, $zero, 73
	bne	$a0, $a1, .LBB1_5
# %bb.4:
	ld.bu	$a0, $sp, 32
	ori	$a1, $zero, 70
	beq	$a0, $a1, .LBB1_6
.LBB1_5:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1016
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB1_6:
	ld.b	$a0, $sp, 33
	ld.bu	$a2, $sp, 34
	ld.bu	$a1, $sp, 35
	andi	$a3, $a0, 255
	ori	$a4, $zero, 56
	bne	$a3, $a4, .LBB1_9
# %bb.7:
	ori	$a5, $zero, 55
	bne	$a2, $a5, .LBB1_9
# %bb.8:
	ori	$a5, $zero, 97
	beq	$a1, $a5, .LBB1_13
.LBB1_9:
	bne	$a3, $a4, .LBB1_12
# %bb.10:
	ori	$a3, $zero, 57
	bne	$a2, $a3, .LBB1_12
# %bb.11:
	ori	$a3, $zero, 97
	beq	$a1, $a3, .LBB1_13
.LBB1_12:
	ld.d	$a3, $fp, 0
	st.w	$a0, $a3, 44
	ext.w.b	$a0, $a2
	st.w	$a0, $a3, 48
	ext.w.b	$a0, $a1
	ld.d	$a2, $a3, 8
	st.w	$a0, $a3, 52
	ori	$a0, $zero, 1018
	st.w	$a0, $a3, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB1_13:
	ld.d	$a3, $s0, 24
	addi.d	$a0, $sp, 30
	ori	$a1, $zero, 1
	ori	$a2, $zero, 7
	ori	$s1, $zero, 7
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB1_15
# %bb.14:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 42
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB1_15:
	ld.bu	$a1, $sp, 34
	ld.bu	$a0, $sp, 36
	ext.w.b	$s1, $a1
	andi	$s2, $a1, 7
	ori	$s3, $zero, 2
	beqz	$a0, .LBB1_18
# %bb.16:
	ori	$a1, $zero, 49
	beq	$a0, $a1, .LBB1_18
# %bb.17:
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 1020
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB1_18:
	sll.w	$a0, $s3, $s2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bltz	$s1, .LBB1_41
.LBB1_19:                               # %ReadColorMap.exit
	ori	$s3, $zero, 43
	addi.w	$s1, $zero, -1
	ori	$s4, $zero, 33
	ori	$s6, $zero, 42
	ori	$s7, $zero, 1019
	ori	$s8, $zero, 1022
	ori	$s5, $zero, 59
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_20:                               # %ReadByte.exit.thread
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a0, $s0, 48
	ori	$a1, $zero, 42
.LBB1_21:                               # %.sink.split
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a2, 0
	st.w	$a1, $a2, 40
	jirl	$ra, $a3, 0
.LBB1_22:                               #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s2, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 8
	st.w	$s8, $a0, 40
	move	$a0, $fp
	move	$a1, $s1
	jirl	$ra, $a2, 0
.LBB1_23:                               # %.backedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	blt	$s3, $a0, .LBB1_34
# %bb.24:                               # %.backedge
                                        #   in Loop: Header=BB1_23 Depth=1
	beq	$s2, $s1, .LBB1_20
# %bb.25:                               # %.backedge
                                        #   in Loop: Header=BB1_23 Depth=1
	bne	$s2, $s4, .LBB1_22
# %bb.26:                               #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bne	$a0, $s1, .LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	st.w	$s6, $a1, 40
	jirl	$ra, $a2, 0
.LBB1_28:                               # %ReadByte.exit.i135
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	st.w	$s2, $a1, 44
	ld.d	$a0, $s0, 48
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 8
	st.w	$s7, $a1, 40
	ori	$a1, $zero, 1
	jirl	$ra, $a2, 0
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_29:                               # %.sink.split.i.i.i
                                        #   in Loop: Header=BB1_31 Depth=2
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	st.w	$s6, $a1, 40
	jirl	$ra, $a2, 0
.LBB1_30:                               # %GetDataBlock.exit.i.i
                                        #   in Loop: Header=BB1_31 Depth=2
	blez	$s2, .LBB1_23
.LBB1_31:                               #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$a0, $s1, .LBB1_29
# %bb.32:                               # %ReadByte.exit.i.i.i
                                        #   in Loop: Header=BB1_31 Depth=2
	blez	$s2, .LBB1_23
# %bb.33:                               #   in Loop: Header=BB1_31 Depth=2
	ld.d	$a3, $s0, 24
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB1_29
	b	.LBB1_30
	.p2align	4, , 16
.LBB1_34:                               # %.backedge
                                        #   in Loop: Header=BB1_23 Depth=1
	ori	$a1, $zero, 1015
	move	$a0, $fp
	beq	$s2, $s5, .LBB1_21
# %bb.35:                               # %.backedge
                                        #   in Loop: Header=BB1_23 Depth=1
	ori	$a0, $zero, 44
	bne	$s2, $a0, .LBB1_22
# %bb.36:
	ld.d	$a3, $s0, 24
	addi.d	$a0, $sp, 30
	ori	$a1, $zero, 1
	ori	$a2, $zero, 9
	ori	$s2, $zero, 9
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB1_38
# %bb.37:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 42
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB1_38:
	ld.bu	$a1, $sp, 38
	ld.hu	$s2, $sp, 34
	ld.hu	$s3, $sp, 36
	ext.w.b	$a0, $a1
	andi	$a1, $a1, 64
	st.w	$a1, $s0, 408
	bltz	$a0, .LBB1_49
.LBB1_39:                               # %ReadColorMap.exit143
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beq	$a0, $s1, .LBB1_57
# %bb.40:                               # %ReadByte.exit144
	addi.w	$a0, $s4, -12
	addi.w	$a1, $zero, -11
	st.w	$s4, $s0, 340
	bgeu	$a1, $a0, .LBB1_58
	b	.LBB1_59
.LBB1_41:
	move	$s2, $zero
	ld.d	$s3, $s0, 56
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$s4, $a0, 31, 0
	addi.w	$s5, $zero, -1
	ori	$s6, $zero, 42
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_42:                               # %ReadByte.exit12.i
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a0, $s3, 16
	stx.b	$s1, $a0, $s2
	addi.d	$s2, $s2, 1
	beq	$s4, $s2, .LBB1_19
.LBB1_43:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bne	$a0, $s5, .LBB1_45
# %bb.44:                               #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	st.w	$s6, $a1, 40
	jirl	$ra, $a2, 0
.LBB1_45:                               # %ReadByte.exit.i
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a0, $s3, 0
	stx.b	$s1, $a0, $s2
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bne	$a0, $s5, .LBB1_47
# %bb.46:                               #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	st.w	$s6, $a1, 40
	jirl	$ra, $a2, 0
.LBB1_47:                               # %ReadByte.exit11.i
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a0, $s3, 8
	stx.b	$s1, $a0, $s2
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bne	$a0, $s5, .LBB1_42
# %bb.48:                               #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	st.w	$s6, $a1, 40
	jirl	$ra, $a2, 0
	b	.LBB1_42
.LBB1_49:
	move	$s5, $zero
	andi	$a0, $a0, 7
	ori	$a1, $zero, 2
	ld.d	$s6, $s0, 56
	sll.w	$a0, $a1, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$s7, $a0, 31, 0
	ori	$s8, $zero, 42
	b	.LBB1_51
	.p2align	4, , 16
.LBB1_50:                               # %ReadByte.exit12.i140
                                        #   in Loop: Header=BB1_51 Depth=1
	ld.d	$a0, $s6, 16
	stx.b	$s4, $a0, $s5
	addi.d	$s5, $s5, 1
	beq	$s7, $s5, .LBB1_39
.LBB1_51:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bne	$a0, $s1, .LBB1_53
# %bb.52:                               #   in Loop: Header=BB1_51 Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	st.w	$s8, $a1, 40
	jirl	$ra, $a2, 0
.LBB1_53:                               # %ReadByte.exit.i138
                                        #   in Loop: Header=BB1_51 Depth=1
	ld.d	$a0, $s6, 0
	stx.b	$s4, $a0, $s5
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bne	$a0, $s1, .LBB1_55
# %bb.54:                               #   in Loop: Header=BB1_51 Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	st.w	$s8, $a1, 40
	jirl	$ra, $a2, 0
.LBB1_55:                               # %ReadByte.exit11.i139
                                        #   in Loop: Header=BB1_51 Depth=1
	ld.d	$a0, $s6, 8
	stx.b	$s4, $a0, $s5
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bne	$a0, $s1, .LBB1_50
# %bb.56:                               #   in Loop: Header=BB1_51 Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	st.w	$s8, $a1, 40
	jirl	$ra, $a2, 0
	b	.LBB1_50
.LBB1_57:                               # %ReadByte.exit144.thread
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 42
	st.w	$a3, $a1, 40
	jirl	$ra, $a2, 0
	lu32i.d	$s1, 0
	st.w	$s1, $s0, 340
.LBB1_58:
	ld.d	$a0, $fp, 0
	st.w	$s4, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 1013
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB1_59:
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 8
	lu12i.w	$a2, 2
	ori	$a1, $zero, 1
	ori	$s4, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ld.d	$a1, $fp, 8
	ld.d	$a3, $a1, 8
	st.d	$a0, $s0, 376
	lu12i.w	$s1, 1
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.d	$a1, $fp, 8
	ld.d	$a3, $a1, 8
	st.d	$a0, $s0, 384
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	ld.wu	$a1, $s0, 340
	st.d	$a0, $s0, 392
	vst	$vr0, $s0, 324
	sll.w	$a2, $s4, $a1
	st.w	$a2, $s0, 344
	addi.d	$a3, $a2, 1
	st.w	$a3, $s0, 348
	st.w	$s4, $s0, 364
	addi.d	$a3, $a1, 1
	st.w	$a3, $s0, 352
	ori	$a3, $zero, 2
	sll.w	$a1, $a3, $a1
	ld.w	$a3, $s0, 408
	st.w	$a1, $s0, 356
	addi.d	$a1, $a2, 2
	st.w	$a1, $s0, 360
	st.d	$a0, $s0, 400
	beqz	$a3, .LBB1_62
# %bb.60:
	ld.d	$a0, $fp, 8
	ld.d	$a6, $a0, 32
	ori	$a1, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $s2
	move	$a4, $s3
	jirl	$ra, $a6, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $s0, 416
	pcalau12i	$a0, %pc_hi20(load_interlaced_image)
	addi.d	$a0, $a0, %pc_lo12(load_interlaced_image)
	beqz	$a1, .LBB1_63
# %bb.61:
	ld.w	$a2, $a1, 36
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 36
	b	.LBB1_63
.LBB1_62:
	pcalau12i	$a0, %pc_hi20(get_pixel_rows)
	addi.d	$a0, $a0, %pc_lo12(get_pixel_rows)
.LBB1_63:
	ld.d	$a1, $fp, 8
	ld.d	$a4, $a1, 16
	st.d	$a0, $s0, 8
	alsl.d	$a2, $s2, $s2, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	st.d	$a0, $s0, 32
	st.w	$s4, $s0, 40
	ori	$a0, $zero, 3
	lu32i.d	$a0, 2
	st.d	$a0, $fp, 48
	ori	$a0, $zero, 8
	ld.d	$a2, $fp, 0
	st.w	$a0, $fp, 64
	st.w	$s2, $fp, 40
	st.w	$s3, $fp, 44
	st.w	$s2, $a2, 44
	st.w	$s3, $a2, 48
	ld.d	$a3, $a2, 8
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a2, 52
	ori	$a0, $zero, 1017
	ori	$a1, $zero, 1
	st.w	$a0, $a2, 40
	move	$a0, $fp
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	jr	$a3
.Lfunc_end1:
	.size	start_input_gif, .Lfunc_end1-start_input_gif
                                        # -- End function
	.p2align	5                               # -- Begin function finish_input_gif
	.type	finish_input_gif,@function
finish_input_gif:                       # @finish_input_gif
# %bb.0:
	ret
.Lfunc_end2:
	.size	finish_input_gif, .Lfunc_end2-finish_input_gif
                                        # -- End function
	.p2align	5                               # -- Begin function load_interlaced_image
	.type	load_interlaced_image,@function
load_interlaced_image:                  # @load_interlaced_image
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 44
	ld.d	$s2, $s0, 16
	move	$fp, $a1
	beqz	$a0, .LBB3_10
# %bb.1:                                # %.lr.ph45
	move	$s1, $zero
	bnez	$s2, .LBB3_3
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_2:                                # %._crit_edge
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.wu	$a0, $s0, 44
	addi.d	$s1, $s1, 1
	bgeu	$s1, $a0, .LBB3_12
.LBB3_3:                                # %.lr.ph45.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	ld.d	$a1, $s2, 0
	st.d	$s1, $s2, 8
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $s2, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 8
	ld.d	$a5, $a0, 56
	ld.d	$a1, $fp, 416
	addi.w	$a2, $s1, 0
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a5, 0
	ld.w	$s3, $s0, 40
	beqz	$s3, .LBB3_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$s4, $a0, 0
	.p2align	4, , 16
.LBB3_5:                                # %.lr.ph
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(LZWReadByte)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s4, 1
	addi.w	$s3, $s3, -1
	st.b	$a0, $s4, 0
	move	$s4, $a1
	bnez	$s3, .LBB3_5
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a0, $s0, 44
	addi.w	$s1, $s1, 1
	bgeu	$s1, $a0, .LBB3_11
.LBB3_7:                                # %.lr.ph45.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
	ld.d	$a0, $s0, 8
	ld.d	$a5, $a0, 56
	ld.d	$a1, $fp, 416
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a0, $s0
	move	$a2, $s1
	jirl	$ra, $a5, 0
	ld.w	$s3, $s0, 40
	beqz	$s3, .LBB3_6
# %bb.8:                                # %.lr.ph.us.preheader
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$s4, $a0, 0
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph.us
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(LZWReadByte)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s4, 1
	addi.w	$s3, $s3, -1
	st.b	$a0, $s4, 0
	move	$s4, $a1
	bnez	$s3, .LBB3_9
	b	.LBB3_6
.LBB3_10:
	move	$a0, $zero
.LBB3_11:                               # %._crit_edge46
	beqz	$s2, .LBB3_13
.LBB3_12:                               # %._crit_edge46.thread
	ld.w	$a1, $s2, 32
	addi.d	$a1, $a1, 1
	st.w	$a1, $s2, 32
.LBB3_13:
	pcalau12i	$a1, %pc_hi20(get_interlaced_row)
	addi.d	$a1, $a1, %pc_lo12(get_interlaced_row)
	st.d	$a1, $fp, 8
	addi.d	$a1, $a0, 7
	bstrpick.d	$a1, $a1, 31, 3
	st.w	$a1, $fp, 428
	addi.d	$a2, $a0, 3
	bstrpick.d	$a2, $a2, 31, 3
	add.d	$a2, $a1, $a2
	st.w	$a2, $fp, 432
	ld.d	$a1, $s0, 8
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 2
	ld.d	$s1, $fp, 56
	ld.d	$a5, $a1, 56
	ld.d	$a1, $fp, 416
	add.d	$a0, $a2, $a0
	st.w	$a0, $fp, 436
	st.w	$zero, $fp, 424
	ori	$a3, $zero, 1
	move	$a0, $s0
	move	$a2, $zero
	move	$a4, $zero
	jirl	$ra, $a5, 0
	ld.w	$a1, $s0, 40
	beqz	$a1, .LBB3_16
# %bb.14:                               # %.lr.ph.i
	ld.d	$a2, $fp, 32
	ld.d	$a2, $a2, 0
	ld.d	$a0, $a0, 0
	.p2align	4, , 16
.LBB3_15:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	ld.d	$a4, $s1, 0
	ldx.b	$a4, $a4, $a3
	st.b	$a4, $a2, 0
	ld.d	$a4, $s1, 8
	ldx.b	$a4, $a4, $a3
	st.b	$a4, $a2, 1
	ld.d	$a4, $s1, 16
	ldx.b	$a3, $a4, $a3
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a2, 3
	addi.w	$a1, $a1, -1
	st.b	$a3, $a2, 2
	move	$a2, $a4
	bnez	$a1, .LBB3_15
.LBB3_16:                               # %get_interlaced_row.exit
	ld.w	$a0, $fp, 424
	addi.d	$a1, $a0, 1
	ori	$a0, $zero, 1
	st.w	$a1, $fp, 424
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end3:
	.size	load_interlaced_image, .Lfunc_end3-load_interlaced_image
                                        # -- End function
	.p2align	5                               # -- Begin function get_pixel_rows
	.type	get_pixel_rows,@function
get_pixel_rows:                         # @get_pixel_rows
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.w	$s0, $a0, 40
	beqz	$s0, .LBB4_3
# %bb.1:                                # %.lr.ph
	move	$fp, $a1
	ld.d	$a0, $a1, 32
	ld.d	$s1, $a1, 56
	ld.d	$s2, $a0, 0
	.p2align	4, , 16
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(LZWReadByte)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ldx.b	$a1, $a1, $a0
	st.b	$a1, $s2, 0
	ld.d	$a1, $s1, 8
	ldx.b	$a1, $a1, $a0
	st.b	$a1, $s2, 1
	ld.d	$a1, $s1, 16
	ldx.b	$a0, $a1, $a0
	addi.d	$a1, $s2, 3
	addi.w	$s0, $s0, -1
	st.b	$a0, $s2, 2
	move	$s2, $a1
	bnez	$s0, .LBB4_2
.LBB4_3:                                # %._crit_edge
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	get_pixel_rows, .Lfunc_end4-get_pixel_rows
                                        # -- End function
	.p2align	5                               # -- Begin function LZWReadByte
	.type	LZWReadByte,@function
LZWReadByte:                            # @LZWReadByte
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 364
	beqz	$a0, .LBB5_7
# %bb.1:                                # %.thread
	ld.w	$a1, $fp, 344
	st.w	$zero, $fp, 364
.LBB5_2:
	ld.w	$a0, $fp, 340
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 352
	slli.d	$a0, $a1, 1
	ld.d	$a2, $fp, 392
	st.w	$a0, $fp, 356
	addi.d	$a0, $a1, 2
	st.w	$a0, $fp, 360
	st.d	$a2, $fp, 400
	.p2align	4, , 16
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(GetCode)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 344
	beq	$a0, $a1, .LBB5_3
# %bb.4:
	bge	$a1, $a0, .LBB5_6
# %bb.5:
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 8
	ori	$a3, $zero, 1021
	st.w	$a3, $a1, 40
	addi.w	$a1, $zero, -1
	jirl	$ra, $a2, 0
	move	$a0, $zero
.LBB5_6:
	st.w	$a0, $fp, 368
	st.w	$a0, $fp, 372
	b	.LBB5_9
.LBB5_7:
	ld.d	$a0, $fp, 400
	ld.d	$a1, $fp, 392
	bgeu	$a1, $a0, .LBB5_10
# %bb.8:
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, 400
	ld.bu	$a0, $a0, -1
.LBB5_9:
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB5_10:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(GetCode)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 344
	beq	$a0, $a1, .LBB5_2
# %bb.11:
	ld.w	$a1, $fp, 348
	bne	$a0, $a1, .LBB5_19
# %bb.12:
	ld.w	$a0, $fp, 336
	bnez	$a0, .LBB5_32
# %bb.13:
	addi.w	$s1, $zero, -1
	ori	$s2, $zero, 42
	b	.LBB5_16
	.p2align	4, , 16
.LBB5_14:                               # %.sink.split.i.i
                                        #   in Loop: Header=BB5_16 Depth=1
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	st.w	$s2, $a1, 40
	jirl	$ra, $a2, 0
.LBB5_15:                               # %GetDataBlock.exit.i
                                        #   in Loop: Header=BB5_16 Depth=1
	blez	$s0, .LBB5_31
.LBB5_16:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beq	$a0, $s1, .LBB5_14
# %bb.17:                               # %ReadByte.exit.i.i
                                        #   in Loop: Header=BB5_16 Depth=1
	blez	$s0, .LBB5_31
# %bb.18:                               #   in Loop: Header=BB5_16 Depth=1
	ld.d	$a3, $fp, 24
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB5_14
	b	.LBB5_15
.LBB5_19:
	ld.w	$a1, $fp, 360
	bge	$a0, $a1, .LBB5_21
# %bb.20:
	move	$a1, $a0
	b	.LBB5_25
.LBB5_21:
	bge	$a1, $a0, .LBB5_23
# %bb.22:
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 8
	ori	$a3, $zero, 1021
	st.w	$a3, $a1, 40
	addi.w	$a1, $zero, -1
	jirl	$ra, $a2, 0
	move	$a0, $zero
.LBB5_23:
	ld.d	$a2, $fp, 400
	ld.b	$a3, $fp, 372
	move	$a1, $a0
	addi.d	$a0, $a2, 1
	st.d	$a0, $fp, 400
	st.b	$a3, $a2, 0
	ld.w	$a0, $fp, 368
	b	.LBB5_25
	.p2align	4, , 16
.LBB5_24:                               #   in Loop: Header=BB5_25 Depth=1
	ld.d	$a2, $fp, 384
	ld.d	$a3, $fp, 400
	ldx.b	$a2, $a2, $a0
	addi.d	$a4, $a3, 1
	st.d	$a4, $fp, 400
	st.b	$a2, $a3, 0
	ld.d	$a2, $fp, 376
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a2, $a0
.LBB5_25:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $fp, 344
	bge	$a0, $a2, .LBB5_24
# %bb.26:                               # %._crit_edge
	ld.w	$a2, $fp, 360
	ori	$a3, $zero, 4095
	st.w	$a0, $fp, 372
	blt	$a3, $a2, .LBB5_30
# %bb.27:
	ld.h	$a3, $fp, 368
	ld.d	$a4, $fp, 376
	ld.d	$a5, $fp, 384
	slli.d	$a6, $a2, 1
	stx.h	$a3, $a4, $a6
	stx.b	$a0, $a5, $a2
	ld.w	$a2, $fp, 360
	ld.w	$a0, $fp, 356
	addi.w	$a2, $a2, 1
	st.w	$a2, $fp, 360
	blt	$a2, $a0, .LBB5_30
# %bb.28:
	ld.w	$a2, $fp, 352
	ori	$a3, $zero, 11
	blt	$a3, $a2, .LBB5_30
# %bb.29:
	addi.d	$a2, $a2, 1
	st.w	$a2, $fp, 352
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, 356
.LBB5_30:
	ld.w	$a0, $fp, 372
	st.w	$a1, $fp, 368
	b	.LBB5_9
.LBB5_31:                               # %SkipDataBlocks.exit
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 336
.LBB5_32:
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 8
	ori	$a3, $zero, 1023
	st.w	$a3, $a1, 40
	addi.w	$a1, $zero, -1
	jirl	$ra, $a2, 0
	move	$a0, $zero
	b	.LBB5_9
.Lfunc_end5:
	.size	LZWReadByte, .Lfunc_end5-LZWReadByte
                                        # -- End function
	.p2align	5                               # -- Begin function get_interlaced_row
	.type	get_interlaced_row,@function
get_interlaced_row:                     # @get_interlaced_row
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.wu	$a1, $a1, 424
	andi	$a2, $a1, 7
	ori	$a3, $zero, 6
	move	$s0, $a0
	bltu	$a3, $a2, .LBB6_5
# %bb.1:
	slli.d	$a0, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI6_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI6_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB6_2:
	ld.w	$a0, $fp, 432
	srli.d	$a1, $a1, 2
	b	.LBB6_6
.LBB6_3:
	srli.d	$a2, $a1, 3
	b	.LBB6_7
.LBB6_4:
	ld.w	$a0, $fp, 428
	srli.d	$a1, $a1, 3
	b	.LBB6_6
.LBB6_5:
	ld.w	$a0, $fp, 436
	srli.d	$a1, $a1, 1
.LBB6_6:
	add.w	$a2, $a0, $a1
.LBB6_7:
	ld.d	$a0, $s0, 8
	ld.d	$s1, $fp, 56
	ld.d	$a5, $a0, 56
	ld.d	$a1, $fp, 416
	ori	$a3, $zero, 1
	move	$a0, $s0
	move	$a4, $zero
	jirl	$ra, $a5, 0
	ld.w	$a1, $s0, 40
	beqz	$a1, .LBB6_10
# %bb.8:                                # %.lr.ph
	ld.d	$a2, $fp, 32
	ld.d	$a2, $a2, 0
	ld.d	$a0, $a0, 0
	.p2align	4, , 16
.LBB6_9:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	ld.d	$a4, $s1, 0
	ldx.b	$a4, $a4, $a3
	st.b	$a4, $a2, 0
	ld.d	$a4, $s1, 8
	ldx.b	$a4, $a4, $a3
	st.b	$a4, $a2, 1
	ld.d	$a4, $s1, 16
	ldx.b	$a3, $a4, $a3
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a2, 3
	addi.w	$a1, $a1, -1
	st.b	$a3, $a2, 2
	move	$a2, $a4
	bnez	$a1, .LBB6_9
.LBB6_10:                               # %._crit_edge
	ld.w	$a0, $fp, 424
	addi.d	$a1, $a0, 1
	ori	$a0, $zero, 1
	st.w	$a1, $fp, 424
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	get_interlaced_row, .Lfunc_end6-get_interlaced_row
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_3-.LJTI6_0
	.word	.LBB6_5-.LJTI6_0
	.word	.LBB6_2-.LJTI6_0
	.word	.LBB6_5-.LJTI6_0
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_5-.LJTI6_0
	.word	.LBB6_2-.LJTI6_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function GetCode
	.type	GetCode,@function
GetCode:                                # @GetCode
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
	ld.w	$a0, $a0, 332
	ld.w	$a1, $fp, 352
	ld.w	$a3, $fp, 328
	add.w	$a2, $a1, $a0
	addi.w	$s2, $zero, -1
	bge	$a3, $a2, .LBB7_9
# %bb.1:                                # %.lr.ph
	addi.d	$s3, $fp, 64
	addi.d	$s0, $fp, 66
	ori	$s4, $zero, 42
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_2:                                # %.sink.split.i
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	st.w	$s4, $a1, 40
	jirl	$ra, $a2, 0
.LBB7_3:                                # %GetDataBlock.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	beqz	$s1, .LBB7_11
.LBB7_4:                                # %GetDataBlock.exit.thread
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.w	$a0, $fp, 332
	ld.w	$a1, $fp, 328
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 16
	st.w	$a0, $fp, 332
	ld.w	$a1, $fp, 352
	addi.d	$a2, $s1, 2
	st.w	$a2, $fp, 324
	slli.w	$a3, $a2, 3
	add.w	$a2, $a1, $a0
	st.w	$a3, $fp, 328
	bge	$a3, $a2, .LBB7_9
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 336
	bnez	$a0, .LBB7_10
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	ld.w	$a0, $fp, 324
	add.d	$a0, $s3, $a0
	ld.b	$a1, $a0, -2
	st.b	$a1, $fp, 64
	ld.b	$a1, $a0, -1
	ld.d	$a0, $fp, 24
	st.b	$a1, $fp, 65
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beq	$a0, $s2, .LBB7_2
# %bb.7:                                # %ReadByte.exit.i
                                        #   in Loop: Header=BB7_5 Depth=1
	blez	$s1, .LBB7_3
# %bb.8:                                #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a3, $fp, 24
	ori	$a1, $zero, 1
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB7_2
	b	.LBB7_4
.LBB7_9:                                # %._crit_edge
	srai.d	$a3, $a0, 3
	add.d	$a3, $fp, $a3
	ld.bu	$a4, $a3, 66
	ld.bu	$a5, $a3, 65
	ld.bu	$a3, $a3, 64
	slli.d	$a4, $a4, 16
	slli.d	$a5, $a5, 8
	or	$a4, $a5, $a4
	or	$a3, $a4, $a3
	andi	$a0, $a0, 7
	srl.w	$a0, $a3, $a0
	sll.w	$a1, $s2, $a1
	andn	$a0, $a0, $a1
	st.w	$a2, $fp, 332
	b	.LBB7_13
.LBB7_10:
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 8
	ori	$a3, $zero, 1024
	st.w	$a3, $a1, 40
	addi.w	$a1, $zero, -1
	jirl	$ra, $a2, 0
	b	.LBB7_12
.LBB7_11:
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1
	ld.d	$a3, $a1, 8
	st.w	$a2, $fp, 336
	ori	$a2, $zero, 1024
	st.w	$a2, $a1, 40
	addi.w	$a1, $zero, -1
	jirl	$ra, $a3, 0
.LBB7_12:
	ld.w	$a0, $fp, 348
.LBB7_13:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	GetCode, .Lfunc_end7-GetCode
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_input_gif
	.addrsig_sym finish_input_gif
	.addrsig_sym load_interlaced_image
	.addrsig_sym get_pixel_rows
	.addrsig_sym get_interlaced_row
