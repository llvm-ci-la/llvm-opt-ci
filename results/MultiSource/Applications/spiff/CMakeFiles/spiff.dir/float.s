	.file	"float.c"
	.text
	.globl	F_isfloat                       # -- Begin function F_isfloat
	.p2align	5
	.type	F_isfloat,@function
F_isfloat:                              # @F_isfloat
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	beqz	$a2, .LBB0_4
# %bb.1:
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB0_3
# %bb.2:
	ori	$a1, $zero, 43
	bne	$a0, $a1, .LBB0_4
.LBB0_3:
	addi.d	$s0, $s0, 1
	ori	$fp, $zero, 1
	b	.LBB0_5
.LBB0_4:
	move	$fp, $zero
.LBB0_5:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s0, 0
	ld.d	$a0, $a0, 0
	ext.w.b	$a1, $a2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	beqz	$a1, .LBB0_8
	.p2align	4, , 16
.LBB0_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $s0, 1
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	addi.d	$s0, $s0, 1
	slli.d	$a3, $a3, 52
	addi.w	$fp, $fp, 1
	bltz	$a3, .LBB0_6
# %bb.7:
	andi	$a2, $a2, 255
.LBB0_8:                                # %._crit_edge
	ori	$a3, $zero, 46
	bne	$a2, $a3, .LBB0_10
# %bb.9:
	ld.bu	$a2, $s0, 1
	addi.d	$s0, $s0, 1
	addi.w	$fp, $fp, 1
	b	.LBB0_11
.LBB0_10:
	bnez	$s1, .LBB0_13
.LBB0_11:
	ext.w.b	$a3, $a2
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a3, $a3, 52
	bltz	$a3, .LBB0_14
# %bb.12:                               # %._crit_edge67
	bnez	$a1, .LBB0_16
.LBB0_13:
	move	$fp, $zero
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_14:                               # %.lr.ph66
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $s0, 1
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	addi.d	$s0, $s0, 1
	slli.d	$a2, $a2, 52
	addi.w	$fp, $fp, 1
	bltz	$a2, .LBB0_14
# %bb.15:
	andi	$a2, $a1, 255
.LBB0_16:                               # %._crit_edge67.thread
	addi.d	$a3, $a2, -68
	ori	$a1, $zero, 33
	move	$a2, $zero
	bltu	$a1, $a3, .LBB0_25
# %bb.17:                               # %._crit_edge67.thread
	ori	$a1, $zero, 1
	sll.d	$a3, $a1, $a3
	ori	$a4, $zero, 3
	lu32i.d	$a4, 3
	and	$a3, $a3, $a4
	beqz	$a3, .LBB0_25
# %bb.18:
	ld.bu	$a2, $s0, 1
	ori	$a3, $zero, 45
	beq	$a2, $a3, .LBB0_20
# %bb.19:
	ori	$a3, $zero, 43
	bne	$a2, $a3, .LBB0_21
.LBB0_20:
	ld.bu	$a2, $s0, 2
	addi.d	$a3, $s0, 2
	ori	$a1, $zero, 2
	b	.LBB0_22
.LBB0_21:
	addi.d	$a3, $s0, 1
.LBB0_22:
	ext.w.b	$a2, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 52
	bgez	$a2, .LBB0_26
# %bb.23:                               # %.lr.ph75.preheader
	addi.d	$a3, $a3, 1
	move	$a2, $a1
	.p2align	4, , 16
.LBB0_24:                               # %.lr.ph75
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $a3, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	addi.d	$a2, $a2, 1
	slli.d	$a1, $a1, 52
	addi.d	$a3, $a3, 1
	bltz	$a1, .LBB0_24
.LBB0_25:                               # %.loopexit
	add.w	$fp, $a2, $fp
.LBB0_26:
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	F_isfloat, .Lfunc_end0-F_isfloat
                                        # -- End function
	.globl	F_atof                          # -- Begin function F_atof
	.p2align	5
	.type	F_atof,@function
F_atof:                                 # @F_atof
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(R_makefloat)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$zero, $a0, 4
	ld.bu	$a1, $s0, 0
	ori	$a0, $zero, 45
	st.b	$zero, $sp, 8
	beq	$a1, $a0, .LBB1_2
# %bb.1:
	ori	$a2, $zero, 43
	move	$a0, $s0
	beq	$a1, $a2, .LBB1_3
	b	.LBB1_4
.LBB1_2:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 4
.LBB1_3:                                # %.preheader151
	addi.d	$a0, $s0, 1
.LBB1_4:                                # %.preheader151
	addi.d	$s3, $a0, -1
	ori	$a0, $zero, 48
	.p2align	4, , 16
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	ld.b	$s5, $s3, 1
	andi	$s4, $s5, 255
	addi.d	$s3, $s3, 1
	beq	$s4, $a0, .LBB1_5
# %bb.6:                                # %.preheader68
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 52
	bltz	$a1, .LBB1_11
# %bb.7:                                # %.preheader
	addi.d	$a1, $s4, -46
	sltui	$a2, $a1, 1
	ldx.bu	$a1, $s3, $a2
	ori	$a3, $zero, 48
	bne	$a1, $a3, .LBB1_14
# %bb.8:                                # %.lr.ph83.preheader
	move	$s4, $zero
	.p2align	4, , 16
.LBB1_9:                                # %.lr.ph83
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s3, $a2
	ld.bu	$a1, $a1, 1
	addi.d	$s4, $s4, -1
	addi.d	$a2, $a2, 1
	beq	$a1, $a3, .LBB1_9
# %bb.10:                               # %.loopexit.loopexit
	move	$s5, $zero
	b	.LBB1_15
.LBB1_11:                               # %.lr.ph.preheader
	move	$a2, $zero
	move	$s5, $zero
	addi.d	$a1, $sp, 8
	.p2align	4, , 16
.LBB1_12:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s3, $a2
	add.d	$a4, $a1, $a2
	stx.b	$s4, $a2, $a1
	st.b	$zero, $a4, 1
	ld.b	$a3, $a3, 1
	slli.d	$a4, $a3, 1
	ldx.hu	$a4, $a0, $a4
	addi.d	$a2, $a2, 1
	addi.w	$s5, $s5, 1
	slli.d	$a4, $a4, 52
	andi	$s4, $a3, 255
	bltz	$a4, .LBB1_12
# %bb.13:                               # %._crit_edge..loopexit_crit_edge
	addi.d	$a1, $s4, -46
	sltui	$a1, $a1, 1
	add.d	$a2, $a1, $a2
	ldx.bu	$a1, $s3, $a2
	add.d	$a2, $s3, $a2
	move	$s4, $s5
	b	.LBB1_16
.LBB1_14:
	move	$s5, $zero
	move	$s4, $zero
.LBB1_15:                               # %.loopexit
	add.d	$a2, $s3, $a2
.LBB1_16:                               # %.loopexit
	ext.w.b	$a3, $a1
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a3, $a3, 52
	bltz	$a3, .LBB1_18
# %bb.17:
	move	$s3, $a2
	b	.LBB1_20
.LBB1_18:                               # %.lr.ph90.preheader
	bstrpick.d	$a3, $s5, 31, 0
	addi.d	$a4, $sp, 8
	add.d	$a3, $a3, $a4
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB1_19:                               # %.lr.ph90
                                        # =>This Inner Loop Header: Depth=1
	st.b	$a1, $a3, -1
	st.b	$zero, $a3, 0
	ld.b	$a1, $a2, 1
	slli.d	$a4, $a1, 1
	ldx.hu	$a4, $a0, $a4
	addi.d	$s3, $a2, 1
	andi	$a1, $a1, 255
	addi.d	$a3, $a3, 1
	slli.d	$a4, $a4, 52
	addi.w	$s5, $s5, 1
	move	$a2, $s3
	bltz	$a4, .LBB1_19
.LBB1_20:                               # %._crit_edge91
	addi.d	$a0, $a1, -68
	ori	$a1, $zero, 33
	bltu	$a1, $a0, .LBB1_23
# %bb.21:                               # %._crit_edge91
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	ori	$a1, $zero, 3
	lu32i.d	$a1, 3
	and	$a0, $a0, $a1
	beqz	$a0, .LBB1_23
# %bb.22:
	addi.d	$s3, $s3, 1
	ori	$a2, $zero, 10
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	add.d	$s4, $s4, $a0
.LBB1_23:
	beqz	$s1, .LBB1_31
# %bb.24:
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB1_26
# %bb.25:
	ori	$a1, $zero, 43
	bne	$a0, $a1, .LBB1_27
.LBB1_26:
	addi.d	$s3, $s3, 1
.LBB1_27:
	ld.d	$a0, $s2, 0
	.p2align	4, , 16
.LBB1_28:                               # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $s3, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 52
	addi.d	$s3, $s3, 1
	bltz	$a2, .LBB1_28
# %bb.29:
	andi	$a0, $a1, 255
	beqz	$a0, .LBB1_31
# %bb.30:
	pcalau12i	$a0, %got_pc_hi20(Z_err_buf)
	ld.d	$s1, $a0, %got_pc_lo12(Z_err_buf)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Z_fatal)
	jirl	$ra, $ra, 0
.LBB1_31:
	beqz	$s5, .LBB1_35
# %bb.32:                               # %.lr.ph97.preheader
	move	$a0, $zero
	bstrpick.d	$a1, $s5, 31, 0
	addi.d	$a2, $sp, 8
	ori	$a3, $zero, 48
	.p2align	4, , 16
.LBB1_33:                               # %.lr.ph97
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $a0, $a2
	bne	$a4, $a3, .LBB1_36
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a1, $a0, .LBB1_33
.LBB1_35:                               # %._crit_edge98
	ld.d	$a0, $fp, 8
	ori	$a1, $zero, 48
	st.h	$a1, $a0, 0
	st.d	$zero, $fp, 0
	b	.LBB1_37
.LBB1_36:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(S_trimzeros)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	st.w	$s4, $fp, 0
.LBB1_37:
	move	$a0, $fp
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end1:
	.size	F_atof, .Lfunc_end1-F_atof
                                        # -- End function
	.globl	F_floatsub                      # -- Begin function F_floatsub
	.p2align	5
	.type	F_floatsub,@function
F_floatsub:                             # @F_floatsub
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
	pcalau12i	$fp, %pc_hi20(F_floatsub.needinit)
	ld.bu	$a2, $fp, %pc_lo12(F_floatsub.needinit)
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$s5, %pc_hi20(F_floatsub.result)
	bnez	$a2, .LBB2_2
# %bb.1:
	pcaddu18i	$ra, %call36(R_makefloat)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(F_floatsub.result)
	ori	$a0, $zero, 1
	st.b	$a0, $fp, %pc_lo12(F_floatsub.needinit)
.LBB2_2:
	pcalau12i	$a0, %pc_hi20(F_floatsub.man1)
	addi.d	$s3, $a0, %pc_lo12(F_floatsub.man1)
	st.b	$zero, $s3, 0
	pcalau12i	$a0, %pc_hi20(F_floatsub.man2)
	addi.d	$s4, $a0, %pc_lo12(F_floatsub.man2)
	st.b	$zero, $s4, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bge	$fp, $a0, .LBB2_6
# %bb.3:
	ori	$s4, $zero, 48
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 1
	stx.h	$s4, $s3, $a0
	bne	$s2, $fp, .LBB2_4
# %bb.5:
	move	$fp, $s2
	b	.LBB2_11
.LBB2_6:                                # %.preheader67
	bge	$s2, $fp, .LBB2_9
# %bb.7:
	ori	$s3, $zero, 48
	.p2align	4, , 16
.LBB2_8:                                # %.lr.ph70
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 1
	stx.h	$s3, $s4, $a0
	bne	$fp, $s2, .LBB2_8
	b	.LBB2_11
.LBB2_9:                                # %._crit_edge
	beq	$fp, $s2, .LBB2_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(Z_fatal)
	jirl	$ra, $ra, 0
.LBB2_11:                               # %._crit_edge.thread
	ld.d	$a1, $s1, 8
	pcalau12i	$a0, %pc_hi20(F_floatsub.man1)
	addi.d	$s1, $a0, %pc_lo12(F_floatsub.man1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	pcalau12i	$a0, %pc_hi20(F_floatsub.man2)
	addi.d	$s0, $a0, %pc_lo12(F_floatsub.man2)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_16
# %bb.12:
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(F_floatsub.man1)
	addi.d	$s1, $a0, %pc_lo12(F_floatsub.man1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(F_floatsub.man2)
	addi.d	$s2, $a0, %pc_lo12(F_floatsub.man2)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$a0, $s3, .LBB2_17
# %bb.13:
	sub.w	$a0, $s3, $a0
	blez	$a0, .LBB2_21
# %bb.14:                               # %.lr.ph.i.preheader
	addi.d	$s1, $a0, 1
	ori	$s3, $zero, 48
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB2_15:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	stx.h	$s3, $s2, $a0
	bltu	$s4, $s1, .LBB2_15
	b	.LBB2_21
.LBB2_16:
	ld.d	$s0, $s5, %pc_lo12(F_floatsub.result)
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 48
	st.h	$a1, $a0, 0
	st.w	$zero, $s0, 0
	b	.LBB2_33
.LBB2_17:
	bgeu	$s3, $a0, .LBB2_21
# %bb.18:
	sub.w	$a0, $a0, $s3
	blez	$a0, .LBB2_21
# %bb.19:                               # %.lr.ph.i59.preheader
	addi.d	$s2, $a0, 1
	ori	$s3, $zero, 48
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB2_20:                               # %.lr.ph.i59
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	stx.h	$s3, $s1, $a0
	bltu	$s4, $s2, .LBB2_20
.LBB2_21:                               # %addzeros.exit
	pcalau12i	$a0, %pc_hi20(F_floatsub.man1)
	addi.d	$s1, $a0, %pc_lo12(F_floatsub.man1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(F_floatsub.man2)
	addi.d	$s2, $a0, %pc_lo12(F_floatsub.man2)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beq	$s3, $a0, .LBB2_23
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(Z_fatal)
	jirl	$ra, $ra, 0
.LBB2_23:
	slti	$s3, $s0, 0
	masknez	$a0, $s1, $s3
	maskeqz	$a1, $s2, $s3
	or	$s0, $a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(F_floatsub.diff)
	addi.d	$a1, $a1, %pc_lo12(F_floatsub.diff)
	addi.w	$a7, $a0, -1
	stx.b	$zero, $a1, $a0
	bltz	$a7, .LBB2_29
# %bb.24:                               # %.lr.ph76.preheader
	masknez	$a0, $s2, $s3
	maskeqz	$a2, $s1, $s3
	or	$a0, $a2, $a0
	ori	$a6, $zero, 1
	ori	$a2, $zero, 58
	pcalau12i	$a3, %pc_hi20(F_floatsub.diff)
	addi.d	$a3, $a3, %pc_lo12(F_floatsub.diff)
	ori	$a4, $zero, 57
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_25:                               #   in Loop: Header=BB2_27 Depth=1
	ldx.b	$a7, $a0, $a5
	slt	$a6, $t0, $a7
	masknez	$t0, $t0, $a6
	maskeqz	$t1, $a2, $a6
.LBB2_26:                               #   in Loop: Header=BB2_27 Depth=1
	or	$t0, $t1, $t0
	sub.d	$a7, $t0, $a7
	addi.d	$a7, $a7, 48
	stx.b	$a7, $a3, $a5
	addi.d	$a7, $a5, -1
	xori	$a6, $a6, 1
	blez	$a5, .LBB2_29
.LBB2_27:                               # %.lr.ph76
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a7
	ldx.b	$t0, $s0, $a7
	andi	$a6, $a6, 1
	bnez	$a6, .LBB2_25
# %bb.28:                               #   in Loop: Header=BB2_27 Depth=1
	addi.d	$a6, $t0, -48
	sltui	$a6, $a6, 1
	addi.d	$t0, $t0, -1
	ldx.bu	$a7, $a0, $a5
	masknez	$t0, $t0, $a6
	maskeqz	$t1, $a4, $a6
	b	.LBB2_26
.LBB2_29:                               # %.preheader
	ld.bu	$a2, $a1, 0
	ori	$a0, $zero, 48
	bne	$a2, $a0, .LBB2_32
# %bb.30:                               # %.lr.ph79.preheader
	pcalau12i	$a1, %pc_hi20(F_floatsub.diff)
	addi.d	$a2, $a1, %pc_lo12(F_floatsub.diff)
	.p2align	4, , 16
.LBB2_31:                               # %.lr.ph79
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 1
	addi.d	$a1, $a2, 1
	addi.d	$fp, $fp, -1
	move	$a2, $a1
	beq	$a3, $a0, .LBB2_31
.LBB2_32:                               # %._crit_edge80
	ld.d	$s0, $s5, %pc_lo12(F_floatsub.result)
	ld.d	$a0, $s0, 8
	st.w	$fp, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB2_33:
	st.w	$zero, $s0, 4
	move	$a0, $s0
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
	.size	F_floatsub, .Lfunc_end2-F_floatsub
                                        # -- End function
	.globl	F_floatcmp                      # -- Begin function F_floatcmp
	.p2align	5
	.type	F_floatcmp,@function
F_floatcmp:                             # @F_floatcmp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 0
	move	$fp, $a1
	bnez	$a0, .LBB3_3
# %bb.1:                                # %sub_0
	ld.d	$a0, $s0, 8
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 48
	bne	$a1, $a2, .LBB3_3
# %bb.2:                                # %.tail
	ld.bu	$a0, $a0, 1
	beqz	$a0, .LBB3_10
.LBB3_3:                                # %.tail.thread
	ld.w	$a0, $fp, 0
	bnez	$a0, .LBB3_6
# %bb.4:                                # %sub_019
	ld.d	$a0, $fp, 8
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 48
	bne	$a1, $a2, .LBB3_6
# %bb.5:                                # %.tail18
	ld.bu	$a0, $a0, 1
	beqz	$a0, .LBB3_14
.LBB3_6:                                # %.tail18.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	bge	$s1, $a0, .LBB3_8
.LBB3_7:                                # %.tail14.thread
	addi.w	$a0, $zero, -1
	b	.LBB3_15
.LBB3_8:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	blt	$a1, $s1, .LBB3_15
# %bb.9:
	ld.d	$a1, $s0, 8
	pcalau12i	$a0, %pc_hi20(F_floatcmp.man1)
	addi.d	$s0, $a0, %pc_lo12(F_floatcmp.man1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(S_trimzeros)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	pcalau12i	$a0, %pc_hi20(F_floatcmp.man2)
	addi.d	$fp, $a0, %pc_lo12(F_floatcmp.man2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(S_trimzeros)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcmp)
	jr	$t8
.LBB3_10:
	ld.w	$a0, $fp, 0
	bnez	$a0, .LBB3_7
# %bb.11:                               # %sub_015
	ld.d	$a0, $fp, 8
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 48
	bne	$a1, $a2, .LBB3_7
# %bb.12:                               # %.tail14
	ld.bu	$a0, $a0, 1
	bnez	$a0, .LBB3_7
# %bb.13:
	move	$a0, $zero
	b	.LBB3_15
.LBB3_14:
	ori	$a0, $zero, 1
.LBB3_15:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	F_floatcmp, .Lfunc_end3-F_floatcmp
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function F_floatmul
.LCPI4_0:
	.byte	3                               # 0x3
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	F_floatmul
	.p2align	5
	.type	F_floatmul,@function
F_floatmul:                             # @F_floatmul
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(F_floatmul.needinit)
	ld.bu	$a2, $fp, %pc_lo12(F_floatmul.needinit)
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$s4, %pc_hi20(F_floatmul.result)
	bnez	$a2, .LBB4_2
# %bb.1:
	pcaddu18i	$ra, %call36(R_makefloat)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(F_floatmul.result)
	ori	$a0, $zero, 1
	st.b	$a0, $fp, %pc_lo12(F_floatmul.needinit)
.LBB4_2:
	ld.w	$a0, $s1, 0
	bnez	$a0, .LBB4_5
# %bb.3:                                # %sub_0
	ld.d	$a0, $s1, 8
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 48
	bne	$a1, $a2, .LBB4_5
# %bb.4:                                # %.tail
	ld.bu	$a0, $a0, 1
	beqz	$a0, .LBB4_46
.LBB4_5:                                # %.tail.thread
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB4_8
# %bb.6:                                # %sub_052
	ld.d	$a0, $s0, 8
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 48
	bne	$a1, $a2, .LBB4_8
# %bb.7:                                # %.tail51
	ld.bu	$a0, $a0, 1
	beqz	$a0, .LBB4_46
.LBB4_8:                                # %.tail51.thread
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $s1, 8
	pcalau12i	$a0, %pc_hi20(F_floatmul.man1)
	addi.d	$s1, $a0, %pc_lo12(F_floatmul.man1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	pcalau12i	$a0, %pc_hi20(F_floatmul.man2)
	addi.d	$s2, $a0, %pc_lo12(F_floatmul.man2)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$fp, $s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a3, $fp, -1
	add.d	$a2, $s2, $a0
	bgeu	$a3, $s1, .LBB4_10
# %bb.9:
	move	$a1, $zero
	b	.LBB4_16
.LBB4_10:                               # %.lr.ph.preheader
	ori	$a1, $zero, 8
	bgeu	$s3, $a1, .LBB4_12
# %bb.11:
	move	$a1, $zero
	b	.LBB4_15
.LBB4_12:                               # %vector.ph
	add.d	$a1, $s3, $s1
	move	$a4, $s3
	bstrins.d	$a4, $zero, 2, 0
	sub.d	$a3, $a3, $a4
	pcalau12i	$a5, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_0)
	addi.d	$a1, $a1, -4
	vrepli.b	$vr1, 0
	vrepli.w	$vr2, -48
	move	$a5, $a4
	vori.b	$vr3, $vr1, 0
	.p2align	4, , 16
.LBB4_13:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a1, -4
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr5, $a7, 0
	vshuf.b	$vr4, $vr0, $vr4, $vr0
	vslli.w	$vr4, $vr4, 24
	vsrai.w	$vr4, $vr4, 24
	vshuf.b	$vr5, $vr0, $vr5, $vr0
	vslli.w	$vr5, $vr5, 24
	vsrai.w	$vr5, $vr5, 24
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr3, $vr3, $vr5
	vadd.w	$vr1, $vr1, $vr2
	vadd.w	$vr3, $vr3, $vr2
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, -8
	bnez	$a5, .LBB4_13
# %bb.14:                               # %middle.block
	vadd.w	$vr0, $vr3, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$s3, $a4, .LBB4_16
	.p2align	4, , 16
.LBB4_15:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a3, 0
	add.d	$a1, $a1, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, -48
	bgeu	$a3, $s1, .LBB4_15
.LBB4_16:                               # %.preheader55
	addi.d	$a2, $a2, -1
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	bgeu	$a2, $s2, .LBB4_18
# %bb.17:
	move	$a4, $zero
	b	.LBB4_24
.LBB4_18:                               # %.lr.ph65.preheader
	ori	$a3, $zero, 8
	bgeu	$a0, $a3, .LBB4_20
# %bb.19:
	move	$a4, $zero
	b	.LBB4_23
.LBB4_20:                               # %vector.ph91
	add.d	$a4, $a0, $s2
	move	$a3, $a0
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a2, $a2, $a3
	pcalau12i	$a5, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_0)
	addi.d	$a4, $a4, -4
	vrepli.b	$vr1, 0
	vrepli.w	$vr2, -48
	move	$a5, $a3
	vori.b	$vr3, $vr1, 0
	.p2align	4, , 16
.LBB4_21:                               # %vector.body94
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	ld.w	$a7, $a4, -4
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr5, $a7, 0
	vshuf.b	$vr4, $vr0, $vr4, $vr0
	vslli.w	$vr4, $vr4, 24
	vsrai.w	$vr4, $vr4, 24
	vshuf.b	$vr5, $vr0, $vr5, $vr0
	vslli.w	$vr5, $vr5, 24
	vsrai.w	$vr5, $vr5, 24
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr3, $vr3, $vr5
	vadd.w	$vr1, $vr1, $vr2
	vadd.w	$vr3, $vr3, $vr2
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -8
	bnez	$a5, .LBB4_21
# %bb.22:                               # %middle.block105
	vadd.w	$vr0, $vr3, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a0, $a3, .LBB4_24
	.p2align	4, , 16
.LBB4_23:                               # %.lr.ph65
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $a2, 0
	add.d	$a0, $a4, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a0, -48
	bgeu	$a2, $s2, .LBB4_23
.LBB4_24:                               # %._crit_edge
	addi.w	$a0, $a1, 0
	addi.w	$a1, $a4, 0
	slt	$a0, $a1, $a0
	masknez	$a1, $s2, $a0
	maskeqz	$a2, $s1, $a0
	or	$s3, $a2, $a1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	or	$fp, $a0, $a1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(S_trimzeros)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(S_trimzeros)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $fp, $a0
	pcalau12i	$a1, %pc_hi20(F_floatmul.prod)
	addi.d	$s2, $a1, %pc_lo12(F_floatmul.prod)
	ori	$a1, $zero, 48
	addi.d	$s7, $a0, -1
	st.h	$a1, $s2, 0
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	bgeu	$s7, $fp, .LBB4_27
.LBB4_25:                               # %._crit_edge72
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $s4, %pc_lo12(F_floatmul.result)
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %pc_hi20(F_floatmul.prod)
	addi.d	$s1, $a1, %pc_lo12(F_floatmul.prod)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $s4, %pc_lo12(F_floatmul.result)
	ld.w	$a2, $s0, 4
	ld.w	$a3, $fp, 4
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a4, $s2, $a4
	add.d	$a4, $a4, $s3
	add.d	$a1, $a4, $a1
	st.w	$a1, $a0, 0
	bne	$a2, $a3, .LBB4_45
# %bb.26:
	st.w	$zero, $a0, 4
	b	.LBB4_47
.LBB4_27:                               # %.preheader.preheader
	ori	$s8, $zero, 49
	pcalau12i	$a0, %pc_hi20(_F_stradd.result)
	addi.d	$s4, $a0, %pc_lo12(_F_stradd.result)
	addi.d	$s5, $s4, 198
	ori	$fp, $zero, 9
	ori	$s0, $zero, 10
	b	.LBB4_29
	.p2align	4, , 16
.LBB4_28:                               # %.lr.ph.i49.preheader
                                        #   in Loop: Header=BB4_29 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	ori	$a1, $zero, 48
	stx.h	$a1, $s3, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bltu	$s7, $a0, .LBB4_25
.LBB4_29:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_33 Depth 2
                                        #       Child Loop BB4_36 Depth 3
	ld.b	$a0, $s7, 0
	blt	$a0, $s8, .LBB4_28
# %bb.30:                               # %.lr.ph68.preheader
                                        #   in Loop: Header=BB4_29 Depth=1
	move	$s6, $zero
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_31:                               # %._crit_edge.thread.i
                                        #   in Loop: Header=BB4_33 Depth=2
	addi.d	$a1, $a1, 1
.LBB4_32:                               # %_F_stradd.exit
                                        #   in Loop: Header=BB4_33 Depth=2
	pcalau12i	$a0, %pc_hi20(F_floatmul.prod)
	addi.d	$a0, $a0, %pc_lo12(F_floatmul.prod)
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s7, 0
	addi.w	$s6, $s6, 1
	addi.d	$a0, $a0, -48
	bge	$s6, $a0, .LBB4_28
.LBB4_33:                               # %.lr.ph68
                                        #   Parent Loop BB4_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_36 Depth 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $a0
	addi.d	$s1, $a0, -1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $a0
	addi.d	$a0, $a0, -1
	st.b	$zero, $s4, 199
	bgeu	$s1, $s2, .LBB4_35
# %bb.34:                               # %.lr.ph68
                                        #   in Loop: Header=BB4_33 Depth=2
	move	$a1, $s5
	bltu	$a0, $s3, .LBB4_31
.LBB4_35:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_33 Depth=2
	move	$a2, $zero
	sltu	$a1, $s1, $s2
	xori	$a5, $a1, 1
	sltu	$a1, $a0, $s3
	xori	$a4, $a1, 1
	move	$a3, $s5
	.p2align	4, , 16
.LBB4_36:                               # %.lr.ph.i
                                        #   Parent Loop BB4_29 Depth=1
                                        #     Parent Loop BB4_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a1, $a5, 1
	beqz	$a1, .LBB4_39
# %bb.37:                               #   in Loop: Header=BB4_36 Depth=3
	ld.b	$a1, $s1, 0
	addi.d	$a1, $a1, -48
	addi.d	$s1, $s1, -1
	andi	$a4, $a4, 1
	bnez	$a4, .LBB4_40
.LBB4_38:                               #   in Loop: Header=BB4_36 Depth=3
	move	$a4, $zero
	b	.LBB4_41
	.p2align	4, , 16
.LBB4_39:                               #   in Loop: Header=BB4_36 Depth=3
	move	$a1, $zero
	andi	$a4, $a4, 1
	beqz	$a4, .LBB4_38
.LBB4_40:                               #   in Loop: Header=BB4_36 Depth=3
	ld.b	$a4, $a0, 0
	addi.d	$a4, $a4, -48
	addi.d	$a0, $a0, -1
.LBB4_41:                               #   in Loop: Header=BB4_36 Depth=3
	add.d	$a1, $a1, $a2
	add.w	$a6, $a1, $a4
	slt	$a2, $fp, $a6
	addi.d	$a1, $a6, 246
	masknez	$a4, $a6, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a4
	addi.d	$a4, $a1, 48
	addi.d	$a1, $a3, -1
	st.b	$a4, $a3, 0
	sltu	$a3, $s1, $s2
	xori	$a5, $a3, 1
	sltu	$a3, $a0, $s3
	xori	$a4, $a3, 1
	move	$a3, $a1
	bgeu	$s1, $s2, .LBB4_36
# %bb.42:                               #   in Loop: Header=BB4_36 Depth=3
	move	$a3, $a1
	bgeu	$a0, $s3, .LBB4_36
# %bb.43:                               # %._crit_edge.i
                                        #   in Loop: Header=BB4_33 Depth=2
	blt	$a6, $s0, .LBB4_31
# %bb.44:                               #   in Loop: Header=BB4_33 Depth=2
	st.b	$s8, $a1, 0
	b	.LBB4_32
.LBB4_45:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 4
	b	.LBB4_47
.LBB4_46:
	ld.d	$a0, $s4, %pc_lo12(F_floatmul.result)
	ld.d	$a1, $a0, 8
	ori	$a2, $zero, 48
	st.h	$a2, $a1, 0
	st.d	$zero, $a0, 0
.LBB4_47:
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	F_floatmul, .Lfunc_end4-F_floatmul
                                        # -- End function
	.globl	_F_xor                          # -- Begin function _F_xor
	.p2align	5
	.type	_F_xor,@function
_F_xor:                                 # @_F_xor
# %bb.0:
	sltui	$a0, $a0, 1
	sltui	$a1, $a1, 1
	xor	$a0, $a0, $a1
	ret
.Lfunc_end5:
	.size	_F_xor, .Lfunc_end5-_F_xor
                                        # -- End function
	.globl	_F_ABSDIFF                      # -- Begin function _F_ABSDIFF
	.p2align	5
	.type	_F_ABSDIFF,@function
_F_ABSDIFF:                             # @_F_ABSDIFF
# %bb.0:
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 31, 0
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 63
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	ret
.Lfunc_end6:
	.size	_F_ABSDIFF, .Lfunc_end6-_F_ABSDIFF
                                        # -- End function
	.globl	F_floatmagadd                   # -- Begin function F_floatmagadd
	.p2align	5
	.type	F_floatmagadd,@function
F_floatmagadd:                          # @F_floatmagadd
# %bb.0:
	addi.d	$sp, $sp, -96
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
	pcalau12i	$fp, %pc_hi20(F_floatmagadd.needinit)
	ld.bu	$a2, $fp, %pc_lo12(F_floatmagadd.needinit)
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$s4, %pc_hi20(F_floatmagadd.result)
	bnez	$a2, .LBB7_2
# %bb.1:
	pcaddu18i	$ra, %call36(R_makefloat)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(F_floatmagadd.result)
	ori	$a0, $zero, 1
	st.b	$a0, $fp, %pc_lo12(F_floatmagadd.needinit)
.LBB7_2:
	pcalau12i	$a0, %pc_hi20(F_floatmagadd.man1)
	addi.d	$fp, $a0, %pc_lo12(F_floatmagadd.man1)
	st.b	$zero, $fp, 0
	pcalau12i	$a0, %pc_hi20(F_floatmagadd.man2)
	addi.d	$s0, $a0, %pc_lo12(F_floatmagadd.man2)
	st.b	$zero, $s0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	xor	$s5, $a0, $s3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bltz	$s5, .LBB7_6
# %bb.3:
	slti	$s3, $s3, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	sub.d	$a1, $zero, $a0
	masknez	$a0, $a0, $s3
	maskeqz	$a1, $a1, $s3
	or	$s3, $a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	slti	$s5, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	sub.d	$a1, $zero, $a0
	masknez	$a0, $a0, $s5
	maskeqz	$a1, $a1, $s5
	or	$a0, $a1, $a0
	add.w	$s5, $a0, $s3
	blez	$s5, .LBB7_7
.LBB7_4:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	bge	$s3, $a0, .LBB7_8
# %bb.5:
	ld.d	$a0, $s2, 8
	b	.LBB7_9
.LBB7_6:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	srai.d	$a1, $s3, 31
	xor	$a2, $s3, $a1
	sub.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 31, 0
	sub.d	$a0, $a1, $a0
	srai.d	$a1, $a0, 63
	xor	$a0, $a0, $a1
	sub.w	$s5, $a0, $a1
	bgtz	$s5, .LBB7_4
.LBB7_7:
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	sltu	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 199
	bgeu	$a0, $a1, .LBB7_10
	b	.LBB7_11
.LBB7_8:
	ld.d	$a0, $s1, 8
.LBB7_9:
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s5
	ori	$a1, $zero, 199
	bgeu	$a1, $a0, .LBB7_11
.LBB7_10:                               # %.sink.split
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ld.d	$a2, $a1, 32
	pcalau12i	$a0, %got_pc_hi20(Z_err_buf)
	ld.d	$a0, $a0, %got_pc_lo12(Z_err_buf)
	vld	$vr0, $a1, 16
	vld	$vr1, $a1, 0
	st.d	$a2, $a0, 32
	vst	$vr0, $a0, 16
	vst	$vr1, $a0, 0
	pcaddu18i	$ra, %call36(Z_fatal)
	jirl	$ra, $ra, 0
.LBB7_11:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	bge	$s3, $a0, .LBB7_16
# %bb.12:
	move	$a0, $s1
	blez	$s5, .LBB7_20
# %bb.13:                               # %.lr.ph.i.preheader
	addi.d	$s5, $s5, 1
	pcalau12i	$a0, %pc_hi20(F_floatmagadd.man1)
	addi.d	$s3, $a0, %pc_lo12(F_floatmagadd.man1)
	ori	$s6, $zero, 48
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB7_14:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, -1
	stx.h	$s6, $s3, $a0
	bltu	$s7, $s5, .LBB7_14
# %bb.15:
	move	$a0, $s1
	b	.LBB7_20
.LBB7_16:
	move	$a0, $s2
	blez	$s5, .LBB7_20
# %bb.17:                               # %.lr.ph.i43.preheader
	addi.d	$s3, $s5, 1
	ori	$s5, $zero, 48
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB7_18:                               # %.lr.ph.i43
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	stx.h	$s5, $s0, $a0
	bltu	$s6, $s3, .LBB7_18
# %bb.19:
	move	$a0, $s2
.LBB7_20:                               # %addzeros.exit
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	sltu	$a1, $a0, $s1
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s3, $a1, $a2
	add.d	$a1, $fp, $s1
	addi.d	$a2, $a1, -1
	add.d	$a0, $s0, $a0
	addi.d	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(_F_stradd.result)
	addi.d	$a1, $a1, %pc_lo12(_F_stradd.result)
	st.b	$zero, $a1, 199
	bgeu	$a2, $fp, .LBB7_23
# %bb.21:                               # %addzeros.exit
	bgeu	$a0, $s0, .LBB7_23
# %bb.22:
	addi.d	$a1, $a1, 198
	b	.LBB7_33
.LBB7_23:                               # %.lr.ph.i48.preheader
	sltu	$a3, $a2, $fp
	xori	$t0, $a3, 1
	sltu	$a3, $a0, $s0
	xori	$a7, $a3, 1
	addi.d	$a6, $a1, 198
	ori	$a3, $zero, 9
	pcalau12i	$a1, %pc_hi20(F_floatmagadd.man1)
	addi.d	$a4, $a1, %pc_lo12(F_floatmagadd.man1)
	move	$a5, $zero
	.p2align	4, , 16
.LBB7_24:                               # %.lr.ph.i48
                                        # =>This Inner Loop Header: Depth=1
	andi	$a1, $t0, 1
	beqz	$a1, .LBB7_27
# %bb.25:                               #   in Loop: Header=BB7_24 Depth=1
	ld.b	$a1, $a2, 0
	addi.d	$a1, $a1, -48
	addi.d	$a2, $a2, -1
	andi	$a7, $a7, 1
	bnez	$a7, .LBB7_28
.LBB7_26:                               #   in Loop: Header=BB7_24 Depth=1
	move	$a7, $zero
	b	.LBB7_29
	.p2align	4, , 16
.LBB7_27:                               #   in Loop: Header=BB7_24 Depth=1
	move	$a1, $zero
	andi	$a7, $a7, 1
	beqz	$a7, .LBB7_26
.LBB7_28:                               #   in Loop: Header=BB7_24 Depth=1
	ld.b	$a7, $a0, 0
	addi.d	$a7, $a7, -48
	addi.d	$a0, $a0, -1
.LBB7_29:                               #   in Loop: Header=BB7_24 Depth=1
	add.d	$a1, $a1, $a5
	add.w	$t1, $a1, $a7
	slt	$a5, $a3, $t1
	addi.d	$a1, $t1, 246
	masknez	$a7, $t1, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a7
	addi.d	$a7, $a1, 48
	addi.d	$a1, $a6, -1
	st.b	$a7, $a6, 0
	sltu	$a6, $a2, $a4
	xori	$t0, $a6, 1
	sltu	$a6, $a0, $s0
	xori	$a7, $a6, 1
	move	$a6, $a1
	bgeu	$a2, $a4, .LBB7_24
# %bb.30:                               #   in Loop: Header=BB7_24 Depth=1
	move	$a6, $a1
	bgeu	$a0, $s0, .LBB7_24
# %bb.31:                               # %._crit_edge.i
	ori	$a0, $zero, 10
	blt	$t1, $a0, .LBB7_33
# %bb.32:
	ori	$a0, $zero, 49
	st.b	$a0, $a1, 0
	b	.LBB7_34
.LBB7_33:                               # %._crit_edge.thread.i
	addi.d	$a1, $a1, 1
.LBB7_34:                               # %_F_stradd.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	sub.d	$a2, $a0, $s3
	ori	$a0, $zero, 48
	add.d	$s1, $s2, $a2
	bne	$a1, $a0, .LBB7_37
# %bb.35:                               # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(F_floatmagadd.man1)
	addi.d	$a1, $a1, %pc_lo12(F_floatmagadd.man1)
	.p2align	4, , 16
.LBB7_36:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 1
	addi.d	$fp, $a1, 1
	addi.d	$s1, $s1, -1
	move	$a1, $fp
	beq	$a2, $a0, .LBB7_36
.LBB7_37:                               # %._crit_edge
	ld.d	$s0, $s4, %pc_lo12(F_floatmagadd.result)
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	st.w	$s1, $s0, 0
	st.w	$zero, $s0, 4
	move	$a0, $s0
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
.Lfunc_end7:
	.size	F_floatmagadd, .Lfunc_end7-F_floatmagadd
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"didn't use up all of %s in atocf"
	.size	.L.str, 33

	.type	F_floatsub.result,@object       # @F_floatsub.result
	.local	F_floatsub.result
	.comm	F_floatsub.result,8,8
	.type	F_floatsub.needinit,@object     # @F_floatsub.needinit
	.local	F_floatsub.needinit
	.comm	F_floatsub.needinit,1,4
	.type	F_floatsub.man1,@object         # @F_floatsub.man1
	.local	F_floatsub.man1
	.comm	F_floatsub.man1,200,1
	.type	F_floatsub.man2,@object         # @F_floatsub.man2
	.local	F_floatsub.man2
	.comm	F_floatsub.man2,200,1
	.type	F_floatsub.diff,@object         # @F_floatsub.diff
	.local	F_floatsub.diff
	.comm	F_floatsub.diff,200,1
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"mantissas didn't get lined up properly in floatsub"
	.size	.L.str.2, 51

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"lengths not equal in F_floatsub"
	.size	.L.str.3, 32

	.type	F_floatcmp.man1,@object         # @F_floatcmp.man1
	.local	F_floatcmp.man1
	.comm	F_floatcmp.man1,200,1
	.type	F_floatcmp.man2,@object         # @F_floatcmp.man2
	.local	F_floatcmp.man2
	.comm	F_floatcmp.man2,200,1
	.type	F_floatmul.prod,@object         # @F_floatmul.prod
	.local	F_floatmul.prod
	.comm	F_floatmul.prod,200,2
	.type	F_floatmul.man1,@object         # @F_floatmul.man1
	.local	F_floatmul.man1
	.comm	F_floatmul.man1,200,1
	.type	F_floatmul.man2,@object         # @F_floatmul.man2
	.local	F_floatmul.man2
	.comm	F_floatmul.man2,200,1
	.type	F_floatmul.result,@object       # @F_floatmul.result
	.local	F_floatmul.result
	.comm	F_floatmul.result,8,8
	.type	F_floatmul.needinit,@object     # @F_floatmul.needinit
	.local	F_floatmul.needinit
	.comm	F_floatmul.needinit,1,4
	.type	F_floatmagadd.result,@object    # @F_floatmagadd.result
	.local	F_floatmagadd.result
	.comm	F_floatmagadd.result,8,8
	.type	F_floatmagadd.needinit,@object  # @F_floatmagadd.needinit
	.local	F_floatmagadd.needinit
	.comm	F_floatmagadd.needinit,1,4
	.type	F_floatmagadd.man1,@object      # @F_floatmagadd.man1
	.local	F_floatmagadd.man1
	.comm	F_floatmagadd.man1,200,1
	.type	F_floatmagadd.man2,@object      # @F_floatmagadd.man2
	.local	F_floatmagadd.man2
	.comm	F_floatmagadd.man2,200,1
	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.5:
	.asciz	"numbers differ by too much in magnitude"
	.size	.L.str.5, 40

	.type	_F_stradd.result,@object        # @_F_stradd.result
	.local	_F_stradd.result
	.comm	_F_stradd.result,200,1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Z_err_buf
	.addrsig_sym F_floatsub.man1
	.addrsig_sym F_floatsub.man2
	.addrsig_sym F_floatsub.diff
	.addrsig_sym F_floatcmp.man1
	.addrsig_sym F_floatcmp.man2
	.addrsig_sym F_floatmul.prod
	.addrsig_sym F_floatmul.man1
	.addrsig_sym F_floatmul.man2
	.addrsig_sym F_floatmagadd.man1
	.addrsig_sym F_floatmagadd.man2
	.addrsig_sym _F_stradd.result
