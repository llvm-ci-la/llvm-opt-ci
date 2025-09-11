	.file	"mltaln9.c"
	.text
	.globl	seqlen                          # -- Begin function seqlen
	.p2align	5
	.type	seqlen,@function
seqlen:                                 # @seqlen
# %bb.0:
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB0_4
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $a0
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a2, -45
	ld.bu	$a2, $a1, 0
	sltu	$a3, $zero, $a3
	add.w	$a0, $a0, $a3
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB0_2
# %bb.3:                                # %._crit_edge
	ret
.LBB0_4:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	seqlen, .Lfunc_end0-seqlen
                                        # -- End function
	.globl	intlen                          # -- Begin function intlen
	.p2align	5
	.type	intlen,@function
intlen:                                 # @intlen
# %bb.0:
	move	$a1, $a0
	ld.w	$a0, $a0, 0
	addi.w	$a2, $zero, -1
	beq	$a0, $a2, .LBB1_4
# %bb.1:                                # %.lr.ph.preheader
	move	$a0, $zero
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	bne	$a3, $a2, .LBB1_2
# %bb.3:                                # %._crit_edge
	ret
.LBB1_4:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	intlen, .Lfunc_end1-intlen
                                        # -- End function
	.globl	seqcheck                        # -- Begin function seqcheck
	.p2align	5
	.type	seqcheck,@function
seqcheck:                               # @seqcheck
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
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB2_7
# %bb.1:                                # %.lr.ph25.preheader
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(amino_n)
	ld.d	$s2, $a0, %got_pc_lo12(amino_n)
	addi.w	$s5, $zero, -1
	move	$s3, $fp
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %._crit_edge
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s0, $s3, 8
	addi.d	$s3, $s3, 8
	beqz	$s0, .LBB2_7
.LBB2_3:                                # %.lr.ph25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB2_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$s4, $zero
	bstrpick.d	$a0, $a0, 30, 0
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB2_5:                                # %.lr.ph
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a1, $s0, $s4
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s2, $a1
	beq	$a1, $s5, .LBB2_8
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=2
	addi.d	$s4, $s4, 1
	addi.w	$s1, $s1, 1
	bne	$a0, $s4, .LBB2_5
	b	.LBB2_2
.LBB2_7:
	move	$a0, $zero
	b	.LBB2_9
.LBB2_8:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s5, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s2, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s5, 0
	ldx.b	$a2, $a1, $s4
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	sub.d	$a1, $s3, $fp
	srli.d	$a1, $a1, 3
	addi.w	$a3, $a1, 1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldx.bu	$a0, $a0, $s4
.LBB2_9:                                # %.loopexit
	ext.w.b	$a0, $a0
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
	.size	seqcheck, .Lfunc_end2-seqcheck
                                        # -- End function
	.globl	scmx_calc                       # -- Begin function scmx_calc
	.p2align	5
	.type	scmx_calc,@function
scmx_calc:                              # @scmx_calc
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
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s0, $a3
	move	$s1, $a2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$a0, .LBB3_3
# %bb.1:                                # %.preheader52.preheader
	ld.d	$a0, $s0, 16
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 24
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 32
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 40
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a6, $s0, 48
	ld.d	$a7, $s0, 56
	ld.d	$t0, $s0, 64
	ld.d	$t1, $s0, 72
	ld.d	$t2, $s0, 80
	ld.d	$t3, $s0, 88
	ld.d	$t4, $s0, 96
	ld.d	$t5, $s0, 104
	ld.d	$t6, $s0, 112
	ld.d	$t7, $s0, 120
	ld.d	$t8, $s0, 128
	ld.d	$s3, $s0, 136
	ld.d	$s4, $s0, 144
	ld.d	$s5, $s0, 152
	ld.d	$s6, $s0, 160
	ld.d	$s7, $s0, 168
	ld.d	$s8, $s0, 176
	ld.d	$ra, $s0, 184
	ld.d	$s2, $s0, 192
	ld.d	$a1, $s0, 200
	ld.d	$a2, $s0, 0
	ld.d	$a0, $s0, 8
	move	$a3, $zero
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 30, 0
	.p2align	4, , 16
.LBB3_2:                                # %.preheader52
                                        # =>This Inner Loop Header: Depth=1
	stx.w	$zero, $a2, $a3
	stx.w	$zero, $a0, $a3
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	stx.w	$zero, $a5, $a3
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	stx.w	$zero, $a5, $a3
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	stx.w	$zero, $a5, $a3
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	stx.w	$zero, $a5, $a3
	stx.w	$zero, $a6, $a3
	stx.w	$zero, $a7, $a3
	stx.w	$zero, $t0, $a3
	stx.w	$zero, $t1, $a3
	stx.w	$zero, $t2, $a3
	stx.w	$zero, $t3, $a3
	stx.w	$zero, $t4, $a3
	stx.w	$zero, $t5, $a3
	stx.w	$zero, $t6, $a3
	stx.w	$zero, $t7, $a3
	stx.w	$zero, $t8, $a3
	stx.w	$zero, $s3, $a3
	stx.w	$zero, $s4, $a3
	stx.w	$zero, $s5, $a3
	stx.w	$zero, $s6, $a3
	stx.w	$zero, $s7, $a3
	stx.w	$zero, $s8, $a3
	stx.w	$zero, $ra, $a3
	stx.w	$zero, $s2, $a3
	stx.w	$zero, $a1, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB3_2
.LBB3_3:                                # %.preheader51
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $t2, 1
	bltz	$t2, .LBB3_12
# %bb.4:                                # %.lr.ph.preheader
	bstrpick.d	$a0, $a2, 31, 0
	pcalau12i	$a1, %got_pc_hi20(amino_n)
	ld.d	$a3, $a1, %got_pc_lo12(amino_n)
	move	$a1, $fp
	move	$a4, $s1
	.p2align	4, , 16
.LBB3_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	ld.b	$a5, $a5, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s0, $a5
	fld.d	$fa0, $a4, 0
	fld.s	$fa1, $a5, 0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB3_5
# %bb.6:                                # %.preheader50.thread
	ori	$a1, $zero, 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	blt	$a4, $a1, .LBB3_13
# %bb.7:                                # %.preheader49.preheader
	bstrpick.d	$a1, $a2, 31, 0
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB3_8:                                # %.preheader49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
	slli.d	$a5, $a4, 2
	move	$a6, $a1
	move	$a7, $fp
	move	$t0, $s1
	.p2align	4, , 16
.LBB3_9:                                #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	ldx.b	$t1, $t1, $a4
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a3, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $s0, $t1
	fld.d	$fa0, $t0, 0
	fldx.s	$fa1, $t1, $a5
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa0, $fa1, $fa0
	fstx.s	$fa0, $t1, $a5
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB3_9
# %bb.10:                               # %._crit_edge
                                        #   in Loop: Header=BB3_8 Depth=1
	addi.d	$a4, $a4, 1
	bne	$a4, $a0, .LBB3_8
# %bb.11:                               # %.preheader
	bgez	$t2, .LBB3_13
	b	.LBB3_15
.LBB3_12:                               # %.preheader50
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	bltz	$t2, .LBB3_15
.LBB3_13:                               # %.lr.ph63
	bstrpick.d	$a1, $a2, 31, 0
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	slli.d	$a3, $a0, 2
	.p2align	4, , 16
.LBB3_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $fp, 0
	ldx.b	$a4, $a4, $a0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a2, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s0, $a4
	fld.d	$fa0, $s1, 0
	fldx.s	$fa1, $a4, $a3
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa0, $fa1, $fa0
	fstx.s	$fa0, $a4, $a3
	addi.d	$s1, $s1, 8
	addi.d	$a1, $a1, -1
	addi.d	$fp, $fp, 8
	bnez	$a1, .LBB3_14
.LBB3_15:                               # %._crit_edge64
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
.Lfunc_end3:
	.size	scmx_calc, .Lfunc_end3-scmx_calc
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	exitall                         # -- Begin function exitall
	.p2align	5
	.type	exitall,@function
exitall:                                # @exitall
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	exitall, .Lfunc_end4-exitall
                                        # -- End function
	.text
	.globl	display                         # -- Begin function display
	.p2align	5
	.type	display,@function
display:                                # @display
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(disp)
	ld.d	$a2, $a2, %got_pc_lo12(disp)
	ld.w	$a2, $a2, 0
	bnez	$a2, .LBB5_2
.LBB5_1:                                # %.loopexit
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB5_2:
	pcalau12i	$a2, %got_pc_hi20(stderr)
	ld.d	$s1, $a2, %got_pc_lo12(stderr)
	ld.d	$a3, $s1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a4, $a2, %pc_lo12(.L.str.5)
	move	$s0, $a1
	ori	$a1, $zero, 125
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$s2, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB5_1
# %bb.3:                                # %.lr.ph
	move	$a0, $s2
	sltui	$a1, $s0, 60
	ori	$a2, $zero, 60
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s0, $a1
	or	$s2, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$s0, $a1, %pc_lo12(.L.str.6)
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	move	$s3, $a0
	addi.d	$a0, $sp, 23
	ori	$a2, $zero, 120
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	st.b	$zero, $sp, 143
	addi.d	$a3, $sp, 23
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 8
	addi.d	$s2, $s2, -1
	addi.w	$fp, $fp, 1
	bnez	$s2, .LBB5_4
	b	.LBB5_1
.Lfunc_end5:
	.size	display, .Lfunc_end5-display
                                        # -- End function
	.globl	intergroup_score_consweight     # -- Begin function intergroup_score_consweight
	.p2align	5
	.type	intergroup_score_consweight,@function
intergroup_score_consweight:            # @intergroup_score_consweight
# %bb.0:
	st.d	$zero, $a7, 0
	blez	$a4, .LBB6_23
# %bb.1:
	blez	$a5, .LBB6_23
# %bb.2:                                # %.preheader.lr.ph.split.us
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	blez	$a6, .LBB6_18
# %bb.3:                                # %.preheader.us.us.preheader
	addi.w	$t0, $a6, -2
	movgr2fr.d	$fa0, $zero
	pcalau12i	$t1, %got_pc_hi20(penalty)
	ld.d	$t1, $t1, %got_pc_lo12(penalty)
	ori	$t2, $zero, 45
	pcalau12i	$t3, %got_pc_hi20(amino_dis_consweight_multi)
	ld.d	$t3, $t3, %got_pc_lo12(amino_dis_consweight_multi)
	move	$t4, $zero
	fmov.d	$fa1, $fa0
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                # %._crit_edge64.split.us.us.us
                                        #   in Loop: Header=BB6_5 Depth=1
	addi.d	$t4, $t4, 1
	beq	$t4, $a4, .LBB6_22
.LBB6_5:                                # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #       Child Loop BB6_10 Depth 3
                                        #         Child Loop BB6_17 Depth 4
                                        #         Child Loop BB6_14 Depth 4
	slli.d	$t5, $t4, 3
	ldx.d	$t5, $a0, $t5
	move	$t6, $zero
	alsl.d	$t7, $t4, $a2, 3
	addi.d	$t8, $t5, 1
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_6:                                # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB6_7 Depth=2
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	addi.d	$t6, $t6, 1
	fst.d	$fa1, $a7, 0
	beq	$t6, $a5, .LBB6_4
.LBB6_7:                                # %.lr.ph.us.us.us
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_10 Depth 3
                                        #         Child Loop BB6_17 Depth 4
                                        #         Child Loop BB6_14 Depth 4
	fld.d	$fa2, $t7, 0
	slli.d	$fp, $t6, 3
	fldx.d	$fa3, $a3, $fp
	ld.w	$s1, $t1, 0
	move	$s0, $zero
	ldx.d	$fp, $a1, $fp
	fmul.d	$fa2, $fa2, $fa3
	movgr2fr.w	$fa3, $s1
	ffint.d.w	$fa3, $fa3
	addi.d	$s1, $fp, 1
	fmov.d	$fa4, $fa0
	b	.LBB6_10
	.p2align	4, , 16
.LBB6_8:                                #   in Loop: Header=BB6_10 Depth=3
	fadd.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa5, $fa4
	blt	$t0, $s0, .LBB6_6
.LBB6_9:                                #   in Loop: Header=BB6_10 Depth=3
	addi.w	$s0, $s0, 1
	bge	$s0, $a6, .LBB6_6
.LBB6_10:                               #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_17 Depth 4
                                        #         Child Loop BB6_14 Depth 4
	ldx.b	$s4, $t5, $s0
	ldx.b	$s5, $fp, $s0
	andi	$s3, $s4, 255
	andi	$s2, $s5, 255
	bne	$s3, $t2, .LBB6_12
# %bb.11:                               #   in Loop: Header=BB6_10 Depth=3
	beq	$s2, $t2, .LBB6_9
.LBB6_12:                               #   in Loop: Header=BB6_10 Depth=3
	slli.d	$s4, $s4, 10
	add.d	$s4, $t3, $s4
	slli.d	$s5, $s5, 3
	fldx.d	$fa5, $s4, $s5
	fadd.d	$fa4, $fa4, $fa5
	bne	$s3, $t2, .LBB6_15
# %bb.13:                               # %.preheader.preheader
                                        #   in Loop: Header=BB6_10 Depth=3
	addi.d	$s3, $s0, -1
	add.d	$s2, $t8, $s0
	move	$s0, $s3
	.p2align	4, , 16
.LBB6_14:                               # %.preheader
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s3, $s2, 0
	addi.w	$s0, $s0, 1
	addi.d	$s2, $s2, 1
	beq	$s3, $t2, .LBB6_14
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_15:                               #   in Loop: Header=BB6_10 Depth=3
	bne	$s2, $t2, .LBB6_9
# %bb.16:                               # %.preheader94.preheader
                                        #   in Loop: Header=BB6_10 Depth=3
	addi.d	$s3, $s0, -1
	add.d	$s2, $s1, $s0
	move	$s0, $s3
	.p2align	4, , 16
.LBB6_17:                               # %.preheader94
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s3, $s2, 0
	addi.w	$s0, $s0, 1
	addi.d	$s2, $s2, 1
	beq	$s3, $t2, .LBB6_17
	b	.LBB6_8
.LBB6_18:                               # %.preheader.us.preheader
	movgr2fr.d	$fa0, $zero
	move	$a0, $zero
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB6_19:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_20 Depth 2
	alsl.d	$a1, $a0, $a2, 3
	move	$a6, $a5
	move	$t0, $a3
	.p2align	4, , 16
.LBB6_20:                               #   Parent Loop BB6_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $t0, 0
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	fst.d	$fa1, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 8
	bnez	$a6, .LBB6_20
# %bb.21:                               # %._crit_edge64.split.us67
                                        #   in Loop: Header=BB6_19 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $a4, .LBB6_19
.LBB6_22:
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB6_23:                               # %._crit_edge
	ret
.Lfunc_end6:
	.size	intergroup_score_consweight, .Lfunc_end6-intergroup_score_consweight
                                        # -- End function
	.globl	intergroup_score_gapnomi        # -- Begin function intergroup_score_gapnomi
	.p2align	5
	.type	intergroup_score_gapnomi,@function
intergroup_score_gapnomi:               # @intergroup_score_gapnomi
# %bb.0:
	st.d	$zero, $a7, 0
	blez	$a4, .LBB7_23
# %bb.1:
	blez	$a5, .LBB7_23
# %bb.2:                                # %.preheader.lr.ph.split.us
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	blez	$a6, .LBB7_18
# %bb.3:                                # %.preheader.us.us.preheader
	addi.w	$t0, $a6, -2
	movgr2fr.d	$fa0, $zero
	pcalau12i	$t1, %got_pc_hi20(penalty)
	ld.d	$t1, $t1, %got_pc_lo12(penalty)
	move	$t2, $zero
	ori	$t3, $zero, 45
	fmov.d	$fa1, $fa0
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # %._crit_edge55.split.us.us.us
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$t2, $t2, 1
	beq	$t2, $a4, .LBB7_22
.LBB7_5:                                # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #       Child Loop BB7_10 Depth 3
                                        #         Child Loop BB7_17 Depth 4
                                        #         Child Loop BB7_14 Depth 4
	slli.d	$t4, $t2, 3
	ldx.d	$t4, $a0, $t4
	move	$t5, $zero
	alsl.d	$t6, $t2, $a2, 3
	addi.d	$t7, $t4, 1
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_6:                                # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB7_7 Depth=2
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	addi.d	$t5, $t5, 1
	fst.d	$fa1, $a7, 0
	beq	$t5, $a5, .LBB7_4
.LBB7_7:                                # %.lr.ph.us.us.us
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_10 Depth 3
                                        #         Child Loop BB7_17 Depth 4
                                        #         Child Loop BB7_14 Depth 4
	fld.d	$fa2, $t6, 0
	slli.d	$t8, $t5, 3
	fldx.d	$fa3, $a3, $t8
	ld.w	$s0, $t1, 0
	move	$fp, $zero
	ldx.d	$t8, $a1, $t8
	fmul.d	$fa2, $fa2, $fa3
	movgr2fr.w	$fa3, $s0
	ffint.d.w	$fa4, $fa3
	addi.d	$s0, $t8, 1
	fmov.d	$fa3, $fa0
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_8:                                #   in Loop: Header=BB7_10 Depth=3
	fadd.d	$fa3, $fa3, $fa4
	blt	$t0, $fp, .LBB7_6
.LBB7_9:                                #   in Loop: Header=BB7_10 Depth=3
	addi.w	$fp, $fp, 1
	bge	$fp, $a6, .LBB7_6
.LBB7_10:                               #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_17 Depth 4
                                        #         Child Loop BB7_14 Depth 4
	ldx.bu	$s2, $t4, $fp
	ldx.bu	$s1, $t8, $fp
	bne	$s2, $t3, .LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_10 Depth=3
	beq	$s1, $t3, .LBB7_9
.LBB7_12:                               #   in Loop: Header=BB7_10 Depth=3
	bne	$s2, $t3, .LBB7_15
# %bb.13:                               # %.preheader.preheader
                                        #   in Loop: Header=BB7_10 Depth=3
	addi.d	$s2, $fp, -1
	add.d	$s1, $t7, $fp
	move	$fp, $s2
	.p2align	4, , 16
.LBB7_14:                               # %.preheader
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        #       Parent Loop BB7_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s2, $s1, 0
	addi.w	$fp, $fp, 1
	addi.d	$s1, $s1, 1
	beq	$s2, $t3, .LBB7_14
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_15:                               #   in Loop: Header=BB7_10 Depth=3
	bne	$s1, $t3, .LBB7_9
# %bb.16:                               # %.preheader85.preheader
                                        #   in Loop: Header=BB7_10 Depth=3
	addi.d	$s2, $fp, -1
	add.d	$s1, $s0, $fp
	move	$fp, $s2
	.p2align	4, , 16
.LBB7_17:                               # %.preheader85
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        #       Parent Loop BB7_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s2, $s1, 0
	addi.w	$fp, $fp, 1
	addi.d	$s1, $s1, 1
	beq	$s2, $t3, .LBB7_17
	b	.LBB7_8
.LBB7_18:                               # %.preheader.us.preheader
	movgr2fr.d	$fa0, $zero
	move	$a0, $zero
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_19:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	alsl.d	$a1, $a0, $a2, 3
	move	$a6, $a5
	move	$t0, $a3
	.p2align	4, , 16
.LBB7_20:                               #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $t0, 0
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	fst.d	$fa1, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 8
	bnez	$a6, .LBB7_20
# %bb.21:                               # %._crit_edge55.split.us58
                                        #   in Loop: Header=BB7_19 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $a4, .LBB7_19
.LBB7_22:
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB7_23:                               # %._crit_edge
	ret
.Lfunc_end7:
	.size	intergroup_score_gapnomi, .Lfunc_end7-intergroup_score_gapnomi
                                        # -- End function
	.globl	intergroup_score                # -- Begin function intergroup_score
	.p2align	5
	.type	intergroup_score,@function
intergroup_score:                       # @intergroup_score
# %bb.0:
	st.d	$zero, $a7, 0
	blez	$a4, .LBB8_25
# %bb.1:
	blez	$a5, .LBB8_25
# %bb.2:                                # %.preheader.lr.ph.split.us
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	blez	$a6, .LBB8_20
# %bb.3:                                # %.preheader.us.us.preheader
	addi.w	$t0, $a6, -2
	movgr2fr.d	$fa0, $zero
	pcalau12i	$t1, %got_pc_hi20(penalty)
	ld.d	$t1, $t1, %got_pc_lo12(penalty)
	ori	$t2, $zero, 45
	pcalau12i	$t3, %got_pc_hi20(amino_dis_consweight_multi)
	ld.d	$t3, $t3, %got_pc_lo12(amino_dis_consweight_multi)
	move	$t4, $zero
	lu12i.w	$t5, 11
	ori	$t5, $t5, 1024
	fmov.d	$fa1, $fa0
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_4:                                # %._crit_edge100.split.us.us.us
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$t4, $t4, 1
	beq	$t4, $a4, .LBB8_24
.LBB8_5:                                # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #       Child Loop BB8_10 Depth 3
                                        #         Child Loop BB8_19 Depth 4
                                        #         Child Loop BB8_15 Depth 4
	slli.d	$t6, $t4, 3
	ldx.d	$t6, $a0, $t6
	move	$t7, $zero
	alsl.d	$t8, $t4, $a2, 3
	addi.d	$fp, $t6, 1
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_6:                                # %._crit_edge88.us.us.us
                                        #   in Loop: Header=BB8_7 Depth=2
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	addi.d	$t7, $t7, 1
	fst.d	$fa1, $a7, 0
	beq	$t7, $a5, .LBB8_4
.LBB8_7:                                # %.lr.ph87.us.us.us
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_10 Depth 3
                                        #         Child Loop BB8_19 Depth 4
                                        #         Child Loop BB8_15 Depth 4
	fld.d	$fa2, $t8, 0
	slli.d	$s1, $t7, 3
	fldx.d	$fa3, $a3, $s1
	ld.w	$s2, $t1, 0
	move	$s0, $zero
	ldx.d	$s1, $a1, $s1
	fmul.d	$fa2, $fa2, $fa3
	movgr2fr.w	$fa3, $s2
	ffint.d.w	$fa3, $fa3
	addi.d	$s2, $s1, 1
	fmov.d	$fa4, $fa0
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_8:                                # %._crit_edge80.us.us.us
                                        #   in Loop: Header=BB8_10 Depth=3
	blt	$t0, $s0, .LBB8_6
.LBB8_9:                                #   in Loop: Header=BB8_10 Depth=3
	addi.w	$s0, $s0, 1
	bge	$s0, $a6, .LBB8_6
.LBB8_10:                               #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_19 Depth 4
                                        #         Child Loop BB8_15 Depth 4
	ldx.b	$s4, $t6, $s0
	ldx.b	$s3, $s1, $s0
	andi	$s6, $s4, 255
	andi	$s5, $s3, 255
	bne	$s6, $t2, .LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_10 Depth=3
	beq	$s5, $t2, .LBB8_9
.LBB8_12:                               #   in Loop: Header=BB8_10 Depth=3
	slli.d	$s4, $s4, 10
	add.d	$s4, $t3, $s4
	slli.d	$s7, $s3, 3
	fldx.d	$fa5, $s4, $s7
	fadd.d	$fa4, $fa4, $fa5
	bne	$s6, $t2, .LBB8_16
# %bb.13:                               #   in Loop: Header=BB8_10 Depth=3
	addi.d	$s4, $s0, 1
	ldx.bu	$s5, $t6, $s4
	fadd.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa5, $fa4
	bne	$s5, $t2, .LBB8_8
# %bb.14:                               # %.lr.ph79.us.us.us
                                        #   in Loop: Header=BB8_10 Depth=3
	alsl.d	$s3, $s3, $t3, 3
	fldx.d	$fa5, $s3, $t5
	add.d	$s3, $fp, $s4
	.p2align	4, , 16
.LBB8_15:                               #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        #       Parent Loop BB8_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s4, $s3, 0
	fadd.d	$fa4, $fa4, $fa5
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, 1
	beq	$s4, $t2, .LBB8_15
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_16:                               #   in Loop: Header=BB8_10 Depth=3
	bne	$s5, $t2, .LBB8_9
# %bb.17:                               #   in Loop: Header=BB8_10 Depth=3
	addi.d	$s3, $s0, 1
	ldx.bu	$s5, $s1, $s3
	fadd.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa5, $fa4
	bne	$s5, $t2, .LBB8_8
# %bb.18:                               # %.lr.ph.us.us.us
                                        #   in Loop: Header=BB8_10 Depth=3
	fld.d	$fa5, $s4, 360
	add.d	$s3, $s2, $s3
	.p2align	4, , 16
.LBB8_19:                               #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        #       Parent Loop BB8_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s4, $s3, 0
	fadd.d	$fa4, $fa4, $fa5
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, 1
	beq	$s4, $t2, .LBB8_19
	b	.LBB8_8
.LBB8_20:                               # %.preheader.us.preheader
	movgr2fr.d	$fa0, $zero
	move	$a0, $zero
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB8_21:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_22 Depth 2
	alsl.d	$a1, $a0, $a2, 3
	move	$a6, $a5
	move	$t0, $a3
	.p2align	4, , 16
.LBB8_22:                               #   Parent Loop BB8_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $t0, 0
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	fst.d	$fa1, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 8
	bnez	$a6, .LBB8_22
# %bb.23:                               # %._crit_edge100.split.us106
                                        #   in Loop: Header=BB8_21 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $a4, .LBB8_21
.LBB8_24:
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB8_25:                               # %._crit_edge
	ret
.Lfunc_end8:
	.size	intergroup_score, .Lfunc_end8-intergroup_score
                                        # -- End function
	.globl	intergroup_score_new            # -- Begin function intergroup_score_new
	.p2align	5
	.type	intergroup_score_new,@function
intergroup_score_new:                   # @intergroup_score_new
# %bb.0:
	st.d	$zero, $a7, 0
	blez	$a4, .LBB9_25
# %bb.1:
	blez	$a5, .LBB9_25
# %bb.2:                                # %.preheader.lr.ph.split.us
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	blez	$a6, .LBB9_20
# %bb.3:                                # %.preheader.us.us.preheader
	addi.w	$t0, $a6, -2
	movgr2fr.d	$fa0, $zero
	pcalau12i	$t1, %got_pc_hi20(penalty)
	ld.d	$t1, $t1, %got_pc_lo12(penalty)
	ori	$t2, $zero, 45
	pcalau12i	$t3, %got_pc_hi20(amino_dis)
	ld.d	$t3, $t3, %got_pc_lo12(amino_dis)
	move	$t4, $zero
	fmov.d	$fa1, $fa0
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                # %._crit_edge84.split.us.us.us
                                        #   in Loop: Header=BB9_5 Depth=1
	addi.d	$t4, $t4, 1
	beq	$t4, $a4, .LBB9_24
.LBB9_5:                                # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_10 Depth 3
                                        #         Child Loop BB9_19 Depth 4
                                        #         Child Loop BB9_15 Depth 4
	slli.d	$t5, $t4, 3
	ldx.d	$t5, $a0, $t5
	move	$t6, $zero
	alsl.d	$t7, $t4, $a2, 3
	addi.d	$t8, $t5, 1
	b	.LBB9_7
	.p2align	4, , 16
.LBB9_6:                                # %._crit_edge76.us.us.us
                                        #   in Loop: Header=BB9_7 Depth=2
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	addi.d	$t6, $t6, 1
	fst.d	$fa1, $a7, 0
	beq	$t6, $a5, .LBB9_4
.LBB9_7:                                # %.lr.ph75.us.us.us
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_10 Depth 3
                                        #         Child Loop BB9_19 Depth 4
                                        #         Child Loop BB9_15 Depth 4
	fld.d	$fa2, $t7, 0
	slli.d	$s0, $t6, 3
	fldx.d	$fa3, $a3, $s0
	ld.w	$s1, $t1, 0
	move	$fp, $zero
	ldx.d	$s0, $a1, $s0
	fmul.d	$fa2, $fa2, $fa3
	movgr2fr.w	$fa3, $s1
	ffint.d.w	$fa3, $fa3
	addi.d	$s1, $s0, 1
	fmov.d	$fa4, $fa0
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_8:                                # %._crit_edge69.us.us.us
                                        #   in Loop: Header=BB9_10 Depth=3
	blt	$t0, $fp, .LBB9_6
.LBB9_9:                                #   in Loop: Header=BB9_10 Depth=3
	addi.w	$fp, $fp, 1
	bge	$fp, $a6, .LBB9_6
.LBB9_10:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_19 Depth 4
                                        #         Child Loop BB9_15 Depth 4
	ldx.b	$s3, $t5, $fp
	ldx.b	$s2, $s0, $fp
	andi	$s5, $s3, 255
	andi	$s4, $s2, 255
	bne	$s5, $t2, .LBB9_12
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=3
	beq	$s4, $t2, .LBB9_9
.LBB9_12:                               #   in Loop: Header=BB9_10 Depth=3
	slli.d	$s3, $s3, 9
	add.d	$s3, $t3, $s3
	slli.d	$s6, $s2, 2
	ldx.w	$s6, $s3, $s6
	movgr2fr.w	$fa5, $s6
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	bne	$s5, $t2, .LBB9_16
# %bb.13:                               #   in Loop: Header=BB9_10 Depth=3
	addi.d	$s3, $fp, 1
	ldx.bu	$s4, $t5, $s3
	fadd.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa4, $fa5
	bne	$s4, $t2, .LBB9_8
# %bb.14:                               # %.lr.ph68.us.us.us
                                        #   in Loop: Header=BB9_10 Depth=3
	alsl.d	$s2, $s2, $t3, 2
	ldptr.w	$s2, $s2, 23040
	movgr2fr.w	$fa5, $s2
	ffint.d.w	$fa5, $fa5
	add.d	$s2, $t8, $s3
	.p2align	4, , 16
.LBB9_15:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        #       Parent Loop BB9_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s3, $s2, 0
	fadd.d	$fa4, $fa4, $fa5
	addi.w	$fp, $fp, 1
	addi.d	$s2, $s2, 1
	beq	$s3, $t2, .LBB9_15
	b	.LBB9_8
	.p2align	4, , 16
.LBB9_16:                               #   in Loop: Header=BB9_10 Depth=3
	bne	$s4, $t2, .LBB9_9
# %bb.17:                               #   in Loop: Header=BB9_10 Depth=3
	addi.d	$s2, $fp, 1
	ldx.bu	$s4, $s0, $s2
	fadd.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa4, $fa5
	bne	$s4, $t2, .LBB9_8
# %bb.18:                               # %.lr.ph.us.us.us
                                        #   in Loop: Header=BB9_10 Depth=3
	ld.w	$s3, $s3, 180
	movgr2fr.w	$fa5, $s3
	ffint.d.w	$fa5, $fa5
	add.d	$s2, $s1, $s2
	.p2align	4, , 16
.LBB9_19:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        #       Parent Loop BB9_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s3, $s2, 0
	fadd.d	$fa4, $fa4, $fa5
	addi.w	$fp, $fp, 1
	addi.d	$s2, $s2, 1
	beq	$s3, $t2, .LBB9_19
	b	.LBB9_8
.LBB9_20:                               # %.preheader.us.preheader
	movgr2fr.d	$fa0, $zero
	move	$a0, $zero
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB9_21:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_22 Depth 2
	alsl.d	$a1, $a0, $a2, 3
	move	$a6, $a5
	move	$t0, $a3
	.p2align	4, , 16
.LBB9_22:                               #   Parent Loop BB9_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $t0, 0
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	fst.d	$fa1, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 8
	bnez	$a6, .LBB9_22
# %bb.23:                               # %._crit_edge84.split.us87
                                        #   in Loop: Header=BB9_21 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $a4, .LBB9_21
.LBB9_24:
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB9_25:                               # %._crit_edge
	ret
.Lfunc_end9:
	.size	intergroup_score_new, .Lfunc_end9-intergroup_score_new
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function score_calc3
.LCPI10_0:
	.dword	0x7ff8000000000000              # double NaN
	.text
	.globl	score_calc3
	.p2align	5
	.type	score_calc3,@function
score_calc3:                            # @score_calc3
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
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(weight)
	ld.d	$a1, $a1, %got_pc_lo12(weight)
	ld.w	$s7, $a1, 0
	beqz	$s7, .LBB10_26
# %bb.1:
	ori	$a1, $zero, 2
	beq	$s7, $a1, .LBB10_8
# %bb.2:
	ori	$a1, $zero, 3
	bne	$s7, $a1, .LBB10_35
# %bb.3:                                # %.preheader
	ori	$a1, $zero, 2
	blt	$s8, $a1, .LBB10_29
# %bb.4:                                # %.lr.ph78.preheader
	move	$a4, $zero
	addi.w	$a1, $s8, -1
	movgr2fr.d	$fs0, $zero
	ori	$a2, $zero, 1
	ori	$a3, $zero, 8
	.p2align	4, , 16
.LBB10_5:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
	slli.d	$a5, $a4, 3
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a5, $a6, $a5
	addi.d	$a4, $a4, 1
	add.d	$a5, $a5, $a3
	move	$a6, $s8
	.p2align	4, , 16
.LBB10_6:                               #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a5, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bne	$a2, $a6, .LBB10_6
# %bb.7:                                # %.loopexit72
                                        #   in Loop: Header=BB10_5 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a1, .LBB10_5
	b	.LBB10_9
.LBB10_8:
	bstrpick.d	$a1, $s8, 31, 31
	add.w	$a1, $s8, $a1
	srai.d	$a1, $a1, 1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fs0, $fa0
.LBB10_9:                               # %.loopexit73
	ori	$a1, $zero, 2
	blt	$s8, $a1, .LBB10_27
.LBB10_10:                              # %.lr.ph99
	addi.w	$s6, $a0, 0
	addi.w	$a1, $s8, -1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	blez	$s6, .LBB10_30
# %bb.11:                               # %.lr.ph95.us.preheader
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s7, $a0, -2
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 400
	maskeqz	$s8, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(n_dis)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis)
	ld.w	$a1, $a1, 96
	sub.w	$s4, $a0, $a1
	movgr2fr.d	$fs1, $zero
	ori	$fp, $zero, 1
	pcalau12i	$a0, %pc_hi20(score_calc3.mseq1)
	addi.d	$s2, $a0, %pc_lo12(score_calc3.mseq1)
	pcalau12i	$a0, %pc_hi20(score_calc3.mseq2)
	addi.d	$s3, $a0, %pc_lo12(score_calc3.mseq2)
	ori	$s5, $zero, 45
	pcalau12i	$a0, %got_pc_hi20(amino_dis)
	ld.d	$s1, $a0, %got_pc_lo12(amino_dis)
	move	$a1, $zero
	b	.LBB10_13
	.p2align	4, , 16
.LBB10_12:                              # %.loopexit.us
                                        #   in Loop: Header=BB10_13 Depth=1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_28
.LBB10_13:                              # %.lr.ph95.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_15 Depth 2
                                        #       Child Loop BB10_18 Depth 3
                                        #         Child Loop BB10_25 Depth 4
                                        #         Child Loop BB10_22 Depth 4
	move	$a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	b	.LBB10_15
	.p2align	4, , 16
.LBB10_14:                              # %._crit_edge.us.us
                                        #   in Loop: Header=BB10_15 Depth=2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	fldx.d	$fa2, $a2, $s0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	addi.d	$fp, $fp, 1
	fmadd.d	$fs1, $fa0, $fa2, $fs1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB10_12
.LBB10_15:                              # %.lr.ph83.us.us
                                        #   Parent Loop BB10_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_18 Depth 3
                                        #         Child Loop BB10_25 Depth 4
                                        #         Child Loop BB10_22 Depth 4
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	slli.d	$s0, $fp, 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a1, $a0, $s0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a0, $zero
	move	$a2, $zero
	b	.LBB10_18
	.p2align	4, , 16
.LBB10_16:                              #   in Loop: Header=BB10_18 Depth=3
	add.d	$a1, $a1, $s4
	blt	$s7, $a2, .LBB10_14
.LBB10_17:                              #   in Loop: Header=BB10_18 Depth=3
	addi.w	$a2, $a2, 1
	bge	$a2, $s6, .LBB10_14
.LBB10_18:                              #   Parent Loop BB10_13 Depth=1
                                        #     Parent Loop BB10_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_25 Depth 4
                                        #         Child Loop BB10_22 Depth 4
	ldx.b	$a5, $s2, $a2
	ldx.b	$a6, $s3, $a2
	andi	$a4, $a5, 255
	andi	$a3, $a6, 255
	bne	$a4, $s5, .LBB10_20
# %bb.19:                               #   in Loop: Header=BB10_18 Depth=3
	beq	$a3, $s5, .LBB10_17
.LBB10_20:                              # %._crit_edge135
                                        #   in Loop: Header=BB10_18 Depth=3
	slli.d	$a5, $a5, 9
	add.d	$a5, $s1, $a5
	slli.d	$a6, $a6, 2
	ldx.w	$a5, $a5, $a6
	add.w	$a5, $s8, $a5
	add.d	$a1, $a1, $a5
	addi.w	$a0, $a0, 1
	bne	$a4, $s5, .LBB10_23
# %bb.21:                               # %.preheader145.preheader
                                        #   in Loop: Header=BB10_18 Depth=3
	add.d	$a3, $s2, $a2
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB10_22:                              # %.preheader145
                                        #   Parent Loop BB10_13 Depth=1
                                        #     Parent Loop BB10_15 Depth=2
                                        #       Parent Loop BB10_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a4, $a3, 0
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	beq	$a4, $s5, .LBB10_22
	b	.LBB10_16
	.p2align	4, , 16
.LBB10_23:                              #   in Loop: Header=BB10_18 Depth=3
	bne	$a3, $s5, .LBB10_17
# %bb.24:                               # %.preheader146.preheader
                                        #   in Loop: Header=BB10_18 Depth=3
	add.d	$a3, $s3, $a2
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB10_25:                              # %.preheader146
                                        #   Parent Loop BB10_13 Depth=1
                                        #     Parent Loop BB10_15 Depth=2
                                        #       Parent Loop BB10_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a4, $a3, 0
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	beq	$a4, $s5, .LBB10_25
	b	.LBB10_16
.LBB10_26:
	movgr2fr.w	$fa0, $s8
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -784
	fadd.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa1, $fa0
	vldi	$vr1, -928
	fmul.d	$fs0, $fa0, $fa1
	ori	$a1, $zero, 2
	bge	$s8, $a1, .LBB10_10
.LBB10_27:
	movgr2fr.d	$fs1, $zero
	b	.LBB10_34
.LBB10_28:
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	b	.LBB10_34
.LBB10_29:
	movgr2fr.d	$fs0, $zero
	fmov.d	$fs1, $fs0
	b	.LBB10_34
.LBB10_30:                              # %.lr.ph95.preheader
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$fp, $a0, 8
	ori	$s0, $zero, 1
	pcalau12i	$a0, %pc_hi20(score_calc3.mseq1)
	addi.d	$s1, $a0, %pc_lo12(score_calc3.mseq1)
	pcalau12i	$a0, %pc_hi20(score_calc3.mseq2)
	addi.d	$s2, $a0, %pc_lo12(score_calc3.mseq2)
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI10_0)
	move	$s3, $zero
	.p2align	4, , 16
.LBB10_31:                              # %.lr.ph95
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_32 Depth 2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$s4, $s3, $a0, 3
	addi.d	$s3, $s3, 1
	move	$s5, $s8
	move	$s6, $fp
	.p2align	4, , 16
.LBB10_32:                              #   Parent Loop BB10_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 8
	bne	$s0, $s5, .LBB10_32
# %bb.33:                               # %.loopexit
                                        #   in Loop: Header=BB10_31 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bne	$s3, $a0, .LBB10_31
.LBB10_34:                              # %._crit_edge
	sltui	$a0, $s7, 1
	fdiv.d	$fa0, $fs1, $fs0
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fs1, $fa0, $fcc0
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
.LBB10_35:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	score_calc3, .Lfunc_end10-score_calc3
                                        # -- End function
	.globl	score_calc5                     # -- Begin function score_calc5
	.p2align	5
	.type	score_calc5,@function
score_calc5:                            # @score_calc5
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	move	$s1, $a3
	move	$fp, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB11_18
# %bb.1:                                # %.lr.ph160
	addi.w	$a1, $a0, 0
	addi.w	$a0, $a0, -2
	pcalau12i	$a2, %got_pc_hi20(penalty)
	ld.d	$a5, $a2, %got_pc_lo12(penalty)
	bstrpick.d	$a2, $s1, 31, 0
	slli.d	$a3, $s1, 3
	blez	$a1, .LBB11_19
# %bb.2:                                # %.lr.ph160.split.us.preheader
	ld.w	$a6, $a5, 0
	alsl.d	$a4, $s1, $s0, 3
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa2, $zero
	ori	$a6, $zero, 45
	pcalau12i	$a7, %got_pc_hi20(amino_dis)
	ld.d	$a7, $a7, %got_pc_lo12(amino_dis)
	move	$t0, $zero
	fmov.d	$fa0, $fa2
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_3:                               # %._crit_edge151.us
                                        #   in Loop: Header=BB11_5 Depth=1
	fmadd.d	$fa0, $fa4, $fa3, $fa0
.LBB11_4:                               #   in Loop: Header=BB11_5 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $s2, .LBB11_23
.LBB11_5:                               # %.lr.ph160.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
                                        #       Child Loop BB11_17 Depth 3
                                        #       Child Loop BB11_13 Depth 3
	beq	$t0, $a2, .LBB11_4
# %bb.6:                                # %.lr.ph150.us
                                        #   in Loop: Header=BB11_5 Depth=1
	slli.d	$t2, $t0, 3
	ldx.d	$t3, $fp, $t2
	ld.d	$t1, $a4, 0
	ldx.d	$t2, $s0, $t2
	fldx.d	$fa3, $t3, $a3
	move	$t3, $zero
	addi.d	$t4, $t1, 1
	addi.d	$t5, $t2, 1
	fmov.d	$fa4, $fa2
	b	.LBB11_9
	.p2align	4, , 16
.LBB11_7:                               # %._crit_edge.us
                                        #   in Loop: Header=BB11_9 Depth=2
	blt	$a0, $t3, .LBB11_3
.LBB11_8:                               #   in Loop: Header=BB11_9 Depth=2
	addi.w	$t3, $t3, 1
	bge	$t3, $a1, .LBB11_3
.LBB11_9:                               #   Parent Loop BB11_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_17 Depth 3
                                        #       Child Loop BB11_13 Depth 3
	ldx.b	$t6, $t2, $t3
	bne	$t6, $a6, .LBB11_14
# %bb.10:                               #   in Loop: Header=BB11_9 Depth=2
	ldx.b	$t6, $t1, $t3
	beq	$t6, $a6, .LBB11_8
# %bb.11:                               #   in Loop: Header=BB11_9 Depth=2
	alsl.d	$t6, $t6, $a7, 2
	ldptr.w	$t6, $t6, 23040
	addi.d	$t7, $t3, 1
	ldx.bu	$t8, $t2, $t7
	movgr2fr.w	$fa5, $t6
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa1
	bne	$t8, $a6, .LBB11_7
# %bb.12:                               # %.lr.ph143.us.preheader
                                        #   in Loop: Header=BB11_9 Depth=2
	add.d	$t6, $t1, $t7
	add.d	$t7, $t5, $t7
	.p2align	4, , 16
.LBB11_13:                              # %.lr.ph143.us
                                        #   Parent Loop BB11_5 Depth=1
                                        #     Parent Loop BB11_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$t8, $t6, 0
	alsl.d	$t8, $t8, $a7, 2
	ldptr.w	$t8, $t8, 23040
	movgr2fr.w	$fa5, $t8
	ffint.d.w	$fa5, $fa5
	ld.bu	$t8, $t7, 0
	fadd.d	$fa4, $fa4, $fa5
	addi.w	$t3, $t3, 1
	addi.d	$t6, $t6, 1
	addi.d	$t7, $t7, 1
	beq	$t8, $a6, .LBB11_13
	b	.LBB11_7
	.p2align	4, , 16
.LBB11_14:                              #   in Loop: Header=BB11_9 Depth=2
	ldx.b	$t7, $t1, $t3
	slli.d	$t6, $t6, 9
	add.d	$t6, $a7, $t6
	slli.d	$t8, $t7, 2
	ldx.w	$t6, $t6, $t8
	movgr2fr.w	$fa5, $t6
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	bne	$t7, $a6, .LBB11_8
# %bb.15:                               #   in Loop: Header=BB11_9 Depth=2
	addi.d	$t7, $t3, 1
	ldx.bu	$t6, $t1, $t7
	fadd.d	$fa4, $fa4, $fa1
	bne	$t6, $a6, .LBB11_7
# %bb.16:                               # %.lr.ph.us.preheader
                                        #   in Loop: Header=BB11_9 Depth=2
	add.d	$t6, $t2, $t7
	add.d	$t7, $t4, $t7
	.p2align	4, , 16
.LBB11_17:                              # %.lr.ph.us
                                        #   Parent Loop BB11_5 Depth=1
                                        #     Parent Loop BB11_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$t8, $t6, 0
	slli.d	$t8, $t8, 9
	add.d	$t8, $a7, $t8
	ld.w	$t8, $t8, 180
	movgr2fr.w	$fa5, $t8
	ffint.d.w	$fa5, $fa5
	ld.bu	$t8, $t7, 0
	fadd.d	$fa4, $fa4, $fa5
	addi.w	$t3, $t3, 1
	addi.d	$t6, $t6, 1
	addi.d	$t7, $t7, 1
	beq	$t8, $a6, .LBB11_17
	b	.LBB11_7
.LBB11_18:
	movgr2fr.d	$fa0, $zero
	b	.LBB11_24
.LBB11_19:                              # %.lr.ph160.split.preheader
	movgr2fr.d	$fa1, $zero
	move	$a4, $s2
	move	$a6, $fp
	fmov.d	$fa0, $fa1
	b	.LBB11_21
	.p2align	4, , 16
.LBB11_20:                              #   in Loop: Header=BB11_21 Depth=1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, -1
	beqz	$a4, .LBB11_23
.LBB11_21:                              # %.lr.ph160.split
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a2, .LBB11_20
# %bb.22:                               #   in Loop: Header=BB11_21 Depth=1
	ld.d	$a7, $a6, 0
	fldx.d	$fa2, $a7, $a3
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	b	.LBB11_20
.LBB11_23:                              # %.preheader
	ori	$a2, $zero, 1
	bne	$s2, $a2, .LBB11_25
.LBB11_24:                              # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB11_25:                              # %.lr.ph
	addi.w	$a2, $s2, -1
	bstrpick.d	$a3, $s1, 31, 0
	bstrpick.d	$a4, $s2, 31, 0
	blez	$a1, .LBB11_45
# %bb.26:                               # %.lr.ph183.us.preheader
	ld.w	$a5, $a5, 0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	ori	$a5, $zero, 1
	movgr2fr.d	$fa2, $zero
	ori	$a6, $zero, 45
	pcalau12i	$a7, %got_pc_hi20(amino_dis)
	ld.d	$a7, $a7, %got_pc_lo12(amino_dis)
	move	$t0, $zero
	b	.LBB11_28
	.p2align	4, , 16
.LBB11_27:                              # %.loopexit.us
                                        #   in Loop: Header=BB11_28 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$a5, $a5, 1
	beq	$t0, $a2, .LBB11_24
.LBB11_28:                              # %.lr.ph183.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_32 Depth 2
                                        #       Child Loop BB11_36 Depth 3
                                        #         Child Loop BB11_44 Depth 4
                                        #         Child Loop BB11_40 Depth 4
	beq	$t0, $a3, .LBB11_27
# %bb.29:                               # %.lr.ph183.split.us198.preheader
                                        #   in Loop: Header=BB11_28 Depth=1
	alsl.d	$t1, $t0, $fp, 3
	alsl.d	$t2, $t0, $s0, 3
	move	$t3, $a5
	b	.LBB11_32
	.p2align	4, , 16
.LBB11_30:                              # %._crit_edge174.us.us
                                        #   in Loop: Header=BB11_32 Depth=2
	fmadd.d	$fa0, $fa4, $fa3, $fa0
.LBB11_31:                              #   in Loop: Header=BB11_32 Depth=2
	addi.d	$t3, $t3, 1
	beq	$t3, $a4, .LBB11_27
.LBB11_32:                              # %.lr.ph183.split.us198
                                        #   Parent Loop BB11_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_36 Depth 3
                                        #         Child Loop BB11_44 Depth 4
                                        #         Child Loop BB11_40 Depth 4
	beq	$t3, $a3, .LBB11_31
# %bb.33:                               # %.lr.ph173.us.us
                                        #   in Loop: Header=BB11_32 Depth=2
	ld.d	$t6, $t1, 0
	slli.d	$t7, $t3, 3
	ldx.d	$t4, $s0, $t7
	ld.d	$t5, $t2, 0
	fldx.d	$fa3, $t6, $t7
	move	$t6, $zero
	addi.d	$t7, $t4, 1
	addi.d	$t8, $t5, 1
	fmov.d	$fa4, $fa2
	b	.LBB11_36
	.p2align	4, , 16
.LBB11_34:                              # %._crit_edge.us191.us
                                        #   in Loop: Header=BB11_36 Depth=3
	blt	$a0, $t6, .LBB11_30
.LBB11_35:                              #   in Loop: Header=BB11_36 Depth=3
	addi.w	$t6, $t6, 1
	bge	$t6, $a1, .LBB11_30
.LBB11_36:                              #   Parent Loop BB11_28 Depth=1
                                        #     Parent Loop BB11_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_44 Depth 4
                                        #         Child Loop BB11_40 Depth 4
	ldx.b	$s1, $t5, $t6
	bne	$s1, $a6, .LBB11_41
# %bb.37:                               #   in Loop: Header=BB11_36 Depth=3
	ldx.b	$s1, $t4, $t6
	beq	$s1, $a6, .LBB11_35
# %bb.38:                               #   in Loop: Header=BB11_36 Depth=3
	alsl.d	$s1, $s1, $a7, 2
	ldptr.w	$s1, $s1, 23040
	addi.d	$s2, $t6, 1
	ldx.bu	$s3, $t5, $s2
	movgr2fr.w	$fa5, $s1
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa1
	bne	$s3, $a6, .LBB11_34
# %bb.39:                               # %.lr.ph166.us.us.preheader
                                        #   in Loop: Header=BB11_36 Depth=3
	add.d	$s1, $t4, $s2
	add.d	$s2, $t8, $s2
	.p2align	4, , 16
.LBB11_40:                              # %.lr.ph166.us.us
                                        #   Parent Loop BB11_28 Depth=1
                                        #     Parent Loop BB11_32 Depth=2
                                        #       Parent Loop BB11_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$s3, $s1, 0
	alsl.d	$s3, $s3, $a7, 2
	ldptr.w	$s3, $s3, 23040
	movgr2fr.w	$fa5, $s3
	ffint.d.w	$fa5, $fa5
	ld.bu	$s3, $s2, 0
	fadd.d	$fa4, $fa4, $fa5
	addi.w	$t6, $t6, 1
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 1
	beq	$s3, $a6, .LBB11_40
	b	.LBB11_34
	.p2align	4, , 16
.LBB11_41:                              #   in Loop: Header=BB11_36 Depth=3
	ldx.b	$s2, $t4, $t6
	slli.d	$s1, $s1, 9
	add.d	$s1, $a7, $s1
	slli.d	$s3, $s2, 2
	ldx.w	$s1, $s1, $s3
	movgr2fr.w	$fa5, $s1
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	bne	$s2, $a6, .LBB11_35
# %bb.42:                               #   in Loop: Header=BB11_36 Depth=3
	addi.d	$s2, $t6, 1
	ldx.bu	$s1, $t4, $s2
	fadd.d	$fa4, $fa4, $fa1
	bne	$s1, $a6, .LBB11_34
# %bb.43:                               # %.lr.ph.us190.us.preheader
                                        #   in Loop: Header=BB11_36 Depth=3
	add.d	$s1, $t5, $s2
	add.d	$s2, $t7, $s2
	.p2align	4, , 16
.LBB11_44:                              # %.lr.ph.us190.us
                                        #   Parent Loop BB11_28 Depth=1
                                        #     Parent Loop BB11_32 Depth=2
                                        #       Parent Loop BB11_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$s3, $s1, 0
	slli.d	$s3, $s3, 9
	add.d	$s3, $a7, $s3
	ld.w	$s3, $s3, 180
	movgr2fr.w	$fa5, $s3
	ffint.d.w	$fa5, $fa5
	ld.bu	$s3, $s2, 0
	fadd.d	$fa4, $fa4, $fa5
	addi.w	$t6, $t6, 1
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 1
	beq	$s3, $a6, .LBB11_44
	b	.LBB11_34
.LBB11_45:                              # %.lr.ph183.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1
	ori	$a5, $zero, 8
	movgr2fr.d	$fa1, $zero
	b	.LBB11_47
	.p2align	4, , 16
.LBB11_46:                              # %.loopexit
                                        #   in Loop: Header=BB11_47 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 8
	beq	$a0, $a2, .LBB11_24
.LBB11_47:                              # %.lr.ph183
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_50 Depth 2
	beq	$a0, $a3, .LBB11_46
# %bb.48:                               # %.lr.ph183.split.preheader
                                        #   in Loop: Header=BB11_47 Depth=1
	alsl.d	$a6, $a0, $fp, 3
	move	$a7, $a4
	move	$t0, $a3
	move	$t1, $a5
	b	.LBB11_50
	.p2align	4, , 16
.LBB11_49:                              #   in Loop: Header=BB11_50 Depth=2
	addi.d	$t1, $t1, 8
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, -1
	beq	$a1, $a7, .LBB11_46
.LBB11_50:                              # %.lr.ph183.split
                                        #   Parent Loop BB11_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $t0, .LBB11_49
# %bb.51:                               #   in Loop: Header=BB11_50 Depth=2
	ld.d	$t2, $a6, 0
	fldx.d	$fa2, $t2, $t1
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	b	.LBB11_49
.Lfunc_end11:
	.size	score_calc5, .Lfunc_end11-score_calc5
                                        # -- End function
	.globl	score_calc4                     # -- Begin function score_calc4
	.p2align	5
	.type	score_calc4,@function
score_calc4:                            # @score_calc4
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
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	move	$fp, $a2
	move	$s0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	movgr2fr.d	$fa0, $zero
	blt	$s0, $a1, .LBB12_17
# %bb.1:                                # %.lr.ph
	addi.w	$a1, $s0, -1
	addi.w	$a2, $a0, 0
	pcalau12i	$a3, %got_pc_hi20(mix)
	ld.d	$a3, $a3, %got_pc_lo12(mix)
	ld.w	$a7, $a3, 0
	blez	$a2, .LBB12_19
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.w	$a0, $a0, -2
	pcalau12i	$a3, %got_pc_hi20(scoremtx)
	ld.d	$a3, $a3, %got_pc_lo12(scoremtx)
	ld.w	$a3, $a3, 0
	sltui	$a3, $a3, 1
	ori	$a4, $zero, 400
	maskeqz	$a3, $a4, $a3
	pcalau12i	$a4, %got_pc_hi20(penalty)
	ld.d	$a4, $a4, %got_pc_lo12(penalty)
	ld.w	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(n_dis)
	ld.d	$a5, $a5, %got_pc_lo12(n_dis)
	ori	$a6, $zero, 2496
	ldx.w	$a5, $a5, $a6
	move	$a6, $zero
	sub.w	$a4, $a4, $a5
	movgr2fr.d	$fa1, $zero
	ori	$a5, $zero, 1
	addi.d	$a7, $a7, -1
	sltui	$a7, $a7, 1
	vldi	$vr2, -912
	movgr2cf	$fcc0, $a7
	ori	$a7, $zero, 45
	fmov.d	$fa0, $fa1
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               # %.loopexit.us
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a6, $a1, .LBB12_18
.LBB12_4:                               # %.lr.ph76.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
                                        #       Child Loop BB12_9 Depth 3
                                        #         Child Loop BB12_16 Depth 4
                                        #         Child Loop BB12_13 Depth 4
	slli.d	$t1, $a6, 3
	ldx.d	$t0, $s1, $t1
	ldx.d	$t1, $fp, $t1
	addi.d	$a6, $a6, 1
	addi.d	$t2, $t0, 1
	move	$t3, $a5
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_5:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB12_6 Depth=2
	movgr2fr.d	$fa4, $t5
	ffint.d.l	$fa4, $fa4
	addi.d	$t3, $t3, 1
	fmadd.d	$fa1, $fa4, $fa3, $fa1
	beq	$t3, $s0, .LBB12_3
.LBB12_6:                               # %.lr.ph.us.us
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_9 Depth 3
                                        #         Child Loop BB12_16 Depth 4
                                        #         Child Loop BB12_13 Depth 4
	slli.d	$t4, $t3, 3
	fldx.d	$fa3, $t1, $t4
	ldx.d	$t4, $s1, $t4
	move	$t5, $zero
	move	$t7, $zero
	fsel	$fa3, $fa3, $fa2, $fcc0
	addi.d	$t6, $t4, 1
	b	.LBB12_9
	.p2align	4, , 16
.LBB12_7:                               #   in Loop: Header=BB12_9 Depth=3
	add.d	$t5, $t5, $a4
	blt	$a0, $t7, .LBB12_5
.LBB12_8:                               #   in Loop: Header=BB12_9 Depth=3
	addi.w	$t7, $t7, 1
	bge	$t7, $a2, .LBB12_5
.LBB12_9:                               #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_16 Depth 4
                                        #         Child Loop BB12_13 Depth 4
	ldx.b	$s4, $t0, $t7
	ldx.b	$s3, $t4, $t7
	andi	$s2, $s4, 255
	andi	$t8, $s3, 255
	bne	$s2, $a7, .LBB12_11
# %bb.10:                               #   in Loop: Header=BB12_9 Depth=3
	beq	$t8, $a7, .LBB12_8
.LBB12_11:                              # %._crit_edge125
                                        #   in Loop: Header=BB12_9 Depth=3
	slli.d	$s4, $s4, 9
	pcalau12i	$s5, %got_pc_hi20(amino_dis)
	ld.d	$s5, $s5, %got_pc_lo12(amino_dis)
	add.d	$s4, $s5, $s4
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $s4, $s3
	add.w	$s3, $a3, $s3
	add.d	$t5, $t5, $s3
	fadd.d	$fa0, $fa3, $fa0
	bne	$s2, $a7, .LBB12_14
# %bb.12:                               # %.preheader.preheader
                                        #   in Loop: Header=BB12_9 Depth=3
	addi.d	$s2, $t7, -1
	add.d	$t8, $t2, $t7
	move	$t7, $s2
	.p2align	4, , 16
.LBB12_13:                              # %.preheader
                                        #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_6 Depth=2
                                        #       Parent Loop BB12_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s2, $t8, 0
	addi.w	$t7, $t7, 1
	addi.d	$t8, $t8, 1
	beq	$s2, $a7, .LBB12_13
	b	.LBB12_7
	.p2align	4, , 16
.LBB12_14:                              #   in Loop: Header=BB12_9 Depth=3
	bne	$t8, $a7, .LBB12_8
# %bb.15:                               # %.preheader133.preheader
                                        #   in Loop: Header=BB12_9 Depth=3
	addi.d	$s2, $t7, -1
	add.d	$t8, $t6, $t7
	move	$t7, $s2
	.p2align	4, , 16
.LBB12_16:                              # %.preheader133
                                        #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_6 Depth=2
                                        #       Parent Loop BB12_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s2, $t8, 0
	addi.w	$t7, $t7, 1
	addi.d	$t8, $t8, 1
	beq	$s2, $a7, .LBB12_16
	b	.LBB12_7
.LBB12_17:
	fmov.d	$fa1, $fa0
.LBB12_18:                              # %._crit_edge
	fdiv.d	$fa0, $fa1, $fa0
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
.LBB12_19:                              # %.lr.ph.split
	ori	$a0, $zero, 1
	fmov.d	$fa1, $fa0
	beq	$a7, $a0, .LBB12_18
# %bb.20:                               # %.lr.ph.split.split.preheader
	move	$a3, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 8
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB12_21:                              # %.lr.ph76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_22 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $fp, $a4
	addi.d	$a3, $a3, 1
	add.d	$a4, $a4, $a2
	move	$a5, $s0
	.p2align	4, , 16
.LBB12_22:                              #   Parent Loop BB12_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a4, 0
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bne	$a0, $a5, .LBB12_22
# %bb.23:                               # %.loopexit
                                        #   in Loop: Header=BB12_21 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$a3, $a1, .LBB12_21
	b	.LBB12_18
.Lfunc_end12:
	.size	score_calc4, .Lfunc_end12-score_calc4
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function upg2
.LCPI13_0:
	.word	0x461c3c00                      # float 9999
	.text
	.globl	upg2
	.p2align	5
	.type	upg2,@function
upg2:                                   # @upg2
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	lu12i.w	$a4, 97
	ori	$a4, $a4, 720
	sub.d	$sp, $sp, $a4
	pcalau12i	$s4, %pc_hi20(upg2.pair)
	ld.d	$s3, $s4, %pc_lo12(upg2.pair)
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bnez	$s3, .LBB13_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s4, %pc_lo12(upg2.pair)
.LBB13_2:
	blez	$s2, .LBB13_10
# %bb.3:                                # %.preheader155.lr.ph
	slli.d	$a2, $s2, 3
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB13_4:                               # %.preheader155.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_5 Depth 2
	move	$a1, $zero
	alsl.d	$a2, $a0, $s3, 3
	.p2align	4, , 16
.LBB13_5:                               #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	stx.b	$zero, $a3, $a1
	addi.d	$a1, $a1, 1
	bne	$s2, $a1, .LBB13_5
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s2, .LBB13_4
# %bb.7:                                # %.lr.ph162
	move	$a0, $zero
	ori	$a1, $zero, 1
	move	$a2, $s3
	.p2align	4, , 16
.LBB13_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	stx.b	$a1, $a3, $a0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$s2, $a0, .LBB13_8
# %bb.9:                                # %.preheader153
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB13_11
.LBB13_10:                              # %._crit_edge197
	lu12i.w	$a0, 97
	ori	$a0, $a0, 720
	add.d	$sp, $sp, $a0
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB13_11:                              # %.preheader152.lr.ph
	move	$a0, $zero
	addi.w	$a1, $s2, -1
	addi.w	$a2, $zero, -1
	pcalau12i	$a3, %pc_hi20(.LCPI13_0)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI13_0)
	addi.d	$a3, $sp, 8
	vldi	$vr1, -928
	ori	$a4, $zero, 0
	lu32i.d	$a4, 231296
	lu52i.d	$a4, $a4, 1036
	b	.LBB13_13
	.p2align	4, , 16
.LBB13_12:                              # %._crit_edge195
                                        #   in Loop: Header=BB13_13 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB13_10
.LBB13_13:                              # %.lr.ph174.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_14 Depth 2
                                        #       Child Loop BB13_15 Depth 3
                                        #     Child Loop BB13_19 Depth 2
                                        #     Child Loop BB13_23 Depth 2
                                        #     Child Loop BB13_26 Depth 2
                                        #     Child Loop BB13_28 Depth 2
                                        #     Child Loop BB13_31 Depth 2
	move	$t2, $zero
	ori	$a6, $zero, 1
	ori	$a7, $zero, 8
	ori	$t0, $zero, 1
	move	$a5, $a2
	move	$t1, $a2
	fmov.s	$fa2, $fa0
	.p2align	4, , 16
.LBB13_14:                              # %.lr.ph167
                                        #   Parent Loop BB13_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_15 Depth 3
	move	$t3, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t4, $s1, $t2
	addi.d	$t2, $t3, 1
	add.d	$t4, $t4, $a7
	move	$t5, $s2
	move	$t6, $a6
	.p2align	4, , 16
.LBB13_15:                              #   Parent Loop BB13_13 Depth=1
                                        #     Parent Loop BB13_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $t4, 0
	fcvt.d.s	$fa4, $fa2
	fcmp.clt.d	$fcc0, $fa3, $fa4
	fcvt.s.d	$fa3, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc0
	movcf2gr	$t7, $fcc0
	masknez	$t1, $t1, $t7
	maskeqz	$t8, $t3, $t7
	or	$t1, $t8, $t1
	masknez	$a5, $a5, $t7
	maskeqz	$t7, $t6, $t7
	or	$a5, $t7, $a5
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, -1
	addi.w	$t6, $t6, 1
	bne	$t0, $t5, .LBB13_15
# %bb.16:                               # %.loopexit
                                        #   in Loop: Header=BB13_14 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 8
	addi.w	$a6, $a6, 1
	bne	$t2, $a1, .LBB13_14
# %bb.17:                               # %.lr.ph180
                                        #   in Loop: Header=BB13_13 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a7, $a6, 3
	ldx.d	$t0, $s3, $a7
	move	$t1, $zero
	move	$t3, $zero
	alsl.d	$t2, $a0, $s0, 3
	move	$t4, $s2
	b	.LBB13_19
	.p2align	4, , 16
.LBB13_18:                              #   in Loop: Header=BB13_19 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t4, $t4, -1
	addi.d	$t0, $t0, 1
	beqz	$t4, .LBB13_21
.LBB13_19:                              #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t5, $t0, 0
	blez	$t5, .LBB13_18
# %bb.20:                               #   in Loop: Header=BB13_19 Depth=2
	ld.d	$t5, $t2, 0
	ld.d	$t5, $t5, 0
	slli.d	$t6, $t3, 2
	stx.w	$t1, $t5, $t6
	addi.w	$t3, $t3, 1
	b	.LBB13_18
	.p2align	4, , 16
.LBB13_21:                              # %.lr.ph185
                                        #   in Loop: Header=BB13_13 Depth=1
	slli.d	$t0, $a0, 3
	ldx.d	$t2, $s0, $t0
	move	$t5, $zero
	move	$t1, $zero
	ld.d	$t7, $t2, 0
	slli.d	$t8, $t3, 2
	slli.d	$t4, $a5, 3
	ldx.d	$t6, $s3, $t4
	addi.w	$t3, $zero, -1
	lu32i.d	$t3, 0
	stx.w	$t3, $t7, $t8
	move	$t7, $s2
	b	.LBB13_23
	.p2align	4, , 16
.LBB13_22:                              #   in Loop: Header=BB13_23 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 1
	beqz	$t7, .LBB13_25
.LBB13_23:                              #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t8, $t6, 0
	blez	$t8, .LBB13_22
# %bb.24:                               #   in Loop: Header=BB13_23 Depth=2
	ld.d	$t8, $t2, 8
	slli.d	$s4, $t1, 2
	stx.w	$t5, $t8, $s4
	addi.w	$t1, $t1, 1
	b	.LBB13_22
	.p2align	4, , 16
.LBB13_25:                              # %.lr.ph190
                                        #   in Loop: Header=BB13_13 Depth=1
	ld.d	$t5, $t2, 8
	move	$t2, $zero
	fldx.d	$fa3, $t4, $a3
	slli.d	$t1, $t1, 2
	stx.w	$t3, $t5, $t1
	fldx.d	$fa4, $a7, $a3
	ldx.d	$t0, $fp, $t0
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fsub.d	$fa4, $fa2, $fa4
	fst.d	$fa4, $t0, 0
	fsub.d	$fa3, $fa2, $fa3
	fst.d	$fa3, $t0, 8
	fstx.d	$fa2, $a7, $a3
	alsl.d	$t0, $a5, $s3, 3
	alsl.d	$t1, $a6, $s3, 3
	.p2align	4, , 16
.LBB13_26:                              #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t0, 0
	ld.d	$t4, $t1, 0
	ldx.b	$t3, $t3, $t2
	ldx.b	$t5, $t4, $t2
	slt	$t3, $zero, $t3
	add.d	$t3, $t5, $t3
	stx.b	$t3, $t4, $t2
	addi.d	$t2, $t2, 1
	bne	$s2, $t2, .LBB13_26
# %bb.27:                               # %.lr.ph192
                                        #   in Loop: Header=BB13_13 Depth=1
	move	$t1, $zero
	.p2align	4, , 16
.LBB13_28:                              #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t0, 0
	stx.b	$zero, $t2, $t1
	addi.d	$t1, $t1, 1
	bne	$s2, $t1, .LBB13_28
# %bb.29:                               # %.lr.ph194
                                        #   in Loop: Header=BB13_13 Depth=1
	ldx.d	$t0, $s1, $a7
	move	$a7, $zero
	alsl.d	$t0, $a5, $t0, 3
	b	.LBB13_31
	.p2align	4, , 16
.LBB13_30:                              #   in Loop: Header=BB13_31 Depth=2
	addi.w	$a7, $a7, 1
	st.d	$a4, $t0, 0
	beq	$s2, $a7, .LBB13_12
.LBB13_31:                              #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a6, $a7, .LBB13_30
# %bb.32:                               #   in Loop: Header=BB13_31 Depth=2
	beq	$a5, $a7, .LBB13_30
# %bb.33:                               #   in Loop: Header=BB13_31 Depth=2
	slt	$t1, $a7, $a6
	masknez	$t2, $a6, $t1
	maskeqz	$t1, $a7, $t1
	or	$t1, $t1, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $s1, $t1
	slt	$t2, $a6, $a7
	masknez	$t3, $a6, $t2
	maskeqz	$t2, $a7, $t2
	or	$t2, $t2, $t3
	slli.d	$t2, $t2, 3
	fldx.d	$fa2, $t1, $t2
	slt	$t3, $a7, $a5
	masknez	$t4, $a5, $t3
	maskeqz	$t3, $a7, $t3
	or	$t3, $t3, $t4
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $s1, $t3
	slt	$t4, $a5, $a7
	masknez	$t5, $a5, $t4
	maskeqz	$t4, $a7, $t4
	or	$t4, $t4, $t5
	slli.d	$t4, $t4, 3
	fldx.d	$fa3, $t3, $t4
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa2, $fa2, $fa1
	fstx.d	$fa2, $t1, $t2
	stx.d	$a4, $t3, $t4
	b	.LBB13_30
.Lfunc_end13:
	.size	upg2, .Lfunc_end13-upg2
                                        # -- End function
	.globl	loadtree                        # -- Begin function loadtree
	.p2align	5
	.type	loadtree,@function
loadtree:                               # @loadtree
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	move	$s5, $a3
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	move	$s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	beqz	$a0, .LBB14_59
# %bb.1:
	pcalau12i	$s7, %pc_hi20(loadtree.hist)
	ld.d	$a0, $s7, %pc_lo12(loadtree.hist)
	pcalau12i	$s3, %pc_hi20(loadtree.ac)
	pcalau12i	$s2, %pc_hi20(loadtree.nmemar)
	pcalau12i	$s4, %pc_hi20(loadtree.treetmp)
	pcalau12i	$s1, %pc_hi20(loadtree.nametmp)
	pcalau12i	$s6, %pc_hi20(loadtree.tree)
	beqz	$a0, .LBB14_53
# %bb.2:
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	blez	$s8, .LBB14_54
.LBB14_3:                               # %.preheader218.lr.ph
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	ori	$fp, $zero, 95
	ori	$s0, $zero, 30
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s7, $a0, %pc_lo12(.L.str.11)
	move	$s8, $zero
	.p2align	4, , 16
.LBB14_4:                               # %.preheader218
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_5 Depth 2
	ld.d	$a1, $s1, %pc_lo12(loadtree.nametmp)
	move	$a0, $zero
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $a1, 8
	st.d	$zero, $a1, 22
	st.d	$zero, $a1, 0
	alsl.d	$a2, $s8, $s5, 3
	.p2align	4, , 16
.LBB14_5:                               #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	ldx.b	$a3, $a3, $a0
	ld.d	$a4, $s6, 0
	slli.d	$a5, $a3, 1
	ldx.hu	$a4, $a4, $a5
	andi	$a4, $a4, 8
	sltui	$a4, $a4, 1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $fp, $a4
	or	$a3, $a4, $a3
	stx.b	$a3, $a1, $a0
	addi.d	$a0, $a0, 1
	bne	$a0, $s0, .LBB14_5
# %bb.6:                                #   in Loop: Header=BB14_4 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(loadtree.tree)
	st.b	$zero, $a1, 30
	slli.d	$a2, $s8, 3
	ldx.d	$a0, $a0, $a2
	addi.d	$s8, $s8, 1
	addi.d	$a3, $a1, 1
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bne	$s8, $a0, .LBB14_4
# %bb.7:                                # %.lr.ph.preheader
	ld.d	$a3, $s3, %pc_lo12(loadtree.ac)
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a2, $fp, 4
	alsl.d	$a2, $fp, $a2, 3
	.p2align	4, , 16
.LBB14_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a3, $a0
	addi.d	$a5, $a4, 24
	stx.d	$a5, $a3, $a0
	addi.d	$a5, $a4, -24
	st.d	$a5, $a4, 8
	st.w	$a1, $a4, 16
	addi.d	$a0, $a0, 24
	addi.d	$a1, $a1, 1
	bne	$a2, $a0, .LBB14_8
# %bb.9:                                # %.lr.ph225
	move	$a0, $zero
	addi.w	$a5, $fp, -1
	slli.d	$a4, $a5, 4
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $s7, %pc_lo12(loadtree.hist)
	ld.d	$a2, $s2, %pc_lo12(loadtree.nmemar)
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a4, $a5, $a4, 3
	ori	$a5, $zero, 8
	stx.d	$zero, $a3, $a4
	bltu	$fp, $a5, .LBB14_14
# %bb.10:                               # %.lr.ph225
	sub.d	$a3, $a2, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB14_14
# %bb.11:                               # %vector.ph
	bstrpick.d	$a0, $fp, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a3, $a2, 16
	addi.d	$a4, $a1, 16
	vrepli.b	$vr0, -1
	vrepli.w	$vr1, 1
	move	$a5, $a0
	.p2align	4, , 16
.LBB14_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	vst	$vr1, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB14_12
# %bb.13:                               # %middle.block
	beq	$a0, $fp, .LBB14_16
.LBB14_14:                              # %scalar.ph.preheader
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a0, $fp, $a0
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB14_15:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a1, 0
	st.w	$a4, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB14_15
.LBB14_16:                              # %._crit_edge226
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	beq	$fp, $a0, .LBB14_55
# %bb.17:                               # %.lr.ph252
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 104857
	ori	$a0, $a0, 2457
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -264192
	bstrins.d	$a0, $a0, 62, 32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(loadtreeoneline.gett)
	addi.d	$a0, $a0, %pc_lo12(loadtreeoneline.gett)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$s6, $zero
	addi.w	$s8, $zero, -1
	movgr2fr.w	$fs0, $zero
	move	$a0, $s8
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 280479
	ori	$a0, $a0, 2458
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	b	.LBB14_19
	.p2align	4, , 16
.LBB14_18:                              #   in Loop: Header=BB14_19 Depth=1
	addi.d	$s6, $s6, 1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB14_55
.LBB14_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_30 Depth 2
                                        #     Child Loop BB14_33 Depth 2
                                        #     Child Loop BB14_42 Depth 2
                                        #     Child Loop BB14_45 Depth 2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $s6, $a0
	rotri.w	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB14_52
.LBB14_20:                              #   in Loop: Header=BB14_19 Depth=1
	slli.d	$s4, $s6, 3
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$s0, $fp, $s4
	addi.d	$s5, $s0, 4
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	ori	$a1, $zero, 999
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $s1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 216
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a3, $sp, 220
	move	$a4, $s0
	move	$a5, $s5
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 216
	ld.w	$a1, $sp, 220
	addi.w	$s5, $a0, -1
	st.w	$s5, $sp, 216
	addi.w	$s0, $a1, -1
	st.w	$s0, $sp, 220
	bge	$a0, $a1, .LBB14_58
# %bb.21:                               # %loadtreeoneline.exit
                                        #   in Loop: Header=BB14_19 Depth=1
	alsl.d	$s1, $s6, $fp, 3
	ld.d	$a0, $s1, 0
	fld.s	$fa1, $a0, 0
	vldi	$vr2, -1040
	fcmp.ceq.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB14_56
# %bb.22:                               #   in Loop: Header=BB14_19 Depth=1
	fld.s	$fa0, $a0, 4
	fcmp.cune.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB14_56
# %bb.23:                               #   in Loop: Header=BB14_19 Depth=1
	fcmp.cule.s	$fcc0, $fs0, $fa1
	bcnez	$fcc0, .LBB14_25
# %bb.24:                               #   in Loop: Header=BB14_19 Depth=1
	st.w	$zero, $a0, 0
.LBB14_25:                              #   in Loop: Header=BB14_19 Depth=1
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB14_27
# %bb.26:                               #   in Loop: Header=BB14_19 Depth=1
	st.w	$zero, $a0, 4
.LBB14_27:                              #   in Loop: Header=BB14_19 Depth=1
	ld.d	$a1, $s2, %pc_lo12(loadtree.nmemar)
	ld.d	$fp, $s7, %pc_lo12(loadtree.hist)
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $s2, $s4
	slli.d	$s7, $s5, 2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ldx.w	$a1, $a1, $s7
	ldx.w	$s3, $fp, $s7
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	addi.d	$a1, $a1, 4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s2, $s4
	st.d	$a0, $a1, 0
	beq	$s3, $s8, .LBB14_34
# %bb.28:                               #   in Loop: Header=BB14_19 Depth=1
	slli.d	$a2, $s3, 3
	ldx.d	$a2, $s2, $a2
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a2, 8
	ld.w	$a7, $a4, 0
	ld.w	$t0, $a5, 0
	slt	$a6, $t0, $a7
	slt	$a2, $a7, $t0
	masknez	$a3, $t0, $a2
	maskeqz	$a2, $a7, $a2
	or	$a3, $a2, $a3
	masknez	$a2, $a5, $a6
	maskeqz	$t1, $a4, $a6
	or	$a2, $t1, $a2
	beq	$a3, $s8, .LBB14_35
# %bb.29:                               # %.lr.ph231.preheader
                                        #   in Loop: Header=BB14_19 Depth=1
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a5, $a6
	or	$a4, $a5, $a4
	addi.d	$a4, $a4, 4
	.p2align	4, , 16
.LBB14_30:                              # %.lr.ph231
                                        #   Parent Loop BB14_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a0, 0
	ld.w	$a3, $a4, 0
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, 4
	bne	$a3, $s8, .LBB14_30
# %bb.31:                               # %.preheader215.loopexit
                                        #   in Loop: Header=BB14_19 Depth=1
	ld.w	$a3, $a2, 0
	beq	$a3, $s8, .LBB14_36
.LBB14_32:                              # %.lr.ph235.preheader
                                        #   in Loop: Header=BB14_19 Depth=1
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB14_33:                              # %.lr.ph235
                                        #   Parent Loop BB14_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a0, 0
	ld.w	$a3, $a2, 0
	addi.d	$a4, $a0, 4
	addi.d	$a2, $a2, 4
	move	$a0, $a4
	bne	$a3, $s8, .LBB14_33
	b	.LBB14_37
	.p2align	4, , 16
.LBB14_34:                              #   in Loop: Header=BB14_19 Depth=1
	st.w	$s5, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.w	$a2, $a0, 4
	b	.LBB14_38
	.p2align	4, , 16
.LBB14_35:                              #   in Loop: Header=BB14_19 Depth=1
	masknez	$a3, $t0, $a6
	maskeqz	$a4, $a7, $a6
	or	$a3, $a4, $a3
	bne	$a3, $s8, .LBB14_32
.LBB14_36:                              #   in Loop: Header=BB14_19 Depth=1
	move	$a4, $a0
.LBB14_37:                              # %._crit_edge236
                                        #   in Loop: Header=BB14_19 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.w	$a0, $a4, 0
.LBB14_38:                              #   in Loop: Header=BB14_19 Depth=1
	slli.d	$a0, $s0, 2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$s4, $a2, $a0
	ldx.w	$s3, $fp, $a0
	ld.d	$a0, $a1, 8
	alsl.d	$s2, $s6, $s2, 3
	slli.d	$a1, $s4, 2
	addi.d	$a1, $a1, 4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	st.d	$a0, $a1, 8
	beqz	$a0, .LBB14_57
# %bb.39:                               #   in Loop: Header=BB14_19 Depth=1
	beq	$s3, $s8, .LBB14_46
# %bb.40:                               #   in Loop: Header=BB14_19 Depth=1
	slli.d	$a1, $s3, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a1, 8
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a4, 0
	slt	$a5, $a7, $a6
	slt	$a1, $a6, $a7
	masknez	$a2, $a7, $a1
	maskeqz	$a1, $a6, $a1
	or	$a2, $a1, $a2
	masknez	$a1, $a4, $a5
	maskeqz	$t0, $a3, $a5
	or	$a1, $t0, $a1
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB14_47
# %bb.41:                               # %.lr.ph242.preheader
                                        #   in Loop: Header=BB14_19 Depth=1
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB14_42:                              # %.lr.ph242
                                        #   Parent Loop BB14_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $a0, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	bne	$a2, $s8, .LBB14_42
# %bb.43:                               # %.preheader.loopexit
                                        #   in Loop: Header=BB14_19 Depth=1
	ld.w	$a2, $a1, 0
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB14_48
.LBB14_44:                              # %.lr.ph247.preheader
                                        #   in Loop: Header=BB14_19 Depth=1
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB14_45:                              # %.lr.ph247
                                        #   Parent Loop BB14_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $a0, 0
	ld.w	$a2, $a1, 0
	addi.d	$a3, $a0, 4
	addi.d	$a1, $a1, 4
	move	$a0, $a3
	bne	$a2, $s8, .LBB14_45
	b	.LBB14_49
	.p2align	4, , 16
.LBB14_46:                              #   in Loop: Header=BB14_19 Depth=1
	st.w	$s0, $a0, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.w	$a1, $a0, 4
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB14_50
	.p2align	4, , 16
.LBB14_47:                              #   in Loop: Header=BB14_19 Depth=1
	masknez	$a2, $a7, $a5
	maskeqz	$a3, $a6, $a5
	or	$a2, $a3, $a2
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	bne	$a2, $s8, .LBB14_44
.LBB14_48:                              #   in Loop: Header=BB14_19 Depth=1
	move	$a3, $a0
.LBB14_49:                              # %._crit_edge248
                                        #   in Loop: Header=BB14_19 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
.LBB14_50:                              #   in Loop: Header=BB14_19 Depth=1
	alsl.d	$a0, $s5, $fp, 2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a1, $s5, $a1, 2
	st.w	$s6, $a0, 0
	add.d	$a3, $s4, $a4
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	stx.w	$a2, $a0, $s7
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a4, $s7, %pc_lo12(loadtree.tree)
	ld.d	$a5, $s1, 0
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s4, %pc_lo12(loadtree.treetmp)
	slli.d	$fp, $s5, 3
	ldx.d	$a2, $a4, $fp
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a5, 4
	slli.d	$a5, $s0, 3
	ldx.d	$a4, $a4, $a5
	st.w	$a3, $a1, 0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a5, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(loadtree.tree)
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $s4, %pc_lo12(loadtree.treetmp)
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(loadtree.ac)
	slli.d	$a0, $s0, 4
	alsl.d	$a2, $s0, $a0, 3
	add.d	$a0, $a1, $a2
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a1, $a2
	st.d	$a1, $a0, 0
	beqz	$a1, .LBB14_18
# %bb.51:                               #   in Loop: Header=BB14_19 Depth=1
	st.d	$a0, $a1, 8
	b	.LBB14_18
.LBB14_52:                              #   in Loop: Header=BB14_19 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB14_20
.LBB14_53:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s0, 0
	st.d	$a0, $s7, %pc_lo12(loadtree.hist)
	slli.d	$a0, $fp, 4
	alsl.d	$a0, $fp, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(loadtree.ac)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	st.d	$a0, $s2, %pc_lo12(loadtree.nmemar)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$fp, $zero, 50
	mul.w	$a0, $a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(loadtree.treetmp)
	ori	$a0, $zero, 30
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 0
	st.d	$a0, $s1, %pc_lo12(loadtree.nametmp)
	mul.w	$a1, $a2, $fp
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(loadtree.tree)
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	bgtz	$s8, .LBB14_3
.LBB14_54:                              # %._crit_edge226.thread
	ld.d	$a0, $s3, %pc_lo12(loadtree.ac)
	slli.d	$a1, $s8, 4
	alsl.d	$a1, $s8, $a1, 3
	add.d	$a0, $a0, $a1
	st.d	$zero, $a0, -24
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB14_55:                              # %._crit_edge253
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s4, %pc_lo12(loadtree.treetmp)
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(loadtree.tree)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(loadtree.treetmp)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(loadtree.nametmp)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(loadtree.hist)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(loadtree.ac)
	st.d	$zero, $s7, %pc_lo12(loadtree.hist)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(loadtree.nmemar)
	st.d	$zero, $s3, %pc_lo12(loadtree.ac)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, %pc_lo12(loadtree.nmemar)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB14_56:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB14_57:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB14_58:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB14_59:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	loadtree, .Lfunc_end14-loadtree
                                        # -- End function
	.globl	loadtop                         # -- Begin function loadtop
	.p2align	5
	.type	loadtop,@function
loadtop:                                # @loadtop
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	move	$s8, $a2
	move	$s2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(sueff1)
	lu12i.w	$a1, 259686
	ori	$a1, $a1, 1638
	st.w	$a1, $a0, %pc_lo12(sueff1)
	pcalau12i	$a0, %pc_hi20(sueff05)
	lu12i.w	$a1, 251084
	ori	$a1, $a1, 3277
	st.w	$a1, $a0, %pc_lo12(sueff05)
	pcalau12i	$a0, %got_pc_hi20(treemethod)
	ld.d	$a0, $a0, %got_pc_lo12(treemethod)
	ld.w	$a2, $a0, 0
	ori	$a0, $zero, 113
	beq	$a2, $a0, .LBB15_5
# %bb.1:
	ori	$a0, $zero, 88
	beq	$a2, $a0, .LBB15_4
# %bb.2:
	ori	$a0, $zero, 69
	bne	$a2, $a0, .LBB15_74
# %bb.3:
	pcalau12i	$a0, %pc_hi20(cluster_average_float)
	addi.d	$a0, $a0, %pc_lo12(cluster_average_float)
	b	.LBB15_6
.LBB15_4:
	pcalau12i	$a0, %pc_hi20(cluster_mix_float)
	addi.d	$a0, $a0, %pc_lo12(cluster_mix_float)
	b	.LBB15_6
.LBB15_5:
	pcalau12i	$a0, %pc_hi20(cluster_minimum_float)
	addi.d	$a0, $a0, %pc_lo12(cluster_minimum_float)
.LBB15_6:
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	beqz	$a0, .LBB15_73
# %bb.7:
	pcalau12i	$a0, %pc_hi20(loadtop.hist)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(loadtop.hist)
	pcalau12i	$a1, %pc_hi20(loadtop.treetmp)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(loadtop.tree)
	pcalau12i	$a1, %pc_hi20(loadtop.tmptmplen)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(loadtop.ac)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(loadtop.nmemar)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	beqz	$a0, .LBB15_67
# %bb.8:
	blez	$s1, .LBB15_68
.LBB15_9:                               # %.lr.ph.preheader
	slli.d	$fp, $s1, 3
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s5, $a0, %pc_lo12(.L.str.21)
	move	$s0, $zero
	.p2align	4, , 16
.LBB15_10:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, %pc_lo12(loadtop.tree)
	ldx.d	$a0, $a0, $s0
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.w	$s4, $s4, 1
	bne	$fp, $s0, .LBB15_10
# %bb.11:                               # %.lr.ph233.preheader
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(loadtop.ac)
	move	$a0, $zero
	move	$a2, $zero
	slli.d	$a3, $s1, 4
	alsl.d	$a3, $s1, $a3, 3
	.p2align	4, , 16
.LBB15_12:                              # %.lr.ph233
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	addi.d	$a5, $a4, 24
	stx.d	$a5, $a1, $a0
	addi.d	$a5, $a4, -24
	st.d	$a5, $a4, 8
	st.w	$a2, $a4, 16
	addi.d	$a0, $a0, 24
	addi.d	$a2, $a2, 1
	bne	$a3, $a0, .LBB15_12
# %bb.13:                               # %.lr.ph238
	addi.w	$a3, $s1, -1
	slli.d	$a2, $a3, 4
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(loadtop.tmptmplen)
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	alsl.d	$a2, $a3, $a2, 3
	stx.d	$zero, $a1, $a2
	slli.d	$a2, $s1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(loadtop.hist)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(loadtop.nmemar)
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$s1, $a3, .LBB15_18
# %bb.14:                               # %.lr.ph238
	sub.d	$a3, $a1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB15_18
# %bb.15:                               # %vector.ph
	bstrpick.d	$a2, $s1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 16
	addi.d	$a4, $a0, 16
	vrepli.b	$vr0, -1
	vrepli.w	$vr1, 1
	move	$a5, $a2
	.p2align	4, , 16
.LBB15_16:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	vst	$vr1, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB15_16
# %bb.17:                               # %middle.block
	beq	$a2, $s1, .LBB15_20
.LBB15_18:                              # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 2
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a2, $s1, $a2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB15_19:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a0, 0
	st.w	$a4, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB15_19
.LBB15_20:                              # %._crit_edge239
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	beq	$s1, $a0, .LBB15_69
# %bb.21:                               # %.lr.ph271
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 104857
	ori	$a0, $a0, 2457
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -264192
	bstrins.d	$a0, $a0, 62, 32
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(loadtreeoneline.gett)
	addi.d	$a0, $a0, %pc_lo12(loadtreeoneline.gett)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s6, $zero
	addi.w	$s4, $zero, -1
	move	$a0, $s4
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	st.d	$s8, $sp, 192                   # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	b	.LBB15_23
	.p2align	4, , 16
.LBB15_22:                              #   in Loop: Header=BB15_23 Depth=1
	ldx.d	$a0, $s2, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	stx.d	$zero, $s2, $s0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB15_69
.LBB15_23:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_30 Depth 2
                                        #     Child Loop BB15_33 Depth 2
                                        #     Child Loop BB15_42 Depth 2
                                        #     Child Loop BB15_45 Depth 2
                                        #     Child Loop BB15_59 Depth 2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a0, $s6, $a0
	rotri.w	$a0, $a0, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB15_66
.LBB15_24:                              #   in Loop: Header=BB15_23 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 216
	ori	$a1, $zero, 999
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 224
	addi.d	$a4, $sp, 216
	move	$a0, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a3, $sp, 228
	addi.d	$a5, $sp, 220
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 224
	ld.w	$a1, $sp, 228
	addi.w	$s7, $a0, -1
	st.w	$s7, $sp, 224
	addi.w	$fp, $a1, -1
	st.w	$fp, $sp, 228
	bge	$a0, $a1, .LBB15_72
# %bb.25:                               # %loadtreeoneline.exit
                                        #   in Loop: Header=BB15_23 Depth=1
	fld.s	$fa0, $sp, 216
	vldi	$vr1, -1040
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_70
# %bb.26:                               # %loadtreeoneline.exit
                                        #   in Loop: Header=BB15_23 Depth=1
	fld.s	$fa0, $sp, 220
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB15_70
# %bb.27:                               #   in Loop: Header=BB15_23 Depth=1
	slli.d	$a2, $s7, 3
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ldx.d	$a2, $s2, $a2
	sub.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 2
	fldx.s	$fs1, $a2, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(loadtop.hist)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(loadtop.nmemar)
	slli.d	$s1, $s6, 3
	ldx.d	$a0, $s8, $s1
	slli.d	$a2, $s7, 2
	ldx.w	$a1, $s3, $a2
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ldx.w	$s0, $s5, $a2
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	addi.d	$a1, $a1, 4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	ldx.d	$a1, $s8, $s1
	st.d	$a0, $a1, 0
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	beq	$s0, $s4, .LBB15_34
# %bb.28:                               #   in Loop: Header=BB15_23 Depth=1
	slli.d	$a2, $s0, 3
	ldx.d	$a2, $s8, $a2
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a2, 8
	ld.w	$a7, $a4, 0
	ld.w	$t0, $a5, 0
	slt	$a6, $t0, $a7
	slt	$a2, $a7, $t0
	masknez	$a3, $t0, $a2
	maskeqz	$a2, $a7, $a2
	or	$a3, $a2, $a3
	masknez	$a2, $a5, $a6
	maskeqz	$t1, $a4, $a6
	or	$a2, $t1, $a2
	beq	$a3, $s4, .LBB15_35
# %bb.29:                               # %.lr.ph244.preheader
                                        #   in Loop: Header=BB15_23 Depth=1
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a5, $a6
	or	$a4, $a5, $a4
	addi.d	$a4, $a4, 4
	.p2align	4, , 16
.LBB15_30:                              # %.lr.ph244
                                        #   Parent Loop BB15_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a0, 0
	ld.w	$a3, $a4, 0
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, 4
	bne	$a3, $s4, .LBB15_30
# %bb.31:                               # %.preheader228.loopexit
                                        #   in Loop: Header=BB15_23 Depth=1
	ld.w	$a3, $a2, 0
	beq	$a3, $s4, .LBB15_36
.LBB15_32:                              # %.lr.ph248.preheader
                                        #   in Loop: Header=BB15_23 Depth=1
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB15_33:                              # %.lr.ph248
                                        #   Parent Loop BB15_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a0, 0
	ld.w	$a3, $a2, 0
	addi.d	$a4, $a0, 4
	addi.d	$a2, $a2, 4
	move	$a0, $a4
	bne	$a3, $s4, .LBB15_33
	b	.LBB15_37
	.p2align	4, , 16
.LBB15_34:                              #   in Loop: Header=BB15_23 Depth=1
	st.w	$s7, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.w	$a2, $a0, 4
	b	.LBB15_38
	.p2align	4, , 16
.LBB15_35:                              #   in Loop: Header=BB15_23 Depth=1
	masknez	$a3, $t0, $a6
	maskeqz	$a4, $a7, $a6
	or	$a3, $a4, $a3
	bne	$a3, $s4, .LBB15_32
.LBB15_36:                              #   in Loop: Header=BB15_23 Depth=1
	move	$a4, $a0
.LBB15_37:                              # %._crit_edge249
                                        #   in Loop: Header=BB15_23 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.w	$a0, $a4, 0
.LBB15_38:                              #   in Loop: Header=BB15_23 Depth=1
	slli.d	$s1, $fp, 2
	move	$s6, $s3
	ldx.w	$s8, $s3, $s1
	move	$s3, $s5
	ldx.w	$s0, $s5, $s1
	ld.d	$a0, $a1, 8
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s5, $a2, $a1, 3
	slli.d	$a1, $s8, 2
	addi.d	$a1, $a1, 4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $a1, 8
	beqz	$a0, .LBB15_71
# %bb.39:                               #   in Loop: Header=BB15_23 Depth=1
	beq	$s0, $s4, .LBB15_46
# %bb.40:                               #   in Loop: Header=BB15_23 Depth=1
	slli.d	$a1, $s0, 3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a1, 8
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a4, 0
	slt	$a5, $a7, $a6
	slt	$a1, $a6, $a7
	masknez	$a2, $a7, $a1
	maskeqz	$a1, $a6, $a1
	or	$a2, $a1, $a2
	masknez	$a1, $a4, $a5
	maskeqz	$t0, $a3, $a5
	or	$a1, $t0, $a1
	beq	$a2, $s4, .LBB15_47
# %bb.41:                               # %.lr.ph255.preheader
                                        #   in Loop: Header=BB15_23 Depth=1
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	addi.d	$a3, $a3, 4
	move	$a4, $s6
	.p2align	4, , 16
.LBB15_42:                              # %.lr.ph255
                                        #   Parent Loop BB15_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $a0, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	bne	$a2, $s4, .LBB15_42
# %bb.43:                               # %.preheader.loopexit
                                        #   in Loop: Header=BB15_23 Depth=1
	ld.w	$a2, $a1, 0
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	beq	$a2, $s4, .LBB15_48
.LBB15_44:                              # %.lr.ph260.preheader
                                        #   in Loop: Header=BB15_23 Depth=1
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB15_45:                              # %.lr.ph260
                                        #   Parent Loop BB15_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $a0, 0
	ld.w	$a2, $a1, 0
	addi.d	$a3, $a0, 4
	addi.d	$a1, $a1, 4
	move	$a0, $a3
	bne	$a2, $s4, .LBB15_45
	b	.LBB15_49
	.p2align	4, , 16
.LBB15_46:                              #   in Loop: Header=BB15_23 Depth=1
	st.w	$fp, $a0, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.w	$a1, $a0, 4
	move	$a4, $s6
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	b	.LBB15_50
	.p2align	4, , 16
.LBB15_47:                              #   in Loop: Header=BB15_23 Depth=1
	masknez	$a2, $a7, $a5
	maskeqz	$a3, $a6, $a5
	or	$a2, $a3, $a2
	move	$a4, $s6
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	bne	$a2, $s4, .LBB15_44
.LBB15_48:                              #   in Loop: Header=BB15_23 Depth=1
	move	$a3, $a0
.LBB15_49:                              # %._crit_edge261
                                        #   in Loop: Header=BB15_23 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
.LBB15_50:                              #   in Loop: Header=BB15_23 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(loadtop.tmptmplen)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	fldx.s	$fa1, $a0, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	vldi	$vr0, -1184
	fmul.s	$fa0, $fs1, $fa0
	fsub.s	$fa2, $fa0, $fa1
	fst.s	$fa2, $a1, 0
	fldx.s	$fa1, $a0, $s1
	fsub.s	$fa1, $fa0, $fa1
	fcmp.cule.s	$fcc0, $fs0, $fa2
	fst.s	$fa1, $a1, 4
	bcnez	$fcc0, .LBB15_52
# %bb.51:                               #   in Loop: Header=BB15_23 Depth=1
	st.w	$zero, $a1, 0
.LBB15_52:                              #   in Loop: Header=BB15_23 Depth=1
	fcmp.cule.s	$fcc0, $fs0, $fa1
	bcnez	$fcc0, .LBB15_54
# %bb.53:                               #   in Loop: Header=BB15_23 Depth=1
	st.w	$zero, $a1, 4
.LBB15_54:                              #   in Loop: Header=BB15_23 Depth=1
	alsl.d	$a2, $s7, $s3, 2
	alsl.d	$a3, $s7, $a4, 2
	alsl.d	$a0, $s7, $a0, 2
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s0, $a4, %pc_lo12(loadtop.ac)
	fst.s	$fa0, $a0, 0
	st.w	$s6, $a2, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $s8, $a0
	st.w	$a0, $a3, 0
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	beqz	$s0, .LBB15_64
# %bb.55:                               # %.lr.ph267.preheader
                                        #   in Loop: Header=BB15_23 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s1, $s6, $a0, 3
	b	.LBB15_59
	.p2align	4, , 16
.LBB15_56:                              #   in Loop: Header=BB15_59 Depth=2
	move	$a2, $a0
	move	$a3, $a0
	move	$a1, $fp
	move	$a4, $s7
.LBB15_57:                              #   in Loop: Header=BB15_59 Depth=2
	slli.d	$s3, $a3, 3
	ldx.d	$a3, $s2, $s3
	sub.w	$a0, $a4, $a0
	slli.d	$s5, $a0, 2
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	fldx.s	$fa0, $a3, $s5
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	fldx.s	$fa1, $a0, $a1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	jirl	$ra, $a0, 0
	ldx.d	$a0, $s2, $s3
	fstx.s	$fa0, $a0, $s5
.LBB15_58:                              #   in Loop: Header=BB15_59 Depth=2
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB15_63
.LBB15_59:                              # %.lr.ph267
                                        #   Parent Loop BB15_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s0, 16
	beq	$a0, $s7, .LBB15_58
# %bb.60:                               # %.lr.ph267
                                        #   in Loop: Header=BB15_59 Depth=2
	beq	$a0, $fp, .LBB15_58
# %bb.61:                               #   in Loop: Header=BB15_59 Depth=2
	blt	$a0, $s7, .LBB15_56
# %bb.62:                               #   in Loop: Header=BB15_59 Depth=2
	slt	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a0, $fp
	masknez	$a3, $fp, $a2
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a3
	move	$a3, $s7
	move	$a4, $a0
	move	$a0, $s7
	b	.LBB15_57
	.p2align	4, , 16
.LBB15_63:                              # %._crit_edge268.loopexit
                                        #   in Loop: Header=BB15_23 Depth=1
	ld.d	$a1, $s1, 0
.LBB15_64:                              # %._crit_edge268
                                        #   in Loop: Header=BB15_23 Depth=1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $s3, %pc_lo12(loadtop.tree)
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $s1, %pc_lo12(loadtop.treetmp)
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a2, $a3, $s5
	fld.s	$fa0, $a1, 0
	slli.d	$s0, $fp, 3
	fld.s	$fa1, $a1, 4
	ldx.d	$a4, $a3, $s0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a5, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(loadtop.tree)
	ldx.d	$a0, $a0, $s5
	ld.d	$a1, $s1, %pc_lo12(loadtop.treetmp)
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(loadtop.ac)
	slli.d	$a0, $fp, 4
	alsl.d	$a2, $fp, $a0, 3
	add.d	$a0, $a1, $a2
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a1, $a2
	st.d	$a1, $a0, 0
	beqz	$a1, .LBB15_22
# %bb.65:                               #   in Loop: Header=BB15_23 Depth=1
	st.d	$a0, $a1, 8
	b	.LBB15_22
.LBB15_66:                              #   in Loop: Header=BB15_23 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB15_24
.LBB15_67:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	ori	$s0, $zero, 50
	mul.w	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(loadtop.treetmp)
	mul.w	$a1, $a2, $s0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s3, %pc_lo12(loadtop.tree)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(loadtop.hist)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.w	$s4, $fp, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(loadtop.tmptmplen)
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(loadtop.ac)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(loadtop.nmemar)
	bgtz	$s1, .LBB15_9
.LBB15_68:                              # %._crit_edge239.thread
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(loadtop.ac)
	slli.d	$a1, $s1, 4
	alsl.d	$a1, $s1, $a1, 3
	add.d	$a0, $a0, $a1
	st.d	$zero, $a0, -24
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB15_69:                              # %._crit_edge272
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(loadtop.treetmp)
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(loadtop.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(loadtop.hist)
	st.d	$zero, $s0, %pc_lo12(loadtop.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(loadtop.ac)
	st.d	$zero, $fp, %pc_lo12(loadtop.hist)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(loadtop.nmemar)
	st.d	$zero, $s0, %pc_lo12(loadtop.ac)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, %pc_lo12(loadtop.nmemar)
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB15_70:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB15_71:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB15_72:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB15_73:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB15_74:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	loadtop, .Lfunc_end15-loadtop
                                        # -- End function
	.p2align	5                               # -- Begin function cluster_mix_float
	.type	cluster_mix_float,@function
cluster_mix_float:                      # @cluster_mix_float
# %bb.0:
	fcmp.clt.s	$fcc0, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(sueff1)
	pcalau12i	$a1, %pc_hi20(sueff05)
	fld.s	$fa2, $a1, %pc_lo12(sueff05)
	fld.s	$fa3, $a0, %pc_lo12(sueff1)
	fsel	$fa4, $fa1, $fa0, $fcc0
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa0, $fa0, $fa2
	fmadd.s	$fa0, $fa4, $fa3, $fa0
	ret
.Lfunc_end16:
	.size	cluster_mix_float, .Lfunc_end16-cluster_mix_float
                                        # -- End function
	.p2align	5                               # -- Begin function cluster_average_float
	.type	cluster_average_float,@function
cluster_average_float:                  # @cluster_average_float
# %bb.0:
	fadd.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1184
	fmul.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end17:
	.size	cluster_average_float, .Lfunc_end17-cluster_average_float
                                        # -- End function
	.p2align	5                               # -- Begin function cluster_minimum_float
	.type	cluster_minimum_float,@function
cluster_minimum_float:                  # @cluster_minimum_float
# %bb.0:
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	ret
.Lfunc_end18:
	.size	cluster_minimum_float, .Lfunc_end18-cluster_minimum_float
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function fixed_musclesupg_float_realloc_nobk_halfmtx_treeout
.LCPI19_0:
	.word	0x4479f99a                      # float 999.900024
.LCPI19_1:
	.word	0x43f9f99a                      # float 499.950012
	.text
	.globl	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout
	.p2align	5
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout,@function
fixed_musclesupg_float_realloc_nobk_halfmtx_treeout: # @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	move	$s5, $a4
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	move	$s2, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(sueff1)
	lu12i.w	$a1, 259686
	ori	$a1, $a1, 1638
	st.w	$a1, $a0, %pc_lo12(sueff1)
	pcalau12i	$a0, %pc_hi20(sueff05)
	lu12i.w	$a1, 251084
	ori	$a1, $a1, 3277
	st.w	$a1, $a0, %pc_lo12(sueff05)
	pcalau12i	$a0, %got_pc_hi20(treemethod)
	ld.d	$a0, $a0, %got_pc_lo12(treemethod)
	ld.w	$a2, $a0, 0
	ori	$a0, $zero, 113
	beq	$a2, $a0, .LBB19_5
# %bb.1:
	ori	$a0, $zero, 88
	beq	$a2, $a0, .LBB19_4
# %bb.2:
	ori	$a0, $zero, 69
	bne	$a2, $a0, .LBB19_102
# %bb.3:
	pcalau12i	$a0, %pc_hi20(cluster_average_float)
	addi.d	$a0, $a0, %pc_lo12(cluster_average_float)
	b	.LBB19_6
.LBB19_4:
	pcalau12i	$a0, %pc_hi20(cluster_mix_float)
	addi.d	$a0, $a0, %pc_lo12(cluster_mix_float)
	b	.LBB19_6
.LBB19_5:
	pcalau12i	$a0, %pc_hi20(cluster_minimum_float)
	addi.d	$a0, $a0, %pc_lo12(cluster_minimum_float)
.LBB19_6:
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist)
	ld.d	$a0, $s8, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist)
	pcalau12i	$s4, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen)
	pcalau12i	$s6, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	pcalau12i	$a1, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp)
	pcalau12i	$s7, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp)
	pcalau12i	$a1, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	beqz	$a0, .LBB19_98
# %bb.7:
	move	$s0, $zero
	move	$s3, $zero
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	blez	$a2, .LBB19_99
.LBB19_8:                               # %.preheader325.lr.ph
	st.d	$s0, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	ori	$fp, $zero, 95
	ori	$s0, $zero, 30
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s7, $a0, %pc_lo12(.L.str.11)
	move	$s8, $zero
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB19_9:                               # %.preheader325
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_10 Depth 2
	ld.d	$a1, $s1, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp)
	move	$a0, $zero
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $a1, 8
	st.d	$zero, $a1, 22
	st.d	$zero, $a1, 0
	alsl.d	$a2, $s8, $s5, 3
	.p2align	4, , 16
.LBB19_10:                              #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	ldx.b	$a3, $a3, $a0
	ld.d	$a4, $s6, 0
	slli.d	$a5, $a3, 1
	ldx.hu	$a4, $a4, $a5
	andi	$a4, $a4, 8
	sltui	$a4, $a4, 1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $fp, $a4
	or	$a3, $a4, $a3
	stx.b	$a3, $a1, $a0
	addi.d	$a0, $a0, 1
	bne	$a0, $s0, .LBB19_10
# %bb.11:                               #   in Loop: Header=BB19_9 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree)
	st.b	$zero, $a1, 30
	slli.d	$a2, $s8, 3
	ldx.d	$a0, $a0, $a2
	addi.d	$s8, $s8, 1
	addi.d	$a3, $a1, 1
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$s8, $a0, .LBB19_9
# %bb.12:                               # %.lr.ph.preheader
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	move	$a0, $zero
	move	$a2, $zero
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a3, $fp, 4
	alsl.d	$a3, $fp, $a3, 3
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB19_13:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	addi.d	$a5, $a4, 24
	stx.d	$a5, $a1, $a0
	addi.d	$a5, $a4, -24
	st.d	$a5, $a4, 8
	st.w	$a2, $a4, 16
	addi.d	$a0, $a0, 24
	addi.d	$a2, $a2, 1
	bne	$a3, $a0, .LBB19_13
# %bb.14:                               # %.lr.ph334
	move	$a0, $zero
	addi.w	$a3, $fp, -1
	slli.d	$a2, $a3, 4
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$a2, $a3, $a2, 3
	stx.d	$zero, $a1, $a2
	ld.d	$a1, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	lu12i.w	$a2, 280479
	pcalau12i	$t1, %pc_hi20(.LCPI19_0)
	fld.s	$fa0, $t1, %pc_lo12(.LCPI19_0)
	addi.w	$t2, $zero, -1
	ori	$a2, $a2, 2458
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	st.d	$t2, $sp, 64                    # 8-byte Folded Spill
	lu32i.d	$t2, 0
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	b	.LBB19_16
	.p2align	4, , 16
.LBB19_15:                              # %setnearest.exit
                                        #   in Loop: Header=BB19_16 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $fp, .LBB19_27
.LBB19_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_19 Depth 2
                                        #     Child Loop BB19_24 Depth 2
	alsl.d	$a2, $a0, $s3, 2
	slli.d	$a3, $a0, 4
	alsl.d	$a3, $a0, $a3, 3
	ldx.d	$a4, $a1, $a3
	slli.d	$a5, $a0, 2
	alsl.d	$a3, $a0, $s0, 2
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	stx.w	$a6, $s3, $a5
	stx.w	$t2, $s0, $a5
	fmov.s	$fa1, $fa0
	beqz	$a4, .LBB19_22
# %bb.17:                               # %.lr.ph.i
                                        #   in Loop: Header=BB19_16 Depth=1
	slli.d	$a5, $a0, 3
	ldx.d	$a5, $s2, $a5
	fmov.s	$fa1, $fa0
	b	.LBB19_19
	.p2align	4, , 16
.LBB19_18:                              #   in Loop: Header=BB19_19 Depth=2
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB19_21
.LBB19_19:                              #   Parent Loop BB19_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a4, 16
	sub.w	$a7, $a6, $a0
	slli.d	$a7, $a7, 2
	fldx.s	$fa2, $a5, $a7
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB19_18
# %bb.20:                               #   in Loop: Header=BB19_19 Depth=2
	fst.s	$fa2, $a2, 0
	st.w	$a6, $a3, 0
	fmov.s	$fa1, $fa2
	b	.LBB19_18
	.p2align	4, , 16
.LBB19_21:                              # %.preheader.i
                                        #   in Loop: Header=BB19_16 Depth=1
	beqz	$a1, .LBB19_15
.LBB19_22:                              # %.lr.ph42.preheader.i
                                        #   in Loop: Header=BB19_16 Depth=1
	move	$a4, $a1
	b	.LBB19_24
	.p2align	4, , 16
.LBB19_23:                              #   in Loop: Header=BB19_24 Depth=2
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB19_15
.LBB19_24:                              # %.lr.ph42.i
                                        #   Parent Loop BB19_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.wu	$a5, $a4, 16
	beq	$a0, $a5, .LBB19_15
# %bb.25:                               #   in Loop: Header=BB19_24 Depth=2
	addi.w	$a6, $a5, 0
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s2, $a6
	sub.w	$a7, $a0, $a5
	slli.d	$a7, $a7, 2
	fldx.s	$fa2, $a6, $a7
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB19_23
# %bb.26:                               #   in Loop: Header=BB19_24 Depth=2
	fst.s	$fa2, $a2, 0
	st.w	$a5, $a3, 0
	fmov.s	$fa1, $fa2
	b	.LBB19_23
.LBB19_27:                              # %.lr.ph338
	st.d	$t2, $sp, 32                    # 8-byte Folded Spill
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $t0, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen)
	slli.d	$a2, $fp, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar)
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$fp, $a3, .LBB19_32
# %bb.28:                               # %.lr.ph338
	sub.d	$a3, $a1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB19_32
# %bb.29:                               # %vector.ph
	bstrpick.d	$a2, $fp, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 16
	addi.d	$a4, $a0, 16
	vrepli.b	$vr0, -1
	vrepli.w	$vr1, 1
	move	$a5, $a2
	.p2align	4, , 16
.LBB19_30:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	vst	$vr1, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB19_30
# %bb.31:                               # %middle.block
	beq	$a2, $fp, .LBB19_34
.LBB19_32:                              # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 2
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a2, $fp, $a2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB19_33:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a0, 0
	st.w	$a4, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB19_33
.LBB19_34:                              # %._crit_edge339
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB19_100
# %bb.35:                               # %.lr.ph388.preheader
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 104857
	ori	$a0, $a0, 2457
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI19_1)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI19_1)
	move	$a2, $zero
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB19_37
	.p2align	4, , 16
.LBB19_36:                              # %._crit_edge384
                                        #   in Loop: Header=BB19_37 Depth=1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB19_100
.LBB19_37:                              # %.lr.ph388
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_40 Depth 2
                                        #     Child Loop BB19_47 Depth 2
                                        #     Child Loop BB19_50 Depth 2
                                        #     Child Loop BB19_59 Depth 2
                                        #     Child Loop BB19_62 Depth 2
                                        #     Child Loop BB19_70 Depth 2
                                        #     Child Loop BB19_86 Depth 2
                                        #       Child Loop BB19_90 Depth 3
                                        #       Child Loop BB19_95 Depth 3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	rotri.w	$a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	bgeu	$a1, $a0, .LBB19_42
# %bb.38:                               #   in Loop: Header=BB19_37 Depth=1
	ld.d	$a1, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB19_43
.LBB19_39:                              # %.lr.ph346.preheader
                                        #   in Loop: Header=BB19_37 Depth=1
	fld.s	$fa0, $t1, %pc_lo12(.LCPI19_0)
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB19_40:                              # %.lr.ph346
                                        #   Parent Loop BB19_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 16
	slli.d	$a1, $a2, 2
	fldx.s	$fa1, $s3, $a1
	fcmp.clt.s	$fcc0, $fa1, $fa0
	move	$a1, $a0
	ld.d	$a0, $a0, 0
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $s7, $a3
	maskeqz	$a2, $a2, $a3
	or	$s7, $a2, $a4
	bnez	$a0, .LBB19_40
# %bb.41:                               # %._crit_edge347.loopexit
                                        #   in Loop: Header=BB19_37 Depth=1
	vldi	$vr1, -1184
	fmul.s	$fs1, $fa0, $fa1
	move	$fp, $s7
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	b	.LBB19_44
.LBB19_42:                              #   in Loop: Header=BB19_37 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	move	$fp, $t3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$t3, $fp
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	ld.d	$a0, $a1, 0
	bnez	$a0, .LBB19_39
	.p2align	4, , 16
.LBB19_43:                              #   in Loop: Header=BB19_37 Depth=1
	move	$fp, $s7
	fmov.s	$fs1, $fs0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
.LBB19_44:                              # %._crit_edge347
                                        #   in Loop: Header=BB19_37 Depth=1
	slli.d	$a0, $fp, 2
	ldx.w	$s1, $s0, $a0
	slt	$a0, $s1, $fp
	maskeqz	$a1, $s1, $a0
	masknez	$a0, $fp, $a0
	or	$s7, $a1, $a0
	ld.d	$a3, $s8, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist)
	ld.d	$s8, $t3, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar)
	slli.d	$s4, $a2, 3
	ldx.d	$a0, $s6, $s4
	slli.d	$s0, $s7, 2
	ldx.w	$a1, $s8, $s0
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	ldx.w	$s5, $a3, $s0
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	addi.d	$a1, $a1, 4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	ldx.d	$a1, $s6, $s4
	st.d	$a0, $a1, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	beq	$s5, $a2, .LBB19_51
# %bb.45:                               #   in Loop: Header=BB19_37 Depth=1
	slli.d	$a2, $s5, 3
	ldx.d	$a2, $s6, $a2
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a2, 8
	ld.w	$t0, $a5, 0
	ld.w	$t1, $a6, 0
	slt	$a7, $t1, $t0
	slt	$a2, $t0, $t1
	masknez	$a3, $t1, $a2
	maskeqz	$a2, $t0, $a2
	or	$a4, $a2, $a3
	masknez	$a3, $a6, $a7
	maskeqz	$t2, $a5, $a7
	addi.w	$a2, $zero, -1
	or	$a3, $t2, $a3
	beq	$a4, $a2, .LBB19_52
# %bb.46:                               # %.lr.ph353.preheader
                                        #   in Loop: Header=BB19_37 Depth=1
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a5, $a6, $a5
	addi.d	$a5, $a5, 4
	.p2align	4, , 16
.LBB19_47:                              # %.lr.ph353
                                        #   Parent Loop BB19_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a4, $a0, 0
	ld.w	$a4, $a5, 0
	addi.d	$a0, $a0, 4
	addi.d	$a5, $a5, 4
	bne	$a4, $a2, .LBB19_47
# %bb.48:                               # %.preheader320.loopexit
                                        #   in Loop: Header=BB19_37 Depth=1
	ld.w	$a4, $a3, 0
	beq	$a4, $a2, .LBB19_53
.LBB19_49:                              # %.lr.ph358.preheader
                                        #   in Loop: Header=BB19_37 Depth=1
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB19_50:                              # %.lr.ph358
                                        #   Parent Loop BB19_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a4, $a0, 0
	ld.w	$a4, $a3, 0
	addi.d	$a5, $a0, 4
	addi.d	$a3, $a3, 4
	move	$a0, $a5
	bne	$a4, $a2, .LBB19_50
	b	.LBB19_54
	.p2align	4, , 16
.LBB19_51:                              #   in Loop: Header=BB19_37 Depth=1
	st.w	$s7, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.w	$a2, $a0, 4
	b	.LBB19_55
	.p2align	4, , 16
.LBB19_52:                              #   in Loop: Header=BB19_37 Depth=1
	masknez	$a4, $t1, $a7
	maskeqz	$a5, $t0, $a7
	or	$a4, $a5, $a4
	bne	$a4, $a2, .LBB19_49
.LBB19_53:                              #   in Loop: Header=BB19_37 Depth=1
	move	$a5, $a0
.LBB19_54:                              # %._crit_edge359
                                        #   in Loop: Header=BB19_37 Depth=1
	lu32i.d	$a2, 0
	st.w	$a2, $a5, 0
.LBB19_55:                              #   in Loop: Header=BB19_37 Depth=1
	slt	$a0, $fp, $s1
	maskeqz	$a2, $s1, $a0
	masknez	$a0, $fp, $a0
	or	$fp, $a2, $a0
	slli.d	$s5, $fp, 2
	move	$s4, $s8
	ldx.w	$s8, $s8, $s5
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$s6, $a0, $s5
	ld.d	$a0, $a1, 8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s1, $a2, $a1, 3
	slli.d	$a1, $s8, 2
	addi.d	$a1, $a1, 4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $a1, 8
	beqz	$a0, .LBB19_101
# %bb.56:                               #   in Loop: Header=BB19_37 Depth=1
	addi.w	$s1, $zero, -1
	beq	$s6, $s1, .LBB19_63
# %bb.57:                               #   in Loop: Header=BB19_37 Depth=1
	slli.d	$a1, $s6, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a1, 8
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a4, 0
	slt	$a5, $a7, $a6
	slt	$a1, $a6, $a7
	masknez	$a2, $a7, $a1
	maskeqz	$a1, $a6, $a1
	or	$a2, $a1, $a2
	masknez	$a1, $a4, $a5
	maskeqz	$t0, $a3, $a5
	or	$a1, $t0, $a1
	beq	$a2, $s1, .LBB19_64
# %bb.58:                               # %.lr.ph365.preheader
                                        #   in Loop: Header=BB19_37 Depth=1
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB19_59:                              # %.lr.ph365
                                        #   Parent Loop BB19_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $a0, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	bne	$a2, $s1, .LBB19_59
# %bb.60:                               # %.preheader.loopexit
                                        #   in Loop: Header=BB19_37 Depth=1
	ld.w	$a2, $a1, 0
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $s1, .LBB19_65
.LBB19_61:                              # %.lr.ph370.preheader
                                        #   in Loop: Header=BB19_37 Depth=1
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB19_62:                              # %.lr.ph370
                                        #   Parent Loop BB19_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $a0, 0
	ld.w	$a2, $a1, 0
	addi.d	$a3, $a0, 4
	addi.d	$a1, $a1, 4
	move	$a0, $a3
	bne	$a2, $s1, .LBB19_62
	b	.LBB19_66
	.p2align	4, , 16
.LBB19_63:                              #   in Loop: Header=BB19_37 Depth=1
	st.w	$fp, $a0, 0
	move	$a1, $s1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 4
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	b	.LBB19_67
	.p2align	4, , 16
.LBB19_64:                              #   in Loop: Header=BB19_37 Depth=1
	masknez	$a2, $a7, $a5
	maskeqz	$a3, $a6, $a5
	or	$a2, $a3, $a2
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	bne	$a2, $s1, .LBB19_61
.LBB19_65:                              #   in Loop: Header=BB19_37 Depth=1
	move	$a3, $a0
.LBB19_66:                              # %._crit_edge371
                                        #   in Loop: Header=BB19_37 Depth=1
	move	$a0, $s1
	lu32i.d	$a0, 0
	st.w	$a0, $a3, 0
.LBB19_67:                              #   in Loop: Header=BB19_37 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen)
	fldx.s	$fa0, $a0, $s0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	fsub.s	$fa0, $fs1, $fa0
	fst.s	$fa0, $a1, 0
	fldx.s	$fa0, $a0, $s5
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a2, $s7, $a2, 2
	alsl.d	$a3, $s7, $s4, 2
	fsub.s	$fa0, $fs1, $fa0
	fst.s	$fa0, $a1, 4
	fstx.s	$fs1, $a0, $s0
	ld.d	$s5, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $s8, $a0
	st.w	$a0, $a3, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	stx.w	$a0, $s3, $s0
	beqz	$s5, .LBB19_81
# %bb.68:                               # %.lr.ph377
                                        #   in Loop: Header=BB19_37 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$s8, $s7, $s3, 2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 2
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	b	.LBB19_70
	.p2align	4, , 16
.LBB19_69:                              #   in Loop: Header=BB19_70 Depth=2
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB19_80
.LBB19_70:                              #   Parent Loop BB19_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s6, $s5, 16
	beq	$s6, $s7, .LBB19_69
# %bb.71:                               #   in Loop: Header=BB19_70 Depth=2
	beq	$s6, $fp, .LBB19_69
# %bb.72:                               #   in Loop: Header=BB19_70 Depth=2
	move	$a1, $s6
	move	$a2, $s6
	move	$a0, $fp
	move	$a3, $s7
	move	$a4, $s6
	blt	$s6, $s7, .LBB19_74
# %bb.73:                               #   in Loop: Header=BB19_70 Depth=2
	slt	$a0, $fp, $s6
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	slt	$a1, $s6, $fp
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	move	$a2, $s7
	move	$a3, $s6
	move	$a4, $s7
.LBB19_74:                              #   in Loop: Header=BB19_70 Depth=2
	slli.d	$s0, $a2, 3
	ldx.d	$a2, $s2, $s0
	sub.w	$a3, $a3, $a4
	slli.d	$s4, $a3, 2
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $s2, $a3
	fldx.s	$fa0, $a2, $s4
	sub.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	fldx.s	$fa1, $a3, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	jirl	$ra, $a0, 0
	ldx.d	$a0, $s2, $s0
	fstx.s	$fa0, $a0, $s4
	slli.d	$a0, $s6, 2
	fldx.s	$fa1, $s3, $a0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB19_77
# %bb.75:                               #   in Loop: Header=BB19_70 Depth=2
	fld.s	$fa1, $s8, 0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB19_78
.LBB19_76:                              #   in Loop: Header=BB19_70 Depth=2
	ldx.w	$a0, $a2, $a0
	bne	$a0, $fp, .LBB19_69
	b	.LBB19_79
	.p2align	4, , 16
.LBB19_77:                              #   in Loop: Header=BB19_70 Depth=2
	alsl.d	$a1, $s6, $s3, 2
	fst.s	$fa0, $a1, 0
	stx.w	$s7, $a2, $a0
	fld.s	$fa1, $s8, 0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB19_76
.LBB19_78:                              #   in Loop: Header=BB19_70 Depth=2
	fst.s	$fa0, $s8, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.w	$s6, $a1, 0
	ldx.w	$a0, $a2, $a0
	bne	$a0, $fp, .LBB19_69
.LBB19_79:                              #   in Loop: Header=BB19_70 Depth=2
	alsl.d	$a0, $s6, $a2, 2
	st.w	$s7, $a0, 0
	b	.LBB19_69
	.p2align	4, , 16
.LBB19_80:                              # %._crit_edge378.loopexit
                                        #   in Loop: Header=BB19_37 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
.LBB19_81:                              # %._crit_edge378
                                        #   in Loop: Header=BB19_37 Depth=1
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $s8, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree)
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s5, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp)
	slli.d	$s4, $s7, 3
	ldx.d	$a2, $a3, $s4
	fld.s	$fa0, $a1, 0
	slli.d	$s0, $fp, 3
	fld.s	$fa1, $a1, 4
	ldx.d	$a4, $a3, $s0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a5, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree)
	ldx.d	$a0, $a0, $s4
	ld.d	$a1, $s5, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp)
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	slli.d	$a0, $fp, 4
	alsl.d	$a2, $fp, $a0, 3
	add.d	$a0, $a1, $a2
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a1, $a2
	st.d	$a1, $a0, 0
	beqz	$a1, .LBB19_83
# %bb.82:                               #   in Loop: Header=BB19_37 Depth=1
	st.d	$a0, $a1, 8
.LBB19_83:                              #   in Loop: Header=BB19_37 Depth=1
	ldx.d	$a0, $s2, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	stx.d	$zero, $s2, $s0
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB19_36
# %bb.84:                               # %.lr.ph383.preheader
                                        #   in Loop: Header=BB19_37 Depth=1
	move	$a1, $a0
	b	.LBB19_86
	.p2align	4, , 16
.LBB19_85:                              # %setnearest.exit319
                                        #   in Loop: Header=BB19_86 Depth=2
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB19_36
.LBB19_86:                              # %.lr.ph383
                                        #   Parent Loop BB19_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_90 Depth 3
                                        #       Child Loop BB19_95 Depth 3
	ld.w	$a2, $a1, 16
	slli.d	$a6, $a2, 2
	ldx.w	$a3, $s0, $a6
	bne	$a3, $s7, .LBB19_85
# %bb.87:                               #   in Loop: Header=BB19_86 Depth=2
	alsl.d	$a3, $a2, $s0, 2
	slli.d	$a4, $a2, 4
	alsl.d	$a4, $a2, $a4, 3
	ldx.d	$a5, $a0, $a4
	alsl.d	$a4, $a2, $s3, 2
	stx.w	$t2, $s3, $a6
	move	$a6, $s1
	lu32i.d	$a6, 0
	st.w	$a6, $a3, 0
	beqz	$a5, .LBB19_92
# %bb.88:                               # %.lr.ph.i308
                                        #   in Loop: Header=BB19_86 Depth=2
	slli.d	$a6, $a2, 3
	ldx.d	$a6, $s2, $a6
	fld.s	$fa0, $t1, %pc_lo12(.LCPI19_0)
	b	.LBB19_90
	.p2align	4, , 16
.LBB19_89:                              #   in Loop: Header=BB19_90 Depth=3
	ld.d	$a5, $a5, 0
	beqz	$a5, .LBB19_93
.LBB19_90:                              #   Parent Loop BB19_37 Depth=1
                                        #     Parent Loop BB19_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a5, 16
	sub.w	$t0, $a7, $a2
	slli.d	$t0, $t0, 2
	fldx.s	$fa1, $a6, $t0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_89
# %bb.91:                               #   in Loop: Header=BB19_90 Depth=3
	fst.s	$fa1, $a4, 0
	st.w	$a7, $a3, 0
	fmov.s	$fa0, $fa1
	b	.LBB19_89
.LBB19_92:                              #   in Loop: Header=BB19_86 Depth=2
	fld.s	$fa0, $t1, %pc_lo12(.LCPI19_0)
.LBB19_93:                              # %.lr.ph42.i315.preheader
                                        #   in Loop: Header=BB19_86 Depth=2
	move	$a5, $a0
	b	.LBB19_95
	.p2align	4, , 16
.LBB19_94:                              #   in Loop: Header=BB19_95 Depth=3
	ld.d	$a5, $a5, 0
	beqz	$a5, .LBB19_85
.LBB19_95:                              # %.lr.ph42.i315
                                        #   Parent Loop BB19_37 Depth=1
                                        #     Parent Loop BB19_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a5, 16
	beq	$a2, $a6, .LBB19_85
# %bb.96:                               #   in Loop: Header=BB19_95 Depth=3
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $s2, $a7
	sub.w	$t0, $a2, $a6
	slli.d	$t0, $t0, 2
	fldx.s	$fa1, $a7, $t0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_94
# %bb.97:                               #   in Loop: Header=BB19_95 Depth=3
	fst.s	$fa1, $a4, 0
	st.w	$a6, $a3, 0
	fmov.s	$fa0, $fa1
	b	.LBB19_94
.LBB19_98:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s8, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 0
	st.d	$a0, $s4, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen)
	slli.d	$a0, $s3, 4
	alsl.d	$a0, $s3, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s1, $a0
	ori	$a0, $zero, 50
	mul.w	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp)
	move	$s0, $s1
	ori	$a0, $zero, 30
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 0
	st.d	$a0, $s7, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp)
	ori	$a0, $zero, 50
	mul.w	$a1, $a2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree)
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bgtz	$a2, .LBB19_8
.LBB19_99:                              # %.preheader322.thread
	ld.d	$a0, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a0, $a0, $a1
	st.d	$zero, $a0, -24
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
.LBB19_100:                             # %._crit_edge389
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	move	$s2, $t3
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp)
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist)
	st.d	$zero, $fp, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	st.d	$zero, $s8, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar)
	st.d	$zero, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB19_101:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB19_102:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout, .Lfunc_end19-fixed_musclesupg_float_realloc_nobk_halfmtx_treeout
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function fixed_musclesupg_float_realloc_nobk_halfmtx
.LCPI20_0:
	.word	0x4479f99a                      # float 999.900024
.LCPI20_1:
	.word	0x43f9f99a                      # float 499.950012
	.text
	.globl	fixed_musclesupg_float_realloc_nobk_halfmtx
	.p2align	5
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx,@function
fixed_musclesupg_float_realloc_nobk_halfmtx: # @fixed_musclesupg_float_realloc_nobk_halfmtx
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
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 184                  # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	move	$s4, $a2
	move	$s2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(sueff1)
	lu12i.w	$a1, 259686
	ori	$a1, $a1, 1638
	st.w	$a1, $a0, %pc_lo12(sueff1)
	pcalau12i	$a0, %pc_hi20(sueff05)
	lu12i.w	$a1, 251084
	ori	$a1, $a1, 3277
	st.w	$a1, $a0, %pc_lo12(sueff05)
	pcalau12i	$a0, %got_pc_hi20(treemethod)
	ld.d	$a0, $a0, %got_pc_lo12(treemethod)
	ld.w	$a2, $a0, 0
	ori	$a0, $zero, 113
	beq	$a2, $a0, .LBB20_5
# %bb.1:
	ori	$a0, $zero, 88
	beq	$a2, $a0, .LBB20_4
# %bb.2:
	ori	$a0, $zero, 69
	bne	$a2, $a0, .LBB20_96
# %bb.3:
	pcalau12i	$a0, %pc_hi20(cluster_average_float)
	addi.d	$a0, $a0, %pc_lo12(cluster_average_float)
	b	.LBB20_6
.LBB20_4:
	pcalau12i	$a0, %pc_hi20(cluster_mix_float)
	addi.d	$a0, $a0, %pc_lo12(cluster_mix_float)
	b	.LBB20_6
.LBB20_5:
	pcalau12i	$a0, %pc_hi20(cluster_minimum_float)
	addi.d	$a0, $a0, %pc_lo12(cluster_minimum_float)
.LBB20_6:
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx.hist)
	ld.d	$a0, $s7, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.hist)
	pcalau12i	$s1, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen)
	pcalau12i	$s6, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	pcalau12i	$s5, %pc_hi20(fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar)
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	beqz	$a0, .LBB20_92
# %bb.7:
	move	$s8, $zero
	move	$s3, $zero
	ld.d	$a0, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	blez	$s0, .LBB20_93
.LBB20_8:                               # %.lr.ph.preheader
	ld.d	$a1, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	move	$a2, $zero
	move	$a3, $zero
	slli.d	$a4, $s0, 4
	alsl.d	$a4, $s0, $a4, 3
	.p2align	4, , 16
.LBB20_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a0, $a2
	addi.d	$a5, $a5, 24
	stx.d	$a5, $a0, $a2
	add.d	$a0, $a1, $a2
	addi.d	$a5, $a0, -24
	st.d	$a5, $a0, 8
	st.w	$a3, $a0, 16
	addi.d	$a2, $a2, 24
	addi.d	$a3, $a3, 1
	move	$a0, $a1
	bne	$a4, $a2, .LBB20_9
# %bb.10:                               # %.lr.ph298
	move	$a0, $zero
	addi.w	$a3, $s0, -1
	slli.d	$a2, $a3, 4
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a2, $a3, $a2, 3
	stx.d	$zero, $a1, $a2
	ld.d	$a1, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	lu12i.w	$a2, 280479
	pcalau12i	$fp, %pc_hi20(.LCPI20_0)
	fld.s	$fa0, $fp, %pc_lo12(.LCPI20_0)
	addi.w	$t0, $zero, -1
	ori	$a2, $a2, 2458
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	lu32i.d	$t0, 0
	b	.LBB20_12
	.p2align	4, , 16
.LBB20_11:                              # %setnearest.exit
                                        #   in Loop: Header=BB20_12 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s0, .LBB20_23
.LBB20_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_15 Depth 2
                                        #     Child Loop BB20_20 Depth 2
	alsl.d	$a2, $a0, $s3, 2
	slli.d	$a3, $a0, 4
	alsl.d	$a3, $a0, $a3, 3
	ldx.d	$a4, $a1, $a3
	slli.d	$a5, $a0, 2
	alsl.d	$a3, $a0, $s8, 2
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	stx.w	$a6, $s3, $a5
	stx.w	$t0, $s8, $a5
	fmov.s	$fa1, $fa0
	beqz	$a4, .LBB20_18
# %bb.13:                               # %.lr.ph.i
                                        #   in Loop: Header=BB20_12 Depth=1
	slli.d	$a5, $a0, 3
	ldx.d	$a5, $s2, $a5
	fmov.s	$fa1, $fa0
	b	.LBB20_15
	.p2align	4, , 16
.LBB20_14:                              #   in Loop: Header=BB20_15 Depth=2
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB20_17
.LBB20_15:                              #   Parent Loop BB20_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a4, 16
	sub.w	$a7, $a6, $a0
	slli.d	$a7, $a7, 2
	fldx.s	$fa2, $a5, $a7
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB20_14
# %bb.16:                               #   in Loop: Header=BB20_15 Depth=2
	fst.s	$fa2, $a2, 0
	st.w	$a6, $a3, 0
	fmov.s	$fa1, $fa2
	b	.LBB20_14
	.p2align	4, , 16
.LBB20_17:                              # %.preheader.i
                                        #   in Loop: Header=BB20_12 Depth=1
	beqz	$a1, .LBB20_11
.LBB20_18:                              # %.lr.ph42.preheader.i
                                        #   in Loop: Header=BB20_12 Depth=1
	move	$a4, $a1
	b	.LBB20_20
	.p2align	4, , 16
.LBB20_19:                              #   in Loop: Header=BB20_20 Depth=2
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB20_11
.LBB20_20:                              # %.lr.ph42.i
                                        #   Parent Loop BB20_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.wu	$a5, $a4, 16
	beq	$a0, $a5, .LBB20_11
# %bb.21:                               #   in Loop: Header=BB20_20 Depth=2
	addi.w	$a6, $a5, 0
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s2, $a6
	sub.w	$a7, $a0, $a5
	slli.d	$a7, $a7, 2
	fldx.s	$fa2, $a6, $a7
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB20_19
# %bb.22:                               #   in Loop: Header=BB20_20 Depth=2
	fst.s	$fa2, $a2, 0
	st.w	$a5, $a3, 0
	fmov.s	$fa1, $fa2
	b	.LBB20_19
.LBB20_23:                              # %.lr.ph302
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen)
	slli.d	$a2, $s0, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.hist)
	ld.d	$a1, $s5, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar)
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$s0, $a3, .LBB20_28
# %bb.24:                               # %.lr.ph302
	sub.d	$a3, $a1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB20_28
# %bb.25:                               # %vector.ph
	bstrpick.d	$a2, $s0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 16
	addi.d	$a4, $a0, 16
	vrepli.b	$vr0, -1
	vrepli.w	$vr1, 1
	move	$a5, $a2
	.p2align	4, , 16
.LBB20_26:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	vst	$vr1, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB20_26
# %bb.27:                               # %middle.block
	beq	$a2, $s0, .LBB20_30
.LBB20_28:                              # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 2
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a2, $s0, $a2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB20_29:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a0, 0
	st.w	$a4, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB20_29
.LBB20_30:                              # %._crit_edge303
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	beq	$s0, $a0, .LBB20_94
# %bb.31:                               # %.lr.ph352.preheader
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 104857
	ori	$a0, $a0, 2457
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI20_1)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI20_1)
	move	$a2, $zero
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$s8, $sp, 176                   # 8-byte Folded Spill
	b	.LBB20_33
	.p2align	4, , 16
.LBB20_32:                              # %._crit_edge348
                                        #   in Loop: Header=BB20_33 Depth=1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB20_94
.LBB20_33:                              # %.lr.ph352
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_36 Depth 2
                                        #     Child Loop BB20_43 Depth 2
                                        #     Child Loop BB20_46 Depth 2
                                        #     Child Loop BB20_55 Depth 2
                                        #     Child Loop BB20_58 Depth 2
                                        #     Child Loop BB20_65 Depth 2
                                        #     Child Loop BB20_80 Depth 2
                                        #       Child Loop BB20_84 Depth 3
                                        #       Child Loop BB20_89 Depth 3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	rotri.w	$a0, $a0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	bgeu	$a1, $a0, .LBB20_38
# %bb.34:                               #   in Loop: Header=BB20_33 Depth=1
	ld.d	$a1, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB20_39
.LBB20_35:                              # %.lr.ph310.preheader
                                        #   in Loop: Header=BB20_33 Depth=1
	fld.s	$fa0, $fp, %pc_lo12(.LCPI20_0)
	.p2align	4, , 16
.LBB20_36:                              # %.lr.ph310
                                        #   Parent Loop BB20_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 16
	slli.d	$a1, $a2, 2
	fldx.s	$fa1, $s3, $a1
	fcmp.clt.s	$fcc0, $fa1, $fa0
	move	$a1, $a0
	ld.d	$a0, $a0, 0
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $s0, $a3
	maskeqz	$a2, $a2, $a3
	or	$s0, $a2, $a4
	bnez	$a0, .LBB20_36
# %bb.37:                               # %._crit_edge311.loopexit
                                        #   in Loop: Header=BB20_33 Depth=1
	vldi	$vr1, -1184
	fmul.s	$fs1, $fa0, $fa1
	move	$fp, $s0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	b	.LBB20_40
.LBB20_38:                              #   in Loop: Header=BB20_33 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	ld.d	$a0, $a1, 0
	bnez	$a0, .LBB20_35
	.p2align	4, , 16
.LBB20_39:                              #   in Loop: Header=BB20_33 Depth=1
	move	$fp, $s0
	fmov.s	$fs1, $fs0
.LBB20_40:                              # %._crit_edge311
                                        #   in Loop: Header=BB20_33 Depth=1
	slli.d	$a0, $fp, 2
	ldx.w	$s1, $s8, $a0
	slt	$a0, $s1, $fp
	maskeqz	$a1, $s1, $a0
	masknez	$a0, $fp, $a0
	or	$s0, $a1, $a0
	ld.d	$s6, $s7, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.hist)
	ld.d	$a1, $s5, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar)
	slli.d	$s7, $a2, 3
	ldx.d	$a0, $s4, $s7
	slli.d	$s8, $s0, 2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ldx.w	$a1, $a1, $s8
	ldx.w	$s5, $s6, $s8
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	addi.d	$a1, $a1, 4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	ldx.d	$a1, $s4, $s7
	st.d	$a0, $a1, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	beq	$s5, $a2, .LBB20_47
# %bb.41:                               #   in Loop: Header=BB20_33 Depth=1
	slli.d	$a2, $s5, 3
	ldx.d	$a2, $s4, $a2
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a2, 8
	ld.w	$t0, $a5, 0
	ld.w	$t1, $a6, 0
	slt	$a7, $t1, $t0
	slt	$a2, $t0, $t1
	masknez	$a3, $t1, $a2
	maskeqz	$a2, $t0, $a2
	or	$a4, $a2, $a3
	masknez	$a3, $a6, $a7
	maskeqz	$t2, $a5, $a7
	addi.w	$a2, $zero, -1
	or	$a3, $t2, $a3
	beq	$a4, $a2, .LBB20_48
# %bb.42:                               # %.lr.ph317.preheader
                                        #   in Loop: Header=BB20_33 Depth=1
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a5, $a6, $a5
	addi.d	$a5, $a5, 4
	.p2align	4, , 16
.LBB20_43:                              # %.lr.ph317
                                        #   Parent Loop BB20_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a4, $a0, 0
	ld.w	$a4, $a5, 0
	addi.d	$a0, $a0, 4
	addi.d	$a5, $a5, 4
	bne	$a4, $a2, .LBB20_43
# %bb.44:                               # %.preheader290.loopexit
                                        #   in Loop: Header=BB20_33 Depth=1
	ld.w	$a4, $a3, 0
	beq	$a4, $a2, .LBB20_49
.LBB20_45:                              # %.lr.ph322.preheader
                                        #   in Loop: Header=BB20_33 Depth=1
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB20_46:                              # %.lr.ph322
                                        #   Parent Loop BB20_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a4, $a0, 0
	ld.w	$a4, $a3, 0
	addi.d	$a5, $a0, 4
	addi.d	$a3, $a3, 4
	move	$a0, $a5
	bne	$a4, $a2, .LBB20_46
	b	.LBB20_50
	.p2align	4, , 16
.LBB20_47:                              #   in Loop: Header=BB20_33 Depth=1
	st.w	$s0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.w	$a2, $a0, 4
	b	.LBB20_51
	.p2align	4, , 16
.LBB20_48:                              #   in Loop: Header=BB20_33 Depth=1
	masknez	$a4, $t1, $a7
	maskeqz	$a5, $t0, $a7
	or	$a4, $a5, $a4
	bne	$a4, $a2, .LBB20_45
.LBB20_49:                              #   in Loop: Header=BB20_33 Depth=1
	move	$a5, $a0
.LBB20_50:                              # %._crit_edge323
                                        #   in Loop: Header=BB20_33 Depth=1
	lu32i.d	$a2, 0
	st.w	$a2, $a5, 0
.LBB20_51:                              #   in Loop: Header=BB20_33 Depth=1
	slt	$a0, $fp, $s1
	maskeqz	$a2, $s1, $a0
	masknez	$a0, $fp, $a0
	or	$fp, $a2, $a0
	slli.d	$s7, $fp, 2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$s5, $a0, $s7
	move	$s4, $s6
	ldx.w	$s6, $s6, $s7
	ld.d	$a0, $a1, 8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$s1, $a2, $a1, 3
	slli.d	$a1, $s5, 2
	addi.d	$a1, $a1, 4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $a1, 8
	beqz	$a0, .LBB20_95
# %bb.52:                               #   in Loop: Header=BB20_33 Depth=1
	addi.w	$s1, $zero, -1
	beq	$s6, $s1, .LBB20_59
# %bb.53:                               #   in Loop: Header=BB20_33 Depth=1
	slli.d	$a1, $s6, 3
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a1, 8
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a4, 0
	slt	$a5, $a7, $a6
	slt	$a1, $a6, $a7
	masknez	$a2, $a7, $a1
	maskeqz	$a1, $a6, $a1
	or	$a2, $a1, $a2
	masknez	$a1, $a4, $a5
	maskeqz	$t0, $a3, $a5
	or	$a1, $t0, $a1
	beq	$a2, $s1, .LBB20_60
# %bb.54:                               # %.lr.ph329.preheader
                                        #   in Loop: Header=BB20_33 Depth=1
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB20_55:                              # %.lr.ph329
                                        #   Parent Loop BB20_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $a0, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	bne	$a2, $s1, .LBB20_55
# %bb.56:                               # %.preheader.loopexit
                                        #   in Loop: Header=BB20_33 Depth=1
	ld.w	$a2, $a1, 0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	beq	$a2, $s1, .LBB20_61
.LBB20_57:                              # %.lr.ph334.preheader
                                        #   in Loop: Header=BB20_33 Depth=1
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB20_58:                              # %.lr.ph334
                                        #   Parent Loop BB20_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $a0, 0
	ld.w	$a2, $a1, 0
	addi.d	$a3, $a0, 4
	addi.d	$a1, $a1, 4
	move	$a0, $a3
	bne	$a2, $s1, .LBB20_58
	b	.LBB20_62
	.p2align	4, , 16
.LBB20_59:                              #   in Loop: Header=BB20_33 Depth=1
	st.w	$fp, $a0, 0
	move	$a1, $s1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 4
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	b	.LBB20_63
	.p2align	4, , 16
.LBB20_60:                              #   in Loop: Header=BB20_33 Depth=1
	masknez	$a2, $a7, $a5
	maskeqz	$a3, $a6, $a5
	or	$a2, $a3, $a2
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	bne	$a2, $s1, .LBB20_57
.LBB20_61:                              #   in Loop: Header=BB20_33 Depth=1
	move	$a3, $a0
.LBB20_62:                              # %._crit_edge335
                                        #   in Loop: Header=BB20_33 Depth=1
	move	$a0, $s1
	lu32i.d	$a0, 0
	st.w	$a0, $a3, 0
.LBB20_63:                              # %.lr.ph341
                                        #   in Loop: Header=BB20_33 Depth=1
	ld.d	$a0, $a5, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen)
	fldx.s	$fa0, $a0, $s8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	fsub.s	$fa0, $fs1, $fa0
	fst.s	$fa0, $a1, 0
	fldx.s	$fa0, $a0, $s7
	alsl.d	$a2, $s0, $s4, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a3, $s0, $a3, 2
	fsub.s	$fa0, $fs1, $fa0
	fst.s	$fa0, $a1, 4
	fstx.s	$fs1, $a0, $s8
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $s5, $a0
	st.w	$a0, $a3, 0
	ld.d	$s5, $a4, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	alsl.d	$s7, $s0, $s3, 2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	stx.w	$a0, $s3, $s8
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $s8, 2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB20_65
	.p2align	4, , 16
.LBB20_64:                              #   in Loop: Header=BB20_65 Depth=2
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB20_75
.LBB20_65:                              #   Parent Loop BB20_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s6, $s5, 16
	beq	$s6, $s0, .LBB20_64
# %bb.66:                               #   in Loop: Header=BB20_65 Depth=2
	beq	$s6, $fp, .LBB20_64
# %bb.67:                               #   in Loop: Header=BB20_65 Depth=2
	move	$a1, $s6
	move	$a2, $s6
	move	$a0, $fp
	move	$a3, $s0
	move	$a4, $s6
	blt	$s6, $s0, .LBB20_69
# %bb.68:                               #   in Loop: Header=BB20_65 Depth=2
	slt	$a0, $fp, $s6
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	slt	$a1, $s6, $fp
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s0
.LBB20_69:                              #   in Loop: Header=BB20_65 Depth=2
	slli.d	$s8, $a2, 3
	ldx.d	$a2, $s2, $s8
	sub.w	$a3, $a3, $a4
	slli.d	$s4, $a3, 2
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $s2, $a3
	fldx.s	$fa0, $a2, $s4
	sub.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	fldx.s	$fa1, $a3, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	jirl	$ra, $a0, 0
	ldx.d	$a0, $s2, $s8
	fstx.s	$fa0, $a0, $s4
	slli.d	$a0, $s6, 2
	fldx.s	$fa1, $s3, $a0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB20_72
# %bb.70:                               #   in Loop: Header=BB20_65 Depth=2
	fld.s	$fa1, $s7, 0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB20_73
.LBB20_71:                              #   in Loop: Header=BB20_65 Depth=2
	ldx.w	$a0, $s8, $a0
	bne	$a0, $fp, .LBB20_64
	b	.LBB20_74
	.p2align	4, , 16
.LBB20_72:                              #   in Loop: Header=BB20_65 Depth=2
	alsl.d	$a1, $s6, $s3, 2
	fst.s	$fa0, $a1, 0
	stx.w	$s0, $s8, $a0
	fld.s	$fa1, $s7, 0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB20_71
.LBB20_73:                              #   in Loop: Header=BB20_65 Depth=2
	fst.s	$fa0, $s7, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.w	$s6, $a1, 0
	ldx.w	$a0, $s8, $a0
	bne	$a0, $fp, .LBB20_64
.LBB20_74:                              #   in Loop: Header=BB20_65 Depth=2
	alsl.d	$a0, $s6, $s8, 2
	st.w	$s0, $a0, 0
	b	.LBB20_64
	.p2align	4, , 16
.LBB20_75:                              # %._crit_edge342.loopexit
                                        #   in Loop: Header=BB20_33 Depth=1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	slli.d	$a0, $fp, 4
	alsl.d	$a2, $fp, $a0, 3
	add.d	$a0, $a1, $a2
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a1, $a2
	st.d	$a1, $a0, 0
	beqz	$a1, .LBB20_77
# %bb.76:                               #   in Loop: Header=BB20_33 Depth=1
	st.d	$a0, $a1, 8
.LBB20_77:                              #   in Loop: Header=BB20_33 Depth=1
	slli.d	$fp, $fp, 3
	ldx.d	$a0, $s2, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	stx.d	$zero, $s2, $fp
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB20_32
# %bb.78:                               # %.lr.ph347.preheader
                                        #   in Loop: Header=BB20_33 Depth=1
	move	$a1, $a0
	b	.LBB20_80
	.p2align	4, , 16
.LBB20_79:                              # %setnearest.exit289
                                        #   in Loop: Header=BB20_80 Depth=2
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB20_32
.LBB20_80:                              # %.lr.ph347
                                        #   Parent Loop BB20_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_84 Depth 3
                                        #       Child Loop BB20_89 Depth 3
	ld.w	$a2, $a1, 16
	slli.d	$a6, $a2, 2
	ldx.w	$a3, $s8, $a6
	bne	$a3, $s0, .LBB20_79
# %bb.81:                               #   in Loop: Header=BB20_80 Depth=2
	alsl.d	$a3, $a2, $s8, 2
	slli.d	$a4, $a2, 4
	alsl.d	$a4, $a2, $a4, 3
	ldx.d	$a5, $a0, $a4
	alsl.d	$a4, $a2, $s3, 2
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	stx.w	$a7, $s3, $a6
	move	$a6, $s1
	lu32i.d	$a6, 0
	st.w	$a6, $a3, 0
	beqz	$a5, .LBB20_86
# %bb.82:                               # %.lr.ph.i278
                                        #   in Loop: Header=BB20_80 Depth=2
	slli.d	$a6, $a2, 3
	ldx.d	$a6, $s2, $a6
	fld.s	$fa0, $fp, %pc_lo12(.LCPI20_0)
	b	.LBB20_84
	.p2align	4, , 16
.LBB20_83:                              #   in Loop: Header=BB20_84 Depth=3
	ld.d	$a5, $a5, 0
	beqz	$a5, .LBB20_87
.LBB20_84:                              #   Parent Loop BB20_33 Depth=1
                                        #     Parent Loop BB20_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a5, 16
	sub.w	$t0, $a7, $a2
	slli.d	$t0, $t0, 2
	fldx.s	$fa1, $a6, $t0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_83
# %bb.85:                               #   in Loop: Header=BB20_84 Depth=3
	fst.s	$fa1, $a4, 0
	st.w	$a7, $a3, 0
	fmov.s	$fa0, $fa1
	b	.LBB20_83
.LBB20_86:                              #   in Loop: Header=BB20_80 Depth=2
	fld.s	$fa0, $fp, %pc_lo12(.LCPI20_0)
.LBB20_87:                              # %.lr.ph42.i285.preheader
                                        #   in Loop: Header=BB20_80 Depth=2
	move	$a5, $a0
	b	.LBB20_89
	.p2align	4, , 16
.LBB20_88:                              #   in Loop: Header=BB20_89 Depth=3
	ld.d	$a5, $a5, 0
	beqz	$a5, .LBB20_79
.LBB20_89:                              # %.lr.ph42.i285
                                        #   Parent Loop BB20_33 Depth=1
                                        #     Parent Loop BB20_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a5, 16
	beq	$a2, $a6, .LBB20_79
# %bb.90:                               #   in Loop: Header=BB20_89 Depth=3
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $s2, $a7
	sub.w	$t0, $a2, $a6
	slli.d	$t0, $t0, 2
	fldx.s	$fa1, $a7, $t0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_88
# %bb.91:                               #   in Loop: Header=BB20_89 Depth=3
	fst.s	$fa1, $a4, 0
	st.w	$a6, $a3, 0
	fmov.s	$fa0, $fa1
	b	.LBB20_88
.LBB20_92:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s7, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.hist)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 0
	st.d	$a0, $s1, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen)
	slli.d	$a0, $s3, 4
	alsl.d	$a0, $s3, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s5, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$a0, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	bgtz	$s0, .LBB20_8
.LBB20_93:                              # %.preheader292.thread
	slli.d	$a1, $s0, 4
	alsl.d	$a1, $s0, $a1, 3
	add.d	$a0, $a0, $a1
	st.d	$zero, $a0, -24
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB20_94:                              # %._crit_edge353
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.hist)
	st.d	$zero, $fp, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	st.d	$zero, $s7, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.hist)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar)
	st.d	$zero, $s6, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.ac)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s5, %pc_lo12(fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB20_95:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB20_96:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	fixed_musclesupg_float_realloc_nobk_halfmtx, .Lfunc_end20-fixed_musclesupg_float_realloc_nobk_halfmtx
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function veryfastsupg_double_loadtop
.LCPI21_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI21_1:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
	.text
	.globl	veryfastsupg_double_loadtop
	.p2align	5
	.type	veryfastsupg_double_loadtop,@function
veryfastsupg_double_loadtop:            # @veryfastsupg_double_loadtop
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$s3, $a1
	move	$s7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	beqz	$a0, .LBB21_60
# %bb.1:
	pcalau12i	$a0, %pc_hi20(veryfastsupg_double_loadtop.hist)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_loadtop.hist)
	pcalau12i	$s1, %pc_hi20(veryfastsupg_double_loadtop.treetmp)
	pcalau12i	$s0, %pc_hi20(veryfastsupg_double_loadtop.tree)
	pcalau12i	$a1, %pc_hi20(veryfastsupg_double_loadtop.tmptmplen)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(veryfastsupg_double_loadtop.ac)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	beqz	$a0, .LBB21_7
# %bb.2:
	blez	$s7, .LBB21_8
.LBB21_3:                               # %.lr.ph.preheader
	slli.d	$s4, $s7, 3
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s6, $a0, %pc_lo12(.L.str.21)
	move	$fp, $zero
	.p2align	4, , 16
.LBB21_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, %pc_lo12(veryfastsupg_double_loadtop.tree)
	ldx.d	$a0, $a0, $fp
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.w	$s5, $s5, 1
	bne	$s4, $fp, .LBB21_4
# %bb.5:                                # %.lr.ph206
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(veryfastsupg_double_loadtop.ac)
	ori	$a0, $zero, 1
	bne	$s7, $a0, .LBB21_9
# %bb.6:
	move	$a0, $zero
	b	.LBB21_12
.LBB21_7:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	ori	$s4, $zero, 50
	mul.w	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 0
	st.d	$a0, $s1, %pc_lo12(veryfastsupg_double_loadtop.treetmp)
	mul.w	$a1, $a2, $s4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s0, %pc_lo12(veryfastsupg_double_loadtop.tree)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(veryfastsupg_double_loadtop.hist)
	slli.d	$s4, $a1, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(veryfastsupg_double_loadtop.tmptmplen)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(veryfastsupg_double_loadtop.ac)
	bgtz	$s7, .LBB21_3
.LBB21_8:                               # %._crit_edge212.thread
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_loadtop.ac)
	alsl.d	$a0, $s7, $a0, 3
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, -8
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB21_15
.LBB21_9:                               # %vector.ph
	bstrpick.d	$a0, $s7, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a2, $a1, 8
	ori	$a3, $zero, 2
	move	$a4, $a0
	.p2align	4, , 16
.LBB21_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a3, -2
	addi.d	$a6, $a3, -1
	st.w	$a6, $a2, -8
	st.w	$a3, $a2, 0
	addi.d	$a6, $a3, -3
	st.w	$a6, $a2, -4
	st.w	$a5, $a2, 4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB21_10
# %bb.11:                               # %middle.block
	beq	$a0, $s7, .LBB21_14
.LBB21_12:                              # %scalar.ph.preheader
	addi.d	$a2, $a0, -1
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a3, $a3, 4
	sub.d	$a0, $s7, $a0
	.p2align	4, , 16
.LBB21_13:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a2, 2
	st.w	$a4, $a3, -4
	st.w	$a2, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB21_13
.LBB21_14:                              # %._crit_edge212
	addi.w	$a2, $s7, -1
	addi.w	$fp, $zero, -1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_loadtop.tmptmplen)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	move	$s5, $fp
	lu32i.d	$s5, 0
	stx.w	$s5, $a1, $a2
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_loadtop.hist)
	slli.d	$a2, $s7, 2
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	bne	$s7, $a0, .LBB21_16
.LBB21_15:                              # %._crit_edge241
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, %pc_lo12(veryfastsupg_double_loadtop.treetmp)
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(veryfastsupg_double_loadtop.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s2, %pc_lo12(veryfastsupg_double_loadtop.hist)
	st.d	$zero, $fp, %pc_lo12(veryfastsupg_double_loadtop.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(veryfastsupg_double_loadtop.ac)
	st.d	$zero, $s2, %pc_lo12(veryfastsupg_double_loadtop.hist)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(veryfastsupg_double_loadtop.tree)
	st.d	$zero, $fp, %pc_lo12(veryfastsupg_double_loadtop.ac)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(veryfastsupg_double_loadtop.treetmp)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB21_16:                              # %.lr.ph240
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 104857
	ori	$a0, $a0, 2457
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$s4, -264192
	bstrins.d	$s4, $s4, 62, 32
	pcalau12i	$a0, %pc_hi20(loadtreeoneline.gett)
	addi.d	$s7, $a0, %pc_lo12(loadtreeoneline.gett)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $zero
	movgr2fr.d	$fs0, $zero
	b	.LBB21_18
	.p2align	4, , 16
.LBB21_17:                              #   in Loop: Header=BB21_18 Depth=1
	ld.d	$a1, $s0, %pc_lo12(veryfastsupg_double_loadtop.tree)
	ld.d	$a0, $s1, %pc_lo12(veryfastsupg_double_loadtop.treetmp)
	ldx.d	$a2, $a1, $s8
	ldx.d	$a4, $a1, $a3
	ld.d	$a5, $a6, 8
	ld.d	$a3, $a6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(veryfastsupg_double_loadtop.tree)
	ldx.d	$a0, $a0, $s8
	ld.d	$a1, $s1, %pc_lo12(veryfastsupg_double_loadtop.treetmp)
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB21_15
.LBB21_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_25 Depth 2
                                        #     Child Loop BB21_28 Depth 2
                                        #     Child Loop BB21_36 Depth 2
                                        #     Child Loop BB21_39 Depth 2
                                        #     Child Loop BB21_51 Depth 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $s6, $a0
	rotri.w	$a0, $a0, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB21_57
.LBB21_19:                              #   in Loop: Header=BB21_18 Depth=1
	st.d	$s4, $sp, 112
	ori	$a1, $zero, 999
	move	$a0, $s7
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 120
	addi.d	$a4, $sp, 112
	move	$a0, $s7
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a3, $sp, 124
	addi.d	$a5, $sp, 116
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 120
	ld.w	$a3, $sp, 124
	addi.w	$a0, $a2, -1
	st.w	$a0, $sp, 120
	addi.w	$a1, $a3, -1
	st.w	$a1, $sp, 124
	bge	$a2, $a3, .LBB21_59
# %bb.20:                               # %loadtreeoneline.exit
                                        #   in Loop: Header=BB21_18 Depth=1
	fld.s	$fa0, $sp, 112
	vldi	$vr1, -1040
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_58
# %bb.21:                               # %loadtreeoneline.exit
                                        #   in Loop: Header=BB21_18 Depth=1
	fld.s	$fa0, $sp, 116
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB21_58
# %bb.22:                               #   in Loop: Header=BB21_18 Depth=1
	slli.d	$s8, $a0, 3
	ldx.d	$a6, $s3, $s8
	slli.d	$a3, $a1, 3
	slli.d	$a4, $s6, 3
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(veryfastsupg_double_loadtop.hist)
	ldx.d	$a5, $s2, $a4
	fldx.d	$fa0, $a6, $a3
	slli.d	$a6, $a0, 2
	ldx.w	$a7, $a2, $a6
	ld.d	$a6, $a5, 0
	vldi	$vr5, -928
	beq	$a7, $fp, .LBB21_29
# %bb.23:                               #   in Loop: Header=BB21_18 Depth=1
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $s2, $a7
	ld.d	$t1, $a7, 0
	ld.d	$t2, $a7, 8
	ld.w	$t4, $t1, 0
	ld.w	$t5, $t2, 0
	slt	$t3, $t5, $t4
	slt	$a7, $t4, $t5
	masknez	$t0, $t5, $a7
	maskeqz	$a7, $t4, $a7
	or	$t0, $a7, $t0
	masknez	$a7, $t2, $t3
	maskeqz	$t6, $t1, $t3
	or	$a7, $t6, $a7
	beq	$t0, $fp, .LBB21_31
# %bb.24:                               # %.lr.ph217.preheader
                                        #   in Loop: Header=BB21_18 Depth=1
	masknez	$t1, $t1, $t3
	maskeqz	$t2, $t2, $t3
	or	$t1, $t2, $t1
	addi.d	$t1, $t1, 4
	.p2align	4, , 16
.LBB21_25:                              # %.lr.ph217
                                        #   Parent Loop BB21_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t0, $a6, 0
	ld.w	$t0, $t1, 0
	addi.d	$a6, $a6, 4
	addi.d	$t1, $t1, 4
	bne	$t0, $fp, .LBB21_25
# %bb.26:                               # %.preheader201.loopexit
                                        #   in Loop: Header=BB21_18 Depth=1
	ld.w	$t0, $a7, 0
	beq	$t0, $fp, .LBB21_32
.LBB21_27:                              # %.lr.ph221.preheader
                                        #   in Loop: Header=BB21_18 Depth=1
	addi.d	$a7, $a7, 4
	.p2align	4, , 16
.LBB21_28:                              # %.lr.ph221
                                        #   Parent Loop BB21_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t0, $a6, 0
	ld.w	$t0, $a7, 0
	addi.d	$t1, $a6, 4
	addi.d	$a7, $a7, 4
	move	$a6, $t1
	bne	$t0, $fp, .LBB21_28
	b	.LBB21_33
	.p2align	4, , 16
.LBB21_29:                              #   in Loop: Header=BB21_18 Depth=1
	st.w	$a0, $a6, 0
	st.w	$s5, $a6, 4
	slli.d	$a6, $a1, 2
	ldx.w	$a6, $a2, $a6
	ld.d	$a5, $a5, 8
	bne	$a6, $fp, .LBB21_34
.LBB21_30:                              #   in Loop: Header=BB21_18 Depth=1
	st.w	$a1, $a5, 0
	st.w	$s5, $a5, 4
	b	.LBB21_43
	.p2align	4, , 16
.LBB21_31:                              #   in Loop: Header=BB21_18 Depth=1
	masknez	$t0, $t5, $t3
	maskeqz	$t1, $t4, $t3
	or	$t0, $t1, $t0
	bne	$t0, $fp, .LBB21_27
.LBB21_32:                              #   in Loop: Header=BB21_18 Depth=1
	move	$t1, $a6
.LBB21_33:                              # %._crit_edge222
                                        #   in Loop: Header=BB21_18 Depth=1
	st.w	$s5, $t1, 0
	slli.d	$a6, $a1, 2
	ldx.w	$a6, $a2, $a6
	ld.d	$a5, $a5, 8
	beq	$a6, $fp, .LBB21_30
.LBB21_34:                              #   in Loop: Header=BB21_18 Depth=1
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s2, $a6
	ld.d	$t0, $a6, 0
	ld.d	$t1, $a6, 8
	ld.w	$t3, $t0, 0
	ld.w	$t4, $t1, 0
	slt	$t2, $t4, $t3
	slt	$a6, $t3, $t4
	masknez	$a7, $t4, $a6
	maskeqz	$a6, $t3, $a6
	or	$a7, $a6, $a7
	masknez	$a6, $t1, $t2
	maskeqz	$t5, $t0, $t2
	or	$a6, $t5, $a6
	beq	$a7, $fp, .LBB21_40
# %bb.35:                               # %.lr.ph228.preheader
                                        #   in Loop: Header=BB21_18 Depth=1
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	addi.d	$t0, $t0, 4
	.p2align	4, , 16
.LBB21_36:                              # %.lr.ph228
                                        #   Parent Loop BB21_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a7, $a5, 0
	ld.w	$a7, $t0, 0
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 4
	bne	$a7, $fp, .LBB21_36
# %bb.37:                               # %.preheader.loopexit
                                        #   in Loop: Header=BB21_18 Depth=1
	ld.w	$a7, $a6, 0
	beq	$a7, $fp, .LBB21_41
.LBB21_38:                              # %.lr.ph233.preheader
                                        #   in Loop: Header=BB21_18 Depth=1
	addi.d	$a6, $a6, 4
	.p2align	4, , 16
.LBB21_39:                              # %.lr.ph233
                                        #   Parent Loop BB21_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a7, $a5, 0
	ld.w	$a7, $a6, 0
	addi.d	$t0, $a5, 4
	addi.d	$a6, $a6, 4
	move	$a5, $t0
	bne	$a7, $fp, .LBB21_39
	b	.LBB21_42
	.p2align	4, , 16
.LBB21_40:                              #   in Loop: Header=BB21_18 Depth=1
	masknez	$a7, $t4, $t2
	maskeqz	$t0, $t3, $t2
	or	$a7, $t0, $a7
	bne	$a7, $fp, .LBB21_38
.LBB21_41:                              #   in Loop: Header=BB21_18 Depth=1
	move	$t0, $a5
.LBB21_42:                              # %._crit_edge234
                                        #   in Loop: Header=BB21_18 Depth=1
	st.w	$s5, $t0, 0
.LBB21_43:                              #   in Loop: Header=BB21_18 Depth=1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(veryfastsupg_double_loadtop.tmptmplen)
	fldx.d	$fa1, $a5, $s8
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a4
	fmul.d	$fa0, $fa0, $fa5
	fsub.d	$fa2, $fa0, $fa1
	fst.d	$fa2, $a6, 0
	fldx.d	$fa1, $a5, $a3
	fsub.d	$fa1, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fs0, $fa2
	fst.d	$fa1, $a6, 8
	bcnez	$fcc0, .LBB21_45
# %bb.44:                               #   in Loop: Header=BB21_18 Depth=1
	st.d	$zero, $a6, 0
.LBB21_45:                              #   in Loop: Header=BB21_18 Depth=1
	fcmp.cule.d	$fcc0, $fs0, $fa1
	bcnez	$fcc0, .LBB21_47
# %bb.46:                               #   in Loop: Header=BB21_18 Depth=1
	st.d	$zero, $a6, 8
.LBB21_47:                              #   in Loop: Header=BB21_18 Depth=1
	move	$a4, $zero
	alsl.d	$a7, $a0, $a2, 2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(veryfastsupg_double_loadtop.ac)
	alsl.d	$a5, $a0, $a5, 3
	fst.d	$fa0, $a5, 0
	st.w	$s6, $a7, 0
	b	.LBB21_51
	.p2align	4, , 16
.LBB21_48:                              #   in Loop: Header=BB21_51 Depth=2
	slt	$a5, $a4, $a1
	masknez	$a7, $a1, $a5
	maskeqz	$a5, $a4, $a5
	or	$a5, $a5, $a7
	slt	$a7, $a1, $a4
	masknez	$t0, $a1, $a7
	maskeqz	$a7, $a4, $a7
	or	$a7, $a7, $t0
	move	$t1, $a0
	move	$t0, $a4
.LBB21_49:                              #   in Loop: Header=BB21_51 Depth=2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $s3, $t1
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s3, $a5
	slli.d	$t0, $t0, 3
	fldx.d	$fa0, $t1, $t0
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $a5, $a7
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa2, $fa1, $fa0, $fcc0
	pcalau12i	$a5, %pc_hi20(.LCPI21_0)
	fld.d	$fa3, $a5, %pc_lo12(.LCPI21_0)
	pcalau12i	$a5, %pc_hi20(.LCPI21_1)
	fld.d	$fa4, $a5, %pc_lo12(.LCPI21_1)
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa5
	fmul.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa4, $fa0
	fstx.d	$fa0, $t1, $t0
.LBB21_50:                              #   in Loop: Header=BB21_51 Depth=2
	slli.d	$a4, $a4, 3
	ldx.w	$a4, $a2, $a4
	beq	$a4, $fp, .LBB21_55
.LBB21_51:                              #   Parent Loop BB21_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a4, $a0, .LBB21_50
# %bb.52:                               #   in Loop: Header=BB21_51 Depth=2
	beq	$a4, $a1, .LBB21_50
# %bb.53:                               #   in Loop: Header=BB21_51 Depth=2
	bge	$a4, $a0, .LBB21_48
# %bb.54:                               # %._crit_edge262
                                        #   in Loop: Header=BB21_51 Depth=2
	move	$a5, $a4
	move	$t1, $a4
	move	$a7, $a1
	move	$t0, $a0
	b	.LBB21_49
	.p2align	4, , 16
.LBB21_55:                              #   in Loop: Header=BB21_18 Depth=1
	alsl.d	$a0, $a1, $a2, 3
	ld.w	$a0, $a0, 4
	ldx.w	$a1, $a2, $a3
	slli.d	$a4, $a0, 3
	stx.w	$a1, $a2, $a4
	beq	$a1, $fp, .LBB21_17
# %bb.56:                               #   in Loop: Header=BB21_18 Depth=1
	alsl.d	$a1, $a1, $a2, 3
	st.w	$a0, $a1, 4
	b	.LBB21_17
.LBB21_57:                              #   in Loop: Header=BB21_18 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB21_19
.LBB21_58:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB21_59:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB21_60:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	veryfastsupg_double_loadtop, .Lfunc_end21-veryfastsupg_double_loadtop
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function veryfastsupg_double_loadtree
.LCPI22_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI22_1:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
	.text
	.globl	veryfastsupg_double_loadtree
	.p2align	5
	.type	veryfastsupg_double_loadtree,@function
veryfastsupg_double_loadtree:           # @veryfastsupg_double_loadtree
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$s3, $a1
	move	$s7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	beqz	$a0, .LBB22_60
# %bb.1:
	pcalau12i	$a0, %pc_hi20(veryfastsupg_double_loadtree.hist)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_loadtree.hist)
	pcalau12i	$s1, %pc_hi20(veryfastsupg_double_loadtree.treetmp)
	pcalau12i	$s0, %pc_hi20(veryfastsupg_double_loadtree.tree)
	pcalau12i	$a1, %pc_hi20(veryfastsupg_double_loadtree.tmptmplen)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(veryfastsupg_double_loadtree.ac)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	beqz	$a0, .LBB22_7
# %bb.2:
	blez	$s7, .LBB22_8
.LBB22_3:                               # %.lr.ph.preheader
	slli.d	$s4, $s7, 3
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s6, $a0, %pc_lo12(.L.str.21)
	move	$fp, $zero
	.p2align	4, , 16
.LBB22_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, %pc_lo12(veryfastsupg_double_loadtree.tree)
	ldx.d	$a0, $a0, $fp
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.w	$s5, $s5, 1
	bne	$s4, $fp, .LBB22_4
# %bb.5:                                # %.lr.ph195
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(veryfastsupg_double_loadtree.ac)
	ori	$a0, $zero, 1
	bne	$s7, $a0, .LBB22_9
# %bb.6:
	move	$a0, $zero
	b	.LBB22_12
.LBB22_7:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	ori	$s4, $zero, 50
	mul.w	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 0
	st.d	$a0, $s1, %pc_lo12(veryfastsupg_double_loadtree.treetmp)
	mul.w	$a1, $a2, $s4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s0, %pc_lo12(veryfastsupg_double_loadtree.tree)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(veryfastsupg_double_loadtree.hist)
	slli.d	$s4, $a1, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(veryfastsupg_double_loadtree.tmptmplen)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(veryfastsupg_double_loadtree.ac)
	bgtz	$s7, .LBB22_3
.LBB22_8:                               # %._crit_edge201.thread
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_loadtree.ac)
	alsl.d	$a0, $s7, $a0, 3
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, -8
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB22_15
.LBB22_9:                               # %vector.ph
	bstrpick.d	$a0, $s7, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a2, $a1, 8
	ori	$a3, $zero, 2
	move	$a4, $a0
	.p2align	4, , 16
.LBB22_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a3, -2
	addi.d	$a6, $a3, -1
	st.w	$a6, $a2, -8
	st.w	$a3, $a2, 0
	addi.d	$a6, $a3, -3
	st.w	$a6, $a2, -4
	st.w	$a5, $a2, 4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB22_10
# %bb.11:                               # %middle.block
	beq	$a0, $s7, .LBB22_14
.LBB22_12:                              # %scalar.ph.preheader
	addi.d	$a2, $a0, -1
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a3, $a3, 4
	sub.d	$a0, $s7, $a0
	.p2align	4, , 16
.LBB22_13:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a2, 2
	st.w	$a4, $a3, -4
	st.w	$a2, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB22_13
.LBB22_14:                              # %._crit_edge201
	addi.w	$a2, $s7, -1
	addi.w	$fp, $zero, -1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_loadtree.tmptmplen)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	move	$s5, $fp
	lu32i.d	$s5, 0
	stx.w	$s5, $a1, $a2
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_loadtree.hist)
	slli.d	$a2, $s7, 2
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	bne	$s7, $a0, .LBB22_16
.LBB22_15:                              # %._crit_edge230
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, %pc_lo12(veryfastsupg_double_loadtree.treetmp)
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(veryfastsupg_double_loadtree.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s2, %pc_lo12(veryfastsupg_double_loadtree.hist)
	st.d	$zero, $fp, %pc_lo12(veryfastsupg_double_loadtree.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(veryfastsupg_double_loadtree.ac)
	st.d	$zero, $s2, %pc_lo12(veryfastsupg_double_loadtree.hist)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(veryfastsupg_double_loadtree.tree)
	st.d	$zero, $fp, %pc_lo12(veryfastsupg_double_loadtree.ac)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(veryfastsupg_double_loadtree.treetmp)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB22_16:                              # %.lr.ph229
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 104857
	ori	$a0, $a0, 2457
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$s4, -264192
	bstrins.d	$s4, $s4, 62, 32
	pcalau12i	$a0, %pc_hi20(loadtreeoneline.gett)
	addi.d	$s7, $a0, %pc_lo12(loadtreeoneline.gett)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $zero
	movgr2fr.w	$fs0, $zero
	b	.LBB22_18
	.p2align	4, , 16
.LBB22_17:                              #   in Loop: Header=BB22_18 Depth=1
	ld.d	$a1, $s0, %pc_lo12(veryfastsupg_double_loadtree.tree)
	ld.d	$a0, $s1, %pc_lo12(veryfastsupg_double_loadtree.treetmp)
	ldx.d	$a2, $a1, $s8
	ldx.d	$a4, $a1, $a3
	ld.d	$a5, $a6, 8
	ld.d	$a3, $a6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(veryfastsupg_double_loadtree.tree)
	ldx.d	$a0, $a0, $s8
	ld.d	$a1, $s1, %pc_lo12(veryfastsupg_double_loadtree.treetmp)
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB22_15
.LBB22_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_29 Depth 2
                                        #     Child Loop BB22_32 Depth 2
                                        #     Child Loop BB22_40 Depth 2
                                        #     Child Loop BB22_43 Depth 2
                                        #     Child Loop BB22_51 Depth 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $s6, $a0
	rotri.w	$a0, $a0, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB22_57
.LBB22_19:                              #   in Loop: Header=BB22_18 Depth=1
	st.d	$s4, $sp, 112
	ori	$a1, $zero, 999
	move	$a0, $s7
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 120
	addi.d	$a4, $sp, 112
	move	$a0, $s7
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a3, $sp, 124
	addi.d	$a5, $sp, 116
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 120
	ld.w	$a3, $sp, 124
	addi.w	$a0, $a2, -1
	st.w	$a0, $sp, 120
	addi.w	$a1, $a3, -1
	st.w	$a1, $sp, 124
	bge	$a2, $a3, .LBB22_59
# %bb.20:                               # %loadtreeoneline.exit
                                        #   in Loop: Header=BB22_18 Depth=1
	fld.s	$fa0, $sp, 112
	vldi	$vr1, -1040
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_58
# %bb.21:                               # %loadtreeoneline.exit
                                        #   in Loop: Header=BB22_18 Depth=1
	fld.s	$fa2, $sp, 116
	fcmp.cune.s	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB22_58
# %bb.22:                               #   in Loop: Header=BB22_18 Depth=1
	slli.d	$s8, $a0, 3
	ldx.d	$a2, $s3, $s8
	slli.d	$a3, $a1, 3
	fldx.d	$fa1, $a2, $a3
	fcmp.cule.s	$fcc0, $fs0, $fa0
	vldi	$vr5, -928
	bcnez	$fcc0, .LBB22_24
# %bb.23:                               #   in Loop: Header=BB22_18 Depth=1
	st.w	$zero, $sp, 112
	fmov.s	$fa0, $fs0
.LBB22_24:                              #   in Loop: Header=BB22_18 Depth=1
	fcmp.cule.s	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB22_26
# %bb.25:                               #   in Loop: Header=BB22_18 Depth=1
	st.w	$zero, $sp, 116
.LBB22_26:                              #   in Loop: Header=BB22_18 Depth=1
	slli.d	$a2, $s6, 3
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(veryfastsupg_double_loadtree.hist)
	ldx.d	$a5, $s2, $a2
	slli.d	$a6, $a0, 2
	ldx.w	$a7, $a4, $a6
	ld.d	$a6, $a5, 0
	beq	$a7, $fp, .LBB22_33
# %bb.27:                               #   in Loop: Header=BB22_18 Depth=1
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $s2, $a7
	ld.d	$t1, $a7, 0
	ld.d	$t2, $a7, 8
	ld.w	$t4, $t1, 0
	ld.w	$t5, $t2, 0
	slt	$t3, $t5, $t4
	slt	$a7, $t4, $t5
	masknez	$t0, $t5, $a7
	maskeqz	$a7, $t4, $a7
	or	$t0, $a7, $t0
	masknez	$a7, $t2, $t3
	maskeqz	$t6, $t1, $t3
	or	$a7, $t6, $a7
	beq	$t0, $fp, .LBB22_35
# %bb.28:                               # %.lr.ph206.preheader
                                        #   in Loop: Header=BB22_18 Depth=1
	masknez	$t1, $t1, $t3
	maskeqz	$t2, $t2, $t3
	or	$t1, $t2, $t1
	addi.d	$t1, $t1, 4
	.p2align	4, , 16
.LBB22_29:                              # %.lr.ph206
                                        #   Parent Loop BB22_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t0, $a6, 0
	ld.w	$t0, $t1, 0
	addi.d	$a6, $a6, 4
	addi.d	$t1, $t1, 4
	bne	$t0, $fp, .LBB22_29
# %bb.30:                               # %.preheader190.loopexit
                                        #   in Loop: Header=BB22_18 Depth=1
	ld.w	$t0, $a7, 0
	beq	$t0, $fp, .LBB22_36
.LBB22_31:                              # %.lr.ph210.preheader
                                        #   in Loop: Header=BB22_18 Depth=1
	addi.d	$a7, $a7, 4
	.p2align	4, , 16
.LBB22_32:                              # %.lr.ph210
                                        #   Parent Loop BB22_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t0, $a6, 0
	ld.w	$t0, $a7, 0
	addi.d	$t1, $a6, 4
	addi.d	$a7, $a7, 4
	move	$a6, $t1
	bne	$t0, $fp, .LBB22_32
	b	.LBB22_37
	.p2align	4, , 16
.LBB22_33:                              #   in Loop: Header=BB22_18 Depth=1
	st.w	$a0, $a6, 0
	st.w	$s5, $a6, 4
	slli.d	$a6, $a1, 2
	ldx.w	$a6, $a4, $a6
	ld.d	$a5, $a5, 8
	bne	$a6, $fp, .LBB22_38
.LBB22_34:                              #   in Loop: Header=BB22_18 Depth=1
	st.w	$a1, $a5, 0
	st.w	$s5, $a5, 4
	b	.LBB22_47
	.p2align	4, , 16
.LBB22_35:                              #   in Loop: Header=BB22_18 Depth=1
	masknez	$t0, $t5, $t3
	maskeqz	$t1, $t4, $t3
	or	$t0, $t1, $t0
	bne	$t0, $fp, .LBB22_31
.LBB22_36:                              #   in Loop: Header=BB22_18 Depth=1
	move	$t1, $a6
.LBB22_37:                              # %._crit_edge211
                                        #   in Loop: Header=BB22_18 Depth=1
	st.w	$s5, $t1, 0
	slli.d	$a6, $a1, 2
	ldx.w	$a6, $a4, $a6
	ld.d	$a5, $a5, 8
	beq	$a6, $fp, .LBB22_34
.LBB22_38:                              #   in Loop: Header=BB22_18 Depth=1
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s2, $a6
	ld.d	$t0, $a6, 0
	ld.d	$t1, $a6, 8
	ld.w	$t3, $t0, 0
	ld.w	$t4, $t1, 0
	slt	$t2, $t4, $t3
	slt	$a6, $t3, $t4
	masknez	$a7, $t4, $a6
	maskeqz	$a6, $t3, $a6
	or	$a7, $a6, $a7
	masknez	$a6, $t1, $t2
	maskeqz	$t5, $t0, $t2
	or	$a6, $t5, $a6
	beq	$a7, $fp, .LBB22_44
# %bb.39:                               # %.lr.ph217.preheader
                                        #   in Loop: Header=BB22_18 Depth=1
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	addi.d	$t0, $t0, 4
	.p2align	4, , 16
.LBB22_40:                              # %.lr.ph217
                                        #   Parent Loop BB22_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a7, $a5, 0
	ld.w	$a7, $t0, 0
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 4
	bne	$a7, $fp, .LBB22_40
# %bb.41:                               # %.preheader.loopexit
                                        #   in Loop: Header=BB22_18 Depth=1
	ld.w	$a7, $a6, 0
	beq	$a7, $fp, .LBB22_45
.LBB22_42:                              # %.lr.ph222.preheader
                                        #   in Loop: Header=BB22_18 Depth=1
	addi.d	$a6, $a6, 4
	.p2align	4, , 16
.LBB22_43:                              # %.lr.ph222
                                        #   Parent Loop BB22_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a7, $a5, 0
	ld.w	$a7, $a6, 0
	addi.d	$t0, $a5, 4
	addi.d	$a6, $a6, 4
	move	$a5, $t0
	bne	$a7, $fp, .LBB22_43
	b	.LBB22_46
	.p2align	4, , 16
.LBB22_44:                              #   in Loop: Header=BB22_18 Depth=1
	masknez	$a7, $t4, $t2
	maskeqz	$t0, $t3, $t2
	or	$a7, $t0, $a7
	bne	$a7, $fp, .LBB22_42
.LBB22_45:                              #   in Loop: Header=BB22_18 Depth=1
	move	$t0, $a5
.LBB22_46:                              # %._crit_edge223
                                        #   in Loop: Header=BB22_18 Depth=1
	st.w	$s5, $t0, 0
.LBB22_47:                              #   in Loop: Header=BB22_18 Depth=1
	move	$a5, $zero
	alsl.d	$a4, $a0, $a4, 2
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a2
	fmul.d	$fa1, $fa1, $fa5
	fld.s	$fa2, $sp, 116
	fcvt.d.s	$fa0, $fa0
	fst.d	$fa0, $a6, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $a2, %pc_lo12(veryfastsupg_double_loadtree.tmptmplen)
	fcvt.d.s	$fa0, $fa2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(veryfastsupg_double_loadtree.ac)
	fst.d	$fa0, $a6, 8
	fstx.d	$fa1, $a7, $s8
	st.w	$s6, $a4, 0
	b	.LBB22_51
	.p2align	4, , 16
.LBB22_48:                              #   in Loop: Header=BB22_51 Depth=2
	slt	$a4, $a5, $a1
	masknez	$a7, $a1, $a4
	maskeqz	$a4, $a5, $a4
	or	$a4, $a4, $a7
	slt	$a7, $a1, $a5
	masknez	$t0, $a1, $a7
	maskeqz	$a7, $a5, $a7
	or	$a7, $a7, $t0
	move	$t1, $a0
	move	$t0, $a5
.LBB22_49:                              #   in Loop: Header=BB22_51 Depth=2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $s3, $t1
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s3, $a4
	slli.d	$t0, $t0, 3
	fldx.d	$fa0, $t1, $t0
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $a4, $a7
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa2, $fa1, $fa0, $fcc0
	pcalau12i	$a4, %pc_hi20(.LCPI22_0)
	fld.d	$fa3, $a4, %pc_lo12(.LCPI22_0)
	pcalau12i	$a4, %pc_hi20(.LCPI22_1)
	fld.d	$fa4, $a4, %pc_lo12(.LCPI22_1)
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa5
	fmul.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa4, $fa0
	fstx.d	$fa0, $t1, $t0
.LBB22_50:                              #   in Loop: Header=BB22_51 Depth=2
	slli.d	$a4, $a5, 3
	ldx.w	$a5, $a2, $a4
	beq	$a5, $fp, .LBB22_55
.LBB22_51:                              #   Parent Loop BB22_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a5, $a0, .LBB22_50
# %bb.52:                               #   in Loop: Header=BB22_51 Depth=2
	beq	$a5, $a1, .LBB22_50
# %bb.53:                               #   in Loop: Header=BB22_51 Depth=2
	bge	$a5, $a0, .LBB22_48
# %bb.54:                               # %._crit_edge251
                                        #   in Loop: Header=BB22_51 Depth=2
	move	$a4, $a5
	move	$t1, $a5
	move	$a7, $a1
	move	$t0, $a0
	b	.LBB22_49
	.p2align	4, , 16
.LBB22_55:                              #   in Loop: Header=BB22_18 Depth=1
	alsl.d	$a0, $a1, $a2, 3
	ld.w	$a0, $a0, 4
	ldx.w	$a1, $a2, $a3
	slli.d	$a4, $a0, 3
	stx.w	$a1, $a2, $a4
	beq	$a1, $fp, .LBB22_17
# %bb.56:                               #   in Loop: Header=BB22_18 Depth=1
	alsl.d	$a1, $a1, $a2, 3
	st.w	$a0, $a1, 4
	b	.LBB22_17
.LBB22_57:                              #   in Loop: Header=BB22_18 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB22_19
.LBB22_58:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_59:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_60:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	veryfastsupg_double_loadtree, .Lfunc_end22-veryfastsupg_double_loadtree
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function veryfastsupg_double_outtree
.LCPI23_0:
	.dword	0x40e869fe66666666              # double 49999.949999999997
.LCPI23_1:
	.dword	0x40f869fe66666666              # double 99999.899999999994
	.text
	.globl	veryfastsupg_double_outtree
	.p2align	5
	.type	veryfastsupg_double_outtree,@function
veryfastsupg_double_outtree:            # @veryfastsupg_double_outtree
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	move	$s5, $a4
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	move	$s2, $a1
	move	$s6, $a0
	lu12i.w	$a0, -209716
	ori	$a1, $a0, 3277
	pcalau12i	$a0, %pc_hi20(sueff1_double)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	lu32i.d	$a1, -209716
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $a0, %pc_lo12(sueff1_double)
	pcalau12i	$a0, %pc_hi20(sueff05_double)
	lu12i.w	$a1, -419431
	ori	$a1, $a1, 2458
	lu32i.d	$a1, -419431
	lu52i.d	$a1, $a1, 1018
	st.d	$a1, $a0, %pc_lo12(sueff05_double)
	pcalau12i	$a0, %got_pc_hi20(treemethod)
	ld.d	$a0, $a0, %got_pc_lo12(treemethod)
	ld.w	$a2, $a0, 0
	ori	$a0, $zero, 113
	beq	$a2, $a0, .LBB23_5
# %bb.1:
	ori	$a0, $zero, 88
	beq	$a2, $a0, .LBB23_4
# %bb.2:
	ori	$a0, $zero, 69
	bne	$a2, $a0, .LBB23_63
# %bb.3:
	pcalau12i	$a0, %pc_hi20(cluster_average_double)
	addi.d	$a0, $a0, %pc_lo12(cluster_average_double)
	b	.LBB23_6
.LBB23_4:
	pcalau12i	$a0, %pc_hi20(cluster_mix_double)
	addi.d	$a0, $a0, %pc_lo12(cluster_mix_double)
	b	.LBB23_6
.LBB23_5:
	pcalau12i	$a0, %pc_hi20(cluster_minimum_double)
	addi.d	$a0, $a0, %pc_lo12(cluster_minimum_double)
.LBB23_6:
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(veryfastsupg_double_outtree.hist)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_outtree.hist)
	pcalau12i	$a1, %pc_hi20(veryfastsupg_double_outtree.treetmp)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(veryfastsupg_double_outtree.tree)
	pcalau12i	$a1, %pc_hi20(veryfastsupg_double_outtree.tmptmplen)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(veryfastsupg_double_outtree.ac)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(veryfastsupg_double_outtree.nametmp)
	beqz	$a0, .LBB23_12
# %bb.7:
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	blez	$s6, .LBB23_13
.LBB23_8:                               # %.preheader228.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	slli.d	$s3, $s6, 3
	addi.d	$s8, $s5, 14
	ori	$s5, $zero, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	ori	$s1, $zero, 95
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s6, $a0, %pc_lo12(.L.str.11)
	move	$s0, $zero
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB23_9:                               # %.preheader228
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, %pc_lo12(veryfastsupg_double_outtree.nametmp)
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $a1, 8
	st.d	$zero, $a1, 22
	st.d	$zero, $a1, 0
	ld.b	$a0, $s8, -14
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 0
	ld.b	$a0, $s8, -13
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 1
	ld.b	$a0, $s8, -12
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 2
	ld.b	$a0, $s8, -11
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 3
	ld.b	$a0, $s8, -10
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 4
	ld.b	$a0, $s8, -9
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 5
	ld.b	$a0, $s8, -8
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 6
	ld.b	$a0, $s8, -7
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 7
	ld.b	$a0, $s8, -6
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 8
	ld.b	$a0, $s8, -5
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 9
	ld.b	$a0, $s8, -4
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 10
	ld.b	$a0, $s8, -3
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 11
	ld.b	$a0, $s8, -2
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 12
	ld.b	$a0, $s8, -1
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 13
	ld.b	$a0, $s8, 0
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 14
	ld.b	$a0, $s8, 1
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 15
	ld.b	$a0, $s8, 2
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 16
	ld.b	$a0, $s8, 3
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 17
	ld.b	$a0, $s8, 4
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 18
	ld.b	$a0, $s8, 5
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 19
	ld.b	$a0, $s8, 6
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 20
	ld.b	$a0, $s8, 7
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 21
	ld.b	$a0, $s8, 8
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 22
	ld.b	$a0, $s8, 9
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 23
	ld.b	$a0, $s8, 10
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 24
	ld.b	$a0, $s8, 11
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 25
	ld.b	$a0, $s8, 12
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 26
	ld.b	$a0, $s8, 13
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 27
	ld.b	$a0, $s8, 14
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 28
	ld.b	$a0, $s8, 15
	ld.d	$a2, $s4, 0
	slli.d	$a3, $a0, 1
	ldx.hu	$a2, $a2, $a3
	andi	$a2, $a2, 8
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s1, $a2
	ld.d	$a3, $s7, %pc_lo12(veryfastsupg_double_outtree.tree)
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 29
	st.b	$zero, $a1, 30
	ldx.d	$a0, $a3, $s0
	addi.d	$a3, $a1, 1
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.w	$s5, $s5, 1
	addi.d	$s8, $s8, 256
	bne	$s3, $s0, .LBB23_9
# %bb.10:                               # %.preheader226
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(veryfastsupg_double_outtree.ac)
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	bne	$s0, $a0, .LBB23_14
# %bb.11:
	move	$a0, $zero
	b	.LBB23_17
.LBB23_12:
	pcalau12i	$a0, %got_pc_hi20(njob)
	move	$s1, $fp
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	ori	$s0, $zero, 50
	mul.w	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(veryfastsupg_double_outtree.treetmp)
	mul.w	$a1, $a2, $s0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s4, %pc_lo12(veryfastsupg_double_outtree.tree)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$fp, $s1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(veryfastsupg_double_outtree.hist)
	slli.d	$s3, $a1, 3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(veryfastsupg_double_outtree.tmptmplen)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(veryfastsupg_double_outtree.ac)
	ori	$a0, $zero, 30
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(veryfastsupg_double_outtree.nametmp)
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	bgtz	$s6, .LBB23_8
.LBB23_13:                              # %._crit_edge238.thread
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_outtree.ac)
	alsl.d	$a0, $s6, $a0, 3
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, -8
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB23_20
.LBB23_14:                              # %vector.ph
	bstrpick.d	$a0, $s0, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a2, $a1, 8
	ori	$a3, $zero, 2
	move	$a4, $a0
	.p2align	4, , 16
.LBB23_15:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a3, -2
	addi.d	$a6, $a3, -1
	st.w	$a6, $a2, -8
	st.w	$a3, $a2, 0
	addi.d	$a6, $a3, -3
	st.w	$a6, $a2, -4
	st.w	$a5, $a2, 4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB23_15
# %bb.16:                               # %middle.block
	beq	$a0, $s0, .LBB23_19
.LBB23_17:                              # %scalar.ph.preheader
	addi.d	$a2, $a0, -1
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a3, $a3, 4
	sub.d	$a0, $s0, $a0
	.p2align	4, , 16
.LBB23_18:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a2, 2
	st.w	$a4, $a3, -4
	st.w	$a2, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB23_18
.LBB23_19:                              # %._crit_edge238
	addi.w	$a2, $s0, -1
	addi.w	$s5, $zero, -1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_outtree.tmptmplen)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	move	$a3, $s5
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	stx.w	$a3, $a1, $a2
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_outtree.hist)
	slli.d	$a2, $s0, 2
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB23_21
.LBB23_20:                              # %._crit_edge282
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $s0, %pc_lo12(veryfastsupg_double_outtree.treetmp)
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(veryfastsupg_double_outtree.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $s1, %pc_lo12(veryfastsupg_double_outtree.hist)
	st.d	$zero, $fp, %pc_lo12(veryfastsupg_double_outtree.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(veryfastsupg_double_outtree.ac)
	st.d	$zero, $s1, %pc_lo12(veryfastsupg_double_outtree.hist)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_outtree.tree)
	st.d	$zero, $fp, %pc_lo12(veryfastsupg_double_outtree.ac)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(veryfastsupg_double_outtree.treetmp)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_outtree.nametmp)
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB23_21:                              # %.lr.ph281.preheader
	lu12i.w	$a0, 104857
	ori	$a0, $a0, 2457
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI23_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI23_0)
	move	$s4, $zero
	move	$s6, $s5
	move	$s8, $s5
	b	.LBB23_23
	.p2align	4, , 16
.LBB23_22:                              #   in Loop: Header=BB23_23 Depth=1
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $s3, %pc_lo12(veryfastsupg_double_outtree.tree)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(veryfastsupg_double_outtree.treetmp)
	ldx.d	$a2, $a1, $s0
	ldx.d	$a4, $a1, $s1
	ld.d	$a5, $a3, 8
	ld.d	$a3, $a3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(veryfastsupg_double_outtree.tree)
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $fp, %pc_lo12(veryfastsupg_double_outtree.treetmp)
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB23_20
.LBB23_23:                              # %.lr.ph281
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_26 Depth 2
                                        #       Child Loop BB23_27 Depth 3
                                        #     Child Loop BB23_34 Depth 2
                                        #     Child Loop BB23_37 Depth 2
                                        #     Child Loop BB23_45 Depth 2
                                        #     Child Loop BB23_48 Depth 2
                                        #     Child Loop BB23_56 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a0, $s4, $a0
	rotri.w	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB23_62
.LBB23_24:                              #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_outtree.ac)
	ld.w	$a4, $a0, 0
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	beq	$a4, $s5, .LBB23_30
# %bb.25:                               # %.preheader.preheader
                                        #   in Loop: Header=BB23_23 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI23_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI23_1)
	move	$a1, $zero
	.p2align	4, , 16
.LBB23_26:                              # %.preheader
                                        #   Parent Loop BB23_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_27 Depth 3
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	move	$a3, $a1
	move	$a1, $a4
	.p2align	4, , 16
.LBB23_27:                              #   Parent Loop BB23_23 Depth=1
                                        #     Parent Loop BB23_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $a2, $a5
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a6, $fcc0
	masknez	$a7, $s8, $a6
	maskeqz	$t0, $a3, $a6
	maskeqz	$t1, $a4, $a6
	ldx.w	$a4, $a0, $a5
	or	$s8, $t0, $a7
	masknez	$a6, $s6, $a6
	addi.w	$a5, $zero, -1
	or	$s6, $t1, $a6
	bne	$a4, $a5, .LBB23_27
# %bb.28:                               # %.loopexit
                                        #   in Loop: Header=BB23_26 Depth=2
	slli.d	$a2, $a1, 3
	ldx.w	$a4, $a0, $a2
	bne	$a4, $a5, .LBB23_26
# %bb.29:                               # %._crit_edge248.loopexit
                                        #   in Loop: Header=BB23_23 Depth=1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB23_31
	.p2align	4, , 16
.LBB23_30:                              #   in Loop: Header=BB23_23 Depth=1
	fmov.d	$fa0, $fs0
.LBB23_31:                              # %._crit_edge248
                                        #   in Loop: Header=BB23_23 Depth=1
	slli.d	$a2, $s4, 3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(veryfastsupg_double_outtree.hist)
	ldx.d	$a3, $t6, $a2
	slli.d	$a4, $s8, 2
	ldx.w	$a5, $a1, $a4
	ld.d	$a4, $a3, 0
	beq	$a5, $s5, .LBB23_38
# %bb.32:                               #   in Loop: Header=BB23_23 Depth=1
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $t6, $a5
	ld.d	$t0, $a5, 0
	ld.d	$t1, $a5, 8
	ld.w	$t3, $t0, 0
	ld.w	$t4, $t1, 0
	slt	$t2, $t4, $t3
	slt	$a5, $t3, $t4
	masknez	$a6, $t4, $a5
	maskeqz	$a5, $t3, $a5
	or	$a7, $a5, $a6
	masknez	$a6, $t1, $t2
	maskeqz	$t5, $t0, $t2
	addi.w	$a5, $zero, -1
	or	$a6, $t5, $a6
	beq	$a7, $a5, .LBB23_40
# %bb.33:                               # %.lr.ph255.preheader
                                        #   in Loop: Header=BB23_23 Depth=1
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	addi.d	$t0, $t0, 4
	.p2align	4, , 16
.LBB23_34:                              # %.lr.ph255
                                        #   Parent Loop BB23_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a7, $a4, 0
	ld.w	$a7, $t0, 0
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	bne	$a7, $a5, .LBB23_34
# %bb.35:                               # %.preheader224.loopexit
                                        #   in Loop: Header=BB23_23 Depth=1
	ld.w	$a7, $a6, 0
	beq	$a7, $a5, .LBB23_41
.LBB23_36:                              # %.lr.ph260.preheader
                                        #   in Loop: Header=BB23_23 Depth=1
	addi.d	$a6, $a6, 4
	.p2align	4, , 16
.LBB23_37:                              # %.lr.ph260
                                        #   Parent Loop BB23_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a7, $a4, 0
	ld.w	$a7, $a6, 0
	addi.d	$t0, $a4, 4
	addi.d	$a6, $a6, 4
	move	$a4, $t0
	bne	$a7, $a5, .LBB23_37
	b	.LBB23_42
	.p2align	4, , 16
.LBB23_38:                              #   in Loop: Header=BB23_23 Depth=1
	st.w	$s8, $a4, 0
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	st.w	$a5, $a4, 4
	slli.d	$a4, $s6, 2
	ldx.w	$a4, $a1, $a4
	ld.d	$a3, $a3, 8
	bne	$a4, $s5, .LBB23_43
.LBB23_39:                              #   in Loop: Header=BB23_23 Depth=1
	st.w	$s6, $a3, 0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	st.w	$a4, $a3, 4
	b	.LBB23_52
	.p2align	4, , 16
.LBB23_40:                              #   in Loop: Header=BB23_23 Depth=1
	masknez	$a7, $t4, $t2
	maskeqz	$t0, $t3, $t2
	or	$a7, $t0, $a7
	bne	$a7, $a5, .LBB23_36
.LBB23_41:                              #   in Loop: Header=BB23_23 Depth=1
	move	$t0, $a4
.LBB23_42:                              # %._crit_edge261
                                        #   in Loop: Header=BB23_23 Depth=1
	lu32i.d	$a5, 0
	st.w	$a5, $t0, 0
	slli.d	$a4, $s6, 2
	ldx.w	$a4, $a1, $a4
	ld.d	$a3, $a3, 8
	beq	$a4, $s5, .LBB23_39
.LBB23_43:                              #   in Loop: Header=BB23_23 Depth=1
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $t6, $a4
	ld.d	$a7, $a4, 0
	ld.d	$t0, $a4, 8
	ld.w	$t2, $a7, 0
	ld.w	$t3, $t0, 0
	slt	$t1, $t3, $t2
	slt	$a4, $t2, $t3
	masknez	$a5, $t3, $a4
	maskeqz	$a4, $t2, $a4
	or	$a6, $a4, $a5
	masknez	$a5, $t0, $t1
	maskeqz	$t4, $a7, $t1
	addi.w	$a4, $zero, -1
	or	$a5, $t4, $a5
	beq	$a6, $a4, .LBB23_49
# %bb.44:                               # %.lr.ph267.preheader
                                        #   in Loop: Header=BB23_23 Depth=1
	masknez	$a7, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$a7, $t0, $a7
	addi.d	$a7, $a7, 4
	.p2align	4, , 16
.LBB23_45:                              # %.lr.ph267
                                        #   Parent Loop BB23_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a6, $a3, 0
	ld.w	$a6, $a7, 0
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 4
	bne	$a6, $a4, .LBB23_45
# %bb.46:                               # %.preheader223.loopexit
                                        #   in Loop: Header=BB23_23 Depth=1
	ld.w	$a6, $a5, 0
	beq	$a6, $a4, .LBB23_50
.LBB23_47:                              # %.lr.ph272.preheader
                                        #   in Loop: Header=BB23_23 Depth=1
	addi.d	$a5, $a5, 4
	.p2align	4, , 16
.LBB23_48:                              # %.lr.ph272
                                        #   Parent Loop BB23_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a6, $a3, 0
	ld.w	$a6, $a5, 0
	addi.d	$a7, $a3, 4
	addi.d	$a5, $a5, 4
	move	$a3, $a7
	bne	$a6, $a4, .LBB23_48
	b	.LBB23_51
	.p2align	4, , 16
.LBB23_49:                              #   in Loop: Header=BB23_23 Depth=1
	masknez	$a6, $t3, $t1
	maskeqz	$a7, $t2, $t1
	or	$a6, $a7, $a6
	bne	$a6, $a4, .LBB23_47
.LBB23_50:                              #   in Loop: Header=BB23_23 Depth=1
	move	$a7, $a3
.LBB23_51:                              # %._crit_edge273
                                        #   in Loop: Header=BB23_23 Depth=1
	lu32i.d	$a4, 0
	st.w	$a4, $a7, 0
.LBB23_52:                              #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(veryfastsupg_double_outtree.tmptmplen)
	slli.d	$s0, $s8, 3
	fldx.d	$fa1, $a3, $s0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a2, $a4, $a2
	fsub.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a2, 0
	slli.d	$s1, $s6, 3
	fldx.d	$fa1, $a3, $s1
	move	$fp, $zero
	alsl.d	$a1, $s8, $a1, 2
	fsub.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a2, 8
	alsl.d	$a2, $s4, $a4, 3
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	fstx.d	$fa0, $a3, $s0
	st.w	$s4, $a1, 0
	b	.LBB23_56
	.p2align	4, , 16
.LBB23_53:                              #   in Loop: Header=BB23_56 Depth=2
	slt	$a0, $s6, $fp
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	slt	$a1, $fp, $s6
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $fp, $a1
	or	$a1, $a1, $a2
	move	$a3, $s8
	move	$a2, $fp
.LBB23_54:                              #   in Loop: Header=BB23_56 Depth=2
	slli.d	$s7, $a3, 3
	ldx.d	$a3, $s2, $s7
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s2, $a1
	slli.d	$s3, $a2, 3
	fldx.d	$fa0, $a3, $s3
	slli.d	$a0, $a0, 3
	fldx.d	$fa1, $a1, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	jirl	$ra, $a0, 0
	ldx.d	$a1, $s2, $s7
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_double_outtree.ac)
	fstx.d	$fa0, $a1, $s3
.LBB23_55:                              #   in Loop: Header=BB23_56 Depth=2
	slli.d	$a1, $fp, 3
	ldx.w	$fp, $a0, $a1
	beq	$fp, $s5, .LBB23_60
.LBB23_56:                              #   Parent Loop BB23_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$fp, $s8, .LBB23_55
# %bb.57:                               #   in Loop: Header=BB23_56 Depth=2
	beq	$fp, $s6, .LBB23_55
# %bb.58:                               #   in Loop: Header=BB23_56 Depth=2
	bge	$fp, $s8, .LBB23_53
# %bb.59:                               # %._crit_edge307
                                        #   in Loop: Header=BB23_56 Depth=2
	move	$a1, $fp
	move	$a3, $fp
	move	$a0, $s6
	move	$a2, $s8
	b	.LBB23_54
	.p2align	4, , 16
.LBB23_60:                              #   in Loop: Header=BB23_23 Depth=1
	alsl.d	$a1, $s6, $a0, 3
	ld.w	$a1, $a1, 4
	ldx.w	$a2, $a0, $s1
	slli.d	$a3, $a1, 3
	stx.w	$a2, $a0, $a3
	beq	$a2, $s5, .LBB23_22
# %bb.61:                               #   in Loop: Header=BB23_23 Depth=1
	alsl.d	$a0, $a2, $a0, 3
	st.w	$a1, $a0, 4
	b	.LBB23_22
.LBB23_62:                              #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB23_24
.LBB23_63:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	veryfastsupg_double_outtree, .Lfunc_end23-veryfastsupg_double_outtree
                                        # -- End function
	.p2align	5                               # -- Begin function cluster_mix_double
	.type	cluster_mix_double,@function
cluster_mix_double:                     # @cluster_mix_double
# %bb.0:
	fcmp.clt.d	$fcc0, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(sueff1_double)
	pcalau12i	$a1, %pc_hi20(sueff05_double)
	fld.d	$fa2, $a1, %pc_lo12(sueff05_double)
	fld.d	$fa3, $a0, %pc_lo12(sueff1_double)
	fsel	$fa4, $fa1, $fa0, $fcc0
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ret
.Lfunc_end24:
	.size	cluster_mix_double, .Lfunc_end24-cluster_mix_double
                                        # -- End function
	.p2align	5                               # -- Begin function cluster_average_double
	.type	cluster_average_double,@function
cluster_average_double:                 # @cluster_average_double
# %bb.0:
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end25:
	.size	cluster_average_double, .Lfunc_end25-cluster_average_double
                                        # -- End function
	.p2align	5                               # -- Begin function cluster_minimum_double
	.type	cluster_minimum_double,@function
cluster_minimum_double:                 # @cluster_minimum_double
# %bb.0:
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	ret
.Lfunc_end26:
	.size	cluster_minimum_double, .Lfunc_end26-cluster_minimum_double
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function veryfastsupg
.LCPI27_0:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI27_1:
	.dword	0x413e848000000000              # double 2.0E+6
.LCPI27_2:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI27_3:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
	.text
	.globl	veryfastsupg
	.p2align	5
	.type	veryfastsupg,@function
veryfastsupg:                           # @veryfastsupg
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
	pcalau12i	$s6, %pc_hi20(veryfastsupg.eff)
	ld.d	$a4, $s6, %pc_lo12(veryfastsupg.eff)
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(veryfastsupg.hist)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$t4, %pc_hi20(veryfastsupg.tmptmplen)
	pcalau12i	$t3, %pc_hi20(veryfastsupg.ac)
	st.d	$t3, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 48                    # 8-byte Folded Spill
	beqz	$a4, .LBB27_13
# %bb.1:
	blez	$s0, .LBB27_14
.LBB27_2:                               # %.preheader208.lr.ph
	move	$a0, $zero
	ld.d	$a2, $s6, %pc_lo12(veryfastsupg.eff)
	bstrpick.d	$a3, $s0, 30, 2
	slli.d	$a3, $a3, 2
	ori	$a4, $zero, 4
	vldi	$vr0, -928
	pcalau12i	$a5, %pc_hi20(.LCPI27_0)
	fld.d	$fs0, $a5, %pc_lo12(.LCPI27_0)
	lu52i.d	$a5, $zero, 1022
	vreplgr2vr.d	$vr1, $a5
	ori	$a5, $zero, 0
	lu32i.d	$a5, -97152
	lu52i.d	$a5, $a5, 1042
	vreplgr2vr.d	$vr2, $a5
	b	.LBB27_4
	.p2align	4, , 16
.LBB27_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB27_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s0, .LBB27_11
.LBB27_4:                               # %.preheader208.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_7 Depth 2
                                        #     Child Loop BB27_10 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$a5, $a1, $a6
	ldx.d	$a6, $a2, $a6
	bgeu	$s0, $a4, .LBB27_6
# %bb.5:                                #   in Loop: Header=BB27_4 Depth=1
	move	$a7, $zero
	b	.LBB27_9
	.p2align	4, , 16
.LBB27_6:                               # %vector.body.preheader
                                        #   in Loop: Header=BB27_4 Depth=1
	addi.d	$a7, $a6, 8
	addi.d	$t0, $a5, 16
	move	$t1, $a3
	.p2align	4, , 16
.LBB27_7:                               # %vector.body
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t0, -16
	vld	$vr4, $t0, 0
	vfmadd.d	$vr3, $vr3, $vr2, $vr1
	vfmadd.d	$vr4, $vr4, $vr2, $vr1
	vreplvei.d	$vr5, $vr3, 0
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t2, $fa5
	vinsgr2vr.w	$vr5, $t2, 0
	vreplvei.d	$vr3, $vr3, 1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t2, $fa3
	vinsgr2vr.w	$vr5, $t2, 1
	vreplvei.d	$vr3, $vr4, 0
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t2, $fa3
	vinsgr2vr.w	$vr3, $t2, 0
	vreplvei.d	$vr4, $vr4, 1
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$t2, $fa4
	vinsgr2vr.w	$vr3, $t2, 1
	vpackev.d	$vr3, $vr3, $vr5
	vst	$vr3, $a7, -8
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB27_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB27_4 Depth=1
	move	$a7, $a3
	beq	$a3, $s0, .LBB27_3
.LBB27_9:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB27_4 Depth=1
	alsl.d	$a5, $a7, $a5, 3
	alsl.d	$a6, $a7, $a6, 2
	sub.d	$a7, $s0, $a7
	.p2align	4, , 16
.LBB27_10:                              # %scalar.ph
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a5, 0
	fmadd.d	$fa3, $fa3, $fs0, $fa0
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t0, $fa3
	st.w	$t0, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	bnez	$a7, .LBB27_10
	b	.LBB27_3
.LBB27_11:                              # %.preheader207
	ld.d	$a1, $t3, %pc_lo12(veryfastsupg.ac)
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB27_15
# %bb.12:
	move	$a0, $zero
	b	.LBB27_18
.LBB27_13:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s2, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s2, 0
	move	$fp, $a1
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s6, %pc_lo12(veryfastsupg.eff)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(veryfastsupg.hist)
	slli.d	$s2, $a1, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(veryfastsupg.tmptmplen)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $fp
	st.d	$a0, $t3, %pc_lo12(veryfastsupg.ac)
	bgtz	$s0, .LBB27_2
.LBB27_14:                              # %._crit_edge217.thread
	ld.d	$a0, $t3, %pc_lo12(veryfastsupg.ac)
	alsl.d	$a0, $s0, $a0, 3
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, -8
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB27_21
.LBB27_15:                              # %vector.ph319
	bstrpick.d	$a0, $s0, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a2, $a1, 8
	ori	$a3, $zero, 2
	move	$a4, $a0
	.p2align	4, , 16
.LBB27_16:                              # %vector.body322
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a3, -2
	addi.d	$a6, $a3, -1
	st.w	$a6, $a2, -8
	st.w	$a3, $a2, 0
	addi.d	$a6, $a3, -3
	st.w	$a6, $a2, -4
	st.w	$a5, $a2, 4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB27_16
# %bb.17:                               # %middle.block325
	beq	$a0, $s0, .LBB27_20
.LBB27_18:                              # %scalar.ph317.preheader
	addi.d	$a2, $a0, -1
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a3, $a3, 4
	sub.d	$a0, $s0, $a0
	.p2align	4, , 16
.LBB27_19:                              # %scalar.ph317
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a2, 2
	st.w	$a4, $a3, -4
	st.w	$a2, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB27_19
.LBB27_20:                              # %._crit_edge217
	addi.w	$s8, $s0, -1
	addi.w	$s4, $zero, -1
	slli.d	$a2, $s8, 3
	move	$a3, $s4
	ld.d	$a0, $t4, %pc_lo12(veryfastsupg.tmptmplen)
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	stx.w	$a3, $a1, $a2
	slli.d	$a2, $s0, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg.hist)
	slli.d	$a2, $s0, 2
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB27_23
.LBB27_21:                              # %._crit_edge217.._crit_edge262_crit_edge
	ld.d	$a0, $s6, %pc_lo12(veryfastsupg.eff)
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
.LBB27_22:                              # %._crit_edge262
	move	$fp, $t6
	move	$s1, $t7
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(veryfastsupg.tmptmplen)
	st.d	$zero, $s6, %pc_lo12(veryfastsupg.eff)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(veryfastsupg.hist)
	st.d	$zero, $s1, %pc_lo12(veryfastsupg.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(veryfastsupg.ac)
	st.d	$zero, $s0, %pc_lo12(veryfastsupg.hist)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, %pc_lo12(veryfastsupg.ac)
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
.LBB27_23:                              # %.lr.ph261.preheader
	lu12i.w	$a0, -209716
	ori	$s5, $a0, 3277
	lu12i.w	$a0, 104857
	ori	$s7, $a0, 2457
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI27_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI27_1)
	vldi	$vr3, -928
	lu12i.w	$a0, 976
	ori	$a0, $a0, 2304
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$s2, $s4
	move	$fp, $s4
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	b	.LBB27_25
	.p2align	4, , 16
.LBB27_24:                              #   in Loop: Header=BB27_25 Depth=1
	addi.d	$s3, $s3, 1
	beq	$s3, $s8, .LBB27_22
.LBB27_25:                              # %.lr.ph261
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_28 Depth 2
                                        #       Child Loop BB27_29 Depth 3
                                        #     Child Loop BB27_37 Depth 2
                                        #     Child Loop BB27_40 Depth 2
                                        #     Child Loop BB27_48 Depth 2
                                        #     Child Loop BB27_51 Depth 2
                                        #     Child Loop BB27_59 Depth 2
	mul.d	$a0, $s3, $s5
	rotri.w	$a0, $a0, 1
	bgeu	$s7, $a0, .LBB27_32
# %bb.26:                               #   in Loop: Header=BB27_25 Depth=1
	ld.d	$a1, $t6, %pc_lo12(veryfastsupg.ac)
	ld.w	$a6, $a1, 0
	beq	$a6, $s4, .LBB27_33
.LBB27_27:                              # %.preheader.lr.ph
                                        #   in Loop: Header=BB27_25 Depth=1
	ld.d	$a0, $s6, %pc_lo12(veryfastsupg.eff)
	move	$a2, $zero
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB27_28:                              # %.preheader
                                        #   Parent Loop BB27_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_29 Depth 3
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a0, $a4
	move	$a5, $a2
	move	$a2, $a6
	.p2align	4, , 16
.LBB27_29:                              #   Parent Loop BB27_25 Depth=1
                                        #     Parent Loop BB27_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a4, $a7
	slt	$t0, $a7, $a3
	maskeqz	$a7, $a7, $t0
	masknez	$a3, $a3, $t0
	or	$a3, $a7, $a3
	masknez	$a7, $fp, $t0
	maskeqz	$t1, $a5, $t0
	maskeqz	$t2, $a6, $t0
	slli.d	$a6, $a6, 3
	ldx.w	$a6, $a1, $a6
	or	$fp, $t1, $a7
	masknez	$t0, $s2, $t0
	addi.w	$a7, $zero, -1
	or	$s2, $t2, $t0
	bne	$a6, $a7, .LBB27_29
# %bb.30:                               # %.loopexit
                                        #   in Loop: Header=BB27_28 Depth=2
	slli.d	$a4, $a2, 3
	ldx.w	$a6, $a1, $a4
	bne	$a6, $a7, .LBB27_28
# %bb.31:                               # %._crit_edge227.loopexit
                                        #   in Loop: Header=BB27_25 Depth=1
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa3
	b	.LBB27_34
.LBB27_32:                              #   in Loop: Header=BB27_25 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $t6, %pc_lo12(veryfastsupg.ac)
	ld.w	$a6, $a1, 0
	bne	$a6, $s4, .LBB27_27
	.p2align	4, , 16
.LBB27_33:                              #   in Loop: Header=BB27_25 Depth=1
	fmov.d	$fa0, $fs1
.LBB27_34:                              # %._crit_edge227
                                        #   in Loop: Header=BB27_25 Depth=1
	slli.d	$a2, $s3, 3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg.hist)
	ldx.d	$a3, $s1, $a2
	slli.d	$a4, $fp, 2
	ldx.w	$a5, $a0, $a4
	ld.d	$a4, $a3, 0
	beq	$a5, $s4, .LBB27_41
# %bb.35:                               #   in Loop: Header=BB27_25 Depth=1
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s1, $a5
	ld.d	$t0, $a5, 0
	ld.d	$t1, $a5, 8
	ld.w	$t3, $t0, 0
	ld.w	$t4, $t1, 0
	slt	$t2, $t4, $t3
	slt	$a5, $t3, $t4
	masknez	$a6, $t4, $a5
	maskeqz	$a5, $t3, $a5
	or	$a7, $a5, $a6
	masknez	$a6, $t1, $t2
	maskeqz	$t5, $t0, $t2
	addi.w	$a5, $zero, -1
	or	$a6, $t5, $a6
	beq	$a7, $a5, .LBB27_43
# %bb.36:                               # %.lr.ph235.preheader
                                        #   in Loop: Header=BB27_25 Depth=1
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	addi.d	$t0, $t0, 4
	.p2align	4, , 16
.LBB27_37:                              # %.lr.ph235
                                        #   Parent Loop BB27_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a7, $a4, 0
	ld.w	$a7, $t0, 0
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	bne	$a7, $a5, .LBB27_37
# %bb.38:                               # %.preheader205.loopexit
                                        #   in Loop: Header=BB27_25 Depth=1
	ld.w	$a7, $a6, 0
	beq	$a7, $a5, .LBB27_44
.LBB27_39:                              # %.lr.ph240.preheader
                                        #   in Loop: Header=BB27_25 Depth=1
	addi.d	$a6, $a6, 4
	.p2align	4, , 16
.LBB27_40:                              # %.lr.ph240
                                        #   Parent Loop BB27_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a7, $a4, 0
	ld.w	$a7, $a6, 0
	addi.d	$t0, $a4, 4
	addi.d	$a6, $a6, 4
	move	$a4, $t0
	bne	$a7, $a5, .LBB27_40
	b	.LBB27_45
	.p2align	4, , 16
.LBB27_41:                              #   in Loop: Header=BB27_25 Depth=1
	st.w	$fp, $a4, 0
	st.w	$ra, $a4, 4
	slli.d	$a4, $s2, 2
	ldx.w	$a4, $a0, $a4
	ld.d	$a3, $a3, 8
	bne	$a4, $s4, .LBB27_46
.LBB27_42:                              #   in Loop: Header=BB27_25 Depth=1
	st.w	$s2, $a3, 0
	st.w	$ra, $a3, 4
	b	.LBB27_55
	.p2align	4, , 16
.LBB27_43:                              #   in Loop: Header=BB27_25 Depth=1
	masknez	$a7, $t4, $t2
	maskeqz	$t0, $t3, $t2
	or	$a7, $t0, $a7
	bne	$a7, $a5, .LBB27_39
.LBB27_44:                              #   in Loop: Header=BB27_25 Depth=1
	move	$t0, $a4
.LBB27_45:                              # %._crit_edge241
                                        #   in Loop: Header=BB27_25 Depth=1
	lu32i.d	$a5, 0
	st.w	$a5, $t0, 0
	slli.d	$a4, $s2, 2
	ldx.w	$a4, $a0, $a4
	ld.d	$a3, $a3, 8
	beq	$a4, $s4, .LBB27_42
.LBB27_46:                              #   in Loop: Header=BB27_25 Depth=1
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	ld.d	$a7, $a4, 0
	ld.d	$t0, $a4, 8
	ld.w	$t2, $a7, 0
	ld.w	$t3, $t0, 0
	slt	$t1, $t3, $t2
	slt	$a4, $t2, $t3
	masknez	$a5, $t3, $a4
	maskeqz	$a4, $t2, $a4
	or	$a6, $a4, $a5
	masknez	$a5, $t0, $t1
	maskeqz	$t4, $a7, $t1
	addi.w	$a4, $zero, -1
	or	$a5, $t4, $a5
	beq	$a6, $a4, .LBB27_52
# %bb.47:                               # %.lr.ph247.preheader
                                        #   in Loop: Header=BB27_25 Depth=1
	masknez	$a7, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$a7, $t0, $a7
	addi.d	$a7, $a7, 4
	.p2align	4, , 16
.LBB27_48:                              # %.lr.ph247
                                        #   Parent Loop BB27_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a6, $a3, 0
	ld.w	$a6, $a7, 0
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 4
	bne	$a6, $a4, .LBB27_48
# %bb.49:                               # %.preheader204.loopexit
                                        #   in Loop: Header=BB27_25 Depth=1
	ld.w	$a6, $a5, 0
	beq	$a6, $a4, .LBB27_53
.LBB27_50:                              # %.lr.ph252.preheader
                                        #   in Loop: Header=BB27_25 Depth=1
	addi.d	$a5, $a5, 4
	.p2align	4, , 16
.LBB27_51:                              # %.lr.ph252
                                        #   Parent Loop BB27_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a6, $a3, 0
	ld.w	$a6, $a5, 0
	addi.d	$a7, $a3, 4
	addi.d	$a5, $a5, 4
	move	$a3, $a7
	bne	$a6, $a4, .LBB27_51
	b	.LBB27_54
	.p2align	4, , 16
.LBB27_52:                              #   in Loop: Header=BB27_25 Depth=1
	masknez	$a6, $t3, $t1
	maskeqz	$a7, $t2, $t1
	or	$a6, $a7, $a6
	bne	$a6, $a4, .LBB27_50
.LBB27_53:                              #   in Loop: Header=BB27_25 Depth=1
	move	$a7, $a3
.LBB27_54:                              # %._crit_edge253
                                        #   in Loop: Header=BB27_25 Depth=1
	lu32i.d	$a4, 0
	st.w	$a4, $a7, 0
.LBB27_55:                              #   in Loop: Header=BB27_25 Depth=1
	ld.d	$a3, $t7, %pc_lo12(veryfastsupg.tmptmplen)
	slli.d	$a4, $fp, 3
	fldx.d	$fa1, $a3, $a4
	ldx.d	$a5, $t8, $a2
	fdiv.d	$fa0, $fa0, $fs0
	fsub.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a5, 0
	slli.d	$a2, $s2, 3
	fldx.d	$fa1, $a3, $a2
	alsl.d	$a0, $fp, $a0, 2
	fsub.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a5, 8
	fstx.d	$fa0, $a3, $a4
	st.w	$s3, $a0, 0
	ld.d	$a0, $s6, %pc_lo12(veryfastsupg.eff)
	move	$a3, $zero
	b	.LBB27_59
	.p2align	4, , 16
.LBB27_56:                              #   in Loop: Header=BB27_59 Depth=2
	slt	$a4, $s2, $a3
	masknez	$a5, $s2, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	slt	$a5, $a3, $s2
	masknez	$a6, $s2, $a5
	maskeqz	$a5, $a3, $a5
	or	$a5, $a5, $a6
	move	$a7, $fp
	move	$a6, $a3
.LBB27_57:                              #   in Loop: Header=BB27_59 Depth=2
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a0, $a7
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a6, $a6, 2
	ldx.w	$t0, $a7, $a6
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a5, $a4
	slt	$a5, $t0, $a4
	masknez	$t1, $a4, $a5
	maskeqz	$a5, $t0, $a5
	or	$a5, $a5, $t1
	add.d	$a4, $a4, $t0
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a4, %pc_hi20(.LCPI27_2)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI27_2)
	fmul.d	$fa0, $fa0, $fa3
	pcalau12i	$a4, %pc_hi20(.LCPI27_3)
	fld.d	$fa2, $a4, %pc_lo12(.LCPI27_3)
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	stx.w	$a4, $a7, $a6
.LBB27_58:                              #   in Loop: Header=BB27_59 Depth=2
	slli.d	$a3, $a3, 3
	ldx.w	$a3, $a1, $a3
	beq	$a3, $s4, .LBB27_63
.LBB27_59:                              #   Parent Loop BB27_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a3, $fp, .LBB27_58
# %bb.60:                               #   in Loop: Header=BB27_59 Depth=2
	beq	$a3, $s2, .LBB27_58
# %bb.61:                               #   in Loop: Header=BB27_59 Depth=2
	bge	$a3, $fp, .LBB27_56
# %bb.62:                               # %._crit_edge288
                                        #   in Loop: Header=BB27_59 Depth=2
	move	$a5, $a3
	move	$a7, $a3
	move	$a4, $s2
	move	$a6, $fp
	b	.LBB27_57
	.p2align	4, , 16
.LBB27_63:                              #   in Loop: Header=BB27_25 Depth=1
	alsl.d	$a3, $s2, $a1, 3
	ld.w	$a3, $a3, 4
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a3, 3
	stx.w	$a2, $a1, $a4
	beq	$a2, $s4, .LBB27_24
# %bb.64:                               #   in Loop: Header=BB27_25 Depth=1
	alsl.d	$a1, $a2, $a1, 3
	st.w	$a3, $a1, 4
	b	.LBB27_24
.Lfunc_end27:
	.size	veryfastsupg, .Lfunc_end27-veryfastsupg
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function veryfastsupg_int
.LCPI28_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI28_1:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
	.text
	.globl	veryfastsupg_int
	.p2align	5
	.type	veryfastsupg_int,@function
veryfastsupg_int:                       # @veryfastsupg_int
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
	pcalau12i	$s6, %pc_hi20(veryfastsupg_int.eff)
	ld.d	$a4, $s6, %pc_lo12(veryfastsupg_int.eff)
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(veryfastsupg_int.hist)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$t4, %pc_hi20(veryfastsupg_int.tmptmplen)
	pcalau12i	$t3, %pc_hi20(veryfastsupg_int.ac)
	st.d	$t3, $sp, 32                    # 8-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	beqz	$a4, .LBB28_13
# %bb.1:
	blez	$s0, .LBB28_14
.LBB28_2:                               # %.preheader208.lr.ph
	move	$a0, $zero
	ld.d	$a2, $s6, %pc_lo12(veryfastsupg_int.eff)
	bstrpick.d	$a3, $s0, 30, 3
	slli.d	$a3, $a3, 3
	ori	$a4, $zero, 8
	ori	$a5, $zero, 32
	b	.LBB28_4
	.p2align	4, , 16
.LBB28_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB28_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s0, .LBB28_11
.LBB28_4:                               # %.preheader208.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_7 Depth 2
                                        #     Child Loop BB28_10 Depth 2
	slli.d	$a7, $a0, 3
	ldx.d	$a6, $a1, $a7
	ldx.d	$a7, $a2, $a7
	move	$t0, $zero
	bltu	$s0, $a4, .LBB28_9
# %bb.5:                                # %.preheader208.us
                                        #   in Loop: Header=BB28_4 Depth=1
	sub.d	$t1, $a7, $a6
	bltu	$t1, $a5, .LBB28_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB28_4 Depth=1
	addi.d	$t0, $a7, 16
	addi.d	$t1, $a6, 16
	move	$t2, $a3
	.p2align	4, , 16
.LBB28_7:                               # %vector.body
                                        #   Parent Loop BB28_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, -16
	vld	$vr1, $t1, 0
	vst	$vr0, $t0, -16
	vst	$vr1, $t0, 0
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB28_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB28_4 Depth=1
	move	$t0, $a3
	beq	$a3, $s0, .LBB28_3
.LBB28_9:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB28_4 Depth=1
	alsl.d	$a6, $t0, $a6, 2
	alsl.d	$a7, $t0, $a7, 2
	sub.d	$t0, $s0, $t0
	.p2align	4, , 16
.LBB28_10:                              # %scalar.ph
                                        #   Parent Loop BB28_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a6, 0
	st.w	$t1, $a7, 0
	addi.d	$a6, $a6, 4
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 4
	bnez	$t0, .LBB28_10
	b	.LBB28_3
.LBB28_11:                              # %.preheader207
	ld.d	$a1, $t3, %pc_lo12(veryfastsupg_int.ac)
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB28_15
# %bb.12:
	move	$a0, $zero
	b	.LBB28_18
.LBB28_13:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s2, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s2, 0
	move	$fp, $a1
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s6, %pc_lo12(veryfastsupg_int.eff)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(veryfastsupg_int.hist)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(veryfastsupg_int.tmptmplen)
	slli.d	$a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $fp
	st.d	$a0, $t3, %pc_lo12(veryfastsupg_int.ac)
	bgtz	$s0, .LBB28_2
.LBB28_14:                              # %._crit_edge217.thread
	ld.d	$a0, $t3, %pc_lo12(veryfastsupg_int.ac)
	alsl.d	$a0, $s0, $a0, 3
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, -8
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB28_21
.LBB28_15:                              # %vector.ph319
	bstrpick.d	$a0, $s0, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a2, $a1, 8
	ori	$a3, $zero, 2
	move	$a4, $a0
	.p2align	4, , 16
.LBB28_16:                              # %vector.body322
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a3, -2
	addi.d	$a6, $a3, -1
	st.w	$a6, $a2, -8
	st.w	$a3, $a2, 0
	addi.d	$a6, $a3, -3
	st.w	$a6, $a2, -4
	st.w	$a5, $a2, 4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB28_16
# %bb.17:                               # %middle.block325
	beq	$a0, $s0, .LBB28_20
.LBB28_18:                              # %scalar.ph317.preheader
	addi.d	$a2, $a0, -1
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a3, $a3, 4
	sub.d	$a0, $s0, $a0
	.p2align	4, , 16
.LBB28_19:                              # %scalar.ph317
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a2, 2
	st.w	$a4, $a3, -4
	st.w	$a2, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB28_19
.LBB28_20:                              # %._crit_edge217
	addi.w	$s8, $s0, -1
	addi.w	$s4, $zero, -1
	slli.d	$a2, $s8, 3
	move	$a3, $s4
	ld.d	$a0, $t4, %pc_lo12(veryfastsupg_int.tmptmplen)
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	stx.w	$a3, $a1, $a2
	slli.d	$s2, $s0, 2
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(veryfastsupg_int.hist)
	ori	$a1, $zero, 255
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB28_23
.LBB28_21:                              # %._crit_edge217.._crit_edge262_crit_edge
	ld.d	$a0, $s6, %pc_lo12(veryfastsupg_int.eff)
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
.LBB28_22:                              # %._crit_edge262
	move	$fp, $t8
	move	$s1, $ra
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(veryfastsupg_int.tmptmplen)
	st.d	$zero, $s6, %pc_lo12(veryfastsupg_int.eff)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(veryfastsupg_int.hist)
	st.d	$zero, $s1, %pc_lo12(veryfastsupg_int.tmptmplen)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(veryfastsupg_int.ac)
	st.d	$zero, $s0, %pc_lo12(veryfastsupg_int.hist)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, %pc_lo12(veryfastsupg_int.ac)
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
.LBB28_23:                              # %.lr.ph261.preheader
	lu12i.w	$a0, -209716
	ori	$s2, $a0, 3277
	lu12i.w	$a0, 104857
	ori	$s7, $a0, 2457
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $zero
	lu12i.w	$a0, 488
	ori	$a0, $a0, 1152
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vldi	$vr3, -928
	lu12i.w	$a0, 976
	ori	$a0, $a0, 2304
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $s4
	move	$s5, $s4
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	b	.LBB28_25
	.p2align	4, , 16
.LBB28_24:                              #   in Loop: Header=BB28_25 Depth=1
	addi.d	$s3, $s3, 1
	beq	$s3, $s8, .LBB28_22
.LBB28_25:                              # %.lr.ph261
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_28 Depth 2
                                        #       Child Loop BB28_29 Depth 3
                                        #     Child Loop BB28_37 Depth 2
                                        #     Child Loop BB28_40 Depth 2
                                        #     Child Loop BB28_48 Depth 2
                                        #     Child Loop BB28_51 Depth 2
                                        #     Child Loop BB28_59 Depth 2
	mul.d	$a0, $s3, $s2
	rotri.w	$a0, $a0, 1
	bgeu	$s7, $a0, .LBB28_32
# %bb.26:                               #   in Loop: Header=BB28_25 Depth=1
	ld.d	$a1, $t8, %pc_lo12(veryfastsupg_int.ac)
	ld.w	$a6, $a1, 0
	beq	$a6, $s4, .LBB28_33
.LBB28_27:                              # %.preheader.lr.ph
                                        #   in Loop: Header=BB28_25 Depth=1
	ld.d	$a0, $s6, %pc_lo12(veryfastsupg_int.eff)
	move	$a2, $zero
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB28_28:                              # %.preheader
                                        #   Parent Loop BB28_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_29 Depth 3
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a0, $a4
	move	$a5, $a2
	move	$a2, $a6
	.p2align	4, , 16
.LBB28_29:                              #   Parent Loop BB28_25 Depth=1
                                        #     Parent Loop BB28_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a4, $a7
	slt	$t0, $a7, $a3
	maskeqz	$a7, $a7, $t0
	masknez	$a3, $a3, $t0
	or	$a3, $a7, $a3
	masknez	$a7, $s5, $t0
	maskeqz	$t1, $a5, $t0
	maskeqz	$t2, $a6, $t0
	slli.d	$a6, $a6, 3
	ldx.w	$a6, $a1, $a6
	or	$s5, $t1, $a7
	masknez	$t0, $fp, $t0
	addi.w	$a7, $zero, -1
	or	$fp, $t2, $t0
	bne	$a6, $a7, .LBB28_29
# %bb.30:                               # %.loopexit
                                        #   in Loop: Header=BB28_28 Depth=2
	slli.d	$a4, $a2, 3
	ldx.w	$a6, $a1, $a4
	bne	$a6, $a7, .LBB28_28
# %bb.31:                               # %._crit_edge227.loopexit
                                        #   in Loop: Header=BB28_25 Depth=1
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	b	.LBB28_34
.LBB28_32:                              #   in Loop: Header=BB28_25 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $t8, %pc_lo12(veryfastsupg_int.ac)
	ld.w	$a6, $a1, 0
	bne	$a6, $s4, .LBB28_27
	.p2align	4, , 16
.LBB28_33:                              #   in Loop: Header=BB28_25 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
.LBB28_34:                              # %._crit_edge227
                                        #   in Loop: Header=BB28_25 Depth=1
	slli.d	$a3, $s3, 3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $a2, %pc_lo12(veryfastsupg_int.hist)
	ldx.d	$a6, $s1, $a3
	slli.d	$a2, $s5, 2
	ldx.w	$a7, $a4, $a2
	ld.d	$a5, $a6, 0
	beq	$a7, $s4, .LBB28_41
# %bb.35:                               #   in Loop: Header=BB28_25 Depth=1
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $s1, $a7
	ld.d	$t2, $a7, 0
	ld.d	$t3, $a7, 8
	ld.w	$t5, $t2, 0
	ld.w	$t6, $t3, 0
	slt	$t4, $t6, $t5
	slt	$a7, $t5, $t6
	masknez	$t0, $t6, $a7
	maskeqz	$a7, $t5, $a7
	or	$t1, $a7, $t0
	masknez	$t0, $t3, $t4
	maskeqz	$t7, $t2, $t4
	addi.w	$a7, $zero, -1
	or	$t0, $t7, $t0
	beq	$t1, $a7, .LBB28_43
# %bb.36:                               # %.lr.ph235.preheader
                                        #   in Loop: Header=BB28_25 Depth=1
	masknez	$t2, $t2, $t4
	maskeqz	$t3, $t3, $t4
	or	$t2, $t3, $t2
	addi.d	$t2, $t2, 4
	.p2align	4, , 16
.LBB28_37:                              # %.lr.ph235
                                        #   Parent Loop BB28_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t1, $a5, 0
	ld.w	$t1, $t2, 0
	addi.d	$a5, $a5, 4
	addi.d	$t2, $t2, 4
	bne	$t1, $a7, .LBB28_37
# %bb.38:                               # %.preheader205.loopexit
                                        #   in Loop: Header=BB28_25 Depth=1
	ld.w	$t1, $t0, 0
	beq	$t1, $a7, .LBB28_44
.LBB28_39:                              # %.lr.ph240.preheader
                                        #   in Loop: Header=BB28_25 Depth=1
	addi.d	$t0, $t0, 4
	.p2align	4, , 16
.LBB28_40:                              # %.lr.ph240
                                        #   Parent Loop BB28_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t1, $a5, 0
	ld.w	$t1, $t0, 0
	addi.d	$t2, $a5, 4
	addi.d	$t0, $t0, 4
	move	$a5, $t2
	bne	$t1, $a7, .LBB28_40
	b	.LBB28_45
	.p2align	4, , 16
.LBB28_41:                              #   in Loop: Header=BB28_25 Depth=1
	st.w	$s5, $a5, 0
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	st.w	$a7, $a5, 4
	slli.d	$a5, $fp, 2
	ldx.w	$a7, $a4, $a5
	ld.d	$a6, $a6, 8
	bne	$a7, $s4, .LBB28_46
.LBB28_42:                              #   in Loop: Header=BB28_25 Depth=1
	st.w	$fp, $a6, 0
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	st.w	$a7, $a6, 4
	b	.LBB28_55
	.p2align	4, , 16
.LBB28_43:                              #   in Loop: Header=BB28_25 Depth=1
	masknez	$t1, $t6, $t4
	maskeqz	$t2, $t5, $t4
	or	$t1, $t2, $t1
	bne	$t1, $a7, .LBB28_39
.LBB28_44:                              #   in Loop: Header=BB28_25 Depth=1
	move	$t2, $a5
.LBB28_45:                              # %._crit_edge241
                                        #   in Loop: Header=BB28_25 Depth=1
	lu32i.d	$a7, 0
	st.w	$a7, $t2, 0
	slli.d	$a5, $fp, 2
	ldx.w	$a7, $a4, $a5
	ld.d	$a6, $a6, 8
	beq	$a7, $s4, .LBB28_42
.LBB28_46:                              #   in Loop: Header=BB28_25 Depth=1
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $s1, $a7
	ld.d	$t2, $a7, 0
	ld.d	$t3, $a7, 8
	ld.w	$t5, $t2, 0
	ld.w	$t6, $t3, 0
	slt	$t4, $t6, $t5
	slt	$a7, $t5, $t6
	masknez	$t0, $t6, $a7
	maskeqz	$a7, $t5, $a7
	or	$t1, $a7, $t0
	masknez	$t0, $t3, $t4
	maskeqz	$t7, $t2, $t4
	addi.w	$a7, $zero, -1
	or	$t0, $t7, $t0
	beq	$t1, $a7, .LBB28_52
# %bb.47:                               # %.lr.ph247.preheader
                                        #   in Loop: Header=BB28_25 Depth=1
	masknez	$t2, $t2, $t4
	maskeqz	$t3, $t3, $t4
	or	$t2, $t3, $t2
	addi.d	$t2, $t2, 4
	.p2align	4, , 16
.LBB28_48:                              # %.lr.ph247
                                        #   Parent Loop BB28_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t1, $a6, 0
	ld.w	$t1, $t2, 0
	addi.d	$a6, $a6, 4
	addi.d	$t2, $t2, 4
	bne	$t1, $a7, .LBB28_48
# %bb.49:                               # %.preheader204.loopexit
                                        #   in Loop: Header=BB28_25 Depth=1
	ld.w	$t1, $t0, 0
	beq	$t1, $a7, .LBB28_53
.LBB28_50:                              # %.lr.ph252.preheader
                                        #   in Loop: Header=BB28_25 Depth=1
	addi.d	$t0, $t0, 4
	.p2align	4, , 16
.LBB28_51:                              # %.lr.ph252
                                        #   Parent Loop BB28_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t1, $a6, 0
	ld.w	$t1, $t0, 0
	addi.d	$t2, $a6, 4
	addi.d	$t0, $t0, 4
	move	$a6, $t2
	bne	$t1, $a7, .LBB28_51
	b	.LBB28_54
	.p2align	4, , 16
.LBB28_52:                              #   in Loop: Header=BB28_25 Depth=1
	masknez	$t1, $t6, $t4
	maskeqz	$t2, $t5, $t4
	or	$t1, $t2, $t1
	bne	$t1, $a7, .LBB28_50
.LBB28_53:                              #   in Loop: Header=BB28_25 Depth=1
	move	$t2, $a6
.LBB28_54:                              # %._crit_edge253
                                        #   in Loop: Header=BB28_25 Depth=1
	lu32i.d	$a7, 0
	st.w	$a7, $t2, 0
.LBB28_55:                              #   in Loop: Header=BB28_25 Depth=1
	ld.d	$a7, $ra, %pc_lo12(veryfastsupg_int.tmptmplen)
	ldx.w	$t0, $a7, $a2
	move	$a6, $zero
	sub.d	$t0, $a0, $t0
	movgr2fr.w	$fa0, $t0
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a3, $t0, $a3
	ldx.w	$a5, $a7, $a5
	alsl.d	$a4, $s5, $a4, 2
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a3, 0
	sub.d	$a5, $a0, $a5
	stx.w	$a0, $a7, $a2
	st.w	$s3, $a4, 0
	ld.d	$a0, $s6, %pc_lo12(veryfastsupg_int.eff)
	movgr2fr.w	$fa0, $a5
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a3, 8
	b	.LBB28_59
	.p2align	4, , 16
.LBB28_56:                              #   in Loop: Header=BB28_59 Depth=2
	slt	$a2, $a6, $fp
	masknez	$a3, $fp, $a2
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a3
	slt	$a3, $fp, $a6
	masknez	$a4, $fp, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	move	$a5, $s5
	move	$a4, $a6
.LBB28_57:                              #   in Loop: Header=BB28_59 Depth=2
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a0, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a7, $a5, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a2, $a2, $a3
	slt	$a3, $a7, $a2
	masknez	$t0, $a2, $a3
	maskeqz	$a3, $a7, $a3
	or	$a3, $a3, $t0
	add.d	$a2, $a2, $a7
	movgr2fr.w	$fa0, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI28_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI28_0)
	ffint.s.w	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$a2, %pc_hi20(.LCPI28_1)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI28_1)
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	stx.w	$a2, $a5, $a4
.LBB28_58:                              #   in Loop: Header=BB28_59 Depth=2
	slli.d	$a2, $a6, 3
	ldx.w	$a6, $a1, $a2
	beq	$a6, $s4, .LBB28_63
.LBB28_59:                              #   Parent Loop BB28_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a6, $s5, .LBB28_58
# %bb.60:                               #   in Loop: Header=BB28_59 Depth=2
	beq	$a6, $fp, .LBB28_58
# %bb.61:                               #   in Loop: Header=BB28_59 Depth=2
	bge	$a6, $s5, .LBB28_56
# %bb.62:                               # %._crit_edge288
                                        #   in Loop: Header=BB28_59 Depth=2
	move	$a2, $a6
	move	$a5, $a6
	move	$a3, $fp
	move	$a4, $s5
	b	.LBB28_57
	.p2align	4, , 16
.LBB28_63:                              #   in Loop: Header=BB28_25 Depth=1
	alsl.d	$a2, $fp, $a1, 3
	ld.w	$a2, $a2, 4
	slli.d	$a3, $fp, 3
	ldx.w	$a3, $a1, $a3
	slli.d	$a4, $a2, 3
	addi.w	$a5, $zero, -1
	stx.w	$a3, $a1, $a4
	beq	$a3, $a5, .LBB28_24
# %bb.64:                               #   in Loop: Header=BB28_25 Depth=1
	alsl.d	$a1, $a3, $a1, 3
	st.w	$a2, $a1, 4
	b	.LBB28_24
.Lfunc_end28:
	.size	veryfastsupg_int, .Lfunc_end28-veryfastsupg_int
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function fastsupg
.LCPI29_0:
	.word	0x459c3c00                      # float 4999.5
.LCPI29_1:
	.word	0x461c3c00                      # float 9999
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI29_2:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI29_3:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
	.text
	.globl	fastsupg
	.p2align	5
	.type	fastsupg,@function
fastsupg:                               # @fastsupg
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
	pcalau12i	$s4, %pc_hi20(fastsupg.eff)
	ld.d	$a4, $s4, %pc_lo12(fastsupg.eff)
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a4, .LBB29_13
# %bb.1:
	blez	$fp, .LBB29_14
.LBB29_2:                               # %.preheader173.lr.ph
	move	$a0, $zero
	ld.d	$a2, $s4, %pc_lo12(fastsupg.eff)
	bstrpick.d	$a3, $fp, 30, 1
	slli.d	$a3, $a3, 1
	ori	$a4, $zero, 1
	b	.LBB29_4
	.p2align	4, , 16
.LBB29_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB29_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $fp, .LBB29_11
.LBB29_4:                               # %.preheader173.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_7 Depth 2
                                        #     Child Loop BB29_10 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$a5, $a1, $a6
	ldx.d	$a6, $a2, $a6
	bne	$fp, $a4, .LBB29_6
# %bb.5:                                #   in Loop: Header=BB29_4 Depth=1
	move	$a7, $zero
	b	.LBB29_9
	.p2align	4, , 16
.LBB29_6:                               # %vector.body.preheader
                                        #   in Loop: Header=BB29_4 Depth=1
	addi.d	$a7, $a5, 8
	addi.d	$t0, $a6, 4
	move	$t1, $a3
	.p2align	4, , 16
.LBB29_7:                               # %vector.body
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a7, -8
	fld.d	$fa1, $a7, 0
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $t0, -4
	fst.s	$fa1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$t1, $t1, -2
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB29_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB29_4 Depth=1
	move	$a7, $a3
	beq	$a3, $fp, .LBB29_3
.LBB29_9:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB29_4 Depth=1
	alsl.d	$a5, $a7, $a5, 3
	alsl.d	$a6, $a7, $a6, 2
	sub.d	$a7, $fp, $a7
	.p2align	4, , 16
.LBB29_10:                              # %scalar.ph
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a5, 0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	bnez	$a7, .LBB29_10
	b	.LBB29_3
.LBB29_11:                              # %.preheader172
	pcalau12i	$a0, %pc_hi20(fastsupg.ac)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $a0, %pc_lo12(fastsupg.ac)
	ori	$a0, $zero, 1
	bne	$fp, $a0, .LBB29_15
# %bb.12:
	move	$a0, $zero
	b	.LBB29_18
.LBB29_13:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s1, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s1, 0
	move	$s0, $a1
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $s4, %pc_lo12(fastsupg.eff)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %pc_hi20(fastsupg.pair)
	st.d	$a0, $a2, %pc_lo12(fastsupg.pair)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(fastsupg.tmplen)
	st.d	$a0, $a1, %pc_lo12(fastsupg.tmplen)
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcalau12i	$a2, %pc_hi20(fastsupg.ac)
	st.d	$a0, $a2, %pc_lo12(fastsupg.ac)
	bgtz	$fp, .LBB29_2
.LBB29_14:                              # %.preheader169.thread
	pcalau12i	$a0, %pc_hi20(fastsupg.ac)
	ld.d	$a0, $a0, %pc_lo12(fastsupg.ac)
	alsl.d	$a0, $fp, $a0, 3
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, -8
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB29_27
.LBB29_15:                              # %vector.ph288
	bstrpick.d	$a0, $fp, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a2, $a1, 8
	ori	$a3, $zero, 2
	move	$a4, $a0
	.p2align	4, , 16
.LBB29_16:                              # %vector.body291
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a3, -2
	addi.d	$a6, $a3, -1
	st.w	$a6, $a2, -8
	st.w	$a3, $a2, 0
	addi.d	$a6, $a3, -3
	st.w	$a6, $a2, -4
	st.w	$a5, $a2, 4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB29_16
# %bb.17:                               # %middle.block294
	beq	$a0, $fp, .LBB29_20
.LBB29_18:                              # %scalar.ph286.preheader
	addi.d	$a2, $a0, -1
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a3, $a3, 4
	sub.d	$a0, $fp, $a0
	.p2align	4, , 16
.LBB29_19:                              # %scalar.ph286
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a2, 2
	st.w	$a4, $a3, -4
	st.w	$a2, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB29_19
.LBB29_20:                              # %.preheader170.lr.ph
	addi.w	$a0, $fp, -1
	addi.w	$s8, $zero, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a2, $a0, 3
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fastsupg.tmplen)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(fastsupg.tmplen)
	lu32i.d	$s8, 0
	stx.w	$s8, $a1, $a2
	slli.d	$a2, $fp, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(fastsupg.pair)
	ld.d	$a0, $s0, %pc_lo12(fastsupg.pair)
	move	$a1, $zero
	.p2align	4, , 16
.LBB29_21:                              # %.preheader170.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_22 Depth 2
	move	$a2, $zero
	alsl.d	$a3, $a1, $a0, 3
	.p2align	4, , 16
.LBB29_22:                              #   Parent Loop BB29_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a2
	addi.d	$a2, $a2, 1
	bne	$fp, $a2, .LBB29_22
# %bb.23:                               # %._crit_edge182.us
                                        #   in Loop: Header=BB29_21 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $fp, .LBB29_21
# %bb.24:                               # %.lr.ph185
	ld.d	$a0, $s0, %pc_lo12(fastsupg.pair)
	move	$a1, $zero
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB29_25:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	stx.b	$a2, $a3, $a1
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 8
	bne	$fp, $a1, .LBB29_25
# %bb.26:                               # %._crit_edge186
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	bne	$fp, $a0, .LBB29_28
.LBB29_27:                              # %._crit_edge224
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.LBB29_28:                              # %.lr.ph223
	bstrpick.d	$s1, $fp, 31, 0
	lu12i.w	$a0, -209716
	ori	$s5, $a0, 3277
	lu12i.w	$a0, 104857
	ori	$s6, $a0, 2457
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI29_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI29_0)
	move	$s3, $zero
	vldi	$vr4, -928
	vldi	$vr5, -1184
	move	$s7, $t6
	move	$s2, $t6
	b	.LBB29_30
	.p2align	4, , 16
.LBB29_29:                              #   in Loop: Header=BB29_30 Depth=1
	alsl.d	$a2, $s7, $a0, 3
	ld.w	$a2, $a2, 4
	ldx.w	$a1, $a0, $a1
	slli.d	$a3, $a2, 3
	stx.w	$a1, $a0, $a3
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$s3, $s3, 1
	st.w	$a2, $a0, 4
	beq	$s3, $t5, .LBB29_27
.LBB29_30:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_33 Depth 2
                                        #       Child Loop BB29_34 Depth 3
                                        #     Child Loop BB29_41 Depth 2
                                        #     Child Loop BB29_45 Depth 2
                                        #     Child Loop BB29_48 Depth 2
                                        #     Child Loop BB29_50 Depth 2
                                        #     Child Loop BB29_55 Depth 2
	mul.d	$a0, $s3, $s5
	rotri.w	$a0, $a0, 1
	bgeu	$s6, $a0, .LBB29_37
# %bb.31:                               #   in Loop: Header=BB29_30 Depth=1
	ld.d	$a0, $t4, %pc_lo12(fastsupg.ac)
	ld.w	$a5, $a0, 0
	beq	$a5, $t6, .LBB29_38
.LBB29_32:                              # %.preheader.lr.ph
                                        #   in Loop: Header=BB29_30 Depth=1
	ld.d	$a1, $s4, %pc_lo12(fastsupg.eff)
	pcalau12i	$a2, %pc_hi20(.LCPI29_1)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI29_1)
	move	$a2, $zero
	.p2align	4, , 16
.LBB29_33:                              # %.preheader
                                        #   Parent Loop BB29_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_34 Depth 3
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	move	$a4, $a2
	move	$a2, $a5
	.p2align	4, , 16
.LBB29_34:                              #   Parent Loop BB29_30 Depth=1
                                        #     Parent Loop BB29_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a6, $a5, 2
	fldx.s	$fa1, $a3, $a6
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a6, $fcc0
	masknez	$a7, $s2, $a6
	maskeqz	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	slli.d	$a5, $a5, 3
	ldx.w	$a5, $a0, $a5
	or	$s2, $t0, $a7
	masknez	$a7, $s7, $a6
	addi.w	$a6, $zero, -1
	or	$s7, $t1, $a7
	bne	$a5, $a6, .LBB29_34
# %bb.35:                               # %.loopexit
                                        #   in Loop: Header=BB29_33 Depth=2
	slli.d	$a3, $a2, 3
	ldx.w	$a5, $a0, $a3
	bne	$a5, $a6, .LBB29_33
# %bb.36:                               # %._crit_edge196.loopexit
                                        #   in Loop: Header=BB29_30 Depth=1
	fmul.s	$fa0, $fa0, $fa5
	b	.LBB29_39
.LBB29_37:                              #   in Loop: Header=BB29_30 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	vldi	$vr5, -1184
	vldi	$vr4, -928
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $t4, %pc_lo12(fastsupg.ac)
	ld.w	$a5, $a0, 0
	bne	$a5, $t6, .LBB29_32
	.p2align	4, , 16
.LBB29_38:                              #   in Loop: Header=BB29_30 Depth=1
	fmov.s	$fa0, $fs0
.LBB29_39:                              # %.lr.ph203
                                        #   in Loop: Header=BB29_30 Depth=1
	slli.d	$a3, $s3, 3
	ldx.d	$a1, $t3, $a3
	ld.d	$a4, $s0, %pc_lo12(fastsupg.pair)
	ld.d	$a2, $a1, 0
	slli.d	$a5, $s2, 3
	ldx.d	$a4, $a4, $a5
	move	$a5, $zero
	move	$a6, $s1
	b	.LBB29_41
	.p2align	4, , 16
.LBB29_40:                              #   in Loop: Header=BB29_41 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 1
	beqz	$a6, .LBB29_43
.LBB29_41:                              #   Parent Loop BB29_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a7, $a4, 0
	blez	$a7, .LBB29_40
# %bb.42:                               #   in Loop: Header=BB29_41 Depth=2
	addi.d	$a7, $a2, 4
	st.w	$a5, $a2, 0
	move	$a2, $a7
	b	.LBB29_40
	.p2align	4, , 16
.LBB29_43:                              # %.lr.ph209
                                        #   in Loop: Header=BB29_30 Depth=1
	ld.d	$a5, $s0, %pc_lo12(fastsupg.pair)
	ld.d	$a4, $a1, 8
	slli.d	$a1, $s7, 3
	ldx.d	$a5, $a5, $a1
	move	$a6, $zero
	st.w	$s8, $a2, 0
	move	$a2, $s1
	b	.LBB29_45
	.p2align	4, , 16
.LBB29_44:                              #   in Loop: Header=BB29_45 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 1
	beqz	$a2, .LBB29_47
.LBB29_45:                              #   Parent Loop BB29_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a7, $a5, 0
	blez	$a7, .LBB29_44
# %bb.46:                               #   in Loop: Header=BB29_45 Depth=2
	addi.d	$a7, $a4, 4
	st.w	$a6, $a4, 0
	move	$a4, $a7
	b	.LBB29_44
	.p2align	4, , 16
.LBB29_47:                              # %.lr.ph214
                                        #   in Loop: Header=BB29_30 Depth=1
	ld.d	$a6, $t7, %pc_lo12(fastsupg.tmplen)
	slli.d	$a7, $s2, 2
	fldx.s	$fa1, $a6, $a7
	move	$a5, $zero
	addi.w	$a2, $zero, -1
	fcvt.d.s	$fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	ldx.d	$a3, $t2, $a3
	fsub.d	$fa1, $fa2, $fa1
	slli.d	$t0, $s7, 2
	fldx.s	$fa3, $a6, $t0
	fst.d	$fa1, $a3, 0
	move	$t0, $a2
	lu32i.d	$t0, 0
	st.w	$t0, $a4, 0
	fcvt.d.s	$fa1, $fa3
	ld.d	$a4, $s0, %pc_lo12(fastsupg.pair)
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a3, 8
	fstx.s	$fa0, $a6, $a7
	alsl.d	$a3, $s7, $a4, 3
	alsl.d	$a4, $s2, $a4, 3
	.p2align	4, , 16
.LBB29_48:                              #   Parent Loop BB29_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a3, 0
	ld.d	$a7, $a4, 0
	ldx.b	$a6, $a6, $a5
	ldx.b	$t0, $a7, $a5
	slt	$a6, $zero, $a6
	add.d	$a6, $t0, $a6
	stx.b	$a6, $a7, $a5
	addi.d	$a5, $a5, 1
	bne	$s1, $a5, .LBB29_48
# %bb.49:                               # %.lr.ph216
                                        #   in Loop: Header=BB29_30 Depth=1
	ld.d	$a4, $s0, %pc_lo12(fastsupg.pair)
	move	$a3, $zero
	alsl.d	$a4, $s7, $a4, 3
	.p2align	4, , 16
.LBB29_50:                              #   Parent Loop BB29_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	stx.b	$zero, $a5, $a3
	addi.d	$a3, $a3, 1
	bne	$s1, $a3, .LBB29_50
# %bb.51:                               # %.preheader167
                                        #   in Loop: Header=BB29_30 Depth=1
	ld.d	$a3, $s4, %pc_lo12(fastsupg.eff)
	move	$a4, $zero
	b	.LBB29_55
	.p2align	4, , 16
.LBB29_52:                              #   in Loop: Header=BB29_55 Depth=2
	slt	$a5, $a4, $s7
	masknez	$a6, $s7, $a5
	maskeqz	$a5, $a4, $a5
	or	$a5, $a5, $a6
	slt	$a6, $s7, $a4
	masknez	$a7, $s7, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $a7
	move	$t0, $s2
	move	$a7, $a4
.LBB29_53:                              #   in Loop: Header=BB29_55 Depth=2
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a3, $t0
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a7, $a7, 2
	fldx.s	$fa0, $t0, $a7
	slli.d	$a6, $a6, 2
	fldx.s	$fa1, $a5, $a6
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa2, $fa1, $fa0, $fcc0
	fadd.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	pcalau12i	$a5, %pc_hi20(.LCPI29_2)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI29_2)
	pcalau12i	$a5, %pc_hi20(.LCPI29_3)
	fld.d	$fa3, $a5, %pc_lo12(.LCPI29_3)
	fmul.d	$fa0, $fa0, $fa4
	fmul.d	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $t0, $a7
.LBB29_54:                              #   in Loop: Header=BB29_55 Depth=2
	slli.d	$a4, $a4, 3
	ldx.w	$a4, $a0, $a4
	beq	$a4, $a2, .LBB29_29
.LBB29_55:                              #   Parent Loop BB29_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a4, $s2, .LBB29_54
# %bb.56:                               #   in Loop: Header=BB29_55 Depth=2
	beq	$a4, $s7, .LBB29_54
# %bb.57:                               #   in Loop: Header=BB29_55 Depth=2
	bge	$a4, $s2, .LBB29_52
# %bb.58:                               # %._crit_edge272
                                        #   in Loop: Header=BB29_55 Depth=2
	move	$a5, $a4
	move	$t0, $a4
	move	$a6, $s7
	move	$a7, $s2
	b	.LBB29_53
.Lfunc_end29:
	.size	fastsupg, .Lfunc_end29-fastsupg
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function supg
.LCPI30_0:
	.word	0x461c3c00                      # float 9999
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI30_1:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI30_2:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
	.text
	.globl	supg
	.p2align	5
	.type	supg,@function
supg:                                   # @supg
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
	pcalau12i	$s3, %pc_hi20(supg.eff)
	ld.d	$a4, $s3, %pc_lo12(supg.eff)
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	pcalau12i	$s4, %pc_hi20(supg.pair)
	pcalau12i	$s5, %pc_hi20(supg.tmplen)
	bnez	$a4, .LBB30_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s6, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s6, 0
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	st.d	$a0, $s3, %pc_lo12(supg.eff)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	st.d	$a0, $s4, %pc_lo12(supg.pair)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(supg.tmplen)
.LBB30_2:
	blez	$s1, .LBB30_19
# %bb.3:                                # %.preheader161.lr.ph
	move	$a0, $zero
	ld.d	$a1, $s3, %pc_lo12(supg.eff)
	bstrpick.d	$a2, $s1, 30, 1
	slli.d	$a2, $a2, 1
	ori	$a3, $zero, 1
	b	.LBB30_5
	.p2align	4, , 16
.LBB30_4:                               # %._crit_edge.us
                                        #   in Loop: Header=BB30_5 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s1, .LBB30_12
.LBB30_5:                               # %.preheader161.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_8 Depth 2
                                        #     Child Loop BB30_11 Depth 2
	slli.d	$a5, $a0, 3
	ldx.d	$a4, $s2, $a5
	ldx.d	$a5, $a1, $a5
	bne	$s1, $a3, .LBB30_7
# %bb.6:                                #   in Loop: Header=BB30_5 Depth=1
	move	$a6, $zero
	b	.LBB30_10
	.p2align	4, , 16
.LBB30_7:                               # %vector.body.preheader
                                        #   in Loop: Header=BB30_5 Depth=1
	addi.d	$a6, $a4, 8
	addi.d	$a7, $a5, 4
	move	$t0, $a2
	.p2align	4, , 16
.LBB30_8:                               # %vector.body
                                        #   Parent Loop BB30_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a6, -8
	fld.d	$fa1, $a6, 0
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a7, -4
	fst.s	$fa1, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$t0, $t0, -2
	addi.d	$a7, $a7, 8
	bnez	$t0, .LBB30_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB30_5 Depth=1
	move	$a6, $a2
	beq	$a2, $s1, .LBB30_4
.LBB30_10:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB30_5 Depth=1
	alsl.d	$a4, $a6, $a4, 3
	alsl.d	$a5, $a6, $a5, 2
	sub.d	$a6, $s1, $a6
	.p2align	4, , 16
.LBB30_11:                              # %scalar.ph
                                        #   Parent Loop BB30_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a4, 0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB30_11
	b	.LBB30_4
.LBB30_12:                              # %.preheader158.lr.ph
	ld.d	$a0, $s5, %pc_lo12(supg.tmplen)
	slli.d	$a2, $s1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(supg.pair)
	move	$a1, $zero
	.p2align	4, , 16
.LBB30_13:                              # %.preheader158.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_14 Depth 2
	move	$a2, $zero
	alsl.d	$a3, $a1, $a0, 3
	.p2align	4, , 16
.LBB30_14:                              #   Parent Loop BB30_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a2
	addi.d	$a2, $a2, 1
	bne	$s1, $a2, .LBB30_14
# %bb.15:                               # %._crit_edge.us168
                                        #   in Loop: Header=BB30_13 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $s1, .LBB30_13
# %bb.16:                               # %.lr.ph170
	ld.d	$a0, $s4, %pc_lo12(supg.pair)
	move	$a1, $zero
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB30_17:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	stx.b	$a2, $a3, $a1
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 8
	bne	$s1, $a1, .LBB30_17
# %bb.18:                               # %.preheader156
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB30_20
.LBB30_19:                              # %._crit_edge211
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
.LBB30_20:                              # %.lr.ph210
	move	$a0, $zero
	addi.w	$a1, $s1, -1
	ld.d	$a2, $s3, %pc_lo12(supg.eff)
	ld.d	$a3, $s4, %pc_lo12(supg.pair)
	ld.d	$a4, $s5, %pc_lo12(supg.tmplen)
	pcalau12i	$a5, %pc_hi20(.LCPI30_0)
	fld.s	$fa0, $a5, %pc_lo12(.LCPI30_0)
	vldi	$vr1, -928
	lu12i.w	$a5, 287171
	ori	$a5, $a5, 3072
	b	.LBB30_22
	.p2align	4, , 16
.LBB30_21:                              # %._crit_edge208
                                        #   in Loop: Header=BB30_22 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB30_19
.LBB30_22:                              # %.lr.ph184.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_23 Depth 2
                                        #       Child Loop BB30_24 Depth 3
                                        #     Child Loop BB30_28 Depth 2
                                        #     Child Loop BB30_32 Depth 2
                                        #     Child Loop BB30_35 Depth 2
                                        #     Child Loop BB30_37 Depth 2
                                        #     Child Loop BB30_41 Depth 2
	move	$t1, $zero
	ori	$t0, $zero, 4
	addi.d	$a6, $zero, -1
	addi.d	$a7, $zero, -1
	fmov.s	$fa2, $fa0
	move	$t2, $a2
	.p2align	4, , 16
.LBB30_23:                              # %.lr.ph176.preheader
                                        #   Parent Loop BB30_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB30_24 Depth 3
	ld.d	$t4, $t2, 0
	move	$t3, $t1
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 1
	add.d	$t4, $t4, $t0
	move	$t5, $t1
	.p2align	4, , 16
.LBB30_24:                              # %.lr.ph176
                                        #   Parent Loop BB30_22 Depth=1
                                        #     Parent Loop BB30_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa3, $t4, 0
	fcmp.clt.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa2, $fa3, $fcc0
	movcf2gr	$t6, $fcc0
	masknez	$a7, $a7, $t6
	maskeqz	$t7, $t3, $t6
	or	$a7, $t7, $a7
	addi.w	$a7, $a7, 0
	masknez	$a6, $a6, $t6
	maskeqz	$t6, $t5, $t6
	or	$a6, $t6, $a6
	addi.w	$t5, $t5, 1
	addi.d	$t4, $t4, 4
	bne	$s1, $t5, .LBB30_24
# %bb.25:                               # %.loopexit
                                        #   in Loop: Header=BB30_23 Depth=2
	addi.d	$t0, $t0, 4
	bne	$t1, $a1, .LBB30_23
# %bb.26:                               # %.lr.ph191
                                        #   in Loop: Header=BB30_22 Depth=1
	slli.d	$t2, $a0, 3
	ldx.d	$t0, $s0, $t2
	ld.d	$t4, $t0, 0
	slli.d	$t1, $a7, 3
	ldx.d	$t1, $a3, $t1
	move	$t3, $zero
	move	$t5, $s1
	b	.LBB30_28
	.p2align	4, , 16
.LBB30_27:                              #   in Loop: Header=BB30_28 Depth=2
	addi.d	$t3, $t3, 1
	addi.d	$t5, $t5, -1
	addi.d	$t1, $t1, 1
	beqz	$t5, .LBB30_30
.LBB30_28:                              #   Parent Loop BB30_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t6, $t1, 0
	blez	$t6, .LBB30_27
# %bb.29:                               #   in Loop: Header=BB30_28 Depth=2
	addi.d	$t6, $t4, 4
	st.w	$t3, $t4, 0
	move	$t4, $t6
	b	.LBB30_27
	.p2align	4, , 16
.LBB30_30:                              # %.lr.ph197
                                        #   in Loop: Header=BB30_22 Depth=1
	move	$t5, $zero
	ld.d	$t1, $t0, 8
	addi.w	$t0, $a6, 0
	slli.d	$t3, $t0, 3
	ldx.d	$t6, $a3, $t3
	addi.w	$t3, $zero, -1
	lu32i.d	$t3, 0
	st.w	$t3, $t4, 0
	move	$t4, $s1
	b	.LBB30_32
	.p2align	4, , 16
.LBB30_31:                              #   in Loop: Header=BB30_32 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t4, $t4, -1
	addi.d	$t6, $t6, 1
	beqz	$t4, .LBB30_34
.LBB30_32:                              #   Parent Loop BB30_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t7, $t6, 0
	blez	$t7, .LBB30_31
# %bb.33:                               #   in Loop: Header=BB30_32 Depth=2
	addi.d	$t7, $t1, 4
	st.w	$t5, $t1, 0
	move	$t1, $t7
	b	.LBB30_31
	.p2align	4, , 16
.LBB30_34:                              # %.lr.ph202
                                        #   in Loop: Header=BB30_22 Depth=1
	move	$t4, $zero
	st.w	$t3, $t1, 0
	slli.d	$t1, $t0, 2
	fldx.s	$fa3, $a4, $t1
	slli.d	$t3, $a7, 2
	fldx.s	$fa4, $a4, $t3
	fcvt.d.s	$fa2, $fa2
	ldx.d	$t2, $fp, $t2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa2, $fa4
	fst.d	$fa4, $t2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa2, $fa3
	fst.d	$fa3, $t2, 8
	fcvt.s.d	$fa2, $fa2
	fstx.s	$fa2, $a4, $t3
	alsl.d	$t2, $t0, $a3, 3
	alsl.d	$t3, $a7, $a3, 3
	.p2align	4, , 16
.LBB30_35:                              #   Parent Loop BB30_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t5, $t2, 0
	ld.d	$t6, $t3, 0
	ldx.b	$t5, $t5, $t4
	ldx.b	$t7, $t6, $t4
	slt	$t5, $zero, $t5
	add.d	$t5, $t7, $t5
	stx.b	$t5, $t6, $t4
	addi.d	$t4, $t4, 1
	bne	$s1, $t4, .LBB30_35
# %bb.36:                               # %.lr.ph204
                                        #   in Loop: Header=BB30_22 Depth=1
	move	$t3, $zero
	.p2align	4, , 16
.LBB30_37:                              #   Parent Loop BB30_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t2, 0
	stx.b	$zero, $t4, $t3
	addi.d	$t3, $t3, 1
	bne	$s1, $t3, .LBB30_37
# %bb.38:                               # %.lr.ph207
                                        #   in Loop: Header=BB30_22 Depth=1
	move	$t2, $zero
	move	$t3, $zero
	alsl.d	$t4, $a7, $a2, 3
	b	.LBB30_41
	.p2align	4, , 16
.LBB30_39:                              #   in Loop: Header=BB30_41 Depth=2
	slli.d	$t7, $s2, 3
	ldx.d	$t7, $a2, $t7
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a2, $t5
	slli.d	$t8, $t8, 2
	fldx.s	$fa2, $t7, $t8
	slli.d	$t6, $t6, 2
	fldx.s	$fa3, $t5, $t6
	fcmp.clt.s	$fcc0, $fa2, $fa3
	fsel	$fa4, $fa3, $fa2, $fcc0
	fadd.s	$fa2, $fa2, $fa3
	fcvt.d.s	$fa2, $fa2
	pcalau12i	$s2, %pc_hi20(.LCPI30_1)
	fld.d	$fa3, $s2, %pc_lo12(.LCPI30_1)
	pcalau12i	$s2, %pc_hi20(.LCPI30_2)
	fld.d	$fa5, $s2, %pc_lo12(.LCPI30_2)
	fmul.d	$fa2, $fa2, $fa1
	fmul.d	$fa2, $fa2, $fa3
	fcvt.d.s	$fa3, $fa4
	fmadd.d	$fa2, $fa3, $fa5, $fa2
	ld.d	$s2, $t4, 0
	fcvt.s.d	$fa2, $fa2
	fstx.s	$fa2, $t7, $t8
	stx.w	$a5, $t5, $t6
	stx.w	$a5, $s2, $t1
.LBB30_40:                              #   in Loop: Header=BB30_41 Depth=2
	addi.w	$t3, $t3, 1
	addi.d	$t2, $t2, 1
	beq	$s1, $t3, .LBB30_21
.LBB30_41:                              #   Parent Loop BB30_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a7, $t3, .LBB30_40
# %bb.42:                               #   in Loop: Header=BB30_41 Depth=2
	addi.w	$t7, $a6, 0
	beq	$t7, $t3, .LBB30_40
# %bb.43:                               #   in Loop: Header=BB30_41 Depth=2
	move	$t5, $t2
	move	$s2, $t2
	move	$t6, $t0
	move	$t8, $a7
	blt	$t3, $a7, .LBB30_39
# %bb.44:                               #   in Loop: Header=BB30_41 Depth=2
	slt	$t5, $t3, $t7
	masknez	$t6, $t7, $t5
	maskeqz	$t5, $t3, $t5
	or	$t5, $t5, $t6
	slt	$t6, $t7, $t3
	masknez	$t7, $t7, $t6
	maskeqz	$t6, $t3, $t6
	or	$t6, $t6, $t7
	move	$s2, $a7
	move	$t8, $t2
	b	.LBB30_39
.Lfunc_end30:
	.size	supg, .Lfunc_end30-supg
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function spg
.LCPI31_0:
	.word	0x461c3c00                      # float 9999
	.text
	.globl	spg
	.p2align	5
	.type	spg,@function
spg:                                    # @spg
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	lu12i.w	$a4, 97
	ori	$a4, $a4, 720
	sub.d	$sp, $sp, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s4, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s2, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s2, 0
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateDoubleMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB31_17
# %bb.1:                                # %.preheader201.us.preheader
	move	$s3, $a0
	move	$a0, $zero
	bstrpick.d	$a1, $s1, 30, 2
	slli.d	$a1, $a1, 2
	ori	$a2, $zero, 4
	ori	$a3, $zero, 32
	b	.LBB31_3
	.p2align	4, , 16
.LBB31_2:                               # %._crit_edge.us
                                        #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s1, .LBB31_10
.LBB31_3:                               # %.preheader201.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_6 Depth 2
                                        #     Child Loop BB31_9 Depth 2
	slli.d	$a5, $a0, 3
	ldx.d	$a4, $s4, $a5
	ldx.d	$a5, $s2, $a5
	move	$a6, $zero
	bltu	$s1, $a2, .LBB31_8
# %bb.4:                                # %.preheader201.us
                                        #   in Loop: Header=BB31_3 Depth=1
	sub.d	$a7, $a5, $a4
	bltu	$a7, $a3, .LBB31_8
# %bb.5:                                # %vector.body.preheader
                                        #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a6, $a5, 16
	addi.d	$a7, $a4, 16
	move	$t0, $a1
	.p2align	4, , 16
.LBB31_6:                               # %vector.body
                                        #   Parent Loop BB31_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB31_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB31_3 Depth=1
	move	$a6, $a1
	beq	$a1, $s1, .LBB31_2
.LBB31_8:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB31_3 Depth=1
	alsl.d	$a4, $a6, $a4, 3
	alsl.d	$a5, $a6, $a5, 3
	sub.d	$a6, $s1, $a6
	.p2align	4, , 16
.LBB31_9:                               # %scalar.ph
                                        #   Parent Loop BB31_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a4, 0
	fst.d	$fa0, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB31_9
	b	.LBB31_2
.LBB31_10:                              # %.preheader198.us.preheader
	slli.d	$a2, $s1, 3
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB31_11:                              # %.preheader198.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_12 Depth 2
	move	$a1, $zero
	alsl.d	$a2, $a0, $s3, 3
	.p2align	4, , 16
.LBB31_12:                              #   Parent Loop BB31_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	stx.b	$zero, $a3, $a1
	addi.d	$a1, $a1, 1
	bne	$s1, $a1, .LBB31_12
# %bb.13:                               # %._crit_edge.us208
                                        #   in Loop: Header=BB31_11 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s1, .LBB31_11
# %bb.14:                               # %.lr.ph210.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1
	move	$a2, $s3
	.p2align	4, , 16
.LBB31_15:                              # %.lr.ph210
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	stx.b	$a1, $a3, $a0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$s1, $a0, .LBB31_15
# %bb.16:                               # %.preheader196
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB31_18
.LBB31_17:                              # %._crit_edge245
	lu12i.w	$a0, 97
	ori	$a0, $a0, 720
	add.d	$sp, $sp, $a0
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB31_18:                              # %.preheader195.lr.ph
	move	$a0, $zero
	addi.w	$a1, $s1, -1
	addi.w	$a2, $zero, -1
	pcalau12i	$a3, %pc_hi20(.LCPI31_0)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI31_0)
	addi.d	$a3, $sp, 8
	vldi	$vr1, -928
	ori	$a4, $zero, 0
	lu32i.d	$a4, 231296
	lu52i.d	$a4, $a4, 1036
	b	.LBB31_20
	.p2align	4, , 16
.LBB31_19:                              # %._crit_edge243
                                        #   in Loop: Header=BB31_20 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB31_17
.LBB31_20:                              # %.lr.ph222.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_21 Depth 2
                                        #       Child Loop BB31_22 Depth 3
                                        #     Child Loop BB31_26 Depth 2
                                        #     Child Loop BB31_30 Depth 2
                                        #     Child Loop BB31_33 Depth 2
                                        #     Child Loop BB31_35 Depth 2
                                        #     Child Loop BB31_38 Depth 2
	move	$t2, $zero
	ori	$a6, $zero, 1
	ori	$a7, $zero, 8
	ori	$t0, $zero, 1
	move	$a5, $a2
	move	$t1, $a2
	fmov.s	$fa2, $fa0
	.p2align	4, , 16
.LBB31_21:                              # %.lr.ph215
                                        #   Parent Loop BB31_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_22 Depth 3
	move	$t3, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t4, $s2, $t2
	addi.d	$t2, $t3, 1
	add.d	$t4, $t4, $a7
	move	$t5, $s1
	move	$t6, $a6
	.p2align	4, , 16
.LBB31_22:                              #   Parent Loop BB31_20 Depth=1
                                        #     Parent Loop BB31_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $t4, 0
	fcvt.d.s	$fa4, $fa2
	fcmp.clt.d	$fcc0, $fa3, $fa4
	fcvt.s.d	$fa3, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc0
	movcf2gr	$t7, $fcc0
	masknez	$t1, $t1, $t7
	maskeqz	$t8, $t3, $t7
	or	$t1, $t8, $t1
	masknez	$a5, $a5, $t7
	maskeqz	$t7, $t6, $t7
	or	$a5, $t7, $a5
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, -1
	addi.w	$t6, $t6, 1
	bne	$t0, $t5, .LBB31_22
# %bb.23:                               # %.loopexit
                                        #   in Loop: Header=BB31_21 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 8
	addi.w	$a6, $a6, 1
	bne	$t2, $a1, .LBB31_21
# %bb.24:                               # %.lr.ph228
                                        #   in Loop: Header=BB31_20 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a7, $a6, 3
	ldx.d	$t0, $s3, $a7
	move	$t1, $zero
	move	$t3, $zero
	alsl.d	$t2, $a0, $s0, 3
	move	$t4, $s1
	b	.LBB31_26
	.p2align	4, , 16
.LBB31_25:                              #   in Loop: Header=BB31_26 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t4, $t4, -1
	addi.d	$t0, $t0, 1
	beqz	$t4, .LBB31_28
.LBB31_26:                              #   Parent Loop BB31_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t5, $t0, 0
	blez	$t5, .LBB31_25
# %bb.27:                               #   in Loop: Header=BB31_26 Depth=2
	ld.d	$t5, $t2, 0
	ld.d	$t5, $t5, 0
	slli.d	$t6, $t3, 2
	stx.w	$t1, $t5, $t6
	addi.w	$t3, $t3, 1
	b	.LBB31_25
	.p2align	4, , 16
.LBB31_28:                              # %.lr.ph233
                                        #   in Loop: Header=BB31_20 Depth=1
	slli.d	$t0, $a0, 3
	ldx.d	$t2, $s0, $t0
	move	$t5, $zero
	move	$t1, $zero
	ld.d	$t7, $t2, 0
	slli.d	$t8, $t3, 2
	slli.d	$t4, $a5, 3
	ldx.d	$t6, $s3, $t4
	addi.w	$t3, $zero, -1
	lu32i.d	$t3, 0
	stx.w	$t3, $t7, $t8
	move	$t7, $s1
	b	.LBB31_30
	.p2align	4, , 16
.LBB31_29:                              #   in Loop: Header=BB31_30 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 1
	beqz	$t7, .LBB31_32
.LBB31_30:                              #   Parent Loop BB31_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t8, $t6, 0
	blez	$t8, .LBB31_29
# %bb.31:                               #   in Loop: Header=BB31_30 Depth=2
	ld.d	$t8, $t2, 8
	slli.d	$s4, $t1, 2
	stx.w	$t5, $t8, $s4
	addi.w	$t1, $t1, 1
	b	.LBB31_29
	.p2align	4, , 16
.LBB31_32:                              # %.lr.ph238
                                        #   in Loop: Header=BB31_20 Depth=1
	ld.d	$t5, $t2, 8
	move	$t2, $zero
	fldx.d	$fa3, $t4, $a3
	slli.d	$t1, $t1, 2
	stx.w	$t3, $t5, $t1
	fldx.d	$fa4, $a7, $a3
	ldx.d	$t0, $fp, $t0
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fsub.d	$fa4, $fa2, $fa4
	fst.d	$fa4, $t0, 0
	fsub.d	$fa3, $fa2, $fa3
	fst.d	$fa3, $t0, 8
	fstx.d	$fa2, $a7, $a3
	alsl.d	$t0, $a5, $s3, 3
	alsl.d	$t1, $a6, $s3, 3
	.p2align	4, , 16
.LBB31_33:                              #   Parent Loop BB31_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t0, 0
	ld.d	$t4, $t1, 0
	ldx.b	$t3, $t3, $t2
	ldx.b	$t5, $t4, $t2
	slt	$t3, $zero, $t3
	add.d	$t3, $t5, $t3
	stx.b	$t3, $t4, $t2
	addi.d	$t2, $t2, 1
	bne	$s1, $t2, .LBB31_33
# %bb.34:                               # %.lr.ph240
                                        #   in Loop: Header=BB31_20 Depth=1
	move	$t1, $zero
	.p2align	4, , 16
.LBB31_35:                              #   Parent Loop BB31_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t0, 0
	stx.b	$zero, $t2, $t1
	addi.d	$t1, $t1, 1
	bne	$s1, $t1, .LBB31_35
# %bb.36:                               # %.lr.ph242
                                        #   in Loop: Header=BB31_20 Depth=1
	ldx.d	$t0, $s2, $a7
	move	$a7, $zero
	alsl.d	$t0, $a5, $t0, 3
	b	.LBB31_38
	.p2align	4, , 16
.LBB31_37:                              #   in Loop: Header=BB31_38 Depth=2
	addi.w	$a7, $a7, 1
	st.d	$a4, $t0, 0
	beq	$s1, $a7, .LBB31_19
.LBB31_38:                              #   Parent Loop BB31_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a6, $a7, .LBB31_37
# %bb.39:                               #   in Loop: Header=BB31_38 Depth=2
	beq	$a5, $a7, .LBB31_37
# %bb.40:                               #   in Loop: Header=BB31_38 Depth=2
	slt	$t1, $a7, $a6
	masknez	$t2, $a6, $t1
	maskeqz	$t1, $a7, $t1
	or	$t1, $t1, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $s2, $t1
	slt	$t2, $a6, $a7
	masknez	$t3, $a6, $t2
	maskeqz	$t2, $a7, $t2
	or	$t2, $t2, $t3
	slli.d	$t2, $t2, 3
	fldx.d	$fa2, $t1, $t2
	slt	$t3, $a7, $a5
	masknez	$t4, $a5, $t3
	maskeqz	$t3, $a7, $t3
	or	$t3, $t3, $t4
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $s2, $t3
	slt	$t4, $a5, $a7
	masknez	$t5, $a5, $t4
	maskeqz	$t4, $a7, $t4
	or	$t4, $t4, $t5
	slli.d	$t4, $t4, 3
	fldx.d	$fa3, $t3, $t4
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa3, $fa2, $fcc0
	fstx.d	$fa2, $t1, $t2
	stx.d	$a4, $t3, $t4
	b	.LBB31_37
.Lfunc_end31:
	.size	spg, .Lfunc_end31-spg
                                        # -- End function
	.globl	ipower                          # -- Begin function ipower
	.p2align	5
	.type	ipower,@function
ipower:                                 # @ipower
# %bb.0:
	beqz	$a0, .LBB32_4
# %bb.1:                                # %.lr.ph.preheader
	fmov.d	$fa1, $fa0
	vldi	$vr0, -912
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB32_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a0, 0
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	fmul.d	$fa2, $fa1, $fa0
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa2, $fa0, $fcc0
	fmul.d	$fa1, $fa1, $fa1
	srai.d	$a0, $a2, 1
	bltu	$a1, $a2, .LBB32_2
# %bb.3:                                # %._crit_edge
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	ret
.LBB32_4:
	vldi	$vr0, -912
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	ret
.Lfunc_end32:
	.size	ipower, .Lfunc_end32-ipower
                                        # -- End function
	.globl	countnode                       # -- Begin function countnode
	.p2align	5
	.type	countnode,@function
countnode:                              # @countnode
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ori	$s3, $zero, 2
	move	$s2, $a0
	blt	$a0, $s3, .LBB33_22
# %bb.1:                                # %.preheader89.preheader
	move	$fp, $a2
	move	$s1, $a1
	slli.d	$a2, $s2, 3
	pcalau12i	$a0, %pc_hi20(countnode.rootnode)
	addi.d	$s0, $a0, %pc_lo12(countnode.rootnode)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	bne	$s2, $s3, .LBB33_9
.LBB33_2:                               # %.preheader83
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $s1, $a0
	ld.d	$a0, $a2, 0
	ld.w	$a1, $a0, 0
	bltz	$a1, .LBB33_8
# %bb.3:                                # %.preheader.lr.ph
	ld.d	$a4, $a2, 8
	ld.w	$a2, $a4, 0
	bltz	$a2, .LBB33_8
# %bb.4:                                # %.preheader.us.preheader
	move	$a3, $zero
	addi.d	$a4, $a4, 4
	.p2align	4, , 16
.LBB33_5:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_6 Depth 2
	slli.d	$a5, $a1, 3
	fldx.d	$fa0, $s0, $a5
	move	$a5, $a4
	move	$a6, $a2
	.p2align	4, , 16
.LBB33_6:                               #   Parent Loop BB33_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $a6, 3
	fldx.d	$fa1, $s0, $a7
	slt	$a7, $a1, $a6
	masknez	$t0, $a6, $a7
	maskeqz	$a7, $a1, $a7
	or	$a7, $a7, $t0
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $fp, $a7
	slt	$t0, $a6, $a1
	masknez	$a6, $a6, $t0
	maskeqz	$t0, $a1, $t0
	or	$t0, $t0, $a6
	ld.w	$a6, $a5, 0
	fadd.d	$fa1, $fa0, $fa1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a7, $t0
	addi.d	$a5, $a5, 4
	bgez	$a6, .LBB33_6
# %bb.7:                                # %._crit_edge.us107
                                        #   in Loop: Header=BB33_5 Depth=1
	addi.d	$a3, $a3, 1
	slli.d	$a1, $a3, 2
	ldx.w	$a1, $a0, $a1
	bgez	$a1, .LBB33_5
.LBB33_8:                               # %._crit_edge106
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB33_9:                               # %.preheader87.preheader
	move	$a1, $zero
	addi.w	$a0, $s2, -2
	vldi	$vr0, -912
	vldi	$vr1, -784
	b	.LBB33_11
	.p2align	4, , 16
.LBB33_10:                              # %._crit_edge101
                                        #   in Loop: Header=BB33_11 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a0, .LBB33_2
.LBB33_11:                              # %.preheader87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_13 Depth 2
                                        #     Child Loop BB33_16 Depth 2
                                        #     Child Loop BB33_19 Depth 2
                                        #       Child Loop BB33_20 Depth 3
	slli.d	$a2, $a1, 3
	ldx.d	$a4, $s1, $a2
	ld.d	$a2, $a4, 0
	ld.w	$a3, $a2, 0
	bltz	$a3, .LBB33_14
# %bb.12:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB33_11 Depth=1
	addi.d	$a5, $a2, 4
	move	$a6, $a3
	.p2align	4, , 16
.LBB33_13:                              # %.lr.ph
                                        #   Parent Loop BB33_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $a6, 3
	fldx.d	$fa2, $s0, $a7
	ld.w	$a6, $a5, 0
	fadd.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $s0, $a7
	addi.d	$a5, $a5, 4
	bgez	$a6, .LBB33_13
.LBB33_14:                              # %.preheader86.thread
                                        #   in Loop: Header=BB33_11 Depth=1
	ld.d	$a5, $a4, 8
	ld.w	$a4, $a5, 0
	bltz	$a4, .LBB33_10
# %bb.15:                               # %.lr.ph96.preheader
                                        #   in Loop: Header=BB33_11 Depth=1
	addi.d	$a5, $a5, 4
	move	$a6, $a5
	move	$a7, $a4
	.p2align	4, , 16
.LBB33_16:                              # %.lr.ph96
                                        #   Parent Loop BB33_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $a7, 3
	fldx.d	$fa2, $s0, $t0
	ld.w	$a7, $a6, 0
	fadd.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $s0, $t0
	addi.d	$a6, $a6, 4
	bgez	$a7, .LBB33_16
# %bb.17:                               # %.preheader85
                                        #   in Loop: Header=BB33_11 Depth=1
	bltz	$a3, .LBB33_10
# %bb.18:                               # %.preheader84.us.preheader
                                        #   in Loop: Header=BB33_11 Depth=1
	move	$a6, $zero
	.p2align	4, , 16
.LBB33_19:                              # %.preheader84.us
                                        #   Parent Loop BB33_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_20 Depth 3
	slli.d	$a7, $a3, 3
	fldx.d	$fa2, $s0, $a7
	move	$a7, $a5
	move	$t0, $a4
	.p2align	4, , 16
.LBB33_20:                              #   Parent Loop BB33_11 Depth=1
                                        #     Parent Loop BB33_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t1, $t0, 3
	fldx.d	$fa3, $s0, $t1
	fadd.d	$fa3, $fa2, $fa3
	slt	$t1, $a3, $t0
	masknez	$t2, $t0, $t1
	maskeqz	$t1, $a3, $t1
	or	$t1, $t1, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $fp, $t1
	slt	$t2, $t0, $a3
	masknez	$t0, $t0, $t2
	maskeqz	$t2, $a3, $t2
	or	$t2, $t2, $t0
	ld.w	$t0, $a7, 0
	fadd.d	$fa3, $fa3, $fa1
	slli.d	$t2, $t2, 3
	fstx.d	$fa3, $t1, $t2
	addi.d	$a7, $a7, 4
	bgez	$t0, .LBB33_20
# %bb.21:                               # %._crit_edge.us
                                        #   in Loop: Header=BB33_19 Depth=2
	addi.d	$a6, $a6, 1
	slli.d	$a3, $a6, 2
	ldx.w	$a3, $a2, $a3
	bgez	$a3, .LBB33_19
	b	.LBB33_10
.LBB33_22:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	countnode, .Lfunc_end33-countnode
                                        # -- End function
	.globl	countnode_int                   # -- Begin function countnode_int
	.p2align	5
	.type	countnode_int,@function
countnode_int:                          # @countnode_int
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	lu12i.w	$a3, 48
	ori	$a3, $a3, 1408
	sub.d	$sp, $sp, $a3
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	blez	$a0, .LBB34_16
# %bb.1:                                # %.preheader102
	slli.d	$a2, $s0, 2
	addi.d	$a0, $sp, 8
	addi.d	$s2, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	addi.w	$a0, $s0, -2
	bltu	$s0, $a1, .LBB34_17
# %bb.2:                                # %.preheader101.preheader
	move	$a1, $zero
	b	.LBB34_4
	.p2align	4, , 16
.LBB34_3:                               # %._crit_edge116
                                        #   in Loop: Header=BB34_4 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a0, .LBB34_17
.LBB34_4:                               # %.preheader101
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_6 Depth 2
                                        #     Child Loop BB34_9 Depth 2
                                        #     Child Loop BB34_13 Depth 2
                                        #       Child Loop BB34_15 Depth 3
	slli.d	$a2, $a1, 3
	ldx.d	$a4, $s1, $a2
	ld.d	$a2, $a4, 0
	ld.w	$a3, $a2, 0
	bltz	$a3, .LBB34_7
# %bb.5:                                # %.lr.ph108.preheader
                                        #   in Loop: Header=BB34_4 Depth=1
	addi.d	$a5, $a2, 4
	move	$a6, $a3
	.p2align	4, , 16
.LBB34_6:                               # %.lr.ph108
                                        #   Parent Loop BB34_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $a6, 2
	ldx.w	$t0, $a7, $s2
	ld.w	$a6, $a5, 0
	addi.d	$t0, $t0, 1
	stx.w	$t0, $a7, $s2
	addi.d	$a5, $a5, 4
	bgez	$a6, .LBB34_6
.LBB34_7:                               # %.preheader100.thread
                                        #   in Loop: Header=BB34_4 Depth=1
	ld.d	$a4, $a4, 8
	ld.w	$a5, $a4, 0
	bltz	$a5, .LBB34_3
# %bb.8:                                #   in Loop: Header=BB34_4 Depth=1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 4
	.p2align	4, , 16
.LBB34_9:                               # %.lr.ph111
                                        #   Parent Loop BB34_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $a5, 2
	ldx.w	$t0, $a7, $s2
	ldx.wu	$a5, $a4, $a6
	addi.d	$t0, $t0, 1
	stx.w	$t0, $a7, $s2
	addi.w	$a7, $a5, 0
	addi.d	$a6, $a6, 4
	bgez	$a7, .LBB34_9
# %bb.10:                               # %.preheader99
                                        #   in Loop: Header=BB34_4 Depth=1
	bltz	$a3, .LBB34_3
# %bb.11:                               # %.preheader98.preheader
                                        #   in Loop: Header=BB34_4 Depth=1
	move	$a5, $zero
	addi.d	$a6, $a4, 4
	b	.LBB34_13
	.p2align	4, , 16
.LBB34_12:                              # %._crit_edge
                                        #   in Loop: Header=BB34_13 Depth=2
	addi.d	$a5, $a5, 1
	slli.d	$a3, $a5, 2
	ldx.w	$a3, $a2, $a3
	bltz	$a3, .LBB34_3
.LBB34_13:                              # %.preheader98
                                        #   Parent Loop BB34_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB34_15 Depth 3
	ld.w	$a7, $a4, 0
	bltz	$a7, .LBB34_12
# %bb.14:                               # %.lr.ph114
                                        #   in Loop: Header=BB34_13 Depth=2
	slli.d	$t0, $a3, 2
	ldx.w	$t0, $t0, $s2
	addi.d	$t0, $t0, -1
	move	$t1, $a6
	.p2align	4, , 16
.LBB34_15:                              #   Parent Loop BB34_4 Depth=1
                                        #     Parent Loop BB34_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t2, $a7, 2
	ldx.w	$t2, $t2, $s2
	add.d	$t2, $t0, $t2
	sltu	$t3, $a3, $a7
	masknez	$t4, $a7, $t3
	maskeqz	$t3, $a3, $t3
	or	$t3, $t3, $t4
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $fp, $t3
	sltu	$t4, $a7, $a3
	masknez	$a7, $a7, $t4
	maskeqz	$t4, $a3, $t4
	or	$a7, $t4, $a7
	slli.d	$a7, $a7, 2
	stx.w	$t2, $t3, $a7
	ld.w	$a7, $t1, 0
	addi.d	$t1, $t1, 4
	bgez	$a7, .LBB34_15
	b	.LBB34_12
.LBB34_16:                              # %.preheader102.thread
	addi.w	$a0, $s0, -2
.LBB34_17:                              # %.preheader97
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $s1, $a0
	ld.d	$a0, $a2, 0
	ld.w	$a1, $a0, 0
	bltz	$a1, .LBB34_24
# %bb.18:                               # %.preheader96.lr.ph
	ld.d	$a2, $a2, 8
	ld.w	$a6, $a2, 0
	bltz	$a6, .LBB34_24
# %bb.19:                               # %.preheader96.preheader
	move	$a3, $zero
	addi.d	$a4, $a2, 4
	addi.d	$a5, $sp, 8
	bltz	$a6, .LBB34_22
	.p2align	4, , 16
.LBB34_20:                              # %.lr.ph119
	slli.d	$a7, $a1, 2
	ldx.w	$a7, $a7, $a5
	move	$t0, $a4
	.p2align	4, , 16
.LBB34_21:                              # =>This Inner Loop Header: Depth=1
	slli.d	$t1, $a6, 2
	ldx.w	$t1, $t1, $a5
	add.d	$t1, $t1, $a7
	sltu	$t2, $a1, $a6
	masknez	$t3, $a6, $t2
	maskeqz	$t2, $a1, $t2
	or	$t2, $t2, $t3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $fp, $t2
	sltu	$t3, $a6, $a1
	masknez	$a6, $a6, $t3
	maskeqz	$t3, $a1, $t3
	or	$a6, $t3, $a6
	slli.d	$a6, $a6, 2
	stx.w	$t1, $t2, $a6
	ld.w	$a6, $t0, 0
	addi.d	$t0, $t0, 4
	bgez	$a6, .LBB34_21
.LBB34_22:                              # %._crit_edge120
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a3, 1
	slli.d	$a1, $a3, 2
	ldx.w	$a1, $a0, $a1
	bltz	$a1, .LBB34_24
# %bb.23:                               # %.preheader96thread-pre-split
                                        #   in Loop: Header=BB34_22 Depth=1
	ld.w	$a6, $a2, 0
	bgez	$a6, .LBB34_20
	b	.LBB34_22
.LBB34_24:                              # %.preheader
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB34_29
# %bb.25:                               # %.lr.ph126.preheader
	move	$a4, $zero
	addi.w	$a0, $s0, -1
	addi.d	$a1, $fp, 8
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	.p2align	4, , 16
.LBB34_26:                              # %.lr.ph124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_27 Depth 2
	slli.d	$a5, $a4, 3
	ldx.d	$a6, $fp, $a5
	slli.d	$a5, $a4, 2
	addi.d	$a4, $a4, 1
	add.d	$a6, $a6, $a3
	move	$a7, $s0
	move	$t0, $a1
	.p2align	4, , 16
.LBB34_27:                              #   Parent Loop BB34_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a6, 0
	ld.d	$t2, $t0, 0
	stx.w	$t1, $t2, $a5
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	bne	$a2, $a7, .LBB34_27
# %bb.28:                               # %.loopexit
                                        #   in Loop: Header=BB34_26 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 4
	bne	$a4, $a0, .LBB34_26
.LBB34_29:                              # %._crit_edge127
	lu12i.w	$a0, 48
	ori	$a0, $a0, 1408
	add.d	$sp, $sp, $a0
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end34:
	.size	countnode_int, .Lfunc_end34-countnode_int
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function counteff_simple_float
.LCPI35_0:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
	.text
	.globl	counteff_simple_float
	.p2align	5
	.type	counteff_simple_float,@function
counteff_simple_float:                  # @counteff_simple_float
# %bb.0:
	blez	$a0, .LBB35_33
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$fp, $a0
	slli.d	$a2, $a0, 3
	pcalau12i	$a0, %pc_hi20(counteff_simple_float.rootnode)
	addi.d	$s1, $a0, %pc_lo12(counteff_simple_float.rootnode)
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4
	pcalau12i	$a0, %pc_hi20(counteff_simple_float.eff)
	addi.d	$a0, $a0, %pc_lo12(counteff_simple_float.eff)
	move	$a1, $zero
	bltu	$fp, $a2, .LBB35_5
# %bb.2:                                # %vector.ph
	addi.d	$a2, $a0, 16
	bstrpick.d	$a1, $fp, 30, 2
	slli.d	$a1, $a1, 2
	lu52i.d	$a3, $zero, 1023
	vreplgr2vr.d	$vr0, $a3
	move	$a3, $a1
	.p2align	4, , 16
.LBB35_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB35_3
# %bb.4:                                # %middle.block
	beq	$a1, $fp, .LBB35_7
.LBB35_5:                               # %.lr.ph.preheader120
	alsl.d	$a2, $a1, $a0, 3
	sub.d	$a1, $fp, $a1
	lu52i.d	$a3, $zero, 1023
	.p2align	4, , 16
.LBB35_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB35_6
.LBB35_7:                               # %.preheader51
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB35_10
.LBB35_8:                               # %.lr.ph61.preheader
	ori	$a0, $zero, 4
	bgeu	$fp, $a0, .LBB35_18
# %bb.9:
	move	$a0, $zero
	b	.LBB35_21
.LBB35_10:                              # %.preheader50.preheader
	move	$a1, $zero
	addi.w	$a2, $fp, -1
	vldi	$vr0, -928
	b	.LBB35_12
	.p2align	4, , 16
.LBB35_11:                              # %._crit_edge
                                        #   in Loop: Header=BB35_12 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB35_8
.LBB35_12:                              # %.preheader50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_14 Depth 2
                                        #     Child Loop BB35_17 Depth 2
	slli.d	$a3, $a1, 3
	ldx.d	$a4, $s3, $a3
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 0
	bltz	$a6, .LBB35_15
# %bb.13:                               # %.lr.ph55
                                        #   in Loop: Header=BB35_12 Depth=1
	ldx.d	$a7, $s2, $a3
	fld.s	$fa1, $a7, 0
	bstrpick.d	$a6, $a6, 31, 0
	fcvt.d.s	$fa1, $fa1
	addi.d	$a5, $a5, 4
	.p2align	4, , 16
.LBB35_14:                              #   Parent Loop BB35_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $a6, 3
	fldx.d	$fa2, $a0, $a7
	fldx.d	$fa3, $s1, $a7
	fmadd.d	$fa3, $fa1, $fa2, $fa3
	ld.wu	$a6, $a5, 0
	fstx.d	$fa3, $s1, $a7
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a0, $a7
	addi.w	$a7, $a6, 0
	addi.d	$a5, $a5, 4
	bgez	$a7, .LBB35_14
.LBB35_15:                              # %.preheader49
                                        #   in Loop: Header=BB35_12 Depth=1
	ld.d	$a5, $a4, 8
	ld.w	$a4, $a5, 0
	bltz	$a4, .LBB35_11
# %bb.16:                               # %.lr.ph58
                                        #   in Loop: Header=BB35_12 Depth=1
	ldx.d	$a3, $s2, $a3
	fld.s	$fa1, $a3, 4
	bstrpick.d	$a4, $a4, 31, 0
	fcvt.d.s	$fa1, $fa1
	addi.d	$a3, $a5, 4
	.p2align	4, , 16
.LBB35_17:                              #   Parent Loop BB35_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a5, $a4, 3
	fldx.d	$fa2, $a0, $a5
	fldx.d	$fa3, $s1, $a5
	fmadd.d	$fa3, $fa1, $fa2, $fa3
	ld.wu	$a4, $a3, 0
	fstx.d	$fa3, $s1, $a5
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a0, $a5
	addi.w	$a5, $a4, 0
	addi.d	$a3, $a3, 4
	bgez	$a5, .LBB35_17
	b	.LBB35_11
.LBB35_18:                              # %vector.ph95
	addi.d	$a1, $s1, 16
	bstrpick.d	$a0, $fp, 30, 2
	slli.d	$a0, $a0, 2
	lu12i.w	$a2, -184550
	ori	$a2, $a2, 2556
	lu32i.d	$a2, 25165
	lu52i.d	$a2, $a2, 1013
	vreplgr2vr.d	$vr0, $a2
	move	$a2, $a0
	.p2align	4, , 16
.LBB35_19:                              # %vector.body98
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vfadd.d	$vr1, $vr1, $vr0
	vfadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a1, -16
	vst	$vr2, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB35_19
# %bb.20:                               # %middle.block102
	beq	$a0, $fp, .LBB35_23
.LBB35_21:                              # %.lr.ph61.preheader119
	pcalau12i	$a1, %pc_hi20(counteff_simple_float.rootnode)
	addi.d	$a1, $a1, %pc_lo12(counteff_simple_float.rootnode)
	pcalau12i	$a2, %pc_hi20(.LCPI35_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI35_0)
	alsl.d	$a1, $a0, $a1, 3
	sub.d	$a0, $fp, $a0
	.p2align	4, , 16
.LBB35_22:                              # %.lr.ph61
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB35_22
.LBB35_23:                              # %.lr.ph64.preheader
	movgr2fr.d	$fa0, $zero
	move	$a0, $fp
	.p2align	4, , 16
.LBB35_24:                              # %.lr.ph64
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s1, 0
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$s1, $s1, 8
	bnez	$a0, .LBB35_24
# %bb.25:                               # %.lr.ph66.preheader
	ori	$a0, $zero, 4
	bgeu	$fp, $a0, .LBB35_27
# %bb.26:
	move	$a0, $zero
	b	.LBB35_30
.LBB35_27:                              # %vector.ph107
	bstrpick.d	$a0, $fp, 30, 2
	slli.d	$a0, $a0, 2
	vreplvei.d	$vr1, $vr0, 0
	pcalau12i	$a1, %pc_hi20(counteff_simple_float.rootnode+16)
	addi.d	$a1, $a1, %pc_lo12(counteff_simple_float.rootnode+16)
	addi.d	$a2, $s0, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB35_28:                              # %vector.body110
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vfdiv.d	$vr2, $vr2, $vr1
	vfdiv.d	$vr3, $vr3, $vr1
	vst	$vr2, $a2, -16
	vst	$vr3, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB35_28
# %bb.29:                               # %middle.block115
	beq	$a0, $fp, .LBB35_32
.LBB35_30:                              # %.lr.ph66.preheader118
	alsl.d	$a1, $a0, $s0, 3
	pcalau12i	$a2, %pc_hi20(counteff_simple_float.rootnode)
	addi.d	$a2, $a2, %pc_lo12(counteff_simple_float.rootnode)
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $fp, $a0
	.p2align	4, , 16
.LBB35_31:                              # %.lr.ph66
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB35_31
.LBB35_32:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB35_33:                              # %._crit_edge67
	ret
.Lfunc_end35:
	.size	counteff_simple_float, .Lfunc_end35-counteff_simple_float
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function counteff_simple
.LCPI36_0:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
	.text
	.globl	counteff_simple
	.p2align	5
	.type	counteff_simple,@function
counteff_simple:                        # @counteff_simple
# %bb.0:
	blez	$a0, .LBB36_33
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$fp, $a0
	slli.d	$a2, $a0, 3
	pcalau12i	$a0, %pc_hi20(counteff_simple.rootnode)
	addi.d	$s1, $a0, %pc_lo12(counteff_simple.rootnode)
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4
	pcalau12i	$a0, %pc_hi20(counteff_simple.eff)
	addi.d	$a0, $a0, %pc_lo12(counteff_simple.eff)
	move	$a1, $zero
	bltu	$fp, $a2, .LBB36_5
# %bb.2:                                # %vector.ph
	addi.d	$a2, $a0, 16
	bstrpick.d	$a1, $fp, 30, 2
	slli.d	$a1, $a1, 2
	lu52i.d	$a3, $zero, 1023
	vreplgr2vr.d	$vr0, $a3
	move	$a3, $a1
	.p2align	4, , 16
.LBB36_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB36_3
# %bb.4:                                # %middle.block
	beq	$a1, $fp, .LBB36_7
.LBB36_5:                               # %.lr.ph.preheader120
	alsl.d	$a2, $a1, $a0, 3
	sub.d	$a1, $fp, $a1
	lu52i.d	$a3, $zero, 1023
	.p2align	4, , 16
.LBB36_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB36_6
.LBB36_7:                               # %.preheader51
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB36_10
.LBB36_8:                               # %.lr.ph61.preheader
	ori	$a0, $zero, 4
	bgeu	$fp, $a0, .LBB36_18
# %bb.9:
	move	$a0, $zero
	b	.LBB36_21
.LBB36_10:                              # %.preheader50.preheader
	move	$a1, $zero
	addi.w	$a2, $fp, -1
	vldi	$vr0, -928
	b	.LBB36_12
	.p2align	4, , 16
.LBB36_11:                              # %._crit_edge
                                        #   in Loop: Header=BB36_12 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB36_8
.LBB36_12:                              # %.preheader50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_14 Depth 2
                                        #     Child Loop BB36_17 Depth 2
	slli.d	$a3, $a1, 3
	ldx.d	$a4, $s3, $a3
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 0
	bltz	$a6, .LBB36_15
# %bb.13:                               # %.lr.ph55
                                        #   in Loop: Header=BB36_12 Depth=1
	ldx.d	$a7, $s2, $a3
	fld.d	$fa1, $a7, 0
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a5, $a5, 4
	.p2align	4, , 16
.LBB36_14:                              #   Parent Loop BB36_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $a6, 3
	fldx.d	$fa2, $a0, $a7
	fldx.d	$fa3, $s1, $a7
	fmadd.d	$fa3, $fa1, $fa2, $fa3
	ld.wu	$a6, $a5, 0
	fstx.d	$fa3, $s1, $a7
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a0, $a7
	addi.w	$a7, $a6, 0
	addi.d	$a5, $a5, 4
	bgez	$a7, .LBB36_14
.LBB36_15:                              # %.preheader49
                                        #   in Loop: Header=BB36_12 Depth=1
	ld.d	$a5, $a4, 8
	ld.w	$a4, $a5, 0
	bltz	$a4, .LBB36_11
# %bb.16:                               # %.lr.ph58
                                        #   in Loop: Header=BB36_12 Depth=1
	ldx.d	$a3, $s2, $a3
	fld.d	$fa1, $a3, 8
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a3, $a5, 4
	.p2align	4, , 16
.LBB36_17:                              #   Parent Loop BB36_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a5, $a4, 3
	fldx.d	$fa2, $a0, $a5
	fldx.d	$fa3, $s1, $a5
	fmadd.d	$fa3, $fa1, $fa2, $fa3
	ld.wu	$a4, $a3, 0
	fstx.d	$fa3, $s1, $a5
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a0, $a5
	addi.w	$a5, $a4, 0
	addi.d	$a3, $a3, 4
	bgez	$a5, .LBB36_17
	b	.LBB36_11
.LBB36_18:                              # %vector.ph95
	addi.d	$a1, $s1, 16
	bstrpick.d	$a0, $fp, 30, 2
	slli.d	$a0, $a0, 2
	lu12i.w	$a2, -184550
	ori	$a2, $a2, 2556
	lu32i.d	$a2, 25165
	lu52i.d	$a2, $a2, 1013
	vreplgr2vr.d	$vr0, $a2
	move	$a2, $a0
	.p2align	4, , 16
.LBB36_19:                              # %vector.body98
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vfadd.d	$vr1, $vr1, $vr0
	vfadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a1, -16
	vst	$vr2, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB36_19
# %bb.20:                               # %middle.block102
	beq	$a0, $fp, .LBB36_23
.LBB36_21:                              # %.lr.ph61.preheader119
	pcalau12i	$a1, %pc_hi20(counteff_simple.rootnode)
	addi.d	$a1, $a1, %pc_lo12(counteff_simple.rootnode)
	pcalau12i	$a2, %pc_hi20(.LCPI36_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI36_0)
	alsl.d	$a1, $a0, $a1, 3
	sub.d	$a0, $fp, $a0
	.p2align	4, , 16
.LBB36_22:                              # %.lr.ph61
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB36_22
.LBB36_23:                              # %.lr.ph64.preheader
	movgr2fr.d	$fa0, $zero
	move	$a0, $fp
	.p2align	4, , 16
.LBB36_24:                              # %.lr.ph64
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s1, 0
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$s1, $s1, 8
	bnez	$a0, .LBB36_24
# %bb.25:                               # %.lr.ph66.preheader
	ori	$a0, $zero, 4
	bgeu	$fp, $a0, .LBB36_27
# %bb.26:
	move	$a0, $zero
	b	.LBB36_30
.LBB36_27:                              # %vector.ph107
	bstrpick.d	$a0, $fp, 30, 2
	slli.d	$a0, $a0, 2
	vreplvei.d	$vr1, $vr0, 0
	pcalau12i	$a1, %pc_hi20(counteff_simple.rootnode+16)
	addi.d	$a1, $a1, %pc_lo12(counteff_simple.rootnode+16)
	addi.d	$a2, $s0, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB36_28:                              # %vector.body110
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vfdiv.d	$vr2, $vr2, $vr1
	vfdiv.d	$vr3, $vr3, $vr1
	vst	$vr2, $a2, -16
	vst	$vr3, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB36_28
# %bb.29:                               # %middle.block115
	beq	$a0, $fp, .LBB36_32
.LBB36_30:                              # %.lr.ph66.preheader118
	alsl.d	$a1, $a0, $s0, 3
	pcalau12i	$a2, %pc_hi20(counteff_simple.rootnode)
	addi.d	$a2, $a2, %pc_lo12(counteff_simple.rootnode)
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $fp, $a0
	.p2align	4, , 16
.LBB36_31:                              # %.lr.ph66
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB36_31
.LBB36_32:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB36_33:                              # %._crit_edge67
	ret
.Lfunc_end36:
	.size	counteff_simple, .Lfunc_end36-counteff_simple
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function counteff
.LCPI37_0:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
	.text
	.globl	counteff
	.p2align	5
	.type	counteff,@function
counteff:                               # @counteff
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	lu12i.w	$a4, 194
	ori	$a4, $a4, 3408
	sub.d	$sp, $sp, $a4
	move	$fp, $a3
	move	$s2, $a2
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(mix)
	ld.d	$a0, $a0, %got_pc_lo12(mix)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB37_6
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(weight)
	ld.d	$a0, $a0, %got_pc_lo12(weight)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB37_4
# %bb.2:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB37_5
# %bb.3:                                # %.loopexit174.thread306
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	b	.LBB37_23
.LBB37_4:                               # %.thread305
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 0
	b	.LBB37_8
.LBB37_5:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB37_6:
	pcalau12i	$a0, %got_pc_hi20(weight)
	ld.d	$a0, $a0, %got_pc_lo12(weight)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB37_23
# %bb.7:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB37_52
.LBB37_8:                               # %.preheader184
	addi.w	$s2, $s0, -2
	blez	$s0, .LBB37_33
# %bb.9:                                # %.preheader183
	slli.d	$a2, $s0, 3
	lu12i.w	$a0, 97
	ori	$a0, $a0, 2704
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 97
	ori	$a1, $a1, 2704
	add.d	$s3, $sp, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	bltu	$s0, $a0, .LBB37_33
# %bb.10:                               # %.preheader182.preheader
	move	$a0, $zero
	vldi	$vr0, -912
	vldi	$vr1, -784
	b	.LBB37_12
	.p2align	4, , 16
.LBB37_11:                              # %._crit_edge201
                                        #   in Loop: Header=BB37_12 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s2, .LBB37_33
.LBB37_12:                              # %.preheader182
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_14 Depth 2
                                        #     Child Loop BB37_17 Depth 2
                                        #     Child Loop BB37_20 Depth 2
                                        #       Child Loop BB37_21 Depth 3
	slli.d	$a1, $a0, 3
	ldx.d	$a3, $s1, $a1
	ld.d	$a1, $a3, 0
	ld.w	$a2, $a1, 0
	bltz	$a2, .LBB37_15
# %bb.13:                               # %.lr.ph193.preheader
                                        #   in Loop: Header=BB37_12 Depth=1
	addi.d	$a4, $a1, 4
	move	$a5, $a2
	.p2align	4, , 16
.LBB37_14:                              # %.lr.ph193
                                        #   Parent Loop BB37_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a6, $a5, 3
	fldx.d	$fa2, $a6, $s3
	ld.w	$a5, $a4, 0
	fadd.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a6, $s3
	addi.d	$a4, $a4, 4
	bgez	$a5, .LBB37_14
.LBB37_15:                              # %.preheader181.thread
                                        #   in Loop: Header=BB37_12 Depth=1
	ld.d	$a4, $a3, 8
	ld.w	$a3, $a4, 0
	bltz	$a3, .LBB37_11
# %bb.16:                               # %.lr.ph196.preheader
                                        #   in Loop: Header=BB37_12 Depth=1
	addi.d	$a4, $a4, 4
	move	$a5, $a4
	move	$a6, $a3
	.p2align	4, , 16
.LBB37_17:                              # %.lr.ph196
                                        #   Parent Loop BB37_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $a6, 3
	fldx.d	$fa2, $a7, $s3
	ld.w	$a6, $a5, 0
	fadd.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a7, $s3
	addi.d	$a5, $a5, 4
	bgez	$a6, .LBB37_17
# %bb.18:                               # %.preheader180
                                        #   in Loop: Header=BB37_12 Depth=1
	bltz	$a2, .LBB37_11
# %bb.19:                               # %.preheader179.us.preheader
                                        #   in Loop: Header=BB37_12 Depth=1
	move	$a5, $zero
	.p2align	4, , 16
.LBB37_20:                              # %.preheader179.us
                                        #   Parent Loop BB37_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_21 Depth 3
	slli.d	$a6, $a2, 3
	fldx.d	$fa2, $a6, $s3
	move	$a6, $a4
	move	$a7, $a3
	.p2align	4, , 16
.LBB37_21:                              #   Parent Loop BB37_12 Depth=1
                                        #     Parent Loop BB37_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t0, $a7, 3
	fldx.d	$fa3, $t0, $s3
	fadd.d	$fa3, $fa2, $fa3
	slt	$t0, $a2, $a7
	masknez	$t1, $a7, $t0
	maskeqz	$t0, $a2, $t0
	or	$t0, $t0, $t1
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $fp, $t0
	slt	$t1, $a7, $a2
	masknez	$a7, $a7, $t1
	maskeqz	$t1, $a2, $t1
	or	$t1, $t1, $a7
	ld.w	$a7, $a6, 0
	fadd.d	$fa3, $fa3, $fa1
	slli.d	$t1, $t1, 3
	fstx.d	$fa3, $t0, $t1
	addi.d	$a6, $a6, 4
	bgez	$a7, .LBB37_21
# %bb.22:                               # %._crit_edge.us
                                        #   in Loop: Header=BB37_20 Depth=2
	addi.d	$a5, $a5, 1
	slli.d	$a2, $a5, 2
	ldx.w	$a2, $a1, $a2
	bgez	$a2, .LBB37_20
	b	.LBB37_11
.LBB37_23:                              # %.preheader171
	blez	$s0, .LBB37_52
# %bb.24:                               # %.lr.ph217.preheader
	slli.d	$a2, $s0, 3
	lu12i.w	$a0, 97
	ori	$a0, $a0, 2704
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ori	$a2, $zero, 4
	bstrpick.d	$a0, $s0, 30, 2
	bltu	$s0, $a2, .LBB37_28
# %bb.25:                               # %vector.ph
	slli.d	$a1, $a0, 2
	addi.d	$a2, $sp, 32
	lu52i.d	$a3, $zero, 1023
	vreplgr2vr.d	$vr0, $a3
	move	$a3, $a1
	.p2align	4, , 16
.LBB37_26:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB37_26
# %bb.27:                               # %middle.block
	beq	$a1, $s0, .LBB37_30
.LBB37_28:                              # %.lr.ph217.preheader327
	addi.d	$a2, $sp, 16
	alsl.d	$a2, $a1, $a2, 3
	sub.d	$a1, $s0, $a1
	lu52i.d	$a3, $zero, 1023
	.p2align	4, , 16
.LBB37_29:                              # %.lr.ph217
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB37_29
.LBB37_30:                              # %.preheader170
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB37_53
.LBB37_31:                              # %.lr.ph226.preheader
	ori	$a1, $zero, 4
	bgeu	$s0, $a1, .LBB37_61
# %bb.32:
	move	$a0, $zero
	b	.LBB37_64
.LBB37_33:                              # %.preheader178
	slli.d	$a0, $s2, 3
	ldx.d	$a2, $s1, $a0
	ld.d	$a0, $a2, 0
	ld.w	$a1, $a0, 0
	bltz	$a1, .LBB37_39
# %bb.34:                               # %.preheader177.lr.ph
	ld.d	$a4, $a2, 8
	ld.w	$a2, $a4, 0
	bltz	$a2, .LBB37_39
# %bb.35:                               # %.preheader177.us.preheader
	move	$a3, $zero
	addi.d	$a4, $a4, 4
	lu12i.w	$a5, 97
	ori	$a5, $a5, 2704
	add.d	$a5, $sp, $a5
	.p2align	4, , 16
.LBB37_36:                              # %.preheader177.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_37 Depth 2
	slli.d	$a6, $a1, 3
	fldx.d	$fa0, $a6, $a5
	move	$a6, $a4
	move	$a7, $a2
	.p2align	4, , 16
.LBB37_37:                              #   Parent Loop BB37_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $t0, $a5
	slt	$t0, $a1, $a7
	masknez	$t1, $a7, $t0
	maskeqz	$t0, $a1, $t0
	or	$t0, $t0, $t1
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $fp, $t0
	slt	$t1, $a7, $a1
	masknez	$a7, $a7, $t1
	maskeqz	$t1, $a1, $t1
	or	$t1, $t1, $a7
	ld.w	$a7, $a6, 0
	fadd.d	$fa1, $fa0, $fa1
	slli.d	$t1, $t1, 3
	fstx.d	$fa1, $t0, $t1
	addi.d	$a6, $a6, 4
	bgez	$a7, .LBB37_37
# %bb.38:                               # %._crit_edge.us206
                                        #   in Loop: Header=BB37_36 Depth=1
	addi.d	$a3, $a3, 1
	slli.d	$a1, $a3, 2
	ldx.w	$a1, $a0, $a1
	bgez	$a1, .LBB37_36
.LBB37_39:                              # %.preheader176
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB37_52
# %bb.40:                               # %.lr.ph210
	addi.w	$a0, $s0, -1
	pcalau12i	$a1, %got_pc_hi20(geta2)
	ld.d	$a1, $a1, %got_pc_lo12(geta2)
	fld.s	$fa0, $a1, 0
	move	$a3, $zero
	fcvt.d.s	$fa0, $fa0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	b	.LBB37_42
	.p2align	4, , 16
.LBB37_41:                              # %.loopexit175
                                        #   in Loop: Header=BB37_42 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a3, $a0, .LBB37_48
.LBB37_42:                              # %.lr.ph208
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_45 Depth 2
                                        #       Child Loop BB37_47 Depth 3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $fp, $a4
	addi.d	$a3, $a3, 1
	move	$a5, $a2
	b	.LBB37_45
	.p2align	4, , 16
.LBB37_43:                              #   in Loop: Header=BB37_45 Depth=2
	vldi	$vr1, -912
.LBB37_44:                              # %ipower.exit
                                        #   in Loop: Header=BB37_45 Depth=2
	alsl.d	$a6, $a5, $a4, 3
	fadd.d	$fa1, $fa1, $fa0
	addi.d	$a5, $a5, 1
	fst.d	$fa1, $a6, 0
	beq	$a5, $s0, .LBB37_41
.LBB37_45:                              #   Parent Loop BB37_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_47 Depth 3
	slli.d	$a6, $a5, 3
	fldx.d	$fa1, $a4, $a6
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	beqz	$a6, .LBB37_43
# %bb.46:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB37_45 Depth=2
	vldi	$vr2, -928
	vldi	$vr1, -912
	.p2align	4, , 16
.LBB37_47:                              # %.lr.ph.i
                                        #   Parent Loop BB37_42 Depth=1
                                        #     Parent Loop BB37_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a7, $a6, 0
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	fmul.d	$fa3, $fa1, $fa2
	movgr2cf	$fcc0, $a6
	fsel	$fa1, $fa3, $fa1, $fcc0
	fmul.d	$fa2, $fa2, $fa2
	srai.d	$a6, $a7, 1
	bltu	$a1, $a7, .LBB37_47
	b	.LBB37_44
.LBB37_48:                              # %.lr.ph215.preheader
	move	$a4, $zero
	addi.d	$a1, $fp, 8
	ori	$a2, $zero, 1
	ori	$a3, $zero, 8
	.p2align	4, , 16
.LBB37_49:                              # %.lr.ph213
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_50 Depth 2
	slli.d	$a5, $a4, 3
	ldx.d	$a6, $fp, $a5
	addi.d	$a4, $a4, 1
	add.d	$a6, $a6, $a3
	move	$a7, $s0
	move	$t0, $a1
	.p2align	4, , 16
.LBB37_50:                              #   Parent Loop BB37_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a6, 0
	ld.d	$t1, $t0, 0
	fstx.d	$fa0, $t1, $a5
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	bne	$a2, $a7, .LBB37_50
# %bb.51:                               # %.loopexit172
                                        #   in Loop: Header=BB37_49 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	bne	$a4, $a0, .LBB37_49
.LBB37_52:                              # %.loopexit
	lu12i.w	$a0, 194
	ori	$a0, $a0, 3408
	add.d	$sp, $sp, $a0
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB37_53:                              # %.preheader169.preheader
	move	$a1, $zero
	addi.w	$a2, $s0, -1
	addi.d	$a3, $sp, 16
	lu12i.w	$a4, 97
	ori	$a4, $a4, 2704
	add.d	$a4, $sp, $a4
	vldi	$vr0, -928
	b	.LBB37_55
	.p2align	4, , 16
.LBB37_54:                              # %._crit_edge
                                        #   in Loop: Header=BB37_55 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB37_31
.LBB37_55:                              # %.preheader169
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_57 Depth 2
                                        #     Child Loop BB37_60 Depth 2
	slli.d	$a5, $a1, 3
	ldx.d	$a6, $s1, $a5
	ld.d	$a7, $a6, 0
	ld.w	$t0, $a7, 0
	bltz	$t0, .LBB37_58
# %bb.56:                               # %.lr.ph219
                                        #   in Loop: Header=BB37_55 Depth=1
	ldx.d	$t1, $s2, $a5
	fld.d	$fa1, $t1, 0
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$a7, $a7, 4
	.p2align	4, , 16
.LBB37_57:                              #   Parent Loop BB37_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t1, $t0, 3
	fldx.d	$fa2, $t1, $a3
	fldx.d	$fa3, $t1, $a4
	fmadd.d	$fa3, $fa1, $fa2, $fa3
	ld.wu	$t0, $a7, 0
	fstx.d	$fa3, $t1, $a4
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t1, $a3
	addi.w	$t1, $t0, 0
	addi.d	$a7, $a7, 4
	bgez	$t1, .LBB37_57
.LBB37_58:                              # %.preheader168
                                        #   in Loop: Header=BB37_55 Depth=1
	ld.d	$a7, $a6, 8
	ld.w	$a6, $a7, 0
	bltz	$a6, .LBB37_54
# %bb.59:                               # %.lr.ph223
                                        #   in Loop: Header=BB37_55 Depth=1
	ldx.d	$a5, $s2, $a5
	fld.d	$fa1, $a5, 8
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a5, $a7, 4
	.p2align	4, , 16
.LBB37_60:                              #   Parent Loop BB37_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $a6, 3
	fldx.d	$fa2, $a7, $a3
	fldx.d	$fa3, $a7, $a4
	fmadd.d	$fa3, $fa1, $fa2, $fa3
	ld.wu	$a6, $a5, 0
	fstx.d	$fa3, $a7, $a4
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a7, $a3
	addi.w	$a7, $a6, 0
	addi.d	$a5, $a5, 4
	bgez	$a7, .LBB37_60
	b	.LBB37_54
.LBB37_61:                              # %vector.ph315
	slli.d	$a0, $a0, 2
	lu12i.w	$a1, 97
	ori	$a1, $a1, 2720
	add.d	$a1, $sp, $a1
	lu12i.w	$a2, -184550
	ori	$a2, $a2, 2556
	lu32i.d	$a2, 25165
	lu52i.d	$a2, $a2, 1013
	vreplgr2vr.d	$vr0, $a2
	move	$a2, $a0
	.p2align	4, , 16
.LBB37_62:                              # %vector.body318
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vfadd.d	$vr1, $vr1, $vr0
	vfadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a1, -16
	vst	$vr2, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB37_62
# %bb.63:                               # %middle.block322
	beq	$a0, $s0, .LBB37_66
.LBB37_64:                              # %.lr.ph226.preheader326
	pcalau12i	$a1, %pc_hi20(.LCPI37_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI37_0)
	lu12i.w	$a1, 97
	ori	$a1, $a1, 2704
	add.d	$a1, $sp, $a1
	alsl.d	$a1, $a0, $a1, 3
	sub.d	$a0, $s0, $a0
	.p2align	4, , 16
.LBB37_65:                              # %.lr.ph226
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB37_65
.LBB37_66:                              # %.preheader.us.preheader
	move	$a0, $zero
	bstrpick.d	$a1, $s0, 31, 0
	b	.LBB37_68
	.p2align	4, , 16
.LBB37_67:                              # %._crit_edge229.us
                                        #   in Loop: Header=BB37_68 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB37_52
.LBB37_68:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_70 Depth 2
	slli.d	$a3, $a0, 3
	lu12i.w	$a2, 97
	ori	$a2, $a2, 2704
	add.d	$a2, $sp, $a2
	fldx.d	$fa0, $a3, $a2
	ldx.d	$a3, $fp, $a3
	move	$a4, $zero
	b	.LBB37_70
	.p2align	4, , 16
.LBB37_69:                              #   in Loop: Header=BB37_70 Depth=2
	slli.d	$a5, $a5, 3
	fstx.d	$fa1, $a3, $a5
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 8
	beq	$a1, $a4, .LBB37_67
.LBB37_70:                              #   Parent Loop BB37_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a5, $a0
	fmov.d	$fa1, $fa0
	beq	$a0, $a4, .LBB37_69
# %bb.71:                               #   in Loop: Header=BB37_70 Depth=2
	fld.d	$fa1, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	move	$a5, $a4
	b	.LBB37_69
.Lfunc_end37:
	.size	counteff, .Lfunc_end37-counteff
                                        # -- End function
	.globl	score_calcp                     # -- Begin function score_calcp
	.p2align	5
	.type	score_calcp,@function
score_calcp:                            # @score_calcp
# %bb.0:
	blez	$a2, .LBB38_14
# %bb.1:                                # %.lr.ph57
	addi.w	$a3, $a2, -2
	pcalau12i	$a4, %got_pc_hi20(penalty)
	ld.d	$a4, $a4, %got_pc_lo12(penalty)
	ld.w	$a4, $a4, 0
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa1, $fa0
	addi.d	$a4, $a1, 1
	addi.d	$a5, $a0, 1
	movgr2fr.w	$fa0, $zero
	ori	$a6, $zero, 45
	pcalau12i	$a7, %got_pc_hi20(amino_dis)
	ld.d	$a7, $a7, %got_pc_lo12(amino_dis)
	move	$t0, $zero
	b	.LBB38_4
	.p2align	4, , 16
.LBB38_2:                               # %._crit_edge
                                        #   in Loop: Header=BB38_4 Depth=1
	blt	$a3, $t0, .LBB38_15
.LBB38_3:                               #   in Loop: Header=BB38_4 Depth=1
	addi.w	$t0, $t0, 1
	bge	$t0, $a2, .LBB38_15
.LBB38_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_13 Depth 2
                                        #     Child Loop BB38_9 Depth 2
	ldx.b	$t2, $a0, $t0
	ldx.b	$t1, $a1, $t0
	andi	$t4, $t2, 255
	andi	$t3, $t1, 255
	bne	$t4, $a6, .LBB38_6
# %bb.5:                                #   in Loop: Header=BB38_4 Depth=1
	beq	$t3, $a6, .LBB38_3
.LBB38_6:                               #   in Loop: Header=BB38_4 Depth=1
	slli.d	$t2, $t2, 9
	add.d	$t2, $a7, $t2
	slli.d	$t5, $t1, 2
	ldx.w	$t5, $t2, $t5
	movgr2fr.w	$fa2, $t5
	ffint.s.w	$fa2, $fa2
	fadd.s	$fa0, $fa0, $fa2
	bne	$t4, $a6, .LBB38_10
# %bb.7:                                #   in Loop: Header=BB38_4 Depth=1
	addi.d	$t2, $t0, 1
	ldx.bu	$t3, $a0, $t2
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	bne	$t3, $a6, .LBB38_2
# %bb.8:                                # %.lr.ph50
                                        #   in Loop: Header=BB38_4 Depth=1
	alsl.d	$t1, $t1, $a7, 2
	ldptr.w	$t1, $t1, 23040
	movgr2fr.w	$fa2, $t1
	ffint.s.w	$fa2, $fa2
	add.d	$t1, $a5, $t2
	.p2align	4, , 16
.LBB38_9:                               #   Parent Loop BB38_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t2, $t1, 0
	fadd.s	$fa0, $fa0, $fa2
	addi.w	$t0, $t0, 1
	addi.d	$t1, $t1, 1
	beq	$t2, $a6, .LBB38_9
	b	.LBB38_2
	.p2align	4, , 16
.LBB38_10:                              #   in Loop: Header=BB38_4 Depth=1
	bne	$t3, $a6, .LBB38_3
# %bb.11:                               #   in Loop: Header=BB38_4 Depth=1
	addi.d	$t1, $t0, 1
	ldx.bu	$t3, $a1, $t1
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	bne	$t3, $a6, .LBB38_2
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB38_4 Depth=1
	ld.w	$t2, $t2, 180
	movgr2fr.w	$fa2, $t2
	ffint.s.w	$fa2, $fa2
	add.d	$t1, $a4, $t1
	.p2align	4, , 16
.LBB38_13:                              #   Parent Loop BB38_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t2, $t1, 0
	fadd.s	$fa0, $fa0, $fa2
	addi.w	$t0, $t0, 1
	addi.d	$t1, $t1, 1
	beq	$t2, $a6, .LBB38_13
	b	.LBB38_2
.LBB38_14:
	movgr2fr.w	$fa0, $zero
.LBB38_15:                              # %._crit_edge58
	ret
.Lfunc_end38:
	.size	score_calcp, .Lfunc_end38-score_calcp
                                        # -- End function
	.globl	score_calc1                     # -- Begin function score_calc1
	.p2align	5
	.type	score_calc1,@function
score_calc1:                            # @score_calc1
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB39_8
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$a0, $a0, 30, 0
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 45
	pcalau12i	$a2, %got_pc_hi20(amino_dis)
	ld.d	$a2, $a2, %got_pc_lo12(amino_dis)
	move	$a3, $zero
	b	.LBB39_3
	.p2align	4, , 16
.LBB39_2:                               #   in Loop: Header=BB39_3 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$a0, $a0, -1
	addi.d	$s0, $s0, 1
	beqz	$a0, .LBB39_6
.LBB39_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $s0, 0
	beq	$a4, $a1, .LBB39_2
# %bb.4:                                #   in Loop: Header=BB39_3 Depth=1
	ld.b	$a5, $fp, 0
	beq	$a5, $a1, .LBB39_2
# %bb.5:                                #   in Loop: Header=BB39_3 Depth=1
	slli.d	$a4, $a4, 9
	add.d	$a4, $a2, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a4, $a4, $a5
	movgr2fr.w	$fa1, $a4
	ffint.s.w	$fa1, $fa1
	fadd.s	$fa0, $fa0, $fa1
	addi.w	$a3, $a3, 1
	b	.LBB39_2
.LBB39_6:                               # %._crit_edge
	beqz	$a3, .LBB39_8
# %bb.7:
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	b	.LBB39_9
.LBB39_8:
	vldi	$vr0, -1168
.LBB39_9:                               # %._crit_edge.thread
                                        # kill: def $f0 killed $f0 killed $vr0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end39:
	.size	score_calc1, .Lfunc_end39-score_calc1
                                        # -- End function
	.globl	substitution_nid                # -- Begin function substitution_nid
	.p2align	5
	.type	substitution_nid,@function
substitution_nid:                       # @substitution_nid
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB40_6
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$a0, $a0, 30, 0
	movgr2fr.w	$fa1, $zero
	ori	$a1, $zero, 45
	vldi	$vr2, -1168
	fmov.s	$fa0, $fa1
	b	.LBB40_3
	.p2align	4, , 16
.LBB40_2:                               #   in Loop: Header=BB40_3 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$a0, $a0, -1
	addi.d	$s0, $s0, 1
	beqz	$a0, .LBB40_7
.LBB40_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $s0, 0
	beq	$a2, $a1, .LBB40_2
# %bb.4:                                #   in Loop: Header=BB40_3 Depth=1
	ld.bu	$a3, $fp, 0
	beq	$a3, $a1, .LBB40_2
# %bb.5:                                #   in Loop: Header=BB40_3 Depth=1
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	movgr2cf	$fcc0, $a2
	fsel	$fa3, $fa1, $fa2, $fcc0
	fadd.s	$fa0, $fa0, $fa3
	b	.LBB40_2
.LBB40_6:
	movgr2fr.w	$fa0, $zero
.LBB40_7:                               # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end40:
	.size	substitution_nid, .Lfunc_end40-substitution_nid
                                        # -- End function
	.globl	substitution_score              # -- Begin function substitution_score
	.p2align	5
	.type	substitution_score,@function
substitution_score:                     # @substitution_score
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB41_6
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$a0, $a0, 30, 0
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 45
	pcalau12i	$a2, %got_pc_hi20(amino_dis)
	ld.d	$a2, $a2, %got_pc_lo12(amino_dis)
	b	.LBB41_3
	.p2align	4, , 16
.LBB41_2:                               #   in Loop: Header=BB41_3 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$a0, $a0, -1
	addi.d	$s0, $s0, 1
	beqz	$a0, .LBB41_7
.LBB41_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $s0, 0
	beq	$a3, $a1, .LBB41_2
# %bb.4:                                #   in Loop: Header=BB41_3 Depth=1
	ld.b	$a4, $fp, 0
	beq	$a4, $a1, .LBB41_2
# %bb.5:                                #   in Loop: Header=BB41_3 Depth=1
	slli.d	$a3, $a3, 9
	add.d	$a3, $a2, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fadd.s	$fa0, $fa0, $fa1
	b	.LBB41_2
.LBB41_6:
	movgr2fr.w	$fa0, $zero
.LBB41_7:                               # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end41:
	.size	substitution_score, .Lfunc_end41-substitution_score
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function substitution_hosei
.LCPI42_0:
	.dword	0x3fee666666666666              # double 0.94999999999999996
	.text
	.globl	substitution_hosei
	.p2align	5
	.type	substitution_hosei,@function
substitution_hosei:                     # @substitution_hosei
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $zero
	move	$a3, $zero
	ori	$a4, $zero, 45
	.p2align	4, , 16
.LBB42_1:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a0, 0
	beqz	$a5, .LBB42_5
# %bb.2:                                #   in Loop: Header=BB42_1 Depth=1
	move	$a6, $a1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	beq	$a5, $a4, .LBB42_1
# %bb.3:                                #   in Loop: Header=BB42_1 Depth=1
	ld.bu	$a6, $a6, 0
	beq	$a6, $a4, .LBB42_1
# %bb.4:                                #   in Loop: Header=BB42_1 Depth=1
	xor	$a5, $a5, $a6
	sltu	$a5, $zero, $a5
	add.w	$a3, $a3, $a5
	addi.w	$a2, $a2, 1
	b	.LBB42_1
.LBB42_5:
	beqz	$a2, .LBB42_8
# %bb.6:
	bstrpick.d	$a0, $a3, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	bstrpick.d	$a0, $a2, 31, 0
	movgr2fr.d	$fa1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI42_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI42_0)
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB42_8
# %bb.7:
	vldi	$vr1, -912
	fsub.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa0, $fa0
                                        # kill: def $f0 killed $f0 killed $vr0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB42_8:
	vldi	$vr0, -1272
                                        # kill: def $f0 killed $f0 killed $vr0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end42:
	.size	substitution_hosei, .Lfunc_end42-substitution_hosei
                                        # -- End function
	.globl	substitution                    # -- Begin function substitution
	.p2align	5
	.type	substitution,@function
substitution:                           # @substitution
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB43_8
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $zero
	bstrpick.d	$a0, $a0, 30, 0
	movgr2fr.w	$fa1, $zero
	ori	$a2, $zero, 45
	vldi	$vr2, -1168
	fmov.s	$fa0, $fa1
	b	.LBB43_3
	.p2align	4, , 16
.LBB43_2:                               #   in Loop: Header=BB43_3 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$a0, $a0, -1
	addi.d	$s0, $s0, 1
	beqz	$a0, .LBB43_6
.LBB43_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $s0, 0
	beq	$a3, $a2, .LBB43_2
# %bb.4:                                #   in Loop: Header=BB43_3 Depth=1
	ld.bu	$a4, $fp, 0
	beq	$a4, $a2, .LBB43_2
# %bb.5:                                #   in Loop: Header=BB43_3 Depth=1
	xor	$a3, $a3, $a4
	sltu	$a3, $zero, $a3
	movgr2cf	$fcc0, $a3
	fsel	$fa3, $fa1, $fa2, $fcc0
	fadd.s	$fa0, $fa0, $fa3
	addi.w	$a1, $a1, 1
	b	.LBB43_2
.LBB43_6:                               # %._crit_edge
	beqz	$a1, .LBB43_8
# %bb.7:
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	b	.LBB43_9
.LBB43_8:
	vldi	$vr0, -1168
.LBB43_9:                               # %._crit_edge.thread
                                        # kill: def $f0 killed $f0 killed $vr0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end43:
	.size	substitution, .Lfunc_end43-substitution
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function treeconstruction
.LCPI44_0:
	.dword	0x3fee666666666666              # double 0.94999999999999996
	.text
	.globl	treeconstruction
	.p2align	5
	.type	treeconstruction,@function
treeconstruction:                       # @treeconstruction
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a1
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(weight)
	ld.d	$a0, $a0, %got_pc_lo12(weight)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bge	$a1, $a0, .LBB44_15
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(utree)
	ld.d	$a0, $a0, %got_pc_lo12(utree)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB44_25
# %bb.2:                                # %.preheader
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB44_26
# %bb.3:                                # %.lr.ph44.preheader
	move	$s6, $zero
	addi.w	$a0, $s0, -1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI44_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI44_0)
	ori	$s2, $zero, 1
	ori	$s7, $zero, 45
	b	.LBB44_5
	.p2align	4, , 16
.LBB44_4:                               # %.loopexit
                                        #   in Loop: Header=BB44_5 Depth=1
	addi.d	$s2, $s2, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB44_26
.LBB44_5:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_7 Depth 2
                                        #       Child Loop BB44_8 Depth 3
	slli.d	$a0, $s6, 3
	ldx.d	$s8, $s3, $a0
	ldx.d	$s1, $fp, $a0
	addi.d	$s6, $s6, 1
	move	$s5, $s2
	b	.LBB44_7
	.p2align	4, , 16
.LBB44_6:                               #   in Loop: Header=BB44_7 Depth=2
	vldi	$vr0, -1016
	addi.d	$s5, $s5, 1
	fstx.d	$fa0, $s1, $s4
	beq	$s5, $s0, .LBB44_4
.LBB44_7:                               #   Parent Loop BB44_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB44_8 Depth 3
	slli.d	$s4, $s5, 3
	ldx.d	$a2, $s3, $s4
	move	$a0, $zero
	move	$a1, $zero
	move	$a3, $s8
	.p2align	4, , 16
.LBB44_8:                               #   Parent Loop BB44_5 Depth=1
                                        #     Parent Loop BB44_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a4, $a3, 0
	beqz	$a4, .LBB44_12
# %bb.9:                                #   in Loop: Header=BB44_8 Depth=3
	move	$a5, $a2
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	beq	$a4, $s7, .LBB44_8
# %bb.10:                               #   in Loop: Header=BB44_8 Depth=3
	ld.bu	$a5, $a5, 0
	beq	$a5, $s7, .LBB44_8
# %bb.11:                               #   in Loop: Header=BB44_8 Depth=3
	xor	$a4, $a4, $a5
	sltu	$a4, $zero, $a4
	add.w	$a1, $a1, $a4
	addi.w	$a0, $a0, 1
	b	.LBB44_8
	.p2align	4, , 16
.LBB44_12:                              #   in Loop: Header=BB44_7 Depth=2
	beqz	$a0, .LBB44_6
# %bb.13:                               #   in Loop: Header=BB44_7 Depth=2
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB44_6
# %bb.14:                               #   in Loop: Header=BB44_7 Depth=2
	vldi	$vr1, -912
	fsub.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	addi.d	$s5, $s5, 1
	fstx.d	$fa0, $s1, $s4
	bne	$s5, $s0, .LBB44_7
	b	.LBB44_4
.LBB44_15:                              # %.preheader34
	blez	$s0, .LBB44_25
# %bb.16:                               # %.preheader33.us.preheader
	move	$a0, $zero
	bstrpick.d	$a1, $s0, 30, 2
	slli.d	$a1, $a1, 2
	ori	$a2, $zero, 4
	lu52i.d	$a3, $zero, 1023
	vreplgr2vr.d	$vr0, $a3
	b	.LBB44_18
	.p2align	4, , 16
.LBB44_17:                              # %._crit_edge.us
                                        #   in Loop: Header=BB44_18 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s0, .LBB44_25
.LBB44_18:                              # %.preheader33.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_21 Depth 2
                                        #     Child Loop BB44_24 Depth 2
	slli.d	$a4, $a0, 3
	ldx.d	$a4, $fp, $a4
	bgeu	$s0, $a2, .LBB44_20
# %bb.19:                               #   in Loop: Header=BB44_18 Depth=1
	move	$a5, $zero
	b	.LBB44_23
	.p2align	4, , 16
.LBB44_20:                              # %vector.body.preheader
                                        #   in Loop: Header=BB44_18 Depth=1
	addi.d	$a5, $a4, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB44_21:                              # %vector.body
                                        #   Parent Loop BB44_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB44_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB44_18 Depth=1
	move	$a5, $a1
	beq	$a1, $s0, .LBB44_17
.LBB44_23:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB44_18 Depth=1
	alsl.d	$a4, $a5, $a4, 3
	sub.d	$a5, $s0, $a5
	.p2align	4, , 16
.LBB44_24:                              # %scalar.ph
                                        #   Parent Loop BB44_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a3, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB44_24
	b	.LBB44_17
.LBB44_25:                              # %.loopexit35
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.LBB44_26:                              # %._crit_edge
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(spg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $fp
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(counteff)
	jr	$t8
.Lfunc_end44:
	.size	treeconstruction, .Lfunc_end44-treeconstruction
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function bscore_calc
.LCPI45_0:
	.dword	0x4079000000000000              # double 400
	.text
	.globl	bscore_calc
	.p2align	5
	.type	bscore_calc,@function
bscore_calc:                            # @bscore_calc
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a2
	move	$s1, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	movgr2fr.w	$fa0, $zero
	blt	$s1, $a1, .LBB45_9
# %bb.1:                                # %.lr.ph
	addi.w	$a1, $a0, 0
	fmov.s	$fa1, $fa0
	blez	$a1, .LBB45_10
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.w	$a1, $s1, -1
	pcalau12i	$a2, %got_pc_hi20(penalty)
	ld.d	$a2, $a2, %got_pc_lo12(penalty)
	ld.w	$a2, $a2, 0
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a3, $zero, 1
	movgr2fr.d	$fa0, $zero
	pcalau12i	$a4, %got_pc_hi20(amino_dis)
	ld.d	$a4, $a4, %got_pc_lo12(amino_dis)
	move	$a6, $zero
	move	$a7, $zero
	move	$a5, $zero
	.p2align	4, , 16
.LBB45_3:                               # %.lr.ph81.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_4 Depth 2
                                        #       Child Loop BB45_5 Depth 3
	slli.d	$t1, $a6, 3
	ldx.d	$t0, $s0, $t1
	ldx.d	$t1, $fp, $t1
	addi.d	$a6, $a6, 1
	move	$t2, $a3
	.p2align	4, , 16
.LBB45_4:                               # %.lr.ph.us.us
                                        #   Parent Loop BB45_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB45_5 Depth 3
	slli.d	$t3, $t2, 3
	fldx.d	$fa1, $t0, $t3
	ldx.d	$t3, $fp, $t3
	move	$s2, $zero
	move	$s4, $zero
	move	$t4, $a0
	move	$t5, $t1
	.p2align	4, , 16
.LBB45_5:                               #   Parent Loop BB45_3 Depth=1
                                        #     Parent Loop BB45_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$t7, $t5, 0
	ld.b	$t8, $t3, 0
	addi.d	$t6, $t7, -45
	sltui	$t6, $t6, 1
	addi.d	$s3, $t8, -45
	sltui	$s3, $s3, 1
	xori	$s5, $s4, 1
	maskeqz	$s6, $s5, $t6
	xori	$s7, $s2, 1
	masknez	$s5, $s5, $t6
	masknez	$s8, $s6, $s3
	maskeqz	$s5, $s5, $s3
	or	$s5, $s5, $s8
	mul.d	$s5, $s5, $s7
	mul.d	$s6, $s6, $s2
	masknez	$s8, $s4, $t6
	mul.d	$s7, $s8, $s7
	masknez	$s6, $s6, $s3
	maskeqz	$s7, $s7, $s3
	or	$s6, $s7, $s6
	add.d	$s5, $s6, $s5
	bstrpick.d	$s5, $s5, 31, 0
	movgr2fr.d	$fa2, $s5
	ffint.d.l	$fa2, $fa2
	mul.d	$s5, $s8, $s2
	bstrpick.d	$s5, $s5, 31, 0
	movgr2fr.d	$fa3, $s5
	ffint.d.l	$fa3, $fa3
	maskeqz	$s4, $s4, $t6
	mul.d	$s4, $s4, $s2
	or	$s5, $t6, $s3
	move	$s2, $s3
	movgr2cf	$fcc0, $s3
	fsel	$fa3, $fa0, $fa3, $fcc0
	fadd.d	$fa2, $fa3, $fa2
	bstrpick.d	$s3, $s4, 31, 0
	movgr2fr.d	$fa3, $s3
	ffint.d.l	$fa3, $fa3
	fsel	$fa3, $fa3, $fa0, $fcc0
	fadd.d	$fa2, $fa3, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s3, $fa2
	mul.d	$s3, $s3, $a2
	movgr2fr.d	$fa2, $s3
	ffint.d.l	$fa2, $fa2
	movgr2fr.d	$fa3, $a7
	ffint.d.l	$fa3, $fa3
	slli.d	$a7, $t7, 9
	add.d	$a7, $a4, $a7
	slli.d	$t7, $t8, 2
	ldx.w	$a7, $a7, $t7
	fmadd.d	$fa2, $fa2, $fa1, $fa3
	ftintrz.l.d	$fa2, $fa2
	movfr2gr.d	$t7, $fa2
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	movgr2fr.d	$fa3, $t7
	ffint.d.l	$fa3, $fa3
	fmadd.d	$fa2, $fa2, $fa1, $fa3
	ftintrz.l.d	$fa2, $fa2
	movfr2gr.d	$a7, $fa2
	xori	$t7, $s5, 1
	add.w	$a5, $a5, $t7
	addi.d	$t5, $t5, 1
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 1
	move	$s4, $t6
	bnez	$t4, .LBB45_5
# %bb.6:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB45_4 Depth=2
	addi.d	$t2, $t2, 1
	bne	$t2, $s1, .LBB45_4
# %bb.7:                                # %.loopexit.us
                                        #   in Loop: Header=BB45_3 Depth=1
	addi.d	$a3, $a3, 1
	bne	$a6, $a1, .LBB45_3
# %bb.8:                                # %._crit_edge.loopexit
	movgr2fr.d	$fa0, $a7
	ffint.s.l	$fa1, $fa0
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	b	.LBB45_10
.LBB45_9:
	fmov.s	$fa1, $fa0
.LBB45_10:                              # %._crit_edge
	fdiv.s	$fa0, $fa1, $fa0
	fcvt.d.s	$fa0, $fa0
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.LCPI45_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI45_0)
	vldi	$vr2, -912
	movgr2fr.d	$fa3, $zero
	movgr2cf	$fcc0, $a0
	fsel	$fa2, $fa3, $fa2, $fcc0
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
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
.Lfunc_end45:
	.size	bscore_calc, .Lfunc_end45-bscore_calc
                                        # -- End function
	.globl	AllocateTmpSeqs                 # -- Begin function AllocateTmpSeqs
	.p2align	5
	.type	AllocateTmpSeqs,@function
AllocateTmpSeqs:                        # @AllocateTmpSeqs
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	addi.w	$s1, $a2, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end46:
	.size	AllocateTmpSeqs, .Lfunc_end46-AllocateTmpSeqs
                                        # -- End function
	.globl	FreeTmpSeqs                     # -- Begin function FreeTmpSeqs
	.p2align	5
	.type	FreeTmpSeqs,@function
FreeTmpSeqs:                            # @FreeTmpSeqs
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end47:
	.size	FreeTmpSeqs, .Lfunc_end47-FreeTmpSeqs
                                        # -- End function
	.globl	gappick0                        # -- Begin function gappick0
	.p2align	5
	.type	gappick0,@function
gappick0:                               # @gappick0
# %bb.0:
	ori	$a2, $zero, 45
	b	.LBB48_2
	.p2align	4, , 16
.LBB48_1:                               #   in Loop: Header=BB48_2 Depth=1
	addi.d	$a1, $a1, 1
.LBB48_2:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	beq	$a3, $a2, .LBB48_1
# %bb.3:                                #   in Loop: Header=BB48_2 Depth=1
	beqz	$a3, .LBB48_5
# %bb.4:                                #   in Loop: Header=BB48_2 Depth=1
	addi.d	$a4, $a0, 1
	st.b	$a3, $a0, 0
	move	$a0, $a4
	b	.LBB48_1
.LBB48_5:
	st.b	$zero, $a0, 0
	ret
.Lfunc_end48:
	.size	gappick0, .Lfunc_end48-gappick0
                                        # -- End function
	.globl	gappick                         # -- Begin function gappick
	.p2align	5
	.type	gappick,@function
gappick:                                # @gappick
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $a2
	ld.d	$a2, $a2, 0
	move	$fp, $a5
	move	$s0, $a4
	move	$s3, $a3
	move	$s1, $a1
	move	$s2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB49_14
# %bb.1:                                # %.preheader58.lr.ph
	blez	$s2, .LBB49_23
# %bb.2:                                # %.preheader58.us.preheader
	move	$a2, $zero
	move	$a1, $zero
	bstrpick.d	$a3, $s1, 31, 0
	bstrpick.d	$a0, $a0, 30, 0
	b	.LBB49_5
	.p2align	4, , 16
.LBB49_3:                               # %._crit_edge64.us
                                        #   in Loop: Header=BB49_5 Depth=1
	addi.w	$a1, $a1, 1
.LBB49_4:                               #   in Loop: Header=BB49_5 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB49_15
.LBB49_5:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_7 Depth 2
                                        #     Child Loop BB49_12 Depth 2
	ori	$a4, $zero, 1
	move	$a5, $s2
	move	$a6, $a3
	move	$a7, $s4
	b	.LBB49_7
	.p2align	4, , 16
.LBB49_6:                               #   in Loop: Header=BB49_7 Depth=2
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	beqz	$a5, .LBB49_9
.LBB49_7:                               #   Parent Loop BB49_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a6, .LBB49_6
# %bb.8:                                #   in Loop: Header=BB49_7 Depth=2
	ld.d	$t0, $a7, 0
	ldx.bu	$t0, $t0, $a2
	addi.d	$t0, $t0, -45
	sltui	$t0, $t0, 1
	maskeqz	$a4, $a4, $t0
	b	.LBB49_6
	.p2align	4, , 16
.LBB49_9:                               # %._crit_edge.us
                                        #   in Loop: Header=BB49_5 Depth=1
	bnez	$a4, .LBB49_4
# %bb.10:                               # %.preheader57.us
                                        #   in Loop: Header=BB49_5 Depth=1
	move	$a4, $zero
	move	$a5, $s2
	move	$a6, $a3
	move	$a7, $s4
	b	.LBB49_12
	.p2align	4, , 16
.LBB49_11:                              #   in Loop: Header=BB49_12 Depth=2
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	beqz	$a5, .LBB49_3
.LBB49_12:                              #   Parent Loop BB49_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a6, .LBB49_11
# %bb.13:                               #   in Loop: Header=BB49_12 Depth=2
	ld.d	$t0, $a7, 0
	ldx.b	$t0, $t0, $a2
	slli.d	$t1, $a4, 3
	ldx.d	$t1, $s3, $t1
	stx.b	$t0, $t1, $a1
	addi.w	$a4, $a4, 1
	b	.LBB49_11
.LBB49_14:
	move	$a1, $zero
.LBB49_15:                              # %.preheader56
	ori	$a0, $zero, 2
	blt	$s2, $a0, .LBB49_18
# %bb.16:                               # %.lr.ph
	addi.w	$a0, $s2, -1
	.p2align	4, , 16
.LBB49_17:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s3, 0
	stx.b	$zero, $a2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$s3, $s3, 8
	bnez	$a0, .LBB49_17
	b	.LBB49_19
.LBB49_18:                              # %.preheader
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB49_23
.LBB49_19:                              # %.lr.ph87
	move	$a0, $zero
	move	$a1, $zero
	alsl.d	$a2, $s1, $s0, 3
	bstrpick.d	$a3, $s1, 31, 0
	bstrpick.d	$a4, $s2, 31, 0
	b	.LBB49_21
	.p2align	4, , 16
.LBB49_20:                              #   in Loop: Header=BB49_21 Depth=1
	addi.d	$a0, $a0, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, -1
	beqz	$a4, .LBB49_23
.LBB49_21:                              # =>This Inner Loop Header: Depth=1
	beqz	$a3, .LBB49_20
# %bb.22:                               #   in Loop: Header=BB49_21 Depth=1
	ld.d	$a5, $a2, 0
	fldx.d	$fa0, $a5, $a0
	slli.d	$a5, $a1, 3
	fstx.d	$fa0, $fp, $a5
	addi.w	$a1, $a1, 1
	b	.LBB49_20
.LBB49_23:                              # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end49:
	.size	gappick, .Lfunc_end49-gappick
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function commongappick_record
.LCPI50_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	commongappick_record
	.p2align	5
	.type	commongappick_record,@function
commongappick_record:                   # @commongappick_record
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.d	$a1, $a1, 0
	move	$fp, $a2
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 32
	bltz	$a1, .LBB50_19
# %bb.1:                                # %.preheader30.lr.ph
	blez	$s1, .LBB50_11
# %bb.2:                                # %.preheader30.us.us.preheader
	move	$a1, $zero
	move	$a2, $zero
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a3, $zero, 45
	b	.LBB50_5
	.p2align	4, , 16
.LBB50_3:                               # %._crit_edge36.us.us
                                        #   in Loop: Header=BB50_5 Depth=1
	slli.d	$a4, $a2, 2
	stx.w	$a1, $fp, $a4
	addi.w	$a2, $a2, 1
.LBB50_4:                               # %._crit_edge.us.us.thread
                                        #   in Loop: Header=BB50_5 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a0, .LBB50_19
.LBB50_5:                               # %.preheader30.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_6 Depth 2
                                        #     Child Loop BB50_10 Depth 2
	move	$a4, $s1
	move	$a6, $s0
	move	$a5, $s1
	.p2align	4, , 16
.LBB50_6:                               #   Parent Loop BB50_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a6, 0
	ldx.bu	$a7, $a7, $a1
	bne	$a7, $a3, .LBB50_8
# %bb.7:                                #   in Loop: Header=BB50_6 Depth=2
	addi.w	$a5, $a5, -1
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	bnez	$a4, .LBB50_6
	b	.LBB50_4
	.p2align	4, , 16
.LBB50_8:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB50_5 Depth=1
	beqz	$a5, .LBB50_4
# %bb.9:                                # %.preheader.us.us
                                        #   in Loop: Header=BB50_5 Depth=1
	move	$a4, $s1
	move	$a5, $s0
	.p2align	4, , 16
.LBB50_10:                              #   Parent Loop BB50_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.b	$a7, $a6, $a1
	stx.b	$a7, $a6, $a2
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB50_10
	b	.LBB50_3
.LBB50_11:                              # %.preheader30.lr.ph.split
	beqz	$s1, .LBB50_19
# %bb.12:                               # %.preheader30.preheader
	addi.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 31, 0
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB50_14
# %bb.13:
	move	$a0, $zero
	b	.LBB50_17
.LBB50_14:                              # %vector.ph
	pcalau12i	$a2, %pc_hi20(.LCPI50_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI50_0)
	bstrpick.d	$a0, $a0, 31, 3
	slli.d	$a0, $a0, 3
	addi.d	$a2, $fp, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB50_15:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB50_15
# %bb.16:                               # %middle.block
	beq	$a1, $a0, .LBB50_19
.LBB50_17:                              # %.preheader30.preheader85
	alsl.d	$a2, $a0, $fp, 2
	sub.d	$a1, $a1, $a0
	.p2align	4, , 16
.LBB50_18:                              # %.preheader30
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB50_18
.LBB50_19:                              # %._crit_edge40
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end50:
	.size	commongappick_record, .Lfunc_end50-commongappick_record
                                        # -- End function
	.globl	commongappick                   # -- Begin function commongappick
	.p2align	5
	.type	commongappick,@function
commongappick:                          # @commongappick
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 32
	bltz	$a1, .LBB51_11
# %bb.1:
	blez	$s0, .LBB51_11
# %bb.2:                                # %.preheader27.us.us.preheader
	move	$a1, $zero
	move	$a2, $zero
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a3, $zero, 45
	b	.LBB51_5
	.p2align	4, , 16
.LBB51_3:                               # %._crit_edge33.us.us
                                        #   in Loop: Header=BB51_5 Depth=1
	addi.w	$a2, $a2, 1
.LBB51_4:                               # %._crit_edge.us.us.thread
                                        #   in Loop: Header=BB51_5 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a0, .LBB51_11
.LBB51_5:                               # %.preheader27.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_6 Depth 2
                                        #     Child Loop BB51_10 Depth 2
	move	$a4, $s0
	move	$a6, $fp
	move	$a5, $s0
	.p2align	4, , 16
.LBB51_6:                               #   Parent Loop BB51_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a6, 0
	ldx.bu	$a7, $a7, $a1
	bne	$a7, $a3, .LBB51_8
# %bb.7:                                #   in Loop: Header=BB51_6 Depth=2
	addi.w	$a5, $a5, -1
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	bnez	$a4, .LBB51_6
	b	.LBB51_4
	.p2align	4, , 16
.LBB51_8:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB51_5 Depth=1
	beqz	$a5, .LBB51_4
# %bb.9:                                # %.preheader.us.us
                                        #   in Loop: Header=BB51_5 Depth=1
	move	$a4, $s0
	move	$a5, $fp
	.p2align	4, , 16
.LBB51_10:                              #   Parent Loop BB51_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.b	$a7, $a6, $a1
	stx.b	$a7, $a6, $a2
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB51_10
	b	.LBB51_3
.LBB51_11:                              # %._crit_edge38
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end51:
	.size	commongappick, .Lfunc_end51-commongappick
                                        # -- End function
	.globl	score_calc0                     # -- Begin function score_calc0
	.p2align	5
	.type	score_calc0,@function
score_calc0:                            # @score_calc0
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(scmtd)
	ld.d	$s3, $a0, %got_pc_lo12(scmtd)
	ld.w	$a0, $s3, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB52_2
# %bb.1:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(score_calc3)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
.LBB52_2:
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB52_4
# %bb.3:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(score_calc4)
	jirl	$ra, $ra, 0
.LBB52_4:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(score_calc5)
	jr	$t8
.Lfunc_end52:
	.size	score_calc0, .Lfunc_end52-score_calc0
                                        # -- End function
	.globl	strins                          # -- Begin function strins
	.p2align	5
	.type	strins,@function
strins:                                 # @strins
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.w	$a2, $a0, $s1
	addi.w	$a1, $s1, 0
	add.d	$a0, $fp, $a2
	blt	$a2, $a1, .LBB53_8
# %bb.1:                                # %.lr.ph
	add.d	$a5, $a2, $fp
	add.d	$a2, $a1, $fp
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a5, -1
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	sub.d	$a3, $a5, $a2
	ori	$a4, $zero, 16
	sub.d	$a2, $zero, $a1
	bltu	$a3, $a4, .LBB53_6
# %bb.2:                                # %.lr.ph
	bltu	$a2, $a4, .LBB53_6
# %bb.3:                                # %vector.ph
	move	$a4, $a3
	bstrins.d	$a4, $zero, 3, 0
	sub.d	$a0, $a0, $a4
	addi.d	$a5, $a5, -15
	move	$a6, $a4
	.p2align	4, , 16
.LBB53_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a5, $a2
	vst	$vr0, $a5, 0
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, -16
	bnez	$a6, .LBB53_4
# %bb.5:                                # %middle.block
	beq	$a3, $a4, .LBB53_8
.LBB53_6:                               # %scalar.ph.preheader
	add.d	$a1, $fp, $a1
	.p2align	4, , 16
.LBB53_7:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a3, $a0, $a2
	st.b	$a3, $a0, 0
	addi.d	$a0, $a0, -1
	bgeu	$a0, $a1, .LBB53_7
.LBB53_8:                               # %.preheader
	bltu	$a0, $fp, .LBB53_17
# %bb.9:                                # %.lr.ph27.preheader
	ori	$a1, $zero, 0
	slli.d	$a2, $s1, 32
	lu32i.d	$a1, -1
	add.d	$a1, $a2, $a1
	srai.d	$a2, $a1, 32
	addi.d	$a1, $a0, -1
	addi.d	$a3, $fp, -1
	sltu	$a4, $a1, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a3
	sub.d	$a3, $a0, $a1
	ori	$a4, $zero, 16
	add.d	$a1, $s0, $a2
	bgeu	$a3, $a4, .LBB53_11
# %bb.10:
	move	$a2, $a0
	b	.LBB53_16
.LBB53_11:                              # %vector.memcheck34
	add.d	$a5, $a2, $s0
	sub.d	$a2, $a5, $a0
	bgeu	$a2, $a4, .LBB53_13
# %bb.12:
	move	$a2, $a0
	b	.LBB53_16
.LBB53_13:                              # %vector.ph40
	move	$a4, $a3
	bstrins.d	$a4, $zero, 3, 0
	sub.d	$a1, $a1, $a4
	sub.d	$a2, $a0, $a4
	addi.d	$a0, $a0, -15
	addi.d	$a5, $a5, -15
	move	$a6, $a4
	.p2align	4, , 16
.LBB53_14:                              # %vector.body43
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a0, 0
	addi.d	$a6, $a6, -16
	addi.d	$a0, $a0, -16
	addi.d	$a5, $a5, -16
	bnez	$a6, .LBB53_14
# %bb.15:                               # %middle.block53
	beq	$a3, $a4, .LBB53_17
	.p2align	4, , 16
.LBB53_16:                              # %.lr.ph27
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $a1, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a2, -1
	st.b	$a0, $a2, 0
	move	$a2, $a3
	bgeu	$a3, $fp, .LBB53_16
.LBB53_17:                              # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end53:
	.size	strins, .Lfunc_end53-strins
                                        # -- End function
	.globl	isaligned                       # -- Begin function isaligned
	.p2align	5
	.type	isaligned,@function
isaligned:                              # @isaligned
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a2, $zero, 2
	ori	$a0, $zero, 1
	blt	$fp, $a2, .LBB54_6
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $a1, 0
	move	$s1, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s0, $a0, 0
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, -1
	.p2align	4, , 16
.LBB54_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB54_5
# %bb.3:                                #   in Loop: Header=BB54_2 Depth=1
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 8
	bnez	$fp, .LBB54_2
# %bb.4:
	ori	$a0, $zero, 1
	b	.LBB54_6
.LBB54_5:
	move	$a0, $zero
.LBB54_6:                               # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end54:
	.size	isaligned, .Lfunc_end54-isaligned
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function score_calc_for_score
.LCPI55_0:
	.dword	0x7ff8000000000000              # double NaN
.LCPI55_1:
	.dword	0x4079000000000000              # double 400
	.text
	.globl	score_calc_for_score
	.p2align	5
	.type	score_calc_for_score,@function
score_calc_for_score:                   # @score_calc_for_score
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$s0, $a1
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	blt	$fp, $a1, .LBB55_17
# %bb.1:                                # %.lr.ph
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB55_18
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.w	$a2, $fp, -1
	addi.w	$a0, $a0, -2
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$a3, $a3, %got_pc_lo12(penalty)
	ld.w	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(n_dis)
	ld.d	$a4, $a4, %got_pc_lo12(n_dis)
	ld.w	$a4, $a4, 96
	sub.d	$a3, $a3, $a4
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	movgr2fr.d	$fa1, $zero
	ori	$a3, $zero, 1
	ori	$a4, $zero, 45
	pcalau12i	$a5, %got_pc_hi20(amino_dis)
	ld.d	$a5, $a5, %got_pc_lo12(amino_dis)
	move	$a6, $zero
	fmov.d	$fs0, $fa1
	b	.LBB55_4
	.p2align	4, , 16
.LBB55_3:                               # %.loopexit.us
                                        #   in Loop: Header=BB55_4 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a6, $a2, .LBB55_19
.LBB55_4:                               # %.lr.ph73.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_6 Depth 2
                                        #       Child Loop BB55_9 Depth 3
                                        #         Child Loop BB55_16 Depth 4
                                        #         Child Loop BB55_13 Depth 4
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $s0, $a7
	addi.d	$a6, $a6, 1
	addi.d	$t0, $a7, 1
	move	$t1, $a3
	b	.LBB55_6
	.p2align	4, , 16
.LBB55_5:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB55_6 Depth=2
	movgr2fr.w	$fa3, $t3
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa2, $fa2, $fa3
	addi.d	$t1, $t1, 1
	fadd.d	$fs0, $fs0, $fa2
	beq	$t1, $fp, .LBB55_3
.LBB55_6:                               # %.lr.ph.us.us
                                        #   Parent Loop BB55_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB55_9 Depth 3
                                        #         Child Loop BB55_16 Depth 4
                                        #         Child Loop BB55_13 Depth 4
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $s0, $t2
	move	$t5, $zero
	move	$t3, $zero
	addi.d	$t4, $t2, 1
	fmov.d	$fa2, $fa1
	b	.LBB55_9
	.p2align	4, , 16
.LBB55_7:                               #   in Loop: Header=BB55_9 Depth=3
	fadd.d	$fa2, $fa2, $fa0
	blt	$a0, $t5, .LBB55_5
.LBB55_8:                               #   in Loop: Header=BB55_9 Depth=3
	addi.w	$t5, $t5, 1
	bge	$t5, $a1, .LBB55_5
.LBB55_9:                               #   Parent Loop BB55_4 Depth=1
                                        #     Parent Loop BB55_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB55_16 Depth 4
                                        #         Child Loop BB55_13 Depth 4
	ldx.b	$t8, $a7, $t5
	ldx.b	$s1, $t2, $t5
	andi	$t7, $t8, 255
	andi	$t6, $s1, 255
	bne	$t7, $a4, .LBB55_11
# %bb.10:                               #   in Loop: Header=BB55_9 Depth=3
	beq	$t6, $a4, .LBB55_8
.LBB55_11:                              # %._crit_edge92
                                        #   in Loop: Header=BB55_9 Depth=3
	slli.d	$t8, $t8, 9
	add.d	$t8, $a5, $t8
	slli.d	$s1, $s1, 2
	ldx.w	$t8, $t8, $s1
	movgr2fr.w	$fa3, $t8
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	addi.w	$t3, $t3, 1
	bne	$t7, $a4, .LBB55_14
# %bb.12:                               # %.preheader.preheader
                                        #   in Loop: Header=BB55_9 Depth=3
	addi.d	$t7, $t5, -1
	add.d	$t6, $t0, $t5
	move	$t5, $t7
	.p2align	4, , 16
.LBB55_13:                              # %.preheader
                                        #   Parent Loop BB55_4 Depth=1
                                        #     Parent Loop BB55_6 Depth=2
                                        #       Parent Loop BB55_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $t6, 0
	addi.w	$t5, $t5, 1
	addi.d	$t6, $t6, 1
	beq	$t7, $a4, .LBB55_13
	b	.LBB55_7
	.p2align	4, , 16
.LBB55_14:                              #   in Loop: Header=BB55_9 Depth=3
	bne	$t6, $a4, .LBB55_8
# %bb.15:                               # %.preheader100.preheader
                                        #   in Loop: Header=BB55_9 Depth=3
	addi.d	$t7, $t5, -1
	add.d	$t6, $t4, $t5
	move	$t5, $t7
	.p2align	4, , 16
.LBB55_16:                              # %.preheader100
                                        #   Parent Loop BB55_4 Depth=1
                                        #     Parent Loop BB55_6 Depth=2
                                        #       Parent Loop BB55_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $t6, 0
	addi.w	$t5, $t5, 1
	addi.d	$t6, $t6, 1
	beq	$t7, $a4, .LBB55_16
	b	.LBB55_7
.LBB55_17:
	movgr2fr.d	$fs0, $zero
	b	.LBB55_19
.LBB55_18:
	pcalau12i	$a0, %pc_hi20(.LCPI55_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI55_0)
.LBB55_19:                              # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -784
	fadd.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa1, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI55_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI55_1)
	vldi	$vr2, -928
	fmul.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fs0, $fa0
	fadd.d	$fa0, $fa0, $fa1
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end55:
	.size	score_calc_for_score, .Lfunc_end55-score_calc_for_score
                                        # -- End function
	.globl	floatncpy                       # -- Begin function floatncpy
	.p2align	5
	.type	floatncpy,@function
floatncpy:                              # @floatncpy
# %bb.0:
	beqz	$a2, .LBB56_8
# %bb.1:                                # %.lr.ph.preheader
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB56_6
# %bb.2:                                # %.lr.ph.preheader
	sub.d	$a3, $a0, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB56_6
# %bb.3:                                # %vector.ph
	bstrpick.d	$a5, $a2, 31, 0
	bstrpick.d	$a3, $a5, 31, 3
	slli.d	$a6, $a3, 3
	sub.d	$a2, $a2, $a6
	slli.d	$a4, $a3, 5
	add.d	$a3, $a1, $a4
	add.d	$a4, $a0, $a4
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	move	$a7, $a6
	.p2align	4, , 16
.LBB56_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a0, -16
	vst	$vr1, $a0, 0
	addi.d	$a0, $a0, 32
	addi.d	$a7, $a7, -8
	addi.d	$a1, $a1, 32
	bnez	$a7, .LBB56_4
# %bb.5:                                # %middle.block
	bne	$a6, $a5, .LBB56_7
	b	.LBB56_8
.LBB56_6:
	move	$a3, $a1
	move	$a4, $a0
	.p2align	4, , 16
.LBB56_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a4, 4
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a2, .LBB56_7
.LBB56_8:                               # %._crit_edge
	ret
.Lfunc_end56:
	.size	floatncpy, .Lfunc_end56-floatncpy
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function score_calc_a
.LCPI57_0:
	.dword	0x4079000000000000              # double 400
	.text
	.globl	score_calc_a
	.p2align	5
	.type	score_calc_a,@function
score_calc_a:                           # @score_calc_a
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a2
	move	$s1, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	movgr2fr.w	$fa1, $zero
	blt	$s1, $a1, .LBB57_9
# %bb.1:                                # %.lr.ph
	addi.w	$a1, $a0, 0
	fmov.s	$fa0, $fa1
	blez	$a1, .LBB57_10
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.w	$a1, $s1, -1
	pcalau12i	$a2, %got_pc_hi20(penalty)
	ld.d	$a2, $a2, %got_pc_lo12(penalty)
	ld.w	$a2, $a2, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa1, $fa0
	bstrpick.d	$a0, $a0, 30, 0
	movgr2fr.w	$fa0, $zero
	ori	$a2, $zero, 1
	vldi	$vr2, -928
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	move	$a5, $zero
	move	$a4, $zero
	.p2align	4, , 16
.LBB57_3:                               # %.lr.ph97.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_4 Depth 2
                                        #       Child Loop BB57_5 Depth 3
	slli.d	$a7, $a5, 3
	ldx.d	$a6, $s0, $a7
	ldx.d	$a7, $fp, $a7
	addi.d	$a5, $a5, 1
	move	$t0, $a2
	.p2align	4, , 16
.LBB57_4:                               # %.lr.ph.us.us
                                        #   Parent Loop BB57_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB57_5 Depth 3
	slli.d	$t1, $t0, 3
	fldx.d	$fa3, $a6, $t1
	ldx.d	$t1, $fp, $t1
	move	$t5, $zero
	move	$t6, $zero
	fcvt.s.d	$fa4, $fa3
	move	$t2, $a0
	move	$t3, $a7
	.p2align	4, , 16
.LBB57_5:                               #   Parent Loop BB57_3 Depth=1
                                        #     Parent Loop BB57_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$t7, $t3, 0
	ld.b	$t8, $t1, 0
	addi.d	$t4, $t7, -45
	sltui	$t4, $t4, 1
	addi.d	$s2, $t8, -45
	xori	$s3, $t6, 1
	maskeqz	$s4, $s3, $t4
	xori	$s5, $t5, 1
	mul.d	$s6, $s4, $t5
	maskeqz	$s7, $t6, $t4
	add.d	$s8, $s3, $s7
	mul.d	$s8, $s8, $t5
	add.w	$t5, $s5, $t5
	sltui	$s2, $s2, 1
	masknez	$t6, $t6, $t4
	or	$s4, $s4, $t6
	masknez	$s3, $s3, $t4
	masknez	$s4, $s4, $s2
	maskeqz	$s3, $s3, $s2
	or	$s3, $s3, $s4
	mul.d	$s3, $s3, $s5
	mul.d	$s4, $s7, $s5
	mul.d	$t5, $t6, $t5
	add.d	$t5, $t5, $s6
	add.d	$t5, $t5, $s4
	maskeqz	$t5, $t5, $s2
	masknez	$t6, $s8, $s2
	or	$t5, $t5, $t6
	add.d	$t5, $t5, $s3
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa5, $t5
	ffint.s.l	$fa5, $fa5
	fcvt.d.s	$fa5, $fa5
	fmul.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa5, $fa1
	slli.d	$t5, $t7, 9
	add.d	$t5, $a3, $t5
	slli.d	$t6, $t8, 2
	ldx.w	$t5, $t5, $t6
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa5, $fa3, $fa0
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa5, $t5
	ffint.s.w	$fa5, $fa5
	fmadd.s	$fa0, $fa5, $fa4, $fa0
	or	$t5, $t4, $s2
	xori	$t5, $t5, 1
	add.w	$a4, $a4, $t5
	addi.d	$t3, $t3, 1
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 1
	move	$t5, $s2
	move	$t6, $t4
	bnez	$t2, .LBB57_5
# %bb.6:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB57_4 Depth=2
	addi.d	$t0, $t0, 1
	bne	$t0, $s1, .LBB57_4
# %bb.7:                                # %.loopexit.us
                                        #   in Loop: Header=BB57_3 Depth=1
	addi.d	$a2, $a2, 1
	bne	$a5, $a1, .LBB57_3
# %bb.8:                                # %._crit_edge.loopexit
	movgr2fr.w	$fa1, $a4
	ffint.s.w	$fa1, $fa1
	b	.LBB57_10
.LBB57_9:
	fmov.s	$fa0, $fa1
.LBB57_10:                              # %._crit_edge
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.LCPI57_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI57_0)
	vldi	$vr2, -912
	movgr2fr.d	$fa3, $zero
	movgr2cf	$fcc0, $a0
	fsel	$fa2, $fa3, $fa2, $fcc0
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
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
.Lfunc_end57:
	.size	score_calc_a, .Lfunc_end57-score_calc_a
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function score_calc_s
.LCPI58_0:
	.word	0x43c80000                      # float 400
	.text
	.globl	score_calc_s
	.p2align	5
	.type	score_calc_s,@function
score_calc_s:                           # @score_calc_s
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a2
	move	$s1, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	movgr2fr.w	$fa1, $zero
	blt	$s1, $a1, .LBB58_9
# %bb.1:                                # %.lr.ph
	addi.w	$a1, $a0, 0
	fmov.s	$fa0, $fa1
	blez	$a1, .LBB58_10
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.w	$a1, $s1, -1
	pcalau12i	$a2, %got_pc_hi20(penalty)
	ld.d	$a2, $a2, %got_pc_lo12(penalty)
	ld.w	$a2, $a2, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa1, $fa0
	bstrpick.d	$a0, $a0, 30, 0
	movgr2fr.w	$fa0, $zero
	ori	$a2, $zero, 1
	vldi	$vr2, -928
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	move	$a5, $zero
	move	$a4, $zero
	.p2align	4, , 16
.LBB58_3:                               # %.lr.ph79.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_4 Depth 2
                                        #       Child Loop BB58_5 Depth 3
	slli.d	$a7, $a5, 3
	ldx.d	$a6, $s0, $a7
	ldx.d	$a7, $fp, $a7
	addi.d	$a5, $a5, 1
	move	$t0, $a2
	.p2align	4, , 16
.LBB58_4:                               # %.lr.ph.us.us
                                        #   Parent Loop BB58_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB58_5 Depth 3
	slli.d	$t1, $t0, 3
	fldx.d	$fa3, $a6, $t1
	ldx.d	$t1, $fp, $t1
	move	$t5, $zero
	move	$t6, $zero
	fcvt.s.d	$fa4, $fa3
	move	$t2, $a0
	move	$t3, $a7
	.p2align	4, , 16
.LBB58_5:                               #   Parent Loop BB58_3 Depth=1
                                        #     Parent Loop BB58_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$t7, $t3, 0
	ld.b	$t8, $t1, 0
	addi.d	$t4, $t7, -45
	sltui	$t4, $t4, 1
	addi.d	$s2, $t8, -45
	xori	$s3, $t6, 1
	xori	$s4, $t5, 1
	mul.d	$t5, $s3, $t5
	sltui	$s2, $s2, 1
	masknez	$t6, $t6, $t4
	mul.d	$s5, $t6, $s4
	maskeqz	$s6, $s3, $t4
	or	$t6, $s6, $t6
	masknez	$s3, $s3, $t4
	masknez	$t6, $t6, $s2
	maskeqz	$s3, $s3, $s2
	or	$t6, $s3, $t6
	mul.d	$t6, $t6, $s4
	masknez	$t5, $t5, $s2
	maskeqz	$s3, $s5, $s2
	or	$t5, $s3, $t5
	add.d	$t5, $t5, $t6
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa5, $t5
	ffint.s.l	$fa5, $fa5
	fcvt.d.s	$fa5, $fa5
	fmul.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa5, $fa1
	slli.d	$t5, $t7, 9
	add.d	$t5, $a3, $t5
	slli.d	$t6, $t8, 2
	ldx.w	$t5, $t5, $t6
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa5, $fa3, $fa0
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa5, $t5
	ffint.s.w	$fa5, $fa5
	fmadd.s	$fa0, $fa5, $fa4, $fa0
	or	$t5, $t4, $s2
	xori	$t5, $t5, 1
	add.w	$a4, $a4, $t5
	addi.d	$t3, $t3, 1
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 1
	move	$t5, $s2
	move	$t6, $t4
	bnez	$t2, .LBB58_5
# %bb.6:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB58_4 Depth=2
	addi.d	$t0, $t0, 1
	bne	$t0, $s1, .LBB58_4
# %bb.7:                                # %.loopexit.us
                                        #   in Loop: Header=BB58_3 Depth=1
	addi.d	$a2, $a2, 1
	bne	$a5, $a1, .LBB58_3
# %bb.8:                                # %._crit_edge.loopexit
	movgr2fr.w	$fa1, $a4
	ffint.s.w	$fa1, $fa1
	b	.LBB58_10
.LBB58_9:
	fmov.s	$fa0, $fa1
.LBB58_10:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.LCPI58_0)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI58_0)
	fdiv.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
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
.Lfunc_end58:
	.size	score_calc_s, .Lfunc_end58-score_calc_s
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function score_calc_for_score_s
.LCPI59_0:
	.dword	0x4079000000000000              # double 400
	.text
	.globl	score_calc_for_score_s
	.p2align	5
	.type	score_calc_for_score_s,@function
score_calc_for_score_s:                 # @score_calc_for_score_s
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
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	movgr2fr.d	$fa0, $zero
	blt	$s0, $a1, .LBB59_9
# %bb.1:                                # %.lr.ph
	addi.w	$a1, $a0, 0
	fmov.d	$fa1, $fa0
	blez	$a1, .LBB59_10
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.w	$a1, $s0, -1
	pcalau12i	$a2, %got_pc_hi20(penalty)
	ld.d	$a2, $a2, %got_pc_lo12(penalty)
	ld.w	$a2, $a2, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a0, $a0, 30, 0
	movgr2fr.w	$fa2, $zero
	ori	$a2, $zero, 1
	vldi	$vr1, -928
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	move	$a5, $zero
	move	$a4, $zero
	.p2align	4, , 16
.LBB59_3:                               # %.preheader.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB59_4 Depth 2
                                        #       Child Loop BB59_5 Depth 3
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $fp, $a6
	addi.d	$a5, $a5, 1
	move	$a7, $a2
	.p2align	4, , 16
.LBB59_4:                               # %.preheader.us.us
                                        #   Parent Loop BB59_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB59_5 Depth 3
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $fp, $t0
	move	$t4, $zero
	move	$t5, $zero
	move	$t1, $a0
	move	$t2, $a6
	.p2align	4, , 16
.LBB59_5:                               #   Parent Loop BB59_3 Depth=1
                                        #     Parent Loop BB59_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$t6, $t2, 0
	ld.b	$t7, $t0, 0
	addi.d	$t3, $t6, -45
	sltui	$t3, $t3, 1
	addi.d	$t8, $t7, -45
	xori	$s1, $t5, 1
	xori	$s2, $t4, 1
	mul.d	$t4, $s1, $t4
	sltui	$t8, $t8, 1
	masknez	$t5, $t5, $t3
	mul.d	$s3, $t5, $s2
	maskeqz	$s4, $s1, $t3
	or	$t5, $s4, $t5
	masknez	$s1, $s1, $t3
	masknez	$t5, $t5, $t8
	maskeqz	$s1, $s1, $t8
	or	$t5, $s1, $t5
	mul.d	$t5, $t5, $s2
	masknez	$t4, $t4, $t8
	maskeqz	$s1, $s3, $t8
	or	$t4, $s1, $t4
	add.d	$t4, $t4, $t5
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa3, $t4
	ffint.s.l	$fa3, $fa3
	fcvt.d.s	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa1
	slli.d	$t4, $t6, 9
	add.d	$t4, $a3, $t4
	slli.d	$t5, $t7, 2
	ldx.w	$t4, $t4, $t5
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa2, $fa3, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	movgr2fr.w	$fa3, $t4
	ffint.s.w	$fa3, $fa3
	fadd.s	$fa2, $fa3, $fa2
	or	$t4, $t3, $t8
	xori	$t4, $t4, 1
	add.w	$a4, $a4, $t4
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 1
	move	$t4, $t8
	move	$t5, $t3
	bnez	$t1, .LBB59_5
# %bb.6:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB59_4 Depth=2
	addi.d	$a7, $a7, 1
	bne	$a7, $s0, .LBB59_4
# %bb.7:                                # %.loopexit.us
                                        #   in Loop: Header=BB59_3 Depth=1
	addi.d	$a2, $a2, 1
	bne	$a5, $a1, .LBB59_3
# %bb.8:                                # %._crit_edge.loopexit
	fcvt.d.s	$fa1, $fa2
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	b	.LBB59_10
.LBB59_9:
	fmov.d	$fa1, $fa0
.LBB59_10:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.LCPI59_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI59_0)
	fdiv.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $fa2
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end59:
	.size	score_calc_for_score_s, .Lfunc_end59-score_calc_for_score_s
                                        # -- End function
	.globl	SSPscore___                     # -- Begin function SSPscore___
	.p2align	5
	.type	SSPscore___,@function
SSPscore___:                            # @SSPscore___
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s1, $a2
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $zero
	blez	$s0, .LBB60_8
# %bb.1:                                # %.lr.ph72
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB60_8
# %bb.2:                                # %.lr.ph72.split.us.preheader
	alsl.d	$a1, $s1, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(penalty)
	ld.d	$a2, $a2, %got_pc_lo12(penalty)
	ld.w	$a2, $a2, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a2, $s1, 31, 0
	bstrpick.d	$a0, $a0, 30, 0
	movgr2fr.w	$fa2, $zero
	movgr2fr.d	$fa1, $zero
	vldi	$vr3, -1024
	vldi	$vr4, -928
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	move	$a4, $zero
	b	.LBB60_4
	.p2align	4, , 16
.LBB60_3:                               # %..loopexit_crit_edge.us
                                        #   in Loop: Header=BB60_4 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $s0, .LBB60_7
.LBB60_4:                               # %.lr.ph72.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_6 Depth 2
	beq	$a4, $a2, .LBB60_3
# %bb.5:                                # %.preheader.us
                                        #   in Loop: Header=BB60_4 Depth=1
	ld.d	$a5, $a1, 0
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $fp, $a6
	move	$t3, $zero
	move	$t4, $zero
	move	$a7, $a0
	.p2align	4, , 16
.LBB60_6:                               #   Parent Loop BB60_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t1, $a5, 0
	ld.b	$t2, $a6, 0
	addi.d	$t0, $t1, -45
	sltui	$t0, $t0, 1
	addi.d	$t5, $t2, -45
	sltui	$t5, $t5, 1
	xori	$t6, $t4, 1
	maskeqz	$t7, $t6, $t0
	xori	$t8, $t3, 1
	masknez	$t4, $t4, $t0
	mul.d	$s1, $t4, $t8
	bstrpick.d	$s1, $s1, 31, 0
	or	$t4, $t7, $t4
	masknez	$t6, $t6, $t0
	masknez	$t4, $t4, $t5
	maskeqz	$s2, $t6, $t5
	or	$t4, $s2, $t4
	mul.d	$t4, $t4, $t8
	mul.d	$t6, $t6, $t3
	masknez	$t6, $t6, $t5
	add.d	$t4, $t4, $t6
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa5, $t4
	ffint.d.l	$fa5, $fa5
	mul.d	$t3, $t7, $t3
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa6, $t3
	ffint.d.l	$fa6, $fa6
	move	$t3, $t5
	movgr2cf	$fcc0, $t5
	fsel	$fa6, $fa6, $fa1, $fcc0
	fmadd.d	$fa5, $fa6, $fa3, $fa5
	movgr2fr.d	$fa6, $s1
	ffint.d.l	$fa6, $fa6
	fsel	$fa6, $fa1, $fa6, $fcc0
	fmadd.d	$fa5, $fa6, $fa3, $fa5
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t4, $fa5
	movgr2fr.w	$fa5, $t4
	ffint.s.w	$fa5, $fa5
	fcvt.d.s	$fa5, $fa5
	fmul.d	$fa5, $fa5, $fa4
	slli.d	$t1, $t1, 9
	add.d	$t1, $a3, $t1
	slli.d	$t2, $t2, 2
	ldx.w	$t1, $t1, $t2
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa2, $fa5, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	movgr2fr.w	$fa5, $t1
	ffint.s.w	$fa5, $fa5
	fadd.s	$fa2, $fa5, $fa2
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 1
	move	$t4, $t0
	bnez	$a7, .LBB60_6
	b	.LBB60_3
.LBB60_7:                               # %._crit_edge.loopexit
	fcvt.d.s	$fa0, $fa2
.LBB60_8:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end60:
	.size	SSPscore___, .Lfunc_end60-SSPscore___
                                        # -- End function
	.globl	SSPscore                        # -- Begin function SSPscore
	.p2align	5
	.type	SSPscore,@function
SSPscore:                               # @SSPscore
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	movgr2fr.d	$fa0, $zero
	blt	$s0, $a1, .LBB61_9
# %bb.1:                                # %.lr.ph
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB61_9
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.w	$a1, $s0, -1
	pcalau12i	$a2, %got_pc_hi20(penalty)
	ld.d	$a2, $a2, %got_pc_lo12(penalty)
	ld.w	$a2, $a2, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a0, $a0, 30, 0
	movgr2fr.w	$fa1, $zero
	ori	$a2, $zero, 1
	vldi	$vr2, -928
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	move	$a4, $zero
	.p2align	4, , 16
.LBB61_3:                               # %.preheader.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_4 Depth 2
                                        #       Child Loop BB61_5 Depth 3
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $fp, $a5
	addi.d	$a4, $a4, 1
	move	$a6, $a2
	.p2align	4, , 16
.LBB61_4:                               # %.preheader.us.us
                                        #   Parent Loop BB61_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB61_5 Depth 3
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $fp, $a7
	move	$t2, $zero
	move	$t3, $zero
	move	$t0, $a0
	move	$t1, $a5
	.p2align	4, , 16
.LBB61_5:                               #   Parent Loop BB61_3 Depth=1
                                        #     Parent Loop BB61_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$t4, $t1, 0
	ld.b	$t5, $a7, 0
	addi.d	$t6, $t4, -45
	sltui	$t6, $t6, 1
	addi.d	$t7, $t5, -45
	xori	$t8, $t3, 1
	xori	$s1, $t2, 1
	mul.d	$t2, $t8, $t2
	sltui	$t7, $t7, 1
	masknez	$t3, $t3, $t6
	mul.d	$s2, $t3, $s1
	maskeqz	$s3, $t8, $t6
	or	$t3, $s3, $t3
	masknez	$t8, $t8, $t6
	masknez	$t3, $t3, $t7
	maskeqz	$t8, $t8, $t7
	or	$t3, $t8, $t3
	mul.d	$t3, $t3, $s1
	masknez	$t2, $t2, $t7
	maskeqz	$t8, $s2, $t7
	or	$t2, $t8, $t2
	add.d	$t2, $t2, $t3
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa3, $t2
	ffint.s.l	$fa3, $fa3
	fcvt.d.s	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa2
	slli.d	$t2, $t4, 9
	add.d	$t2, $a3, $t2
	slli.d	$t3, $t5, 2
	ldx.w	$t2, $t2, $t3
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fcvt.s.d	$fa1, $fa1
	movgr2fr.w	$fa3, $t2
	ffint.s.w	$fa3, $fa3
	fadd.s	$fa1, $fa3, $fa1
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	move	$t2, $t7
	move	$t3, $t6
	bnez	$t0, .LBB61_5
# %bb.6:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB61_4 Depth=2
	addi.d	$a6, $a6, 1
	bne	$a6, $s0, .LBB61_4
# %bb.7:                                # %.loopexit.us
                                        #   in Loop: Header=BB61_3 Depth=1
	addi.d	$a2, $a2, 1
	bne	$a4, $a1, .LBB61_3
# %bb.8:                                # %._crit_edge.loopexit
	fcvt.d.s	$fa0, $fa1
.LBB61_9:                               # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end61:
	.size	SSPscore, .Lfunc_end61-SSPscore
                                        # -- End function
	.globl	DSPscore                        # -- Begin function DSPscore
	.p2align	5
	.type	DSPscore,@function
DSPscore:                               # @DSPscore
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	movgr2fr.d	$fa0, $zero
	blt	$s0, $a1, .LBB62_18
# %bb.1:                                # %.lr.ph
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB62_18
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.w	$a2, $s0, -1
	addi.w	$a0, $a0, -2
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$a3, $a3, %got_pc_lo12(penalty)
	ld.w	$a3, $a3, 0
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa2, $zero
	ori	$a3, $zero, 1
	ori	$a4, $zero, 45
	pcalau12i	$a5, %got_pc_hi20(amino_dis)
	ld.d	$a5, $a5, %got_pc_lo12(amino_dis)
	move	$a6, $zero
	fmov.d	$fa0, $fa2
	b	.LBB62_4
	.p2align	4, , 16
.LBB62_3:                               # %.loopexit.us
                                        #   in Loop: Header=BB62_4 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a6, $a2, .LBB62_18
.LBB62_4:                               # %.lr.ph84.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_6 Depth 2
                                        #       Child Loop BB62_9 Depth 3
                                        #         Child Loop BB62_17 Depth 4
                                        #         Child Loop BB62_13 Depth 4
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $fp, $a7
	addi.d	$a6, $a6, 1
	addi.d	$t0, $a7, 1
	move	$t1, $a3
	b	.LBB62_6
	.p2align	4, , 16
.LBB62_5:                               # %._crit_edge75.us.us
                                        #   in Loop: Header=BB62_6 Depth=2
	addi.d	$t1, $t1, 1
	fadd.d	$fa0, $fa0, $fa3
	beq	$t1, $s0, .LBB62_3
.LBB62_6:                               # %.lr.ph74.us.us
                                        #   Parent Loop BB62_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB62_9 Depth 3
                                        #         Child Loop BB62_17 Depth 4
                                        #         Child Loop BB62_13 Depth 4
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $fp, $t2
	move	$t3, $zero
	addi.d	$t4, $t2, 1
	fmov.d	$fa3, $fa2
	b	.LBB62_9
	.p2align	4, , 16
.LBB62_7:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB62_9 Depth=3
	blt	$a0, $t3, .LBB62_5
.LBB62_8:                               #   in Loop: Header=BB62_9 Depth=3
	addi.w	$t3, $t3, 1
	bge	$t3, $a1, .LBB62_5
.LBB62_9:                               #   Parent Loop BB62_4 Depth=1
                                        #     Parent Loop BB62_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB62_17 Depth 4
                                        #         Child Loop BB62_13 Depth 4
	ldx.b	$t5, $a7, $t3
	bne	$t5, $a4, .LBB62_14
# %bb.10:                               #   in Loop: Header=BB62_9 Depth=3
	ldx.b	$t5, $t2, $t3
	beq	$t5, $a4, .LBB62_8
# %bb.11:                               #   in Loop: Header=BB62_9 Depth=3
	alsl.d	$t5, $t5, $a5, 2
	ldptr.w	$t5, $t5, 23040
	addi.d	$t6, $t3, 1
	ldx.bu	$t7, $a7, $t6
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa1
	bne	$t7, $a4, .LBB62_7
# %bb.12:                               # %.lr.ph67.us.us.preheader
                                        #   in Loop: Header=BB62_9 Depth=3
	add.d	$t5, $t2, $t6
	add.d	$t6, $t0, $t6
	.p2align	4, , 16
.LBB62_13:                              # %.lr.ph67.us.us
                                        #   Parent Loop BB62_4 Depth=1
                                        #     Parent Loop BB62_6 Depth=2
                                        #       Parent Loop BB62_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$t7, $t5, 0
	alsl.d	$t7, $t7, $a5, 2
	ldptr.w	$t7, $t7, 23040
	movgr2fr.w	$fa4, $t7
	ffint.d.w	$fa4, $fa4
	ld.bu	$t7, $t6, 0
	fadd.d	$fa3, $fa3, $fa4
	addi.w	$t3, $t3, 1
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, 1
	beq	$t7, $a4, .LBB62_13
	b	.LBB62_7
	.p2align	4, , 16
.LBB62_14:                              #   in Loop: Header=BB62_9 Depth=3
	ldx.b	$t6, $t2, $t3
	slli.d	$t5, $t5, 9
	add.d	$t5, $a5, $t5
	slli.d	$t7, $t6, 2
	ldx.w	$t5, $t5, $t7
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	bne	$t6, $a4, .LBB62_8
# %bb.15:                               #   in Loop: Header=BB62_9 Depth=3
	addi.d	$t6, $t3, 1
	ldx.bu	$t5, $t2, $t6
	fadd.d	$fa3, $fa3, $fa1
	bne	$t5, $a4, .LBB62_7
# %bb.16:                               # %.lr.ph.us.us.preheader
                                        #   in Loop: Header=BB62_9 Depth=3
	add.d	$t5, $a7, $t6
	add.d	$t6, $t4, $t6
	.p2align	4, , 16
.LBB62_17:                              # %.lr.ph.us.us
                                        #   Parent Loop BB62_4 Depth=1
                                        #     Parent Loop BB62_6 Depth=2
                                        #       Parent Loop BB62_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$t7, $t5, 0
	slli.d	$t7, $t7, 9
	add.d	$t7, $a5, $t7
	ld.w	$t7, $t7, 180
	movgr2fr.w	$fa4, $t7
	ffint.d.w	$fa4, $fa4
	ld.bu	$t7, $t6, 0
	fadd.d	$fa3, $fa3, $fa4
	addi.w	$t3, $t3, 1
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, 1
	beq	$t7, $a4, .LBB62_17
	b	.LBB62_7
.LBB62_18:                              # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end62:
	.size	DSPscore, .Lfunc_end62-DSPscore
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function searchAnchors
.LCPI63_0:
	.dword	0x4059000000000000              # double 100
.LCPI63_1:
	.dword	0x4082c00000000000              # double 600
	.text
	.globl	searchAnchors
	.p2align	5
	.type	searchAnchors,@function
searchAnchors:                          # @searchAnchors
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	move	$s1, $a1
	ld.d	$a1, $a1, 0
	move	$fp, $a2
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(searchAnchors.alloclen)
	ld.w	$a1, $s5, %pc_lo12(searchAnchors.alloclen)
	move	$s0, $a0
	addi.w	$s3, $a0, 0
	pcalau12i	$s4, %pc_hi20(searchAnchors.stra)
	bge	$a1, $s3, .LBB63_5
# %bb.1:
	beqz	$a1, .LBB63_3
# %bb.2:
	ld.d	$a0, $s4, %pc_lo12(searchAnchors.stra)
	pcaddu18i	$ra, %call36(FreeDoubleVec)
	jirl	$ra, $ra, 0
	b	.LBB63_4
.LBB63_3:
	pcalau12i	$a0, %got_pc_hi20(divThreshold)
	ld.d	$a0, $a0, %got_pc_lo12(divThreshold)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI63_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI63_0)
	pcalau12i	$a1, %pc_hi20(.LCPI63_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI63_1)
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$a0, %got_pc_hi20(divWinSize)
	ld.d	$a0, $a0, %got_pc_lo12(divWinSize)
	ld.w	$a0, $a0, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(searchAnchors.threshold)
	fst.d	$fa0, $a0, %pc_lo12(searchAnchors.threshold)
.LBB63_4:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(searchAnchors.stra)
	st.w	$s0, $s5, %pc_lo12(searchAnchors.alloclen)
.LBB63_5:
	blez	$s3, .LBB63_20
# %bb.6:                                # %.lr.ph109
	ld.d	$a0, $s4, %pc_lo12(searchAnchors.stra)
	addi.d	$a2, $s2, -1
	movgr2fr.w	$fa0, $s2
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ori	$a3, $zero, 1
	bstrpick.d	$a1, $s0, 30, 0
	bge	$a3, $s2, .LBB63_13
# %bb.7:                                # %.lr.ph106.us.preheader
	addi.w	$a2, $a2, 0
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $s1, 8
	movgr2fr.d	$fa1, $zero
	pcalau12i	$a4, %got_pc_hi20(amino_n)
	ld.d	$a4, $a4, %got_pc_lo12(amino_n)
	ori	$a5, $zero, 104
	pcalau12i	$a6, %got_pc_hi20(n_dis)
	ld.d	$a6, $a6, %got_pc_lo12(n_dis)
	move	$a7, $zero
	.p2align	4, , 16
.LBB63_8:                               # %.lr.ph106.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_9 Depth 2
                                        #       Child Loop BB63_10 Depth 3
	move	$t3, $zero
	alsl.d	$t0, $a7, $a0, 3
	slli.d	$t1, $a7, 3
	stx.d	$zero, $a0, $t1
	ori	$t1, $zero, 1
	move	$t2, $a3
	fmov.d	$fa2, $fa1
	.p2align	4, , 16
.LBB63_9:                               # %.lr.ph.us
                                        #   Parent Loop BB63_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB63_10 Depth 3
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $s1, $t4
	addi.d	$t3, $t3, 1
	move	$t5, $s2
	move	$t6, $t2
	.p2align	4, , 16
.LBB63_10:                              #   Parent Loop BB63_8 Depth=1
                                        #     Parent Loop BB63_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $t6, 0
	ldx.b	$t8, $t4, $a7
	ldx.b	$t7, $t7, $a7
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a4, $t8
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a4, $t7
	mul.d	$t8, $t8, $a5
	add.d	$t8, $a6, $t8
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $t8, $t7
	movgr2fr.w	$fa3, $t7
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $t0, 0
	addi.d	$t5, $t5, -1
	addi.d	$t6, $t6, 8
	bne	$t1, $t5, .LBB63_10
# %bb.11:                               # %.loopexit.us
                                        #   in Loop: Header=BB63_9 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 8
	bne	$t3, $a2, .LBB63_9
# %bb.12:                               # %._crit_edge.us
                                        #   in Loop: Header=BB63_8 Depth=1
	fdiv.d	$fa2, $fa2, $fa0
	addi.d	$a7, $a7, 1
	fst.d	$fa2, $t0, 0
	bne	$a7, $a1, .LBB63_8
	b	.LBB63_20
.LBB63_13:                              # %.lr.ph109.split.preheader
	movgr2fr.d	$fa1, $zero
	ori	$a2, $zero, 4
	fdiv.d	$fa0, $fa1, $fa0
	bgeu	$a1, $a2, .LBB63_15
# %bb.14:
	move	$a2, $zero
	b	.LBB63_18
.LBB63_15:                              # %vector.ph
	bstrpick.d	$a2, $s0, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a3, $a0, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB63_16:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB63_16
# %bb.17:                               # %middle.block
	beq	$a1, $a2, .LBB63_20
.LBB63_18:                              # %.lr.ph109.split.preheader181
	alsl.d	$a0, $a2, $a0, 3
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB63_19:                              # %.lr.ph109.split
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fa0, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB63_19
.LBB63_20:                              # %._crit_edge110
	st.w	$zero, $fp, 24
	st.w	$zero, $fp, 76
	pcalau12i	$a0, %got_pc_hi20(divWinSize)
	ld.d	$s1, $a0, %got_pc_lo12(divWinSize)
	ld.w	$a1, $s1, 0
	blez	$a1, .LBB63_37
# %bb.21:                               # %.lr.ph
	ld.d	$a0, $s4, %pc_lo12(searchAnchors.stra)
	movgr2fr.d	$fs0, $zero
	move	$a2, $a1
	.p2align	4, , 16
.LBB63_22:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB63_22
# %bb.23:                               # %.preheader
	sub.w	$a0, $s0, $a1
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB63_38
.LBB63_24:                              # %.lr.ph121.preheader
	move	$s2, $zero
	move	$a3, $zero
	move	$a0, $zero
	move	$a4, $zero
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $s4, %pc_lo12(searchAnchors.stra)
	pcalau12i	$s5, %pc_hi20(searchAnchors.threshold)
	fld.d	$fa0, $s5, %pc_lo12(searchAnchors.threshold)
	movgr2fr.d	$fs1, $zero
	ori	$s3, $zero, 1
	ori	$s6, $zero, 150
	lu12i.w	$a5, 24
	ori	$s7, $a5, 1693
	ori	$s8, $zero, 1
	fmov.d	$fa1, $fs1
	b	.LBB63_27
	.p2align	4, , 16
.LBB63_25:                              #   in Loop: Header=BB63_27 Depth=1
	move	$a4, $zero
	move	$a3, $zero
	move	$a0, $s4
	fmov.d	$fa1, $fs1
.LBB63_26:                              #   in Loop: Header=BB63_27 Depth=1
	addi.d	$s8, $s8, 1
	sub.w	$a5, $s0, $a1
	addi.w	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bge	$s8, $a5, .LBB63_35
.LBB63_27:                              # %.lr.ph121
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa2, $a2, $s2
	add.w	$a5, $a1, $s3
	alsl.d	$a5, $a5, $a2, 3
	fld.d	$fa3, $a5, -8
	fsub.d	$fa2, $fs0, $fa2
	fadd.d	$fs0, $fa2, $fa3
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB63_31
# %bb.28:                               #   in Loop: Header=BB63_27 Depth=1
	bnez	$a4, .LBB63_30
# %bb.29:                               #   in Loop: Header=BB63_27 Depth=1
	st.w	$s3, $fp, 0
	ld.w	$a1, $s1, 0
	move	$a3, $zero
	fmov.d	$fa1, $fs1
.LBB63_30:                              #   in Loop: Header=BB63_27 Depth=1
	addi.w	$a3, $a3, 1
	fadd.d	$fa1, $fs0, $fa1
	ori	$a4, $zero, 1
.LBB63_31:                              #   in Loop: Header=BB63_27 Depth=1
	fcmp.cle.d	$fcc0, $fs0, $fa0
	slt	$a5, $s6, $a3
	movcf2gr	$a6, $fcc0
	or	$a6, $a6, $a5
	beqz	$a6, .LBB63_26
# %bb.32:                               #   in Loop: Header=BB63_27 Depth=1
	beqz	$a4, .LBB63_26
# %bb.33:                               #   in Loop: Header=BB63_27 Depth=1
	ld.w	$a3, $fp, 0
	st.w	$s3, $fp, 4
	add.d	$a3, $a1, $a3
	add.d	$a3, $s3, $a3
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srli.d	$a3, $a3, 1
	st.w	$a3, $fp, 8
	fst.d	$fa1, $fp, 16
	st.w	$a5, $fp, 24
	st.w	$a5, $fp, 76
	addi.w	$s4, $a0, 1
	addi.d	$fp, $fp, 48
	blt	$a0, $s7, .LBB63_25
# %bb.34:                               #   in Loop: Header=BB63_27 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(searchAnchors.stra)
	fld.d	$fa0, $s5, %pc_lo12(searchAnchors.threshold)
	ld.w	$a1, $s1, 0
	b	.LBB63_25
.LBB63_35:                              # %._crit_edge
	beqz	$a4, .LBB63_39
# %bb.36:
	ld.w	$a2, $fp, 0
	st.w	$s3, $fp, 4
	add.d	$a1, $a2, $a1
	add.d	$a1, $a1, $s3
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	st.w	$a1, $fp, 8
	fst.d	$fa1, $fp, 16
	addi.w	$a0, $a0, 1
	b	.LBB63_39
.LBB63_37:
	movgr2fr.d	$fs0, $zero
	sub.w	$a0, $s0, $a1
	ori	$a2, $zero, 2
	bge	$a0, $a2, .LBB63_24
.LBB63_38:
	move	$a0, $zero
.LBB63_39:                              # %._crit_edge.thread
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end63:
	.size	searchAnchors, .Lfunc_end63-searchAnchors
                                        # -- End function
	.globl	dontcalcimportance              # -- Begin function dontcalcimportance
	.p2align	5
	.type	dontcalcimportance,@function
dontcalcimportance:                     # @dontcalcimportance
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(dontcalcimportance.nogaplen)
	ld.d	$a1, $s2, %pc_lo12(dontcalcimportance.nogaplen)
	move	$fp, $a3
	move	$s1, $a2
	move	$s0, $a0
	bnez	$a1, .LBB64_2
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s2, %pc_lo12(dontcalcimportance.nogaplen)
.LBB64_2:
	blez	$s0, .LBB64_16
# %bb.3:                                # %.lr.ph
	move	$a0, $zero
	b	.LBB64_6
	.p2align	4, , 16
.LBB64_4:                               #   in Loop: Header=BB64_6 Depth=1
	move	$a2, $zero
.LBB64_5:                               # %seqlen.exit
                                        #   in Loop: Header=BB64_6 Depth=1
	slli.d	$a3, $a0, 2
	addi.d	$a0, $a0, 1
	stx.w	$a2, $a1, $a3
	beq	$a0, $s0, .LBB64_9
.LBB64_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_8 Depth 2
	slli.d	$a2, $a0, 3
	ldx.d	$a4, $s1, $a2
	ld.bu	$a3, $a4, 0
	beqz	$a3, .LBB64_4
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB64_6 Depth=1
	move	$a2, $zero
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB64_8:                               # %.lr.ph.i
                                        #   Parent Loop BB64_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a3, -45
	ld.bu	$a3, $a4, 0
	sltu	$a5, $zero, $a5
	add.d	$a2, $a2, $a5
	addi.d	$a4, $a4, 1
	bnez	$a3, .LBB64_8
	b	.LBB64_5
.LBB64_9:                               # %.preheader.us.preheader
	move	$a0, $zero
	b	.LBB64_11
	.p2align	4, , 16
.LBB64_10:                              # %._crit_edge32.us
                                        #   in Loop: Header=BB64_11 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s0, .LBB64_16
.LBB64_11:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_13 Depth 2
                                        #       Child Loop BB64_15 Depth 3
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $fp, $a1
	move	$a2, $zero
	b	.LBB64_13
	.p2align	4, , 16
.LBB64_12:                              # %._crit_edge.us
                                        #   in Loop: Header=BB64_13 Depth=2
	addi.d	$a2, $a2, 1
	beq	$a2, $s0, .LBB64_10
.LBB64_13:                              #   Parent Loop BB64_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB64_15 Depth 3
	beqz	$a1, .LBB64_12
# %bb.14:                               # %.lr.ph29.us.preheader
                                        #   in Loop: Header=BB64_13 Depth=2
	slli.d	$a3, $a2, 6
	alsl.d	$a3, $a2, $a3, 4
	add.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB64_15:                              # %.lr.ph29.us
                                        #   Parent Loop BB64_11 Depth=1
                                        #     Parent Loop BB64_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a3, 48
	fld.d	$fa0, $a3, 40
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 56
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a3, 64
	ld.d	$a3, $a3, 8
	bnez	$a3, .LBB64_15
	b	.LBB64_12
.LBB64_16:                              # %._crit_edge34
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end64:
	.size	dontcalcimportance, .Lfunc_end64-dontcalcimportance
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function calcimportance
.LCPI65_0:
	.dword	0x7ff8000000000000              # double NaN
	.text
	.globl	calcimportance
	.p2align	5
	.type	calcimportance,@function
calcimportance:                         # @calcimportance
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(calcimportance.importance)
	ld.d	$a4, $s3, %pc_lo12(calcimportance.importance)
	move	$fp, $a3
	move	$s2, $a2
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$s4, %pc_hi20(calcimportance.nogaplen)
	beqz	$a4, .LBB65_2
# %bb.1:
	bgtz	$s0, .LBB65_3
	b	.LBB65_55
.LBB65_2:
	pcalau12i	$a0, %got_pc_hi20(nlenmax)
	ld.d	$a0, $a0, %got_pc_lo12(nlenmax)
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(calcimportance.importance)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(calcimportance.nogaplen)
	blez	$s0, .LBB65_55
.LBB65_3:                               # %.lr.ph
	ld.d	$a0, $s4, %pc_lo12(calcimportance.nogaplen)
	move	$a1, $zero
	b	.LBB65_6
	.p2align	4, , 16
.LBB65_4:                               #   in Loop: Header=BB65_6 Depth=1
	move	$a2, $zero
.LBB65_5:                               # %seqlen.exit
                                        #   in Loop: Header=BB65_6 Depth=1
	slli.d	$a3, $a1, 2
	addi.d	$a1, $a1, 1
	stx.w	$a2, $a0, $a3
	beq	$a1, $s0, .LBB65_9
.LBB65_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_8 Depth 2
	slli.d	$a2, $a1, 3
	ldx.d	$a4, $s2, $a2
	ld.bu	$a3, $a4, 0
	beqz	$a3, .LBB65_4
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB65_6 Depth=1
	move	$a2, $zero
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB65_8:                               # %.lr.ph.i
                                        #   Parent Loop BB65_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a3, -45
	ld.bu	$a3, $a4, 0
	sltu	$a5, $zero, $a5
	add.d	$a2, $a2, $a5
	addi.d	$a4, $a4, 1
	bnez	$a3, .LBB65_8
	b	.LBB65_5
.LBB65_9:                               # %.preheader121.lr.ph
	pcalau12i	$a0, %got_pc_hi20(nlenmax)
	ld.d	$a0, $a0, %got_pc_lo12(nlenmax)
	ld.wu	$a0, $a0, 0
	ld.d	$s2, $s3, %pc_lo12(calcimportance.importance)
	move	$s4, $zero
	addi.w	$s5, $a0, 0
	slli.d	$s3, $a0, 3
	addi.d	$s6, $s2, 8
	addi.d	$s7, $s2, 16
	pcalau12i	$a0, %pc_hi20(.LCPI65_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI65_0)
	vldi	$vr3, -784
	movgr2fr.d	$fs1, $zero
	ori	$s8, $zero, 5
	b	.LBB65_11
	.p2align	4, , 16
.LBB65_10:                              # %._crit_edge147
                                        #   in Loop: Header=BB65_11 Depth=1
	addi.d	$s4, $s4, 1
	beq	$s4, $s0, .LBB65_42
.LBB65_11:                              # %.preheader121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_15 Depth 2
                                        #       Child Loop BB65_19 Depth 3
                                        #         Child Loop BB65_28 Depth 4
                                        #         Child Loop BB65_26 Depth 4
                                        #     Child Loop BB65_32 Depth 2
                                        #       Child Loop BB65_37 Depth 3
                                        #         Child Loop BB65_40 Depth 4
	blez	$s5, .LBB65_13
# %bb.12:                               # %.lr.ph127.preheader
                                        #   in Loop: Header=BB65_11 Depth=1
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vldi	$vr3, -784
.LBB65_13:                              # %.lr.ph135
                                        #   in Loop: Header=BB65_11 Depth=1
	move	$a1, $zero
	alsl.d	$a0, $s4, $fp, 3
	b	.LBB65_15
	.p2align	4, , 16
.LBB65_14:                              # %.loopexit118
                                        #   in Loop: Header=BB65_15 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $s0, .LBB65_30
.LBB65_15:                              #   Parent Loop BB65_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB65_19 Depth 3
                                        #         Child Loop BB65_28 Depth 4
                                        #         Child Loop BB65_26 Depth 4
	beq	$s4, $a1, .LBB65_14
# %bb.16:                               #   in Loop: Header=BB65_15 Depth=2
	ld.d	$a4, $a0, 0
	beqz	$a4, .LBB65_14
# %bb.17:                               # %.lr.ph133
                                        #   in Loop: Header=BB65_15 Depth=2
	alsl.d	$a2, $a1, $s1, 3
	addi.d	$a3, $a2, 8
	slli.d	$a5, $a1, 6
	alsl.d	$a5, $a1, $a5, 4
	add.d	$a4, $a4, $a5
	b	.LBB65_19
	.p2align	4, , 16
.LBB65_18:                              # %.loopexit115
                                        #   in Loop: Header=BB65_19 Depth=3
	ld.d	$a4, $a4, 8
	beqz	$a4, .LBB65_14
.LBB65_19:                              #   Parent Loop BB65_11 Depth=1
                                        #     Parent Loop BB65_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB65_28 Depth 4
                                        #         Child Loop BB65_26 Depth 4
	fld.d	$fa0, $a4, 40
	fcmp.ceq.d	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB65_18
# %bb.20:                               #   in Loop: Header=BB65_19 Depth=3
	ld.w	$a7, $a4, 24
	ld.w	$a5, $a4, 28
	blt	$a5, $a7, .LBB65_18
# %bb.21:                               # %.lr.ph130.preheader
                                        #   in Loop: Header=BB65_19 Depth=3
	sub.d	$t0, $a5, $a7
	addi.w	$a6, $t0, 0
	bltu	$a6, $s8, .LBB65_24
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB65_19 Depth=3
	alsl.d	$t1, $a7, $s2, 3
	bgeu	$t1, $a3, .LBB65_27
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB65_19 Depth=3
	bstrpick.d	$t0, $t0, 31, 0
	add.d	$t0, $a7, $t0
	alsl.d	$t0, $t0, $s6, 3
	bgeu	$a2, $t0, .LBB65_27
.LBB65_24:                              #   in Loop: Header=BB65_19 Depth=3
	move	$a6, $a7
.LBB65_25:                              # %.lr.ph130.preheader230
                                        #   in Loop: Header=BB65_19 Depth=3
	alsl.d	$a7, $a6, $s2, 3
	sub.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	.p2align	4, , 16
.LBB65_26:                              # %.lr.ph130
                                        #   Parent Loop BB65_11 Depth=1
                                        #     Parent Loop BB65_15 Depth=2
                                        #       Parent Loop BB65_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a7, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a7, 0
	addi.w	$a5, $a5, -1
	addi.d	$a7, $a7, 8
	bnez	$a5, .LBB65_26
	b	.LBB65_18
.LBB65_27:                              # %vector.ph
                                        #   in Loop: Header=BB65_19 Depth=3
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$t0, $a6, 1
	bstrpick.d	$a6, $t0, 32, 2
	vldrepl.d	$vr0, $a2, 0
	slli.d	$t1, $a6, 2
	alsl.d	$a6, $a6, $a7, 2
	alsl.d	$a7, $a7, $s7, 3
	move	$t2, $t1
	.p2align	4, , 16
.LBB65_28:                              # %vector.body
                                        #   Parent Loop BB65_11 Depth=1
                                        #     Parent Loop BB65_15 Depth=2
                                        #       Parent Loop BB65_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr1, $a7, -16
	vld	$vr2, $a7, 0
	vfadd.d	$vr1, $vr0, $vr1
	vfadd.d	$vr2, $vr0, $vr2
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$t2, $t2, -4
	addi.d	$a7, $a7, 32
	bnez	$t2, .LBB65_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB65_19 Depth=3
	beq	$t0, $t1, .LBB65_18
	b	.LBB65_25
	.p2align	4, , 16
.LBB65_30:                              # %.lr.ph146
                                        #   in Loop: Header=BB65_11 Depth=1
	move	$a1, $zero
	b	.LBB65_32
	.p2align	4, , 16
.LBB65_31:                              # %.loopexit117
                                        #   in Loop: Header=BB65_32 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $s0, .LBB65_10
.LBB65_32:                              #   Parent Loop BB65_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB65_37 Depth 3
                                        #         Child Loop BB65_40 Depth 4
	beq	$s4, $a1, .LBB65_31
# %bb.33:                               #   in Loop: Header=BB65_32 Depth=2
	ld.d	$a3, $a0, 0
	slli.d	$a2, $a1, 6
	alsl.d	$a2, $a1, $a2, 4
	add.d	$a2, $a3, $a2
	fld.d	$fa0, $a2, 40
	fcmp.ceq.d	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB65_31
# %bb.34:                               #   in Loop: Header=BB65_32 Depth=2
	bnez	$a3, .LBB65_37
	b	.LBB65_31
	.p2align	4, , 16
.LBB65_35:                              # %._crit_edge
                                        #   in Loop: Header=BB65_37 Depth=3
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 56
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 64
.LBB65_36:                              #   in Loop: Header=BB65_37 Depth=3
	ld.d	$a2, $a2, 8
	beqz	$a2, .LBB65_31
.LBB65_37:                              # %.lr.ph144
                                        #   Parent Loop BB65_11 Depth=1
                                        #     Parent Loop BB65_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB65_40 Depth 4
	fld.d	$fa0, $a2, 40
	fcmp.ceq.d	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB65_36
# %bb.38:                               #   in Loop: Header=BB65_37 Depth=3
	ld.w	$a3, $a2, 24
	ld.w	$a4, $a2, 28
	fmov.d	$fa1, $fs0
	blt	$a4, $a3, .LBB65_35
# %bb.39:                               # %.lr.ph140.preheader
                                        #   in Loop: Header=BB65_37 Depth=3
	addi.w	$a4, $a4, 1
	alsl.d	$a5, $a3, $s2, 3
	sub.d	$a6, $a4, $a3
	fmov.d	$fa1, $fs1
	.p2align	4, , 16
.LBB65_40:                              # %.lr.ph140
                                        #   Parent Loop BB65_11 Depth=1
                                        #     Parent Loop BB65_32 Depth=2
                                        #       Parent Loop BB65_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa2, $a5, 0
	fadd.d	$fa1, $fa1, $fa2
	addi.w	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB65_40
# %bb.41:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB65_37 Depth=3
	sub.d	$a3, $a4, $a3
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa2, $a3
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	b	.LBB65_35
.LBB65_42:                              # %.preheader
	ori	$a0, $zero, 1
	beq	$s0, $a0, .LBB65_55
# %bb.43:                               # %.lr.ph160.preheader
	move	$a5, $zero
	addi.w	$a1, $s0, -1
	ori	$a4, $zero, 80
	vldi	$vr0, -784
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB65_44:                              # %.lr.ph158
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_45 Depth 2
                                        #       Child Loop BB65_47 Depth 3
	move	$a2, $a5
	slli.d	$a3, $a5, 3
	ldx.d	$a6, $fp, $a3
	addi.d	$a5, $a5, 1
	mul.d	$a7, $a2, $a4
	move	$a3, $a0
	.p2align	4, , 16
.LBB65_45:                              #   Parent Loop BB65_44 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB65_47 Depth 3
	slli.d	$t0, $a3, 3
	ldx.d	$t1, $fp, $t0
	beqz	$t1, .LBB65_56
# %bb.46:                               # %.lr.ph152.preheader
                                        #   in Loop: Header=BB65_45 Depth=2
	mul.d	$t0, $a3, $a4
	add.d	$t0, $a6, $t0
	add.d	$t1, $t1, $a7
	.p2align	4, , 16
.LBB65_47:                              # %.lr.ph152
                                        #   Parent Loop BB65_44 Depth=1
                                        #     Parent Loop BB65_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $t0, 40
	fcmp.ceq.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB65_50
# %bb.48:                               #   in Loop: Header=BB65_47 Depth=3
	fld.d	$fa2, $t1, 40
	fcmp.ceq.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB65_50
# %bb.49:                               #   in Loop: Header=BB65_47 Depth=3
	fld.d	$fa2, $t0, 56
	fld.d	$fa3, $t1, 56
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $t1, 56
	fst.d	$fa2, $t0, 56
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $t1, 64
	fst.s	$fa2, $t0, 64
	.p2align	4, , 16
.LBB65_50:                              #   in Loop: Header=BB65_47 Depth=3
	ld.d	$t0, $t0, 8
	ld.d	$t1, $t1, 8
	beqz	$t0, .LBB65_52
# %bb.51:                               #   in Loop: Header=BB65_47 Depth=3
	bnez	$t1, .LBB65_47
.LBB65_52:                              # %._crit_edge153
                                        #   in Loop: Header=BB65_45 Depth=2
	sltu	$t1, $zero, $t1
	sltu	$t0, $zero, $t0
	bne	$t0, $t1, .LBB65_56
# %bb.53:                               #   in Loop: Header=BB65_45 Depth=2
	addi.d	$a3, $a3, 1
	bne	$a3, $s0, .LBB65_45
# %bb.54:                               # %.loopexit
                                        #   in Loop: Header=BB65_44 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a5, $a1, .LBB65_44
.LBB65_55:                              # %._crit_edge161
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.LBB65_56:                              # %._crit_edge153.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end65:
	.size	calcimportance, .Lfunc_end65-calcimportance
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function extendlocalhom2
.LCPI66_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	extendlocalhom2
	.p2align	5
	.type	extendlocalhom2,@function
extendlocalhom2:                        # @extendlocalhom2
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
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 168                  # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(extendlocalhom2.ini)
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a3, $a3, %pc_lo12(extendlocalhom2.ini)
	move	$s0, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(extendlocalhom2.inj)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	beqz	$a3, .LBB66_2
# %bb.1:
	ori	$a0, $zero, 2
	bge	$s1, $a0, .LBB66_3
	b	.LBB66_63
.LBB66_2:
	pcalau12i	$a0, %got_pc_hi20(nlenmax)
	ld.d	$fp, $a0, %got_pc_lo12(nlenmax)
	ld.w	$a0, $fp, 0
	addi.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(extendlocalhom2.ini)
	addi.w	$a0, $a1, 1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(extendlocalhom2.inj)
	ori	$a0, $zero, 2
	blt	$s1, $a0, .LBB66_63
.LBB66_3:                               # %.lr.ph.split.us.preheader
	addi.w	$a0, $s1, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(thrinter)
	ld.d	$a0, $a0, %got_pc_lo12(thrinter)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a2, $zero
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	addi.w	$s5, $zero, -1
	b	.LBB66_5
	.p2align	4, , 16
.LBB66_4:                               # %.loopexit202.us
                                        #   in Loop: Header=BB66_5 Depth=1
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beq	$a2, $a0, .LBB66_63
.LBB66_5:                               # %.preheader201.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_7 Depth 2
                                        #       Child Loop BB66_9 Depth 3
                                        #         Child Loop BB66_19 Depth 4
                                        #           Child Loop BB66_25 Depth 5
                                        #           Child Loop BB66_27 Depth 5
                                        #         Child Loop BB66_32 Depth 4
                                        #           Child Loop BB66_38 Depth 5
                                        #           Child Loop BB66_40 Depth 5
                                        #         Child Loop BB66_45 Depth 4
                                        #         Child Loop BB66_50 Depth 4
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	alsl.d	$a0, $a2, $s0, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $a2, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s3, $a1
	b	.LBB66_7
	.p2align	4, , 16
.LBB66_6:                               # %._crit_edge256.us.us
                                        #   in Loop: Header=BB66_7 Depth=2
	addi.d	$s3, $s3, 1
	beq	$s3, $s1, .LBB66_4
.LBB66_7:                               # %.preheader201.us.us
                                        #   Parent Loop BB66_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB66_9 Depth 3
                                        #         Child Loop BB66_19 Depth 4
                                        #           Child Loop BB66_25 Depth 5
                                        #           Child Loop BB66_27 Depth 5
                                        #         Child Loop BB66_32 Depth 4
                                        #           Child Loop BB66_38 Depth 5
                                        #           Child Loop BB66_40 Depth 5
                                        #         Child Loop BB66_45 Depth 4
                                        #         Child Loop BB66_50 Depth 4
	move	$a7, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $s3, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a0, $s3, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	b	.LBB66_9
	.p2align	4, , 16
.LBB66_8:                               # %.loopexit.us.us
                                        #   in Loop: Header=BB66_9 Depth=3
	addi.d	$a7, $a7, 1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	beq	$a7, $s1, .LBB66_6
.LBB66_9:                               #   Parent Loop BB66_5 Depth=1
                                        #     Parent Loop BB66_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB66_19 Depth 4
                                        #           Child Loop BB66_25 Depth 5
                                        #           Child Loop BB66_27 Depth 5
                                        #         Child Loop BB66_32 Depth 4
                                        #           Child Loop BB66_38 Depth 5
                                        #           Child Loop BB66_40 Depth 5
                                        #         Child Loop BB66_45 Depth 4
                                        #         Child Loop BB66_50 Depth 4
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$a7, $a0, .LBB66_8
# %bb.10:                               #   in Loop: Header=BB66_9 Depth=3
	beq	$a7, $s3, .LBB66_8
# %bb.11:                               #   in Loop: Header=BB66_9 Depth=3
	addi.w	$a0, $a7, 0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	sltu	$a1, $a4, $a0
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	sltu	$a2, $a0, $a4
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s0, $a1
	slli.d	$a2, $a2, 3
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	fldx.d	$fa0, $a3, $a4
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa1, $a3, 0
	fldx.d	$fa2, $a1, $a2
	fmul.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB66_8
# %bb.12:                               #   in Loop: Header=BB66_9 Depth=3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sltu	$a1, $a3, $a0
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s0, $a1
	sltu	$a2, $a0, $a3
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa1, $a1, $a0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB66_8
# %bb.13:                               #   in Loop: Header=BB66_9 Depth=3
	pcalau12i	$a0, %got_pc_hi20(nlenmax)
	ld.d	$s2, $a0, %got_pc_lo12(nlenmax)
	ld.wu	$a0, $s2, 0
	addi.d	$a1, $a0, 1
	slli.d	$a0, $a1, 31
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	bltz	$a0, .LBB66_16
# %bb.14:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB66_9 Depth=3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(extendlocalhom2.ini)
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 2
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.wu	$a0, $s2, 0
	addi.d	$a1, $a0, 1
	slli.d	$a0, $a1, 31
	bltz	$a0, .LBB66_16
# %bb.15:                               # %.lr.ph210.us.us.preheader
                                        #   in Loop: Header=BB66_9 Depth=3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(extendlocalhom2.inj)
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 2
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
.LBB66_16:                              # %._crit_edge211.us.us
                                        #   in Loop: Header=BB66_9 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$fp, $a7, 6
	pcalau12i	$s1, %pc_hi20(.LCPI66_0)
	beqz	$a0, .LBB66_29
# %bb.17:                               # %.lr.ph222.us.us.preheader
                                        #   in Loop: Header=BB66_9 Depth=3
	alsl.d	$a1, $a7, $fp, 4
	add.d	$s0, $a0, $a1
	b	.LBB66_19
	.p2align	4, , 16
.LBB66_18:                              # %._crit_edge218.us.us
                                        #   in Loop: Header=BB66_19 Depth=4
	ld.d	$s0, $s0, 8
	beqz	$s0, .LBB66_29
.LBB66_19:                              # %.lr.ph222.us.us
                                        #   Parent Loop BB66_5 Depth=1
                                        #     Parent Loop BB66_7 Depth=2
                                        #       Parent Loop BB66_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB66_25 Depth 5
                                        #           Child Loop BB66_27 Depth 5
	fld.d	$fa0, $s0, 40
	vldi	$vr1, -784
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB66_28
# %bb.20:                               #   in Loop: Header=BB66_19 Depth=4
	ld.w	$a0, $s0, 52
	bgez	$a0, .LBB66_29
.LBB66_21:                              #   in Loop: Header=BB66_19 Depth=4
	ld.w	$a5, $s0, 24
	ld.w	$a0, $s0, 28
	sub.d	$a0, $a0, $a5
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 31
	bltz	$a1, .LBB66_18
# %bb.22:                               # %.lr.ph217.us.us.preheader
                                        #   in Loop: Header=BB66_19 Depth=4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(extendlocalhom2.ini)
	ld.w	$a2, $s0, 32
	addi.w	$a3, $a0, 0
	alsl.d	$a6, $a2, $a1, 2
	ori	$a1, $zero, 8
	bgeu	$a3, $a1, .LBB66_24
# %bb.23:                               #   in Loop: Header=BB66_19 Depth=4
	move	$a1, $a6
	move	$a2, $a5
	b	.LBB66_27
	.p2align	4, , 16
.LBB66_24:                              # %vector.ph313
                                        #   in Loop: Header=BB66_19 Depth=4
	bstrpick.d	$a3, $a0, 31, 0
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a4, $a2, 3
	slli.d	$a1, $a2, 5
	add.d	$a1, $a6, $a1
	vld	$vr0, $s1, %pc_lo12(.LCPI66_0)
	sub.d	$a0, $a0, $a4
	alsl.w	$a2, $a2, $a5, 3
	vreplgr2vr.w	$vr1, $a5
	vadd.w	$vr0, $vr1, $vr0
	addi.d	$a5, $a6, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB66_25:                              # %vector.body321
                                        #   Parent Loop BB66_5 Depth=1
                                        #     Parent Loop BB66_7 Depth=2
                                        #       Parent Loop BB66_9 Depth=3
                                        #         Parent Loop BB66_19 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB66_25
# %bb.26:                               # %middle.block329
                                        #   in Loop: Header=BB66_19 Depth=4
	beq	$a4, $a3, .LBB66_18
	.p2align	4, , 16
.LBB66_27:                              # %.lr.ph217.us.us
                                        #   Parent Loop BB66_5 Depth=1
                                        #     Parent Loop BB66_7 Depth=2
                                        #       Parent Loop BB66_9 Depth=3
                                        #         Parent Loop BB66_19 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	addi.w	$a0, $a0, -1
	addi.d	$a3, $a2, 1
	addi.d	$a4, $a1, 4
	st.w	$a2, $a1, 0
	move	$a1, $a4
	move	$a2, $a3
	bnez	$a0, .LBB66_27
	b	.LBB66_18
.LBB66_28:                              #   in Loop: Header=BB66_19 Depth=4
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	lu52i.d	$a2, $zero, -1025
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $s0, 52
	bltz	$a0, .LBB66_21
.LBB66_29:                              # %._crit_edge223.us.us
                                        #   in Loop: Header=BB66_9 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB66_42
# %bb.30:                               # %.lr.ph235.us.us.preheader
                                        #   in Loop: Header=BB66_9 Depth=3
	alsl.d	$a1, $a7, $fp, 4
	add.d	$fp, $a0, $a1
	b	.LBB66_32
	.p2align	4, , 16
.LBB66_31:                              # %._crit_edge231.us.us
                                        #   in Loop: Header=BB66_32 Depth=4
	ld.d	$fp, $fp, 8
	beqz	$fp, .LBB66_42
.LBB66_32:                              # %.lr.ph235.us.us
                                        #   Parent Loop BB66_5 Depth=1
                                        #     Parent Loop BB66_7 Depth=2
                                        #       Parent Loop BB66_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB66_38 Depth 5
                                        #           Child Loop BB66_40 Depth 5
	fld.d	$fa0, $fp, 40
	vldi	$vr1, -784
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB66_41
# %bb.33:                               #   in Loop: Header=BB66_32 Depth=4
	ld.w	$a0, $fp, 52
	bgez	$a0, .LBB66_42
.LBB66_34:                              #   in Loop: Header=BB66_32 Depth=4
	ld.w	$a5, $fp, 24
	ld.w	$a0, $fp, 28
	sub.d	$a0, $a0, $a5
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 31
	bltz	$a1, .LBB66_31
# %bb.35:                               # %.lr.ph230.us.us.preheader
                                        #   in Loop: Header=BB66_32 Depth=4
	ld.d	$a1, $s0, %pc_lo12(extendlocalhom2.inj)
	ld.w	$a2, $fp, 32
	addi.w	$a3, $a0, 0
	alsl.d	$a6, $a2, $a1, 2
	ori	$a1, $zero, 8
	bgeu	$a3, $a1, .LBB66_37
# %bb.36:                               #   in Loop: Header=BB66_32 Depth=4
	move	$a1, $a6
	move	$a2, $a5
	b	.LBB66_40
	.p2align	4, , 16
.LBB66_37:                              # %vector.ph
                                        #   in Loop: Header=BB66_32 Depth=4
	bstrpick.d	$a3, $a0, 31, 0
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a4, $a2, 3
	slli.d	$a1, $a2, 5
	add.d	$a1, $a6, $a1
	vld	$vr0, $s1, %pc_lo12(.LCPI66_0)
	sub.d	$a0, $a0, $a4
	alsl.w	$a2, $a2, $a5, 3
	vreplgr2vr.w	$vr1, $a5
	vadd.w	$vr0, $vr1, $vr0
	addi.d	$a5, $a6, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB66_38:                              # %vector.body
                                        #   Parent Loop BB66_5 Depth=1
                                        #     Parent Loop BB66_7 Depth=2
                                        #       Parent Loop BB66_9 Depth=3
                                        #         Parent Loop BB66_32 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB66_38
# %bb.39:                               # %middle.block
                                        #   in Loop: Header=BB66_32 Depth=4
	beq	$a4, $a3, .LBB66_31
	.p2align	4, , 16
.LBB66_40:                              # %.lr.ph230.us.us
                                        #   Parent Loop BB66_5 Depth=1
                                        #     Parent Loop BB66_7 Depth=2
                                        #       Parent Loop BB66_9 Depth=3
                                        #         Parent Loop BB66_32 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	addi.w	$a0, $a0, -1
	addi.d	$a3, $a2, 1
	addi.d	$a4, $a1, 4
	st.w	$a2, $a1, 0
	move	$a1, $a4
	move	$a2, $a3
	bnez	$a0, .LBB66_40
	b	.LBB66_31
.LBB66_41:                              #   in Loop: Header=BB66_32 Depth=4
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	lu52i.d	$a2, $zero, -1025
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $fp, 52
	bltz	$a0, .LBB66_34
.LBB66_42:                              # %._crit_edge236.us.us
                                        #   in Loop: Header=BB66_9 Depth=3
	ld.w	$a2, $s2, 0
	bltz	$a2, .LBB66_8
# %bb.43:                               # %.lr.ph242.us.us
                                        #   in Loop: Header=BB66_9 Depth=3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(extendlocalhom2.ini)
	ld.d	$a1, $s0, %pc_lo12(extendlocalhom2.inj)
	addi.d	$a2, $a2, 1
	bstrpick.d	$s1, $a2, 31, 0
	move	$s0, $zero
	move	$a2, $s1
	b	.LBB66_45
	.p2align	4, , 16
.LBB66_44:                              #   in Loop: Header=BB66_45 Depth=4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB66_47
.LBB66_45:                              #   Parent Loop BB66_5 Depth=1
                                        #     Parent Loop BB66_7 Depth=2
                                        #       Parent Loop BB66_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $a0, 0
	beq	$a3, $s5, .LBB66_44
# %bb.46:                               #   in Loop: Header=BB66_45 Depth=4
	ld.w	$a3, $a1, 0
	addi.d	$a3, $a3, 1
	sltu	$a3, $zero, $a3
	add.d	$s0, $s0, $a3
	b	.LBB66_44
.LBB66_47:                              # %.lr.ph248.us.us
                                        #   in Loop: Header=BB66_9 Depth=3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(extendlocalhom2.ini)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(extendlocalhom2.inj)
	move	$a0, $zero
	addi.d	$s2, $a1, -4
	addi.d	$fp, $a2, -4
	b	.LBB66_50
	.p2align	4, , 16
.LBB66_48:                              #   in Loop: Header=BB66_50 Depth=4
	move	$a0, $zero
.LBB66_49:                              #   in Loop: Header=BB66_50 Depth=4
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 4
	beqz	$s1, .LBB66_8
.LBB66_50:                              #   Parent Loop BB66_5 Depth=1
                                        #     Parent Loop BB66_7 Depth=2
                                        #       Parent Loop BB66_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beqz	$a0, .LBB66_60
# %bb.51:                               #   in Loop: Header=BB66_50 Depth=4
	ld.w	$a1, $s2, 4
	beq	$a1, $s5, .LBB66_55
# %bb.52:                               #   in Loop: Header=BB66_50 Depth=4
	ld.w	$a0, $fp, 4
	beq	$a0, $s5, .LBB66_55
# %bb.53:                               #   in Loop: Header=BB66_50 Depth=4
	ld.w	$a2, $s2, 0
	addi.w	$a1, $a1, -1
	bne	$a2, $a1, .LBB66_55
# %bb.54:                               #   in Loop: Header=BB66_50 Depth=4
	ld.w	$a1, $fp, 0
	addi.w	$a2, $a0, -1
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB66_49
	.p2align	4, , 16
.LBB66_55:                              #   in Loop: Header=BB66_50 Depth=4
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 80
	mul.d	$a1, $s3, $a2
	add.d	$s4, $a0, $a1
	ld.d	$s3, $s4, 16
	ld.w	$s6, $s2, 0
	ld.w	$s8, $fp, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	mul.d	$s7, $a7, $a2
	add.d	$a0, $a0, $s7
	fld.d	$fs0, $a0, 40
	add.d	$a0, $a1, $s7
	fld.d	$fs1, $a0, 40
	beq	$s3, $s4, .LBB66_57
# %bb.56:                               #   in Loop: Header=BB66_50 Depth=4
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $s3, 8
	move	$s3, $a0
.LBB66_57:                              # %addlocalhom2_e.exit.us.us
                                        #   in Loop: Header=BB66_50 Depth=4
	ld.w	$a0, $s4, 0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	fsel	$fa0, $fs1, $fs0, $fcc0
	st.d	$s3, $s4, 16
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.w	$a0, $s3, 24
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.w	$a0, $s3, 32
	st.w	$s6, $s3, 28
	st.w	$s8, $s3, 36
	fst.d	$fa0, $s3, 40
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.w	$a7, $s3, 52
	st.w	$s0, $s3, 48
	ori	$a1, $zero, 80
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	add.d	$s4, $a0, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$s3, $s4, 16
	ld.w	$s6, $fp, 0
	ld.w	$s8, $s2, 0
	add.d	$a1, $a1, $s7
	fld.d	$fs0, $a1, 40
	add.d	$a0, $a0, $s7
	fld.d	$fs1, $a0, 40
	beq	$s3, $s4, .LBB66_59
# %bb.58:                               #   in Loop: Header=BB66_50 Depth=4
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $s3, 8
	move	$s3, $a0
.LBB66_59:                              # %addlocalhom2_e.exit199.us.us
                                        #   in Loop: Header=BB66_50 Depth=4
	ld.w	$a0, $s4, 0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	fsel	$fa0, $fs1, $fs0, $fcc0
	st.d	$s3, $s4, 16
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.w	$a0, $s3, 24
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.w	$a0, $s3, 32
	st.w	$s6, $s3, 28
	st.w	$s8, $s3, 36
	fst.d	$fa0, $s3, 40
	st.w	$a7, $s3, 52
	st.w	$s0, $s3, 48
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
.LBB66_60:                              # %.critedge.us.us
                                        #   in Loop: Header=BB66_50 Depth=4
	ld.w	$a1, $s2, 4
	beq	$a1, $s5, .LBB66_48
# %bb.61:                               #   in Loop: Header=BB66_50 Depth=4
	ld.w	$a2, $fp, 4
	beq	$a2, $s5, .LBB66_48
# %bb.62:                               #   in Loop: Header=BB66_50 Depth=4
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	b	.LBB66_49
.LBB66_63:                              # %._crit_edge
	fld.d	$fs1, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
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
.Lfunc_end66:
	.size	extendlocalhom2, .Lfunc_end66-extendlocalhom2
                                        # -- End function
	.globl	makelocal                       # -- Begin function makelocal
	.p2align	5
	.type	makelocal,@function
makelocal:                              # @makelocal
# %bb.0:
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$a3, $a3, %got_pc_lo12(penalty)
	ld.w	$a3, $a3, 0
	movgr2fr.w	$fa0, $a3
	ld.bu	$t2, $a0, 0
	ffint.d.w	$fa0, $fa0
	movgr2fr.d	$fa1, $zero
	ori	$a5, $zero, 45
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a6, $a3, %got_pc_lo12(amino_dis)
	move	$a4, $zero
	move	$a3, $zero
	move	$t0, $zero
	fmov.d	$fa2, $fa1
	move	$a7, $a0
	move	$t1, $a1
	fmov.d	$fa3, $fa1
	.p2align	4, , 16
.LBB67_1:                               # %.loopexit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_6 Depth 2
	andi	$t3, $t2, 255
	beq	$t3, $a5, .LBB67_6
# %bb.2:                                # %.loopexit
                                        #   in Loop: Header=BB67_1 Depth=1
	beqz	$t3, .LBB67_9
# %bb.3:                                #   in Loop: Header=BB67_1 Depth=1
	ld.b	$t3, $t1, 0
	beq	$t3, $a5, .LBB67_6
# %bb.4:                                #   in Loop: Header=BB67_1 Depth=1
	ext.w.b	$t2, $t2
	slli.d	$t2, $t2, 9
	add.d	$t2, $a6, $t2
	slli.d	$t3, $t3, 2
	ldx.w	$t2, $t2, $t3
	addi.d	$a7, $a7, 1
	addi.d	$t1, $t1, 1
	sub.d	$t2, $t2, $a2
	movgr2fr.w	$fa4, $t2
	ffint.d.w	$fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc0
	movcf2gr	$t2, $fcc0
	masknez	$a3, $a3, $t2
	maskeqz	$t2, $t0, $t2
	or	$a3, $t2, $a3
	fcmp.clt.d	$fcc0, $fa3, $fa1
	xor	$t2, $t0, $a3
	sltui	$t2, $t2, 1
	sub.w	$t3, $a7, $a0
	fsel	$fa3, $fa3, $fa1, $fcc0
	movcf2gr	$t4, $fcc0
	maskeqz	$t5, $t3, $t4
	masknez	$t0, $t0, $t4
	or	$t0, $t5, $t0
	masknez	$t5, $a4, $t2
	maskeqz	$t2, $t3, $t2
	or	$t3, $t2, $t5
	ld.bu	$t2, $a7, 0
	maskeqz	$t3, $t3, $t4
	masknez	$a4, $a4, $t4
	or	$a4, $t3, $a4
	b	.LBB67_1
	.p2align	4, , 16
.LBB67_5:                               # %.critedge
                                        #   in Loop: Header=BB67_6 Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$t1, $t1, 1
.LBB67_6:                               #   Parent Loop BB67_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t2, $a7, 0
	beq	$t2, $a5, .LBB67_5
# %bb.7:                                #   in Loop: Header=BB67_6 Depth=2
	ld.bu	$t3, $t1, 0
	beq	$t3, $a5, .LBB67_5
# %bb.8:                                # %.loopexit.loopexit
                                        #   in Loop: Header=BB67_1 Depth=1
	fadd.d	$fa3, $fa3, $fa0
	b	.LBB67_1
.LBB67_9:
	xor	$a2, $t0, $a3
	sltui	$a2, $a2, 1
	nor	$a5, $a0, $zero
	add.w	$a5, $a7, $a5
	maskeqz	$a5, $a5, $a2
	masknez	$a2, $a4, $a2
	or	$a2, $a5, $a2
	addi.d	$a2, $a2, 1
	stx.b	$zero, $a0, $a2
	stx.b	$zero, $a1, $a2
	move	$a0, $a3
	ret
.Lfunc_end67:
	.size	makelocal, .Lfunc_end67-makelocal
                                        # -- End function
	.globl	resetlocalhom                   # -- Begin function resetlocalhom
	.p2align	5
	.type	resetlocalhom,@function
resetlocalhom:                          # @resetlocalhom
# %bb.0:
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB68_7
# %bb.1:                                # %.lr.ph17.preheader
	move	$a5, $zero
	addi.w	$a2, $a0, -1
	ori	$a3, $zero, 1
	lu52i.d	$a4, $zero, 1023
	.p2align	4, , 16
.LBB68_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_3 Depth 2
                                        #       Child Loop BB68_4 Depth 3
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a1, $a6
	addi.d	$a5, $a5, 1
	move	$a7, $a3
	.p2align	4, , 16
.LBB68_3:                               #   Parent Loop BB68_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_4 Depth 3
	slli.d	$t0, $a7, 6
	alsl.d	$t0, $a7, $t0, 4
	add.d	$t0, $a6, $t0
	.p2align	4, , 16
.LBB68_4:                               #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$a4, $t0, 40
	ld.d	$t0, $t0, 8
	bnez	$t0, .LBB68_4
# %bb.5:                                #   in Loop: Header=BB68_3 Depth=2
	addi.d	$a7, $a7, 1
	bne	$a7, $a0, .LBB68_3
# %bb.6:                                # %.loopexit
                                        #   in Loop: Header=BB68_2 Depth=1
	addi.d	$a3, $a3, 1
	bne	$a5, $a2, .LBB68_2
.LBB68_7:                               # %._crit_edge
	ret
.Lfunc_end68:
	.size	resetlocalhom, .Lfunc_end68-resetlocalhom
                                        # -- End function
	.globl	gapireru                        # -- Begin function gapireru
	.p2align	5
	.type	gapireru,@function
gapireru:                               # @gapireru
# %bb.0:
	ori	$a3, $zero, 45
	b	.LBB69_2
	.p2align	4, , 16
.LBB69_1:                               #   in Loop: Header=BB69_2 Depth=1
	st.b	$a4, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 1
.LBB69_2:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	beq	$a4, $a3, .LBB69_1
# %bb.3:                                #   in Loop: Header=BB69_2 Depth=1
	beqz	$a4, .LBB69_5
# %bb.4:                                #   in Loop: Header=BB69_2 Depth=1
	ld.bu	$a4, $a1, 0
	addi.d	$a1, $a1, 1
	b	.LBB69_1
.LBB69_5:
	st.b	$zero, $a0, 0
	ret
.Lfunc_end69:
	.size	gapireru, .Lfunc_end69-gapireru
                                        # -- End function
	.globl	getkyokaigap                    # -- Begin function getkyokaigap
	.p2align	5
	.type	getkyokaigap,@function
getkyokaigap:                           # @getkyokaigap
# %bb.0:
	beqz	$a3, .LBB70_2
	.p2align	4, , 16
.LBB70_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	ldx.b	$a4, $a4, $a2
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	addi.d	$a5, $a0, 1
	st.b	$a4, $a0, 0
	move	$a0, $a5
	bnez	$a3, .LBB70_1
.LBB70_2:                               # %._crit_edge
	ret
.Lfunc_end70:
	.size	getkyokaigap, .Lfunc_end70-getkyokaigap
                                        # -- End function
	.globl	new_OpeningGapCount             # -- Begin function new_OpeningGapCount
	.p2align	5
	.type	new_OpeningGapCount,@function
new_OpeningGapCount:                    # @new_OpeningGapCount
# %bb.0:
	beqz	$a4, .LBB71_10
# %bb.1:                                # %.preheader.thread
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB71_9
# %bb.2:                                # %.lr.ph36.preheader
	move	$a0, $zero
	ori	$a1, $zero, 45
	b	.LBB71_4
	.p2align	4, , 16
.LBB71_3:                               # %._crit_edge
                                        #   in Loop: Header=BB71_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s3, .LBB71_9
.LBB71_4:                               # %.lr.ph36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB71_6 Depth 2
	slli.d	$a2, $a0, 3
	fldx.d	$fa0, $s1, $a2
	ldx.bu	$a3, $fp, $a0
	ldx.d	$a2, $s2, $a2
	fcvt.s.d	$fa0, $fa0
	addi.d	$a3, $a3, -45
	sltui	$a5, $a3, 1
	move	$a3, $s0
	move	$a4, $s4
	b	.LBB71_6
	.p2align	4, , 16
.LBB71_5:                               #   in Loop: Header=BB71_6 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a6, -45
	sltui	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	beqz	$a3, .LBB71_3
.LBB71_6:                               #   Parent Loop BB71_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a2, 0
	bne	$a6, $a1, .LBB71_5
# %bb.7:                                #   in Loop: Header=BB71_6 Depth=2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB71_5
# %bb.8:                                #   in Loop: Header=BB71_6 Depth=2
	fld.s	$fa1, $a4, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a4, 0
	b	.LBB71_5
.LBB71_9:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB71_10:                              # %._crit_edge39
	ret
.Lfunc_end71:
	.size	new_OpeningGapCount, .Lfunc_end71-new_OpeningGapCount
                                        # -- End function
	.globl	new_OpeningGapCount_zure        # -- Begin function new_OpeningGapCount_zure
	.p2align	5
	.type	new_OpeningGapCount_zure,@function
new_OpeningGapCount_zure:               # @new_OpeningGapCount_zure
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
	move	$s3, $a4
	addi.w	$a4, $a4, 2
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a3
	move	$s5, $a2
	move	$s4, $a1
	move	$s2, $a0
	beqz	$a4, .LBB72_8
# %bb.1:                                # %.preheader
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB72_19
# %bb.2:                                # %.lr.ph48
	bnez	$s3, .LBB72_9
# %bb.3:                                # %.lr.ph48.split.us.preheader
	bstrpick.d	$a0, $s4, 31, 0
	ori	$a1, $zero, 45
	b	.LBB72_5
	.p2align	4, , 16
.LBB72_4:                               #   in Loop: Header=BB72_5 Depth=1
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 1
	beqz	$a0, .LBB72_19
.LBB72_5:                               # %.lr.ph48.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $fp, 0
	bne	$a2, $a1, .LBB72_4
# %bb.6:                                # %.lr.ph48.split.us
                                        #   in Loop: Header=BB72_5 Depth=1
	ld.bu	$a2, $s0, 0
	beq	$a2, $a1, .LBB72_4
# %bb.7:                                #   in Loop: Header=BB72_5 Depth=1
	fld.d	$fa0, $s1, 0
	fld.s	$fa1, $s2, 0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s2, 0
	b	.LBB72_4
.LBB72_8:                               # %.preheader.thread
	blez	$s4, .LBB72_19
.LBB72_9:                               # %.lr.ph45.preheader
	move	$a0, $zero
	ori	$a1, $zero, 45
	b	.LBB72_11
	.p2align	4, , 16
.LBB72_10:                              #   in Loop: Header=BB72_11 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s4, .LBB72_19
.LBB72_11:                              # %.lr.ph45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_13 Depth 2
	slli.d	$a2, $a0, 3
	fldx.d	$fa0, $s1, $a2
	ldx.bu	$a4, $s0, $a0
	ldx.d	$a3, $s5, $a2
	fcvt.s.d	$fa0, $fa0
	addi.d	$a2, $a4, -45
	sltui	$a6, $a2, 1
	move	$a4, $s3
	move	$a2, $s2
	b	.LBB72_13
	.p2align	4, , 16
.LBB72_12:                              #   in Loop: Header=BB72_13 Depth=2
	addi.w	$a4, $a4, -1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a5, -45
	sltui	$a6, $a6, 1
	addi.d	$a2, $a2, 4
	beqz	$a4, .LBB72_16
.LBB72_13:                              #   Parent Loop BB72_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a3, 0
	bne	$a5, $a1, .LBB72_12
# %bb.14:                               #   in Loop: Header=BB72_13 Depth=2
	andi	$a6, $a6, 1
	bnez	$a6, .LBB72_12
# %bb.15:                               #   in Loop: Header=BB72_13 Depth=2
	fld.s	$fa1, $a2, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a2, 0
	b	.LBB72_12
	.p2align	4, , 16
.LBB72_16:                              # %._crit_edge
                                        #   in Loop: Header=BB72_11 Depth=1
	ldx.bu	$a3, $fp, $a0
	bne	$a3, $a1, .LBB72_10
# %bb.17:                               # %._crit_edge
                                        #   in Loop: Header=BB72_11 Depth=1
	beq	$a5, $a1, .LBB72_10
# %bb.18:                               #   in Loop: Header=BB72_11 Depth=1
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a2, 0
	b	.LBB72_10
.LBB72_19:                              # %._crit_edge49
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
.Lfunc_end72:
	.size	new_OpeningGapCount_zure, .Lfunc_end72-new_OpeningGapCount_zure
                                        # -- End function
	.globl	new_FinalGapCount_zure          # -- Begin function new_FinalGapCount_zure
	.p2align	5
	.type	new_FinalGapCount_zure,@function
new_FinalGapCount_zure:                 # @new_FinalGapCount_zure
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
	move	$s3, $a4
	addi.w	$a4, $a4, 2
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a3
	move	$s5, $a2
	move	$s4, $a1
	move	$s2, $a0
	beqz	$a4, .LBB73_8
# %bb.1:                                # %.preheader
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB73_19
# %bb.2:                                # %.lr.ph46
	bnez	$s3, .LBB73_9
# %bb.3:                                # %.lr.ph46.split.us.preheader
	bstrpick.d	$a0, $s4, 31, 0
	ori	$a1, $zero, 45
	b	.LBB73_5
	.p2align	4, , 16
.LBB73_4:                               #   in Loop: Header=BB73_5 Depth=1
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 1
	beqz	$a0, .LBB73_19
.LBB73_5:                               # %.lr.ph46.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $s0, 0
	bne	$a2, $a1, .LBB73_4
# %bb.6:                                # %.lr.ph46.split.us
                                        #   in Loop: Header=BB73_5 Depth=1
	ld.bu	$a2, $fp, 0
	beq	$a2, $a1, .LBB73_4
# %bb.7:                                #   in Loop: Header=BB73_5 Depth=1
	fld.d	$fa0, $s1, 0
	fld.s	$fa1, $s2, 0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s2, 0
	b	.LBB73_4
.LBB73_8:                               # %.preheader.thread
	blez	$s4, .LBB73_19
.LBB73_9:                               # %.lr.ph43.preheader
	move	$a0, $zero
	ori	$a1, $zero, 45
	b	.LBB73_11
	.p2align	4, , 16
.LBB73_10:                              #   in Loop: Header=BB73_11 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s4, .LBB73_19
.LBB73_11:                              # %.lr.ph43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB73_13 Depth 2
	slli.d	$a2, $a0, 3
	fldx.d	$fa0, $s1, $a2
	ldx.bu	$a4, $s0, $a0
	ldx.d	$a3, $s5, $a2
	fcvt.s.d	$fa0, $fa0
	addi.d	$a2, $a4, -45
	sltui	$a6, $a2, 1
	move	$a4, $s3
	move	$a2, $s2
	b	.LBB73_13
	.p2align	4, , 16
.LBB73_12:                              #   in Loop: Header=BB73_13 Depth=2
	addi.w	$a4, $a4, -1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a5, -45
	sltui	$a6, $a6, 1
	addi.d	$a2, $a2, 4
	beqz	$a4, .LBB73_16
.LBB73_13:                              #   Parent Loop BB73_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a3, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB73_12
# %bb.14:                               #   in Loop: Header=BB73_13 Depth=2
	beq	$a5, $a1, .LBB73_12
# %bb.15:                               #   in Loop: Header=BB73_13 Depth=2
	fld.s	$fa1, $a2, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a2, 0
	b	.LBB73_12
	.p2align	4, , 16
.LBB73_16:                              # %._crit_edge
                                        #   in Loop: Header=BB73_11 Depth=1
	bne	$a5, $a1, .LBB73_10
# %bb.17:                               # %._crit_edge
                                        #   in Loop: Header=BB73_11 Depth=1
	ldx.bu	$a3, $fp, $a0
	beq	$a3, $a1, .LBB73_10
# %bb.18:                               #   in Loop: Header=BB73_11 Depth=1
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a2, 0
	b	.LBB73_10
.LBB73_19:                              # %._crit_edge47
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
.Lfunc_end73:
	.size	new_FinalGapCount_zure, .Lfunc_end73-new_FinalGapCount_zure
                                        # -- End function
	.globl	new_FinalGapCount               # -- Begin function new_FinalGapCount
	.p2align	5
	.type	new_FinalGapCount,@function
new_FinalGapCount:                      # @new_FinalGapCount
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a5
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	beqz	$a4, .LBB74_12
# %bb.1:                                # %.preheader.thread
	move	$s4, $a4
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB74_18
# %bb.2:                                # %.lr.ph42.preheader
	move	$a0, $zero
	ori	$a1, $zero, 45
	b	.LBB74_4
	.p2align	4, , 16
.LBB74_3:                               #   in Loop: Header=BB74_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s2, .LBB74_18
.LBB74_4:                               # %.lr.ph42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_6 Depth 2
	slli.d	$a2, $a0, 3
	ldx.d	$a3, $s1, $a2
	fldx.d	$fa0, $s0, $a2
	ld.bu	$a2, $a3, 0
	fcvt.s.d	$fa0, $fa0
	addi.d	$a2, $a2, -45
	sltui	$a6, $a2, 1
	addi.d	$a3, $a3, 1
	move	$a4, $s4
	move	$a2, $s3
	b	.LBB74_6
	.p2align	4, , 16
.LBB74_5:                               #   in Loop: Header=BB74_6 Depth=2
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a5, -45
	sltui	$a6, $a6, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 1
	beqz	$a4, .LBB74_9
.LBB74_6:                               #   Parent Loop BB74_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a3, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB74_5
# %bb.7:                                #   in Loop: Header=BB74_6 Depth=2
	beq	$a5, $a1, .LBB74_5
# %bb.8:                                #   in Loop: Header=BB74_6 Depth=2
	fld.s	$fa1, $a2, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a2, 0
	b	.LBB74_5
	.p2align	4, , 16
.LBB74_9:                               # %._crit_edge
                                        #   in Loop: Header=BB74_4 Depth=1
	bne	$a5, $a1, .LBB74_3
# %bb.10:                               # %._crit_edge
                                        #   in Loop: Header=BB74_4 Depth=1
	ldx.bu	$a3, $fp, $a0
	beq	$a3, $a1, .LBB74_3
# %bb.11:                               #   in Loop: Header=BB74_4 Depth=1
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a2, 0
	b	.LBB74_3
.LBB74_12:                              # %.preheader
	blez	$s2, .LBB74_18
# %bb.13:                               # %.lr.ph45.split.us.preheader
	ori	$a0, $zero, 45
	b	.LBB74_15
	.p2align	4, , 16
.LBB74_14:                              #   in Loop: Header=BB74_15 Depth=1
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 1
	beqz	$s2, .LBB74_18
.LBB74_15:                              # %.lr.ph45.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ld.bu	$a1, $a1, 0
	bne	$a1, $a0, .LBB74_14
# %bb.16:                               # %.lr.ph45.split.us
                                        #   in Loop: Header=BB74_15 Depth=1
	ld.bu	$a1, $fp, 0
	beq	$a1, $a0, .LBB74_14
# %bb.17:                               #   in Loop: Header=BB74_15 Depth=1
	fld.d	$fa0, $s0, 0
	fld.s	$fa1, $s3, 0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s3, 0
	b	.LBB74_14
.LBB74_18:                              # %._crit_edge46
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end74:
	.size	new_FinalGapCount, .Lfunc_end74-new_FinalGapCount
                                        # -- End function
	.globl	st_OpeningGapCount              # -- Begin function st_OpeningGapCount
	.p2align	5
	.type	st_OpeningGapCount,@function
st_OpeningGapCount:                     # @st_OpeningGapCount
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a0
	beqz	$a4, .LBB75_9
# %bb.1:                                # %.preheader.thread
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	bstrpick.d	$a0, $fp, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB75_9
# %bb.2:                                # %.lr.ph38.preheader
	move	$a0, $zero
	ori	$a1, $zero, 45
	b	.LBB75_4
	.p2align	4, , 16
.LBB75_3:                               # %._crit_edge
                                        #   in Loop: Header=BB75_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s3, .LBB75_9
.LBB75_4:                               # %.lr.ph38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_6 Depth 2
	slli.d	$a2, $a0, 3
	fldx.d	$fa0, $s1, $a2
	ldx.d	$a2, $s2, $a2
	move	$a5, $zero
	fcvt.s.d	$fa0, $fa0
	move	$a3, $fp
	move	$a4, $s0
	b	.LBB75_6
	.p2align	4, , 16
.LBB75_5:                               #   in Loop: Header=BB75_6 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a6, -45
	sltui	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	beqz	$a3, .LBB75_3
.LBB75_6:                               #   Parent Loop BB75_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a2, 0
	andi	$a5, $a5, 1
	bnez	$a5, .LBB75_5
# %bb.7:                                #   in Loop: Header=BB75_6 Depth=2
	bne	$a6, $a1, .LBB75_5
# %bb.8:                                #   in Loop: Header=BB75_6 Depth=2
	fld.s	$fa1, $a4, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a4, 0
	b	.LBB75_5
.LBB75_9:                               # %._crit_edge41
	slli.d	$a0, $fp, 2
	stx.w	$zero, $s0, $a0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end75:
	.size	st_OpeningGapCount, .Lfunc_end75-st_OpeningGapCount
                                        # -- End function
	.globl	st_FinalGapCount_zure           # -- Begin function st_FinalGapCount_zure
	.p2align	5
	.type	st_FinalGapCount_zure,@function
st_FinalGapCount_zure:                  # @st_FinalGapCount_zure
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a4
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, 1
	slli.d	$a5, $a4, 31
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$s3, $a0
	bgez	$a5, .LBB76_3
# %bb.1:                                # %.preheader.thread
	blez	$s2, .LBB76_18
# %bb.2:                                # %.lr.ph43.thread
	addi.d	$a0, $s3, 4
	b	.LBB76_5
.LBB76_3:                               # %.preheader
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB76_18
# %bb.4:                                # %.lr.ph43
	addi.d	$a0, $s3, 4
	beqz	$s1, .LBB76_14
.LBB76_5:                               # %.lr.ph40.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB76_7
	.p2align	4, , 16
.LBB76_6:                               #   in Loop: Header=BB76_7 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s2, .LBB76_18
.LBB76_7:                               # %.lr.ph40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_9 Depth 2
	slli.d	$a3, $a1, 3
	ldx.d	$a4, $s0, $a3
	fldx.d	$fa0, $fp, $a3
	ld.bu	$a3, $a4, 0
	fcvt.s.d	$fa0, $fa0
	addi.d	$a3, $a3, -45
	sltui	$a7, $a3, 1
	addi.d	$a4, $a4, 1
	move	$a5, $s1
	move	$a3, $a0
	b	.LBB76_9
	.p2align	4, , 16
.LBB76_8:                               #   in Loop: Header=BB76_9 Depth=2
	addi.w	$a5, $a5, -1
	addi.d	$a7, $a6, -45
	sltui	$a7, $a7, 1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 1
	beqz	$a5, .LBB76_12
.LBB76_9:                               #   Parent Loop BB76_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a4, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB76_8
# %bb.10:                               #   in Loop: Header=BB76_9 Depth=2
	beq	$a6, $a2, .LBB76_8
# %bb.11:                               #   in Loop: Header=BB76_9 Depth=2
	fld.s	$fa1, $a3, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a3, 0
	b	.LBB76_8
	.p2align	4, , 16
.LBB76_12:                              # %._crit_edge
                                        #   in Loop: Header=BB76_7 Depth=1
	bne	$a6, $a2, .LBB76_6
# %bb.13:                               #   in Loop: Header=BB76_7 Depth=1
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a3, 0
	b	.LBB76_6
.LBB76_14:                              # %.lr.ph43.split.us.preheader
	bstrpick.d	$a1, $s2, 31, 0
	ori	$a2, $zero, 45
	b	.LBB76_16
	.p2align	4, , 16
.LBB76_15:                              #   in Loop: Header=BB76_16 Depth=1
	addi.d	$fp, $fp, 8
	addi.d	$a1, $a1, -1
	addi.d	$s0, $s0, 8
	beqz	$a1, .LBB76_18
.LBB76_16:                              # %.lr.ph43.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s0, 0
	ld.bu	$a3, $a3, 0
	bne	$a3, $a2, .LBB76_15
# %bb.17:                               #   in Loop: Header=BB76_16 Depth=1
	fld.d	$fa0, $fp, 0
	fld.s	$fa1, $a0, 0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 0
	b	.LBB76_15
.LBB76_18:                              # %._crit_edge44
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end76:
	.size	st_FinalGapCount_zure, .Lfunc_end76-st_FinalGapCount_zure
                                        # -- End function
	.globl	st_FinalGapCount                # -- Begin function st_FinalGapCount
	.p2align	5
	.type	st_FinalGapCount,@function
st_FinalGapCount:                       # @st_FinalGapCount
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beqz	$a4, .LBB77_11
# %bb.1:                                # %.preheader.thread
	move	$s3, $a4
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB77_16
# %bb.2:                                # %.lr.ph39.preheader
	move	$a0, $zero
	ori	$a1, $zero, 45
	b	.LBB77_4
	.p2align	4, , 16
.LBB77_3:                               #   in Loop: Header=BB77_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s1, .LBB77_16
.LBB77_4:                               # %.lr.ph39
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_6 Depth 2
	slli.d	$a2, $a0, 3
	ldx.d	$a3, $s0, $a2
	fldx.d	$fa0, $fp, $a2
	ld.bu	$a2, $a3, 0
	fcvt.s.d	$fa0, $fa0
	addi.d	$a2, $a2, -45
	sltui	$a6, $a2, 1
	addi.d	$a3, $a3, 1
	move	$a4, $s3
	move	$a2, $s2
	b	.LBB77_6
	.p2align	4, , 16
.LBB77_5:                               #   in Loop: Header=BB77_6 Depth=2
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a5, -45
	sltui	$a6, $a6, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 1
	beqz	$a4, .LBB77_9
.LBB77_6:                               #   Parent Loop BB77_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a3, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB77_5
# %bb.7:                                #   in Loop: Header=BB77_6 Depth=2
	beq	$a5, $a1, .LBB77_5
# %bb.8:                                #   in Loop: Header=BB77_6 Depth=2
	fld.s	$fa1, $a2, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a2, 0
	b	.LBB77_5
	.p2align	4, , 16
.LBB77_9:                               # %._crit_edge
                                        #   in Loop: Header=BB77_4 Depth=1
	bne	$a5, $a1, .LBB77_3
# %bb.10:                               #   in Loop: Header=BB77_4 Depth=1
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a2, 0
	b	.LBB77_3
.LBB77_11:                              # %.preheader
	blez	$s1, .LBB77_16
# %bb.12:                               # %.lr.ph42.split.us.preheader
	ori	$a0, $zero, 45
	b	.LBB77_14
	.p2align	4, , 16
.LBB77_13:                              #   in Loop: Header=BB77_14 Depth=1
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	beqz	$s1, .LBB77_16
.LBB77_14:                              # %.lr.ph42.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ld.bu	$a1, $a1, 0
	bne	$a1, $a0, .LBB77_13
# %bb.15:                               #   in Loop: Header=BB77_14 Depth=1
	fld.d	$fa0, $fp, 0
	fld.s	$fa1, $s2, 0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s2, 0
	b	.LBB77_13
.LBB77_16:                              # %._crit_edge43
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end77:
	.size	st_FinalGapCount, .Lfunc_end77-st_FinalGapCount
                                        # -- End function
	.globl	getGapPattern                   # -- Begin function getGapPattern
	.p2align	5
	.type	getGapPattern,@function
getGapPattern:                          # @getGapPattern
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a4
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$s4, $a4, 1
	slli.d	$a4, $s4, 31
	bltz	$a4, .LBB78_12
# %bb.1:                                # %.preheader34.thread
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s0, $a0
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB78_9
# %bb.2:                                # %.lr.ph42.preheader
	move	$a0, $zero
	ori	$a1, $zero, 45
	b	.LBB78_4
	.p2align	4, , 16
.LBB78_3:                               # %._crit_edge
                                        #   in Loop: Header=BB78_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s3, .LBB78_9
.LBB78_4:                               # %.lr.ph42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_6 Depth 2
	slli.d	$a2, $a0, 3
	ldx.d	$a3, $s2, $a2
	fldx.d	$fa0, $s1, $a2
	ld.bu	$a2, $a3, 0
	fcvt.s.d	$fa0, $fa0
	addi.d	$a2, $a2, -45
	sltui	$a5, $a2, 1
	addi.d	$a2, $a3, 1
	move	$a3, $s4
	move	$a4, $s0
	b	.LBB78_6
	.p2align	4, , 16
.LBB78_5:                               #   in Loop: Header=BB78_6 Depth=2
	addi.d	$a5, $a6, -45
	sltui	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	beqz	$a3, .LBB78_3
.LBB78_6:                               #   Parent Loop BB78_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a2, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB78_5
# %bb.7:                                #   in Loop: Header=BB78_6 Depth=2
	beq	$a6, $a1, .LBB78_5
# %bb.8:                                #   in Loop: Header=BB78_6 Depth=2
	fld.s	$fa1, $a4, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a4, 0
	b	.LBB78_5
.LBB78_9:                               # %.preheader
	blez	$fp, .LBB78_12
# %bb.10:                               # %.lr.ph46.preheader
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s3, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s1, $a0, %pc_lo12(.L.str.33)
	move	$s2, $zero
.LBB78_11:                              # %.lr.ph46
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s0, 0
	ld.d	$a0, $s3, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 4
	bnez	$fp, .LBB78_11
.LBB78_12:                              # %._crit_edge47
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end78:
	.size	getGapPattern, .Lfunc_end78-getGapPattern
                                        # -- End function
	.globl	getdigapfreq_st                 # -- Begin function getdigapfreq_st
	.p2align	5
	.type	getdigapfreq_st,@function
getdigapfreq_st:                        # @getdigapfreq_st
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s3, $a0
	bltz	$a4, .LBB79_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $s2, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB79_2:                               # %.preheader
	blez	$s1, .LBB79_11
# %bb.3:                                # %.preheader
	ori	$a0, $zero, 2
	blt	$s2, $a0, .LBB79_11
# %bb.4:                                # %.lr.ph25.us.preheader
	move	$a0, $zero
	addi.d	$a1, $s3, 4
	addi.d	$a2, $s2, -1
	ori	$a3, $zero, 45
	b	.LBB79_6
	.p2align	4, , 16
.LBB79_5:                               # %._crit_edge.us
                                        #   in Loop: Header=BB79_6 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s1, .LBB79_11
.LBB79_6:                               # %.lr.ph25.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB79_8 Depth 2
	slli.d	$a4, $a0, 3
	fldx.d	$fa0, $fp, $a4
	ldx.d	$a4, $s0, $a4
	fcvt.s.d	$fa0, $fa0
	addi.d	$a4, $a4, 1
	move	$a5, $a2
	move	$a6, $a1
	b	.LBB79_8
	.p2align	4, , 16
.LBB79_7:                               #   in Loop: Header=BB79_8 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 4
	beqz	$a5, .LBB79_5
.LBB79_8:                               #   Parent Loop BB79_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a4, 0
	bne	$a7, $a3, .LBB79_7
# %bb.9:                                #   in Loop: Header=BB79_8 Depth=2
	ld.bu	$a7, $a4, -1
	bne	$a7, $a3, .LBB79_7
# %bb.10:                               #   in Loop: Header=BB79_8 Depth=2
	fld.s	$fa1, $a6, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a6, 0
	b	.LBB79_7
.LBB79_11:                              # %._crit_edge28
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end79:
	.size	getdigapfreq_st, .Lfunc_end79-getdigapfreq_st
                                        # -- End function
	.globl	getdiaminofreq_x                # -- Begin function getdiaminofreq_x
	.p2align	5
	.type	getdiaminofreq_x,@function
getdiaminofreq_x:                       # @getdiaminofreq_x
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	addi.w	$a5, $zero, -1
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	blt	$a4, $a5, .LBB80_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $fp, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB80_2:                               # %.preheader
	blez	$s2, .LBB80_21
# %bb.3:                                # %.lr.ph40
	ori	$a1, $zero, 1
	alsl.d	$a0, $fp, $s3, 2
	bge	$a1, $fp, .LBB80_15
# %bb.4:                                # %.lr.ph40.split.us.preheader
	move	$a1, $zero
	addi.d	$a2, $s3, 4
	addi.d	$a3, $fp, -1
	ori	$a4, $zero, 45
	b	.LBB80_6
	.p2align	4, , 16
.LBB80_5:                               #   in Loop: Header=BB80_6 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s2, .LBB80_21
.LBB80_6:                               # %.lr.ph40.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB80_10 Depth 2
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $s1, $a6
	fldx.d	$fa0, $s0, $a6
	ld.bu	$a6, $a5, 0
	fcvt.s.d	$fa0, $fa0
	beq	$a6, $a4, .LBB80_8
# %bb.7:                                #   in Loop: Header=BB80_6 Depth=1
	fld.s	$fa1, $s3, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s3, 0
.LBB80_8:                               # %.lr.ph38.us.preheader
                                        #   in Loop: Header=BB80_6 Depth=1
	addi.d	$a6, $a5, 1
	move	$a7, $a3
	move	$t0, $a2
	b	.LBB80_10
	.p2align	4, , 16
.LBB80_9:                               #   in Loop: Header=BB80_10 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	beqz	$a7, .LBB80_13
.LBB80_10:                              # %.lr.ph38.us
                                        #   Parent Loop BB80_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t1, $a6, 0
	beq	$t1, $a4, .LBB80_9
# %bb.11:                               #   in Loop: Header=BB80_10 Depth=2
	ld.bu	$t1, $a6, -1
	beq	$t1, $a4, .LBB80_9
# %bb.12:                               #   in Loop: Header=BB80_10 Depth=2
	fld.s	$fa1, $t0, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $t0, 0
	b	.LBB80_9
	.p2align	4, , 16
.LBB80_13:                              # %._crit_edge.us
                                        #   in Loop: Header=BB80_6 Depth=1
	add.d	$a5, $a5, $fp
	ld.bu	$a5, $a5, -1
	beq	$a5, $a4, .LBB80_5
# %bb.14:                               #   in Loop: Header=BB80_6 Depth=1
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 0
	b	.LBB80_5
.LBB80_15:
	ori	$a1, $zero, 45
	b	.LBB80_17
	.p2align	4, , 16
.LBB80_16:                              #   in Loop: Header=BB80_17 Depth=1
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 8
	beqz	$s2, .LBB80_21
.LBB80_17:                              # %.lr.ph40.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s1, 0
	fld.d	$fa0, $s0, 0
	ld.bu	$a3, $a2, 0
	fcvt.s.d	$fa0, $fa0
	beq	$a3, $a1, .LBB80_19
# %bb.18:                               #   in Loop: Header=BB80_17 Depth=1
	fld.s	$fa1, $s3, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s3, 0
.LBB80_19:                              #   in Loop: Header=BB80_17 Depth=1
	add.d	$a2, $a2, $fp
	ld.bu	$a2, $a2, -1
	beq	$a2, $a1, .LBB80_16
# %bb.20:                               #   in Loop: Header=BB80_17 Depth=1
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 0
	b	.LBB80_16
.LBB80_21:                              # %._crit_edge41
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end80:
	.size	getdiaminofreq_x, .Lfunc_end80-getdiaminofreq_x
                                        # -- End function
	.globl	getdiaminofreq_st               # -- Begin function getdiaminofreq_st
	.p2align	5
	.type	getdiaminofreq_st,@function
getdiaminofreq_st:                      # @getdiaminofreq_st
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s3, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bltz	$a4, .LBB81_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $s3, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB81_2:                               # %.preheader
	blez	$s1, .LBB81_17
# %bb.3:                                # %.lr.ph38
	ori	$a1, $zero, 1
	alsl.d	$a0, $s3, $s2, 2
	bge	$a1, $s3, .LBB81_13
# %bb.4:                                # %.lr.ph38.split.us.preheader
	move	$a1, $zero
	addi.d	$a2, $s2, 4
	addi.d	$a3, $s3, -1
	ori	$a4, $zero, 45
	b	.LBB81_6
	.p2align	4, , 16
.LBB81_5:                               # %._crit_edge.us
                                        #   in Loop: Header=BB81_6 Depth=1
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa1, $fa0
	addi.d	$a1, $a1, 1
	fst.s	$fa0, $a0, 0
	beq	$a1, $s1, .LBB81_17
.LBB81_6:                               # %.lr.ph38.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB81_10 Depth 2
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $s0, $a6
	fldx.d	$fa0, $fp, $a6
	ld.bu	$a6, $a5, 0
	fcvt.s.d	$fa0, $fa0
	beq	$a6, $a4, .LBB81_8
# %bb.7:                                #   in Loop: Header=BB81_6 Depth=1
	fld.s	$fa1, $s2, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s2, 0
.LBB81_8:                               # %.lr.ph36.us.preheader
                                        #   in Loop: Header=BB81_6 Depth=1
	addi.d	$a5, $a5, 1
	move	$a6, $a3
	move	$a7, $a2
	b	.LBB81_10
	.p2align	4, , 16
.LBB81_9:                               #   in Loop: Header=BB81_10 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	beqz	$a6, .LBB81_5
.LBB81_10:                              # %.lr.ph36.us
                                        #   Parent Loop BB81_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t0, $a5, 0
	beq	$t0, $a4, .LBB81_9
# %bb.11:                               #   in Loop: Header=BB81_10 Depth=2
	ld.bu	$t0, $a5, -1
	beq	$t0, $a4, .LBB81_9
# %bb.12:                               #   in Loop: Header=BB81_10 Depth=2
	fld.s	$fa1, $a7, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a7, 0
	b	.LBB81_9
.LBB81_13:
	ori	$a1, $zero, 45
	b	.LBB81_15
	.p2align	4, , 16
.LBB81_14:                              #   in Loop: Header=BB81_15 Depth=1
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	beqz	$s1, .LBB81_17
.LBB81_15:                              # %.lr.ph38.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s0, 0
	fld.d	$fa0, $fp, 0
	ld.bu	$a2, $a2, 0
	fcvt.s.d	$fa0, $fa0
	beq	$a2, $a1, .LBB81_14
# %bb.16:                               #   in Loop: Header=BB81_15 Depth=1
	fld.s	$fa1, $s2, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s2, 0
	b	.LBB81_14
.LBB81_17:                              # %._crit_edge39
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end81:
	.size	getdiaminofreq_st, .Lfunc_end81-getdiaminofreq_st
                                        # -- End function
	.globl	getdigapfreq_part               # -- Begin function getdigapfreq_part
	.p2align	5
	.type	getdigapfreq_part,@function
getdigapfreq_part:                      # @getdigapfreq_part
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
	addi.w	$a7, $zero, -1
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	blt	$a4, $a7, .LBB82_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $s1, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB82_2:                               # %.preheader
	blez	$s4, .LBB82_25
# %bb.3:                                # %.lr.ph41
	ori	$a1, $zero, 1
	alsl.d	$a0, $s1, $s5, 2
	bge	$a1, $s1, .LBB82_17
# %bb.4:                                # %.lr.ph41.split.us.preheader
	move	$a1, $zero
	addi.d	$a2, $s5, 4
	addi.d	$a3, $s1, -1
	ori	$a4, $zero, 45
	b	.LBB82_6
	.p2align	4, , 16
.LBB82_5:                               #   in Loop: Header=BB82_6 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB82_25
.LBB82_6:                               # %.lr.ph41.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB82_11 Depth 2
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $s3, $a6
	fldx.d	$fa0, $s2, $a6
	ld.bu	$a6, $a5, 0
	fcvt.s.d	$fa0, $fa0
	bne	$a6, $a4, .LBB82_9
# %bb.7:                                #   in Loop: Header=BB82_6 Depth=1
	ldx.bu	$a6, $s0, $a1
	bne	$a6, $a4, .LBB82_9
# %bb.8:                                #   in Loop: Header=BB82_6 Depth=1
	fld.s	$fa1, $s5, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s5, 0
.LBB82_9:                               # %.lr.ph39.us.preheader
                                        #   in Loop: Header=BB82_6 Depth=1
	addi.d	$a6, $a5, 1
	move	$a7, $a3
	move	$t0, $a2
	b	.LBB82_11
	.p2align	4, , 16
.LBB82_10:                              #   in Loop: Header=BB82_11 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	beqz	$a7, .LBB82_14
.LBB82_11:                              # %.lr.ph39.us
                                        #   Parent Loop BB82_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t1, $a6, 0
	bne	$t1, $a4, .LBB82_10
# %bb.12:                               #   in Loop: Header=BB82_11 Depth=2
	ld.bu	$t1, $a6, -1
	bne	$t1, $a4, .LBB82_10
# %bb.13:                               #   in Loop: Header=BB82_11 Depth=2
	fld.s	$fa1, $t0, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $t0, 0
	b	.LBB82_10
	.p2align	4, , 16
.LBB82_14:                              # %._crit_edge.us
                                        #   in Loop: Header=BB82_6 Depth=1
	ldx.bu	$a6, $fp, $a1
	bne	$a6, $a4, .LBB82_5
# %bb.15:                               #   in Loop: Header=BB82_6 Depth=1
	add.d	$a5, $a5, $s1
	ld.bu	$a5, $a5, -1
	bne	$a5, $a4, .LBB82_5
# %bb.16:                               #   in Loop: Header=BB82_6 Depth=1
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 0
	b	.LBB82_5
.LBB82_17:
	ori	$a1, $zero, 45
	b	.LBB82_19
	.p2align	4, , 16
.LBB82_18:                              #   in Loop: Header=BB82_19 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 1
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	beqz	$s4, .LBB82_25
.LBB82_19:                              # %.lr.ph41.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s3, 0
	fld.d	$fa0, $s2, 0
	ld.bu	$a3, $a2, 0
	fcvt.s.d	$fa0, $fa0
	bne	$a3, $a1, .LBB82_22
# %bb.20:                               #   in Loop: Header=BB82_19 Depth=1
	ld.bu	$a3, $s0, 0
	bne	$a3, $a1, .LBB82_22
# %bb.21:                               #   in Loop: Header=BB82_19 Depth=1
	fld.s	$fa1, $s5, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s5, 0
.LBB82_22:                              #   in Loop: Header=BB82_19 Depth=1
	ld.bu	$a3, $fp, 0
	bne	$a3, $a1, .LBB82_18
# %bb.23:                               #   in Loop: Header=BB82_19 Depth=1
	add.d	$a2, $a2, $s1
	ld.bu	$a2, $a2, -1
	bne	$a2, $a1, .LBB82_18
# %bb.24:                               #   in Loop: Header=BB82_19 Depth=1
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 0
	b	.LBB82_18
.LBB82_25:                              # %._crit_edge42
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
.Lfunc_end82:
	.size	getdigapfreq_part, .Lfunc_end82-getdigapfreq_part
                                        # -- End function
	.globl	getdiaminofreq_part             # -- Begin function getdiaminofreq_part
	.p2align	5
	.type	getdiaminofreq_part,@function
getdiaminofreq_part:                    # @getdiaminofreq_part
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
	addi.w	$a7, $zero, -1
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	blt	$a4, $a7, .LBB83_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $s1, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB83_2:                               # %.preheader
	blez	$s4, .LBB83_25
# %bb.3:                                # %.lr.ph46
	ori	$a1, $zero, 1
	alsl.d	$a0, $s1, $s5, 2
	bge	$a1, $s1, .LBB83_17
# %bb.4:                                # %.lr.ph46.split.us.preheader
	move	$a1, $zero
	addi.d	$a2, $s5, 4
	addi.d	$a3, $s1, -1
	ori	$a4, $zero, 45
	b	.LBB83_6
	.p2align	4, , 16
.LBB83_5:                               #   in Loop: Header=BB83_6 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB83_25
.LBB83_6:                               # %.lr.ph46.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB83_11 Depth 2
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $s3, $a6
	fldx.d	$fa0, $s2, $a6
	ld.bu	$a6, $a5, 0
	fcvt.s.d	$fa0, $fa0
	beq	$a6, $a4, .LBB83_9
# %bb.7:                                #   in Loop: Header=BB83_6 Depth=1
	ldx.bu	$a6, $s0, $a1
	beq	$a6, $a4, .LBB83_9
# %bb.8:                                #   in Loop: Header=BB83_6 Depth=1
	fld.s	$fa1, $s5, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s5, 0
.LBB83_9:                               # %.lr.ph44.us.preheader
                                        #   in Loop: Header=BB83_6 Depth=1
	addi.d	$a6, $a5, 1
	move	$a7, $a3
	move	$t0, $a2
	b	.LBB83_11
	.p2align	4, , 16
.LBB83_10:                              #   in Loop: Header=BB83_11 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	beqz	$a7, .LBB83_14
.LBB83_11:                              # %.lr.ph44.us
                                        #   Parent Loop BB83_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t1, $a6, 0
	beq	$t1, $a4, .LBB83_10
# %bb.12:                               #   in Loop: Header=BB83_11 Depth=2
	ld.bu	$t1, $a6, -1
	beq	$t1, $a4, .LBB83_10
# %bb.13:                               #   in Loop: Header=BB83_11 Depth=2
	fld.s	$fa1, $t0, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $t0, 0
	b	.LBB83_10
	.p2align	4, , 16
.LBB83_14:                              # %._crit_edge.us
                                        #   in Loop: Header=BB83_6 Depth=1
	ldx.bu	$a6, $fp, $a1
	beq	$a6, $a4, .LBB83_5
# %bb.15:                               #   in Loop: Header=BB83_6 Depth=1
	add.d	$a5, $a5, $s1
	ld.bu	$a5, $a5, -1
	beq	$a5, $a4, .LBB83_5
# %bb.16:                               #   in Loop: Header=BB83_6 Depth=1
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 0
	b	.LBB83_5
.LBB83_17:
	ori	$a1, $zero, 45
	b	.LBB83_19
	.p2align	4, , 16
.LBB83_18:                              #   in Loop: Header=BB83_19 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 1
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	beqz	$s4, .LBB83_25
.LBB83_19:                              # %.lr.ph46.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s3, 0
	fld.d	$fa0, $s2, 0
	ld.bu	$a3, $a2, 0
	fcvt.s.d	$fa0, $fa0
	beq	$a3, $a1, .LBB83_22
# %bb.20:                               #   in Loop: Header=BB83_19 Depth=1
	ld.bu	$a3, $s0, 0
	beq	$a3, $a1, .LBB83_22
# %bb.21:                               #   in Loop: Header=BB83_19 Depth=1
	fld.s	$fa1, $s5, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s5, 0
.LBB83_22:                              #   in Loop: Header=BB83_19 Depth=1
	ld.bu	$a3, $fp, 0
	beq	$a3, $a1, .LBB83_18
# %bb.23:                               #   in Loop: Header=BB83_19 Depth=1
	add.d	$a2, $a2, $s1
	ld.bu	$a2, $a2, -1
	beq	$a2, $a1, .LBB83_18
# %bb.24:                               #   in Loop: Header=BB83_19 Depth=1
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 0
	b	.LBB83_18
.LBB83_25:                              # %._crit_edge47
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
.Lfunc_end83:
	.size	getdiaminofreq_part, .Lfunc_end83-getdiaminofreq_part
                                        # -- End function
	.globl	getgapfreq_zure_part            # -- Begin function getgapfreq_zure_part
	.p2align	5
	.type	getgapfreq_zure_part,@function
getgapfreq_zure_part:                   # @getgapfreq_zure_part
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a6, $zero, -1
	move	$fp, $a5
	move	$s3, $a4
	move	$s0, $a3
	move	$s4, $a2
	move	$s1, $a1
	move	$s2, $a0
	blt	$a4, $a6, .LBB84_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $s3, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB84_2:                               # %.preheader
	blez	$s1, .LBB84_16
# %bb.3:                                # %.lr.ph27
	blez	$s3, .LBB84_12
# %bb.4:                                # %.lr.ph27.split.us.preheader
	move	$a0, $zero
	addi.d	$a1, $s2, 4
	ori	$a2, $zero, 45
	b	.LBB84_6
	.p2align	4, , 16
.LBB84_5:                               # %._crit_edge.us
                                        #   in Loop: Header=BB84_6 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s1, .LBB84_16
.LBB84_6:                               # %.lr.ph27.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB84_10 Depth 2
	slli.d	$a3, $a0, 3
	fldx.d	$fa0, $s0, $a3
	ldx.bu	$a4, $fp, $a0
	fcvt.s.d	$fa0, $fa0
	bne	$a4, $a2, .LBB84_8
# %bb.7:                                #   in Loop: Header=BB84_6 Depth=1
	fld.s	$fa1, $s2, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s2, 0
.LBB84_8:                               # %.lr.ph25.us
                                        #   in Loop: Header=BB84_6 Depth=1
	ldx.d	$a3, $s4, $a3
	move	$a4, $s3
	move	$a5, $a1
	b	.LBB84_10
	.p2align	4, , 16
.LBB84_9:                               #   in Loop: Header=BB84_10 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	beqz	$a4, .LBB84_5
.LBB84_10:                              #   Parent Loop BB84_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a3, 0
	bne	$a6, $a2, .LBB84_9
# %bb.11:                               #   in Loop: Header=BB84_10 Depth=2
	fld.s	$fa1, $a5, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a5, 0
	b	.LBB84_9
.LBB84_12:
	ori	$a0, $zero, 45
	b	.LBB84_14
	.p2align	4, , 16
.LBB84_13:                              #   in Loop: Header=BB84_14 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	beqz	$s1, .LBB84_16
.LBB84_14:                              # %.lr.ph27.split
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $fp, 0
	bne	$a1, $a0, .LBB84_13
# %bb.15:                               #   in Loop: Header=BB84_14 Depth=1
	fld.d	$fa0, $s0, 0
	fld.s	$fa1, $s2, 0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s2, 0
	b	.LBB84_13
.LBB84_16:                              # %._crit_edge28
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end84:
	.size	getgapfreq_zure_part, .Lfunc_end84-getgapfreq_zure_part
                                        # -- End function
	.globl	getgapfreq_zure                 # -- Begin function getgapfreq_zure
	.p2align	5
	.type	getgapfreq_zure,@function
getgapfreq_zure:                        # @getgapfreq_zure
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$s2, $a0
	bltz	$a4, .LBB85_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $fp, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB85_2:                               # %.preheader
	blez	$s3, .LBB85_10
# %bb.3:                                # %.preheader
	blez	$fp, .LBB85_10
# %bb.4:                                # %.lr.ph25.us.preheader
	move	$a0, $zero
	addi.d	$a1, $s2, 4
	ori	$a2, $zero, 45
	b	.LBB85_6
	.p2align	4, , 16
.LBB85_5:                               # %._crit_edge.us
                                        #   in Loop: Header=BB85_6 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s3, .LBB85_10
.LBB85_6:                               # %.lr.ph25.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB85_8 Depth 2
	slli.d	$a3, $a0, 3
	fldx.d	$fa0, $s0, $a3
	ldx.d	$a3, $s1, $a3
	fcvt.s.d	$fa0, $fa0
	move	$a4, $fp
	move	$a5, $a1
	b	.LBB85_8
	.p2align	4, , 16
.LBB85_7:                               #   in Loop: Header=BB85_8 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	beqz	$a4, .LBB85_5
.LBB85_8:                               #   Parent Loop BB85_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a3, 0
	bne	$a6, $a2, .LBB85_7
# %bb.9:                                #   in Loop: Header=BB85_8 Depth=2
	fld.s	$fa1, $a5, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a5, 0
	b	.LBB85_7
.LBB85_10:                              # %._crit_edge28
	alsl.d	$a0, $fp, $s2, 2
	st.w	$zero, $a0, 4
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end85:
	.size	getgapfreq_zure, .Lfunc_end85-getgapfreq_zure
                                        # -- End function
	.globl	getgapfreq                      # -- Begin function getgapfreq
	.p2align	5
	.type	getgapfreq,@function
getgapfreq:                             # @getgapfreq
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s0, $a0
	bltz	$a4, .LBB86_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $fp, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 2
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB86_2:                               # %.preheader
	blez	$s3, .LBB86_10
# %bb.3:                                # %.preheader
	blez	$fp, .LBB86_10
# %bb.4:                                # %.lr.ph24.us.preheader
	move	$a0, $zero
	ori	$a1, $zero, 45
	b	.LBB86_6
	.p2align	4, , 16
.LBB86_5:                               # %._crit_edge.us
                                        #   in Loop: Header=BB86_6 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s3, .LBB86_10
.LBB86_6:                               # %.lr.ph24.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB86_8 Depth 2
	slli.d	$a2, $a0, 3
	fldx.d	$fa0, $s1, $a2
	ldx.d	$a2, $s2, $a2
	fcvt.s.d	$fa0, $fa0
	move	$a3, $fp
	move	$a4, $s0
	b	.LBB86_8
	.p2align	4, , 16
.LBB86_7:                               #   in Loop: Header=BB86_8 Depth=2
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	beqz	$a3, .LBB86_5
.LBB86_8:                               #   Parent Loop BB86_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a2, 0
	bne	$a5, $a1, .LBB86_7
# %bb.9:                                #   in Loop: Header=BB86_8 Depth=2
	fld.s	$fa1, $a4, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a4, 0
	b	.LBB86_7
.LBB86_10:                              # %._crit_edge27
	slli.d	$a0, $fp, 2
	stx.w	$zero, $s0, $a0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end86:
	.size	getgapfreq, .Lfunc_end86-getgapfreq
                                        # -- End function
	.globl	st_getGapPattern                # -- Begin function st_getGapPattern
	.p2align	5
	.type	st_getGapPattern,@function
st_getGapPattern:                       # @st_getGapPattern
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	addi.w	$fp, $zero, -1
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $a1
	move	$s8, $a0
	beq	$a4, $fp, .LBB87_33
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a4
	move	$s1, $s8
	b	.LBB87_3
	.p2align	4, , 16
.LBB87_2:                               #   in Loop: Header=BB87_3 Depth=1
	addi.d	$a0, $s1, 8
	addi.w	$fp, $fp, 1
	st.d	$zero, $s1, 0
	move	$s1, $a0
	beq	$s0, $fp, .LBB87_5
.LBB87_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB87_2
# %bb.4:                                #   in Loop: Header=BB87_3 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB87_2
.LBB87_5:                               # %.preheader128
	blez	$s2, .LBB87_25
# %bb.6:                                # %.lr.ph144
	bltz	$s0, .LBB87_34
# %bb.7:                                # %.lr.ph142.preheader
	move	$a0, $zero
	ori	$s5, $zero, 0
	lu32i.d	$s5, -1
	movgr2fr.w	$fs0, $zero
	addi.w	$s6, $zero, -1
	ori	$s7, $zero, 45
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB87_9
	.p2align	4, , 16
.LBB87_8:                               # %._crit_edge
                                        #   in Loop: Header=BB87_9 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $s2, .LBB87_25
.LBB87_9:                               # %.lr.ph142
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_12 Depth 2
                                        #       Child Loop BB87_19 Depth 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	fldx.d	$fa0, $a1, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$s1, $a1, $a0
	move	$s3, $zero
	move	$a0, $zero
	move	$a1, $zero
	fcvt.s.d	$fs1, $fa0
	st.d	$zero, $s8, 0
	b	.LBB87_12
	.p2align	4, , 16
.LBB87_10:                              #   in Loop: Header=BB87_12 Depth=2
	move	$a1, $zero
.LBB87_11:                              #   in Loop: Header=BB87_12 Depth=2
	addi.d	$s8, $s8, 8
	addi.w	$a0, $s2, 1
	beq	$s2, $s0, .LBB87_8
.LBB87_12:                              #   Parent Loop BB87_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB87_19 Depth 3
	move	$s2, $a0
	beq	$a0, $s0, .LBB87_15
# %bb.13:                               #   in Loop: Header=BB87_12 Depth=2
	ld.bu	$a0, $s1, 0
	addi.d	$s1, $s1, 1
	bne	$a0, $s7, .LBB87_15
# %bb.14:                               #   in Loop: Header=BB87_12 Depth=2
	addi.w	$s3, $s3, 1
	ori	$a1, $zero, 1
	b	.LBB87_11
	.p2align	4, , 16
.LBB87_15:                              # %.thread
                                        #   in Loop: Header=BB87_12 Depth=2
	sltu	$a0, $zero, $s3
	and	$a0, $a1, $a0
	beqz	$a0, .LBB87_10
# %bb.16:                               #   in Loop: Header=BB87_12 Depth=2
	ld.d	$a0, $s8, 0
	ori	$fp, $zero, 1
	beqz	$a0, .LBB87_21
# %bb.17:                               # %.preheader126
                                        #   in Loop: Header=BB87_12 Depth=2
	ld.w	$a1, $a0, 8
	beq	$a1, $s6, .LBB87_21
# %bb.18:                               # %.lr.ph134.preheader
                                        #   in Loop: Header=BB87_12 Depth=2
	ori	$fp, $zero, 1
	ori	$a2, $zero, 16
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB87_19:                              # %.lr.ph134
                                        #   Parent Loop BB87_9 Depth=1
                                        #     Parent Loop BB87_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a1, $s3, .LBB87_24
# %bb.20:                               #   in Loop: Header=BB87_19 Depth=3
	ldx.w	$a1, $a0, $a2
	addi.d	$a3, $a3, 1
	addi.w	$fp, $fp, 1
	addi.d	$a2, $a2, 8
	bne	$a1, $s6, .LBB87_19
.LBB87_21:                              # %.loopexit
                                        #   in Loop: Header=BB87_12 Depth=2
	slli.d	$s4, $fp, 3
	addi.d	$a1, $s4, 24
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 0
	beqz	$a0, .LBB87_36
# %bb.22:                               #   in Loop: Header=BB87_12 Depth=2
	alsl.d	$a1, $fp, $a0, 3
	st.d	$s5, $a1, 4
	stx.w	$s3, $a0, $s4
	st.w	$zero, $a1, 12
	fmov.s	$fa0, $fs0
.LBB87_23:                              # %.loopexit127
                                        #   in Loop: Header=BB87_12 Depth=2
	move	$a1, $zero
	move	$s3, $zero
	alsl.d	$a0, $fp, $a0, 3
	fadd.s	$fa0, $fa0, $fs1
	fst.s	$fa0, $a0, 4
	b	.LBB87_11
.LBB87_24:                              # %.loopexit127.loopexit
                                        #   in Loop: Header=BB87_12 Depth=2
	bstrpick.d	$fp, $a3, 31, 0
	alsl.d	$a1, $fp, $a0, 3
	fld.s	$fa0, $a1, 4
	b	.LBB87_23
.LBB87_25:                              # %.preheader
	bltz	$s0, .LBB87_35
# %bb.26:                               # %.lr.ph153.preheader
	move	$fp, $zero
	addi.d	$a0, $s0, 1
	bstrpick.d	$s0, $a0, 31, 0
	addi.w	$s1, $zero, -1
	lu52i.d	$s2, $zero, 1016
	move	$s3, $s1
	lu32i.d	$s3, 0
	movgr2fr.w	$fs0, $zero
	b	.LBB87_28
	.p2align	4, , 16
.LBB87_27:                              #   in Loop: Header=BB87_28 Depth=1
	alsl.d	$s4, $fp, $s8, 3
	ori	$a0, $zero, 3
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	st.d	$zero, $a0, 0
	st.d	$s2, $a0, 8
	st.w	$s3, $a0, 16
	addi.d	$fp, $fp, 1
	beq	$fp, $s0, .LBB87_35
.LBB87_28:                              # %.lr.ph153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_30 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$a0, $s8, $a0
	beqz	$a0, .LBB87_27
# %bb.29:                               #   in Loop: Header=BB87_28 Depth=1
	ld.w	$a2, $a0, 8
	st.d	$zero, $a0, 0
	addi.d	$a1, $a0, 8
	fmov.s	$fa0, $fs0
	beq	$a2, $s1, .LBB87_31
	.p2align	4, , 16
.LBB87_30:                              # %.lr.ph148
                                        #   Parent Loop BB87_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a1, 4
	ld.w	$a3, $a1, 8
	fadd.s	$fa0, $fa1, $fa0
	addi.d	$a2, $a1, 8
	fst.s	$fa0, $a0, 4
	move	$a1, $a2
	bne	$a3, $s1, .LBB87_30
	b	.LBB87_32
	.p2align	4, , 16
.LBB87_31:                              #   in Loop: Header=BB87_28 Depth=1
	move	$a2, $a1
.LBB87_32:                              # %._crit_edge149
                                        #   in Loop: Header=BB87_28 Depth=1
	vldi	$vr1, -1168
	fsub.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a2, 4
	st.w	$zero, $a2, 0
	st.w	$s3, $a2, 8
	addi.d	$fp, $fp, 1
	bne	$fp, $s0, .LBB87_28
	b	.LBB87_35
.LBB87_33:                              # %.preheader128.thread
	blez	$s2, .LBB87_35
.LBB87_34:                              # %.lr.ph144.split.us
	st.d	$zero, $s8, 0
.LBB87_35:                              # %._crit_edge154
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.LBB87_36:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end87:
	.size	st_getGapPattern, .Lfunc_end87-st_getGapPattern
                                        # -- End function
	.globl	naiveRpairscore                 # -- Begin function naiveRpairscore
	.p2align	5
	.type	naiveRpairscore,@function
naiveRpairscore:                        # @naiveRpairscore
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	blez	$a0, .LBB88_25
# %bb.1:
	blez	$a1, .LBB88_25
# %bb.2:                                # %.preheader.us.preheader
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a7, %got_pc_hi20(amino_dis)
	ld.d	$a7, $a7, %got_pc_lo12(amino_dis)
	move	$t0, $zero
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -928
	ori	$t1, $zero, 45
	b	.LBB88_4
	.p2align	4, , 16
.LBB88_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB88_4 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $a0, .LBB88_25
.LBB88_4:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_6 Depth 2
                                        #       Child Loop BB88_10 Depth 3
	slli.d	$t3, $t0, 3
	ldx.d	$t5, $a2, $t3
	ld.b	$t4, $t5, 0
	move	$t2, $zero
	fldx.d	$fa3, $a4, $t3
	andi	$t3, $t4, 255
	slli.d	$t4, $t4, 9
	add.d	$t4, $a7, $t4
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t3, -45
	sltui	$t6, $t6, 1
	b	.LBB88_6
	.p2align	4, , 16
.LBB88_5:                               #   in Loop: Header=BB88_6 Depth=2
	fcvt.d.s	$fa6, $fs0
	fmadd.d	$fa4, $fa4, $fa5, $fa6
	addi.d	$t2, $t2, 1
	fcvt.s.d	$fs0, $fa4
	beq	$t2, $a1, .LBB88_3
.LBB88_6:                               #   Parent Loop BB88_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB88_10 Depth 3
	slli.d	$t7, $t2, 3
	ldx.d	$t8, $a3, $t7
	fldx.d	$fa4, $a5, $t7
	ld.b	$fp, $t8, 0
	fmul.d	$fa4, $fa3, $fa4
	andi	$t7, $fp, 255
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $t4, $fp
	addi.d	$s0, $t7, -45
	sltui	$s0, $s0, 1
	xor	$s0, $s0, $t6
	movgr2fr.w	$fa5, $fp
	ffint.s.w	$fa5, $fa5
	fcvt.d.s	$fa5, $fa5
	movgr2cf	$fcc0, $s0
	fsel	$fa6, $fa1, $fa0, $fcc0
	fmadd.d	$fa5, $fa6, $fa2, $fa5
	fadd.d	$fa5, $fa5, $fa1
	addi.d	$t8, $t8, 1
	move	$fp, $t5
	move	$s0, $t3
	b	.LBB88_10
.LBB88_7:                               #   in Loop: Header=BB88_10 Depth=3
	sltui	$s0, $s1, 1
	maskeqz	$s1, $a6, $s0
.LBB88_8:                               # %.thread136.us
                                        #   in Loop: Header=BB88_10 Depth=3
	ori	$s0, $zero, 45
.LBB88_9:                               # %.thread136.us
                                        #   in Loop: Header=BB88_10 Depth=3
	ext.w.b	$s2, $s0
	slli.d	$s2, $s2, 9
	add.d	$s2, $a7, $s2
	ext.w.b	$s3, $t7
	slli.d	$s3, $s3, 2
	ldx.w	$s2, $s2, $s3
	movgr2fr.w	$fa6, $s2
	ffint.d.w	$fa6, $fa6
	movgr2fr.w	$fa7, $s1
	ffint.d.w	$fa7, $fa7
	fmadd.d	$fa6, $fa7, $fa2, $fa6
	fadd.d	$fa5, $fa6, $fa5
	addi.d	$fp, $fp, 1
	addi.d	$t8, $t8, 1
.LBB88_10:                              #   Parent Loop BB88_4 Depth=1
                                        #     Parent Loop BB88_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fcvt.s.d	$fa5, $fa5
	andi	$s0, $s0, 255
	fcvt.d.s	$fa5, $fa5
	beq	$s0, $t1, .LBB88_15
# %bb.11:                               #   in Loop: Header=BB88_10 Depth=3
	beqz	$s0, .LBB88_5
# %bb.12:                               #   in Loop: Header=BB88_10 Depth=3
	andi	$s1, $t7, 255
	ld.bu	$s0, $fp, 0
	ld.bu	$t7, $t8, 0
	bne	$s1, $t1, .LBB88_20
# %bb.13:                               # %.thread127.us
                                        #   in Loop: Header=BB88_10 Depth=3
	bne	$s0, $t1, .LBB88_24
# %bb.14:                               #   in Loop: Header=BB88_10 Depth=3
	addi.d	$s0, $t7, -45
	sltu	$s0, $zero, $s0
	sll.w	$s1, $a6, $s0
	b	.LBB88_8
	.p2align	4, , 16
.LBB88_15:                              #   in Loop: Header=BB88_10 Depth=3
	andi	$s1, $t7, 255
	ld.bu	$s0, $fp, 0
	ld.bu	$t7, $t8, 0
	bne	$s1, $t1, .LBB88_18
# %bb.16:                               #   in Loop: Header=BB88_10 Depth=3
	bne	$s0, $t1, .LBB88_22
# %bb.17:                               # %.thread122.us
                                        #   in Loop: Header=BB88_10 Depth=3
	addi.d	$s0, $t7, -45
	sltui	$s0, $s0, 1
	masknez	$s1, $a6, $s0
	b	.LBB88_8
	.p2align	4, , 16
.LBB88_18:                              # %.thread140.us
                                        #   in Loop: Header=BB88_10 Depth=3
	addi.d	$s1, $t7, -45
	beq	$s0, $t1, .LBB88_7
# %bb.19:                               #   in Loop: Header=BB88_10 Depth=3
	sltui	$s1, $s1, 1
	sll.w	$s1, $a6, $s1
	b	.LBB88_9
	.p2align	4, , 16
.LBB88_20:                              #   in Loop: Header=BB88_10 Depth=3
	addi.d	$s1, $t7, -45
	bne	$s0, $t1, .LBB88_23
# %bb.21:                               # %.thread118.us
                                        #   in Loop: Header=BB88_10 Depth=3
	sltui	$s0, $s1, 1
	masknez	$s1, $a6, $s0
	b	.LBB88_8
.LBB88_22:                              #   in Loop: Header=BB88_10 Depth=3
	addi.d	$s1, $t7, -45
.LBB88_23:                              #   in Loop: Header=BB88_10 Depth=3
	sltui	$s1, $s1, 1
	maskeqz	$s1, $a6, $s1
	b	.LBB88_9
.LBB88_24:                              #   in Loop: Header=BB88_10 Depth=3
	addi.d	$s1, $t7, -45
	sltui	$s1, $s1, 1
	masknez	$s1, $a6, $s1
	b	.LBB88_9
.LBB88_25:                              # %._crit_edge153
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end88:
	.size	naiveRpairscore, .Lfunc_end88-naiveRpairscore
                                        # -- End function
	.globl	naiveQpairscore                 # -- Begin function naiveQpairscore
	.p2align	5
	.type	naiveQpairscore,@function
naiveQpairscore:                        # @naiveQpairscore
# %bb.0:
	movgr2fr.w	$fa0, $zero
	ret
.Lfunc_end89:
	.size	naiveQpairscore, .Lfunc_end89-naiveQpairscore
                                        # -- End function
	.globl	naiveHpairscore                 # -- Begin function naiveHpairscore
	.p2align	5
	.type	naiveHpairscore,@function
naiveHpairscore:                        # @naiveHpairscore
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
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$a0, .LBB90_25
# %bb.1:                                # %.preheader.lr.ph
	move	$s3, $a1
	blez	$a1, .LBB90_25
# %bb.2:                                # %.preheader.us.preheader
	move	$fp, $a6
	move	$s2, $a5
	move	$s4, $a3
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fs1, $fa0
	movgr2fr.w	$fs0, $zero
	ori	$s8, $zero, 45
	movgr2fr.d	$fs2, $zero
	pcalau12i	$a0, %got_pc_hi20(amino_dis)
	ld.d	$s1, $a0, %got_pc_lo12(amino_dis)
	move	$s5, $zero
	vldi	$vr3, -928
	b	.LBB90_4
	.p2align	4, , 16
.LBB90_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB90_4 Depth=1
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB90_25
.LBB90_4:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_6 Depth 2
                                        #       Child Loop BB90_14 Depth 3
	move	$s7, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$t3, $s5, $a0, 3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$t4, $s5, $a0, 3
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	b	.LBB90_6
	.p2align	4, , 16
.LBB90_5:                               #   in Loop: Header=BB90_6 Depth=2
	fcvt.d.s	$fa1, $fs0
	fmadd.d	$fa0, $fs3, $fa0, $fa1
	addi.d	$s7, $s7, 1
	fcvt.s.d	$fs0, $fa0
	beq	$s7, $s3, .LBB90_3
.LBB90_6:                               #   Parent Loop BB90_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB90_14 Depth 3
	slli.d	$a0, $s7, 3
	ld.d	$s6, $t4, 0
	ldx.d	$s0, $s4, $a0
	fld.d	$fa0, $t3, 0
	fldx.d	$fa1, $s2, $a0
	ld.bu	$a1, $s6, 0
	ld.bu	$a0, $s0, 0
	fmul.d	$fs3, $fa0, $fa1
	bne	$a1, $s8, .LBB90_9
# %bb.7:                                # %.thread.us
                                        #   in Loop: Header=BB90_6 Depth=2
	ori	$a1, $zero, 45
	fmov.d	$fa0, $fs2
	beqz	$fp, .LBB90_11
# %bb.8:                                # %.thread.us
                                        #   in Loop: Header=BB90_6 Depth=2
	beq	$a0, $s8, .LBB90_11
	b	.LBB90_24
	.p2align	4, , 16
.LBB90_9:                               #   in Loop: Header=BB90_6 Depth=2
	fmov.d	$fa0, $fs2
	beqz	$fp, .LBB90_11
# %bb.10:                               #   in Loop: Header=BB90_6 Depth=2
	beq	$a0, $s8, .LBB90_24
.LBB90_11:                              # %.thread106.us
                                        #   in Loop: Header=BB90_6 Depth=2
	ext.w.b	$a2, $a1
	slli.d	$a2, $a2, 9
	add.d	$a2, $s1, $a2
	ext.w.b	$a4, $a0
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fadd.d	$fa0, $fa0, $fs2
	addi.d	$a2, $s6, 1
	addi.d	$t2, $s0, 1
	b	.LBB90_14
	.p2align	4, , 16
.LBB90_12:                              # %.thread123.us._crit_edge
                                        #   in Loop: Header=BB90_14 Depth=3
	ld.bu	$a0, $t2, 0
	move	$a4, $zero
.LBB90_13:                              #   in Loop: Header=BB90_14 Depth=3
	ext.w.b	$a5, $a1
	slli.d	$a5, $a5, 9
	add.d	$a5, $s1, $a5
	ext.w.b	$a6, $a0
	slli.d	$a6, $a6, 2
	ldx.w	$a5, $a5, $a6
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fadd.d	$fa0, $fa1, $fa0
	addi.d	$a2, $a2, 1
	addi.d	$t2, $t2, 1
.LBB90_14:                              #   Parent Loop BB90_4 Depth=1
                                        #     Parent Loop BB90_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fcvt.s.d	$fa0, $fa0
	andi	$a1, $a1, 255
	fcvt.d.s	$fa0, $fa0
	beq	$a1, $s8, .LBB90_19
# %bb.15:                               #   in Loop: Header=BB90_14 Depth=3
	beqz	$a1, .LBB90_5
# %bb.16:                               #   in Loop: Header=BB90_14 Depth=3
	ld.bu	$a1, $a2, 0
	andi	$a0, $a0, 255
	beq	$a0, $s8, .LBB90_20
# %bb.17:                               #   in Loop: Header=BB90_14 Depth=3
	ld.bu	$a0, $t2, 0
	addi.d	$a4, $a0, -45
	bne	$a1, $s8, .LBB90_23
# %bb.18:                               # %.thread110.us
                                        #   in Loop: Header=BB90_14 Depth=3
	sltui	$a1, $a4, 1
	masknez	$a4, $fp, $a1
	ori	$a1, $zero, 45
	b	.LBB90_13
	.p2align	4, , 16
.LBB90_19:                              # %.thread123.us
                                        #   in Loop: Header=BB90_14 Depth=3
	ld.bu	$a1, $a2, 0
	andi	$a0, $a0, 255
	beq	$a0, $s8, .LBB90_12
.LBB90_20:                              #   in Loop: Header=BB90_14 Depth=3
	ld.bu	$a0, $t2, 0
	ori	$a4, $zero, 45
	bne	$a1, $a4, .LBB90_22
# %bb.21:                               #   in Loop: Header=BB90_14 Depth=3
	move	$a4, $zero
	ori	$a1, $zero, 45
	b	.LBB90_13
	.p2align	4, , 16
.LBB90_22:                              #   in Loop: Header=BB90_14 Depth=3
	addi.d	$a4, $a0, -45
	sltui	$a4, $a4, 1
	masknez	$a4, $fp, $a4
	b	.LBB90_13
.LBB90_23:                              #   in Loop: Header=BB90_14 Depth=3
	sltui	$a4, $a4, 1
	maskeqz	$a4, $fp, $a4
	b	.LBB90_13
.LBB90_24:                              #   in Loop: Header=BB90_6 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fmul.d	$fa0, $fs3, $fs1
	fmul.d	$fa0, $fa0, $fa3
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	move	$a3, $s5
	move	$a4, $s7
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	vldi	$vr3, -928
	ld.bu	$a1, $s6, 0
	ld.bu	$a0, $s0, 0
	fmov.d	$fa0, $fs1
	b	.LBB90_11
.LBB90_25:                              # %._crit_edge135
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
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
.Lfunc_end90:
	.size	naiveHpairscore, .Lfunc_end90-naiveHpairscore
                                        # -- End function
	.globl	naivepairscore11                # -- Begin function naivepairscore11
	.p2align	5
	.type	naivepairscore11,@function
naivepairscore11:                       # @naivepairscore11
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
	move	$s2, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	add.d	$a0, $a0, $a1
	srai.d	$s0, $a0, 32
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 45
	move	$a3, $s3
	move	$a2, $a0
	b	.LBB91_4
	.p2align	4, , 16
.LBB91_1:                               #   in Loop: Header=BB91_4 Depth=1
	beqz	$a4, .LBB91_6
.LBB91_2:                               #   in Loop: Header=BB91_4 Depth=1
	st.b	$a4, $a3, 0
	ld.b	$a4, $s1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a2, 1
	st.b	$a4, $a2, 0
	move	$a2, $a5
.LBB91_3:                               #   in Loop: Header=BB91_4 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 1
.LBB91_4:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $s2, 0
	bne	$a4, $a1, .LBB91_1
# %bb.5:                                #   in Loop: Header=BB91_4 Depth=1
	ld.bu	$a5, $s1, 0
	bne	$a5, $a1, .LBB91_2
	b	.LBB91_3
.LBB91_6:                               # %commongappickpair.exit
	st.b	$zero, $a3, 0
	st.b	$zero, $a2, 0
	ori	$a1, $zero, 45
	pcalau12i	$a2, %got_pc_hi20(amino_dis)
	ld.d	$a2, $a2, %got_pc_lo12(amino_dis)
	move	$s1, $zero
	move	$a3, $s3
	move	$a4, $s0
.LBB91_7:                               # %thread-pre-split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_8 Depth 2
                                        #       Child Loop BB91_10 Depth 3
                                        #     Child Loop BB91_13 Depth 2
	ld.bu	$a5, $a3, 0
	.p2align	4, , 16
.LBB91_8:                               #   Parent Loop BB91_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB91_10 Depth 3
	andi	$a6, $a5, 255
	bne	$a6, $a1, .LBB91_11
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB91_8 Depth=2
	add.w	$s1, $s1, $fp
	.p2align	4, , 16
.LBB91_10:                              # %.lr.ph
                                        #   Parent Loop BB91_7 Depth=1
                                        #     Parent Loop BB91_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a5, $a3, 1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	beq	$a5, $a1, .LBB91_10
	b	.LBB91_8
	.p2align	4, , 16
.LBB91_11:                              #   in Loop: Header=BB91_7 Depth=1
	beqz	$a6, .LBB91_16
# %bb.12:                               #   in Loop: Header=BB91_7 Depth=1
	ld.b	$a6, $a4, 0
	bne	$a6, $a1, .LBB91_15
	.p2align	4, , 16
.LBB91_13:                              # %.preheader
                                        #   Parent Loop BB91_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a4, 1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	beq	$a5, $a1, .LBB91_13
# %bb.14:                               # %thread-pre-split.backedge.loopexit
                                        #   in Loop: Header=BB91_7 Depth=1
	add.w	$s1, $s1, $fp
	b	.LBB91_7
	.p2align	4, , 16
.LBB91_15:                              #   in Loop: Header=BB91_7 Depth=1
	ext.w.b	$a5, $a5
	slli.d	$a5, $a5, 9
	add.d	$a5, $a2, $a5
	slli.d	$a6, $a6, 2
	ldx.w	$a5, $a5, $a6
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	add.w	$s1, $a5, $s1
	b	.LBB91_7
.LBB91_16:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end91:
	.size	naivepairscore11, .Lfunc_end91-naivepairscore11
                                        # -- End function
	.globl	naivepairscore                  # -- Begin function naivepairscore
	.p2align	5
	.type	naivepairscore,@function
naivepairscore:                         # @naivepairscore
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a2
	ld.d	$a2, $a2, 0
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a1
	move	$s5, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	add.d	$a0, $a0, $a1
	srai.d	$s7, $a0, 32
	ori	$a1, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a1, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	movgr2fr.w	$fs0, $zero
	blez	$s5, .LBB92_22
# %bb.1:
	blez	$s4, .LBB92_22
# %bb.2:                                # %.preheader.us.preheader
	move	$a0, $zero
	movgr2fr.w	$fs0, $zero
	ori	$a1, $zero, 45
	b	.LBB92_4
	.p2align	4, , 16
.LBB92_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB92_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s5, .LBB92_22
.LBB92_4:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB92_6 Depth 2
                                        #       Child Loop BB92_10 Depth 3
                                        #       Child Loop BB92_13 Depth 3
                                        #         Child Loop BB92_14 Depth 4
                                        #           Child Loop BB92_16 Depth 5
                                        #         Child Loop BB92_19 Depth 4
	move	$a2, $zero
	alsl.d	$a3, $a0, $s2, 3
	alsl.d	$a4, $a0, $fp, 3
	b	.LBB92_6
	.p2align	4, , 16
.LBB92_5:                               #   in Loop: Header=BB92_6 Depth=2
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
	ffint.s.w	$fa1, $fa1
	addi.d	$a2, $a2, 1
	fmadd.s	$fs0, $fa0, $fa1, $fs0
	beq	$a2, $s4, .LBB92_3
.LBB92_6:                               #   Parent Loop BB92_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB92_10 Depth 3
                                        #       Child Loop BB92_13 Depth 3
                                        #         Child Loop BB92_14 Depth 4
                                        #           Child Loop BB92_16 Depth 5
                                        #         Child Loop BB92_19 Depth 4
	fld.d	$fa0, $a3, 0
	slli.d	$a6, $a2, 3
	fldx.d	$fa1, $s1, $a6
	ld.d	$a5, $a4, 0
	ldx.d	$t0, $s3, $a6
	move	$a7, $s6
	move	$a6, $s7
	b	.LBB92_10
	.p2align	4, , 16
.LBB92_7:                               #   in Loop: Header=BB92_10 Depth=3
	beqz	$t1, .LBB92_12
.LBB92_8:                               #   in Loop: Header=BB92_10 Depth=3
	st.b	$t1, $a7, 0
	ld.b	$t1, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$t2, $a6, 1
	st.b	$t1, $a6, 0
	move	$a6, $t2
.LBB92_9:                               #   in Loop: Header=BB92_10 Depth=3
	addi.d	$t0, $t0, 1
	addi.d	$a5, $a5, 1
.LBB92_10:                              #   Parent Loop BB92_4 Depth=1
                                        #     Parent Loop BB92_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$t1, $a5, 0
	bne	$t1, $a1, .LBB92_7
# %bb.11:                               #   in Loop: Header=BB92_10 Depth=3
	ld.bu	$t2, $t0, 0
	bne	$t2, $a1, .LBB92_8
	b	.LBB92_9
	.p2align	4, , 16
.LBB92_12:                              # %commongappickpair.exit.us
                                        #   in Loop: Header=BB92_6 Depth=2
	move	$a5, $zero
	st.b	$zero, $a7, 0
	st.b	$zero, $a6, 0
	move	$a6, $s6
	move	$a7, $s7
.LBB92_13:                              # %thread-pre-split.us
                                        #   Parent Loop BB92_4 Depth=1
                                        #     Parent Loop BB92_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB92_14 Depth 4
                                        #           Child Loop BB92_16 Depth 5
                                        #         Child Loop BB92_19 Depth 4
	ld.bu	$t0, $a6, 0
	.p2align	4, , 16
.LBB92_14:                              #   Parent Loop BB92_4 Depth=1
                                        #     Parent Loop BB92_6 Depth=2
                                        #       Parent Loop BB92_13 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB92_16 Depth 5
	andi	$t1, $t0, 255
	bne	$t1, $a1, .LBB92_17
# %bb.15:                               # %.lr.ph.us.preheader
                                        #   in Loop: Header=BB92_14 Depth=4
	add.w	$a5, $a5, $s0
	.p2align	4, , 16
.LBB92_16:                              # %.lr.ph.us
                                        #   Parent Loop BB92_4 Depth=1
                                        #     Parent Loop BB92_6 Depth=2
                                        #       Parent Loop BB92_13 Depth=3
                                        #         Parent Loop BB92_14 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.bu	$t0, $a6, 1
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	beq	$t0, $a1, .LBB92_16
	b	.LBB92_14
	.p2align	4, , 16
.LBB92_17:                              #   in Loop: Header=BB92_13 Depth=3
	beqz	$t1, .LBB92_5
# %bb.18:                               #   in Loop: Header=BB92_13 Depth=3
	ld.b	$t1, $a7, 0
	bne	$t1, $a1, .LBB92_21
	.p2align	4, , 16
.LBB92_19:                              # %.preheader
                                        #   Parent Loop BB92_4 Depth=1
                                        #     Parent Loop BB92_6 Depth=2
                                        #       Parent Loop BB92_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t0, $a7, 1
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	beq	$t0, $a1, .LBB92_19
# %bb.20:                               # %thread-pre-split.backedge.us.loopexit
                                        #   in Loop: Header=BB92_13 Depth=3
	add.w	$a5, $a5, $s0
	b	.LBB92_13
	.p2align	4, , 16
.LBB92_21:                              #   in Loop: Header=BB92_13 Depth=3
	addi.d	$a6, $a6, 1
	ext.w.b	$t0, $t0
	slli.d	$t0, $t0, 9
	pcalau12i	$t2, %got_pc_hi20(amino_dis)
	ld.d	$t2, $t2, %got_pc_lo12(amino_dis)
	add.d	$t0, $t2, $t0
	slli.d	$t1, $t1, 2
	ldx.w	$t0, $t0, $t1
	addi.d	$a7, $a7, 1
	add.w	$a5, $t0, $a5
	b	.LBB92_13
.LBB92_22:                              # %._crit_edge72
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.Lfunc_end92:
	.size	naivepairscore, .Lfunc_end92-naivepairscore
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"========================================================================= \n"
	.size	.L.str, 76

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"=== \n"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"=== Alphabet '%c' is unknown.\n"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"=== Please check site %d in sequence %d.\n"
	.size	.L.str.3, 42

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"    ....,....+....,....+....,....+....,....+....,....+....,....+....,....+....,....+....,....+....,....+....,....+....,....+\n"
	.size	.L.str.5, 126

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%3d %s\n"
	.size	.L.str.6, 8

	.type	score_calc3.mseq1,@object       # @score_calc3.mseq1
	.local	score_calc3.mseq1
	.comm	score_calc3.mseq1,10000000,1
	.type	score_calc3.mseq2,@object       # @score_calc3.mseq2
	.local	score_calc3.mseq2
	.comm	score_calc3.mseq2,10000000,1
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"error\n"
	.size	.L.str.7, 7

	.type	upg2.pair,@object               # @upg2.pair
	.local	upg2.pair
	.comm	upg2.pair,8,8
	.type	loadtree.hist,@object           # @loadtree.hist
	.local	loadtree.hist
	.comm	loadtree.hist,8,8
	.type	loadtree.ac,@object             # @loadtree.ac
	.local	loadtree.ac
	.comm	loadtree.ac,8,8
	.type	loadtree.nmemar,@object         # @loadtree.nmemar
	.local	loadtree.nmemar
	.comm	loadtree.nmemar,8,8
	.type	loadtree.tree,@object           # @loadtree.tree
	.local	loadtree.tree
	.comm	loadtree.tree,8,8
	.type	loadtree.treetmp,@object        # @loadtree.treetmp
	.local	loadtree.treetmp
	.comm	loadtree.treetmp,8,8
	.type	loadtree.nametmp,@object        # @loadtree.nametmp
	.local	loadtree.nametmp
	.comm	loadtree.nametmp,8,8
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"_guidetree"
	.size	.L.str.8, 11

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"r"
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"cannot open _guidetree\n"
	.size	.L.str.10, 24

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%d_%.20s"
	.size	.L.str.11, 9

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\r% 5d / %d"
	.size	.L.str.13, 11

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\n\nERROR: Branch length is not given.\n"
	.size	.L.str.14, 38

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Cannot reallocate topol\n"
	.size	.L.str.15, 25

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"(%s:%7.5f,%s:%7.5f)"
	.size	.L.str.16, 20

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"infile.tree"
	.size	.L.str.17, 12

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"w"
	.size	.L.str.18, 2

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"#by loadtree\n"
	.size	.L.str.19, 14

	.type	loadtop.ac,@object              # @loadtop.ac
	.local	loadtop.ac
	.comm	loadtop.ac,8,8
	.type	loadtop.tmptmplen,@object       # @loadtop.tmptmplen
	.local	loadtop.tmptmplen
	.comm	loadtop.tmptmplen,8,8
	.type	loadtop.hist,@object            # @loadtop.hist
	.local	loadtop.hist
	.comm	loadtop.hist,8,8
	.type	loadtop.nmemar,@object          # @loadtop.nmemar
	.local	loadtop.nmemar
	.comm	loadtop.nmemar,8,8
	.type	loadtop.tree,@object            # @loadtop.tree
	.local	loadtop.tree
	.comm	loadtop.tree,8,8
	.type	loadtop.treetmp,@object         # @loadtop.treetmp
	.local	loadtop.treetmp
	.comm	loadtop.treetmp,8,8
	.type	sueff1,@object                  # @sueff1
	.local	sueff1
	.comm	sueff1,4,4
	.type	sueff05,@object                 # @sueff05
	.local	sueff05
	.comm	sueff05,4,4
	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Unknown treemethod, %c\n"
	.size	.L.str.20, 24

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%d"
	.size	.L.str.21, 3

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\n\nERROR: Branch length should not be given.\n"
	.size	.L.str.22, 45

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"by loadtop\n"
	.size	.L.str.23, 12

	.type	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen,8,8
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist,8,8
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac,8,8
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar,8,8
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree,8,8
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp,8,8
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp,8,8
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen,8,8
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx.hist,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx.hist
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx.hist
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx.hist,8,8
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx.ac,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx.ac
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx.ac
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx.ac,8,8
	.type	fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar,@object # @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar
	.local	fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar
	.comm	fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar,8,8
	.type	veryfastsupg_double_loadtop.tmptmplen,@object # @veryfastsupg_double_loadtop.tmptmplen
	.local	veryfastsupg_double_loadtop.tmptmplen
	.comm	veryfastsupg_double_loadtop.tmptmplen,8,8
	.type	veryfastsupg_double_loadtop.hist,@object # @veryfastsupg_double_loadtop.hist
	.local	veryfastsupg_double_loadtop.hist
	.comm	veryfastsupg_double_loadtop.hist,8,8
	.type	veryfastsupg_double_loadtop.ac,@object # @veryfastsupg_double_loadtop.ac
	.local	veryfastsupg_double_loadtop.ac
	.comm	veryfastsupg_double_loadtop.ac,8,8
	.type	veryfastsupg_double_loadtop.tree,@object # @veryfastsupg_double_loadtop.tree
	.local	veryfastsupg_double_loadtop.tree
	.comm	veryfastsupg_double_loadtop.tree,8,8
	.type	veryfastsupg_double_loadtop.treetmp,@object # @veryfastsupg_double_loadtop.treetmp
	.local	veryfastsupg_double_loadtop.treetmp
	.comm	veryfastsupg_double_loadtop.treetmp,8,8
	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%d / %d\r"
	.size	.L.str.24, 9

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\n\nBranch length should not given.\n"
	.size	.L.str.25, 35

	.type	veryfastsupg_double_loadtree.tmptmplen,@object # @veryfastsupg_double_loadtree.tmptmplen
	.local	veryfastsupg_double_loadtree.tmptmplen
	.comm	veryfastsupg_double_loadtree.tmptmplen,8,8
	.type	veryfastsupg_double_loadtree.hist,@object # @veryfastsupg_double_loadtree.hist
	.local	veryfastsupg_double_loadtree.hist
	.comm	veryfastsupg_double_loadtree.hist,8,8
	.type	veryfastsupg_double_loadtree.ac,@object # @veryfastsupg_double_loadtree.ac
	.local	veryfastsupg_double_loadtree.ac
	.comm	veryfastsupg_double_loadtree.ac,8,8
	.type	veryfastsupg_double_loadtree.tree,@object # @veryfastsupg_double_loadtree.tree
	.local	veryfastsupg_double_loadtree.tree
	.comm	veryfastsupg_double_loadtree.tree,8,8
	.type	veryfastsupg_double_loadtree.treetmp,@object # @veryfastsupg_double_loadtree.treetmp
	.local	veryfastsupg_double_loadtree.treetmp
	.comm	veryfastsupg_double_loadtree.treetmp,8,8
	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"\n\nWARNING: Branch length is not given.\n"
	.size	.L.str.26, 40

	.type	veryfastsupg_double_outtree.tmptmplen,@object # @veryfastsupg_double_outtree.tmptmplen
	.local	veryfastsupg_double_outtree.tmptmplen
	.comm	veryfastsupg_double_outtree.tmptmplen,8,8
	.type	veryfastsupg_double_outtree.hist,@object # @veryfastsupg_double_outtree.hist
	.local	veryfastsupg_double_outtree.hist
	.comm	veryfastsupg_double_outtree.hist,8,8
	.type	veryfastsupg_double_outtree.ac,@object # @veryfastsupg_double_outtree.ac
	.local	veryfastsupg_double_outtree.ac
	.comm	veryfastsupg_double_outtree.ac,8,8
	.type	veryfastsupg_double_outtree.tree,@object # @veryfastsupg_double_outtree.tree
	.local	veryfastsupg_double_outtree.tree
	.comm	veryfastsupg_double_outtree.tree,8,8
	.type	veryfastsupg_double_outtree.treetmp,@object # @veryfastsupg_double_outtree.treetmp
	.local	veryfastsupg_double_outtree.treetmp
	.comm	veryfastsupg_double_outtree.treetmp,8,8
	.type	veryfastsupg_double_outtree.nametmp,@object # @veryfastsupg_double_outtree.nametmp
	.local	veryfastsupg_double_outtree.nametmp
	.comm	veryfastsupg_double_outtree.nametmp,8,8
	.type	sueff1_double,@object           # @sueff1_double
	.local	sueff1_double
	.comm	sueff1_double,8,8
	.type	sueff05_double,@object          # @sueff05_double
	.local	sueff05_double
	.comm	sueff05_double,8,8
	.type	veryfastsupg.tmptmplen,@object  # @veryfastsupg.tmptmplen
	.local	veryfastsupg.tmptmplen
	.comm	veryfastsupg.tmptmplen,8,8
	.type	veryfastsupg.eff,@object        # @veryfastsupg.eff
	.local	veryfastsupg.eff
	.comm	veryfastsupg.eff,8,8
	.type	veryfastsupg.hist,@object       # @veryfastsupg.hist
	.local	veryfastsupg.hist
	.comm	veryfastsupg.hist,8,8
	.type	veryfastsupg.ac,@object         # @veryfastsupg.ac
	.local	veryfastsupg.ac
	.comm	veryfastsupg.ac,8,8
	.type	veryfastsupg_int.tmptmplen,@object # @veryfastsupg_int.tmptmplen
	.local	veryfastsupg_int.tmptmplen
	.comm	veryfastsupg_int.tmptmplen,8,8
	.type	veryfastsupg_int.eff,@object    # @veryfastsupg_int.eff
	.local	veryfastsupg_int.eff
	.comm	veryfastsupg_int.eff,8,8
	.type	veryfastsupg_int.hist,@object   # @veryfastsupg_int.hist
	.local	veryfastsupg_int.hist
	.comm	veryfastsupg_int.hist,8,8
	.type	veryfastsupg_int.ac,@object     # @veryfastsupg_int.ac
	.local	veryfastsupg_int.ac
	.comm	veryfastsupg_int.ac,8,8
	.type	fastsupg.tmplen,@object         # @fastsupg.tmplen
	.local	fastsupg.tmplen
	.comm	fastsupg.tmplen,8,8
	.type	fastsupg.eff,@object            # @fastsupg.eff
	.local	fastsupg.eff
	.comm	fastsupg.eff,8,8
	.type	fastsupg.pair,@object           # @fastsupg.pair
	.local	fastsupg.pair
	.comm	fastsupg.pair,8,8
	.type	fastsupg.ac,@object             # @fastsupg.ac
	.local	fastsupg.ac
	.comm	fastsupg.ac,8,8
	.type	supg.tmplen,@object             # @supg.tmplen
	.local	supg.tmplen
	.comm	supg.tmplen,8,8
	.type	supg.eff,@object                # @supg.eff
	.local	supg.eff
	.comm	supg.eff,8,8
	.type	supg.pair,@object               # @supg.pair
	.local	supg.pair
	.comm	supg.pair,8,8
	.type	countnode.rootnode,@object      # @countnode.rootnode
	.local	countnode.rootnode
	.comm	countnode.rootnode,400000,8
	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Too few sequence for countnode: nseq = %d\n"
	.size	.L.str.27, 43

	.type	counteff_simple_float.rootnode,@object # @counteff_simple_float.rootnode
	.local	counteff_simple_float.rootnode
	.comm	counteff_simple_float.rootnode,400000,8
	.type	counteff_simple_float.eff,@object # @counteff_simple_float.eff
	.local	counteff_simple_float.eff
	.comm	counteff_simple_float.eff,400000,8
	.type	counteff_simple.rootnode,@object # @counteff_simple.rootnode
	.local	counteff_simple.rootnode
	.comm	counteff_simple.rootnode,400000,8
	.type	counteff_simple.eff,@object     # @counteff_simple.eff
	.local	counteff_simple.eff
	.comm	counteff_simple.eff,400000,8
	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"mix error"
	.size	.L.str.28, 10

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"raw score = %f\n"
	.size	.L.str.29, 16

	.type	searchAnchors.stra,@object      # @searchAnchors.stra
	.local	searchAnchors.stra
	.comm	searchAnchors.stra,8,8
	.type	searchAnchors.alloclen,@object  # @searchAnchors.alloclen
	.local	searchAnchors.alloclen
	.comm	searchAnchors.alloclen,4,4
	.type	searchAnchors.threshold,@object # @searchAnchors.threshold
	.local	searchAnchors.threshold
	.comm	searchAnchors.threshold,8,8
	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"TOO MANY SEGMENTS!"
	.size	.L.str.30, 19

	.type	dontcalcimportance.nogaplen,@object # @dontcalcimportance.nogaplen
	.local	dontcalcimportance.nogaplen
	.comm	dontcalcimportance.nogaplen,8,8
	.type	calcimportance.importance,@object # @calcimportance.importance
	.local	calcimportance.importance
	.comm	calcimportance.importance,8,8
	.type	calcimportance.nogaplen,@object # @calcimportance.nogaplen
	.local	calcimportance.nogaplen
	.comm	calcimportance.nogaplen,8,8
	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"ERROR: i=%d, j=%d\n"
	.size	.L.str.31, 19

	.type	extendlocalhom2.ini,@object     # @extendlocalhom2.ini
	.local	extendlocalhom2.ini
	.comm	extendlocalhom2.ini,8,8
	.type	extendlocalhom2.inj,@object     # @extendlocalhom2.inj
	.local	extendlocalhom2.inj
	.comm	extendlocalhom2.inj,8,8
	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"opt kainaide tbfast.c = %f\n"
	.size	.L.str.32, 28

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%d, %f\n"
	.size	.L.str.33, 8

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Cannot allocate gappattern!'n"
	.size	.L.str.34, 30

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Use an approximate method, with the --mafft5 option.\n"
	.size	.L.str.35, 54

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"val = %f\n"
	.size	.L.str.36, 10

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Penal!, %f, %d-%d, pos1,pos2=%d,%d\n"
	.size	.L.str.37, 36

	.type	loadtreeoneline.gett,@object    # @loadtreeoneline.gett
	.local	loadtreeoneline.gett
	.comm	loadtreeoneline.gett,1000,1
	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%d %d %a %a"
	.size	.L.str.38, 12

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Incorrect guide tree\n"
	.size	.L.str.39, 22

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym score_calc3.mseq1
	.addrsig_sym score_calc3.mseq2
	.addrsig_sym loadtreeoneline.gett
