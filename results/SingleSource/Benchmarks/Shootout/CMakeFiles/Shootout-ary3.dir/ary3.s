	.file	"ary3.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	b	.LBB0_3
.LBB0_2:
	lu12i.w	$a0, 366
	ori	$s1, $a0, 864
.LBB0_3:
	addi.w	$s0, $s1, 0
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s1, 31, 0
	bstrpick.d	$a2, $a1, 30, 3
	blez	$s0, .LBB0_11
# %bb.4:                                # %.lr.ph.preheader
	ori	$a3, $zero, 8
	bgeu	$s0, $a3, .LBB0_6
# %bb.5:
	move	$a3, $zero
	b	.LBB0_9
.LBB0_6:                                # %vector.ph
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_0)
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI0_1)
	slli.d	$a3, $a2, 3
	addi.d	$a4, $fp, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vpickev.w	$vr2, $vr0, $vr1
	vaddi.wu	$vr3, $vr2, 1
	vaddi.wu	$vr2, $vr2, 5
	vst	$vr3, $a4, -16
	vst	$vr2, $a4, 0
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_7
# %bb.8:                                # %middle.block
	beq	$a3, $a1, .LBB0_11
.LBB0_9:                                # %.lr.ph.preheader54
	alsl.d	$a4, $a3, $fp, 2
	sub.d	$a5, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 1
	bnez	$a5, .LBB0_10
.LBB0_11:                               # %.preheader.preheader
	move	$a3, $zero
	slli.d	$a2, $a2, 3
	andi	$a4, $a1, 7
	slli.d	$a5, $a1, 2
	addi.d	$a6, $a5, -16
	add.d	$a5, $fp, $a6
	add.d	$a6, $a0, $a6
	addi.d	$a7, $a0, -4
	addi.d	$t0, $fp, -4
	ori	$t1, $zero, 8
	ori	$t2, $zero, 1
	ori	$t3, $zero, 1000
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               # %._crit_edge
                                        #   in Loop: Header=BB0_13 Depth=1
	addi.w	$a3, $a3, 1
	beq	$a3, $t3, .LBB0_20
.LBB0_13:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	blez	$s0, .LBB0_12
# %bb.14:                               # %.lr.ph28.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t6, $a1
	bltu	$s0, $t1, .LBB0_18
# %bb.15:                               # %vector.body39.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t4, $a6
	move	$t5, $a5
	move	$t6, $a2
	.p2align	4, , 16
.LBB0_16:                               # %vector.body39
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t5, 0
	vld	$vr1, $t5, -16
	vld	$vr2, $t4, 0
	vld	$vr3, $t4, -16
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $t4, 0
	vst	$vr1, $t4, -16
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, -32
	addi.d	$t4, $t4, -32
	bnez	$t6, .LBB0_16
# %bb.17:                               # %middle.block50
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t6, $a4
	beq	$a2, $a1, .LBB0_12
.LBB0_18:                               # %.lr.ph28.preheader53
                                        #   in Loop: Header=BB0_13 Depth=1
	addi.d	$t4, $t6, 1
	alsl.d	$t5, $t6, $a7, 2
	alsl.d	$t6, $t6, $t0, 2
	.p2align	4, , 16
.LBB0_19:                               # %.lr.ph28
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	ld.w	$t8, $t5, 0
	add.d	$t7, $t8, $t7
	st.w	$t7, $t5, 0
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, -4
	addi.d	$t6, $t6, -4
	blt	$t2, $t4, .LBB0_19
	b	.LBB0_12
.LBB0_20:
	ld.w	$a1, $a0, 0
	alsl.d	$a2, $s0, $a0, 2
	ld.w	$a2, $a2, -4
	pcalau12i	$a3, %pc_hi20(.L.str)
	addi.d	$a3, $a3, %pc_lo12(.L.str)
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %d\n"
	.size	.L.str, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
