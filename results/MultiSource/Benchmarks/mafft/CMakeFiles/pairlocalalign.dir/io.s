	.file	"io.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function putlocalhom3
.LCPI0_0:
	.dword	0x4017333333333333              # double 5.7999999999999998
.LCPI0_1:
	.dword	0x4082c00000000000              # double 600
	.text
	.globl	putlocalhom3
	.p2align	5
	.type	putlocalhom3,@function
putlocalhom3:                           # @putlocalhom3
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	move	$s0, $a4
	move	$s1, $a3
	move	$s5, $a1
	move	$s2, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $a2
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	bnez	$a0, .LBB0_1
# %bb.2:
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s3, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s2, 0
	bnez	$a1, .LBB0_6
# %bb.3:
	movgr2fr.d	$fs1, $zero
	move	$a4, $zero
	move	$s8, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s7, $zero
	fmov.d	$fs0, $fs1
	move	$s6, $fp
.LBB0_4:                                # %._crit_edge
	ld.bu	$a1, $s2, -1
	ori	$a0, $zero, 45
	bne	$a1, $a0, .LBB0_20
# %bb.5:
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_26
.LBB0_6:                                # %.lr.ph.preheader
	movgr2fr.d	$fs2, $zero
	ori	$a5, $zero, 1
	ori	$a6, $zero, 45
	pcalau12i	$a0, %got_pc_hi20(divpairscore)
	ld.d	$a0, $a0, %got_pc_lo12(divpairscore)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI0_1)
	move	$s7, $zero
	move	$a0, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s8, $zero
	move	$a4, $zero
	move	$s6, $fp
	fmov.d	$fs0, $fs2
	fmov.d	$fs1, $fs2
	move	$s4, $s5
	move	$s3, $s2
	b	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_10 Depth=1
	fadd.d	$fs0, $fs1, $fs0
	add.d	$a1, $s0, $s7
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
.LBB0_8:                                #   in Loop: Header=BB0_10 Depth=1
	fmov.d	$fs1, $fs2
	ori	$a5, $zero, 1
	ori	$a6, $zero, 45
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a1, $s3, 0
	addi.d	$s2, $s3, 1
	addi.d	$a1, $a1, -45
	sltu	$a1, $zero, $a1
	ld.bu	$a2, $s4, 0
	add.d	$s1, $s1, $a1
	addi.d	$s5, $s4, 1
	ld.bu	$a1, $s3, 1
	addi.d	$a2, $a2, -45
	sltu	$a2, $zero, $a2
	add.w	$s0, $s0, $a2
	sub.d	$s7, $zero, $s8
	move	$s4, $s5
	move	$s3, $s2
	beqz	$a1, .LBB0_4
.LBB0_10:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	andi	$a2, $a1, 255
	bne	$a0, $a5, .LBB0_17
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	beq	$a2, $a6, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a3, $s4, 0
	bne	$a3, $a6, .LBB0_17
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	addi.d	$a1, $a0, 1
	st.w	$a1, $a2, 0
	blez	$a0, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	move	$s2, $a4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a4, $s2
	st.d	$a0, $s6, 8
	st.d	$zero, $a0, 8
	move	$s6, $a0
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $s1, -1
	addi.w	$a1, $s0, -1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	st.w	$a4, $s6, 24
	st.w	$s8, $s6, 32
	st.w	$a0, $s6, 28
	st.w	$a1, $s6, 36
	move	$a0, $zero
	beqz	$a2, .LBB0_7
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=1
	sub.d	$a1, $a1, $s8
	addi.d	$a1, $a1, 1
	st.w	$a1, $s6, 48
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fmul.d	$fa0, $fa0, $fs3
	fdiv.d	$fa0, $fa0, $fs4
	fst.d	$fa0, $s6, 40
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_17:                               #   in Loop: Header=BB0_10 Depth=1
	beq	$a2, $a6, .LBB0_9
# %bb.18:                               #   in Loop: Header=BB0_10 Depth=1
	ld.b	$a2, $s4, 0
	beq	$a2, $a6, .LBB0_9
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=1
	sltui	$a0, $a0, 1
	masknez	$a3, $a4, $a0
	maskeqz	$a4, $s1, $a0
	or	$a4, $a4, $a3
	masknez	$a3, $s8, $a0
	maskeqz	$a0, $s0, $a0
	or	$s8, $a0, $a3
	ext.w.b	$a0, $a1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(amino_n)
	ld.d	$a1, $a1, %got_pc_lo12(amino_n)
	ldx.w	$a0, $a1, $a0
	ori	$a3, $zero, 104
	mul.d	$a0, $a0, $a3
	pcalau12i	$a3, %got_pc_hi20(n_dis)
	ld.d	$a3, $a3, %got_pc_lo12(n_dis)
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	add.d	$a0, $a3, $a0
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fs1, $fs1, $fa0
	ori	$a0, $zero, 1
	b	.LBB0_9
.LBB0_20:
	ld.bu	$a1, $s5, -1
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_26
# %bb.21:
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	addi.d	$a1, $a0, 1
	st.w	$a1, $a2, 0
	blez	$a0, .LBB0_23
# %bb.22:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	move	$s4, $a4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a4, $s4
	st.d	$a0, $s6, 8
	st.d	$zero, $a0, 8
	move	$s6, $a0
.LBB0_23:
	addi.d	$a1, $s1, -1
	addi.w	$a0, $s0, -1
	st.w	$a4, $s6, 24
	st.w	$s8, $s6, 32
	st.w	$a1, $s6, 28
	st.w	$a0, $s6, 36
	pcalau12i	$a1, %got_pc_hi20(divpairscore)
	ld.d	$a1, $a1, %got_pc_lo12(divpairscore)
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB0_25
# %bb.24:
	fadd.d	$fs0, $fs1, $fs0
	add.d	$a0, $s0, $s7
	add.w	$s3, $a0, $s3
	b	.LBB0_26
.LBB0_25:
	sub.d	$a0, $a0, $s8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 48
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $s6, 40
.LBB0_26:
	ld.d	$a0, $s2, 0
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(divpairscore)
	ld.d	$a0, $a0, %got_pc_lo12(divpairscore)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_32
# %bb.27:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB0_29
# %bb.28:
	ld.d	$fp, $fp, 8
.LBB0_29:
	beqz	$fp, .LBB0_32
# %bb.30:                               # %.lr.ph162
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_1)
	fmul.d	$fa0, $fs0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $s3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs0, $fa0, $fa1
	movfr2gr.d	$s0, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s1, $a0, %pc_lo12(.L.str.4)
.LBB0_31:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	st.w	$s3, $fp, 48
	fst.d	$fs0, $fp, 40
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 8
	bnez	$fp, .LBB0_31
.LBB0_32:                               # %.loopexit
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end0:
	.size	putlocalhom3, .Lfunc_end0-putlocalhom3
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function putlocalhom_ext
.LCPI1_0:
	.dword	0x4017333333333333              # double 5.7999999999999998
.LCPI1_1:
	.dword	0x4082c00000000000              # double 600
	.text
	.globl	putlocalhom_ext
	.p2align	5
	.type	putlocalhom_ext,@function
putlocalhom_ext:                        # @putlocalhom_ext
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	ld.bu	$a5, $a0, 0
	move	$s0, $a4
	move	$s1, $a3
	move	$fp, $a2
	move	$s7, $a1
	beqz	$a5, .LBB1_16
# %bb.1:                                # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(divpairscore)
	ld.d	$a3, $a2, %got_pc_lo12(divpairscore)
	move	$s2, $zero
	move	$a2, $zero
	move	$t1, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s6, $zero
	move	$s3, $zero
	move	$s8, $zero
	ld.w	$a3, $a3, 0
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	fld.d	$fs0, $a3, %pc_lo12(.LCPI1_0)
	pcalau12i	$a3, %pc_hi20(.LCPI1_1)
	fld.d	$fs1, $a3, %pc_lo12(.LCPI1_1)
	ori	$a6, $zero, 1
	ori	$a7, $zero, 45
	move	$s4, $fp
	b	.LBB1_5
.LBB1_2:                                #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $zero
	move	$a2, $zero
	add.d	$a0, $s0, $s2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	ori	$a6, $zero, 1
	ori	$a7, $zero, 45
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=1
	ld.bu	$a1, $s5, 0
	addi.d	$a0, $s5, 1
	addi.d	$a1, $a1, -45
	sltu	$a1, $zero, $a1
	ld.bu	$a3, $s7, 0
	add.d	$s1, $s1, $a1
	addi.d	$s7, $s7, 1
	ld.bu	$a5, $s5, 1
	addi.d	$a3, $a3, -45
	sltu	$a3, $zero, $a3
	add.w	$s0, $s0, $a3
	sub.d	$s2, $zero, $s3
	beqz	$a5, .LBB1_15
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	move	$s5, $a0
	andi	$a0, $a5, 255
	bne	$a2, $a6, .LBB1_12
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	beq	$a0, $a7, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	ld.bu	$a1, $s7, 0
	bne	$a1, $a7, .LBB1_12
.LBB1_8:                                #   in Loop: Header=BB1_5 Depth=1
	blez	$t1, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $s3
	move	$s3, $t1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$t1, $s3
	move	$s3, $s4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	st.d	$zero, $a0, 8
	move	$s4, $a0
.LBB1_10:                               #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $s1, -1
	addi.w	$a0, $s0, -1
	addi.w	$t1, $t1, 1
	st.w	$s8, $s4, 24
	st.w	$s3, $s4, 32
	st.w	$a1, $s4, 28
	st.w	$a0, $s4, 36
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beqz	$a1, .LBB1_2
# %bb.11:                               #   in Loop: Header=BB1_5 Depth=1
	move	$a2, $zero
	sub.d	$a0, $a0, $s3
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 48
	movgr2fr.w	$fa0, $s6
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
	fdiv.d	$fa0, $fa0, $fs1
	fst.d	$fa0, $s4, 40
	move	$s6, $zero
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_5 Depth=1
	beq	$a0, $a7, .LBB1_4
# %bb.13:                               #   in Loop: Header=BB1_5 Depth=1
	ld.b	$a0, $s7, 0
	beq	$a0, $a7, .LBB1_4
# %bb.14:                               #   in Loop: Header=BB1_5 Depth=1
	sltui	$a1, $a2, 1
	masknez	$a2, $s8, $a1
	maskeqz	$a3, $s1, $a1
	or	$s8, $a3, $a2
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s0, $a1
	or	$s3, $a1, $a2
	ext.w.b	$a1, $a5
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	ldx.w	$a1, $a2, $a1
	ori	$a3, $zero, 104
	mul.d	$a1, $a1, $a3
	pcalau12i	$a3, %got_pc_hi20(n_dis)
	ld.d	$a3, $a3, %got_pc_lo12(n_dis)
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	add.d	$a1, $a3, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	add.w	$s6, $a0, $s6
	ori	$a2, $zero, 1
	b	.LBB1_4
.LBB1_15:                               # %._crit_edge.loopexit
	slt	$a2, $zero, $t1
	movgr2fr.w	$fa0, $s6
	ffint.d.w	$fs0, $fa0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, -1
	ori	$a0, $zero, 45
	bne	$a3, $a0, .LBB1_17
	b	.LBB1_22
.LBB1_16:
	move	$s8, $zero
	move	$s3, $zero
	move	$s5, $zero
	move	$a2, $zero
	move	$s2, $zero
	movgr2fr.d	$fs0, $zero
	move	$s4, $fp
	ld.bu	$a3, $a0, -1
	ori	$a0, $zero, 45
	beq	$a3, $a0, .LBB1_22
.LBB1_17:
	ld.bu	$a1, $s7, -1
	beq	$a1, $a0, .LBB1_22
# %bb.18:
	beqz	$a2, .LBB1_20
# %bb.19:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 8
	st.d	$zero, $a0, 8
	move	$s4, $a0
.LBB1_20:
	addi.d	$a1, $s1, -1
	addi.w	$a0, $s0, -1
	st.w	$s8, $s4, 24
	st.w	$s3, $s4, 32
	st.w	$a1, $s4, 28
	st.w	$a0, $s4, 36
	pcalau12i	$a1, %got_pc_hi20(divpairscore)
	ld.d	$a1, $a1, %got_pc_lo12(divpairscore)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB1_27
# %bb.21:
	sub.d	$a0, $a0, $s3
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 48
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_1)
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $s4, 40
.LBB1_22:
	pcalau12i	$a0, %got_pc_hi20(divpairscore)
	ld.d	$a0, $a0, %got_pc_lo12(divpairscore)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_26
.LBB1_23:
	beqz	$fp, .LBB1_26
# %bb.24:                               # %.lr.ph145.preheader
	lu12i.w	$a0, 209715
	ori	$a0, $a0, 819
	lu32i.d	$a0, 471859
	lu52i.d	$a0, $a0, 1025
	.p2align	4, , 16
.LBB1_25:                               # %.lr.ph145
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s5, $fp, 48
	st.d	$a0, $fp, 40
	ld.d	$fp, $fp, 8
	bnez	$fp, .LBB1_25
.LBB1_26:                               # %.loopexit
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.LBB1_27:
	add.d	$a0, $s0, $s2
	add.d	$s5, $a0, $s5
	pcalau12i	$a0, %got_pc_hi20(divpairscore)
	ld.d	$a0, $a0, %got_pc_lo12(divpairscore)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_23
	b	.LBB1_26
.Lfunc_end1:
	.size	putlocalhom_ext, .Lfunc_end1-putlocalhom_ext
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function putlocalhom2
.LCPI2_0:
	.dword	0x4017333333333333              # double 5.7999999999999998
.LCPI2_1:
	.dword	0x4082c00000000000              # double 600
	.text
	.globl	putlocalhom2
	.p2align	5
	.type	putlocalhom2,@function
putlocalhom2:                           # @putlocalhom2
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
	ld.bu	$a5, $a0, 0
	move	$s0, $a4
	move	$s1, $a3
	move	$fp, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a5, .LBB2_16
# %bb.1:                                # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(divpairscore)
	ld.d	$a3, $a2, %got_pc_lo12(divpairscore)
	move	$s4, $zero
	move	$a2, $zero
	move	$a6, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s8, $zero
	move	$s6, $zero
	move	$a4, $zero
	ld.w	$a3, $a3, 0
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$t0, $zero, 45
	move	$s7, $fp
	b	.LBB2_5
.LBB2_2:                                #   in Loop: Header=BB2_5 Depth=1
	move	$a2, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $s0, $s4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=1
	move	$s8, $zero
	ori	$a7, $zero, 1
	ori	$t0, $zero, 45
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a1, $s2, 0
	addi.d	$a0, $s2, 1
	addi.d	$a1, $a1, -45
	sltu	$a1, $zero, $a1
	ld.bu	$a3, $s3, 0
	add.d	$s1, $s1, $a1
	addi.d	$a1, $s3, 1
	ld.bu	$a5, $s2, 1
	addi.d	$a3, $a3, -45
	sltu	$a3, $zero, $a3
	add.w	$s0, $s0, $a3
	sub.d	$s4, $zero, $s6
	beqz	$a5, .LBB2_15
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	move	$s3, $a1
	andi	$a0, $a5, 255
	bne	$a2, $a7, .LBB2_12
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	beq	$a0, $t0, .LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a1, $s3, 0
	bne	$a1, $t0, .LBB2_12
.LBB2_8:                                #   in Loop: Header=BB2_5 Depth=1
	blez	$a6, .LBB2_10
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	move	$s5, $s8
	move	$s8, $a4
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	move	$s7, $s6
	move	$s6, $a6
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a6, $s6
	move	$s6, $s7
	move	$a4, $s8
	move	$s8, $s5
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	st.d	$zero, $a0, 8
	move	$s7, $a0
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a1, $s1, -1
	addi.w	$a0, $s0, -1
	addi.w	$a6, $a6, 1
	st.w	$a4, $s7, 24
	st.w	$s6, $s7, 32
	st.w	$a1, $s7, 28
	st.w	$a0, $s7, 36
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB2_2
# %bb.11:                               #   in Loop: Header=BB2_5 Depth=1
	move	$a2, $zero
	movgr2fr.w	$fa0, $s8
	sub.d	$a0, $a0, $s6
	addi.d	$a0, $a0, 1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	fld.d	$fa2, $a1, %pc_lo12(.LCPI2_0)
	ffint.d.w	$fa1, $fa1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_1)
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	st.w	$a0, $s7, 48
	fdiv.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s7, 40
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_12:                               #   in Loop: Header=BB2_5 Depth=1
	beq	$a0, $t0, .LBB2_4
# %bb.13:                               #   in Loop: Header=BB2_5 Depth=1
	ld.b	$a0, $s3, 0
	beq	$a0, $t0, .LBB2_4
# %bb.14:                               #   in Loop: Header=BB2_5 Depth=1
	sltui	$a1, $a2, 1
	masknez	$a2, $a4, $a1
	maskeqz	$a3, $s1, $a1
	or	$a4, $a3, $a2
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s0, $a1
	or	$s6, $a1, $a2
	ext.w.b	$a1, $a5
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	ldx.w	$a1, $a2, $a1
	ori	$a3, $zero, 104
	mul.d	$a1, $a1, $a3
	pcalau12i	$a3, %got_pc_hi20(n_dis)
	ld.d	$a3, $a3, %got_pc_lo12(n_dis)
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	add.d	$a1, $a3, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	add.w	$s8, $a0, $s8
	ori	$a2, $zero, 1
	b	.LBB2_4
.LBB2_15:                               # %._crit_edge.loopexit
	slt	$a2, $zero, $a6
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, -1
	ori	$a0, $zero, 45
	bne	$a3, $a0, .LBB2_17
	b	.LBB2_22
.LBB2_16:
	move	$a4, $zero
	move	$s6, $zero
	move	$s8, $zero
	move	$s3, $zero
	move	$s2, $zero
	move	$a2, $zero
	move	$s4, $zero
	move	$s7, $fp
	ld.bu	$a3, $a0, -1
	ori	$a0, $zero, 45
	beq	$a3, $a0, .LBB2_22
.LBB2_17:
	ld.bu	$a1, $a1, -1
	beq	$a1, $a0, .LBB2_22
# %bb.18:
	beqz	$a2, .LBB2_20
# %bb.19:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	move	$s5, $a4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a4, $s5
	st.d	$a0, $s7, 8
	st.d	$zero, $a0, 8
	move	$s7, $a0
.LBB2_20:
	addi.d	$a1, $s1, -1
	addi.w	$a0, $s0, -1
	st.w	$a4, $s7, 24
	st.w	$s6, $s7, 32
	st.w	$a1, $s7, 28
	st.w	$a0, $s7, 36
	pcalau12i	$a1, %got_pc_hi20(divpairscore)
	ld.d	$a1, $a1, %got_pc_lo12(divpairscore)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB2_27
# %bb.21:
	sub.d	$a0, $a0, $s6
	addi.d	$a0, $a0, 1
	st.w	$a0, $s7, 48
	movgr2fr.w	$fa0, $s8
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(.LCPI2_0)
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	fld.d	$fa3, $a0, %pc_lo12(.LCPI2_1)
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s7, 40
.LBB2_22:
	pcalau12i	$a0, %got_pc_hi20(divpairscore)
	ld.d	$a0, $a0, %got_pc_lo12(divpairscore)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_26
.LBB2_23:
	beqz	$fp, .LBB2_26
# %bb.24:                               # %.lr.ph149
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	movgr2fr.w	$fa1, $s3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ori	$a0, $zero, 600
	mul.d	$a0, $s2, $a0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	.p2align	4, , 16
.LBB2_25:                               # =>This Inner Loop Header: Depth=1
	st.w	$s2, $fp, 48
	fst.d	$fa0, $fp, 40
	ld.d	$fp, $fp, 8
	bnez	$fp, .LBB2_25
.LBB2_26:                               # %.loopexit
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
.LBB2_27:
	add.w	$s3, $s3, $s8
	add.d	$a0, $s0, $s4
	add.w	$s2, $a0, $s2
	pcalau12i	$a0, %got_pc_hi20(divpairscore)
	ld.d	$a0, $a0, %got_pc_lo12(divpairscore)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_23
	b	.LBB2_26
.Lfunc_end2:
	.size	putlocalhom2, .Lfunc_end2-putlocalhom2
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function putlocalhom
.LCPI3_0:
	.dword	0x4017333333333333              # double 5.7999999999999998
.LCPI3_1:
	.dword	0x4082c00000000000              # double 600
	.text
	.globl	putlocalhom
	.p2align	5
	.type	putlocalhom,@function
putlocalhom:                            # @putlocalhom
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	ld.bu	$a5, $a0, 0
	move	$s0, $a4
	move	$s1, $a3
	move	$fp, $a2
	pcalau12i	$a4, %pc_hi20(.LCPI3_0)
	pcalau12i	$a3, %pc_hi20(.LCPI3_1)
	beqz	$a5, .LBB3_18
# %bb.1:                                # %.lr.ph
	move	$s2, $a1
	pcalau12i	$a1, %got_pc_hi20(divpairscore)
	ld.d	$a2, $a1, %got_pc_lo12(divpairscore)
	move	$s7, $zero
	move	$a1, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$s6, $zero
	move	$s4, $zero
	ld.w	$a2, $a2, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s5, $a0, 1
	movgr2fr.d	$fs2, $zero
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	fld.d	$fs3, $a4, %pc_lo12(.LCPI3_0)
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	fld.d	$fs4, $a3, %pc_lo12(.LCPI3_1)
	ori	$a4, $zero, 1
	ori	$a7, $zero, 45
	move	$s8, $fp
	fmov.d	$fs0, $fs2
	fmov.d	$fs1, $fs2
	b	.LBB3_5
.LBB3_2:                                #   in Loop: Header=BB3_5 Depth=1
	move	$a1, $zero
	fadd.d	$fs0, $fs1, $fs0
	add.d	$a0, $s0, $s7
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a0, $a2
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
.LBB3_3:                                #   in Loop: Header=BB3_5 Depth=1
	fmov.d	$fs1, $fs2
	ori	$a4, $zero, 1
	ori	$a7, $zero, 45
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	ld.bu	$a0, $s5, -1
	addi.d	$a0, $a0, -45
	ld.bu	$a2, $s2, 0
	sltu	$a0, $zero, $a0
	add.d	$s1, $s1, $a0
	addi.d	$s2, $s2, 1
	addi.d	$a0, $a2, -45
	ld.bu	$a5, $s5, 0
	sltu	$a0, $zero, $a0
	add.w	$s0, $s0, $a0
	sub.d	$s7, $zero, $s6
	addi.d	$s5, $s5, 1
	beqz	$a5, .LBB3_15
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	andi	$a0, $a5, 255
	bne	$a1, $a4, .LBB3_12
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	beq	$a0, $a7, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	ld.bu	$a2, $s2, 0
	bne	$a2, $a7, .LBB3_12
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	blez	$s3, .LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_5 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 8
	st.d	$zero, $a0, 8
	move	$s8, $a0
.LBB3_10:                               #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a1, $s1, -1
	addi.w	$a0, $s0, -1
	addi.w	$s3, $s3, 1
	st.w	$s4, $s8, 24
	st.w	$s6, $s8, 32
	st.w	$a1, $s8, 28
	st.w	$a0, $s8, 36
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB3_2
# %bb.11:                               #   in Loop: Header=BB3_5 Depth=1
	move	$a1, $zero
	sub.d	$a0, $a0, $s6
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 48
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fmul.d	$fa0, $fa0, $fs3
	fdiv.d	$fa0, $fa0, $fs4
	fst.d	$fa0, $s8, 40
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_12:                               #   in Loop: Header=BB3_5 Depth=1
	beq	$a0, $a7, .LBB3_4
# %bb.13:                               #   in Loop: Header=BB3_5 Depth=1
	ld.b	$a0, $s2, 0
	beq	$a0, $a7, .LBB3_4
# %bb.14:                               #   in Loop: Header=BB3_5 Depth=1
	sltui	$a1, $a1, 1
	masknez	$a2, $s4, $a1
	maskeqz	$a3, $s1, $a1
	or	$s4, $a3, $a2
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s0, $a1
	or	$s6, $a1, $a2
	ext.w.b	$a1, $a5
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	ldx.w	$a1, $a2, $a1
	ori	$a3, $zero, 104
	mul.d	$a1, $a1, $a3
	pcalau12i	$a3, %got_pc_hi20(n_dis)
	ld.d	$a3, $a3, %got_pc_lo12(n_dis)
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	add.d	$a1, $a3, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fs1, $fs1, $fa0
	ori	$a1, $zero, 1
	b	.LBB3_4
.LBB3_15:                               # %._crit_edge
	blez	$s3, .LBB3_17
# %bb.16:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 8
	st.d	$zero, $a0, 8
	move	$s8, $a0
.LBB3_17:                               # %._crit_edge.thread
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_19
.LBB3_18:
	movgr2fr.d	$fs0, $zero
	move	$s7, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$s6, $zero
	move	$s4, $zero
	fmov.d	$fs1, $fs0
	move	$s8, $fp
.LBB3_19:                               # %._crit_edge.thread
	addi.d	$a1, $s1, -1
	addi.w	$a0, $s0, -1
	st.w	$s4, $s8, 24
	st.w	$s6, $s8, 32
	st.w	$a1, $s8, 28
	st.w	$a0, $s8, 36
	pcalau12i	$a1, %got_pc_hi20(divpairscore)
	ld.d	$a1, $a1, %got_pc_lo12(divpairscore)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB3_21
# %bb.20:                               # %.thread
	sub.d	$a0, $a0, $s6
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 48
	movgr2fr.w	$fa0, $a0
	fld.d	$fa1, $a4, %pc_lo12(.LCPI3_0)
	fld.d	$fa2, $a3, %pc_lo12(.LCPI3_1)
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $s8, 40
	b	.LBB3_24
.LBB3_21:
	beqz	$fp, .LBB3_24
# %bb.22:                               # %.lr.ph146
	add.d	$a0, $s0, $s7
	fld.d	$fa0, $a4, %pc_lo12(.LCPI3_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI3_1)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	fadd.d	$fa2, $fs1, $fs0
	fmul.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	.p2align	4, , 16
.LBB3_23:                               # =>This Inner Loop Header: Depth=1
	st.w	$a0, $fp, 48
	fst.d	$fa0, $fp, 40
	ld.d	$fp, $fp, 8
	bnez	$fp, .LBB3_23
.LBB3_24:                               # %.loopexit
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end3:
	.size	putlocalhom, .Lfunc_end3-putlocalhom
                                        # -- End function
	.globl	cutal                           # -- Begin function cutal
	.p2align	5
	.type	cutal,@function
cutal:                                  # @cutal
# %bb.0:
	move	$a4, $zero
	.p2align	4, , 16
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	xor	$a5, $a2, $a1
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a0, $a5
	or	$a4, $a5, $a4
	beq	$a3, $a1, .LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	ld.bu	$a5, $a0, 0
	addi.d	$a6, $a5, -45
	sltu	$a6, $zero, $a6
	add.w	$a1, $a1, $a6
	addi.d	$a0, $a0, 1
	bnez	$a5, .LBB4_1
.LBB4_3:
	st.b	$zero, $a0, 1
	move	$a0, $a4
	ret
.Lfunc_end4:
	.size	cutal, .Lfunc_end4-cutal
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	ErrorExit                       # -- Begin function ErrorExit
	.p2align	5
	.type	ErrorExit,@function
ErrorExit:                              # @ErrorExit
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	ErrorExit, .Lfunc_end5-ErrorExit
                                        # -- End function
	.text
	.globl	strncpy_caseC                   # -- Begin function strncpy_caseC
	.p2align	5
	.type	strncpy_caseC,@function
strncpy_caseC:                          # @strncpy_caseC
# %bb.0:
	pcalau12i	$a3, %got_pc_hi20(dorp)
	ld.d	$a3, $a3, %got_pc_lo12(dorp)
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 100
	bne	$a3, $a4, .LBB6_6
# %bb.1:
	pcalau12i	$a3, %pc_hi20(upperCase)
	ld.w	$a3, $a3, %pc_lo12(upperCase)
	blez	$a3, .LBB6_6
# %bb.2:                                # %.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	beqz	$a2, .LBB6_5
# %bb.3:                                # %.lr.ph
	move	$s0, $a2
	move	$fp, $a0
	move	$s1, $a1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	move	$a1, $s0
	move	$a3, $fp
	.p2align	4, , 16
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	slli.d	$a4, $a4, 2
	ldx.b	$a4, $a5, $a4
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a3, 1
	st.b	$a4, $a3, 0
	move	$a3, $a5
	bnez	$a1, .LBB6_4
.LBB6_5:                                # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_6:
	pcaddu18i	$t8, %call36(strncpy)
	jr	$t8
.Lfunc_end6:
	.size	strncpy_caseC, .Lfunc_end6-strncpy_caseC
                                        # -- End function
	.globl	seqUpper                        # -- Begin function seqUpper
	.p2align	5
	.type	seqUpper,@function
seqUpper:                               # @seqUpper
# %bb.0:
	blez	$a0, .LBB7_7
# %bb.1:                                # %.lr.ph19.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$s2, $zero
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %._crit_edge
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $s0, .LBB7_6
.LBB7_3:                                # %.lr.ph19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB7_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	alsl.d	$s3, $s2, $fp, 3
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a2, $s1, 30, 0
	.p2align	4, , 16
.LBB7_5:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s3, 0
	ldx.b	$a4, $a3, $a1
	ld.d	$a5, $a0, 0
	slli.d	$a4, $a4, 2
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a3, $a1
	addi.d	$a1, $a1, 1
	bne	$a2, $a1, .LBB7_5
	b	.LBB7_2
.LBB7_6:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB7_7:                                # %._crit_edge20
	ret
.Lfunc_end7:
	.size	seqUpper, .Lfunc_end7-seqUpper
                                        # -- End function
	.globl	seqLower                        # -- Begin function seqLower
	.p2align	5
	.type	seqLower,@function
seqLower:                               # @seqLower
# %bb.0:
	blez	$a0, .LBB8_7
# %bb.1:                                # %.lr.ph19.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$s2, $zero
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %._crit_edge
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $s0, .LBB8_6
.LBB8_3:                                # %.lr.ph19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB8_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	alsl.d	$s3, $s2, $fp, 3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a2, $s1, 30, 0
	.p2align	4, , 16
.LBB8_5:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s3, 0
	ldx.b	$a4, $a3, $a1
	ld.d	$a5, $a0, 0
	slli.d	$a4, $a4, 2
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a3, $a1
	addi.d	$a1, $a1, 1
	bne	$a2, $a1, .LBB8_5
	b	.LBB8_2
.LBB8_6:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB8_7:                                # %._crit_edge20
	ret
.Lfunc_end8:
	.size	seqLower, .Lfunc_end8-seqLower
                                        # -- End function
	.globl	getaline_fp_eof                 # -- Begin function getaline_fp_eof
	.p2align	5
	.type	getaline_fp_eof,@function
getaline_fp_eof:                        # @getaline_fp_eof
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
	ori	$fp, $zero, 1
	blez	$a1, .LBB9_7
# %bb.1:                                # %.lr.ph.preheader
	move	$s1, $a2
	move	$s2, $a1
	addi.w	$s3, $zero, -1
	ori	$s4, $zero, 10
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB9_7
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB9_2 Depth=1
	beq	$a0, $s4, .LBB9_6
# %bb.4:                                #   in Loop: Header=BB9_2 Depth=1
	addi.d	$a1, $s0, 1
	addi.w	$s2, $s2, -1
	st.b	$a0, $s0, 0
	move	$s0, $a1
	bnez	$s2, .LBB9_2
# %bb.5:
	move	$fp, $zero
	b	.LBB9_8
.LBB9_6:                                # %.lr.ph..critedge.loopexit38_crit_edge
	move	$fp, $zero
.LBB9_7:                                # %.critedge
	move	$a1, $s0
.LBB9_8:                                # %.critedge
	st.b	$zero, $a1, 0
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end9:
	.size	getaline_fp_eof, .Lfunc_end9-getaline_fp_eof
                                        # -- End function
	.globl	getaline_fp_eof_new             # -- Begin function getaline_fp_eof_new
	.p2align	5
	.type	getaline_fp_eof_new,@function
getaline_fp_eof_new:                    # @getaline_fp_eof_new
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bnez	$a0, .LBB10_14
# %bb.1:                                # %.preheader24
	blez	$s1, .LBB10_7
# %bb.2:
	addi.w	$s2, $zero, -1
	ori	$s3, $zero, 10
	.p2align	4, , 16
.LBB10_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB10_12
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB10_3 Depth=1
	beq	$a0, $s3, .LBB10_11
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=1
	addi.d	$a2, $s0, 1
	addi.w	$s1, $s1, -1
	st.b	$a0, $s0, 0
	move	$s0, $a2
	bnez	$s1, .LBB10_3
# %bb.6:                                # %.critedge
	move	$a1, $zero
	ori	$a3, $zero, 10
	st.b	$zero, $a2, 0
	bne	$a0, $a3, .LBB10_8
	b	.LBB10_14
.LBB10_7:                               # %.critedge.thread52
	st.b	$zero, $s0, 0
	ori	$a1, $zero, 1
.LBB10_8:                               # %.preheader.preheader
	move	$s0, $a1
	ori	$s1, $zero, 10
	.p2align	4, , 16
.LBB10_9:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB10_9
# %bb.10:
	move	$a1, $s0
	b	.LBB10_14
.LBB10_11:                              # %.critedge.thread.loopexit82
	move	$a1, $zero
	b	.LBB10_13
.LBB10_12:                              # %.critedge.thread.loopexit
	ori	$a1, $zero, 1
.LBB10_13:                              # %.critedge.thread
	st.b	$zero, $s0, 0
.LBB10_14:                              # %.loopexit
	move	$a0, $a1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	getaline_fp_eof_new, .Lfunc_end10-getaline_fp_eof_new
                                        # -- End function
	.globl	myfgets                         # -- Begin function myfgets
	.p2align	5
	.type	myfgets,@function
myfgets:                                # @myfgets
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB11_10
# %bb.1:                                # %.preheader
	blez	$s1, .LBB11_5
# %bb.2:                                # %.lr.ph.preheader
	ori	$s2, $zero, 10
	.p2align	4, , 16
.LBB11_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB11_9
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	addi.d	$a1, $s0, 1
	addi.w	$s1, $s1, -1
	st.b	$a0, $s0, 0
	move	$s0, $a1
	bnez	$s1, .LBB11_3
	b	.LBB11_6
.LBB11_5:
	move	$a1, $s0
.LBB11_6:                               # %.critedge18
	st.b	$zero, $a1, 0
	ori	$s0, $zero, 10
	.p2align	4, , 16
.LBB11_7:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB11_7
# %bb.8:
	move	$a0, $zero
	b	.LBB11_10
.LBB11_9:                               # %.critedge
	move	$a0, $zero
	st.b	$zero, $s0, 0
.LBB11_10:                              # %.loopexit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	myfgets, .Lfunc_end11-myfgets
                                        # -- End function
	.globl	input_new                       # -- Begin function input_new
	.p2align	5
	.type	input_new,@function
input_new:                              # @input_new
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB12_2
# %bb.1:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
.LBB12_2:
	blez	$fp, .LBB12_5
# %bb.3:                                # %.lr.ph.preheader
	addi.d	$s1, $sp, 14
	move	$s2, $fp
	.p2align	4, , 16
.LBB12_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $s1, 0
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 1
	bnez	$s2, .LBB12_4
	b	.LBB12_6
.LBB12_5:
	move	$fp, $zero
.LBB12_6:                               # %._crit_edge
	addi.d	$a0, $sp, 14
	stx.b	$zero, $fp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end12:
	.size	input_new, .Lfunc_end12-input_new
                                        # -- End function
	.globl	PreRead                         # -- Begin function PreRead
	.p2align	5
	.type	PreRead,@function
PreRead:                                # @PreRead
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 0
	st.w	$zero, $fp, 0
	ld.w	$a0, $s0, 0
	blez	$a0, .LBB13_7
# %bb.1:                                # %.lr.ph.preheader
	move	$s2, $zero
	ori	$s3, $zero, 61
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	ld.w	$a0, $s0, 0
	bge	$s2, $a0, .LBB13_6
.LBB13_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 16
	bne	$a0, $s3, .LBB13_2
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	addi.w	$s2, $s2, 1
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB13_2
# %bb.5:                                #   in Loop: Header=BB13_3 Depth=1
	st.w	$a0, $fp, 0
	b	.LBB13_2
.LBB13_6:                               # %._crit_edge
	ld.w	$a0, $fp, 0
	lu12i.w	$a1, 1220
	ori	$a1, $a1, 2881
	bge	$a0, $a1, .LBB13_10
.LBB13_7:                               # %._crit_edge.thread
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	lu12i.w	$fp, 12
	ori	$a1, $fp, 849
	bge	$a0, $a1, .LBB13_9
# %bb.8:
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB13_9:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ori	$a3, $fp, 848
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB13_10:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	PreRead, .Lfunc_end13-PreRead
                                        # -- End function
	.globl	allSpace                        # -- Begin function allSpace
	.p2align	5
	.type	allSpace,@function
allSpace:                               # @allSpace
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.bu	$s0, $a0, 0
	beqz	$s0, .LBB14_3
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	addi.d	$a2, $fp, 1
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	ext.w.b	$a3, $s0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a1, $a3
	ld.bu	$s0, $a2, 0
	andi	$a3, $a3, 2048
	sltui	$a3, $a3, 1
	maskeqz	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	bnez	$s0, .LBB14_2
	b	.LBB14_4
.LBB14_3:
	ori	$a0, $zero, 1
.LBB14_4:                               # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	allSpace, .Lfunc_end14-allSpace
                                        # -- End function
	.globl	Read                            # -- Begin function Read
	.p2align	5
	.type	Read,@function
Read:                                   # @Read
# %bb.0:
	move	$a3, $a2
	move	$a2, $a1
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $a0, 0
	pcaddu18i	$t8, %call36(FRead)
	jr	$t8
.Lfunc_end15:
	.size	Read, .Lfunc_end15-Read
                                        # -- End function
	.globl	FRead                           # -- Begin function FRead
	.p2align	5
	.type	FRead,@function
FRead:                                  # @FRead
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $a0
	addi.d	$a0, $sp, 56
	ori	$a1, $zero, 255
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_3
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ori	$a1, $zero, 1
.LBB16_2:
	st.w	$a1, $a0, 0
	b	.LBB16_9
.LBB16_3:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_5
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(upperCase)
	st.w	$a1, $a0, %pc_lo12(upperCase)
	b	.LBB16_9
.LBB16_5:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_7
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(upperCase)
	st.w	$zero, $a0, %pc_lo12(upperCase)
	b	.LBB16_9
.LBB16_7:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_42
# %bb.8:
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(upperCase)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(upperCase)
.LBB16_9:
	pcalau12i	$a0, %got_pc_hi20(geta2)
	ld.d	$a0, $a0, %got_pc_lo12(geta2)
	lu12i.w	$a1, 239665
	ori	$a1, $a1, 623
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB16_41
# %bb.10:                               # %.lr.ph62.preheader
	move	$s5, $zero
	addi.w	$s4, $zero, -1
	ori	$s6, $zero, 10
	addi.w	$a0, $zero, -58
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -489336
	ori	$s8, $a0, 2185
	b	.LBB16_13
	.p2align	4, , 16
.LBB16_11:                              #   in Loop: Header=BB16_13 Depth=1
	move	$a0, $zero
.LBB16_12:                              # %.loopexit
                                        #   in Loop: Header=BB16_13 Depth=1
	ld.d	$a1, $s1, 0
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$s1, $a0, 0
	addi.d	$s5, $s5, 1
	bge	$s5, $s1, .LBB16_33
.LBB16_13:                              # %.lr.ph62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_15 Depth 2
                                        #     Child Loop BB16_19 Depth 2
                                        #     Child Loop BB16_26 Depth 2
                                        #       Child Loop BB16_28 Depth 3
                                        #       Child Loop BB16_32 Depth 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_21
# %bb.14:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB16_13 Depth=1
	addi.d	$s1, $sp, 56
	ori	$s0, $zero, 255
	.p2align	4, , 16
.LBB16_15:                              # %.lr.ph.i
                                        #   Parent Loop BB16_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB16_20
# %bb.16:                               # %.lr.ph.i
                                        #   in Loop: Header=BB16_15 Depth=2
	beq	$a0, $s6, .LBB16_20
# %bb.17:                               #   in Loop: Header=BB16_15 Depth=2
	addi.d	$a1, $s1, 1
	addi.w	$s0, $s0, -1
	st.b	$a0, $s1, 0
	move	$s1, $a1
	bnez	$s0, .LBB16_15
# %bb.18:                               # %.critedge.i
                                        #   in Loop: Header=BB16_13 Depth=1
	st.b	$zero, $a1, 0
	beq	$a0, $s6, .LBB16_21
	.p2align	4, , 16
.LBB16_19:                              # %.preheader.i
                                        #   Parent Loop BB16_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB16_19
	b	.LBB16_21
	.p2align	4, , 16
.LBB16_20:                              # %.critedge.thread.i
                                        #   in Loop: Header=BB16_13 Depth=1
	st.b	$zero, $s1, 0
.LBB16_21:                              # %getaline_fp_eof_new.exit
                                        #   in Loop: Header=BB16_13 Depth=1
	slli.d	$a0, $s5, 8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	ori	$a1, $zero, 255
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s5, 3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	slli.d	$a2, $s5, 2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	stx.w	$a0, $a4, $a2
	st.b	$zero, $a1, 0
	ldx.w	$a0, $a4, $a2
	alsl.d	$s1, $s5, $a3, 3
	beqz	$a0, .LBB16_11
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB16_13 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB16_12
# %bb.23:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB16_13 Depth=1
	move	$a1, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$s7, $s5, $a0, 2
	b	.LBB16_26
	.p2align	4, , 16
.LBB16_24:                              # %.critedge.thread.i40
                                        #   in Loop: Header=BB16_26 Depth=2
	st.b	$zero, $s0, 0
.LBB16_25:                              # %getaline_fp_eof_new.exit49
                                        #   in Loop: Header=BB16_26 Depth=2
	ld.d	$a0, $s1, 0
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	addi.w	$a1, $a0, -1
	mul.d	$a2, $a1, $s8
	srli.d	$a2, $a2, 32
	add.w	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	srai.d	$a1, $a1, 5
	add.d	$a2, $a1, $a2
	addi.w	$a1, $s3, 1
	bge	$s3, $a2, .LBB16_12
.LBB16_26:                              # %.lr.ph
                                        #   Parent Loop BB16_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_28 Depth 3
                                        #       Child Loop BB16_32 Depth 3
	move	$s3, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_25
# %bb.27:                               # %.lr.ph.i37.preheader
                                        #   in Loop: Header=BB16_26 Depth=2
	addi.d	$s0, $sp, 56
	ori	$fp, $zero, 255
	.p2align	4, , 16
.LBB16_28:                              # %.lr.ph.i37
                                        #   Parent Loop BB16_13 Depth=1
                                        #     Parent Loop BB16_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB16_24
# %bb.29:                               # %.lr.ph.i37
                                        #   in Loop: Header=BB16_28 Depth=3
	beq	$a0, $s6, .LBB16_24
# %bb.30:                               #   in Loop: Header=BB16_28 Depth=3
	addi.d	$a1, $s0, 1
	addi.w	$fp, $fp, -1
	st.b	$a0, $s0, 0
	move	$s0, $a1
	bnez	$fp, .LBB16_28
# %bb.31:                               # %.critedge.i44
                                        #   in Loop: Header=BB16_26 Depth=2
	st.b	$zero, $a1, 0
	beq	$a0, $s6, .LBB16_25
	.p2align	4, , 16
.LBB16_32:                              # %.preheader.i47
                                        #   Parent Loop BB16_13 Depth=1
                                        #     Parent Loop BB16_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB16_32
	b	.LBB16_25
.LBB16_33:                              # %._crit_edge
	blez	$s1, .LBB16_41
# %bb.34:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB16_41
# %bb.35:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(upperCase)
	ld.w	$a0, $a0, %pc_lo12(upperCase)
	beq	$a0, $s4, .LBB16_41
# %bb.36:                               # %.lr.ph19.preheader.i
	move	$s2, $zero
	b	.LBB16_38
	.p2align	4, , 16
.LBB16_37:                              # %._crit_edge.i
                                        #   in Loop: Header=BB16_38 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $s1, .LBB16_41
.LBB16_38:                              # %.lr.ph19.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_40 Depth 2
	slli.d	$a0, $s2, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB16_37
# %bb.39:                               # %.lr.ph.i50
                                        #   in Loop: Header=BB16_38 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$fp, $s2, $a0, 3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a2, $s0, 30, 0
	.p2align	4, , 16
.LBB16_40:                              #   Parent Loop BB16_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $fp, 0
	ldx.b	$a4, $a3, $a1
	ld.d	$a5, $a0, 0
	slli.d	$a4, $a4, 2
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a3, $a1
	addi.d	$a1, $a1, 1
	bne	$a2, $a1, .LBB16_40
	b	.LBB16_37
.LBB16_41:                              # %seqLower.exit
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.LBB16_42:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_44
# %bb.43:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_45
.LBB16_44:
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ori	$a1, $zero, 2
	b	.LBB16_2
.LBB16_45:
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	st.w	$zero, $a0, 0
	b	.LBB16_9
.Lfunc_end16:
	.size	FRead, .Lfunc_end16-FRead
                                        # -- End function
	.globl	searchKUorWA                    # -- Begin function searchKUorWA
	.p2align	5
	.type	searchKUorWA,@function
searchKUorWA:                           # @searchKUorWA
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$s0, $zero, 10
	ori	$s1, $zero, 63
	ori	$s2, $zero, 1
	ori	$a0, $zero, 10
	.p2align	4, , 16
.LBB17_1:                               # %.critedge
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	bltu	$s1, $a1, .LBB17_1
# %bb.2:                                # %.critedge
                                        #   in Loop: Header=BB17_1 Depth=1
	sll.d	$a1, $s2, $a1
	bstrins.d	$a1, $zero, 61, 1
	beqz	$a1, .LBB17_1
# %bb.3:                                #   in Loop: Header=BB17_1 Depth=1
	bne	$s3, $s0, .LBB17_1
# %bb.4:
	move	$a1, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(ungetc)
	jr	$t8
.Lfunc_end17:
	.size	searchKUorWA, .Lfunc_end17-searchKUorWA
                                        # -- End function
	.globl	kake2hiku                       # -- Begin function kake2hiku
	.p2align	5
	.type	kake2hiku,@function
kake2hiku:                              # @kake2hiku
# %bb.0:
	ori	$a1, $zero, 42
	b	.LBB18_2
	.p2align	4, , 16
.LBB18_1:                               #   in Loop: Header=BB18_2 Depth=1
	addi.d	$a0, $a0, 1
	beqz	$a2, .LBB18_4
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	bne	$a2, $a1, .LBB18_1
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
	ori	$a2, $zero, 45
	st.b	$a2, $a0, 0
	b	.LBB18_1
.LBB18_4:
	ret
.Lfunc_end18:
	.size	kake2hiku, .Lfunc_end18-kake2hiku
                                        # -- End function
	.globl	load1SeqWithoutName_realloc     # -- Begin function load1SeqWithoutName_realloc
	.p2align	5
	.type	load1SeqWithoutName_realloc,@function
load1SeqWithoutName_realloc:            # @load1SeqWithoutName_realloc
# %bb.0:
	addi.d	$sp, $sp, -160
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
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a0
	lu12i.w	$fp, 1220
	ori	$a0, $fp, 2881
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$s5, $zero, 10
	ori	$s6, $fp, 2880
	ori	$s7, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, -1221
	ori	$a0, $a0, 1216
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 40
	addi.w	$s3, $zero, -1
	move	$a0, $s6
	ori	$s2, $zero, 10
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $s4
.LBB19_1:                               # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_4 Depth 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $fp, $a0
	sub.d	$s1, $a0, $s4
	b	.LBB19_4
	.p2align	4, , 16
.LBB19_2:                               #   in Loop: Header=BB19_4 Depth=2
	beq	$s2, $s5, .LBB19_9
.LBB19_3:                               # %.critedge40
                                        #   in Loop: Header=BB19_4 Depth=2
	addi.d	$a1, $s4, 1
	addi.d	$s1, $s1, -1
	st.b	$a0, $s4, 0
	move	$s2, $a0
	move	$s4, $a1
	beqz	$s1, .LBB19_7
.LBB19_4:                               #   Parent Loop BB19_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -61
	bltu	$a1, $s7, .LBB19_2
# %bb.5:                                #   in Loop: Header=BB19_4 Depth=2
	beq	$a0, $s8, .LBB19_2
# %bb.6:                                #   in Loop: Header=BB19_4 Depth=2
	bne	$a0, $s3, .LBB19_3
	b	.LBB19_9
.LBB19_7:                               #   in Loop: Header=BB19_1 Depth=1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $s1, 0
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	add.w	$a1, $s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_29
# %bb.8:                                #   in Loop: Header=BB19_1 Depth=1
	move	$fp, $a0
	ld.d	$a3, $s1, 0
	add.w	$s2, $s2, $s6
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$s4, $a0, $a1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	b	.LBB19_1
.LBB19_9:                               # %.critedge
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	st.b	$zero, $s4, 0
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	ld.w	$a0, $a0, 0
	ld.bu	$s2, $fp, 0
	move	$s1, $fp
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB19_17
# %bb.10:
	beqz	$s2, .LBB19_24
# %bb.11:                               # %.lr.ph.i
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s3, $fp, 1
	ori	$s4, $zero, 46
	ori	$s5, $zero, 1
	ori	$s6, $zero, 0
	lu32i.d	$s6, 25600
	move	$s1, $fp
	b	.LBB19_14
	.p2align	4, , 16
.LBB19_12:                              #   in Loop: Header=BB19_14 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s7, 2
	ldx.b	$a0, $a0, $a1
	addi.d	$a1, $s1, 1
	st.b	$a0, $s1, 0
	move	$s1, $a1
.LBB19_13:                              #   in Loop: Header=BB19_14 Depth=1
	ld.bu	$s2, $s3, 0
	addi.d	$s3, $s3, 1
	beqz	$s2, .LBB19_24
.LBB19_14:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ext.w.b	$s7, $s2
	slli.d	$a1, $s7, 1
	ldx.h	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB19_12
# %bb.15:                               # %switch.early.test.i
                                        #   in Loop: Header=BB19_14 Depth=1
	andi	$a0, $s2, 255
	bltu	$s4, $a0, .LBB19_13
# %bb.16:                               # %switch.early.test.i
                                        #   in Loop: Header=BB19_14 Depth=1
	sll.d	$a0, $s5, $a0
	and	$a0, $a0, $s6
	bnez	$a0, .LBB19_12
	b	.LBB19_13
.LBB19_17:
	beqz	$s2, .LBB19_24
# %bb.18:                               # %.lr.ph.i42
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s3, $fp, 1
	ori	$s4, $zero, 46
	ori	$s5, $zero, 1
	ori	$s6, $zero, 0
	lu32i.d	$s6, 25600
	move	$s1, $fp
	b	.LBB19_21
	.p2align	4, , 16
.LBB19_19:                              #   in Loop: Header=BB19_21 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s7, 2
	ldx.b	$a0, $a0, $a1
	addi.d	$a1, $s1, 1
	st.b	$a0, $s1, 0
	move	$s1, $a1
.LBB19_20:                              #   in Loop: Header=BB19_21 Depth=1
	ld.bu	$s2, $s3, 0
	addi.d	$s3, $s3, 1
	beqz	$s2, .LBB19_24
.LBB19_21:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ext.w.b	$s7, $s2
	slli.d	$a1, $s7, 1
	ldx.h	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB19_19
# %bb.22:                               # %switch.early.test.i50
                                        #   in Loop: Header=BB19_21 Depth=1
	andi	$a0, $s2, 255
	bltu	$s4, $a0, .LBB19_20
# %bb.23:                               # %switch.early.test.i50
                                        #   in Loop: Header=BB19_21 Depth=1
	sll.d	$a0, $s5, $a0
	and	$a0, $a0, $s6
	bnez	$a0, .LBB19_19
	b	.LBB19_20
.LBB19_24:                              # %onlyAlpha_lower.exit
	st.b	$zero, $s1, 0
	ori	$a0, $zero, 42
	move	$a1, $fp
	b	.LBB19_26
	.p2align	4, , 16
.LBB19_25:                              #   in Loop: Header=BB19_26 Depth=1
	addi.d	$a1, $a1, 1
	beqz	$a2, .LBB19_28
.LBB19_26:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	bne	$a2, $a0, .LBB19_25
# %bb.27:                               #   in Loop: Header=BB19_26 Depth=1
	ori	$a2, $zero, 45
	st.b	$a2, $a1, 0
	b	.LBB19_25
.LBB19_28:                              # %kake2hiku.exit
	move	$a0, $fp
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
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
.LBB19_29:
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 49
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	load1SeqWithoutName_realloc, .Lfunc_end19-load1SeqWithoutName_realloc
                                        # -- End function
	.globl	load1SeqWithoutName_new         # -- Begin function load1SeqWithoutName_new
	.p2align	5
	.type	load1SeqWithoutName_new,@function
load1SeqWithoutName_new:                # @load1SeqWithoutName_new
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
	move	$fp, $a1
	move	$s0, $a0
	ori	$s2, $zero, 10
	ori	$s3, $zero, 2
	ori	$s4, $zero, 40
	addi.w	$s5, $zero, -1
	ori	$s6, $zero, 10
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_1:                               #   in Loop: Header=BB20_3 Depth=1
	beq	$s6, $s2, .LBB20_6
.LBB20_2:                               # %.critedge23
                                        #   in Loop: Header=BB20_3 Depth=1
	addi.d	$a1, $s1, 1
	st.b	$a0, $s1, 0
	move	$s6, $a0
.LBB20_3:                               # =>This Inner Loop Header: Depth=1
	move	$s1, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -61
	bltu	$a1, $s3, .LBB20_1
# %bb.4:                                #   in Loop: Header=BB20_3 Depth=1
	beq	$a0, $s4, .LBB20_1
# %bb.5:                                #   in Loop: Header=BB20_3 Depth=1
	bne	$a0, $s5, .LBB20_2
.LBB20_6:                               # %.critedge
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	st.b	$zero, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	ld.w	$a0, $a0, 0
	ld.bu	$s2, $fp, 0
	move	$s1, $fp
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB20_14
# %bb.7:
	beqz	$s2, .LBB20_21
# %bb.8:                                # %.lr.ph.i
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s3, $fp, 1
	ori	$s4, $zero, 46
	ori	$s5, $zero, 1
	ori	$s6, $zero, 0
	lu32i.d	$s6, 25600
	move	$s1, $fp
	b	.LBB20_11
	.p2align	4, , 16
.LBB20_9:                               #   in Loop: Header=BB20_11 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s7, 2
	ldx.b	$a0, $a0, $a1
	addi.d	$a1, $s1, 1
	st.b	$a0, $s1, 0
	move	$s1, $a1
.LBB20_10:                              #   in Loop: Header=BB20_11 Depth=1
	ld.bu	$s2, $s3, 0
	addi.d	$s3, $s3, 1
	beqz	$s2, .LBB20_21
.LBB20_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ext.w.b	$s7, $s2
	slli.d	$a1, $s7, 1
	ldx.h	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB20_9
# %bb.12:                               # %switch.early.test.i
                                        #   in Loop: Header=BB20_11 Depth=1
	andi	$a0, $s2, 255
	bltu	$s4, $a0, .LBB20_10
# %bb.13:                               # %switch.early.test.i
                                        #   in Loop: Header=BB20_11 Depth=1
	sll.d	$a0, $s5, $a0
	and	$a0, $a0, $s6
	bnez	$a0, .LBB20_9
	b	.LBB20_10
.LBB20_14:
	beqz	$s2, .LBB20_21
# %bb.15:                               # %.lr.ph.i25
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s3, $fp, 1
	ori	$s4, $zero, 46
	ori	$s5, $zero, 1
	ori	$s6, $zero, 0
	lu32i.d	$s6, 25600
	move	$s1, $fp
	b	.LBB20_18
	.p2align	4, , 16
.LBB20_16:                              #   in Loop: Header=BB20_18 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s7, 2
	ldx.b	$a0, $a0, $a1
	addi.d	$a1, $s1, 1
	st.b	$a0, $s1, 0
	move	$s1, $a1
.LBB20_17:                              #   in Loop: Header=BB20_18 Depth=1
	ld.bu	$s2, $s3, 0
	addi.d	$s3, $s3, 1
	beqz	$s2, .LBB20_21
.LBB20_18:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ext.w.b	$s7, $s2
	slli.d	$a1, $s7, 1
	ldx.h	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB20_16
# %bb.19:                               # %switch.early.test.i33
                                        #   in Loop: Header=BB20_18 Depth=1
	andi	$a0, $s2, 255
	bltu	$s4, $a0, .LBB20_17
# %bb.20:                               # %switch.early.test.i33
                                        #   in Loop: Header=BB20_18 Depth=1
	sll.d	$a0, $s5, $a0
	and	$a0, $a0, $s6
	bnez	$a0, .LBB20_16
	b	.LBB20_17
.LBB20_21:                              # %onlyAlpha_lower.exit
	st.b	$zero, $s1, 0
	ori	$a0, $zero, 42
	b	.LBB20_23
	.p2align	4, , 16
.LBB20_22:                              #   in Loop: Header=BB20_23 Depth=1
	addi.d	$fp, $fp, 1
	beqz	$a1, .LBB20_25
.LBB20_23:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $fp, 0
	bne	$a1, $a0, .LBB20_22
# %bb.24:                               #   in Loop: Header=BB20_23 Depth=1
	ori	$a1, $zero, 45
	st.b	$a1, $fp, 0
	b	.LBB20_22
.LBB20_25:                              # %kake2hiku.exit
	move	$a0, $zero
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
.Lfunc_end20:
	.size	load1SeqWithoutName_new, .Lfunc_end20-load1SeqWithoutName_new
                                        # -- End function
	.globl	readDataforgaln                 # -- Begin function readDataforgaln
	.p2align	5
	.type	readDataforgaln,@function
readDataforgaln:                        # @readDataforgaln
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
	move	$fp, $a3
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 10
	ori	$s4, $zero, 63
	ori	$s5, $zero, 1
	ori	$a0, $zero, 10
	.p2align	4, , 16
.LBB21_1:                               # %.critedge.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	bltu	$s4, $a1, .LBB21_1
# %bb.2:                                # %.critedge.i
                                        #   in Loop: Header=BB21_1 Depth=1
	sll.d	$a1, $s5, $a1
	bstrins.d	$a1, $zero, 61, 1
	beqz	$a1, .LBB21_1
# %bb.3:                                #   in Loop: Header=BB21_1 Depth=1
	bne	$s0, $s3, .LBB21_1
# %bb.4:                                # %searchKUorWA.exit
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s4, $a0, %got_pc_lo12(njob)
	ld.w	$s3, $s4, 0
	blez	$s3, .LBB21_14
# %bb.5:                                # %.lr.ph.preheader
	move	$s5, $zero
	ori	$s7, $zero, 10
	pcalau12i	$s8, %pc_hi20(readDataforgaln.tmpseq)
	b	.LBB21_8
.LBB21_6:                               # %.critedge.i20
                                        #   in Loop: Header=BB21_8 Depth=1
	st.b	$zero, $s3, 0
	.p2align	4, , 16
.LBB21_7:                               # %myfgets.exit
                                        #   in Loop: Header=BB21_8 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(load1SeqWithoutName_realloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s8, %pc_lo12(readDataforgaln.tmpseq)
	ldx.d	$a0, $fp, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $fp, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s5, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s4, 0
	addi.d	$s5, $s5, 1
	bge	$s5, $s3, .LBB21_14
.LBB21_8:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_10 Depth 2
                                        #     Child Loop BB21_13 Depth 2
	slli.d	$s6, $s5, 3
	ldx.d	$a0, $s1, $s6
	ori	$a1, $zero, 61
	st.b	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ldx.d	$s0, $s1, $s6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB21_7
# %bb.9:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB21_8 Depth=1
	addi.d	$s3, $s0, 1
	ori	$s0, $zero, 254
	.p2align	4, , 16
.LBB21_10:                              # %.lr.ph.i
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB21_6
# %bb.11:                               #   in Loop: Header=BB21_10 Depth=2
	addi.d	$a1, $s3, 1
	addi.w	$s0, $s0, -1
	st.b	$a0, $s3, 0
	move	$s3, $a1
	bnez	$s0, .LBB21_10
# %bb.12:                               # %.critedge18.i
                                        #   in Loop: Header=BB21_8 Depth=1
	st.b	$zero, $a1, 0
	.p2align	4, , 16
.LBB21_13:                              #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB21_13
	b	.LBB21_7
.LBB21_14:                              # %._crit_edge
	blez	$s3, .LBB21_22
# %bb.15:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB21_22
# %bb.16:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(upperCase)
	ld.w	$a0, $a0, %pc_lo12(upperCase)
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB21_22
# %bb.17:                               # %.lr.ph19.preheader.i
	move	$s1, $zero
	b	.LBB21_19
	.p2align	4, , 16
.LBB21_18:                              # %._crit_edge.i
                                        #   in Loop: Header=BB21_19 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $s3, .LBB21_22
.LBB21_19:                              # %.lr.ph19.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_21 Depth 2
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB21_18
# %bb.20:                               # %.lr.ph.i21
                                        #   in Loop: Header=BB21_19 Depth=1
	alsl.d	$s2, $s1, $fp, 3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a2, $s0, 30, 0
	.p2align	4, , 16
.LBB21_21:                              #   Parent Loop BB21_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s2, 0
	ldx.b	$a4, $a3, $a1
	ld.d	$a5, $a0, 0
	slli.d	$a4, $a4, 2
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a3, $a1
	addi.d	$a1, $a1, 1
	bne	$a2, $a1, .LBB21_21
	b	.LBB21_18
.LBB21_22:                              # %seqLower.exit
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
.Lfunc_end21:
	.size	readDataforgaln, .Lfunc_end21-readDataforgaln
                                        # -- End function
	.globl	readData_varlen                 # -- Begin function readData_varlen
	.p2align	5
	.type	readData_varlen,@function
readData_varlen:                        # @readData_varlen
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
	move	$fp, $a3
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 10
	ori	$s3, $zero, 63
	ori	$s4, $zero, 1
	ori	$a0, $zero, 10
	.p2align	4, , 16
.LBB22_1:                               # %.critedge.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s5, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	bltu	$s3, $a1, .LBB22_1
# %bb.2:                                # %.critedge.i
                                        #   in Loop: Header=BB22_1 Depth=1
	sll.d	$a1, $s4, $a1
	bstrins.d	$a1, $zero, 61, 1
	beqz	$a1, .LBB22_1
# %bb.3:                                #   in Loop: Header=BB22_1 Depth=1
	bne	$s5, $s0, .LBB22_1
# %bb.4:                                # %searchKUorWA.exit
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s3, $a0, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	blez	$s3, .LBB22_14
# %bb.5:                                # %.lr.ph.preheader
	move	$s5, $zero
	ori	$s7, $zero, 10
	pcalau12i	$s8, %pc_hi20(readData_varlen.tmpseq)
	ori	$s6, $zero, 0
	lu32i.d	$s6, 1
	b	.LBB22_8
.LBB22_6:                               # %.critedge.i22
                                        #   in Loop: Header=BB22_8 Depth=1
	st.b	$zero, $s3, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB22_7:                               # %myfgets.exit
                                        #   in Loop: Header=BB22_8 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(load1SeqWithoutName_realloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s8, %pc_lo12(readData_varlen.tmpseq)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s5, 2
	stx.w	$a0, $s4, $a1
	slli.d	$a0, $a0, 32
	add.d	$a0, $a0, $s6
	srai.d	$a0, $a0, 32
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $fp, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s3, $a0, 0
	addi.d	$s5, $s5, 1
	bge	$s5, $s3, .LBB22_14
.LBB22_8:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_10 Depth 2
                                        #     Child Loop BB22_13 Depth 2
	slli.d	$s0, $s5, 3
	ldx.d	$a0, $s1, $s0
	ori	$a1, $zero, 61
	st.b	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ldx.d	$s3, $s1, $s0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_7
# %bb.9:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB22_8 Depth=1
	addi.d	$s3, $s3, 1
	ori	$s4, $zero, 254
	.p2align	4, , 16
.LBB22_10:                              # %.lr.ph.i
                                        #   Parent Loop BB22_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB22_6
# %bb.11:                               #   in Loop: Header=BB22_10 Depth=2
	addi.d	$a1, $s3, 1
	addi.w	$s4, $s4, -1
	st.b	$a0, $s3, 0
	move	$s3, $a1
	bnez	$s4, .LBB22_10
# %bb.12:                               # %.critedge18.i
                                        #   in Loop: Header=BB22_8 Depth=1
	st.b	$zero, $a1, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB22_13:                              #   Parent Loop BB22_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB22_13
	b	.LBB22_7
.LBB22_14:                              # %._crit_edge
	blez	$s3, .LBB22_22
# %bb.15:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB22_22
# %bb.16:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(upperCase)
	ld.w	$a0, $a0, %pc_lo12(upperCase)
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB22_22
# %bb.17:                               # %.lr.ph19.preheader.i
	move	$s1, $zero
	b	.LBB22_19
	.p2align	4, , 16
.LBB22_18:                              # %._crit_edge.i
                                        #   in Loop: Header=BB22_19 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $s3, .LBB22_22
.LBB22_19:                              # %.lr.ph19.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_21 Depth 2
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB22_18
# %bb.20:                               # %.lr.ph.i23
                                        #   in Loop: Header=BB22_19 Depth=1
	alsl.d	$s2, $s1, $fp, 3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a2, $s0, 30, 0
	.p2align	4, , 16
.LBB22_21:                              #   Parent Loop BB22_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s2, 0
	ldx.b	$a4, $a3, $a1
	ld.d	$a5, $a0, 0
	slli.d	$a4, $a4, 2
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a3, $a1
	addi.d	$a1, $a1, 1
	bne	$a2, $a1, .LBB22_21
	b	.LBB22_18
.LBB22_22:                              # %seqLower.exit
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
.Lfunc_end22:
	.size	readData_varlen, .Lfunc_end22-readData_varlen
                                        # -- End function
	.globl	readData_pointer                # -- Begin function readData_pointer
	.p2align	5
	.type	readData_pointer,@function
readData_pointer:                       # @readData_pointer
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
	move	$fp, $a3
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 10
	ori	$s4, $zero, 63
	ori	$s5, $zero, 1
	ori	$a0, $zero, 10
	.p2align	4, , 16
.LBB23_1:                               # %.critedge.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	bltu	$s4, $a1, .LBB23_1
# %bb.2:                                # %.critedge.i
                                        #   in Loop: Header=BB23_1 Depth=1
	sll.d	$a1, $s5, $a1
	bstrins.d	$a1, $zero, 61, 1
	beqz	$a1, .LBB23_1
# %bb.3:                                #   in Loop: Header=BB23_1 Depth=1
	bne	$s0, $s3, .LBB23_1
# %bb.4:                                # %searchKUorWA.exit
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s4, $a0, %got_pc_lo12(njob)
	ld.w	$s3, $s4, 0
	blez	$s3, .LBB23_14
# %bb.5:                                # %.lr.ph.preheader
	move	$s5, $zero
	ori	$s7, $zero, 10
	pcalau12i	$s8, %pc_hi20(readData_pointer.tmpseq)
	b	.LBB23_8
.LBB23_6:                               # %.critedge.i20
                                        #   in Loop: Header=BB23_8 Depth=1
	st.b	$zero, $s3, 0
	.p2align	4, , 16
.LBB23_7:                               # %myfgets.exit
                                        #   in Loop: Header=BB23_8 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(load1SeqWithoutName_realloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s8, %pc_lo12(readData_pointer.tmpseq)
	ldx.d	$a0, $fp, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $fp, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s5, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	ld.w	$s3, $s4, 0
	addi.d	$s5, $s5, 1
	bge	$s5, $s3, .LBB23_14
.LBB23_8:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_10 Depth 2
                                        #     Child Loop BB23_13 Depth 2
	slli.d	$s6, $s5, 3
	ldx.d	$a0, $s1, $s6
	ori	$a1, $zero, 61
	st.b	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ldx.d	$s0, $s1, $s6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB23_7
# %bb.9:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB23_8 Depth=1
	addi.d	$s3, $s0, 1
	ori	$s0, $zero, 254
	.p2align	4, , 16
.LBB23_10:                              # %.lr.ph.i
                                        #   Parent Loop BB23_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB23_6
# %bb.11:                               #   in Loop: Header=BB23_10 Depth=2
	addi.d	$a1, $s3, 1
	addi.w	$s0, $s0, -1
	st.b	$a0, $s3, 0
	move	$s3, $a1
	bnez	$s0, .LBB23_10
# %bb.12:                               # %.critedge18.i
                                        #   in Loop: Header=BB23_8 Depth=1
	st.b	$zero, $a1, 0
	.p2align	4, , 16
.LBB23_13:                              #   Parent Loop BB23_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB23_13
	b	.LBB23_7
.LBB23_14:                              # %._crit_edge
	blez	$s3, .LBB23_22
# %bb.15:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB23_22
# %bb.16:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(upperCase)
	ld.w	$a0, $a0, %pc_lo12(upperCase)
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB23_22
# %bb.17:                               # %.lr.ph19.preheader.i
	move	$s1, $zero
	b	.LBB23_19
	.p2align	4, , 16
.LBB23_18:                              # %._crit_edge.i
                                        #   in Loop: Header=BB23_19 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $s3, .LBB23_22
.LBB23_19:                              # %.lr.ph19.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_21 Depth 2
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB23_18
# %bb.20:                               # %.lr.ph.i21
                                        #   in Loop: Header=BB23_19 Depth=1
	alsl.d	$s2, $s1, $fp, 3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a2, $s0, 30, 0
	.p2align	4, , 16
.LBB23_21:                              #   Parent Loop BB23_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s2, 0
	ldx.b	$a4, $a3, $a1
	ld.d	$a5, $a0, 0
	slli.d	$a4, $a4, 2
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a3, $a1
	addi.d	$a1, $a1, 1
	bne	$a2, $a1, .LBB23_21
	b	.LBB23_18
.LBB23_22:                              # %seqLower.exit
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
.Lfunc_end23:
	.size	readData_pointer, .Lfunc_end23-readData_pointer
                                        # -- End function
	.globl	readData                        # -- Begin function readData
	.p2align	5
	.type	readData,@function
readData:                               # @readData
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 10
	ori	$s4, $zero, 63
	ori	$s5, $zero, 1
	ori	$a0, $zero, 10
	.p2align	4, , 16
.LBB24_1:                               # %.critedge.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s6, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	bltu	$s4, $a1, .LBB24_1
# %bb.2:                                # %.critedge.i
                                        #   in Loop: Header=BB24_1 Depth=1
	sll.d	$a1, $s5, $a1
	bstrins.d	$a1, $zero, 61, 1
	beqz	$a1, .LBB24_1
# %bb.3:                                #   in Loop: Header=BB24_1 Depth=1
	bne	$s6, $s3, .LBB24_1
# %bb.4:                                # %searchKUorWA.exit
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s4, $a0, %got_pc_lo12(njob)
	ld.w	$s3, $s4, 0
	blez	$s3, .LBB24_14
# %bb.5:                                # %.lr.ph.preheader
	move	$s5, $zero
	ori	$s7, $zero, 10
	pcalau12i	$s8, %pc_hi20(readData.tmpseq)
	b	.LBB24_8
.LBB24_6:                               # %.critedge.i20
                                        #   in Loop: Header=BB24_8 Depth=1
	st.b	$zero, $s3, 0
	.p2align	4, , 16
.LBB24_7:                               # %myfgets.exit
                                        #   in Loop: Header=BB24_8 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(load1SeqWithoutName_realloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s8, %pc_lo12(readData.tmpseq)
	slli.d	$s6, $s5, 3
	ldx.d	$a0, $fp, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $fp, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s5, 2
	stx.w	$a0, $s0, $a1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s4, 0
	addi.d	$s5, $s5, 1
	bge	$s5, $s3, .LBB24_14
.LBB24_8:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_10 Depth 2
                                        #     Child Loop BB24_13 Depth 2
	slli.d	$s3, $s5, 8
	ori	$a0, $zero, 61
	stx.b	$a0, $s1, $s3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB24_7
# %bb.9:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB24_8 Depth=1
	add.d	$a0, $s1, $s3
	addi.d	$s3, $a0, 1
	ori	$s6, $zero, 254
	.p2align	4, , 16
.LBB24_10:                              # %.lr.ph.i
                                        #   Parent Loop BB24_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB24_6
# %bb.11:                               #   in Loop: Header=BB24_10 Depth=2
	addi.d	$a1, $s3, 1
	addi.w	$s6, $s6, -1
	st.b	$a0, $s3, 0
	move	$s3, $a1
	bnez	$s6, .LBB24_10
# %bb.12:                               # %.critedge18.i
                                        #   in Loop: Header=BB24_8 Depth=1
	st.b	$zero, $a1, 0
	.p2align	4, , 16
.LBB24_13:                              #   Parent Loop BB24_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB24_13
	b	.LBB24_7
.LBB24_14:                              # %._crit_edge
	blez	$s3, .LBB24_22
# %bb.15:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB24_22
# %bb.16:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(upperCase)
	ld.w	$a0, $a0, %pc_lo12(upperCase)
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB24_22
# %bb.17:                               # %.lr.ph19.preheader.i
	move	$s1, $zero
	b	.LBB24_19
	.p2align	4, , 16
.LBB24_18:                              # %._crit_edge.i
                                        #   in Loop: Header=BB24_19 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $s3, .LBB24_22
.LBB24_19:                              # %.lr.ph19.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_21 Depth 2
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB24_18
# %bb.20:                               # %.lr.ph.i21
                                        #   in Loop: Header=BB24_19 Depth=1
	alsl.d	$s2, $s1, $fp, 3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a2, $s0, 30, 0
	.p2align	4, , 16
.LBB24_21:                              #   Parent Loop BB24_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s2, 0
	ldx.b	$a4, $a3, $a1
	ld.d	$a5, $a0, 0
	slli.d	$a4, $a4, 2
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a3, $a1
	addi.d	$a1, $a1, 1
	bne	$a2, $a1, .LBB24_21
	b	.LBB24_18
.LBB24_22:                              # %seqLower.exit
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end24:
	.size	readData, .Lfunc_end24-readData
                                        # -- End function
	.globl	countATGC                       # -- Begin function countATGC
	.p2align	5
	.type	countATGC,@function
countATGC:                              # @countATGC
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.bu	$s2, $a0, 0
	beqz	$s2, .LBB25_12
# %bb.1:                                # %.preheader
	move	$s0, $a0
	move	$fp, $a1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $a0, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	move	$a2, $zero
	ld.d	$a1, $a1, 0
	addi.d	$a3, $s0, 1
	ori	$a4, $zero, 99
	lu12i.w	$a5, 475135
	ori	$a5, $a5, 4095
	lu12i.w	$a6, 397312
	lu12i.w	$a7, 450560
	lu12i.w	$t0, 479232
	lu12i.w	$t1, 475136
	b	.LBB25_4
	.p2align	4, , 16
.LBB25_2:                               #   in Loop: Header=BB25_4 Depth=1
	addi.w	$a0, $a0, 1
.LBB25_3:                               #   in Loop: Header=BB25_4 Depth=1
	ld.bu	$s2, $a3, 0
	addi.d	$a3, $a3, 1
	beqz	$s2, .LBB25_11
.LBB25_4:                               # =>This Inner Loop Header: Depth=1
	ext.w.b	$t2, $s2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s1, $t2
	ext.w.b	$t3, $t2
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $a1, $t3
	andi	$t3, $t3, 1024
	beqz	$t3, .LBB25_3
# %bb.5:                                #   in Loop: Header=BB25_4 Depth=1
	andi	$t3, $t2, 251
	addi.d	$a2, $a2, 1
	beq	$t3, $a4, .LBB25_2
# %bb.6:                                # %switch.early.test
                                        #   in Loop: Header=BB25_4 Depth=1
	slli.w	$t2, $t2, 24
	blt	$a5, $t2, .LBB25_9
# %bb.7:                                # %switch.early.test
                                        #   in Loop: Header=BB25_4 Depth=1
	beq	$t2, $a6, .LBB25_2
# %bb.8:                                # %switch.early.test
                                        #   in Loop: Header=BB25_4 Depth=1
	beq	$t2, $a7, .LBB25_2
	b	.LBB25_3
.LBB25_9:                               # %switch.early.test
                                        #   in Loop: Header=BB25_4 Depth=1
	beq	$t2, $t0, .LBB25_2
# %bb.10:                               # %switch.early.test
                                        #   in Loop: Header=BB25_4 Depth=1
	beq	$t2, $t1, .LBB25_2
	b	.LBB25_3
.LBB25_11:
	st.w	$a2, $fp, 0
	b	.LBB25_13
.LBB25_12:
	move	$a0, $zero
.LBB25_13:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end25:
	.size	countATGC, .Lfunc_end25-countATGC
                                        # -- End function
	.globl	countATGCbk                     # -- Begin function countATGCbk
	.p2align	5
	.type	countATGCbk,@function
countATGCbk:                            # @countATGCbk
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $a0, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a0, $a0, 0
	ld.bu	$t2, $fp, 0
	addi.d	$a3, $fp, 1
	ori	$a4, $zero, 99
	lu12i.w	$a5, 475135
	ori	$a5, $a5, 4095
	lu12i.w	$a6, 397312
	lu12i.w	$a7, 450560
	lu12i.w	$t0, 479232
	lu12i.w	$t1, 475136
	b	.LBB26_3
	.p2align	4, , 16
.LBB26_1:                               #   in Loop: Header=BB26_3 Depth=1
	addi.w	$a2, $a2, 1
.LBB26_2:                               #   in Loop: Header=BB26_3 Depth=1
	ld.bu	$t2, $a3, 0
	addi.d	$a3, $a3, 1
	beqz	$t2, .LBB26_10
.LBB26_3:                               # =>This Inner Loop Header: Depth=1
	ext.w.b	$t2, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s0, $t2
	ext.w.b	$t3, $t2
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $a0, $t3
	andi	$t3, $t3, 1024
	beqz	$t3, .LBB26_2
# %bb.4:                                #   in Loop: Header=BB26_3 Depth=1
	andi	$t3, $t2, 251
	addi.w	$a1, $a1, 1
	beq	$t3, $a4, .LBB26_1
# %bb.5:                                # %switch.early.test
                                        #   in Loop: Header=BB26_3 Depth=1
	slli.w	$t2, $t2, 24
	blt	$a5, $t2, .LBB26_8
# %bb.6:                                # %switch.early.test
                                        #   in Loop: Header=BB26_3 Depth=1
	beq	$t2, $a6, .LBB26_1
# %bb.7:                                # %switch.early.test
                                        #   in Loop: Header=BB26_3 Depth=1
	beq	$t2, $a7, .LBB26_1
	b	.LBB26_2
.LBB26_8:                               # %switch.early.test
                                        #   in Loop: Header=BB26_3 Depth=1
	beq	$t2, $t0, .LBB26_1
# %bb.9:                                # %switch.early.test
                                        #   in Loop: Header=BB26_3 Depth=1
	beq	$t2, $t1, .LBB26_1
	b	.LBB26_2
.LBB26_10:
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end26:
	.size	countATGCbk, .Lfunc_end26-countATGCbk
                                        # -- End function
	.globl	countalpha                      # -- Begin function countalpha
	.p2align	5
	.type	countalpha,@function
countalpha:                             # @countalpha
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.bu	$s0, $a0, 0
	beqz	$s0, .LBB27_3
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	addi.d	$a2, $fp, 1
	.p2align	4, , 16
.LBB27_2:                               # =>This Inner Loop Header: Depth=1
	ext.w.b	$a3, $s0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a1, $a3
	ld.bu	$s0, $a2, 0
	bstrpick.d	$a3, $a3, 10, 10
	add.w	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	bnez	$s0, .LBB27_2
	b	.LBB27_4
.LBB27_3:
	move	$a0, $zero
.LBB27_4:                               # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end27:
	.size	countalpha, .Lfunc_end27-countalpha
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function getnumlen_nogap
.LCPI28_0:
	.dword	0x7ff8000000000000              # double NaN
	.text
	.globl	getnumlen_nogap
	.p2align	5
	.type	getnumlen_nogap,@function
getnumlen_nogap:                        # @getnumlen_nogap
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $a0
	lu12i.w	$fp, 1220
	ori	$a0, $fp, 2880
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	addi.w	$s2, $zero, -1
	beq	$a0, $s2, .LBB28_3
# %bb.1:                                # %.lr.ph.i.preheader
	ori	$a1, $zero, 10
	.p2align	4, , 16
.LBB28_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $a0
	addi.d	$a0, $a1, -10
	sltui	$a0, $a0, 1
	addi.w	$a1, $s3, -61
	sltui	$a1, $a1, 2
	and	$a0, $a0, $a1
	add.d	$s0, $s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bne	$a0, $s2, .LBB28_2
.LBB28_3:                               # %countKUorWA.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.w	$s0, $a0, 0
	ori	$s0, $zero, 10
	ori	$s2, $zero, 63
	ori	$s3, $zero, 1
	ori	$a0, $zero, 10
	.p2align	4, , 16
.LBB28_4:                               # %.critedge.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s4, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	bltu	$s2, $a1, .LBB28_4
# %bb.5:                                # %.critedge.i
                                        #   in Loop: Header=BB28_4 Depth=1
	sll.d	$a1, $s3, $a1
	bstrins.d	$a1, $zero, 61, 1
	beqz	$a1, .LBB28_4
# %bb.6:                                #   in Loop: Header=BB28_4 Depth=1
	bne	$s4, $s0, .LBB28_4
# %bb.7:                                # %searchKUorWA.exit
	move	$a1, $s1
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nlenmax)
	ld.d	$a0, $a0, %got_pc_lo12(nlenmax)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 24414
	ori	$a0, $a0, 255
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB28_37
# %bb.8:                                # %.lr.ph.preheader
	move	$s5, $zero
	move	$s6, $zero
	move	$s7, $zero
	ori	$a0, $fp, 2879
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$fp, $zero, 10
	lu12i.w	$a0, 475135
	ori	$s3, $a0, 4095
                                        # implicit-def: $r23
	b	.LBB28_11
	.p2align	4, , 16
.LBB28_9:                               #   in Loop: Header=BB28_11 Depth=1
	move	$a1, $zero
.LBB28_10:                              # %countATGC.exit
                                        #   in Loop: Header=BB28_11 Depth=1
	add.w	$s6, $a1, $s6
	add.w	$s5, $s0, $s5
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB28_38
.LBB28_11:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_13 Depth 2
                                        #     Child Loop BB28_16 Depth 2
                                        #     Child Loop BB28_20 Depth 2
                                        #     Child Loop BB28_30 Depth 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB28_18
# %bb.12:                               # %.lr.ph.i28.preheader
                                        #   in Loop: Header=BB28_11 Depth=1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB28_13:                              # %.lr.ph.i28
                                        #   Parent Loop BB28_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $fp, .LBB28_17
# %bb.14:                               #   in Loop: Header=BB28_13 Depth=2
	addi.d	$a1, $s4, 1
	addi.w	$s2, $s2, -1
	st.b	$a0, $s4, 0
	move	$s4, $a1
	bnez	$s2, .LBB28_13
# %bb.15:                               # %.critedge18.i
                                        #   in Loop: Header=BB28_11 Depth=1
	st.b	$zero, $a1, 0
	.p2align	4, , 16
.LBB28_16:                              #   Parent Loop BB28_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB28_16
	b	.LBB28_18
.LBB28_17:                              # %.critedge.i29
                                        #   in Loop: Header=BB28_11 Depth=1
	st.b	$zero, $s4, 0
	.p2align	4, , 16
.LBB28_18:                              # %myfgets.exit
                                        #   in Loop: Header=BB28_11 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(load1SeqWithoutName_realloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.bu	$s8, $a0, 0
	beqz	$s8, .LBB28_24
# %bb.19:                               # %.lr.ph.i30
                                        #   in Loop: Header=BB28_11 Depth=1
	addi.d	$s4, $s2, 1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB28_20:                              #   Parent Loop BB28_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a2, $s8
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	ld.bu	$s8, $s4, 0
	bstrpick.d	$a2, $a2, 10, 10
	add.w	$a0, $a0, $a2
	addi.d	$s4, $s4, 1
	bnez	$s8, .LBB28_20
# %bb.21:                               # %countalpha.exit
                                        #   in Loop: Header=BB28_11 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	blt	$a1, $a0, .LBB28_25
.LBB28_22:                              #   in Loop: Header=BB28_11 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	blt	$a0, $a1, .LBB28_26
.LBB28_23:                              #   in Loop: Header=BB28_11 Depth=1
	ld.bu	$s8, $s2, 0
	bnez	$s8, .LBB28_27
	b	.LBB28_9
	.p2align	4, , 16
.LBB28_24:                              #   in Loop: Header=BB28_11 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bge	$a1, $a0, .LBB28_22
.LBB28_25:                              #   in Loop: Header=BB28_11 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB28_23
.LBB28_26:                              #   in Loop: Header=BB28_11 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.bu	$s8, $s2, 0
	beqz	$s8, .LBB28_9
.LBB28_27:                              # %.preheader.i32
                                        #   in Loop: Header=BB28_11 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$s4, $a0, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	move	$a1, $zero
	move	$s0, $zero
	addi.d	$a2, $s2, 1
	ori	$a5, $zero, 99
	lu12i.w	$a6, 397312
	lu12i.w	$a7, 479232
	b	.LBB28_30
	.p2align	4, , 16
.LBB28_28:                              #   in Loop: Header=BB28_30 Depth=2
	addi.d	$a1, $a1, 1
.LBB28_29:                              #   in Loop: Header=BB28_30 Depth=2
	ld.bu	$s8, $a2, 0
	addi.d	$a2, $a2, 1
	beqz	$s8, .LBB28_10
.LBB28_30:                              #   Parent Loop BB28_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a3, $s8
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s4, $a3
	ext.w.b	$a4, $a3
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a0, $a4
	andi	$a4, $a4, 1024
	beqz	$a4, .LBB28_29
# %bb.31:                               #   in Loop: Header=BB28_30 Depth=2
	andi	$a4, $a3, 251
	addi.d	$s0, $s0, 1
	beq	$a4, $a5, .LBB28_28
# %bb.32:                               # %switch.early.test.i
                                        #   in Loop: Header=BB28_30 Depth=2
	slli.w	$a3, $a3, 24
	blt	$s3, $a3, .LBB28_35
# %bb.33:                               # %switch.early.test.i
                                        #   in Loop: Header=BB28_30 Depth=2
	beq	$a3, $a6, .LBB28_28
# %bb.34:                               # %switch.early.test.i
                                        #   in Loop: Header=BB28_30 Depth=2
	lu12i.w	$a4, 450560
	beq	$a3, $a4, .LBB28_28
	b	.LBB28_29
.LBB28_35:                              # %switch.early.test.i
                                        #   in Loop: Header=BB28_30 Depth=2
	beq	$a3, $a7, .LBB28_28
# %bb.36:                               # %switch.early.test.i
                                        #   in Loop: Header=BB28_30 Depth=2
	lu12i.w	$a4, 475136
	beq	$a3, $a4, .LBB28_28
	b	.LBB28_29
.LBB28_37:
	pcalau12i	$a0, %pc_hi20(.LCPI28_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI28_0)
	b	.LBB28_39
.LBB28_38:                              # %._crit_edge.loopexit
	movgr2fr.w	$fa0, $s6
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs0, $fa0, $fa1
.LBB28_39:                              # %._crit_edge
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 24
	ori	$a2, $a2, 1705
	bne	$a1, $a2, .LBB28_41
# %bb.40:                               # %.sink.split
	vldi	$vr0, -920
	fcmp.clt.d	$fcc0, $fa0, $fs0
	ori	$a1, $zero, 112
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 100
	maskeqz	$a3, $a3, $a2
	or	$a1, $a3, $a1
	sub.d	$a2, $zero, $a2
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(upperCase)
	st.w	$a2, $a0, %pc_lo12(upperCase)
.LBB28_41:
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end28:
	.size	getnumlen_nogap, .Lfunc_end28-getnumlen_nogap
                                        # -- End function
	.globl	getnumlen                       # -- Begin function getnumlen
	.p2align	5
	.type	getnumlen,@function
getnumlen:                              # @getnumlen
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $a0
	lu12i.w	$fp, 1220
	ori	$a0, $fp, 2880
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	addi.w	$s2, $zero, -1
	beq	$a0, $s2, .LBB29_3
# %bb.1:                                # %.lr.ph.i.preheader
	ori	$a1, $zero, 10
	.p2align	4, , 16
.LBB29_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $a0
	addi.d	$a0, $a1, -10
	sltui	$a0, $a0, 1
	addi.w	$a1, $s3, -61
	sltui	$a1, $a1, 2
	and	$a0, $a0, $a1
	add.d	$s1, $s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bne	$a0, $s2, .LBB29_2
.LBB29_3:                               # %countKUorWA.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.w	$s1, $a0, 0
	ori	$s1, $zero, 10
	ori	$s2, $zero, 63
	ori	$s3, $zero, 1
	ori	$a0, $zero, 10
	.p2align	4, , 16
.LBB29_4:                               # %.critedge.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	bltu	$s2, $a1, .LBB29_4
# %bb.5:                                # %.critedge.i
                                        #   in Loop: Header=BB29_4 Depth=1
	sll.d	$a1, $s3, $a1
	bstrins.d	$a1, $zero, 61, 1
	beqz	$a1, .LBB29_4
# %bb.6:                                #   in Loop: Header=BB29_4 Depth=1
	bne	$s4, $s1, .LBB29_4
# %bb.7:                                # %searchKUorWA.exit
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nlenmax)
	ld.d	$a1, $a0, %got_pc_lo12(nlenmax)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.w	$zero, $a1, 0
	blez	$a0, .LBB29_32
# %bb.8:                                # %.lr.ph.preheader
	move	$s4, $zero
	move	$s5, $zero
	move	$s6, $zero
	ori	$a0, $fp, 2879
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s8, $zero, 10
	lu12i.w	$a0, 475135
	ori	$s7, $a0, 4095
                                        # implicit-def: $r25
	b	.LBB29_11
	.p2align	4, , 16
.LBB29_9:                               #   in Loop: Header=BB29_11 Depth=1
	move	$a1, $zero
.LBB29_10:                              # %countATGC.exit
                                        #   in Loop: Header=BB29_11 Depth=1
	add.w	$s5, $a1, $s5
	add.w	$s4, $s2, $s4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$s6, $s6, 1
	bge	$s6, $a0, .LBB29_31
.LBB29_11:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_13 Depth 2
                                        #     Child Loop BB29_16 Depth 2
                                        #     Child Loop BB29_24 Depth 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_18
# %bb.12:                               # %.lr.ph.i22.preheader
                                        #   in Loop: Header=BB29_11 Depth=1
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB29_13:                              # %.lr.ph.i22
                                        #   Parent Loop BB29_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s8, .LBB29_17
# %bb.14:                               #   in Loop: Header=BB29_13 Depth=2
	addi.d	$a1, $s1, 1
	addi.w	$fp, $fp, -1
	st.b	$a0, $s1, 0
	move	$s1, $a1
	bnez	$fp, .LBB29_13
# %bb.15:                               # %.critedge18.i
                                        #   in Loop: Header=BB29_11 Depth=1
	st.b	$zero, $a1, 0
	.p2align	4, , 16
.LBB29_16:                              #   Parent Loop BB29_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB29_16
	b	.LBB29_18
.LBB29_17:                              # %.critedge.i23
                                        #   in Loop: Header=BB29_11 Depth=1
	st.b	$zero, $s1, 0
	.p2align	4, , 16
.LBB29_18:                              # %myfgets.exit
                                        #   in Loop: Header=BB29_11 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(load1SeqWithoutName_realloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB29_20
# %bb.19:                               #   in Loop: Header=BB29_11 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB29_20:                              #   in Loop: Header=BB29_11 Depth=1
	ld.bu	$fp, $s1, 0
	beqz	$fp, .LBB29_9
# %bb.21:                               # %.preheader.i24
                                        #   in Loop: Header=BB29_11 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $a0, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	move	$a1, $zero
	move	$s2, $zero
	addi.d	$a2, $s1, 1
	ori	$a5, $zero, 99
	lu12i.w	$a6, 397312
	lu12i.w	$a7, 479232
	b	.LBB29_24
	.p2align	4, , 16
.LBB29_22:                              #   in Loop: Header=BB29_24 Depth=2
	addi.d	$a1, $a1, 1
.LBB29_23:                              #   in Loop: Header=BB29_24 Depth=2
	ld.bu	$fp, $a2, 0
	addi.d	$a2, $a2, 1
	beqz	$fp, .LBB29_10
.LBB29_24:                              #   Parent Loop BB29_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a3, $fp
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s3, $a3
	ext.w.b	$a4, $a3
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a0, $a4
	andi	$a4, $a4, 1024
	beqz	$a4, .LBB29_23
# %bb.25:                               #   in Loop: Header=BB29_24 Depth=2
	andi	$a4, $a3, 251
	addi.d	$s2, $s2, 1
	beq	$a4, $a5, .LBB29_22
# %bb.26:                               # %switch.early.test.i
                                        #   in Loop: Header=BB29_24 Depth=2
	slli.w	$a3, $a3, 24
	blt	$s7, $a3, .LBB29_29
# %bb.27:                               # %switch.early.test.i
                                        #   in Loop: Header=BB29_24 Depth=2
	beq	$a3, $a6, .LBB29_22
# %bb.28:                               # %switch.early.test.i
                                        #   in Loop: Header=BB29_24 Depth=2
	lu12i.w	$a4, 450560
	beq	$a3, $a4, .LBB29_22
	b	.LBB29_23
.LBB29_29:                              # %switch.early.test.i
                                        #   in Loop: Header=BB29_24 Depth=2
	beq	$a3, $a7, .LBB29_22
# %bb.30:                               # %switch.early.test.i
                                        #   in Loop: Header=BB29_24 Depth=2
	lu12i.w	$a4, 475136
	beq	$a3, $a4, .LBB29_22
	b	.LBB29_23
.LBB29_31:                              # %._crit_edge.loopexit
	movgr2fr.w	$fa0, $s5
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $s4
	ffint.d.w	$fa1, $fa1
	b	.LBB29_33
.LBB29_32:
	movgr2fr.d	$fa0, $zero
	fmov.d	$fa1, $fa0
.LBB29_33:                              # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 24
	ori	$a2, $a2, 1705
	bne	$a1, $a2, .LBB29_35
# %bb.34:                               # %.sink.split
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -920
	fcmp.clt.d	$fcc0, $fa1, $fa0
	ori	$a1, $zero, 112
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 100
	maskeqz	$a3, $a3, $a2
	or	$a1, $a3, $a1
	sub.d	$a2, $zero, $a2
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(upperCase)
	st.w	$a2, $a0, %pc_lo12(upperCase)
.LBB29_35:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end29:
	.size	getnumlen, .Lfunc_end29-getnumlen
                                        # -- End function
	.globl	WriteGapFill                    # -- Begin function WriteGapFill
	.p2align	5
	.type	WriteGapFill,@function
WriteGapFill:                           # @WriteGapFill
# %bb.0:
	addi.d	$sp, $sp, -160
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
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s6, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(nlenmax)
	ld.d	$a0, $a0, %got_pc_lo12(nlenmax)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	blez	$a1, .LBB30_18
# %bb.1:                                # %.lr.ph.preheader
	move	$s8, $a4
	move	$s2, $zero
	move	$s0, $s6
	move	$s1, $a4
	b	.LBB30_3
	.p2align	4, , 16
.LBB30_2:                               #   in Loop: Header=BB30_3 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	beqz	$s0, .LBB30_5
.LBB30_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	addi.w	$a2, $s2, 0
	bge	$a2, $a1, .LBB30_2
# %bb.4:                                #   in Loop: Header=BB30_3 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	move	$s2, $a0
	b	.LBB30_2
.LBB30_5:                               # %.preheader
	addi.w	$s2, $s2, 0
	blez	$s2, .LBB30_7
# %bb.6:                                # %.lr.ph36.preheader
	pcalau12i	$a0, %pc_hi20(WriteGapFill.gap)
	addi.d	$a0, $a0, %pc_lo12(WriteGapFill.gap)
	ori	$a1, $zero, 45
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB30_7:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(WriteGapFill.gap)
	addi.d	$a0, $a0, %pc_lo12(WriteGapFill.gap)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	stx.b	$zero, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $fp
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(WriteGapFill.buff)
	addi.d	$s4, $a0, %pc_lo12(WriteGapFill.buff)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s5, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$s3, $a0, %got_pc_lo12(dorp)
	pcalau12i	$s0, %pc_hi20(upperCase)
	pcalau12i	$a0, %pc_hi20(WriteGapFill.b)
	addi.d	$s7, $a0, %pc_lo12(WriteGapFill.b)
	move	$a0, $zero
	addi.w	$s1, $zero, -60
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	b	.LBB30_9
	.p2align	4, , 16
.LBB30_8:                               # %._crit_edge40
                                        #   in Loop: Header=BB30_9 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $s6, .LBB30_17
.LBB30_9:                               # %.lr.ph43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_13 Depth 2
                                        #       Child Loop BB30_16 Depth 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$s2, $a0, 3
	ldx.d	$a1, $s8, $s2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s6, $a0, 0
	ldx.d	$a0, $s8, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	sub.d	$a2, $s6, $a0
	move	$a0, $s4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s4, $s6
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s2, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s8, .LBB30_8
# %bb.10:                               # %.lr.ph39.preheader
                                        #   in Loop: Header=BB30_9 Depth=1
	move	$s6, $zero
	b	.LBB30_13
	.p2align	4, , 16
.LBB30_11:                              #   in Loop: Header=BB30_13 Depth=2
	ori	$a2, $zero, 60
	move	$a0, $s7
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
.LBB30_12:                              # %strncpy_caseC.exit
                                        #   in Loop: Header=BB30_13 Depth=2
	st.b	$zero, $s7, 60
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 60
	addi.w	$a0, $s6, 0
	bge	$a0, $s8, .LBB30_8
.LBB30_13:                              # %.lr.ph39
                                        #   Parent Loop BB30_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB30_16 Depth 3
	ld.w	$a0, $s3, 0
	add.d	$s2, $s4, $s6
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB30_11
# %bb.14:                               # %.lr.ph39
                                        #   in Loop: Header=BB30_13 Depth=2
	ld.w	$a0, $s0, %pc_lo12(upperCase)
	blez	$a0, .LBB30_11
# %bb.15:                               # %.preheader.i
                                        #   in Loop: Header=BB30_13 Depth=2
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	move	$a2, $s7
	.p2align	4, , 16
.LBB30_16:                              #   Parent Loop BB30_9 Depth=1
                                        #     Parent Loop BB30_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a3, $s2, 0
	ld.d	$a4, $a0, 0
	addi.d	$s2, $s2, 1
	slli.d	$a3, $a3, 2
	ldx.b	$a3, $a4, $a3
	addi.d	$a4, $a2, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	slli.d	$a5, $a1, 31
	st.b	$a3, $a2, 0
	move	$a2, $a4
	bgez	$a5, .LBB30_16
	b	.LBB30_12
.LBB30_17:                              # %._crit_edge44
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
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
.LBB30_18:                              # %._crit_edge44.critedge
	pcalau12i	$a0, %pc_hi20(WriteGapFill.gap)
	st.b	$zero, $a0, %pc_lo12(WriteGapFill.gap)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $fp
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end30:
	.size	WriteGapFill, .Lfunc_end30-WriteGapFill
                                        # -- End function
	.globl	writeDataforgaln                # -- Begin function writeDataforgaln
	.p2align	5
	.type	writeDataforgaln,@function
writeDataforgaln:                       # @writeDataforgaln
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
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	blez	$a1, .LBB31_6
# %bb.1:                                # %.lr.ph18.preheader
	move	$fp, $a4
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s3, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s4, $a0, %pc_lo12(.L.str.24)
	move	$s5, $zero
	b	.LBB31_3
	.p2align	4, , 16
.LBB31_2:                               # %._crit_edge
                                        #   in Loop: Header=BB31_3 Depth=1
	addi.d	$s5, $s5, 1
	beq	$s5, $s1, .LBB31_6
.LBB31_3:                               # %.lr.ph18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_5 Depth 2
	slli.d	$s0, $s5, 3
	ldx.d	$a0, $fp, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s0
	addi.w	$s6, $a0, 0
	addi.d	$a2, $a1, 1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s6, .LBB31_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB31_3 Depth=1
	move	$s7, $zero
	move	$s8, $zero
	alsl.d	$s0, $s5, $fp, 3
	.p2align	4, , 16
.LBB31_5:                               # %.lr.ph
                                        #   Parent Loop BB31_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	add.d	$a3, $a0, $s8
	ori	$a2, $zero, 60
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, 60
	addi.d	$s8, $s8, 60
	blt	$s7, $s6, .LBB31_5
	b	.LBB31_2
.LBB31_6:                               # %._crit_edge19
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
.Lfunc_end31:
	.size	writeDataforgaln, .Lfunc_end31-writeDataforgaln
                                        # -- End function
	.globl	writeData_pointer               # -- Begin function writeData_pointer
	.p2align	5
	.type	writeData_pointer,@function
writeData_pointer:                      # @writeData_pointer
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
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	blez	$a1, .LBB32_6
# %bb.1:                                # %.lr.ph18.preheader
	move	$fp, $a4
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s3, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s4, $a0, %pc_lo12(.L.str.24)
	move	$s5, $zero
	b	.LBB32_3
	.p2align	4, , 16
.LBB32_2:                               # %._crit_edge
                                        #   in Loop: Header=BB32_3 Depth=1
	addi.d	$s5, $s5, 1
	beq	$s5, $s1, .LBB32_6
.LBB32_3:                               # %.lr.ph18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_5 Depth 2
	slli.d	$s0, $s5, 3
	ldx.d	$a0, $fp, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s0
	addi.w	$s6, $a0, 0
	addi.d	$a2, $a1, 1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s6, .LBB32_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB32_3 Depth=1
	move	$s7, $zero
	move	$s8, $zero
	alsl.d	$s0, $s5, $fp, 3
	.p2align	4, , 16
.LBB32_5:                               # %.lr.ph
                                        #   Parent Loop BB32_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	add.d	$a3, $a0, $s8
	ori	$a2, $zero, 60
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, 60
	addi.d	$s8, $s8, 60
	blt	$s7, $s6, .LBB32_5
	b	.LBB32_2
.LBB32_6:                               # %._crit_edge19
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
.Lfunc_end32:
	.size	writeData_pointer, .Lfunc_end32-writeData_pointer
                                        # -- End function
	.globl	writeData                       # -- Begin function writeData
	.p2align	5
	.type	writeData,@function
writeData:                              # @writeData
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
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	blez	$a1, .LBB33_6
# %bb.1:                                # %.lr.ph18.preheader
	move	$fp, $a4
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s3, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s4, $a0, %pc_lo12(.L.str.24)
	move	$s5, $zero
	b	.LBB33_3
	.p2align	4, , 16
.LBB33_2:                               # %._crit_edge
                                        #   in Loop: Header=BB33_3 Depth=1
	addi.d	$s5, $s5, 1
	beq	$s5, $s1, .LBB33_6
.LBB33_3:                               # %.lr.ph18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_5 Depth 2
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s6, $a0, 0
	slli.d	$a0, $s5, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a2, $a0, 1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s6, .LBB33_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB33_3 Depth=1
	move	$s7, $zero
	move	$s8, $zero
	alsl.d	$s0, $s5, $fp, 3
	.p2align	4, , 16
.LBB33_5:                               # %.lr.ph
                                        #   Parent Loop BB33_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	add.d	$a3, $a0, $s8
	ori	$a2, $zero, 60
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, 60
	addi.d	$s8, $s8, 60
	blt	$s7, $s6, .LBB33_5
	b	.LBB33_2
.LBB33_6:                               # %._crit_edge19
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
.Lfunc_end33:
	.size	writeData, .Lfunc_end33-writeData
                                        # -- End function
	.globl	write1seq                       # -- Begin function write1seq
	.p2align	5
	.type	write1seq,@function
write1seq:                              # @write1seq
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s2, $a0, 0
	blez	$s2, .LBB34_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s1, $a0, %pc_lo12(.L.str.24)
	move	$s3, $zero
	.p2align	4, , 16
.LBB34_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 60
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 60
	addi.d	$fp, $fp, 60
	blt	$s3, $s2, .LBB34_2
.LBB34_3:                               # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end34:
	.size	write1seq, .Lfunc_end34-write1seq
                                        # -- End function
	.globl	readhat2_floathalf_pointer      # -- Begin function readhat2_floathalf_pointer
	.p2align	5
	.type	readhat2_floathalf_pointer,@function
readhat2_floathalf_pointer:             # @readhat2_floathalf_pointer
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	move	$fp, $a3
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 14
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 14
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 19
	addi.d	$a0, $sp, 14
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	bne	$s1, $a0, .LBB35_19
# %bb.1:
	addi.d	$a0, $sp, 14
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB35_12
# %bb.2:                                # %.lr.ph.preheader
	move	$s2, $zero
	ori	$s3, $zero, 10
	b	.LBB35_5
.LBB35_3:                               # %.critedge.i
                                        #   in Loop: Header=BB35_5 Depth=1
	st.b	$zero, $s4, 0
	.p2align	4, , 16
.LBB35_4:                               # %myfgets.exit
                                        #   in Loop: Header=BB35_5 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $s1, .LBB35_11
.LBB35_5:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_7 Depth 2
                                        #     Child Loop BB35_10 Depth 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB35_4
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB35_5 Depth=1
	addi.d	$s4, $sp, 14
	ori	$s5, $zero, 254
	.p2align	4, , 16
.LBB35_7:                               # %.lr.ph.i
                                        #   Parent Loop BB35_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB35_3
# %bb.8:                                #   in Loop: Header=BB35_7 Depth=2
	addi.d	$a1, $s4, 1
	addi.w	$s5, $s5, -1
	st.b	$a0, $s4, 0
	move	$s4, $a1
	bnez	$s5, .LBB35_7
# %bb.9:                                # %.critedge18.i
                                        #   in Loop: Header=BB35_5 Depth=1
	st.b	$zero, $a1, 0
	.p2align	4, , 16
.LBB35_10:                              #   Parent Loop BB35_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB35_10
	b	.LBB35_4
.LBB35_11:                              # %.preheader
	ori	$s2, $zero, 1
	bne	$s1, $s2, .LBB35_13
.LBB35_12:                              # %._crit_edge
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB35_13:                              # %.lr.ph30
	move	$s5, $zero
	addi.w	$s3, $s1, -1
	bstrpick.d	$s1, $s1, 31, 0
	ori	$s4, $zero, 10
	b	.LBB35_15
	.p2align	4, , 16
.LBB35_14:                              # %.loopexit
                                        #   in Loop: Header=BB35_15 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s5, $s3, .LBB35_12
.LBB35_15:                              # %.lr.ph28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_17 Depth 2
	alsl.d	$s6, $s5, $fp, 3
	addi.d	$s5, $s5, 1
	ori	$s7, $zero, 4
	move	$s8, $s1
	b	.LBB35_17
	.p2align	4, , 16
.LBB35_16:                              # %.lr.ph.i23
                                        #   in Loop: Header=BB35_17 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 270
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 271
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 272
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 273
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 274
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 275
	st.b	$zero, $sp, 276
	addi.d	$a0, $sp, 270
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a0, $s7
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	beq	$s2, $s8, .LBB35_14
.LBB35_17:                              #   Parent Loop BB35_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB35_16
# %bb.18:                               #   in Loop: Header=BB35_17 Depth=2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	b	.LBB35_16
.LBB35_19:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	readhat2_floathalf_pointer, .Lfunc_end35-readhat2_floathalf_pointer
                                        # -- End function
	.globl	readhat2_floathalf              # -- Begin function readhat2_floathalf
	.p2align	5
	.type	readhat2_floathalf,@function
readhat2_floathalf:                     # @readhat2_floathalf
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	move	$fp, $a3
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 14
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 14
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 19
	addi.d	$a0, $sp, 14
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	bne	$s1, $a0, .LBB36_19
# %bb.1:
	addi.d	$a0, $sp, 14
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB36_12
# %bb.2:                                # %.lr.ph.preheader
	move	$s2, $zero
	ori	$s3, $zero, 10
	b	.LBB36_5
.LBB36_3:                               # %.critedge.i
                                        #   in Loop: Header=BB36_5 Depth=1
	st.b	$zero, $s4, 0
	.p2align	4, , 16
.LBB36_4:                               # %myfgets.exit
                                        #   in Loop: Header=BB36_5 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $s1, .LBB36_11
.LBB36_5:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_7 Depth 2
                                        #     Child Loop BB36_10 Depth 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB36_4
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB36_5 Depth=1
	addi.d	$s4, $sp, 14
	ori	$s5, $zero, 254
	.p2align	4, , 16
.LBB36_7:                               # %.lr.ph.i
                                        #   Parent Loop BB36_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB36_3
# %bb.8:                                #   in Loop: Header=BB36_7 Depth=2
	addi.d	$a1, $s4, 1
	addi.w	$s5, $s5, -1
	st.b	$a0, $s4, 0
	move	$s4, $a1
	bnez	$s5, .LBB36_7
# %bb.9:                                # %.critedge18.i
                                        #   in Loop: Header=BB36_5 Depth=1
	st.b	$zero, $a1, 0
	.p2align	4, , 16
.LBB36_10:                              #   Parent Loop BB36_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB36_10
	b	.LBB36_4
.LBB36_11:                              # %.preheader
	ori	$s2, $zero, 1
	bne	$s1, $s2, .LBB36_13
.LBB36_12:                              # %._crit_edge
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB36_13:                              # %.lr.ph30
	move	$s5, $zero
	addi.w	$s3, $s1, -1
	bstrpick.d	$s1, $s1, 31, 0
	ori	$s4, $zero, 10
	b	.LBB36_15
	.p2align	4, , 16
.LBB36_14:                              # %.loopexit
                                        #   in Loop: Header=BB36_15 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s5, $s3, .LBB36_12
.LBB36_15:                              # %.lr.ph28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_17 Depth 2
	alsl.d	$s6, $s5, $fp, 3
	addi.d	$s5, $s5, 1
	ori	$s7, $zero, 4
	move	$s8, $s1
	b	.LBB36_17
	.p2align	4, , 16
.LBB36_16:                              # %.lr.ph.i23
                                        #   in Loop: Header=BB36_17 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 270
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 271
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 272
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 273
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 274
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 275
	st.b	$zero, $sp, 276
	addi.d	$a0, $sp, 270
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a0, $s7
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	beq	$s2, $s8, .LBB36_14
.LBB36_17:                              #   Parent Loop BB36_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB36_16
# %bb.18:                               #   in Loop: Header=BB36_17 Depth=2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	b	.LBB36_16
.LBB36_19:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	readhat2_floathalf, .Lfunc_end36-readhat2_floathalf
                                        # -- End function
	.globl	readhat2_float                  # -- Begin function readhat2_float
	.p2align	5
	.type	readhat2_float,@function
readhat2_float:                         # @readhat2_float
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
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 30
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 30
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 35
	addi.d	$a0, $sp, 30
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	bne	$s1, $a0, .LBB37_19
# %bb.1:
	addi.d	$a0, $sp, 30
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB37_12
# %bb.2:                                # %.lr.ph.preheader
	move	$fp, $zero
	ori	$s2, $zero, 10
	b	.LBB37_5
.LBB37_3:                               # %.critedge.i
                                        #   in Loop: Header=BB37_5 Depth=1
	st.b	$zero, $s3, 0
	.p2align	4, , 16
.LBB37_4:                               # %myfgets.exit
                                        #   in Loop: Header=BB37_5 Depth=1
	addi.w	$fp, $fp, 1
	beq	$fp, $s1, .LBB37_11
.LBB37_5:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_7 Depth 2
                                        #     Child Loop BB37_10 Depth 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_4
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB37_5 Depth=1
	addi.d	$s3, $sp, 30
	ori	$s4, $zero, 254
	.p2align	4, , 16
.LBB37_7:                               # %.lr.ph.i
                                        #   Parent Loop BB37_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB37_3
# %bb.8:                                #   in Loop: Header=BB37_7 Depth=2
	addi.d	$a1, $s3, 1
	addi.w	$s4, $s4, -1
	st.b	$a0, $s3, 0
	move	$s3, $a1
	bnez	$s4, .LBB37_7
# %bb.9:                                # %.critedge18.i
                                        #   in Loop: Header=BB37_5 Depth=1
	st.b	$zero, $a1, 0
	.p2align	4, , 16
.LBB37_10:                              #   Parent Loop BB37_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB37_10
	b	.LBB37_4
.LBB37_11:                              # %.preheader
	ori	$s2, $zero, 1
	bne	$s1, $s2, .LBB37_13
.LBB37_12:                              # %._crit_edge
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
	ret
.LBB37_13:                              # %.lr.ph29
	move	$s6, $zero
	addi.w	$s3, $s1, -1
	bstrpick.d	$s1, $s1, 31, 0
	ori	$fp, $zero, 4
	ori	$s5, $zero, 10
	b	.LBB37_15
	.p2align	4, , 16
.LBB37_14:                              # %.loopexit
                                        #   in Loop: Header=BB37_15 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$fp, $fp, 4
	beq	$s6, $s3, .LBB37_12
.LBB37_15:                              # %.lr.ph27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_17 Depth 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s7, $s6, $a0, 3
	addi.d	$s6, $s6, 1
	move	$s8, $s1
	move	$s4, $fp
	b	.LBB37_17
	.p2align	4, , 16
.LBB37_16:                              # %.lr.ph.i22
                                        #   in Loop: Header=BB37_17 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 286
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 287
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 288
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 289
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 290
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 291
	st.b	$zero, $sp, 292
	addi.d	$a0, $sp, 286
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a0, $s4
	addi.d	$s8, $s8, -1
	addi.d	$s4, $s4, 4
	beq	$s2, $s8, .LBB37_14
.LBB37_17:                              #   Parent Loop BB37_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB37_16
# %bb.18:                               #   in Loop: Header=BB37_17 Depth=2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	b	.LBB37_16
.LBB37_19:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	readhat2_float, .Lfunc_end37-readhat2_float
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function readhat2_int
.LCPI38_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	readhat2_int
	.p2align	5
	.type	readhat2_int,@function
readhat2_int:                           # @readhat2_int
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
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 22
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 22
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 27
	addi.d	$a0, $sp, 22
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	bne	$s1, $a0, .LBB38_19
# %bb.1:
	addi.d	$a0, $sp, 22
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB38_12
# %bb.2:                                # %.lr.ph.preheader
	move	$fp, $zero
	ori	$s2, $zero, 10
	b	.LBB38_5
.LBB38_3:                               # %.critedge.i
                                        #   in Loop: Header=BB38_5 Depth=1
	st.b	$zero, $s3, 0
	.p2align	4, , 16
.LBB38_4:                               # %myfgets.exit
                                        #   in Loop: Header=BB38_5 Depth=1
	addi.w	$fp, $fp, 1
	beq	$fp, $s1, .LBB38_11
.LBB38_5:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_7 Depth 2
                                        #     Child Loop BB38_10 Depth 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB38_4
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB38_5 Depth=1
	addi.d	$s3, $sp, 22
	ori	$s4, $zero, 254
	.p2align	4, , 16
.LBB38_7:                               # %.lr.ph.i
                                        #   Parent Loop BB38_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB38_3
# %bb.8:                                #   in Loop: Header=BB38_7 Depth=2
	addi.d	$a1, $s3, 1
	addi.w	$s4, $s4, -1
	st.b	$a0, $s3, 0
	move	$s3, $a1
	bnez	$s4, .LBB38_7
# %bb.9:                                # %.critedge18.i
                                        #   in Loop: Header=BB38_5 Depth=1
	st.b	$zero, $a1, 0
	.p2align	4, , 16
.LBB38_10:                              #   Parent Loop BB38_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB38_10
	b	.LBB38_4
.LBB38_11:                              # %.preheader
	ori	$s2, $zero, 1
	bne	$s1, $s2, .LBB38_13
.LBB38_12:                              # %._crit_edge
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
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
	ret
.LBB38_13:                              # %.lr.ph29
	move	$s4, $zero
	addi.w	$s3, $s1, -1
	bstrpick.d	$s1, $s1, 31, 0
	pcalau12i	$a0, %pc_hi20(.LCPI38_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI38_0)
	ori	$fp, $zero, 4
	ori	$s6, $zero, 10
	b	.LBB38_15
	.p2align	4, , 16
.LBB38_14:                              # %.loopexit
                                        #   in Loop: Header=BB38_15 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$fp, $fp, 4
	beq	$s4, $s3, .LBB38_12
.LBB38_15:                              # %.lr.ph27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_17 Depth 2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$s7, $s4, $a0, 3
	addi.d	$s4, $s4, 1
	move	$s8, $s1
	move	$s5, $fp
	b	.LBB38_17
	.p2align	4, , 16
.LBB38_16:                              # %.lr.ph.i22
                                        #   in Loop: Header=BB38_17 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 278
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 279
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 280
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 281
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 282
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 283
	st.b	$zero, $sp, 284
	addi.d	$a0, $sp, 278
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	ld.d	$a0, $s7, 0
	vldi	$vr1, -928
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	stx.w	$a1, $a0, $s5
	addi.d	$s8, $s8, -1
	addi.d	$s5, $s5, 4
	beq	$s2, $s8, .LBB38_14
.LBB38_17:                              #   Parent Loop BB38_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB38_16
# %bb.18:                               #   in Loop: Header=BB38_17 Depth=2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	b	.LBB38_16
.LBB38_19:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	readhat2_int, .Lfunc_end38-readhat2_int
                                        # -- End function
	.globl	readhat2                        # -- Begin function readhat2
	.p2align	5
	.type	readhat2,@function
readhat2:                               # @readhat2
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
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 30
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 30
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 35
	addi.d	$a0, $sp, 30
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	bne	$s1, $a0, .LBB39_19
# %bb.1:
	addi.d	$a0, $sp, 30
	ori	$a1, $zero, 256
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB39_12
# %bb.2:                                # %.lr.ph.preheader
	move	$fp, $zero
	ori	$s2, $zero, 10
	b	.LBB39_5
.LBB39_3:                               # %.critedge.i
                                        #   in Loop: Header=BB39_5 Depth=1
	st.b	$zero, $s3, 0
	.p2align	4, , 16
.LBB39_4:                               # %myfgets.exit
                                        #   in Loop: Header=BB39_5 Depth=1
	addi.w	$fp, $fp, 1
	beq	$fp, $s1, .LBB39_11
.LBB39_5:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_7 Depth 2
                                        #     Child Loop BB39_10 Depth 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_4
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB39_5 Depth=1
	addi.d	$s3, $sp, 30
	ori	$s4, $zero, 254
	.p2align	4, , 16
.LBB39_7:                               # %.lr.ph.i
                                        #   Parent Loop BB39_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB39_3
# %bb.8:                                #   in Loop: Header=BB39_7 Depth=2
	addi.d	$a1, $s3, 1
	addi.w	$s4, $s4, -1
	st.b	$a0, $s3, 0
	move	$s3, $a1
	bnez	$s4, .LBB39_7
# %bb.9:                                # %.critedge18.i
                                        #   in Loop: Header=BB39_5 Depth=1
	st.b	$zero, $a1, 0
	.p2align	4, , 16
.LBB39_10:                              #   Parent Loop BB39_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB39_10
	b	.LBB39_4
.LBB39_11:                              # %.preheader
	ori	$s2, $zero, 1
	bne	$s1, $s2, .LBB39_13
.LBB39_12:                              # %._crit_edge
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
	ret
.LBB39_13:                              # %.lr.ph29
	move	$s6, $zero
	addi.w	$s3, $s1, -1
	bstrpick.d	$s1, $s1, 31, 0
	ori	$fp, $zero, 8
	ori	$s5, $zero, 10
	b	.LBB39_15
	.p2align	4, , 16
.LBB39_14:                              # %.loopexit
                                        #   in Loop: Header=BB39_15 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$fp, $fp, 8
	beq	$s6, $s3, .LBB39_12
.LBB39_15:                              # %.lr.ph27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_17 Depth 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s7, $s6, $a0, 3
	addi.d	$s6, $s6, 1
	move	$s8, $s1
	move	$s4, $fp
	b	.LBB39_17
	.p2align	4, , 16
.LBB39_16:                              # %.lr.ph.i22
                                        #   in Loop: Header=BB39_17 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 286
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 287
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 288
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 289
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 290
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.b	$a0, $sp, 291
	st.b	$zero, $sp, 292
	addi.d	$a0, $sp, 286
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fstx.d	$fa0, $a0, $s4
	addi.d	$s8, $s8, -1
	addi.d	$s4, $s4, 8
	beq	$s2, $s8, .LBB39_14
.LBB39_17:                              #   Parent Loop BB39_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB39_16
# %bb.18:                               #   in Loop: Header=BB39_17 Depth=2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	b	.LBB39_16
.LBB39_19:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	readhat2, .Lfunc_end39-readhat2
                                        # -- End function
	.globl	WriteFloatHat2_pointer          # -- Begin function WriteFloatHat2_pointer
	.p2align	5
	.type	WriteFloatHat2_pointer,@function
WriteFloatHat2_pointer:                 # @WriteFloatHat2_pointer
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 2
	addi.d	$s5, $a1, -1
	blt	$a1, $a0, .LBB40_6
# %bb.1:                                # %.preheader51.preheader
	move	$a0, $zero
	addi.w	$a1, $s5, 0
	movgr2fr.d	$fa0, $zero
	move	$a2, $s0
	b	.LBB40_3
	.p2align	4, , 16
.LBB40_2:                               # %._crit_edge
                                        #   in Loop: Header=BB40_3 Depth=1
	addi.d	$a0, $a0, 1
	addi.w	$a2, $a2, -1
	beq	$a0, $a1, .LBB40_7
.LBB40_3:                               # %.preheader51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_5 Depth 2
	bge	$a0, $s5, .LBB40_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB40_3 Depth=1
	slli.d	$a3, $a0, 3
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a3
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	.p2align	4, , 16
.LBB40_5:                               #   Parent Loop BB40_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a4, 0
	fcvt.d.s	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB40_5
	b	.LBB40_2
.LBB40_6:
	movgr2fr.d	$fs0, $zero
	b	.LBB40_8
.LBB40_7:                               # %._crit_edge56.loopexit
	vldi	$vr1, -1020
	fmul.d	$fs0, $fa0, $fa1
.LBB40_8:                               # %._crit_edge56
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s4, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB40_19
# %bb.9:                                # %.lr.ph60.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s4, $a0, %pc_lo12(.L.str.27)
	move	$fp, $s0
	.p2align	4, , 16
.LBB40_10:                              # %.lr.ph60
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s2, 0
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$fp, $fp, -1
	addi.w	$s3, $s3, 1
	bnez	$fp, .LBB40_10
# %bb.11:                               # %.preheader.preheader
	addi.w	$a0, $s5, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, -349526
	ori	$s5, $a0, 2731
	lu32i.d	$s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s2, $a0, %pc_lo12(.L.str.28)
	move	$a1, $zero
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB40_13
	.p2align	4, , 16
.LBB40_12:                              # %._crit_edge63
                                        #   in Loop: Header=BB40_13 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $s0, .LBB40_19
.LBB40_13:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_17 Depth 2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	sub.d	$a0, $s0, $a1
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB40_12
# %bb.14:                               # %.lr.ph62
                                        #   in Loop: Header=BB40_13 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s8, $a0, -1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$fp, $a0, -1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s4, $a1, $a0, 3
	ori	$s0, $zero, 4
	ori	$s3, $zero, 1
	addi.d	$s7, $zero, -1
	b	.LBB40_17
	.p2align	4, , 16
.LBB40_15:                              #   in Loop: Header=BB40_17 Depth=2
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB40_16:                              #   in Loop: Header=BB40_17 Depth=2
	addi.d	$s0, $s0, 4
	addi.d	$s7, $s7, -1
	addi.w	$s3, $s3, 1
	addi.d	$fp, $fp, -1
	addi.d	$s8, $s8, -1
	beqz	$fp, .LBB40_12
.LBB40_17:                              #   Parent Loop BB40_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 0
	bstrpick.d	$a1, $s3, 31, 0
	mul.d	$a1, $a1, $s5
	srli.d	$a1, $a1, 35
	fldx.s	$fa0, $a0, $s0
	slli.d	$a0, $a1, 3
	alsl.d	$a0, $a1, $a0, 2
	add.w	$s6, $s7, $a0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB40_15
# %bb.18:                               #   in Loop: Header=BB40_17 Depth=2
	bnez	$s8, .LBB40_16
	b	.LBB40_15
.LBB40_19:                              # %._crit_edge65
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end40:
	.size	WriteFloatHat2_pointer, .Lfunc_end40-WriteFloatHat2_pointer
                                        # -- End function
	.globl	WriteFloatHat2                  # -- Begin function WriteFloatHat2
	.p2align	5
	.type	WriteFloatHat2,@function
WriteFloatHat2:                         # @WriteFloatHat2
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 2
	addi.d	$s5, $a1, -1
	blt	$a1, $a0, .LBB41_6
# %bb.1:                                # %.preheader51.preheader
	move	$a0, $zero
	addi.w	$a1, $s5, 0
	movgr2fr.d	$fa0, $zero
	move	$a2, $s0
	b	.LBB41_3
	.p2align	4, , 16
.LBB41_2:                               # %._crit_edge
                                        #   in Loop: Header=BB41_3 Depth=1
	addi.d	$a0, $a0, 1
	addi.w	$a2, $a2, -1
	beq	$a0, $a1, .LBB41_7
.LBB41_3:                               # %.preheader51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_5 Depth 2
	bge	$a0, $s5, .LBB41_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB41_3 Depth=1
	slli.d	$a3, $a0, 3
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a3
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	.p2align	4, , 16
.LBB41_5:                               #   Parent Loop BB41_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a4, 0
	fcvt.d.s	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB41_5
	b	.LBB41_2
.LBB41_6:
	movgr2fr.d	$fs0, $zero
	b	.LBB41_8
.LBB41_7:                               # %._crit_edge56.loopexit
	vldi	$vr1, -1020
	fmul.d	$fs0, $fa0, $fa1
.LBB41_8:                               # %._crit_edge56
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s4, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB41_19
# %bb.9:                                # %.lr.ph60.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s4, $a0, %pc_lo12(.L.str.27)
	move	$fp, $s0
	.p2align	4, , 16
.LBB41_10:                              # %.lr.ph60
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 256
	addi.d	$fp, $fp, -1
	addi.w	$s3, $s3, 1
	bnez	$fp, .LBB41_10
# %bb.11:                               # %.preheader.preheader
	addi.w	$a0, $s5, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, -349526
	ori	$s5, $a0, 2731
	lu32i.d	$s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s2, $a0, %pc_lo12(.L.str.28)
	move	$a1, $zero
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB41_13
	.p2align	4, , 16
.LBB41_12:                              # %._crit_edge63
                                        #   in Loop: Header=BB41_13 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $s0, .LBB41_19
.LBB41_13:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_17 Depth 2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	sub.d	$a0, $s0, $a1
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB41_12
# %bb.14:                               # %.lr.ph62
                                        #   in Loop: Header=BB41_13 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s8, $a0, -1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$fp, $a0, -1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s4, $a1, $a0, 3
	ori	$s0, $zero, 4
	ori	$s3, $zero, 1
	addi.d	$s7, $zero, -1
	b	.LBB41_17
	.p2align	4, , 16
.LBB41_15:                              #   in Loop: Header=BB41_17 Depth=2
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB41_16:                              #   in Loop: Header=BB41_17 Depth=2
	addi.d	$s0, $s0, 4
	addi.d	$s7, $s7, -1
	addi.w	$s3, $s3, 1
	addi.d	$fp, $fp, -1
	addi.d	$s8, $s8, -1
	beqz	$fp, .LBB41_12
.LBB41_17:                              #   Parent Loop BB41_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 0
	bstrpick.d	$a1, $s3, 31, 0
	mul.d	$a1, $a1, $s5
	srli.d	$a1, $a1, 35
	fldx.s	$fa0, $a0, $s0
	slli.d	$a0, $a1, 3
	alsl.d	$a0, $a1, $a0, 2
	add.w	$s6, $s7, $a0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB41_15
# %bb.18:                               #   in Loop: Header=BB41_17 Depth=2
	bnez	$s8, .LBB41_16
	b	.LBB41_15
.LBB41_19:                              # %._crit_edge65
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end41:
	.size	WriteFloatHat2, .Lfunc_end41-WriteFloatHat2
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function WriteHat2_int
.LCPI42_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	WriteHat2_int
	.p2align	5
	.type	WriteHat2_int,@function
WriteHat2_int:                          # @WriteHat2_int
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	move	$s0, $a3
	move	$s2, $a2
	move	$s7, $a1
	move	$s1, $a0
	ori	$a0, $zero, 2
	addi.w	$s5, $a1, -1
	blt	$a1, $a0, .LBB42_5
# %bb.1:                                # %.lr.ph55.preheader
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	.p2align	4, , 16
.LBB42_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_3 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s0, $a3
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a1
	move	$a4, $s7
	.p2align	4, , 16
.LBB42_3:                               #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a3, 0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bne	$a0, $a4, .LBB42_3
# %bb.4:                                # %.loopexit50
                                        #   in Loop: Header=BB42_2 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	bne	$a2, $s5, .LBB42_2
	b	.LBB42_6
.LBB42_5:
	movgr2fr.d	$fa0, $zero
.LBB42_6:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.LCPI42_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI42_0)
	fdiv.d	$fs1, $fa0, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s4, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	vldi	$vr0, -1020
	fmul.d	$fa0, $fs1, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s7, .LBB42_17
# %bb.7:                                # %.lr.ph60.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s4, $a0, %pc_lo12(.L.str.27)
	move	$fp, $s7
	.p2align	4, , 16
.LBB42_8:                               # %.lr.ph60
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 256
	addi.d	$fp, $fp, -1
	addi.w	$s3, $s3, 1
	bnez	$fp, .LBB42_8
# %bb.9:                                # %.preheader
	ori	$a0, $zero, 2
	blt	$s7, $a0, .LBB42_17
# %bb.10:                               # %.lr.ph65.preheader
	bstrpick.d	$s3, $s5, 31, 0
	ori	$s4, $zero, 1
	ori	$fp, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s2, $a0, %pc_lo12(.L.str.28)
	move	$a1, $zero
	lu12i.w	$a0, 174762
	ori	$s6, $a0, 2731
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	b	.LBB42_12
	.p2align	4, , 16
.LBB42_11:                              # %.loopexit
                                        #   in Loop: Header=BB42_12 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$fp, $fp, 4
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a1, $s3, .LBB42_17
.LBB42_12:                              # %.lr.ph63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_15 Depth 2
	alsl.d	$s8, $a1, $s0, 3
	addi.d	$a0, $a1, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $s7
	move	$s5, $fp
	ori	$s7, $zero, 1
	b	.LBB42_15
	.p2align	4, , 16
.LBB42_13:                              #   in Loop: Header=BB42_15 Depth=2
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB42_14:                              #   in Loop: Header=BB42_15 Depth=2
	addi.w	$s7, $s7, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, -1
	beq	$s4, $s0, .LBB42_11
.LBB42_15:                              #   Parent Loop BB42_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	ldx.w	$a0, $a0, $s5
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	movfr2gr.d	$a2, $fa0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beq	$s4, $s3, .LBB42_13
# %bb.16:                               #   in Loop: Header=BB42_15 Depth=2
	mul.d	$a0, $s7, $s6
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 33
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	sub.w	$a0, $s7, $a0
	bnez	$a0, .LBB42_14
	b	.LBB42_13
.LBB42_17:                              # %._crit_edge66
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end42:
	.size	WriteHat2_int, .Lfunc_end42-WriteHat2_int
                                        # -- End function
	.globl	WriteHat2                       # -- Begin function WriteHat2
	.p2align	5
	.type	WriteHat2,@function
WriteHat2:                              # @WriteHat2
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$s0, $a3
	move	$s2, $a2
	move	$s7, $a1
	move	$s1, $a0
	ori	$a0, $zero, 2
	addi.w	$s5, $a1, -1
	blt	$a1, $a0, .LBB43_6
# %bb.1:                                # %.lr.ph54.preheader
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	.p2align	4, , 16
.LBB43_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_3 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s0, $a3
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a1
	move	$a4, $s7
	.p2align	4, , 16
.LBB43_3:                               #   Parent Loop BB43_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a3, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bne	$a0, $a4, .LBB43_3
# %bb.4:                                # %.loopexit49
                                        #   in Loop: Header=BB43_2 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $s5, .LBB43_2
# %bb.5:                                # %._crit_edge.loopexit
	vldi	$vr1, -1020
	fmul.d	$fs0, $fa0, $fa1
	b	.LBB43_7
.LBB43_6:
	movgr2fr.d	$fs0, $zero
.LBB43_7:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s4, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s7, .LBB43_18
# %bb.8:                                # %.lr.ph59.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s4, $a0, %pc_lo12(.L.str.27)
	move	$fp, $s7
	.p2align	4, , 16
.LBB43_9:                               # %.lr.ph59
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 256
	addi.d	$fp, $fp, -1
	addi.w	$s3, $s3, 1
	bnez	$fp, .LBB43_9
# %bb.10:                               # %.preheader
	ori	$a0, $zero, 2
	blt	$s7, $a0, .LBB43_18
# %bb.11:                               # %.lr.ph64.preheader
	bstrpick.d	$s3, $s5, 31, 0
	ori	$s4, $zero, 1
	ori	$fp, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s2, $a0, %pc_lo12(.L.str.28)
	move	$a1, $zero
	lu12i.w	$a0, 174762
	ori	$s6, $a0, 2731
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	b	.LBB43_13
	.p2align	4, , 16
.LBB43_12:                              # %.loopexit
                                        #   in Loop: Header=BB43_13 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$fp, $fp, 8
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $s3, .LBB43_18
.LBB43_13:                              # %.lr.ph62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_16 Depth 2
	alsl.d	$s8, $a1, $s0, 3
	addi.d	$a0, $a1, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $s7
	move	$s5, $fp
	ori	$s7, $zero, 1
	b	.LBB43_16
	.p2align	4, , 16
.LBB43_14:                              #   in Loop: Header=BB43_16 Depth=2
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB43_15:                              #   in Loop: Header=BB43_16 Depth=2
	addi.w	$s7, $s7, 1
	addi.d	$s5, $s5, 8
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, -1
	beq	$s4, $s0, .LBB43_12
.LBB43_16:                              #   Parent Loop BB43_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	ldx.d	$a2, $a0, $s5
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beq	$s4, $s3, .LBB43_14
# %bb.17:                               #   in Loop: Header=BB43_16 Depth=2
	mul.d	$a0, $s7, $s6
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 33
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	sub.w	$a0, $s7, $a0
	bnez	$a0, .LBB43_15
	b	.LBB43_14
.LBB43_18:                              # %._crit_edge65
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end43:
	.size	WriteHat2, .Lfunc_end43-WriteHat2
                                        # -- End function
	.globl	WriteHat2plain                  # -- Begin function WriteHat2plain
	.p2align	5
	.type	WriteHat2plain,@function
WriteHat2plain:                         # @WriteHat2plain
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	ori	$s5, $zero, 2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	blt	$a1, $s5, .LBB44_5
# %bb.1:                                # %.lr.ph15.preheader
	move	$s1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	ori	$s6, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s2, $a0, %pc_lo12(.L.str.29)
	move	$s3, $zero
	.p2align	4, , 16
.LBB44_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_3 Depth 2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$fp, $s3, $a0, 3
	addi.d	$s3, $s3, 1
	move	$s4, $s5
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$s8, $s6
	.p2align	4, , 16
.LBB44_3:                               #   Parent Loop BB44_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	ldx.d	$a4, $a0, $s8
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 8
	addi.d	$s0, $s0, -1
	addi.w	$s4, $s4, 1
	bne	$s7, $s0, .LBB44_3
# %bb.4:                                # %.loopexit
                                        #   in Loop: Header=BB44_2 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 8
	addi.w	$s5, $s5, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bne	$s3, $a0, .LBB44_2
.LBB44_5:                               # %._crit_edge
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end44:
	.size	WriteHat2plain, .Lfunc_end44-WriteHat2plain
                                        # -- End function
	.globl	ReadFasta_sub                   # -- Begin function ReadFasta_sub
	.p2align	5
	.type	ReadFasta_sub,@function
ReadFasta_sub:                          # @ReadFasta_sub
# %bb.0:
	blez	$a2, .LBB45_13
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a4, 48
	ori	$a4, $a4, 1712
	sub.d	$sp, $sp, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	lu12i.w	$a0, 48
	ori	$a0, $a0, 3412
	add.d	$s3, $sp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s4, $a0, %pc_lo12(.L.str.30)
	move	$s5, $zero
	move	$s6, $zero
	addi.d	$s7, $sp, 8
	lu12i.w	$a0, 2441
	ori	$s8, $a0, 1662
	.p2align	4, , 16
.LBB45_2:                               # =>This Inner Loop Header: Depth=1
	lu12i.w	$a0, 48
	ori	$a0, $a0, 3400
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 255
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 48
	ori	$a0, $a0, 3400
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 12
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB45_4
# %bb.3:                                #   in Loop: Header=BB45_2 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s5, 2
	stx.w	$a0, $a1, $s7
	addi.w	$s5, $s5, 1
.LBB45_4:                               #   in Loop: Header=BB45_2 Depth=1
	bltu	$s8, $s6, .LBB45_6
# %bb.5:                                #   in Loop: Header=BB45_2 Depth=1
	addi.w	$s6, $s6, 1
	blt	$s5, $s0, .LBB45_2
.LBB45_6:                               # %.lr.ph35.preheader
	slli.d	$a2, $s0, 3
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s4, $zero
	addi.d	$s5, $sp, 8
	lu12i.w	$a0, 24
	ori	$s6, $a0, 1694
	.p2align	4, , 16
.LBB45_7:                               # %.lr.ph35
                                        # =>This Inner Loop Header: Depth=1
	lu12i.w	$a0, 48
	ori	$a0, $a0, 3400
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 255
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB45_12
# %bb.8:                                #   in Loop: Header=BB45_7 Depth=1
	slli.d	$a0, $s3, 2
	ldx.w	$s7, $a0, $s5
	slli.d	$a0, $s7, 8
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 48
	ori	$a1, $a1, 3400
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 20
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB45_10
# %bb.9:                                #   in Loop: Header=BB45_7 Depth=1
	lu12i.w	$a0, 48
	ori	$a0, $a0, 3400
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 255
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 48
	ori	$a0, $a0, 3400
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 3
	fstx.d	$fa0, $s1, $a0
	addi.w	$s3, $s3, 1
.LBB45_10:                              #   in Loop: Header=BB45_7 Depth=1
	bltu	$s6, $s4, .LBB45_12
# %bb.11:                               #   in Loop: Header=BB45_7 Depth=1
	addi.w	$s4, $s4, 1
	blt	$s3, $s0, .LBB45_7
.LBB45_12:
	lu12i.w	$a0, 48
	ori	$a0, $a0, 1712
	add.d	$sp, $sp, $a0
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
.LBB45_13:                              # %._crit_edge
	move	$a0, $zero
	ret
.Lfunc_end45:
	.size	ReadFasta_sub, .Lfunc_end45-ReadFasta_sub
                                        # -- End function
	.globl	ReadSsearch                     # -- Begin function ReadSsearch
	.p2align	5
	.type	ReadSsearch,@function
ReadSsearch:                            # @ReadSsearch
# %bb.0:
	blez	$a2, .LBB46_7
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$s3, $sp, 99
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s4, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s5, $a0, %pc_lo12(.L.str.31)
	move	$s7, $zero
	move	$s8, $zero
	lu12i.w	$a0, 2441
	ori	$s2, $a0, 1662
	.p2align	4, , 16
.LBB46_2:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 24
	ori	$a2, $zero, 12
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB46_4
# %bb.3:                                #   in Loop: Header=BB46_2 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 36
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a2, $sp, 20
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	slli.d	$a0, $s6, 32
	srai.d	$a0, $a0, 29
	fstx.d	$fa0, $s0, $a0
	addi.w	$s7, $s7, 1
.LBB46_4:                               #   in Loop: Header=BB46_2 Depth=1
	bltu	$s2, $s8, .LBB46_6
# %bb.5:                                #   in Loop: Header=BB46_2 Depth=1
	addi.w	$s8, $s8, 1
	blt	$s7, $fp, .LBB46_2
.LBB46_6:
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
.LBB46_7:                               # %._crit_edge
	move	$a0, $zero
	ret
.Lfunc_end46:
	.size	ReadSsearch, .Lfunc_end46-ReadSsearch
                                        # -- End function
	.globl	ReadBlastm7_avscore             # -- Begin function ReadBlastm7_avscore
	.p2align	5
	.type	ReadBlastm7_avscore,@function
ReadBlastm7_avscore:                    # @ReadBlastm7_avscore
# %bb.0:
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 344                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 328                  # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	ori	$a1, $zero, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_2
# %bb.1:
	move	$fp, $zero
	b	.LBB47_40
.LBB47_2:                               # %.preheader.lr.ph
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ReadBlastm7_avscore.al)
	addi.d	$s6, $a0, %pc_lo12(ReadBlastm7_avscore.al)
	lu12i.w	$a0, 1220
	ori	$s7, $a0, 2780
	addi.d	$s8, $s6, 24
	pcalau12i	$a0, %pc_hi20(ReadBlastm7_avscore.qal)
	addi.d	$a0, $a0, %pc_lo12(ReadBlastm7_avscore.qal)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s3, $zero, 60
	pcalau12i	$a0, %pc_hi20(ReadBlastm7_avscore.tal)
	addi.d	$s0, $a0, %pc_lo12(ReadBlastm7_avscore.tal)
	addi.d	$a0, $s0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s4, $a0, %pc_lo12(.L.str.42)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$fp, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$s5, $a0, %pc_lo12(.L.str.40)
	move	$s2, $zero
	fmov.d	$fs2, $fs0
	fmov.d	$fs3, $fs0
	fmov.d	$fs1, $fs0
	b	.LBB47_4
.LBB47_3:                               #   in Loop: Header=BB47_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_39
	.p2align	4, , 16
.LBB47_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_9 Depth 2
                                        #     Child Loop BB47_12 Depth 2
                                        #     Child Loop BB47_14 Depth 2
                                        #     Child Loop BB47_16 Depth 2
                                        #     Child Loop BB47_18 Depth 2
                                        #     Child Loop BB47_20 Depth 2
                                        #     Child Loop BB47_23 Depth 2
                                        #     Child Loop BB47_26 Depth 2
                                        #     Child Loop BB47_28 Depth 2
                                        #     Child Loop BB47_31 Depth 2
                                        #     Child Loop BB47_33 Depth 2
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_7
# %bb.5:                                #   in Loop: Header=BB47_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_7
# %bb.6:                                #   in Loop: Header=BB47_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_4
.LBB47_7:                               #   in Loop: Header=BB47_4 Depth=1
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 19
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_9
# %bb.8:                                #   in Loop: Header=BB47_4 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 103
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s2, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	.p2align	4, , 16
.LBB47_9:                               #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_11
# %bb.10:                               #   in Loop: Header=BB47_9 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 25
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_9
.LBB47_11:                              #   in Loop: Header=BB47_4 Depth=1
	addi.d	$a0, $sp, 97
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fadd.d	$fs3, $fs3, $fa0
	.p2align	4, , 16
.LBB47_12:                              #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_14
# %bb.13:                               #   in Loop: Header=BB47_12 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 30
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_12
	.p2align	4, , 16
.LBB47_14:                              #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_16
# %bb.15:                               #   in Loop: Header=BB47_14 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 28
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_14
	.p2align	4, , 16
.LBB47_16:                              #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_18
# %bb.17:                               #   in Loop: Header=BB47_16 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 28
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_16
	.p2align	4, , 16
.LBB47_18:                              #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_20
# %bb.19:                               #   in Loop: Header=BB47_18 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 26
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_18
	.p2align	4, , 16
.LBB47_20:                              #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_22
# %bb.21:                               #   in Loop: Header=BB47_20 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 29
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_20
.LBB47_22:                              #   in Loop: Header=BB47_4 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 101
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fs1, $fs1, $fa0
	.p2align	4, , 16
.LBB47_23:                              #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_25
# %bb.24:                               #   in Loop: Header=BB47_23 Depth=2
	pcalau12i	$a0, %pc_hi20(ReadBlastm7_avscore.al)
	addi.d	$a1, $a0, %pc_lo12(ReadBlastm7_avscore.al)
	ori	$a2, $zero, 24
	move	$a0, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_23
.LBB47_25:                              #   in Loop: Header=BB47_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB47_26:                              #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a1, $s3, .LBB47_26
# %bb.27:                               #   in Loop: Header=BB47_4 Depth=1
	st.b	$zero, $a0, -1
	.p2align	4, , 16
.LBB47_28:                              #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_30
# %bb.29:                               #   in Loop: Header=BB47_28 Depth=2
	ori	$a2, $zero, 24
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_28
.LBB47_30:                              #   in Loop: Header=BB47_4 Depth=1
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB47_31:                              #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a1, $s3, .LBB47_31
# %bb.32:                               #   in Loop: Header=BB47_4 Depth=1
	st.b	$zero, $a0, -1
	.p2align	4, , 16
.LBB47_33:                              #   Parent Loop BB47_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_35
# %bb.34:                               #   in Loop: Header=BB47_33 Depth=2
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 18
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_33
.LBB47_35:                              #   in Loop: Header=BB47_4 Depth=1
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 21
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB47_3
# %bb.36:                               #   in Loop: Header=BB47_4 Depth=1
	slli.d	$a0, $s2, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	fstx.d	$fs3, $a1, $a0
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	fdiv.d	$fs2, $fs0, $fs1
	ftintrz.w.d	$fa0, $fs2
	movfr2gr.s	$a0, $fa0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fcmp.ceq.d	$fcc0, $fs2, $fa0
	bceqz	$fcc0, .LBB47_41
# %bb.37:                               #   in Loop: Header=BB47_4 Depth=1
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 23
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_39
# %bb.38:                               #   in Loop: Header=BB47_4 Depth=1
	addi.w	$s2, $s2, 1
	fmov.d	$fs3, $fs0
	b	.LBB47_3
.LBB47_39:                              # %._crit_edge.loopexit
	ftintrz.w.d	$fa0, $fs2
	movfr2gr.s	$fp, $fa0
.LBB47_40:                              # %._crit_edge
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	fld.d	$fs3, $sp, 328                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 336                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 352                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.LBB47_41:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	movfr2gr.d	$a3, $fs1
	movfr2gr.d	$a4, $fs2
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	ReadBlastm7_avscore, .Lfunc_end47-ReadBlastm7_avscore
                                        # -- End function
	.globl	ReadBlastm7_scoreonly           # -- Begin function ReadBlastm7_scoreonly
	.p2align	5
	.type	ReadBlastm7_scoreonly,@function
ReadBlastm7_scoreonly:                  # @ReadBlastm7_scoreonly
# %bb.0:
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 344                  # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	ori	$a1, $zero, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_3
# %bb.1:
	move	$s8, $zero
.LBB48_2:                               # %._crit_edge
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	fld.d	$fs1, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 352                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.LBB48_3:                               # %.preheader.lr.ph
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ReadBlastm7_scoreonly.al)
	addi.d	$s5, $a0, %pc_lo12(ReadBlastm7_scoreonly.al)
	lu12i.w	$a0, 1220
	ori	$s6, $a0, 2780
	addi.d	$s7, $s5, 24
	pcalau12i	$a0, %pc_hi20(ReadBlastm7_scoreonly.qal)
	addi.d	$a0, $a0, %pc_lo12(ReadBlastm7_scoreonly.qal)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s2, $zero, 60
	pcalau12i	$a0, %pc_hi20(ReadBlastm7_scoreonly.tal)
	addi.d	$a0, $a0, %pc_lo12(ReadBlastm7_scoreonly.tal)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s3, $a0, %pc_lo12(.L.str.42)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$s0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$s4, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$fp, $a0, %pc_lo12(.L.str.39)
	move	$s8, $zero
	fmov.d	$fs1, $fs0
	b	.LBB48_5
.LBB48_4:                               #   in Loop: Header=BB48_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_2
	.p2align	4, , 16
.LBB48_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_10 Depth 2
                                        #     Child Loop BB48_13 Depth 2
                                        #     Child Loop BB48_15 Depth 2
                                        #     Child Loop BB48_17 Depth 2
                                        #     Child Loop BB48_19 Depth 2
                                        #     Child Loop BB48_21 Depth 2
                                        #     Child Loop BB48_23 Depth 2
                                        #     Child Loop BB48_26 Depth 2
                                        #     Child Loop BB48_28 Depth 2
                                        #     Child Loop BB48_31 Depth 2
                                        #     Child Loop BB48_33 Depth 2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_8
# %bb.6:                                #   in Loop: Header=BB48_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_8
# %bb.7:                                #   in Loop: Header=BB48_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_5
.LBB48_8:                               #   in Loop: Header=BB48_5 Depth=1
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 19
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_10
# %bb.9:                                #   in Loop: Header=BB48_5 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 119
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s8, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	.p2align	4, , 16
.LBB48_10:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_12
# %bb.11:                               #   in Loop: Header=BB48_10 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 25
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_10
.LBB48_12:                              #   in Loop: Header=BB48_5 Depth=1
	addi.d	$a0, $sp, 113
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fadd.d	$fs1, $fs1, $fa0
	.p2align	4, , 16
.LBB48_13:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_15
# %bb.14:                               #   in Loop: Header=BB48_13 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 30
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_13
	.p2align	4, , 16
.LBB48_15:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_17
# %bb.16:                               #   in Loop: Header=BB48_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 28
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_15
	.p2align	4, , 16
.LBB48_17:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_19
# %bb.18:                               #   in Loop: Header=BB48_17 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 28
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_17
	.p2align	4, , 16
.LBB48_19:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_21
# %bb.20:                               #   in Loop: Header=BB48_19 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 26
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_19
	.p2align	4, , 16
.LBB48_21:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_23
# %bb.22:                               #   in Loop: Header=BB48_21 Depth=2
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 29
	move	$a0, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_21
	.p2align	4, , 16
.LBB48_23:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_25
# %bb.24:                               #   in Loop: Header=BB48_23 Depth=2
	ori	$a2, $zero, 24
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_23
.LBB48_25:                              #   in Loop: Header=BB48_5 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB48_26:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a1, $s2, .LBB48_26
# %bb.27:                               #   in Loop: Header=BB48_5 Depth=1
	st.b	$zero, $a0, -1
	.p2align	4, , 16
.LBB48_28:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_30
# %bb.29:                               #   in Loop: Header=BB48_28 Depth=2
	ori	$a2, $zero, 24
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_28
.LBB48_30:                              #   in Loop: Header=BB48_5 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB48_31:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a1, $s2, .LBB48_31
# %bb.32:                               #   in Loop: Header=BB48_5 Depth=1
	st.b	$zero, $a0, -1
	.p2align	4, , 16
.LBB48_33:                              #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_35
# %bb.34:                               #   in Loop: Header=BB48_33 Depth=2
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 18
	move	$a0, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_33
.LBB48_35:                              #   in Loop: Header=BB48_5 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 21
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB48_4
# %bb.36:                               #   in Loop: Header=BB48_5 Depth=1
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.w	$s8, $s8, 1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	fstx.d	$fs1, $a1, $a0
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 23
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fs0
	bnez	$a0, .LBB48_4
	b	.LBB48_2
.Lfunc_end48:
	.size	ReadBlastm7_scoreonly, .Lfunc_end48-ReadBlastm7_scoreonly
                                        # -- End function
	.globl	ReadBlastm7                     # -- Begin function ReadBlastm7
	.p2align	5
	.type	ReadBlastm7,@function
ReadBlastm7:                            # @ReadBlastm7
# %bb.0:
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 360                  # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_2
# %bb.1:
	move	$s7, $zero
	b	.LBB49_40
.LBB49_2:                               # %.preheader.lr.ph
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ReadBlastm7.junban)
	addi.d	$a0, $a0, %pc_lo12(ReadBlastm7.junban)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ReadBlastm7.al)
	addi.d	$s8, $a0, %pc_lo12(ReadBlastm7.al)
	lu12i.w	$a0, 1220
	ori	$s2, $a0, 2780
	addi.d	$fp, $s8, 24
	pcalau12i	$a0, %pc_hi20(ReadBlastm7.qal)
	addi.d	$a0, $a0, %pc_lo12(ReadBlastm7.qal)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s3, $zero, 60
	pcalau12i	$a0, %pc_hi20(ReadBlastm7.tal)
	addi.d	$a0, $a0, %pc_lo12(ReadBlastm7.tal)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s0, $a0, %pc_lo12(.L.str.42)
	move	$s4, $zero
	move	$s7, $zero
	fmov.d	$fs1, $fs0
	.p2align	4, , 16
.LBB49_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_8 Depth 2
                                        #     Child Loop BB49_11 Depth 2
                                        #     Child Loop BB49_14 Depth 2
                                        #     Child Loop BB49_16 Depth 2
                                        #     Child Loop BB49_19 Depth 2
                                        #     Child Loop BB49_21 Depth 2
                                        #     Child Loop BB49_24 Depth 2
                                        #     Child Loop BB49_27 Depth 2
                                        #     Child Loop BB49_29 Depth 2
                                        #     Child Loop BB49_32 Depth 2
                                        #     Child Loop BB49_34 Depth 2
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_6
# %bb.4:                                #   in Loop: Header=BB49_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_6
# %bb.5:                                #   in Loop: Header=BB49_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_3
.LBB49_6:                               #   in Loop: Header=BB49_3 Depth=1
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 19
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_8
# %bb.7:                                #   in Loop: Header=BB49_3 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 135
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	slli.d	$a1, $s7, 2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	.p2align	4, , 16
.LBB49_8:                               #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_10
# %bb.9:                                #   in Loop: Header=BB49_8 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 25
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_8
.LBB49_10:                              #   in Loop: Header=BB49_3 Depth=1
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 129
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fadd.d	$fs1, $fs1, $fa0
	.p2align	4, , 16
.LBB49_11:                              #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_13
# %bb.12:                               #   in Loop: Header=BB49_11 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 30
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_11
.LBB49_13:                              #   in Loop: Header=BB49_3 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 134
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s4, $a0, -1
	.p2align	4, , 16
.LBB49_14:                              #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_16
# %bb.15:                               #   in Loop: Header=BB49_14 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 28
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_14
	.p2align	4, , 16
.LBB49_16:                              #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_18
# %bb.17:                               #   in Loop: Header=BB49_16 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 28
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_16
.LBB49_18:                              #   in Loop: Header=BB49_3 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 132
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s5, $a0, -1
	.p2align	4, , 16
.LBB49_19:                              #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_21
# %bb.20:                               #   in Loop: Header=BB49_19 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 26
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_19
	.p2align	4, , 16
.LBB49_21:                              #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_23
# %bb.22:                               #   in Loop: Header=BB49_21 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 29
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_21
.LBB49_23:                              #   in Loop: Header=BB49_3 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 133
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB49_24:                              #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_26
# %bb.25:                               #   in Loop: Header=BB49_24 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a1, %pc_hi20(ReadBlastm7.al)
	addi.d	$a1, $a1, %pc_lo12(ReadBlastm7.al)
	ori	$a2, $zero, 24
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_24
.LBB49_26:                              #   in Loop: Header=BB49_3 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB49_27:                              #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a1, $s3, .LBB49_27
# %bb.28:                               #   in Loop: Header=BB49_3 Depth=1
	st.b	$zero, $a0, -1
	.p2align	4, , 16
.LBB49_29:                              #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_31
# %bb.30:                               #   in Loop: Header=BB49_29 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(ReadBlastm7.al)
	addi.d	$a1, $a1, %pc_lo12(ReadBlastm7.al)
	ori	$a2, $zero, 24
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_29
.LBB49_31:                              #   in Loop: Header=BB49_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$s6, $fp
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB49_32:                              #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a1, $s3, .LBB49_32
# %bb.33:                               #   in Loop: Header=BB49_3 Depth=1
	slli.d	$a1, $s7, 2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	st.b	$zero, $a0, -1
	alsl.d	$fp, $s7, $a2, 2
	slli.d	$a0, $a1, 6
	alsl.d	$a0, $a1, $a0, 4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	move	$a1, $s4
	move	$a2, $s5
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s4
	pcaddu18i	$ra, %call36(addlocalhom_r)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	.p2align	4, , 16
.LBB49_34:                              #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_36
# %bb.35:                               #   in Loop: Header=BB49_34 Depth=2
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 18
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB49_34
.LBB49_36:                              #   in Loop: Header=BB49_3 Depth=1
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 21
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_38
# %bb.37:                               #   in Loop: Header=BB49_3 Depth=1
	move	$fp, $s6
	b	.LBB49_39
.LBB49_38:                              #   in Loop: Header=BB49_3 Depth=1
	ld.w	$a0, $fp, 0
	addi.w	$s7, $s7, 1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	fstx.d	$fs1, $a1, $a0
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 104
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 23
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fs0
	move	$fp, $s6
	beqz	$a0, .LBB49_40
.LBB49_39:                              #   in Loop: Header=BB49_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_3
.LBB49_40:                              # %._crit_edge
	move	$a0, $s7
	fld.d	$fs1, $sp, 360                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 368                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end49:
	.size	ReadBlastm7, .Lfunc_end49-ReadBlastm7
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function addlocalhom_r
.LCPI50_0:
	.dword	0x4017333333333333              # double 5.7999999999999998
.LCPI50_1:
	.dword	0x4082c00000000000              # double 600
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5
	.type	addlocalhom_r,@function
addlocalhom_r:                          # @addlocalhom_r
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	move	$s3, $a3
	move	$s5, $a2
	move	$s1, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %pc_hi20(.L.str.104)
	addi.d	$a1, $a1, %pc_lo12(.L.str.104)
	pcalau12i	$a2, %pc_hi20(ReadBlastm7.qal)
	addi.d	$s4, $a2, %pc_lo12(ReadBlastm7.qal)
	pcalau12i	$a2, %pc_hi20(ReadBlastm7.tal)
	addi.d	$s2, $a2, %pc_lo12(ReadBlastm7.tal)
	move	$a2, $s4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB50_5
# %bb.1:                                # %.preheader
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB50_4
# %bb.2:                                # %.lr.ph.preheader
	addi.d	$a1, $s3, 1
	.p2align	4, , 16
.LBB50_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 8
	addi.w	$a1, $a1, -1
	bltu	$a0, $a1, .LBB50_3
.LBB50_4:                               # %._crit_edge
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, 0
	move	$s3, $a0
	st.d	$a0, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	move	$a0, $a2
	move	$a2, $zero
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$fp, $s3
.LBB50_5:
	ld.bu	$a0, $s4, 0
	bnez	$a0, .LBB50_7
# %bb.6:
	movgr2fr.d	$fs0, $zero
	move	$s0, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	move	$s4, $zero
	move	$s6, $zero
	move	$s3, $zero
	fmov.d	$fs1, $fs0
	move	$a1, $fp
	b	.LBB50_24
.LBB50_7:                               # %.lr.ph25.preheader
	movgr2fr.d	$fs2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$s3, $a0, %pc_lo12(.L.str.106)
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	move	$s8, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	fmov.d	$fs0, $fs2
	fmov.d	$fs1, $fs2
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	b	.LBB50_10
	.p2align	4, , 16
.LBB50_8:                               # %.thread4
                                        #   in Loop: Header=BB50_10 Depth=1
	ext.w.b	$a1, $a1
	sltui	$a2, $s8, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a2
	maskeqz	$a4, $s1, $a2
	or	$a3, $a4, $a3
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	masknez	$a3, $s6, $a2
	move	$s0, $s5
	maskeqz	$a2, $s5, $a2
	or	$s6, $a2, $a3
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	ldx.w	$a1, $a2, $a1
	ori	$a3, $zero, 104
	mul.d	$a1, $a1, $a3
	pcalau12i	$a3, %got_pc_hi20(n_dis)
	ld.d	$a3, $a3, %got_pc_lo12(n_dis)
	ext.w.b	$a4, $a0
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a1, $a3, $a1
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fadd.d	$fs1, $fs1, $fa0
	ori	$a1, $zero, 1
	ori	$s8, $zero, 1
.LBB50_9:                               #   in Loop: Header=BB50_10 Depth=1
	ld.bu	$a2, $s4, 1
	addi.d	$s4, $s4, 1
	add.w	$s1, $s1, $a1
	addi.d	$s2, $s2, 1
	addi.d	$a0, $a0, -45
	sltu	$a0, $zero, $a0
	add.w	$s5, $s0, $a0
	sub.d	$s0, $zero, $s6
	beqz	$a2, .LBB50_21
.LBB50_10:                              # %.lr.ph25
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s7, 0
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.b	$a2, $s4, 0
	ld.b	$a3, $s2, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s4, 0
	ori	$a0, $zero, 1
	bne	$s8, $a0, .LBB50_15
# %bb.11:                               #   in Loop: Header=BB50_10 Depth=1
	ori	$a0, $zero, 45
	beq	$a1, $a0, .LBB50_13
# %bb.12:                               #   in Loop: Header=BB50_10 Depth=1
	ld.bu	$a0, $s2, 0
	ori	$a2, $zero, 45
	bne	$a0, $a2, .LBB50_8
.LBB50_13:                              #   in Loop: Header=BB50_10 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blez	$a0, .LBB50_19
# %bb.14:                               #   in Loop: Header=BB50_10 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	st.d	$zero, $a0, 8
	move	$a1, $a0
	b	.LBB50_20
	.p2align	4, , 16
.LBB50_15:                              #   in Loop: Header=BB50_10 Depth=1
	ld.bu	$a0, $s2, 0
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB50_17
# %bb.16:                               #   in Loop: Header=BB50_10 Depth=1
	move	$a1, $zero
	move	$s8, $zero
	move	$s0, $s5
	b	.LBB50_9
	.p2align	4, , 16
.LBB50_17:                              #   in Loop: Header=BB50_10 Depth=1
	ori	$a2, $zero, 45
	bne	$a0, $a2, .LBB50_8
# %bb.18:                               #   in Loop: Header=BB50_10 Depth=1
	move	$s8, $zero
	ori	$a1, $zero, 1
	ori	$a0, $zero, 45
	move	$s0, $s5
	b	.LBB50_9
.LBB50_19:                              #   in Loop: Header=BB50_10 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
.LBB50_20:                              #   in Loop: Header=BB50_10 Depth=1
	addi.w	$s8, $s1, -1
	move	$a2, $s5
	addi.w	$s5, $s5, -1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	st.w	$s3, $a1, 24
	st.w	$s6, $a1, 32
	st.w	$s8, $a1, 28
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.w	$s5, $a1, 36
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s7, 0
	fadd.d	$fs0, $fs1, $fs0
	add.d	$a1, $a2, $s0
	move	$s0, $a2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a1, $a2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	movfr2gr.d	$a2, $fs1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s4, 0
	ld.bu	$a0, $s2, 0
	move	$s8, $zero
	addi.d	$a1, $a1, -45
	sltu	$a1, $zero, $a1
	fmov.d	$fs1, $fs2
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	b	.LBB50_9
.LBB50_21:                              # %._crit_edge26
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blez	$a0, .LBB50_23
# %bb.22:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	st.d	$zero, $a0, 8
	move	$a1, $a0
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	b	.LBB50_24
.LBB50_23:
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
.LBB50_24:                              # %._crit_edge26.thread
	addi.w	$s1, $s1, -1
	addi.w	$s2, $s5, -1
	st.w	$s3, $a1, 24
	ld.d	$a0, $s7, 0
	st.w	$s6, $a1, 32
	st.w	$s1, $a1, 28
	st.w	$s2, $a1, 36
	movfr2gr.d	$a2, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a1, $a1, %pc_lo12(.L.str.111)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %pc_hi20(.L.str.109)
	addi.d	$a1, $a1, %pc_lo12(.L.str.109)
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a1, $a1, %pc_lo12(.L.str.110)
	move	$a2, $s6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB50_27
# %bb.25:                               # %.lr.ph40
	add.d	$a0, $s5, $s0
	pcalau12i	$a1, %pc_hi20(.LCPI50_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI50_0)
	pcalau12i	$a1, %pc_hi20(.LCPI50_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI50_1)
	add.w	$a0, $a0, $s4
	fadd.d	$fa2, $fs1, $fs0
	fmul.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	.p2align	4, , 16
.LBB50_26:                              # =>This Inner Loop Header: Depth=1
	st.w	$a0, $fp, 48
	fst.d	$fa0, $fp, 40
	ld.d	$fp, $fp, 8
	bnez	$fp, .LBB50_26
.LBB50_27:                              # %._crit_edge41
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end50:
	.size	addlocalhom_r, .Lfunc_end50-addlocalhom_r
                                        # -- End function
	.text
	.globl	ReadFasta34noalign              # -- Begin function ReadFasta34noalign
	.p2align	5
	.type	ReadFasta34noalign,@function
ReadFasta34noalign:                     # @ReadFasta34noalign
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB51_3
# %bb.1:
	move	$s4, $zero
.LBB51_2:                               # %._crit_edge
	move	$a0, $s4
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB51_3:                               # %.lr.ph
	addi.d	$s1, $sp, 52
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(ReadFasta34noalign.junban)
	addi.d	$s5, $a0, %pc_lo12(ReadFasta34noalign.junban)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$s3, $a0, %pc_lo12(.L.str.46)
	move	$s4, $zero
	b	.LBB51_5
	.p2align	4, , 16
.LBB51_4:                               #   in Loop: Header=BB51_5 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB51_2
.LBB51_5:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB51_4
# %bb.6:                                #   in Loop: Header=BB51_5 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	slli.d	$s6, $s4, 2
	stx.w	$a0, $s5, $s6
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 41
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $sp, 36
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 36
	ldx.w	$a1, $s5, $s6
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	slli.d	$a0, $a1, 3
	fstx.d	$fa0, $fp, $a0
	addi.w	$s4, $s4, 1
	b	.LBB51_4
.Lfunc_end51:
	.size	ReadFasta34noalign, .Lfunc_end51-ReadFasta34noalign
                                        # -- End function
	.globl	ReadFasta34m10_nuc              # -- Begin function ReadFasta34m10_nuc
	.p2align	5
	.type	ReadFasta34m10_nuc,@function
ReadFasta34m10_nuc:                     # @ReadFasta34m10_nuc
# %bb.0:
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	move	$s7, $a4
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$s2, $sp, 100
	pcalau12i	$a0, %pc_hi20(ReadFasta34m10_nuc.junban)
	addi.d	$s8, $a0, %pc_lo12(ReadFasta34m10_nuc.junban)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s3, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$s4, $a0, %pc_lo12(.L.str.46)
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$s5, $a0, %pc_lo12(.L.str.47)
	move	$fp, $zero
.LBB52_1:                               # %.outer121.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_2 Depth 2
	alsl.d	$s6, $fp, $s8, 2
	.p2align	4, , 16
.LBB52_2:                               #   Parent Loop BB52_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_7
# %bb.3:                                #   in Loop: Header=BB52_2 Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 12
	move	$a0, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_5
# %bb.4:                                #   in Loop: Header=BB52_2 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s6, 0
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 114
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_2
	b	.LBB52_6
.LBB52_5:                               #   in Loop: Header=BB52_2 Depth=2
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 14
	move	$a0, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_2
	b	.LBB52_7
	.p2align	4, , 16
.LBB52_6:                               #   in Loop: Header=BB52_1 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 93
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $sp, 84
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 72
	move	$a1, $s4
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	ld.w	$a1, $s6, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	slli.d	$a0, $a1, 3
	fstx.d	$fa0, $s1, $a0
	addi.d	$fp, $fp, 1
	b	.LBB52_1
.LBB52_7:                               # %.loopexit122
	beqz	$fp, .LBB52_57
# %bb.8:                                # %.preheader
	addi.d	$s2, $sp, 92
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$s3, $a0, %pc_lo12(.L.str.47)
	pcalau12i	$a0, %pc_hi20(ReadFasta34m10_nuc.qal)
	addi.d	$s4, $a0, %pc_lo12(ReadFasta34m10_nuc.qal)
	pcalau12i	$a0, %pc_hi20(ReadFasta34m10_nuc.tal)
	addi.d	$s6, $a0, %pc_lo12(ReadFasta34m10_nuc.tal)
	move	$fp, $zero
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB52_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_12 Depth 2
                                        #     Child Loop BB52_16 Depth 2
                                        #     Child Loop BB52_19 Depth 2
                                        #     Child Loop BB52_22 Depth 2
                                        #     Child Loop BB52_25 Depth 2
                                        #     Child Loop BB52_28 Depth 2
                                        #     Child Loop BB52_35 Depth 2
                                        #     Child Loop BB52_38 Depth 2
                                        #     Child Loop BB52_41 Depth 2
                                        #     Child Loop BB52_44 Depth 2
                                        #     Child Loop BB52_51 Depth 2
                                        #     Child Loop BB52_54 Depth 2
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_11
# %bb.10:                               #   in Loop: Header=BB52_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_9
	b	.LBB52_58
.LBB52_11:                              #   in Loop: Header=BB52_9 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 102
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$a1, $fp, $s8, 2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a1, $fp, 2
	stx.w	$a0, $s8, $a1
	.p2align	4, , 16
.LBB52_12:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_15
# %bb.13:                               #   in Loop: Header=BB52_12 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_15
# %bb.14:                               #   in Loop: Header=BB52_12 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_12
.LBB52_15:                              #   in Loop: Header=BB52_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 84
	.p2align	4, , 16
.LBB52_16:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_18
# %bb.17:                               #   in Loop: Header=BB52_16 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 9
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_16
.LBB52_18:                              #   in Loop: Header=BB52_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB52_19:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_21
# %bb.20:                               #   in Loop: Header=BB52_19 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 7
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_19
.LBB52_21:                              #   in Loop: Header=BB52_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB52_22:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_24
# %bb.23:                               #   in Loop: Header=BB52_22 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_22
.LBB52_24:                              #   in Loop: Header=BB52_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s1, $a0, -1
	.p2align	4, , 16
.LBB52_25:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_27
# %bb.26:                               #   in Loop: Header=BB52_25 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	ori	$a2, $zero, 15
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_25
.LBB52_27:                              #   in Loop: Header=BB52_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s7, $a0, -1
	move	$fp, $s4
	.p2align	4, , 16
.LBB52_28:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_34
# %bb.29:                               #   in Loop: Header=BB52_28 Depth=2
	move	$s5, $a0
	ori	$a0, $zero, 62
	beq	$s5, $a0, .LBB52_33
# %bb.30:                               #   in Loop: Header=BB52_28 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 45
	beq	$s5, $a1, .LBB52_32
# %bb.31:                               #   in Loop: Header=BB52_28 Depth=2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB52_28
.LBB52_32:                              #   in Loop: Header=BB52_28 Depth=2
	addi.d	$a0, $fp, 1
	st.b	$s5, $fp, 0
	move	$fp, $a0
	b	.LBB52_28
.LBB52_33:                              #   in Loop: Header=BB52_9 Depth=1
	ori	$a0, $zero, 62
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
.LBB52_34:                              # %.loopexit119
                                        #   in Loop: Header=BB52_9 Depth=1
	st.b	$zero, $fp, 0
	.p2align	4, , 16
.LBB52_35:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_37
# %bb.36:                               #   in Loop: Header=BB52_35 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 7
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_35
.LBB52_37:                              #   in Loop: Header=BB52_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s5, $a0, -1
	.p2align	4, , 16
.LBB52_38:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_40
# %bb.39:                               #   in Loop: Header=BB52_38 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_38
.LBB52_40:                              #   in Loop: Header=BB52_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s8, $a0, -1
	.p2align	4, , 16
.LBB52_41:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_43
# %bb.42:                               #   in Loop: Header=BB52_41 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	ori	$a2, $zero, 15
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_41
.LBB52_43:                              #   in Loop: Header=BB52_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$fp, $a0, -1
	move	$s4, $s6
	.p2align	4, , 16
.LBB52_44:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_50
# %bb.45:                               #   in Loop: Header=BB52_44 Depth=2
	move	$s6, $a0
	ori	$a0, $zero, 62
	beq	$s6, $a0, .LBB52_49
# %bb.46:                               #   in Loop: Header=BB52_44 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 45
	beq	$s6, $a1, .LBB52_48
# %bb.47:                               #   in Loop: Header=BB52_44 Depth=2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB52_44
.LBB52_48:                              #   in Loop: Header=BB52_44 Depth=2
	addi.d	$a0, $s4, 1
	st.b	$s6, $s4, 0
	move	$s4, $a0
	b	.LBB52_44
.LBB52_49:                              #   in Loop: Header=BB52_9 Depth=1
	ori	$a0, $zero, 62
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
.LBB52_50:                              # %.loopexit
                                        #   in Loop: Header=BB52_9 Depth=1
	move	$a0, $zero
	st.b	$zero, $s4, 0
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB52_51:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xor	$a1, $a5, $s7
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	beq	$s1, $s7, .LBB52_53
# %bb.52:                               #   in Loop: Header=BB52_51 Depth=2
	ld.bu	$a1, $a2, 0
	addi.d	$a3, $a1, -45
	sltu	$a3, $zero, $a3
	add.w	$s7, $s7, $a3
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB52_51
.LBB52_53:                              # %cutal.exit
                                        #   in Loop: Header=BB52_9 Depth=1
	move	$a1, $zero
	st.b	$zero, $a2, 1
	move	$a2, $s6
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB52_54:                              #   Parent Loop BB52_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xor	$a3, $s5, $fp
	sltui	$a3, $a3, 1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a2, $a3
	or	$a1, $a3, $a1
	beq	$s8, $fp, .LBB52_56
# %bb.55:                               #   in Loop: Header=BB52_54 Depth=2
	ld.bu	$a3, $a2, 0
	addi.d	$a4, $a3, -45
	sltu	$a4, $zero, $a4
	add.w	$fp, $fp, $a4
	addi.d	$a2, $a2, 1
	bnez	$a3, .LBB52_54
.LBB52_56:                              # %cutal.exit117
                                        #   in Loop: Header=BB52_9 Depth=1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	st.b	$zero, $a2, 1
	slli.d	$a2, $a3, 6
	alsl.d	$a2, $a3, $a2, 4
	add.d	$a2, $s7, $a2
	move	$a3, $a5
	move	$a4, $s5
	pcaddu18i	$ra, %call36(putlocalhom)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	b	.LBB52_9
.LBB52_57:
	addi.d	$fp, $zero, -1
.LBB52_58:                              # %.loopexit120
	addi.w	$a0, $fp, 0
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.Lfunc_end52:
	.size	ReadFasta34m10_nuc, .Lfunc_end52-ReadFasta34m10_nuc
                                        # -- End function
	.globl	ReadFasta34m10                  # -- Begin function ReadFasta34m10
	.p2align	5
	.type	ReadFasta34m10,@function
ReadFasta34m10:                         # @ReadFasta34m10
# %bb.0:
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	move	$s2, $a4
	move	$s1, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	addi.d	$fp, $zero, -1
	beqz	$a0, .LBB53_2
.LBB53_1:                               # %.loopexit119
	addi.w	$a0, $fp, 0
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.LBB53_2:                               # %.lr.ph
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s2, $sp, 100
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s3, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(ReadFasta34m10.junban)
	addi.d	$a0, $a0, %pc_lo12(ReadFasta34m10.junban)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$s4, $a0, %pc_lo12(.L.str.46)
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$s5, $a0, %pc_lo12(.L.str.47)
	move	$s6, $zero
	b	.LBB53_5
	.p2align	4, , 16
.LBB53_3:                               #   in Loop: Header=BB53_5 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	slli.d	$s7, $s6, 2
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	stx.w	$a0, $s8, $s7
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 41
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $sp, 84
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 72
	move	$a1, $s4
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	ldx.w	$a1, $s8, $s7
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	slli.d	$a0, $a1, 3
	fstx.d	$fa0, $s1, $a0
	addi.w	$s6, $s6, 1
.LBB53_4:                               #   in Loop: Header=BB53_5 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_7
.LBB53_5:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 12
	move	$a0, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_3
# %bb.6:                                #   in Loop: Header=BB53_5 Depth=1
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 14
	move	$a0, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_4
.LBB53_7:                               # %._crit_edge
	beqz	$s6, .LBB53_1
# %bb.8:                                # %.preheader
	addi.d	$s2, $sp, 92
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$s3, $a0, %pc_lo12(.L.str.47)
	pcalau12i	$a0, %pc_hi20(ReadFasta34m10.qal)
	addi.d	$s4, $a0, %pc_lo12(ReadFasta34m10.qal)
	pcalau12i	$a0, %pc_hi20(ReadFasta34m10.tal)
	addi.d	$s6, $a0, %pc_lo12(ReadFasta34m10.tal)
	move	$fp, $zero
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB53_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB53_12 Depth 2
                                        #     Child Loop BB53_16 Depth 2
                                        #     Child Loop BB53_19 Depth 2
                                        #     Child Loop BB53_22 Depth 2
                                        #     Child Loop BB53_25 Depth 2
                                        #     Child Loop BB53_28 Depth 2
                                        #     Child Loop BB53_35 Depth 2
                                        #     Child Loop BB53_38 Depth 2
                                        #     Child Loop BB53_41 Depth 2
                                        #     Child Loop BB53_44 Depth 2
                                        #     Child Loop BB53_51 Depth 2
                                        #     Child Loop BB53_54 Depth 2
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_11
# %bb.10:                               #   in Loop: Header=BB53_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_9
	b	.LBB53_1
.LBB53_11:                              #   in Loop: Header=BB53_9 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 102
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $fp, $a2, 2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a1, $fp, 2
	stx.w	$a0, $a2, $a1
	.p2align	4, , 16
.LBB53_12:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_15
# %bb.13:                               #   in Loop: Header=BB53_12 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_15
# %bb.14:                               #   in Loop: Header=BB53_12 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_12
.LBB53_15:                              #   in Loop: Header=BB53_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 84
	.p2align	4, , 16
.LBB53_16:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_18
# %bb.17:                               #   in Loop: Header=BB53_16 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 9
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_16
.LBB53_18:                              #   in Loop: Header=BB53_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB53_19:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_21
# %bb.20:                               #   in Loop: Header=BB53_19 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 7
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_19
.LBB53_21:                              #   in Loop: Header=BB53_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB53_22:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_24
# %bb.23:                               #   in Loop: Header=BB53_22 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_22
.LBB53_24:                              #   in Loop: Header=BB53_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$fp, $a0, -1
	.p2align	4, , 16
.LBB53_25:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_27
# %bb.26:                               #   in Loop: Header=BB53_25 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	ori	$a2, $zero, 15
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_25
.LBB53_27:                              #   in Loop: Header=BB53_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s1, $a0, -1
	.p2align	4, , 16
.LBB53_28:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_34
# %bb.29:                               #   in Loop: Header=BB53_28 Depth=2
	move	$s5, $a0
	ori	$a0, $zero, 62
	beq	$s5, $a0, .LBB53_33
# %bb.30:                               #   in Loop: Header=BB53_28 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 45
	beq	$s5, $a1, .LBB53_32
# %bb.31:                               #   in Loop: Header=BB53_28 Depth=2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB53_28
.LBB53_32:                              #   in Loop: Header=BB53_28 Depth=2
	addi.d	$a0, $s4, 1
	st.b	$s5, $s4, 0
	move	$s4, $a0
	b	.LBB53_28
.LBB53_33:                              #   in Loop: Header=BB53_9 Depth=1
	ori	$a0, $zero, 62
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
.LBB53_34:                              # %.loopexit118
                                        #   in Loop: Header=BB53_9 Depth=1
	st.b	$zero, $s4, 0
	.p2align	4, , 16
.LBB53_35:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_37
# %bb.36:                               #   in Loop: Header=BB53_35 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 7
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_35
.LBB53_37:                              #   in Loop: Header=BB53_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s5, $a0, -1
	.p2align	4, , 16
.LBB53_38:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_40
# %bb.39:                               #   in Loop: Header=BB53_38 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_38
.LBB53_40:                              #   in Loop: Header=BB53_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s8, $a0, -1
	.p2align	4, , 16
.LBB53_41:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_43
# %bb.42:                               #   in Loop: Header=BB53_41 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	ori	$a2, $zero, 15
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB53_41
.LBB53_43:                              #   in Loop: Header=BB53_9 Depth=1
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s7, $a0, -1
	move	$s4, $s6
	.p2align	4, , 16
.LBB53_44:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_50
# %bb.45:                               #   in Loop: Header=BB53_44 Depth=2
	move	$s6, $a0
	ori	$a0, $zero, 62
	beq	$s6, $a0, .LBB53_49
# %bb.46:                               #   in Loop: Header=BB53_44 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 45
	beq	$s6, $a1, .LBB53_48
# %bb.47:                               #   in Loop: Header=BB53_44 Depth=2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB53_44
.LBB53_48:                              #   in Loop: Header=BB53_44 Depth=2
	addi.d	$a0, $s4, 1
	st.b	$s6, $s4, 0
	move	$s4, $a0
	b	.LBB53_44
.LBB53_49:                              #   in Loop: Header=BB53_9 Depth=1
	ori	$a0, $zero, 62
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
.LBB53_50:                              # %.loopexit
                                        #   in Loop: Header=BB53_9 Depth=1
	move	$a0, $zero
	st.b	$zero, $s4, 0
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB53_51:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xor	$a1, $a5, $s1
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	beq	$fp, $s1, .LBB53_53
# %bb.52:                               #   in Loop: Header=BB53_51 Depth=2
	ld.bu	$a1, $a2, 0
	addi.d	$a3, $a1, -45
	sltu	$a3, $zero, $a3
	add.w	$s1, $s1, $a3
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB53_51
.LBB53_53:                              # %cutal.exit
                                        #   in Loop: Header=BB53_9 Depth=1
	move	$a1, $zero
	st.b	$zero, $a2, 1
	move	$a2, $s6
	.p2align	4, , 16
.LBB53_54:                              #   Parent Loop BB53_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xor	$a3, $s5, $s7
	sltui	$a3, $a3, 1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a2, $a3
	or	$a1, $a3, $a1
	beq	$s8, $s7, .LBB53_56
# %bb.55:                               #   in Loop: Header=BB53_54 Depth=2
	ld.bu	$a3, $a2, 0
	addi.d	$a4, $a3, -45
	sltu	$a4, $zero, $a4
	add.w	$s7, $s7, $a4
	addi.d	$a2, $a2, 1
	bnez	$a3, .LBB53_54
.LBB53_56:                              # %cutal.exit116
                                        #   in Loop: Header=BB53_9 Depth=1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	st.b	$zero, $a2, 1
	slli.d	$a2, $a3, 6
	alsl.d	$a2, $a3, $a2, 4
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	move	$a3, $a5
	move	$a4, $s5
	pcaddu18i	$ra, %call36(putlocalhom)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	b	.LBB53_9
.Lfunc_end53:
	.size	ReadFasta34m10, .Lfunc_end53-ReadFasta34m10
                                        # -- End function
	.globl	ReadFasta34m10_scoreonly_nucbk  # -- Begin function ReadFasta34m10_scoreonly_nucbk
	.p2align	5
	.type	ReadFasta34m10_scoreonly_nucbk,@function
ReadFasta34m10_scoreonly_nucbk:         # @ReadFasta34m10_scoreonly_nucbk
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$s1, $sp, 53
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$s2, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$s3, $a0, %pc_lo12(.L.str.46)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$s4, $a0, %pc_lo12(.L.str.56)
	move	$s6, $zero
	.p2align	4, , 16
.LBB54_1:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB54_6
# %bb.2:                                #   in Loop: Header=BB54_1 Depth=1
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 13
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB54_5
# %bb.3:                                #   in Loop: Header=BB54_1 Depth=1
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 114
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB54_1
# %bb.4:                                #   in Loop: Header=BB54_1 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 93
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $sp, 36
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 36
	slli.d	$a1, $s5, 32
	srai.d	$a1, $a1, 29
	fldx.d	$fa0, $fp, $a1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $fp, $a1
	addi.w	$s6, $s6, 1
	b	.LBB54_1
.LBB54_5:                               #   in Loop: Header=BB54_1 Depth=1
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 6
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB54_1
.LBB54_6:                               # %.loopexit
	sltui	$a0, $s6, 1
	masknez	$a1, $s6, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end54:
	.size	ReadFasta34m10_scoreonly_nucbk, .Lfunc_end54-ReadFasta34m10_scoreonly_nucbk
                                        # -- End function
	.globl	ReadFasta34m10_scoreonly_nuc    # -- Begin function ReadFasta34m10_scoreonly_nuc
	.p2align	5
	.type	ReadFasta34m10_scoreonly_nuc,@function
ReadFasta34m10_scoreonly_nuc:           # @ReadFasta34m10_scoreonly_nuc
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bstrpick.d	$a0, $fp, 31, 0
	blez	$fp, .LBB55_2
# %bb.1:                                # %.lr.ph47.preheader
	slli.d	$a2, $a0, 2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a2, $fp, 3
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB55_2:                               # %.preheader39
	addi.d	$s3, $sp, 69
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$s5, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$s6, $a0, %pc_lo12(.L.str.46)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s7, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s4, $zero
	.p2align	4, , 16
.LBB55_3:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB55_13
# %bb.4:                                #   in Loop: Header=BB55_3 Depth=1
	addi.d	$a0, $sp, 56
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 13
	move	$a0, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB55_9
# %bb.5:                                #   in Loop: Header=BB55_3 Depth=1
	addi.d	$a0, $sp, 56
	ori	$a1, $zero, 114
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB55_3
# %bb.6:                                #   in Loop: Header=BB55_3 Depth=1
	ori	$a2, $zero, 10
	move	$s8, $s3
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$a0, $sp, 56
	ori	$a1, $zero, 93
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $sp, 52
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 40
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s3, 0
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s2, $a1
	bnez	$a1, .LBB55_8
# %bb.7:                                #   in Loop: Header=BB55_3 Depth=1
	ld.w	$a1, $sp, 52
	slli.d	$a2, $a0, 3
	fldx.d	$fa0, $s0, $a2
	alsl.d	$a0, $a0, $s2, 2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s0, $a2
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB55_8:                               #   in Loop: Header=BB55_3 Depth=1
	addi.w	$s4, $s4, 1
	move	$s3, $s8
	b	.LBB55_3
.LBB55_9:                               #   in Loop: Header=BB55_3 Depth=1
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 3
	move	$a0, $s7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB55_11
# %bb.10:                               #   in Loop: Header=BB55_3 Depth=1
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 6
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB55_3
	b	.LBB55_13
.LBB55_11:                              # %.preheader
                                        #   in Loop: Header=BB55_3 Depth=1
	blez	$fp, .LBB55_3
# %bb.12:                               # %.lr.ph49.preheader
                                        #   in Loop: Header=BB55_3 Depth=1
	move	$a0, $s2
	move	$a1, $zero
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB55_3
.LBB55_13:                              # %.loopexit40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	sltui	$a0, $s4, 1
	masknez	$a1, $s4, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end55:
	.size	ReadFasta34m10_scoreonly_nuc, .Lfunc_end55-ReadFasta34m10_scoreonly_nuc
                                        # -- End function
	.globl	ReadFasta34m10_scoreonly        # -- Begin function ReadFasta34m10_scoreonly
	.p2align	5
	.type	ReadFasta34m10_scoreonly,@function
ReadFasta34m10_scoreonly:               # @ReadFasta34m10_scoreonly
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
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$fp, .LBB56_2
# %bb.1:                                # %.lr.ph42.preheader
	slli.d	$a2, $fp, 2
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a2, $fp, 3
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB56_2:                               # %.preheader38
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB56_5
# %bb.3:                                # %._crit_edge.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB56_4:
	addi.w	$s6, $zero, -1
	b	.LBB56_16
.LBB56_5:                               # %.lr.ph47
	bstrpick.d	$a0, $fp, 31, 0
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$s5, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$s7, $a0, %pc_lo12(.L.str.46)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s8, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$s4, $a0, %pc_lo12(.L.str.56)
	move	$s6, $zero
	b	.LBB56_9
	.p2align	4, , 16
.LBB56_6:                               #   in Loop: Header=BB56_9 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 53
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 41
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $sp, 36
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 24
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s3, 0
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s0, $a1
	beqz	$a1, .LBB56_14
.LBB56_7:                               #   in Loop: Header=BB56_9 Depth=1
	addi.w	$s6, $s6, 1
.LBB56_8:                               # %.loopexit
                                        #   in Loop: Header=BB56_9 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB56_15
.LBB56_9:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 255
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 13
	move	$a0, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB56_6
# %bb.10:                               #   in Loop: Header=BB56_9 Depth=1
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	move	$a0, $s8
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB56_12
# %bb.11:                               #   in Loop: Header=BB56_9 Depth=1
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 6
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB56_8
	b	.LBB56_15
	.p2align	4, , 16
.LBB56_12:                              # %.preheader
                                        #   in Loop: Header=BB56_9 Depth=1
	blez	$fp, .LBB56_8
# %bb.13:                               # %.lr.ph44.preheader
                                        #   in Loop: Header=BB56_9 Depth=1
	move	$a0, $s0
	move	$a1, $zero
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB56_8
.LBB56_14:                              #   in Loop: Header=BB56_9 Depth=1
	ld.w	$a1, $sp, 36
	slli.d	$a2, $a0, 3
	fldx.d	$fa0, $s1, $a2
	alsl.d	$a0, $a0, $s0, 2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s1, $a2
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	b	.LBB56_7
.LBB56_15:                              # %._crit_edge
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB56_4
.LBB56_16:
	move	$a0, $s6
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
	ret
.Lfunc_end56:
	.size	ReadFasta34m10_scoreonly, .Lfunc_end56-ReadFasta34m10_scoreonly
                                        # -- End function
	.globl	ReadFasta34                     # -- Begin function ReadFasta34
	.p2align	5
	.type	ReadFasta34,@function
ReadFasta34:                            # @ReadFasta34
# %bb.0:
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	move	$fp, $a4
	move	$s2, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -1
	bnez	$a0, .LBB57_7
# %bb.1:                                # %.lr.ph
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s3, $sp, 132
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s4, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(ReadFasta34.junban)
	addi.d	$s7, $a0, %pc_lo12(ReadFasta34.junban)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$s5, $a0, %pc_lo12(.L.str.46)
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$s6, $a0, %pc_lo12(.L.str.47)
	move	$s8, $zero
	b	.LBB57_4
	.p2align	4, , 16
.LBB57_2:                               #   in Loop: Header=BB57_4 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	slli.d	$fp, $s8, 2
	stx.w	$a0, $s7, $fp
	addi.d	$a0, $sp, 120
	ori	$a1, $zero, 41
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 80
	addi.d	$a4, $sp, 88
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 112
	ldx.w	$a1, $s7, $fp
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	slli.d	$a0, $a1, 3
	fstx.d	$fa0, $s2, $a0
	addi.w	$s8, $s8, 1
.LBB57_3:                               #   in Loop: Header=BB57_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB57_6
.LBB57_4:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 120
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 12
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB57_2
# %bb.5:                                #   in Loop: Header=BB57_4 Depth=1
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 14
	move	$a0, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB57_3
.LBB57_6:                               # %._crit_edge
	bnez	$s8, .LBB57_8
.LBB57_7:                               # %._crit_edge.thread
	move	$a0, $s1
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.LBB57_8:                               # %.preheader
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB57_13
# %bb.9:                                # %.lr.ph45
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$s3, $a0, %pc_lo12(.L.str.47)
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$s8, $a0, %pc_lo12(.L.str.61)
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$s2, $a0, %pc_lo12(.L.str.62)
	move	$s1, $zero
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ori	$s5, $zero, 80
	b	.LBB57_11
	.p2align	4, , 16
.LBB57_10:                              #   in Loop: Header=BB57_11 Depth=1
	addi.d	$a0, $sp, 120
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB57_14
.LBB57_11:                              # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB57_10
# %bb.12:                               #   in Loop: Header=BB57_11 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 134
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	slli.d	$s6, $s1, 2
	stx.w	$a0, $s7, $s6
	addi.w	$s1, $s1, 1
	addi.d	$a0, $sp, 120
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s7, $s6
	mul.d	$a0, $a0, $s5
	add.d	$a0, $fp, $a0
	fst.d	$fa0, $a0, 40
	addi.d	$a0, $sp, 120
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	addi.d	$s4, $a0, 13
	addi.d	$a2, $sp, 116
	move	$a0, $s4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a3, $sp, 116
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $sp, 108
	addi.d	$a3, $sp, 104
	addi.d	$a4, $sp, 100
	addi.d	$a5, $sp, 96
	move	$a1, $s2
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s7, $s6
	ld.w	$a1, $sp, 116
	mul.d	$a0, $a0, $s5
	add.d	$a0, $fp, $a0
	st.w	$a1, $a0, 48
	ld.w	$a1, $sp, 108
	ld.w	$a2, $sp, 104
	ld.w	$a3, $sp, 100
	ld.w	$a4, $sp, 96
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a2, 1
	vinsgr2vr.w	$vr0, $a3, 2
	vinsgr2vr.w	$vr0, $a4, 3
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 24
	b	.LBB57_10
.LBB57_13:
	move	$s1, $zero
.LBB57_14:                              # %._crit_edge46
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB57_7
.Lfunc_end57:
	.size	ReadFasta34, .Lfunc_end57-ReadFasta34
                                        # -- End function
	.globl	ReadFasta3                      # -- Begin function ReadFasta3
	.p2align	5
	.type	ReadFasta3,@function
ReadFasta3:                             # @ReadFasta3
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB58_2
.LBB58_1:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB58_2:                               # %.lr.ph
	addi.d	$s1, $sp, 52
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$s3, $a0, %pc_lo12(.L.str.64)
	b	.LBB58_4
	.p2align	4, , 16
.LBB58_3:                               #   in Loop: Header=BB58_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB58_1
.LBB58_4:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB58_3
# %bb.5:                                #   in Loop: Header=BB58_4 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 41
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $sp, 36
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 28
	addi.d	$a5, $sp, 16
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	slli.d	$a0, $s4, 32
	srai.d	$a0, $a0, 29
	fstx.d	$fa0, $fp, $a0
	b	.LBB58_3
.Lfunc_end58:
	.size	ReadFasta3, .Lfunc_end58-ReadFasta3
                                        # -- End function
	.globl	ReadFasta                       # -- Begin function ReadFasta
	.p2align	5
	.type	ReadFasta,@function
ReadFasta:                              # @ReadFasta
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	move	$fp, $a0
	blez	$a2, .LBB59_7
# %bb.1:                                # %.preheader
	move	$s0, $a2
	move	$s1, $a1
	slli.d	$a2, $a2, 3
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB59_8
# %bb.2:                                # %.lr.ph20
	addi.d	$s2, $sp, 44
	addi.d	$s3, $sp, 82
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s4, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$s5, $a0, %pc_lo12(.L.str.65)
	move	$s7, $zero
	.p2align	4, , 16
.LBB59_3:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 255
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 12
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB59_5
# %bb.4:                                #   in Loop: Header=BB59_3 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 20
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	slli.d	$a0, $s6, 32
	srai.d	$a0, $a0, 29
	fstx.d	$fa0, $s1, $a0
	addi.w	$s7, $s7, 1
.LBB59_5:                               #   in Loop: Header=BB59_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB59_8
# %bb.6:                                #   in Loop: Header=BB59_3 Depth=1
	blt	$s7, $s0, .LBB59_3
	b	.LBB59_8
.LBB59_7:                               # %.preheader.thread
	move	$a0, $fp
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
.LBB59_8:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end59:
	.size	ReadFasta, .Lfunc_end59-ReadFasta
                                        # -- End function
	.globl	ReadOpt                         # -- Begin function ReadOpt
	.p2align	5
	.type	ReadOpt,@function
ReadOpt:                                # @ReadOpt
# %bb.0:
	blez	$a2, .LBB60_7
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$s3, $sp, 74
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s4, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$s5, $a0, %pc_lo12(.L.str.65)
	move	$s7, $zero
	move	$s8, $zero
	lu12i.w	$a0, 2441
	ori	$s2, $a0, 1662
	.p2align	4, , 16
.LBB60_2:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 24
	ori	$a2, $zero, 12
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB60_4
# %bb.3:                                #   in Loop: Header=BB60_2 Depth=1
	ori	$a2, $zero, 10
	addi.d	$a0, $sp, 36
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	addi.d	$a4, $sp, 20
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	slli.d	$a1, $s6, 32
	srai.d	$a1, $a1, 30
	stx.w	$a0, $s0, $a1
	addi.w	$s7, $s7, 1
.LBB60_4:                               #   in Loop: Header=BB60_2 Depth=1
	bltu	$s2, $s8, .LBB60_6
# %bb.5:                                #   in Loop: Header=BB60_2 Depth=1
	addi.w	$s8, $s8, 1
	blt	$s7, $fp, .LBB60_2
.LBB60_6:
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
.LBB60_7:                               # %._crit_edge
	move	$a0, $zero
	ret
.Lfunc_end60:
	.size	ReadOpt, .Lfunc_end60-ReadOpt
                                        # -- End function
	.globl	ReadOpt2                        # -- Begin function ReadOpt2
	.p2align	5
	.type	ReadOpt2,@function
ReadOpt2:                               # @ReadOpt2
# %bb.0:
	blez	$a2, .LBB61_7
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$s2, $sp, 20
	addi.d	$s3, $sp, 73
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s4, $a0, %pc_lo12(.L.str.30)
	move	$s6, $zero
	move	$s7, $zero
	lu12i.w	$a0, 2441
	ori	$s8, $a0, 1662
	.p2align	4, , 16
.LBB61_2:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 12
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB61_4
# %bb.3:                                #   in Loop: Header=BB61_2 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a2, $zero, 10
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s5, 32
	srai.d	$a1, $a1, 30
	stx.w	$a0, $s0, $a1
	addi.w	$s6, $s6, 1
.LBB61_4:                               #   in Loop: Header=BB61_2 Depth=1
	bltu	$s8, $s7, .LBB61_6
# %bb.5:                                #   in Loop: Header=BB61_2 Depth=1
	addi.w	$s7, $s7, 1
	blt	$s6, $fp, .LBB61_2
.LBB61_6:
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
.LBB61_7:                               # %._crit_edge
	move	$a0, $zero
	ret
.Lfunc_end61:
	.size	ReadOpt2, .Lfunc_end61-ReadOpt2
                                        # -- End function
	.globl	writePre                        # -- Begin function writePre
	.p2align	5
	.type	writePre,@function
writePre:                               # @writePre
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
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a4, .LBB62_7
# %bb.1:
	move	$fp, $a3
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(prep_g)
	ld.d	$s0, $a0, %got_pc_lo12(prep_g)
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB62_7
# %bb.2:                                # %.lr.ph18.preheader.i
	ld.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s3, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s4, $a0, %pc_lo12(.L.str.24)
	move	$s5, $zero
	b	.LBB62_4
	.p2align	4, , 16
.LBB62_3:                               # %._crit_edge.i
                                        #   in Loop: Header=BB62_4 Depth=1
	addi.d	$s5, $s5, 1
	beq	$s5, $s1, .LBB62_7
.LBB62_4:                               # %.lr.ph18.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_6 Depth 2
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s6, $a0, 0
	slli.d	$a0, $s5, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a2, $a0, 1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s6, .LBB62_3
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB62_4 Depth=1
	move	$s7, $zero
	move	$s8, $zero
	alsl.d	$s0, $s5, $fp, 3
	.p2align	4, , 16
.LBB62_6:                               # %.lr.ph.i
                                        #   Parent Loop BB62_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	add.d	$a3, $a0, $s8
	ori	$a2, $zero, 60
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, 60
	addi.d	$s8, $s8, 60
	blt	$s7, $s6, .LBB62_6
	b	.LBB62_3
.LBB62_7:                               # %writeData.exit
	move	$a0, $zero
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
.Lfunc_end62:
	.size	writePre, .Lfunc_end62-writePre
                                        # -- End function
	.globl	readOtherOptions                # -- Begin function readOtherOptions
	.p2align	5
	.type	readOtherOptions,@function
readOtherOptions:                       # @readOtherOptions
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(calledByXced)
	ld.d	$a0, $a0, %got_pc_lo12(calledByXced)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB63_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB63_7
# %bb.2:
	move	$s2, $a0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 255
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	addi.d	$a0, $sp, 8
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB63_6
.LBB63_3:
	st.w	$zero, $s1, 0
	ori	$a0, $zero, 80
	st.w	$a0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 100
	beq	$a1, $a0, .LBB63_5
# %bb.4:
	ori	$a0, $zero, 20
.LBB63_5:
	st.w	$a0, $fp, 0
.LBB63_6:
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB63_7:
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.Lfunc_end63:
	.size	readOtherOptions, .Lfunc_end63-readOtherOptions
                                        # -- End function
	.globl	initSignalSM                    # -- Begin function initSignalSM
	.p2align	5
	.type	initSignalSM,@function
initSignalSM:                           # @initSignalSM
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(ppid)
	ld.d	$a0, $a0, %got_pc_lo12(ppid)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB64_2
# %bb.1:
	ret
.LBB64_2:
	pcalau12i	$a0, %got_pc_hi20(signalSM)
	ld.d	$a0, $a0, %got_pc_lo12(signalSM)
	st.d	$zero, $a0, 0
	ret
.Lfunc_end64:
	.size	initSignalSM, .Lfunc_end64-initSignalSM
                                        # -- End function
	.globl	initFiles                       # -- Begin function initFiles
	.p2align	5
	.type	initFiles,@function
initFiles:                              # @initFiles
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ppid)
	ld.d	$a0, $a0, %got_pc_lo12(ppid)
	ld.w	$a2, $a0, 0
	beqz	$a2, .LBB65_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	addi.d	$a0, $sp, 20
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB65_3
.LBB65_2:
	lu12i.w	$a0, 1623
	ori	$a0, $a0, 624
	st.w	$a0, $sp, 20
.LBB65_3:
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	addi.d	$a0, $sp, 20
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(prep_g)
	ld.d	$a1, $a1, %got_pc_lo12(prep_g)
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB65_6
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(trap_g)
	ld.d	$s0, $a0, %got_pc_lo12(trap_g)
	st.d	$fp, $s0, 0
	beqz	$fp, .LBB65_7
# %bb.5:
	pcaddu18i	$ra, %call36(getpid)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.LBB65_6:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB65_7:
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.Lfunc_end65:
	.size	initFiles, .Lfunc_end65-initFiles
                                        # -- End function
	.globl	WriteForFasta                   # -- Begin function WriteForFasta
	.p2align	5
	.type	WriteForFasta,@function
WriteForFasta:                          # @WriteForFasta
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
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	blez	$a1, .LBB66_6
# %bb.1:                                # %.lr.ph19.preheader
	move	$fp, $a4
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s3, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(WriteForFasta.b)
	addi.d	$s4, $a0, %pc_lo12(WriteForFasta.b)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s5, $a0, %pc_lo12(.L.str.5)
	move	$s6, $zero
	b	.LBB66_3
	.p2align	4, , 16
.LBB66_2:                               # %._crit_edge
                                        #   in Loop: Header=BB66_3 Depth=1
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beq	$s6, $a0, .LBB66_6
.LBB66_3:                               # %.lr.ph19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_5 Depth 2
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s7, $a0, 0
	slli.d	$a0, $s6, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s7, .LBB66_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB66_3 Depth=1
	move	$s8, $zero
	move	$s0, $zero
	alsl.d	$s1, $s6, $fp, 3
	.p2align	4, , 16
.LBB66_5:                               # %.lr.ph
                                        #   Parent Loop BB66_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 0
	add.d	$a1, $a0, $s0
	ori	$a2, $zero, 60
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	st.b	$zero, $s4, 60
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, 60
	addi.d	$s0, $s0, 60
	blt	$s8, $s7, .LBB66_5
	b	.LBB66_2
.LBB66_6:                               # %._crit_edge20
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
.Lfunc_end66:
	.size	WriteForFasta, .Lfunc_end66-WriteForFasta
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function readlocalhomtable2
.LCPI67_0:
	.dword	0x4017333333333333              # double 5.7999999999999998
.LCPI67_1:
	.dword	0x4082c00000000000              # double 600
	.text
	.globl	readlocalhomtable2
	.p2align	5
	.type	readlocalhomtable2,@function
readlocalhomtable2:                     # @readlocalhomtable2
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(readlocalhomtable2.buff)
	addi.d	$a0, $a0, %pc_lo12(readlocalhomtable2.buff)
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB67_9
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(readlocalhomtable2.buff)
	addi.d	$s1, $a0, %pc_lo12(readlocalhomtable2.buff)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s2, $a0, %pc_lo12(.L.str.75)
	pcalau12i	$a0, %pc_hi20(.LCPI67_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI67_0)
	pcalau12i	$a0, %pc_hi20(.LCPI67_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI67_1)
	addi.w	$s6, $zero, -1
	lu32i.d	$s6, 0
	movgr2fr.d	$fs2, $zero
	b	.LBB67_4
	.p2align	4, , 16
.LBB67_2:                               #   in Loop: Header=BB67_4 Depth=1
	slli.d	$a0, $a3, 6
	alsl.d	$a0, $a3, $a0, 4
	add.d	$a0, $a2, $a0
.LBB67_3:                               #   in Loop: Header=BB67_4 Depth=1
	ld.w	$a1, $sp, 48
	ld.w	$a2, $sp, 40
	st.w	$a1, $a0, 32
	ld.w	$a1, $sp, 44
	ld.w	$a3, $sp, 36
	st.w	$a2, $a0, 24
	ld.w	$a2, $sp, 52
	st.w	$a1, $a0, 36
	st.w	$a3, $a0, 28
	fst.d	$fs3, $a0, 40
	st.w	$a2, $a0, 48
	ori	$a1, $zero, 255
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB67_9
.LBB67_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 36
	st.d	$a0, $sp, 8
	addi.d	$a2, $sp, 60
	addi.d	$a3, $sp, 56
	addi.d	$a4, $sp, 52
	addi.d	$a5, $sp, 64
	addi.d	$a6, $sp, 48
	addi.d	$a7, $sp, 44
	addi.d	$a0, $sp, 40
	st.d	$a0, $sp, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 60
	ld.w	$a1, $sp, 56
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	slli.d	$a2, $a1, 6
	alsl.d	$a1, $a1, $a2, 4
	ldx.w	$a2, $a0, $a1
	addi.d	$a3, $a2, 1
	stx.w	$a3, $a0, $a1
	ld.w	$s7, $sp, 60
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $fp, $a0
	ld.w	$s8, $sp, 56
	blez	$a2, .LBB67_6
# %bb.5:                                #   in Loop: Header=BB67_4 Depth=1
	ori	$a1, $zero, 80
	mul.d	$s3, $s8, $a1
	add.d	$a0, $a0, $s3
	ld.d	$s4, $a0, 16
	alsl.d	$s5, $s7, $fp, 3
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 8
	ld.d	$a1, $s5, 0
	st.w	$s6, $a0, 52
	st.d	$zero, $a0, 8
	add.d	$a1, $a1, $s3
	st.d	$a0, $a1, 16
	b	.LBB67_7
	.p2align	4, , 16
.LBB67_6:                               #   in Loop: Header=BB67_4 Depth=1
	slli.d	$a1, $s8, 6
	alsl.d	$a1, $s8, $a1, 4
	add.d	$a0, $a0, $a1
.LBB67_7:                               #   in Loop: Header=BB67_4 Depth=1
	ld.w	$a1, $sp, 48
	slli.d	$a2, $s8, 3
	ldx.d	$a2, $fp, $a2
	ld.w	$a3, $sp, 40
	slli.d	$a4, $s7, 6
	alsl.d	$a4, $s7, $a4, 4
	ldx.w	$a5, $a2, $a4
	ld.w	$a6, $sp, 44
	ld.w	$a7, $sp, 36
	ld.w	$t0, $sp, 52
	addi.d	$t1, $a5, 1
	stx.w	$t1, $a2, $a4
	st.w	$a1, $a0, 24
	st.w	$a3, $a0, 32
	fld.d	$fa0, $sp, 64
	st.w	$a6, $a0, 28
	ld.w	$a1, $sp, 56
	st.w	$a7, $a0, 36
	fadd.d	$fa0, $fa0, $fs2
	st.w	$t0, $a0, 48
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $fp, $a2
	ld.w	$a3, $sp, 60
	fdiv.d	$fa0, $fa0, $fs0
	fmul.d	$fs3, $fa0, $fs1
	fst.d	$fs3, $a0, 40
	blez	$a5, .LBB67_2
# %bb.8:                                #   in Loop: Header=BB67_4 Depth=1
	ori	$a0, $zero, 80
	mul.d	$s3, $a3, $a0
	add.d	$a0, $a2, $s3
	ld.d	$s4, $a0, 16
	alsl.d	$s5, $a1, $fp, 3
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 8
	ld.d	$a1, $s5, 0
	st.w	$s6, $a0, 52
	st.d	$zero, $a0, 8
	add.d	$a1, $a1, $s3
	st.d	$a0, $a1, 16
	b	.LBB67_3
.LBB67_9:                               # %._crit_edge
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end67:
	.size	readlocalhomtable2, .Lfunc_end67-readlocalhomtable2
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function readlocalhomtable
.LCPI68_0:
	.dword	0x4017333333333333              # double 5.7999999999999998
.LCPI68_1:
	.dword	0x4082c00000000000              # double 600
	.text
	.globl	readlocalhomtable
	.p2align	5
	.type	readlocalhomtable,@function
readlocalhomtable:                      # @readlocalhomtable
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 64                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s2, $a1
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$zero, $sp, 52
	blez	$s2, .LBB68_12
# %bb.1:                                # %.preheader33.us.preheader
	move	$a0, $zero
	addi.d	$a1, $s2, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	addi.d	$a2, $sp, 52
	bstrpick.d	$a3, $s2, 30, 3
	slli.w	$a3, $a3, 3
	sub.w	$a4, $zero, $a3
	ori	$a5, $zero, 8
	addi.d	$a6, $sp, 48
	vrepli.b	$vr0, 0
	b	.LBB68_3
	.p2align	4, , 16
.LBB68_2:                               # %._crit_edge.us
                                        #   in Loop: Header=BB68_3 Depth=1
	addi.d	$a0, $a0, 1
	addi.w	$a7, $a0, 0
	st.w	$a0, $sp, 52
	bge	$a7, $s2, .LBB68_12
.LBB68_3:                               # %.preheader33.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_10 Depth 2
                                        #     Child Loop BB68_8 Depth 2
	slli.d	$a7, $a0, 3
	ldx.d	$a7, $s1, $a7
	bltu	$s2, $a5, .LBB68_6
# %bb.4:                                # %vector.memcheck
                                        #   in Loop: Header=BB68_3 Depth=1
	bgeu	$a7, $a2, .LBB68_9
# %bb.5:                                # %vector.memcheck
                                        #   in Loop: Header=BB68_3 Depth=1
	add.d	$t0, $a7, $a1
	addi.d	$t0, $t0, 4
	sltu	$t0, $a6, $t0
	beqz	$t0, .LBB68_9
.LBB68_6:                               #   in Loop: Header=BB68_3 Depth=1
	move	$t0, $zero
.LBB68_7:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB68_3 Depth=1
	alsl.d	$a7, $t0, $a7, 2
	.p2align	4, , 16
.LBB68_8:                               # %scalar.ph
                                        #   Parent Loop BB68_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a7, 0
	addi.w	$t0, $t0, 1
	st.w	$t0, $sp, 48
	addi.d	$a7, $a7, 4
	blt	$t0, $s2, .LBB68_8
	b	.LBB68_2
	.p2align	4, , 16
.LBB68_9:                               # %vector.body.preheader
                                        #   in Loop: Header=BB68_3 Depth=1
	move	$t0, $zero
	addi.d	$t1, $a7, 16
	.p2align	4, , 16
.LBB68_10:                              # %vector.body
                                        #   Parent Loop BB68_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t1, -16
	vst	$vr0, $t1, 0
	addi.w	$t0, $t0, -8
	addi.d	$t1, $t1, 32
	bne	$a4, $t0, .LBB68_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB68_3 Depth=1
	sub.d	$t0, $zero, $t0
	st.w	$t0, $sp, 48
	move	$t0, $a3
	beq	$s2, $a3, .LBB68_2
	b	.LBB68_7
.LBB68_12:                              # %.preheader
	pcalau12i	$a0, %pc_hi20(readlocalhomtable.buff)
	addi.d	$a0, $a0, %pc_lo12(readlocalhomtable.buff)
	ori	$a1, $zero, 255
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB68_21
# %bb.13:                               # %.lr.ph.preheader
	addi.d	$s4, $sp, 28
	addi.d	$s5, $sp, 32
	pcalau12i	$a0, %pc_hi20(readlocalhomtable.buff)
	addi.d	$s2, $a0, %pc_lo12(readlocalhomtable.buff)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s3, $a0, %pc_lo12(.L.str.75)
	pcalau12i	$a0, %pc_hi20(.LCPI68_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI68_0)
	pcalau12i	$a0, %pc_hi20(.LCPI68_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI68_1)
	move	$s6, $zero
	move	$s7, $zero
	movgr2fr.d	$fs2, $zero
	b	.LBB68_16
	.p2align	4, , 16
.LBB68_14:                              #   in Loop: Header=BB68_16 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 8
	st.d	$zero, $a0, 8
	move	$s6, $a0
.LBB68_15:                              #   in Loop: Header=BB68_16 Depth=1
	ld.w	$a0, $sp, 40
	ld.w	$a1, $sp, 32
	st.w	$a0, $s6, 32
	ld.w	$a0, $sp, 36
	ld.w	$a2, $sp, 28
	st.w	$a1, $s6, 24
	ld.w	$a1, $sp, 44
	st.w	$a0, $s6, 36
	st.w	$a2, $s6, 28
	fst.d	$fs3, $s6, 40
	st.w	$a1, $s6, 48
	ori	$a1, $zero, 255
	move	$a0, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB68_21
.LBB68_16:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$s4, $sp, 8
	addi.d	$a2, $sp, 52
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 44
	addi.d	$a5, $sp, 56
	addi.d	$a6, $sp, 40
	addi.d	$a7, $sp, 36
	st.d	$s5, $sp, 0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 52
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 48
	ldx.d	$a0, $s1, $a0
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a0, $a1
	addi.d	$a3, $a2, 1
	stx.w	$a3, $a0, $a1
	blez	$a2, .LBB68_18
# %bb.17:                               #   in Loop: Header=BB68_16 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 48
	ld.w	$a1, $sp, 52
	st.d	$a0, $s7, 8
	st.d	$zero, $a0, 8
	move	$s7, $a0
	b	.LBB68_19
	.p2align	4, , 16
.LBB68_18:                              #   in Loop: Header=BB68_16 Depth=1
	ld.w	$a1, $sp, 52
	ld.w	$a2, $sp, 48
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $fp, $a0
	slli.d	$a3, $a2, 6
	alsl.d	$a3, $a2, $a3, 4
	add.d	$s7, $a0, $a3
.LBB68_19:                              #   in Loop: Header=BB68_16 Depth=1
	ld.w	$a0, $sp, 40
	ld.w	$a3, $sp, 32
	ld.w	$a4, $sp, 36
	ld.w	$a5, $sp, 28
	st.w	$a0, $s7, 24
	st.w	$a3, $s7, 32
	st.w	$a4, $s7, 28
	st.w	$a5, $s7, 36
	fld.d	$fa0, $sp, 56
	ld.w	$a0, $sp, 44
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s1, $a2
	fadd.d	$fa0, $fa0, $fs2
	st.w	$a0, $s7, 48
	slli.d	$a0, $a1, 2
	ldx.w	$a1, $a2, $a0
	fdiv.d	$fa0, $fa0, $fs0
	fmul.d	$fs3, $fa0, $fs1
	fst.d	$fs3, $s7, 40
	addi.d	$a3, $a1, 1
	stx.w	$a3, $a2, $a0
	bgtz	$a1, .LBB68_14
# %bb.20:                               #   in Loop: Header=BB68_16 Depth=1
	ld.w	$a0, $sp, 48
	ld.w	$a1, $sp, 52
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	slli.d	$a2, $a1, 6
	alsl.d	$a1, $a1, $a2, 4
	add.d	$s6, $a0, $a1
	b	.LBB68_15
.LBB68_21:                              # %._crit_edge
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	fld.d	$fs3, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end68:
	.size	readlocalhomtable, .Lfunc_end68-readlocalhomtable
                                        # -- End function
	.globl	outlocalhom                     # -- Begin function outlocalhom
	.p2align	5
	.type	outlocalhom,@function
outlocalhom:                            # @outlocalhom
# %bb.0:
	blez	$a1, .LBB69_8
# %bb.1:                                # %.preheader.us.preheader
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s5, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$s1, $a0, %pc_lo12(.L.str.76)
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$s2, $a0, %pc_lo12(.L.str.77)
	move	$s3, $zero
	.p2align	4, , 16
.LBB69_2:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_3 Depth 2
                                        #       Child Loop BB69_4 Depth 3
	move	$s4, $zero
	alsl.d	$s6, $s3, $s0, 3
.LBB69_3:                               #   Parent Loop BB69_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB69_4 Depth 3
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s5, 0
	slli.d	$a2, $s4, 6
	alsl.d	$a2, $s4, $a2, 4
	add.d	$s7, $a1, $a2
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB69_4:                               #   Parent Loop BB69_2 Depth=1
                                        #     Parent Loop BB69_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s5, 0
	ld.w	$a2, $s7, 24
	ld.w	$a3, $s7, 28
	ld.w	$a4, $s7, 32
	ld.w	$a5, $s7, 36
	ld.d	$a7, $s7, 40
	ld.d	$a6, $s7, 56
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 8
	bnez	$s7, .LBB69_4
# %bb.5:                                #   in Loop: Header=BB69_3 Depth=2
	addi.d	$s4, $s4, 1
	bne	$s4, $fp, .LBB69_3
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB69_2 Depth=1
	addi.d	$s3, $s3, 1
	bne	$s3, $fp, .LBB69_2
# %bb.7:
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
.LBB69_8:                               # %._crit_edge22
	ret
.Lfunc_end69:
	.size	outlocalhom, .Lfunc_end69-outlocalhom
                                        # -- End function
	.globl	outlocalhompt                   # -- Begin function outlocalhompt
	.p2align	5
	.type	outlocalhompt,@function
outlocalhompt:                          # @outlocalhompt
# %bb.0:
	blez	$a1, .LBB70_9
# %bb.1:
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
	move	$fp, $a2
	blez	$a2, .LBB70_8
# %bb.2:                                # %.preheader.us.preheader
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$s2, $a0, %pc_lo12(.L.str.76)
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$s3, $a0, %pc_lo12(.L.str.78)
	move	$s4, $zero
	.p2align	4, , 16
.LBB70_3:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_4 Depth 2
                                        #       Child Loop BB70_5 Depth 3
	move	$s5, $zero
	alsl.d	$s7, $s4, $s1, 3
.LBB70_4:                               #   Parent Loop BB70_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB70_5 Depth 3
	ld.d	$a0, $s7, 0
	slli.d	$a1, $s5, 3
	ldx.d	$s8, $a0, $a1
	ld.d	$a0, $s6, 0
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB70_5:                               #   Parent Loop BB70_3 Depth=1
                                        #     Parent Loop BB70_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s6, 0
	ld.w	$a2, $s8, 24
	ld.w	$a3, $s8, 28
	ld.w	$a4, $s8, 32
	ld.w	$a5, $s8, 36
	fld.d	$fa0, $s8, 72
	ld.d	$a7, $s8, 40
	ld.d	$a6, $s8, 56
	fst.d	$fa0, $sp, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s8, 8
	bnez	$s8, .LBB70_5
# %bb.6:                                #   in Loop: Header=BB70_4 Depth=2
	addi.d	$s5, $s5, 1
	bne	$s5, $fp, .LBB70_4
# %bb.7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB70_3 Depth=1
	addi.d	$s4, $s4, 1
	bne	$s4, $s0, .LBB70_3
.LBB70_8:
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
.LBB70_9:                               # %._crit_edge22
	ret
.Lfunc_end70:
	.size	outlocalhompt, .Lfunc_end70-outlocalhompt
                                        # -- End function
	.globl	FreeLocalHomTable               # -- Begin function FreeLocalHomTable
	.p2align	5
	.type	FreeLocalHomTable,@function
FreeLocalHomTable:                      # @FreeLocalHomTable
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
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB71_10
# %bb.1:                                # %.preheader.us.preheader
	move	$s1, $zero
	b	.LBB71_3
	.p2align	4, , 16
.LBB71_2:                               # %._crit_edge28.us
                                        #   in Loop: Header=BB71_3 Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
	beq	$s1, $s0, .LBB71_10
.LBB71_3:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB71_5 Depth 2
                                        #       Child Loop BB71_8 Depth 3
	move	$s3, $zero
	alsl.d	$s2, $s1, $fp, 3
	b	.LBB71_5
	.p2align	4, , 16
.LBB71_4:                               # %._crit_edge.us
                                        #   in Loop: Header=BB71_5 Depth=2
	addi.d	$s3, $s3, 1
	beq	$s3, $s0, .LBB71_2
.LBB71_5:                               #   Parent Loop BB71_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB71_8 Depth 3
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB71_4
# %bb.6:                                # %.lr.ph.us.preheader
                                        #   in Loop: Header=BB71_5 Depth=2
	slli.d	$a1, $s3, 6
	alsl.d	$s4, $s3, $a1, 4
	add.d	$a0, $a0, $s4
	b	.LBB71_8
	.p2align	4, , 16
.LBB71_7:                               #   in Loop: Header=BB71_8 Depth=3
	move	$a0, $s5
	beqz	$s5, .LBB71_4
.LBB71_8:                               # %.lr.ph.us
                                        #   Parent Loop BB71_3 Depth=1
                                        #     Parent Loop BB71_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s2, 0
	ld.d	$s5, $a0, 8
	add.d	$a1, $a1, $s4
	beq	$a0, $a1, .LBB71_7
# %bb.9:                                #   in Loop: Header=BB71_8 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB71_7
.LBB71_10:                              # %._crit_edge30
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end71:
	.size	FreeLocalHomTable, .Lfunc_end71-FreeLocalHomTable
                                        # -- End function
	.globl	progName                        # -- Begin function progName
	.p2align	5
	.type	progName,@function
progName:                               # @progName
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 47
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a0, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end72:
	.size	progName, .Lfunc_end72-progName
                                        # -- End function
	.globl	clustalout_pointer              # -- Begin function clustalout_pointer
	.p2align	5
	.type	clustalout_pointer,@function
clustalout_pointer:                     # @clustalout_pointer
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
	move	$s2, $a7
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	move	$s8, $a2
	move	$s5, $a1
	move	$s0, $a0
	beqz	$a6, .LBB73_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a3, $a0, %pc_lo12(.L.str.81)
	move	$a0, $s0
	move	$a2, $a6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bgtz	$s8, .LBB73_3
	b	.LBB73_25
.LBB73_2:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a2, $a0, %pc_lo12(.L.str.81)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s8, .LBB73_25
.LBB73_3:                               # %.lr.ph32
	blez	$s5, .LBB73_20
# %bb.4:                                # %.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$s6, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$s7, $a0, %pc_lo12(.L.str.84)
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $zero
	ori	$s1, $zero, 32
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	b	.LBB73_6
	.p2align	4, , 16
.LBB73_5:                               #   in Loop: Header=BB73_6 Depth=1
	addi.d	$fp, $fp, 60
	addi.w	$a0, $fp, 0
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	bge	$a0, $s8, .LBB73_25
.LBB73_6:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB73_9 Depth 2
                                        #       Child Loop BB73_10 Depth 3
                                        #       Child Loop BB73_14 Depth 3
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	b	.LBB73_9
	.p2align	4, , 16
.LBB73_7:                               # %.thread.i.us
                                        #   in Loop: Header=BB73_9 Depth=2
	st.b	$zero, $a0, 0
.LBB73_8:                               # %extractfirstword.exit.us
                                        #   in Loop: Header=BB73_9 Depth=2
	alsl.d	$s4, $s3, $s2, 2
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	add.d	$a2, $a0, $fp
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	beq	$s3, $s5, .LBB73_18
.LBB73_9:                               #   Parent Loop BB73_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB73_10 Depth 3
                                        #       Child Loop BB73_14 Depth 3
	slli.d	$a0, $s3, 2
	ldx.w	$a0, $s2, $a0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$s8, $a0, 1
	ori	$a1, $zero, 9
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB73_11
	.p2align	4, , 16
.LBB73_10:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB73_6 Depth=1
                                        #     Parent Loop BB73_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.b	$s1, $a0, 0
	ori	$a1, $zero, 9
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB73_10
.LBB73_11:                              # %tabtospace.exit.i.us
                                        #   in Loop: Header=BB73_9 Depth=2
	ld.bu	$a1, $s8, 0
	beqz	$a1, .LBB73_8
# %bb.12:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB73_9 Depth=2
	move	$a0, $s8
	b	.LBB73_14
	.p2align	4, , 16
.LBB73_13:                              #   in Loop: Header=BB73_14 Depth=3
	addi.d	$a0, $s8, 1
	move	$s8, $a0
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB73_8
.LBB73_14:                              # %.lr.ph.i.us
                                        #   Parent Loop BB73_6 Depth=1
                                        #     Parent Loop BB73_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$a1, $s1, .LBB73_16
# %bb.15:                               # %.lr.ph.i.us
                                        #   in Loop: Header=BB73_14 Depth=3
	beq	$s8, $a0, .LBB73_13
.LBB73_16:                              #   in Loop: Header=BB73_14 Depth=3
	beq	$a1, $s1, .LBB73_7
# %bb.17:                               #   in Loop: Header=BB73_14 Depth=3
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB73_14
	b	.LBB73_8
	.p2align	4, , 16
.LBB73_18:                              # %._crit_edge.us
                                        #   in Loop: Header=BB73_6 Depth=1
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	beqz	$s3, .LBB73_5
# %bb.19:                               #   in Loop: Header=BB73_6 Depth=1
	move	$a0, $s0
	move	$a1, $s6
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	add.d	$a2, $s3, $fp
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB73_5
.LBB73_20:                              # %.lr.ph32.split
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB73_23
# %bb.21:                               # %.lr.ph32.split.split.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$s2, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$s3, $a0, %pc_lo12(.L.str.85)
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$s4, $a0, %pc_lo12(.L.str.84)
	move	$fp, $zero
	.p2align	4, , 16
.LBB73_22:                              # %.lr.ph32.split.split
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s4
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 60
	addi.d	$s1, $s1, 60
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	blt	$fp, $s8, .LBB73_22
	b	.LBB73_25
.LBB73_23:                              # %.lr.ph32.split.split.us.preheader
	move	$fp, $zero
	.p2align	4, , 16
.LBB73_24:                              # %.lr.ph32.split.split.us
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 60
	blt	$fp, $s8, .LBB73_24
.LBB73_25:                              # %._crit_edge33
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
.Lfunc_end73:
	.size	clustalout_pointer, .Lfunc_end73-clustalout_pointer
                                        # -- End function
	.globl	writeData_reorder_pointer       # -- Begin function writeData_reorder_pointer
	.p2align	5
	.type	writeData_reorder_pointer,@function
writeData_reorder_pointer:              # @writeData_reorder_pointer
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
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	blez	$a1, .LBB74_6
# %bb.1:                                # %.lr.ph20.preheader
	move	$s0, $a4
	move	$s2, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s4, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s5, $a0, %pc_lo12(.L.str.24)
	move	$s6, $zero
	b	.LBB74_3
	.p2align	4, , 16
.LBB74_2:                               # %._crit_edge
                                        #   in Loop: Header=BB74_3 Depth=1
	addi.d	$s6, $s6, 1
	beq	$s6, $s2, .LBB74_6
.LBB74_3:                               # %.lr.ph20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_5 Depth 2
	slli.d	$a0, $s6, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$s8, $a1, $a0
	slli.d	$fp, $s8, 3
	ldx.d	$a0, $s0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a1, $a1, $fp
	addi.w	$s7, $a0, 0
	addi.d	$a2, $a1, 1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s7, .LBB74_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB74_3 Depth=1
	move	$fp, $zero
	move	$s1, $zero
	alsl.d	$s8, $s8, $s0, 3
	.p2align	4, , 16
.LBB74_5:                               # %.lr.ph
                                        #   Parent Loop BB74_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	add.d	$a3, $a0, $s1
	ori	$a2, $zero, 60
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 60
	addi.d	$s1, $s1, 60
	blt	$fp, $s7, .LBB74_5
	b	.LBB74_2
.LBB74_6:                               # %._crit_edge21
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
.Lfunc_end74:
	.size	writeData_reorder_pointer, .Lfunc_end74-writeData_reorder_pointer
                                        # -- End function
	.globl	writeData_reorder               # -- Begin function writeData_reorder
	.p2align	5
	.type	writeData_reorder,@function
writeData_reorder:                      # @writeData_reorder
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
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	blez	$a1, .LBB75_6
# %bb.1:                                # %.lr.ph20.preheader
	move	$s0, $a4
	move	$s2, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s4, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s5, $a0, %pc_lo12(.L.str.24)
	move	$s6, $zero
	b	.LBB75_3
	.p2align	4, , 16
.LBB75_2:                               # %._crit_edge
                                        #   in Loop: Header=BB75_3 Depth=1
	addi.d	$s6, $s6, 1
	beq	$s6, $s2, .LBB75_6
.LBB75_3:                               # %.lr.ph20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_5 Depth 2
	slli.d	$a0, $s6, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$s8, $a1, $a0
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s7, $a0, 0
	slli.d	$a0, $s8, 8
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a2, $a0, 1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s7, .LBB75_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB75_3 Depth=1
	move	$fp, $zero
	move	$s1, $zero
	alsl.d	$s8, $s8, $s0, 3
	.p2align	4, , 16
.LBB75_5:                               # %.lr.ph
                                        #   Parent Loop BB75_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	add.d	$a3, $a0, $s1
	ori	$a2, $zero, 60
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 60
	addi.d	$s1, $s1, 60
	blt	$fp, $s7, .LBB75_5
	b	.LBB75_2
.LBB75_6:                               # %._crit_edge21
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
.Lfunc_end75:
	.size	writeData_reorder, .Lfunc_end75-writeData_reorder
                                        # -- End function
	.globl	loadaamtx                       # -- Begin function loadaamtx
	.p2align	5
	.type	loadaamtx,@function
loadaamtx:                              # @loadaamtx
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 21
	ori	$a1, $zero, 20
	pcaddu18i	$ra, %call36(AllocateDoubleMtx)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 420
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 112
	bne	$a0, $a1, .LBB76_62
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_63
# %bb.2:
	move	$s2, $a0
	ori	$a0, $zero, 1000
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ori	$a0, $zero, 1000
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$fp, $zero, 35
	.p2align	4, , 16
.LBB76_3:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB76_6
# %bb.4:                                #   in Loop: Header=BB76_3 Depth=1
	ori	$a1, $zero, 999
	move	$a0, $s8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.bu	$s3, $s8, 0
	beq	$s3, $fp, .LBB76_3
# %bb.5:                                # %split
	beqz	$s3, .LBB76_7
	b	.LBB76_57
.LBB76_6:                               # %._crit_edge222
	ld.bu	$s3, $s8, 0
	bnez	$s3, .LBB76_57
.LBB76_7:                               # %._crit_edge
	st.b	$zero, $s8, 20
	ori	$a1, $zero, 65
	ori	$s5, $zero, 65
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.8:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 0
	ori	$a1, $zero, 82
	ori	$s5, $zero, 82
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.9:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 4
	ori	$a1, $zero, 78
	ori	$s5, $zero, 78
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.10:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 8
	ori	$a1, $zero, 68
	ori	$s5, $zero, 68
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.11:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 12
	ori	$a1, $zero, 67
	ori	$s5, $zero, 67
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.12:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 16
	ori	$a1, $zero, 81
	ori	$s5, $zero, 81
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.13:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 20
	ori	$a1, $zero, 69
	ori	$s5, $zero, 69
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.14:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 24
	ori	$a1, $zero, 71
	ori	$s5, $zero, 71
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.15:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 28
	ori	$a1, $zero, 72
	ori	$s5, $zero, 72
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.16:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 32
	ori	$a1, $zero, 73
	ori	$s5, $zero, 73
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.17:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 36
	ori	$a1, $zero, 76
	ori	$s5, $zero, 76
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.18:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 40
	ori	$a1, $zero, 75
	ori	$s5, $zero, 75
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.19:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 44
	ori	$a1, $zero, 77
	ori	$s5, $zero, 77
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.20:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 48
	ori	$a1, $zero, 70
	ori	$s5, $zero, 70
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.21:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 52
	ori	$a1, $zero, 80
	ori	$s5, $zero, 80
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.22:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 56
	ori	$a1, $zero, 83
	ori	$s5, $zero, 83
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.23:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 60
	ori	$a1, $zero, 84
	ori	$s5, $zero, 84
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.24:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 64
	ori	$a1, $zero, 87
	ori	$s5, $zero, 87
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.25:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 68
	ori	$a1, $zero, 89
	ori	$s5, $zero, 89
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.26:
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s6, 72
	ori	$a1, $zero, 86
	ori	$s5, $zero, 86
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_61
# %bb.27:                               # %.outer.preheader
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s7, $zero
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	sub.d	$a0, $a0, $s8
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.w	$a0, $s6, 76
	ori	$s8, $zero, 1
	ori	$fp, $zero, 35
	ori	$s3, $zero, 2
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	b	.LBB76_29
.LBB76_28:                              #   in Loop: Header=BB76_29 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s8, $s8, 1
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ori	$a0, $zero, 20
	beq	$s7, $a0, .LBB76_39
	.p2align	4, , 16
.LBB76_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_33 Depth 2
                                        #       Child Loop BB76_34 Depth 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB76_39
# %bb.30:                               #   in Loop: Header=BB76_29 Depth=1
	ori	$a1, $zero, 999
	move	$a0, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	beq	$a0, $fp, .LBB76_29
# %bb.31:                               # %.preheader172
                                        #   in Loop: Header=BB76_29 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$s1, $zero
	alsl.d	$s4, $s7, $s0, 3
	move	$a0, $s6
	b	.LBB76_33
	.p2align	4, , 16
.LBB76_32:                              #   in Loop: Header=BB76_33 Depth=2
	addi.d	$s1, $s1, 1
	beq	$s1, $s8, .LBB76_28
.LBB76_33:                              # %.preheader171
                                        #   Parent Loop BB76_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB76_34 Depth 3
	ld.d	$a1, $s5, 0
	addi.d	$s6, $a0, -1
	.p2align	4, , 16
.LBB76_34:                              #   Parent Loop BB76_29 Depth=1
                                        #     Parent Loop BB76_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a0, $s6, 1
	addi.d	$a2, $a0, -45
	andi	$a2, $a2, 255
	addi.d	$s6, $s6, 1
	bltu	$a2, $s3, .LBB76_36
# %bb.35:                               #   in Loop: Header=BB76_34 Depth=3
	slli.d	$a0, $a0, 1
	ldx.h	$a0, $a1, $a0
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB76_34
.LBB76_36:                              # %.critedge
                                        #   in Loop: Header=BB76_33 Depth=2
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	slli.d	$a1, $s1, 3
	fstx.d	$fa0, $a0, $a1
	ori	$a1, $zero, 32
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB76_32
# %bb.37:                               # %.critedge
                                        #   in Loop: Header=BB76_33 Depth=2
	bgeu	$s1, $s7, .LBB76_32
# %bb.38:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a0, $a0, %pc_lo12(.L.str.123)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB76_39:                              # %.loopexit174
	ld.d	$a0, $s0, 160
	lu52i.d	$a1, $zero, -1025
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 64
	vst	$vr0, $a0, 80
	vst	$vr0, $a0, 96
	vst	$vr0, $a0, 112
	vst	$vr0, $a0, 128
	vst	$vr0, $a0, 144
	ori	$fp, $zero, 102
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB76_40:                              # %.preheader169
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB76_50
# %bb.41:                               #   in Loop: Header=BB76_40 Depth=1
	ori	$a1, $zero, 999
	move	$a0, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	bne	$a0, $fp, .LBB76_40
# %bb.42:                               # %.preheader168
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$fp, $zero
	ori	$s3, $zero, 2
	ori	$s7, $zero, 19
	ori	$s1, $zero, 20
	move	$a0, $s6
	b	.LBB76_44
	.p2align	4, , 16
.LBB76_43:                              #   in Loop: Header=BB76_44 Depth=1
	addi.d	$fp, $fp, 1
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	beq	$fp, $s1, .LBB76_50
.LBB76_44:                              # %.preheader167
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_45 Depth 2
	ld.d	$a1, $s5, 0
	addi.d	$s6, $a0, -1
	.p2align	4, , 16
.LBB76_45:                              #   Parent Loop BB76_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $s6, 1
	addi.d	$a2, $a0, -45
	andi	$a2, $a2, 255
	addi.d	$s6, $s6, 1
	bltu	$a2, $s3, .LBB76_47
# %bb.46:                               #   in Loop: Header=BB76_45 Depth=2
	slli.d	$a0, $a0, 1
	ldx.h	$a0, $a1, $a0
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB76_45
.LBB76_47:                              # %.critedge2
                                        #   in Loop: Header=BB76_44 Depth=1
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 160
	slli.d	$a1, $fp, 3
	fstx.d	$fa0, $a0, $a1
	ori	$a1, $zero, 32
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beq	$fp, $s7, .LBB76_43
# %bb.48:                               # %.critedge2
                                        #   in Loop: Header=BB76_44 Depth=1
	bnez	$a0, .LBB76_43
# %bb.49:
	pcaddu18i	$ra, %call36(showaamtxexample)
	jirl	$ra, $ra, 0
.LBB76_50:                              # %.preheader166.preheader
	move	$a2, $zero
	move	$a0, $zero
	move	$a1, $zero
	ori	$a3, $zero, 1
	ori	$a4, $zero, 20
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	b	.LBB76_52
	.p2align	4, , 16
.LBB76_51:                              #   in Loop: Header=BB76_52 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 1
	move	$a2, $a6
	beq	$a0, $a4, .LBB76_56
.LBB76_52:                              # %.preheader166
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_54 Depth 2
	move	$a5, $zero
	slli.d	$a6, $a0, 2
	ldx.w	$a7, $s4, $a6
	alsl.d	$t0, $a1, $fp, 3
	addi.d	$a6, $a2, 8
	add.w	$a1, $a3, $a1
	move	$t1, $s4
	b	.LBB76_54
	.p2align	4, , 16
.LBB76_53:                              #   in Loop: Header=BB76_54 Depth=2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $s0, $t2
	slli.d	$t3, $t3, 3
	fldx.d	$fa0, $t2, $t3
	fstx.d	$fa0, $t0, $a5
	addi.d	$a5, $a5, 8
	addi.d	$t1, $t1, 4
	beq	$a6, $a5, .LBB76_51
.LBB76_54:                              #   Parent Loop BB76_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t3, $a7
	move	$t2, $a7
	beq	$a2, $a5, .LBB76_53
# %bb.55:                               #   in Loop: Header=BB76_54 Depth=2
	ld.w	$t3, $t1, 0
	slt	$t2, $t3, $a7
	masknez	$t4, $t3, $t2
	maskeqz	$t2, $a7, $t2
	or	$t2, $t2, $t4
	slt	$t4, $a7, $t3
	masknez	$t3, $t3, $t4
	maskeqz	$t4, $a7, $t4
	or	$t3, $t4, $t3
	b	.LBB76_53
.LBB76_56:                              # %.preheader
	ld.w	$a1, $s4, 0
	ld.d	$a0, $s0, 160
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 4
	ori	$a2, $zero, 3200
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 8
	ori	$a2, $zero, 3208
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 12
	ori	$a2, $zero, 3216
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 16
	ori	$a2, $zero, 3224
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 20
	ori	$a2, $zero, 3232
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 24
	ori	$a2, $zero, 3240
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 28
	ori	$a2, $zero, 3248
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 32
	ori	$a2, $zero, 3256
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 36
	ori	$a2, $zero, 3264
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 40
	ori	$a2, $zero, 3272
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 44
	ori	$a2, $zero, 3280
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 48
	ori	$a2, $zero, 3288
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 52
	ori	$a2, $zero, 3296
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 56
	ori	$a2, $zero, 3304
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 60
	ori	$a2, $zero, 3312
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 64
	ori	$a2, $zero, 3320
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 68
	ori	$a2, $zero, 3328
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 72
	ori	$a2, $zero, 3336
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ld.w	$a1, $s4, 76
	ori	$a2, $zero, 3344
	fstx.d	$fa0, $fp, $a2
	slli.d	$a1, $a1, 3
	fldx.d	$fa0, $a0, $a1
	ori	$a0, $zero, 3352
	fstx.d	$fa0, $fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.91)
	addi.d	$a1, $a1, %pc_lo12(.L.str.91)
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeDoubleMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB76_57:                              # %.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$fp, $s8, 1
	move	$s1, $s8
	b	.LBB76_59
	.p2align	4, , 16
.LBB76_58:                              #   in Loop: Header=BB76_59 Depth=1
	ld.bu	$s3, $fp, 0
	addi.d	$fp, $fp, 1
	beqz	$s3, .LBB76_7
.LBB76_59:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ext.w.b	$s3, $s3
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB76_58
# %bb.60:                               #   in Loop: Header=BB76_59 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	ldx.b	$a0, $a0, $a1
	st.b	$a0, $s1, 0
	addi.d	$s1, $s1, 1
	b	.LBB76_58
.LBB76_61:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.90)
	addi.d	$a1, $a1, %pc_lo12(.L.str.90)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(showaamtxexample)
	jirl	$ra, $ra, 0
.LBB76_62:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	ori	$a1, $zero, 45
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB76_63:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end76:
	.size	loadaamtx, .Lfunc_end76-loadaamtx
                                        # -- End function
	.globl	miyataout_reorder_pointer       # -- Begin function miyataout_reorder_pointer
	.p2align	5
	.type	miyataout_reorder_pointer,@function
miyataout_reorder_pointer:              # @miyataout_reorder_pointer
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
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a5
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $a2
	move	$s2, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s5, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB77_6
# %bb.1:                                # %.lr.ph28.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$s4, $a0, %pc_lo12(.L.str.93)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s5, $a0, %pc_lo12(.L.str.24)
	move	$s7, $zero
	b	.LBB77_3
	.p2align	4, , 16
.LBB77_2:                               # %._crit_edge
                                        #   in Loop: Header=BB77_3 Depth=1
	addi.d	$s7, $s7, 1
	beq	$s7, $s2, .LBB77_6
.LBB77_3:                               # %.lr.ph28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_5 Depth 2
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$s8, $a1, $a0
	slli.d	$fp, $s8, 3
	ldx.d	$a0, $s0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a1, $a1, $fp
	addi.d	$a2, $a1, 1
	addi.w	$s6, $a0, 0
	move	$a0, $s3
	move	$a1, $s4
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s6, .LBB77_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB77_3 Depth=1
	move	$fp, $zero
	move	$s1, $zero
	alsl.d	$s8, $s8, $s0, 3
	.p2align	4, , 16
.LBB77_5:                               # %.lr.ph
                                        #   Parent Loop BB77_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	add.d	$a3, $a0, $s1
	ori	$a2, $zero, 60
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 60
	addi.d	$s1, $s1, 60
	blt	$fp, $s6, .LBB77_5
	b	.LBB77_2
.LBB77_6:                               # %._crit_edge29
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
.Lfunc_end77:
	.size	miyataout_reorder_pointer, .Lfunc_end77-miyataout_reorder_pointer
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function readmccaskill
.LCPI78_0:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	readmccaskill
	.p2align	5
	.type	readmccaskill,@function
readmccaskill:                          # @readmccaskill
# %bb.0:                                # %._crit_edge
	addi.d	$sp, $sp, -1120
	st.d	$ra, $sp, 1112                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1040                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1032                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1024                 # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a1, $zero, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 62
	bne	$a0, $a1, .LBB78_12
# %bb.1:
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 999
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB78_3
.LBB78_2:                               # %._crit_edge53
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs1, $sp, 1024                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1032                 # 8-byte Folded Reload
	ld.d	$s7, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1112                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1120
	ret
.LBB78_3:                               # %.lr.ph52.preheader
	ori	$s5, $zero, 62
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$s3, $a0, %pc_lo12(.L.str.95)
	pcalau12i	$a0, %pc_hi20(.LCPI78_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI78_0)
	movgr2fr.w	$fs1, $zero
	ori	$s6, $zero, 24
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	lu52i.d	$s7, $a0, -1032
	b	.LBB78_5
	.p2align	4, , 16
.LBB78_4:                               # %.backedge
                                        #   in Loop: Header=BB78_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB78_2
.LBB78_5:                               # %.lr.ph52
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	beq	$s4, $s5, .LBB78_2
# %bb.6:                                #   in Loop: Header=BB78_5 Depth=1
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 999
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	bge	$a0, $fp, .LBB78_12
# %bb.7:                                #   in Loop: Header=BB78_5 Depth=1
	ld.w	$a1, $sp, 16
	bge	$a1, $fp, .LBB78_12
# %bb.8:                                #   in Loop: Header=BB78_5 Depth=1
	fld.s	$fa0, $sp, 12
	fcvt.d.s	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs0
	bcnez	$fcc0, .LBB78_4
# %bb.9:                                #   in Loop: Header=BB78_5 Depth=1
	beq	$a0, $a1, .LBB78_4
# %bb.10:                               #   in Loop: Header=BB78_5 Depth=1
	fcmp.cule.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB78_4
# %bb.11:                               #   in Loop: Header=BB78_5 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s2, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s0, $a0
	addi.w	$a1, $a1, 2
	mul.d	$a1, $a1, $s6
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	slli.d	$a2, $a1, 3
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $s2, $a1
	stx.d	$a0, $s0, $a2
	fld.s	$fa0, $sp, 12
	ld.w	$a2, $sp, 16
	mul.d	$a4, $a3, $s6
	add.d	$a4, $a0, $a4
	fst.s	$fa0, $a4, 20
	st.w	$a2, $a4, 16
	addi.w	$a3, $a3, 1
	stx.w	$a3, $s2, $a1
	mul.d	$a1, $a3, $s6
	add.d	$a1, $a0, $a1
	slli.d	$a0, $a2, 2
	ldx.w	$a3, $s2, $a0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.d	$s7, $a1, 16
	addi.w	$a1, $a3, 2
	mul.d	$a1, $a1, $s6
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 16
	slli.d	$a2, $a1, 3
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $s2, $a1
	stx.d	$a0, $s0, $a2
	fld.s	$fa0, $sp, 12
	ld.w	$a2, $sp, 20
	mul.d	$a4, $a3, $s6
	add.d	$a4, $a0, $a4
	fst.s	$fa0, $a4, 20
	st.w	$a2, $a4, 16
	addi.w	$a2, $a3, 1
	stx.w	$a2, $s2, $a1
	mul.d	$a1, $a2, $s6
	add.d	$a0, $a0, $a1
	st.d	$s7, $a0, 16
	b	.LBB78_4
.LBB78_12:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end78:
	.size	readmccaskill, .Lfunc_end78-readmccaskill
                                        # -- End function
	.globl	readpairfoldalign               # -- Begin function readpairfoldalign
	.p2align	5
	.type	readpairfoldalign,@function
readpairfoldalign:                      # @readpairfoldalign
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -304
	move	$s1, $a7
	move	$fp, $a6
	move	$s7, $a5
	move	$s5, $a4
	move	$s2, $a3
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $a1
	move	$s6, $a0
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	ld.d	$s3, $a0, 0
	ori	$a0, $zero, 2344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a7, 0
	st.w	$a1, $s3, 0
	addi.w	$s0, $a0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$s8, $a0, %pc_lo12(.L.str.96)
	.p2align	4, , 16
.LBB79_1:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_3
# %bb.2:                                #   in Loop: Header=BB79_1 Depth=1
	addi.d	$a0, $sp, 1248
	ori	$a1, $zero, 999
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1248
	ori	$a2, $zero, 10
	move	$a1, $s8
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_1
.LBB79_3:
	addi.w	$a2, $s7, 1
	addi.w	$a3, $fp, 1
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1248
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_37
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$fp, $a0, %pc_lo12(.L.str.100)
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB79_5:                               # %.preheader87
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_7
# %bb.6:                                #   in Loop: Header=BB79_5 Depth=1
	addi.d	$a0, $sp, 1248
	ori	$a1, $zero, 999
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1248
	ori	$a2, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_5
.LBB79_7:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB79_31
.LBB79_8:
	move	$s0, $zero
.LBB79_9:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$fp, $a0, %pc_lo12(.L.str.100)
	.p2align	4, , 16
.LBB79_10:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_12
# %bb.11:                               #   in Loop: Header=BB79_10 Depth=1
	addi.d	$a0, $sp, 1248
	ori	$a1, $zero, 999
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1248
	ori	$a2, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_10
.LBB79_12:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_18
# %bb.13:                               # %.lr.ph95.preheader
	addi.d	$a0, $sp, 1248
	ori	$a1, $zero, 999
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	addi.d	$a0, $sp, 1248
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	move	$s7, $s0
	beqz	$a0, .LBB79_17
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$s8, $a0, %pc_lo12(.L.str.102)
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$fp, $a0, %pc_lo12(.L.str.101)
	.p2align	4, , 16
.LBB79_15:                              # %.lr.ph136
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 1248
	addi.d	$a2, $sp, 1247
	addi.d	$a3, $sp, 1247
	addi.d	$a4, $sp, 1140
	addi.d	$a5, $sp, 1040
	addi.d	$a6, $sp, 1240
	addi.d	$a7, $sp, 1240
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1040
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s7, $fa0
	addi.d	$a0, $sp, 1140
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.d	$a0, $a0, -1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 2
	st.w	$a0, $a1, -4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_17
# %bb.16:                               # %.lr.ph95
                                        #   in Loop: Header=BB79_15 Depth=1
	addi.d	$a0, $sp, 1248
	ori	$a1, $zero, 999
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1248
	ori	$a2, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_15
.LBB79_17:                              # %._crit_edge96
	addi.w	$a0, $s7, 0
	addi.w	$a1, $s0, 0
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB79_38
.LBB79_18:                              # %.preheader
	addi.w	$a0, $s0, 0
	blez	$a0, .LBB79_35
# %bb.19:                               # %.lr.ph103.preheader
	move	$a1, $a0
	move	$a2, $s7
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	b	.LBB79_21
	.p2align	4, , 16
.LBB79_20:                              #   in Loop: Header=BB79_21 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$a5, $s5, 1
	st.b	$a4, $s5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	move	$s5, $a5
	beqz	$a1, .LBB79_25
.LBB79_21:                              # %.lr.ph103
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	ori	$a4, $zero, 45
	ori	$a5, $zero, 45
	bltz	$a6, .LBB79_23
# %bb.22:                               #   in Loop: Header=BB79_21 Depth=1
	ldx.bu	$a5, $s4, $a6
.LBB79_23:                              #   in Loop: Header=BB79_21 Depth=1
	ld.w	$a6, $a3, 0
	st.b	$a5, $s2, 0
	bltz	$a6, .LBB79_20
# %bb.24:                               #   in Loop: Header=BB79_21 Depth=1
	ldx.bu	$a4, $a7, $a6
	b	.LBB79_20
.LBB79_25:                              # %._crit_edge104
	st.b	$zero, $s2, 0
	st.b	$zero, $a5, 0
	st.w	$zero, $s1, 0
	addi.d	$a1, $a0, -1
	move	$a0, $s7
	.p2align	4, , 16
.LBB79_26:                              # %.lr.ph109
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	st.w	$a3, $s1, 0
	bgez	$a3, .LBB79_28
# %bb.27:                               # %.lr.ph109
                                        #   in Loop: Header=BB79_26 Depth=1
	move	$a2, $a1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB79_26
.LBB79_28:                              # %._crit_edge110
	st.w	$zero, $s3, 0
	bstrpick.d	$a0, $s0, 31, 0
	addi.d	$a1, $a0, -1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB79_29:                              # %.lr.ph114
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	st.w	$a3, $s3, 0
	bgez	$a3, .LBB79_36
# %bb.30:                               # %.lr.ph114
                                        #   in Loop: Header=BB79_29 Depth=1
	move	$a2, $a1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB79_29
	b	.LBB79_36
.LBB79_31:                              # %.lr.ph.preheader
	addi.d	$a0, $sp, 1248
	ori	$a1, $zero, 999
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	addi.d	$a0, $sp, 1248
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB79_8
# %bb.32:
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$s8, $a0, %pc_lo12(.L.str.102)
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$fp, $a0, %pc_lo12(.L.str.101)
	.p2align	4, , 16
.LBB79_33:                              # %.lr.ph132
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 1248
	addi.d	$a2, $sp, 1247
	addi.d	$a3, $sp, 1247
	addi.d	$a4, $sp, 1140
	addi.d	$a5, $sp, 1040
	addi.d	$a6, $sp, 1240
	addi.d	$a7, $sp, 1240
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1040
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 1140
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $s0, 32
	srai.d	$a1, $a1, 30
	add.d	$a1, $s7, $a1
	st.w	$a0, $a1, -4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_9
# %bb.34:                               # %.lr.ph
                                        #   in Loop: Header=BB79_33 Depth=1
	addi.d	$a0, $sp, 1248
	ori	$a1, $zero, 999
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1248
	ori	$a2, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB79_33
	b	.LBB79_9
.LBB79_35:                              # %._crit_edge104.thread
	st.b	$zero, $s2, 0
	st.b	$zero, $s5, 0
	st.w	$zero, $s1, 0
	st.w	$zero, $s3, 0
.LBB79_36:                              # %._crit_edge115
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$sp, $sp, 304
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB79_37:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.99)
	addi.d	$a1, $a1, %pc_lo12(.L.str.99)
	addi.d	$a2, $sp, 40
	addi.d	$a3, $sp, 1248
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB79_38:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end79:
	.size	readpairfoldalign, .Lfunc_end79-readpairfoldalign
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function showaamtxexample
	.type	showaamtxexample,@function
showaamtxexample:                       # @showaamtxexample
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a0, $a0, %pc_lo12(.L.str.123)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end80:
	.size	showaamtxexample, .Lfunc_end80-showaamtxexample
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"localhompt = %p\n"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"tmppt = %p\n"
	.size	.L.str.1, 12

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"subnosento = %p\n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"sumscore = %f\n"
	.size	.L.str.3, 15

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"tmpptr->opt = %f\n"
	.size	.L.str.4, 18

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s\n"
	.size	.L.str.5, 4

	.type	upperCase,@object               # @upperCase
	.local	upperCase
	.comm	upperCase,4,4
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"TOO LONG SEQUENCE!\n"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"TOO MANY SEQUENCE!\n"
	.size	.L.str.8, 20

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%d > %d\n"
	.size	.L.str.9, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"onnet"
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"DnA"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"dna"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"DNA"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"M-Y"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"iyata"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"reallocating...\n"
	.size	.L.str.16, 17

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Allocation error in load1SeqWithoutName_realloc \n"
	.size	.L.str.17, 50

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"done.\n"
	.size	.L.str.18, 7

	.type	readDataforgaln.tmpseq,@object  # @readDataforgaln.tmpseq
	.local	readDataforgaln.tmpseq
	.comm	readDataforgaln.tmpseq,8,8
	.type	readData_varlen.tmpseq,@object  # @readData_varlen.tmpseq
	.local	readData_varlen.tmpseq
	.comm	readData_varlen.tmpseq,8,8
	.type	readData_pointer.tmpseq,@object # @readData_pointer.tmpseq
	.local	readData_pointer.tmpseq
	.comm	readData_pointer.tmpseq,8,8
	.type	readData.tmpseq,@object         # @readData.tmpseq
	.local	readData.tmpseq
	.comm	readData.tmpseq,8,8
	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"##### atgcfreq = %f\n"
	.size	.L.str.19, 21

	.type	WriteGapFill.b,@object          # @WriteGapFill.b
	.local	WriteGapFill.b
	.comm	WriteGapFill.b,5000000,1
	.type	WriteGapFill.gap,@object        # @WriteGapFill.gap
	.local	WriteGapFill.gap
	.comm	WriteGapFill.gap,5000000,8
	.type	WriteGapFill.buff,@object       # @WriteGapFill.buff
	.local	WriteGapFill.buff
	.comm	WriteGapFill.buff,5000000,1
	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%5d"
	.size	.L.str.20, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%5d\n"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	">%s\n"
	.size	.L.str.23, 5

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%.*s\n"
	.size	.L.str.24, 6

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"hat2 is wrong."
	.size	.L.str.25, 15

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" %#6.3f\n"
	.size	.L.str.26, 9

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"%4d. %s\n"
	.size	.L.str.27, 9

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"%#6.3f"
	.size	.L.str.28, 7

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"%d-%d d=%.3f\n"
	.size	.L.str.29, 14

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"+==========+"
	.size	.L.str.30, 13

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"%d"
	.size	.L.str.31, 3

	.type	ReadBlastm7_avscore.qal,@object # @ReadBlastm7_avscore.qal
	.local	ReadBlastm7_avscore.qal
	.comm	ReadBlastm7_avscore.qal,5000000,1
	.type	ReadBlastm7_avscore.tal,@object # @ReadBlastm7_avscore.tal
	.local	ReadBlastm7_avscore.tal
	.comm	ReadBlastm7_avscore.tal,5000000,1
	.type	ReadBlastm7_avscore.al,@object  # @ReadBlastm7_avscore.al
	.local	ReadBlastm7_avscore.al
	.comm	ReadBlastm7_avscore.al,5000000,1
	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"          <Hit_def>"
	.size	.L.str.32, 20

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"              <Hsp_num>"
	.size	.L.str.33, 24

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"              <Hsp_score>"
	.size	.L.str.34, 26

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"              <Hsp_query-from>"
	.size	.L.str.35, 31

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"              <Hsp_query-to>"
	.size	.L.str.36, 29

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"              <Hsp_hit-from>"
	.size	.L.str.37, 29

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"              <Hsp_hit-to>"
	.size	.L.str.38, 27

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"              <Hsp_align-len>"
	.size	.L.str.39, 30

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"              <Hsp_qseq>"
	.size	.L.str.40, 25

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"              <Hsp_hseq>"
	.size	.L.str.41, 25

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"            </Hsp>:"
	.size	.L.str.42, 20

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"          </Hit_hsps>"
	.size	.L.str.43, 22

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"ERROR! sumscore=%f, sumlen=%f, and scorepersite=%f\n"
	.size	.L.str.44, 52

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"      </Iteration_hits>"
	.size	.L.str.45, 24

	.type	ReadBlastm7_scoreonly.qal,@object # @ReadBlastm7_scoreonly.qal
	.local	ReadBlastm7_scoreonly.qal
	.comm	ReadBlastm7_scoreonly.qal,5000000,1
	.type	ReadBlastm7_scoreonly.tal,@object # @ReadBlastm7_scoreonly.tal
	.local	ReadBlastm7_scoreonly.tal
	.comm	ReadBlastm7_scoreonly.tal,5000000,1
	.type	ReadBlastm7_scoreonly.al,@object # @ReadBlastm7_scoreonly.al
	.local	ReadBlastm7_scoreonly.al
	.comm	ReadBlastm7_scoreonly.al,5000000,1
	.type	ReadBlastm7.junban,@object      # @ReadBlastm7.junban
	.local	ReadBlastm7.junban
	.comm	ReadBlastm7.junban,200000,4
	.type	ReadBlastm7.qal,@object         # @ReadBlastm7.qal
	.local	ReadBlastm7.qal
	.comm	ReadBlastm7.qal,5000000,1
	.type	ReadBlastm7.tal,@object         # @ReadBlastm7.tal
	.local	ReadBlastm7.tal
	.comm	ReadBlastm7.tal,5000000,1
	.type	ReadBlastm7.al,@object          # @ReadBlastm7.al
	.local	ReadBlastm7.al
	.comm	ReadBlastm7.al,5000000,1
	.type	ReadFasta34noalign.junban,@object # @ReadFasta34noalign.junban
	.local	ReadFasta34noalign.junban
	.comm	ReadFasta34noalign.junban,200000,4
	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"%d %lf %lf"
	.size	.L.str.46, 11

	.type	ReadFasta34m10_nuc.junban,@object # @ReadFasta34m10_nuc.junban
	.local	ReadFasta34m10_nuc.junban
	.comm	ReadFasta34m10_nuc.junban,200000,4
	.type	ReadFasta34m10_nuc.qal,@object  # @ReadFasta34m10_nuc.qal
	.local	ReadFasta34m10_nuc.qal
	.comm	ReadFasta34m10_nuc.qal,5000000,1
	.type	ReadFasta34m10_nuc.tal,@object  # @ReadFasta34m10_nuc.tal
	.local	ReadFasta34m10_nuc.tal
	.comm	ReadFasta34m10_nuc.tal,5000000,1
	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	">>+==========+"
	.size	.L.str.47, 15

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"; fa_opt:"
	.size	.L.str.48, 10

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"; sw_s-w opt:"
	.size	.L.str.49, 14

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"_overlap:"
	.size	.L.str.51, 10

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"_start:"
	.size	.L.str.52, 8

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"_stop:"
	.size	.L.str.53, 7

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"_display_start:"
	.size	.L.str.54, 16

	.type	ReadFasta34m10.junban,@object   # @ReadFasta34m10.junban
	.local	ReadFasta34m10.junban
	.comm	ReadFasta34m10.junban,200000,4
	.type	ReadFasta34m10.qal,@object      # @ReadFasta34m10.qal
	.local	ReadFasta34m10.qal
	.comm	ReadFasta34m10.qal,5000000,1
	.type	ReadFasta34m10.tal,@object      # @ReadFasta34m10.tal
	.local	ReadFasta34m10.tal
	.comm	ReadFasta34m10.tal,5000000,1
	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"+===========+"
	.size	.L.str.55, 14

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	">>><<<"
	.size	.L.str.56, 7

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	">>>"
	.size	.L.str.57, 4

	.type	ReadFasta34.junban,@object      # @ReadFasta34.junban
	.local	ReadFasta34.junban
	.comm	ReadFasta34.junban,200000,4
	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"opt: "
	.size	.L.str.58, 6

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"ungapped) in "
	.size	.L.str.59, 14

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"pt = %s, overlapaa = %d\n"
	.size	.L.str.60, 25

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"overlap ("
	.size	.L.str.61, 10

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"(%d-%d:%d-%d)"
	.size	.L.str.62, 14

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"count = %d\n"
	.size	.L.str.63, 12

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"%d %d %d %lf"
	.size	.L.str.64, 13

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%d %d %d"
	.size	.L.str.65, 9

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"pre"
	.size	.L.str.66, 4

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"r"
	.size	.L.str.67, 2

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"Cannot open pre.\n"
	.size	.L.str.68, 18

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"/tmp/pre.%d"
	.size	.L.str.69, 12

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"w"
	.size	.L.str.70, 2

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"Cannot open pre"
	.size	.L.str.71, 16

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"trace"
	.size	.L.str.72, 6

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"cannot open trace"
	.size	.L.str.73, 18

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"PID = %d\n"
	.size	.L.str.74, 10

	.type	WriteForFasta.b,@object         # @WriteForFasta.b
	.local	WriteForFasta.b
	.comm	WriteForFasta.b,5000000,1
	.type	readlocalhomtable2.buff,@object # @readlocalhomtable2.buff
	.local	readlocalhomtable2.buff
	.comm	readlocalhomtable2.buff,256,1
	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"%d %d %d %lf %d %d %d %d"
	.size	.L.str.75, 25

	.type	readlocalhomtable.buff,@object  # @readlocalhomtable.buff
	.local	readlocalhomtable.buff
	.comm	readlocalhomtable.buff,256,1
	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"%d-%d\n"
	.size	.L.str.76, 7

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"reg1=%d-%d, reg2=%d-%d, imp=%f, opt=%f\n"
	.size	.L.str.77, 40

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"reg1=%d-%d, reg2=%d-%d, imp=%f, opt=%f, wimp=%f\n"
	.size	.L.str.78, 49

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"freeing localhom\n"
	.size	.L.str.79, 18

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"CLUSTAL format alignment by MAFFT (v%s)\n\n"
	.size	.L.str.80, 42

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"6.624b"
	.size	.L.str.81, 7

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"CLUSTAL format alignment by MAFFT %s (v%s)\n\n"
	.size	.L.str.82, 45

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"%-15.15s "
	.size	.L.str.83, 10

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"%.60s\n"
	.size	.L.str.84, 7

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.space	1
	.size	.L.str.85, 1

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"_aamtx"
	.size	.L.str.87, 7

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"User-defined matrix is not supported for DNA\n"
	.size	.L.str.88, 46

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"Cannot open the _aamtx file\n"
	.size	.L.str.89, 29

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"%c: not found in the first 20 letters.\n"
	.size	.L.str.90, 40

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"inorder = %s\n"
	.size	.L.str.91, 14

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"%5d%5d\n"
	.size	.L.str.92, 8

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"=%s\n%d\n"
	.size	.L.str.93, 8

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"format error in hat4\n"
	.size	.L.str.94, 22

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"%d %d %f"
	.size	.L.str.95, 9

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"; ALIGNING"
	.size	.L.str.96, 11

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"; ALIGNING            %d against %d\n"
	.size	.L.str.97, 37

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"Error in FOLDALIGN\n"
	.size	.L.str.98, 20

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"qstr = %s, but gett = %s\n"
	.size	.L.str.99, 26

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"; --------"
	.size	.L.str.100, 11

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"; ********"
	.size	.L.str.101, 11

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"%c %c %s %s %d %d"
	.size	.L.str.102, 18

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"Error in foldalign?\n"
	.size	.L.str.103, 21

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"pt1 = \n%s\n, pt2 = \n%s\n"
	.size	.L.str.104, 23

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"tmppt = %p, localhompt = %p\n"
	.size	.L.str.105, 29

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"In in while loop\n"
	.size	.L.str.106, 18

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"pt = %c, %c, st=%d\n"
	.size	.L.str.107, 20

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"score (1)= %f\n"
	.size	.L.str.108, 15

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"al1: %d - %d\n"
	.size	.L.str.109, 14

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"al2: %d - %d\n"
	.size	.L.str.110, 14

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"score (2)= %f\n"
	.size	.L.str.111, 15

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"Format error in aa matrix\n"
	.size	.L.str.112, 27

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"# Example:\n"
	.size	.L.str.113, 12

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"# comment\n"
	.size	.L.str.114, 11

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"   A  R  N  D  C  Q  E  G  H  I  L  K  M  F  P  S  T  W  Y  V\n"
	.size	.L.str.115, 63

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"A  4 -1 -2 -2  0 -1 -1  0 -2 -1 -1 -1 -1 -2 -1  1  0 -3 -2  0\n"
	.size	.L.str.116, 63

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"R -1  5  0 -2 -3  1  0 -2  0 -3 -2  2 -1 -3 -2 -1 -1 -3 -2 -3\n"
	.size	.L.str.117, 63

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"...\n"
	.size	.L.str.118, 5

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"V  0 -3 -3 -3 -1 -2 -2 -3 -3  3  1 -2  1 -1 -2 -2  0 -3 -1  4\n"
	.size	.L.str.119, 63

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"frequency 0.07 0.05 0.04 0.05 0.02 .. \n"
	.size	.L.str.120, 40

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"# Example end\n"
	.size	.L.str.121, 15

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"Only the lower half is loaded\n"
	.size	.L.str.122, 31

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"The last line (frequency) is optional.\n"
	.size	.L.str.123, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym WriteGapFill.b
	.addrsig_sym WriteGapFill.gap
	.addrsig_sym WriteGapFill.buff
	.addrsig_sym ReadBlastm7_avscore.qal
	.addrsig_sym ReadBlastm7_avscore.tal
	.addrsig_sym ReadBlastm7_avscore.al
	.addrsig_sym ReadBlastm7_scoreonly.qal
	.addrsig_sym ReadBlastm7_scoreonly.tal
	.addrsig_sym ReadBlastm7_scoreonly.al
	.addrsig_sym ReadBlastm7.qal
	.addrsig_sym ReadBlastm7.tal
	.addrsig_sym ReadBlastm7.al
	.addrsig_sym ReadFasta34m10_nuc.qal
	.addrsig_sym ReadFasta34m10_nuc.tal
	.addrsig_sym ReadFasta34m10.qal
	.addrsig_sym ReadFasta34m10.tal
	.addrsig_sym WriteForFasta.b
	.addrsig_sym readlocalhomtable2.buff
	.addrsig_sym readlocalhomtable.buff
