	.file	"loop-15.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	bgeu	$a0, $a1, .LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, -8
	addi.d	$a3, $a1, -8
	st.d	$a2, $a1, 0
	move	$a1, $a3
	bltu	$a0, $a3, .LBB0_1
.LBB0_2:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_1:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI1_2:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI1_3:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$a0, $zero
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 40
	ori	$t2, $zero, 8
	addi.w	$t3, $zero, -1
	addi.w	$a5, $zero, -2
	lu52i.d	$t4, $a5, 1023
	pcalau12i	$a5, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI1_0)
	pcalau12i	$a5, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI1_1)
	ori	$t5, $zero, 4
	ori	$t6, $zero, 2
	ori	$t7, $zero, 3
	addi.d	$s0, $sp, 16
	ori	$s1, $zero, 1
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %.loopexit.4
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 1
	ori	$a5, $zero, 5
	beq	$a0, $a5, .LBB1_58
.LBB1_2:                                # %foo.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_11 Depth 2
                                        #     Child Loop BB1_21 Depth 2
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_28 Depth 2
                                        #     Child Loop BB1_35 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_48 Depth 2
                                        #     Child Loop BB1_50 Depth 2
                                        #     Child Loop BB1_52 Depth 2
                                        #     Child Loop BB1_55 Depth 2
	move	$t8, $zero
	sltu	$a5, $s0, $a4
	masknez	$a6, $a4, $a5
	maskeqz	$a5, $s0, $a5
	or	$a5, $a5, $a6
	addi.d	$t0, $sp, 47
	sub.d	$a5, $t0, $a5
	srli.d	$a5, $a5, 3
	addi.d	$a5, $a5, 1
	and	$s2, $a5, $t4
	sltu	$a5, $s0, $a3
	masknez	$a6, $a3, $a5
	maskeqz	$a5, $s0, $a5
	or	$a5, $a5, $a6
	addi.d	$s5, $sp, 39
	sub.d	$a5, $s5, $a5
	srli.d	$a5, $a5, 3
	addi.d	$a5, $a5, 1
	and	$s6, $a5, $t4
	sltu	$a5, $s0, $a2
	masknez	$a6, $a2, $a5
	maskeqz	$a5, $s0, $a5
	or	$a5, $a5, $a6
	addi.d	$t1, $sp, 31
	sub.d	$a5, $t1, $a5
	srli.d	$a5, $a5, 3
	addi.d	$a5, $a5, 1
	and	$ra, $a5, $t4
	sub.d	$a5, $a1, $s0
	sltu	$a6, $a1, $a5
	masknez	$a5, $a5, $a6
	srli.d	$a5, $a5, 3
	addi.d	$a5, $a5, 1
	and	$fp, $a5, $t4
	alsl.d	$s3, $a0, $a1, 3
	sub.d	$a5, $a1, $s3
	sltu	$a6, $a1, $a5
	masknez	$a5, $a5, $a6
	srli.d	$a5, $a5, 3
	addi.d	$a6, $a5, 1
	sltu	$a5, $s3, $a2
	maskeqz	$a7, $s3, $a5
	masknez	$a5, $a2, $a5
	or	$a5, $a7, $a5
	sub.d	$t1, $t1, $a5
	srli.d	$a5, $t1, 3
	addi.d	$a5, $a5, 1
	sltu	$a7, $s3, $a3
	maskeqz	$s4, $s3, $a7
	masknez	$a7, $a3, $a7
	or	$a7, $s4, $a7
	sub.d	$s8, $s5, $a7
	srli.d	$a7, $s8, 3
	addi.d	$s7, $a7, 1
	sltu	$a7, $s3, $a4
	maskeqz	$s4, $s3, $a7
	masknez	$a7, $a4, $a7
	or	$a7, $s4, $a7
	sub.d	$s5, $t0, $a7
	srli.d	$a7, $s5, 3
	addi.d	$s4, $a7, 1
	vst	$vr0, $sp, 16
	vst	$vr1, $sp, 32
	st.d	$t5, $sp, 48
	addi.d	$a7, $sp, 16
	.p2align	4, , 16
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a7, 0
	bne	$t8, $t0, .LBB1_57
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	addi.d	$t8, $t8, 1
	addi.d	$a7, $a7, 8
	bne	$s1, $t8, .LBB1_3
# %bb.5:                                # %.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	pcalau12i	$a7, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a7, %pc_lo12(.LCPI1_2)
	pcalau12i	$a7, %pc_hi20(.LCPI1_3)
	vld	$vr3, $a7, %pc_lo12(.LCPI1_3)
	vst	$vr2, $sp, 24
	vst	$vr3, $sp, 40
	bnez	$a0, .LBB1_10
# %bb.6:                                # %.lr.ph.i.1.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$t8, $a2
	bgeu	$s3, $a1, .LBB1_9
# %bb.7:                                # %vector.ph146
                                        #   in Loop: Header=BB1_2 Depth=1
	bstrpick.d	$a6, $a6, 60, 1
	slli.d	$a6, $a6, 4
	sub.d	$t8, $a2, $a6
	addi.d	$a6, $sp, 16
	.p2align	4, , 16
.LBB1_8:                                # %vector.body149
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a6, -8
	vst	$vr2, $a6, 0
	addi.d	$fp, $fp, -2
	addi.d	$a6, $a6, -16
	bnez	$fp, .LBB1_8
	.p2align	4, , 16
.LBB1_9:                                # %.lr.ph.i.1
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $t8, -8
	addi.d	$a7, $t8, -8
	st.d	$a6, $t8, 0
	move	$t8, $a7
	bltu	$s3, $a7, .LBB1_9
.LBB1_10:                               # %foo.exit.1.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a6, $zero
	addi.d	$a7, $sp, 16
	.p2align	4, , 16
.LBB1_11:                               # %foo.exit.1
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t8, $a7, 0
	bne	$a6, $t8, .LBB1_57
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 8
	bne	$s1, $a6, .LBB1_11
# %bb.13:                               # %.preheader.preheader.1
                                        #   in Loop: Header=BB1_2 Depth=1
	bnez	$a0, .LBB1_15
# %bb.14:                               # %.preheader.preheader.1
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a6, $sp, 24
	bnez	$a6, .LBB1_57
.LBB1_15:                               # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a6, $sp, 32
	bne	$a6, $t6, .LBB1_57
# %bb.16:                               # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a6, $sp, 40
	bne	$a6, $t7, .LBB1_57
# %bb.17:                               # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a6, $sp, 48
	bne	$a6, $t5, .LBB1_57
# %bb.18:                               # %.loopexit.1
                                        #   in Loop: Header=BB1_2 Depth=1
	vst	$vr0, $sp, 16
	vst	$vr1, $sp, 32
	ori	$a6, $zero, 1
	bltu	$a6, $a0, .LBB1_24
# %bb.19:                               # %.lr.ph.i.2.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a6, $a3
	ori	$a7, $zero, 7
	beq	$t1, $a7, .LBB1_23
# %bb.20:                               # %vector.ph131
                                        #   in Loop: Header=BB1_2 Depth=1
	bstrpick.d	$a6, $a5, 61, 1
	slli.d	$t1, $a6, 1
	slli.d	$a6, $a6, 4
	sub.d	$a6, $a3, $a6
	move	$a7, $a2
	.p2align	4, , 16
.LBB1_21:                               # %vector.body134
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a7, -8
	vst	$vr2, $a7, 0
	addi.d	$ra, $ra, -2
	addi.d	$a7, $a7, -16
	bnez	$ra, .LBB1_21
# %bb.22:                               # %middle.block140
                                        #   in Loop: Header=BB1_2 Depth=1
	beq	$a5, $t1, .LBB1_24
	.p2align	4, , 16
.LBB1_23:                               # %.lr.ph.i.2
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a6, -8
	addi.d	$a7, $a6, -8
	st.d	$a5, $a6, 0
	move	$a6, $a7
	bltu	$s3, $a7, .LBB1_23
.LBB1_24:                               # %foo.exit.2.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a5, $zero
	addi.d	$a6, $sp, 16
	.p2align	4, , 16
.LBB1_25:                               # %foo.exit.2
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a6, 0
	bne	$a5, $a7, .LBB1_57
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 8
	bne	$s1, $a5, .LBB1_25
# %bb.27:                               # %.preheader.2.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a5, $t3
	move	$a6, $t2
	.p2align	4, , 16
.LBB1_28:                               # %.preheader.2
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a5, 1
	bgeu	$a5, $t6, .LBB1_30
# %bb.29:                               #   in Loop: Header=BB1_28 Depth=2
	ldx.d	$a7, $a6, $a1
	addi.d	$a6, $a6, 8
	beq	$a5, $a7, .LBB1_28
	b	.LBB1_57
	.p2align	4, , 16
.LBB1_30:                               # %.lr.ph.preheader.2
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a5, $sp, 40
	bne	$a5, $t7, .LBB1_57
# %bb.31:                               # %.lr.ph.preheader.2
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a5, $sp, 48
	bne	$a5, $t5, .LBB1_57
# %bb.32:                               # %.loopexit.2
                                        #   in Loop: Header=BB1_2 Depth=1
	vst	$vr0, $sp, 16
	vst	$vr1, $sp, 32
	bltu	$t6, $a0, .LBB1_38
# %bb.33:                               # %.lr.ph.i.3.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a5, $a4
	ori	$a6, $zero, 7
	beq	$s8, $a6, .LBB1_37
# %bb.34:                               # %vector.ph116
                                        #   in Loop: Header=BB1_2 Depth=1
	bstrpick.d	$a5, $s7, 61, 1
	slli.d	$a6, $a5, 1
	slli.d	$a5, $a5, 4
	sub.d	$a5, $a4, $a5
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_35:                               # %vector.body119
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a7, -8
	vst	$vr2, $a7, 0
	addi.d	$s6, $s6, -2
	addi.d	$a7, $a7, -16
	bnez	$s6, .LBB1_35
# %bb.36:                               # %middle.block125
                                        #   in Loop: Header=BB1_2 Depth=1
	beq	$s7, $a6, .LBB1_38
	.p2align	4, , 16
.LBB1_37:                               # %.lr.ph.i.3
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, -8
	addi.d	$a7, $a5, -8
	st.d	$a6, $a5, 0
	move	$a5, $a7
	bltu	$s3, $a7, .LBB1_37
.LBB1_38:                               # %foo.exit.3.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a5, $zero
	move	$a6, $zero
	.p2align	4, , 16
.LBB1_39:                               # %foo.exit.3
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a7, $a5, $a1
	bne	$a6, $a7, .LBB1_57
# %bb.40:                               #   in Loop: Header=BB1_39 Depth=2
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 1
	bne	$t2, $a5, .LBB1_39
# %bb.41:                               # %.preheader.3.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a5, $sp, 16
	move	$a6, $t3
	.p2align	4, , 16
.LBB1_42:                               # %.preheader.3
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $a6, 1
	bgeu	$a6, $t7, .LBB1_44
# %bb.43:                               #   in Loop: Header=BB1_42 Depth=2
	ldx.d	$a7, $a5, $t2
	addi.d	$a5, $a5, 8
	beq	$a6, $a7, .LBB1_42
	b	.LBB1_57
	.p2align	4, , 16
.LBB1_44:                               # %.lr.ph.preheader.3
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a5, $sp, 48
	bne	$a5, $t5, .LBB1_57
# %bb.45:                               # %.loopexit.3
                                        #   in Loop: Header=BB1_2 Depth=1
	vst	$vr0, $sp, 16
	vst	$vr1, $sp, 32
	bltu	$t7, $a0, .LBB1_51
# %bb.46:                               # %.lr.ph.i.4.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a5, $sp, 48
	ori	$a6, $zero, 7
	beq	$s5, $a6, .LBB1_50
# %bb.47:                               # %vector.ph
                                        #   in Loop: Header=BB1_2 Depth=1
	bstrpick.d	$a5, $s4, 61, 1
	slli.d	$a6, $a5, 1
	slli.d	$a5, $a5, 4
	addi.d	$a7, $sp, 48
	sub.d	$a5, $a7, $a5
	move	$a7, $a4
	.p2align	4, , 16
.LBB1_48:                               # %vector.body
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a7, -8
	vst	$vr2, $a7, 0
	addi.d	$s2, $s2, -2
	addi.d	$a7, $a7, -16
	bnez	$s2, .LBB1_48
# %bb.49:                               # %middle.block
                                        #   in Loop: Header=BB1_2 Depth=1
	beq	$s4, $a6, .LBB1_51
	.p2align	4, , 16
.LBB1_50:                               # %.lr.ph.i.4
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, -8
	addi.d	$a7, $a5, -8
	st.d	$a6, $a5, 0
	move	$a5, $a7
	bltu	$s3, $a7, .LBB1_50
.LBB1_51:                               # %foo.exit.4.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a5, $zero
	addi.d	$a6, $sp, 16
	.p2align	4, , 16
.LBB1_52:                               # %foo.exit.4
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a6, 0
	bne	$a5, $a7, .LBB1_57
# %bb.53:                               #   in Loop: Header=BB1_52 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 8
	bne	$s1, $a5, .LBB1_52
# %bb.54:                               # %.preheader.4.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a5, $sp, 16
	move	$a6, $t3
	.p2align	4, , 16
.LBB1_55:                               # %.preheader.4
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a6, $t7, .LBB1_1
# %bb.56:                               #   in Loop: Header=BB1_55 Depth=2
	ldx.d	$a7, $a5, $t2
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	beq	$a6, $a7, .LBB1_55
.LBB1_57:                               # %.loopexit58
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB1_58:
	move	$a0, $zero
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
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
