	.file	"llubenchmark.c"
	.text
	.globl	usage                           # -- Begin function usage
	.p2align	5
	.type	usage,@function
usage:                                  # @usage
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end0:
	.size	usage, .Lfunc_end0-usage
                                        # -- End function
	.globl	allocate                        # -- Begin function allocate
	.p2align	5
	.type	allocate,@function
allocate:                               # @allocate
# %bb.0:
	pcalau12i	$a1, %pc_hi20(num_allocated)
	ld.w	$a0, $a1, %pc_lo12(num_allocated)
	addi.d	$a2, $a0, 1
	ori	$a0, $zero, 16
	st.w	$a2, $a1, %pc_lo12(num_allocated)
	pcaddu18i	$t8, %call36(malloc)
	jr	$t8
.Lfunc_end1:
	.size	allocate, .Lfunc_end1-allocate
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI2_0:
	.word	0x3eaa7efa                      # float 0.333000004
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$s1, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	blt	$s3, $a1, .LBB2_13
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 196
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	fld.s	$fs0, $a0, %pc_lo12(.LCPI2_0)
	ori	$s0, $zero, 1000
	ori	$s4, $zero, 45
	ori	$s5, $zero, 16
	pcalau12i	$a0, %pc_hi20(.LJTI2_0)
	addi.d	$s6, $a0, %pc_lo12(.LJTI2_0)
	pcalau12i	$s7, %pc_hi20(element_size)
	ori	$s2, $zero, 1
	b	.LBB2_5
.LBB2_2:                                #   in Loop: Header=BB2_5 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s1, $a0
	addi.w	$fp, $a2, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $fp
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	move	$a2, $a0
	bge	$a0, $s3, .LBB2_14
.LBB2_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a2, 3
	ldx.d	$a1, $s1, $a0
	ld.bu	$a0, $a1, 0
	bne	$a0, $s4, .LBB2_40
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $a1, 2
	bnez	$a0, .LBB2_40
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a1, $a1, 1
	addi.d	$a0, $a1, -100
	bltu	$s5, $a0, .LBB2_45
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s6, $a0
	add.d	$a3, $s6, $a0
	addi.w	$a0, $a2, 1
	jr	$a3
.LBB2_9:                                #   in Loop: Header=BB2_5 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s1, $a0
	addi.w	$fp, $a2, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fs0, $fa0
	b	.LBB2_3
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s1, $a0
	addi.w	$fp, $a2, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB2_3
.LBB2_11:                               #   in Loop: Header=BB2_5 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s1, $a0
	addi.w	$fp, $a2, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s7, %pc_lo12(element_size)
	b	.LBB2_3
.LBB2_12:                               #   in Loop: Header=BB2_5 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s1, $a0
	addi.w	$fp, $a2, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	b	.LBB2_3
.LBB2_13:
	fld.s	$fs0, $a0, %pc_lo12(.LCPI2_0)
	ori	$s0, $zero, 1000
	ori	$s2, $zero, 1
	ori	$a0, $zero, 196
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB2_14:                               # %._crit_edge
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$s5, $a0, 0
	slli.d	$s3, $s5, 3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$s8, %pc_hi20(num_allocated)
	blez	$s5, .LBB2_21
# %bb.15:                               # %.preheader126
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.w	$fp, $s2, 0
	blez	$fp, .LBB2_21
# %bb.16:                               # %.preheader125.us.preheader
	ld.w	$s3, $s8, %pc_lo12(num_allocated)
	move	$s4, $zero
	.p2align	4, , 16
.LBB2_17:                               # %.preheader125.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
	move	$s6, $s5
	move	$s7, $s1
	.p2align	4, , 16
.LBB2_18:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	st.d	$a1, $a0, 0
	st.w	$zero, $a0, 8
	st.d	$a0, $s7, 0
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 8
	bnez	$s6, .LBB2_18
# %bb.19:                               # %._crit_edge150.us
                                        #   in Loop: Header=BB2_17 Depth=1
	addi.w	$s4, $s4, 1
	bne	$s4, $fp, .LBB2_17
# %bb.20:                               # %..preheader124_crit_edge.split.us
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $s2
	add.d	$a0, $s3, $a0
	st.w	$a0, $s8, %pc_lo12(num_allocated)
.LBB2_21:                               # %.preheader124
	addi.w	$s4, $s0, 0
	blez	$s4, .LBB2_42
# %bb.22:                               # %.lr.ph184
	movgr2fr.w	$fs1, $zero
	lu12i.w	$a0, 159383
	ori	$s6, $a0, 2261
	lu12i.w	$a0, 1048
	ori	$s7, $a0, 2359
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $zero
	move	$s3, $zero
	ori	$fp, $zero, 1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_23:                               # %._crit_edge169.thread
                                        #   in Loop: Header=BB2_25 Depth=1
	fadd.s	$fa0, $fs0, $fs1
	ftintrz.w.s	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fsub.s	$fs1, $fa0, $fa1
.LBB2_24:                               # %._crit_edge180
                                        #   in Loop: Header=BB2_25 Depth=1
	addi.w	$s3, $s3, 1
	beq	$s3, $s4, .LBB2_43
.LBB2_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_30 Depth 2
                                        #       Child Loop BB2_31 Depth 3
                                        #     Child Loop BB2_34 Depth 2
                                        #       Child Loop BB2_35 Depth 3
                                        #         Child Loop BB2_36 Depth 4
	mul.d	$a0, $s3, $s6
	rotri.w	$a0, $a0, 3
	bgeu	$s7, $a0, .LBB2_27
# %bb.26:                               #   in Loop: Header=BB2_25 Depth=1
	bgtz	$s5, .LBB2_28
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_27:                               #   in Loop: Header=BB2_25 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s5, .LBB2_23
.LBB2_28:                               # %.lr.ph168.preheader
                                        #   in Loop: Header=BB2_25 Depth=1
	move	$a0, $zero
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_29:                               # %._crit_edge163
                                        #   in Loop: Header=BB2_30 Depth=2
	addi.d	$a0, $a0, 1
	beq	$a0, $s5, .LBB2_32
.LBB2_30:                               # %.lr.ph168
                                        #   Parent Loop BB2_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_31 Depth 3
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	beqz	$a1, .LBB2_29
	.p2align	4, , 16
.LBB2_31:                               # %.lr.ph162
                                        #   Parent Loop BB2_25 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 8
	addi.d	$a3, $a2, 1
	st.w	$a3, $a1, 8
	ld.d	$a1, $a1, 0
	add.w	$s0, $a2, $s0
	bnez	$a1, .LBB2_31
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_32:                               # %._crit_edge169
                                        #   in Loop: Header=BB2_25 Depth=1
	fadd.s	$fa0, $fs0, $fs1
	ftintrz.w.s	$fa1, $fa0
	movfr2gr.s	$s2, $fa1
	movgr2fr.w	$fa1, $s2
	ffint.s.w	$fa1, $fa1
	fsub.s	$fs1, $fa0, $fa1
	blez	$s2, .LBB2_24
# %bb.33:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB2_25 Depth=1
	move	$s6, $s8
	ld.w	$s4, $s8, %pc_lo12(num_allocated)
	move	$a0, $s2
	.p2align	4, , 16
.LBB2_34:                               # %.preheader.us
                                        #   Parent Loop BB2_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_35 Depth 3
                                        #         Child Loop BB2_36 Depth 4
	move	$s8, $zero
	move	$s7, $a0
	.p2align	4, , 16
.LBB2_35:                               #   Parent Loop BB2_25 Depth=1
                                        #     Parent Loop BB2_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_36 Depth 4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s8, 3
	ldx.d	$a1, $s1, $a1
	add.d	$a2, $s8, $s7
	st.w	$a2, $a0, 8
	.p2align	4, , 16
.LBB2_36:                               #   Parent Loop BB2_25 Depth=1
                                        #     Parent Loop BB2_34 Depth=2
                                        #       Parent Loop BB2_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a2, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB2_36
# %bb.37:                               #   in Loop: Header=BB2_35 Depth=3
	st.d	$a0, $a2, 0
	addi.d	$s8, $s8, 1
	st.d	$zero, $a0, 0
	bne	$s8, $s5, .LBB2_35
# %bb.38:                               # %._crit_edge173.us
                                        #   in Loop: Header=BB2_34 Depth=2
	addi.d	$a0, $s7, -1
	blt	$fp, $s7, .LBB2_34
# %bb.39:                               # %._crit_edge180.split.us
                                        #   in Loop: Header=BB2_25 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $s2
	add.d	$a0, $s4, $a0
	move	$s8, $s6
	st.w	$a0, $s6, %pc_lo12(num_allocated)
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	b	.LBB2_24
.LBB2_40:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
.LBB2_41:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	b	.LBB2_44
.LBB2_42:
	move	$s0, $zero
.LBB2_43:                               # %._crit_edge185
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, %pc_lo12(num_allocated)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB2_44:
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
.LBB2_45:
	ext.w.b	$a1, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	b	.LBB2_41
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_9-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_2-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_11-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:\n"
	.size	.L.str, 5

	.type	free_list,@object               # @free_list
	.bss
	.globl	free_list
	.p2align	3, 0x0
free_list:
	.dword	0
	.size	free_list, 8

	.type	next_free,@object               # @next_free
	.data
	.globl	next_free
	.p2align	2, 0x0
next_free:
	.word	127                             # 0x7f
	.size	next_free, 4

	.type	element_size,@object            # @element_size
	.globl	element_size
	.p2align	2, 0x0
element_size:
	.word	32                              # 0x20
	.size	element_size, 4

	.type	num_allocated,@object           # @num_allocated
	.bss
	.globl	num_allocated
	.p2align	2, 0x0
num_allocated:
	.word	0                               # 0x0
	.size	num_allocated, 4

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"parse error in %s\n"
	.size	.L.str.9, 19

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"unrecognized option: %c\n"
	.size	.L.str.10, 25

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%d\n"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"output = %d\n"
	.size	.L.str.12, 13

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"num allocated %d\n"
	.size	.L.str.13, 18

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"-i <number of (I)terations>"
	.size	.Lstr, 28

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"[-l <initial (L)ength of list, in elements>] (default 1)"
	.size	.Lstr.1, 57

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"[-n <(N)umber of lists>] (default 1 list)"
	.size	.Lstr.2, 42

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"[-s <(S)ize of element>] (default 32 bytes)"
	.size	.Lstr.3, 44

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"[-g <(G)rowth rate per list, in elements per iteration>] (default 0)"
	.size	.Lstr.4, 69

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"[-d] ((D)irty each element during traversal, default off)"
	.size	.Lstr.5, 58

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"[-t] (insert at (T)ail of list, default off)"
	.size	.Lstr.6, 45

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"This benchmark modified to not use hard coded pool allocation!"
	.size	.Lstr.7, 63

	.section	".note.GNU-stack","",@progbits
	.addrsig
