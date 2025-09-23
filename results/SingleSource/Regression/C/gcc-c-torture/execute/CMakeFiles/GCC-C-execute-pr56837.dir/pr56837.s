	.file	"pr56837.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -2
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	vreplgr2vr.d	$vr0, $a2
	lu12i.w	$a2, 2
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a1, $a0
	addi.d	$a0, $a0, 16
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB0_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
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
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -2
	ori	$s0, $a0, 64
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$a0, $a0, %pc_lo12(a)
	lu12i.w	$t8, 1
	ori	$a1, $t8, 4032
	ori	$a2, $t8, 4040
	ori	$a3, $t8, 4048
	ori	$a4, $t8, 4056
	ori	$a5, $t8, 4064
	ori	$a6, $t8, 4072
	ori	$a7, $t8, 4080
	ori	$t0, $t8, 4088
	ori	$t1, $t8, 4036
	ori	$t2, $t8, 4044
	ori	$t3, $t8, 4052
	ori	$t4, $t8, 4060
	ori	$t5, $t8, 4068
	ori	$t6, $t8, 4076
	ori	$t7, $t8, 4084
	ori	$t8, $t8, 4092
	xvrepli.b	$xr0, -1
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $s0
	add.d	$s0, $a0, $s0
	ldx.w	$s1, $s0, $a1
	ldx.w	$s2, $s0, $a2
	ldx.w	$s3, $s0, $a3
	ldx.w	$s4, $s0, $a4
	ldx.w	$s5, $s0, $a5
	ldx.w	$s6, $s0, $a6
	ldx.w	$s7, $s0, $a7
	ldx.w	$s8, $s0, $t0
	xvinsgr2vr.w	$xr1, $s1, 0
	xvinsgr2vr.w	$xr1, $s2, 1
	xvinsgr2vr.w	$xr1, $s3, 2
	xvinsgr2vr.w	$xr1, $s4, 3
	xvinsgr2vr.w	$xr1, $s5, 4
	xvinsgr2vr.w	$xr1, $s6, 5
	xvinsgr2vr.w	$xr1, $s7, 6
	xvinsgr2vr.w	$xr1, $s8, 7
	ldx.w	$s1, $s0, $t1
	ldx.w	$s2, $s0, $t2
	ldx.w	$s3, $s0, $t3
	ldx.w	$s4, $s0, $t4
	ldx.w	$s5, $s0, $t5
	ldx.w	$s6, $s0, $t6
	ldx.w	$s7, $s0, $t7
	ldx.w	$s0, $s0, $t8
	xvinsgr2vr.w	$xr2, $s1, 0
	xvinsgr2vr.w	$xr2, $s2, 1
	xvinsgr2vr.w	$xr2, $s3, 2
	xvinsgr2vr.w	$xr2, $s4, 3
	xvinsgr2vr.w	$xr2, $s5, 4
	xvinsgr2vr.w	$xr2, $s6, 5
	xvinsgr2vr.w	$xr2, $s7, 6
	xvinsgr2vr.w	$xr2, $s0, 7
	xvseqi.w	$xr1, $xr1, -1
	xvxor.v	$xr1, $xr1, $xr0
	xvseqi.w	$xr2, $xr2, 0
	xvorn.v	$xr1, $xr1, $xr2
	xvmskltz.w	$xr1, $xr1
	xvpickve2gr.wu	$s1, $xr1, 0
	xvpickve2gr.wu	$s0, $xr1, 4
	bstrins.d	$s1, $s0, 7, 4
	bnez	$s1, .LBB1_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.d	$s0, $fp, 64
	bnez	$fp, .LBB1_1
.LBB1_3:                                # %middle.split
	andi	$a0, $s1, 255
	bnez	$a0, .LBB1_5
# %bb.4:                                # %middle.block
	move	$a0, $zero
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
.LBB1_5:                                # %vector.early.exit
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	2, 0x0
a:
	.space	8192
	.size	a, 8192

	.section	".note.GNU-stack","",@progbits
	.addrsig
