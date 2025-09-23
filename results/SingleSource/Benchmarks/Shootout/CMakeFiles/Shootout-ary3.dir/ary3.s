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
	b	.LBB0_3
.LBB0_2:
	lu12i.w	$a0, 366
	ori	$a0, $a0, 864
.LBB0_3:
	addi.w	$s1, $a0, 0
	ori	$a1, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$s1, .LBB0_6
# %bb.4:                                # %.lr.ph.preheader
	ori	$a1, $zero, 8
	bstrpick.d	$a0, $s1, 30, 3
	bgeu	$s1, $a1, .LBB0_7
# %bb.5:
	move	$a1, $zero
	b	.LBB0_10
.LBB0_6:
	move	$a2, $zero
	move	$a1, $zero
	b	.LBB0_21
.LBB0_7:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	slli.d	$a1, $a0, 3
	addi.d	$a2, $fp, 16
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vpickev.w	$vr2, $vr0, $vr1
	vaddi.wu	$vr3, $vr2, 1
	vaddi.wu	$vr2, $vr2, 5
	vst	$vr3, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB0_8
# %bb.9:                                # %middle.block
	beq	$a1, $s1, .LBB0_12
.LBB0_10:                               # %.lr.ph.preheader56
	alsl.d	$a2, $a1, $fp, 2
	sub.d	$a3, $s1, $a1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB0_11
.LBB0_12:                               # %.preheader.us.preheader
	move	$a1, $zero
	slli.d	$a0, $a0, 3
	sub.d	$a2, $s1, $a0
	slli.d	$a3, $s1, 2
	addi.d	$a4, $a3, -16
	add.d	$a3, $fp, $a4
	add.d	$a4, $s0, $a4
	addi.d	$a5, $fp, -4
	addi.d	$a6, $s0, -4
	ori	$a7, $zero, 8
	ori	$t0, $zero, 1
	ori	$t1, $zero, 1000
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.w	$a1, $a1, 1
	beq	$a1, $t1, .LBB0_20
.LBB0_14:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	move	$t4, $s1
	bltu	$s1, $a7, .LBB0_18
# %bb.15:                               # %vector.body42.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$t2, $a4
	move	$t3, $a3
	move	$t4, $a0
	.p2align	4, , 16
.LBB0_16:                               # %vector.body42
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t3, 0
	vld	$vr1, $t3, -16
	vld	$vr2, $t2, 0
	vld	$vr3, $t2, -16
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $t2, 0
	vst	$vr1, $t2, -16
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, -32
	addi.d	$t2, $t2, -32
	bnez	$t4, .LBB0_16
# %bb.17:                               # %middle.block53
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$t4, $a2
	beq	$a0, $s1, .LBB0_13
.LBB0_18:                               # %scalar.ph37.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$t2, $t4, 1
	alsl.d	$t3, $t4, $a5, 2
	alsl.d	$t4, $t4, $a6, 2
	.p2align	4, , 16
.LBB0_19:                               # %scalar.ph37
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t3, 0
	ld.w	$t6, $t4, 0
	add.d	$t5, $t6, $t5
	st.w	$t5, $t4, 0
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, -4
	addi.d	$t4, $t4, -4
	blt	$t0, $t2, .LBB0_19
	b	.LBB0_13
.LBB0_20:                               # %.split.us.loopexit
	ld.w	$a1, $s0, 0
	alsl.d	$a0, $s1, $s0, 2
	ld.w	$a2, $a0, -4
.LBB0_21:                               # %.split.us
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
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
