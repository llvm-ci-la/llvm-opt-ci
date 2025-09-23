	.file	"pr37573.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(p)
	addi.d	$a0, $a0, %pc_lo12(p)
	pcalau12i	$a1, %pc_hi20(q)
	addi.d	$a1, $a1, %pc_lo12(q)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
# %bb.1:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.p2align	5                               # -- Begin function bar
	.type	bar,@function
bar:                                    # @bar
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
	addi.d	$sp, $sp, -624
	lu12i.w	$a0, 10
	ori	$a1, $a0, 629
	st.w	$a1, $sp, 68
	ori	$a0, $zero, 1
	lu12i.w	$a2, -1
	ori	$a2, $a2, 1604
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 56
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a1, 31, 30
	xor	$a1, $a6, $a1
	mul.d	$a6, $a1, $a3
	add.w	$a1, $a6, $a5
	add.d	$a6, $a0, $a6
	add.d	$a7, $a4, $a2
	stptr.w	$a6, $a7, 2508
	addi.d	$a5, $a5, 1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB1_1
# %bb.2:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 64
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(p)
	addi.d	$s4, $a1, %pc_lo12(p)
	vld	$vr0, $s4, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 4
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 5
	vinsgr2vr.b	$vr1, $s5, 6
	vinsgr2vr.b	$vr1, $s6, 7
	vinsgr2vr.b	$vr1, $s7, 8
	vinsgr2vr.b	$vr1, $s8, 9
	vinsgr2vr.b	$vr1, $fp, 10
	vinsgr2vr.b	$vr1, $s0, 11
	vinsgr2vr.b	$vr1, $s1, 12
	vinsgr2vr.b	$vr1, $s2, 13
	vinsgr2vr.b	$vr1, $s3, 14
	vinsgr2vr.b	$vr1, $a0, 15
	vxor.v	$vr0, $vr0, $vr1
	vst	$vr0, $s4, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s4, 16
	xor	$a0, $a1, $a0
	st.b	$a0, $s4, 16
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s4, 17
	xor	$a0, $a1, $a0
	st.b	$a0, $s4, 17
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s4, 18
	xor	$a0, $a1, $a0
	st.b	$a0, $s4, 18
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s4, 19
	xor	$a0, $a1, $a0
	st.b	$a0, $s4, 19
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s4, 20
	xor	$a0, $a1, $a0
	st.b	$a0, $s4, 20
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s4, 21
	xor	$a0, $a1, $a0
	st.b	$a0, $s4, 21
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s4, 22
	xor	$a0, $a1, $a0
	st.b	$a0, $s4, 22
	addi.d	$sp, $sp, 624
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
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.p2align	5                               # -- Begin function foo
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 8
	beqz	$a1, .LBB2_2
# %bb.1:                                # %..loopexit_crit_edge
	ld.d	$a1, $a0, 0
	b	.LBB2_5
.LBB2_2:                                # %vector.ph
	ld.w	$a2, $a0, 12
	move	$a4, $zero
	addi.d	$a1, $a0, 12
	xvinsgr2vr.w	$xr0, $a2, 7
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4094
	xvreplgr2vr.w	$xr1, $a2
	lu12i.w	$a3, -524288
	xvreplgr2vr.w	$xr2, $a3
	xvrepli.w	$xr3, 1
	lu12i.w	$a2, -421749
	ori	$a2, $a2, 223
	xvreplgr2vr.w	$xr4, $a2
	ori	$a5, $zero, 896
	.p2align	4, , 16
.LBB2_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvori.b	$xr5, $xr0, 0
	add.d	$a6, $a0, $a4
	xvld	$xr0, $a6, 16
	xvpickve.w	$xr5, $xr5, 7
	xvinsve0.w	$xr5, $xr5, 0
	xvinsve0.w	$xr5, $xr0, 1
	xvpickve.w	$xr6, $xr0, 1
	xvinsve0.w	$xr5, $xr6, 2
	xvpickve.w	$xr6, $xr0, 2
	xvinsve0.w	$xr5, $xr6, 3
	xvpickve.w	$xr6, $xr0, 3
	xvinsve0.w	$xr5, $xr6, 4
	xvpickve.w	$xr6, $xr0, 4
	xvinsve0.w	$xr5, $xr6, 5
	xvpickve.w	$xr6, $xr0, 5
	xvinsve0.w	$xr5, $xr6, 6
	xvpickve.w	$xr6, $xr0, 6
	xvinsve0.w	$xr5, $xr6, 7
	xvand.v	$xr6, $xr0, $xr1
	xvand.v	$xr5, $xr5, $xr2
	xvor.v	$xr5, $xr6, $xr5
	xvsrli.w	$xr5, $xr5, 1
	xvld	$xr6, $a6, 1600
	xvand.v	$xr7, $xr0, $xr3
	xvseqi.w	$xr7, $xr7, 0
	xvandn.v	$xr7, $xr7, $xr4
	xvxor.v	$xr6, $xr7, $xr6
	xvxor.v	$xr5, $xr6, $xr5
	addi.d	$a4, $a4, 32
	xvst	$xr5, $a6, 12
	bne	$a4, $a5, .LBB2_3
# %bb.4:                                # %.loopexit.loopexit
	ld.wu	$a4, $a0, 912
	xvpickve2gr.w	$a5, $xr0, 7
	lu32i.d	$a3, 0
	and	$a5, $a5, $a3
	srli.d	$a6, $a4, 1
	bstrins.d	$a5, $a6, 30, 1
	srli.d	$a5, $a5, 1
	andi	$a6, $a4, 1
	ori	$a7, $zero, 2496
	ldx.w	$a7, $a0, $a7
	sub.d	$a6, $zero, $a6
	lu32i.d	$a2, 0
	and	$a6, $a6, $a2
	xor	$a6, $a6, $a7
	ld.wu	$a7, $a0, 916
	xor	$a5, $a6, $a5
	st.w	$a5, $a0, 908
	and	$a4, $a4, $a3
	srli.d	$a5, $a7, 1
	bstrins.d	$a4, $a5, 30, 1
	srli.d	$a4, $a4, 1
	ori	$a5, $zero, 2500
	ldx.w	$a5, $a0, $a5
	andi	$a6, $a7, 1
	sub.d	$a6, $zero, $a6
	and	$a6, $a6, $a2
	xor	$a5, $a6, $a5
	ld.wu	$a6, $a0, 920
	xor	$a4, $a5, $a4
	st.w	$a4, $a0, 912
	and	$a3, $a7, $a3
	srli.d	$a4, $a6, 1
	bstrins.d	$a3, $a4, 30, 1
	srli.d	$a3, $a3, 1
	ori	$a4, $zero, 2504
	ldx.w	$a4, $a0, $a4
	andi	$a5, $a6, 1
	sub.d	$a5, $zero, $a5
	and	$a2, $a5, $a2
	xor	$a2, $a2, $a4
	xor	$a2, $a2, $a3
	st.w	$a2, $a0, 916
.LBB2_5:                                # %.loopexit
	ld.wu	$a2, $a1, 0
	srli.d	$a3, $a2, 11
	xor	$a2, $a3, $a2
	slli.d	$a3, $a2, 7
	lu12i.w	$a4, -404795
	ori	$a4, $a4, 1664
	lu32i.d	$a4, 127
	and	$a3, $a3, $a4
	xor	$a2, $a3, $a2
	slli.d	$a3, $a2, 15
	lu12i.w	$a4, 31744
	and	$a3, $a3, $a4
	xor	$a3, $a3, $a2
	srli.d	$a3, $a3, 19
	srli.d	$a2, $a2, 1
	xor	$a2, $a3, $a2
	addi.d	$a3, $a1, 4
	andi	$a1, $a2, 255
	st.d	$a3, $a0, 0
	move	$a0, $a1
	ret
.Lfunc_end2:
	.size	foo, .Lfunc_end2-foo
                                        # -- End function
	.type	p,@object                       # @p
	.data
	.p2align	4, 0x0
p:
	.ascii	"\300I\0272b\036.\325L\031(I\221\344r\203\221=\223\203\263a8"
	.size	p, 23

	.type	q,@object                       # @q
q:
	.ascii	">AUTOIT UNICODE SCRIPT<"
	.size	q, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym p
	.addrsig_sym q
