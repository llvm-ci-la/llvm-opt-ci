	.file	"stdarg-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ori	$a2, $zero, 5
	bne	$a0, $a2, .LBB0_2
# %bb.1:
	ld.w	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(foo_arg)
	st.w	$a0, $a1, %pc_lo12(foo_arg)
	ret
.LBB0_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a1, 4
	ori	$a2, $a1, 8
	beq	$a0, $a2, .LBB1_4
# %bb.1:
	ori	$a1, $a1, 6
	bne	$a0, $a1, .LBB1_7
# %bb.2:
	pcalau12i	$a1, %pc_hi20(gap)
	ld.d	$a2, $a1, %pc_lo12(gap)
	addi.d	$a3, $a2, 8
	st.d	$a3, $a1, %pc_lo12(gap)
	fld.d	$fa0, $a2, 0
	vldi	$vr1, -975
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_8
# %bb.3:
	ld.d	$a3, $a2, 8
	addi.d	$a2, $a2, 16
	ori	$a4, $zero, 129
	st.d	$a2, $a1, %pc_lo12(gap)
	beq	$a3, $a4, .LBB1_7
	b	.LBB1_8
.LBB1_4:
	pcalau12i	$fp, %pc_hi20(pap)
	ld.d	$a1, $fp, %pc_lo12(pap)
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a2, 8
	st.d	$a3, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 14
	bne	$a1, $a2, .LBB1_8
# %bb.5:
	ld.d	$a1, $fp, %pc_lo12(pap)
	ld.d	$a2, $a1, 0
	addi.d	$a2, $a2, 15
	move	$a3, $a2
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a4, $a3, 16
	st.d	$a4, $a1, 0
	ori	$a1, $zero, 8
	bstrins.d	$a2, $a1, 3, 0
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a3, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 394752
	lu52i.d	$a3, $a3, 1024
	move	$s0, $a0
	move	$a0, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_8
# %bb.6:
	move	$a0, $s0
	ld.d	$a1, $fp, %pc_lo12(pap)
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a2, 8
	st.d	$a3, $a1, 0
	ld.w	$a1, $a2, 0
	ori	$a2, $zero, 17
	bne	$a1, $a2, .LBB1_8
.LBB1_7:
	pcalau12i	$a1, %pc_hi20(bar_arg)
	st.w	$a0, $a1, %pc_lo12(bar_arg)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_8:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.globl	f0                              # -- Begin function f0
	.p2align	5
	.type	f0,@function
f0:                                     # @f0
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	f0, .Lfunc_end2-f0
                                        # -- End function
	.globl	f1                              # -- Begin function f1
	.p2align	5
	.type	f1,@function
f1:                                     # @f1
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	f1, .Lfunc_end3-f1
                                        # -- End function
	.globl	f2                              # -- Begin function f2
	.p2align	5
	.type	f2,@function
f2:                                     # @f2
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a7, $sp, 120
	st.d	$a6, $sp, 112
	st.d	$a5, $sp, 104
	st.d	$a4, $sp, 96
	st.d	$a3, $sp, 88
	st.d	$a2, $sp, 80
	st.d	$a1, $sp, 72
	pcalau12i	$a0, %pc_hi20(d)
	fld.d	$fa0, $a0, %pc_lo12(d)
	addi.d	$a0, $sp, 72
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s1, $fa0
	lu12i.w	$fp, 4
	ori	$s0, $fp, 8
	st.d	$a0, $sp, 8
	beq	$s1, $s0, .LBB4_4
# %bb.1:
	ori	$a0, $fp, 6
	bne	$s1, $a0, .LBB4_7
# %bb.2:
	pcalau12i	$a0, %pc_hi20(gap)
	ld.d	$a1, $a0, %pc_lo12(gap)
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, %pc_lo12(gap)
	fld.d	$fa0, $a1, 0
	vldi	$vr1, -975
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_15
# %bb.3:
	ld.d	$a2, $a1, 8
	addi.d	$a1, $a1, 16
	ori	$a3, $zero, 129
	st.d	$a1, $a0, %pc_lo12(gap)
	beq	$a2, $a3, .LBB4_7
	b	.LBB4_15
.LBB4_4:
	pcalau12i	$s2, %pc_hi20(pap)
	ld.d	$a0, $s2, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB4_15
# %bb.5:
	ld.d	$a0, $s2, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a1, $a1, 15
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $a2, 16
	st.d	$a3, $a0, 0
	ori	$a0, $zero, 8
	bstrins.d	$a1, $a0, 3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 394752
	lu52i.d	$a3, $a2, 1024
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_15
# %bb.6:
	ld.d	$a0, $s2, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, 0
	ld.w	$a0, $a1, 0
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB4_15
.LBB4_7:                                # %bar.exit
	ld.d	$a0, $sp, 8
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 8
	ld.d	$s2, $a0, 0
	pcalau12i	$s3, %pc_hi20(bar_arg)
	st.w	$s1, $s3, %pc_lo12(bar_arg)
	pcalau12i	$a1, %pc_hi20(x)
	addi.w	$a0, $s2, 0
	st.d	$s2, $a1, %pc_lo12(x)
	beq	$a0, $s0, .LBB4_11
# %bb.8:                                # %bar.exit
	ori	$a1, $fp, 6
	bne	$a0, $a1, .LBB4_14
# %bb.9:
	pcalau12i	$a0, %pc_hi20(gap)
	ld.d	$a1, $a0, %pc_lo12(gap)
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, %pc_lo12(gap)
	fld.d	$fa0, $a1, 0
	vldi	$vr1, -975
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_15
# %bb.10:
	ld.d	$a2, $a1, 8
	addi.d	$a1, $a1, 16
	ori	$a3, $zero, 129
	st.d	$a1, $a0, %pc_lo12(gap)
	beq	$a2, $a3, .LBB4_14
	b	.LBB4_15
.LBB4_11:
	pcalau12i	$fp, %pc_hi20(pap)
	ld.d	$a0, $fp, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB4_15
# %bb.12:
	ld.d	$a0, $fp, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a1, $a1, 15
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $a2, 16
	st.d	$a3, $a0, 0
	ori	$a0, $zero, 8
	bstrins.d	$a1, $a0, 3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 394752
	lu52i.d	$a3, $a2, 1024
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_15
# %bb.13:
	ld.d	$a0, $fp, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, 0
	ld.w	$a0, $a1, 0
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB4_15
.LBB4_14:                               # %bar.exit4
	st.w	$s2, $s3, %pc_lo12(bar_arg)
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB4_15:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	f2, .Lfunc_end4-f2
                                        # -- End function
	.globl	f3                              # -- Begin function f3
	.p2align	5
	.type	f3,@function
f3:                                     # @f3
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	fld.d	$fa0, $sp, 24
	pcalau12i	$a0, %pc_hi20(d)
	fst.d	$fa0, $a0, %pc_lo12(d)
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end5:
	.size	f3, .Lfunc_end5-f3
                                        # -- End function
	.globl	f4                              # -- Begin function f4
	.p2align	5
	.type	f4,@function
f4:                                     # @f4
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	addi.d	$a1, $sp, 32
	st.d	$a1, $sp, 8
	fld.d	$fa0, $sp, 24
	ftintrz.l.d	$fa0, $fa0
	pcalau12i	$a2, %pc_hi20(x)
	ori	$a3, $zero, 5
	fst.d	$fa0, $a2, %pc_lo12(x)
	bne	$a0, $a3, .LBB6_2
# %bb.1:                                # %foo.exit
	ld.w	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(foo_arg)
	st.w	$a0, $a1, %pc_lo12(foo_arg)
	addi.d	$sp, $sp, 80
	ret
.LBB6_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	f4, .Lfunc_end6-f4
                                        # -- End function
	.globl	f5                              # -- Begin function f5
	.p2align	5
	.type	f5,@function
f5:                                     # @f5
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 104
	st.d	$a6, $sp, 96
	st.d	$a5, $sp, 88
	st.d	$a4, $sp, 80
	st.d	$a3, $sp, 72
	st.d	$a2, $sp, 64
	st.d	$a1, $sp, 56
	addi.d	$a3, $sp, 56
	st.d	$a3, $sp, 16
	pcalau12i	$a1, %pc_hi20(gap)
	lu12i.w	$a2, 4
	ori	$a4, $a2, 8
	st.d	$a3, $a1, %pc_lo12(gap)
	beq	$a0, $a4, .LBB7_4
# %bb.1:
	ori	$a2, $a2, 6
	bne	$a0, $a2, .LBB7_7
# %bb.2:
	ld.d	$a2, $a1, %pc_lo12(gap)
	addi.d	$a3, $a2, 8
	st.d	$a3, $a1, %pc_lo12(gap)
	fld.d	$fa0, $a2, 0
	vldi	$vr1, -975
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_8
# %bb.3:
	ld.d	$a3, $a2, 8
	addi.d	$a2, $a2, 16
	ori	$a4, $zero, 129
	st.d	$a2, $a1, %pc_lo12(gap)
	beq	$a3, $a4, .LBB7_7
	b	.LBB7_8
.LBB7_4:
	pcalau12i	$fp, %pc_hi20(pap)
	ld.d	$a1, $fp, %pc_lo12(pap)
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a2, 8
	st.d	$a3, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 14
	bne	$a1, $a2, .LBB7_8
# %bb.5:
	ld.d	$a1, $fp, %pc_lo12(pap)
	ld.d	$a2, $a1, 0
	addi.d	$a2, $a2, 15
	move	$a3, $a2
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a4, $a3, 16
	st.d	$a4, $a1, 0
	ori	$a1, $zero, 8
	bstrins.d	$a2, $a1, 3, 0
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a3, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 394752
	lu52i.d	$a3, $a3, 1024
	move	$s0, $a0
	move	$a0, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_8
# %bb.6:
	move	$a0, $s0
	ld.d	$a1, $fp, %pc_lo12(pap)
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a2, 8
	st.d	$a3, $a1, 0
	ld.w	$a1, $a2, 0
	ori	$a2, $zero, 17
	bne	$a1, $a2, .LBB7_8
.LBB7_7:                                # %bar.exit
	pcalau12i	$a1, %pc_hi20(bar_arg)
	st.w	$a0, $a1, %pc_lo12(bar_arg)
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB7_8:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	f5, .Lfunc_end7-f5
                                        # -- End function
	.globl	f6                              # -- Begin function f6
	.p2align	5
	.type	f6,@function
f6:                                     # @f6
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 120
	st.d	$a6, $sp, 112
	st.d	$a5, $sp, 104
	st.d	$a4, $sp, 96
	st.d	$a3, $sp, 88
	st.d	$a2, $sp, 80
	st.d	$a1, $sp, 72
	pcalau12i	$a0, %pc_hi20(d)
	fld.d	$fa0, $a0, %pc_lo12(d)
	addi.d	$a0, $sp, 72
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s2, $fa0
	lu12i.w	$fp, 4
	ori	$s0, $fp, 8
	st.d	$a0, $sp, 16
	beq	$s2, $s0, .LBB8_4
# %bb.1:
	ori	$a0, $fp, 6
	bne	$s2, $a0, .LBB8_7
# %bb.2:
	pcalau12i	$a0, %pc_hi20(gap)
	ld.d	$a1, $a0, %pc_lo12(gap)
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, %pc_lo12(gap)
	fld.d	$fa0, $a1, 0
	vldi	$vr1, -975
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_15
# %bb.3:
	ld.d	$a2, $a1, 8
	addi.d	$a1, $a1, 16
	ori	$a3, $zero, 129
	st.d	$a1, $a0, %pc_lo12(gap)
	beq	$a2, $a3, .LBB8_7
	b	.LBB8_15
.LBB8_4:
	pcalau12i	$s1, %pc_hi20(pap)
	ld.d	$a0, $s1, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB8_15
# %bb.5:
	ld.d	$a0, $s1, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a1, $a1, 15
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $a2, 16
	st.d	$a3, $a0, 0
	ori	$a0, $zero, 8
	bstrins.d	$a1, $a0, 3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 394752
	lu52i.d	$a3, $a2, 1024
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_15
# %bb.6:
	ld.d	$a0, $s1, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, 0
	ld.w	$a0, $a1, 0
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB8_15
.LBB8_7:                                # %bar.exit
	ld.d	$a0, $sp, 16
	pcalau12i	$s1, %pc_hi20(bar_arg)
	st.w	$s2, $s1, %pc_lo12(bar_arg)
	ld.d	$s2, $a0, 16
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 16
	pcalau12i	$a1, %pc_hi20(x)
	addi.w	$a0, $s2, 0
	st.d	$s2, $a1, %pc_lo12(x)
	beq	$a0, $s0, .LBB8_11
# %bb.8:                                # %bar.exit
	ori	$a1, $fp, 6
	bne	$a0, $a1, .LBB8_14
# %bb.9:
	pcalau12i	$a0, %pc_hi20(gap)
	ld.d	$a1, $a0, %pc_lo12(gap)
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, %pc_lo12(gap)
	fld.d	$fa0, $a1, 0
	vldi	$vr1, -975
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_15
# %bb.10:
	ld.d	$a2, $a1, 8
	addi.d	$a1, $a1, 16
	ori	$a3, $zero, 129
	st.d	$a1, $a0, %pc_lo12(gap)
	beq	$a2, $a3, .LBB8_14
	b	.LBB8_15
.LBB8_11:
	pcalau12i	$fp, %pc_hi20(pap)
	ld.d	$a0, $fp, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB8_15
# %bb.12:
	ld.d	$a0, $fp, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a1, $a1, 15
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $a2, 16
	st.d	$a3, $a0, 0
	ori	$a0, $zero, 8
	bstrins.d	$a1, $a0, 3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 394752
	lu52i.d	$a3, $a2, 1024
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_15
# %bb.13:
	ld.d	$a0, $fp, %pc_lo12(pap)
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 8
	st.d	$a2, $a0, 0
	ld.w	$a0, $a1, 0
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB8_15
.LBB8_14:                               # %bar.exit4
	st.w	$s2, $s1, %pc_lo12(bar_arg)
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB8_15:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	f6, .Lfunc_end8-f6
                                        # -- End function
	.globl	f7                              # -- Begin function f7
	.p2align	5
	.type	f7,@function
f7:                                     # @f7
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 104
	st.d	$a6, $sp, 96
	st.d	$a5, $sp, 88
	st.d	$a4, $sp, 80
	st.d	$a3, $sp, 72
	st.d	$a2, $sp, 64
	st.d	$a1, $sp, 56
	addi.d	$a1, $sp, 56
	st.d	$a1, $sp, 16
	pcalau12i	$a2, %pc_hi20(pap)
	addi.d	$a3, $sp, 16
	lu12i.w	$a1, 4
	ori	$a4, $a1, 8
	st.d	$a3, $a2, %pc_lo12(pap)
	beq	$a0, $a4, .LBB9_4
# %bb.1:
	ori	$a1, $a1, 6
	bne	$a0, $a1, .LBB9_7
# %bb.2:
	pcalau12i	$a1, %pc_hi20(gap)
	ld.d	$a2, $a1, %pc_lo12(gap)
	addi.d	$a3, $a2, 8
	st.d	$a3, $a1, %pc_lo12(gap)
	fld.d	$fa0, $a2, 0
	vldi	$vr1, -975
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_8
# %bb.3:
	ld.d	$a3, $a2, 8
	addi.d	$a2, $a2, 16
	ori	$a4, $zero, 129
	st.d	$a2, $a1, %pc_lo12(gap)
	beq	$a3, $a4, .LBB9_7
	b	.LBB9_8
.LBB9_4:
	ld.d	$a1, $sp, 16
	addi.d	$a2, $a1, 8
	st.d	$a2, $sp, 16
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 14
	bne	$a2, $a3, .LBB9_8
# %bb.5:
	addi.d	$a1, $a1, 23
	move	$fp, $a1
	bstrins.d	$fp, $zero, 3, 0
	addi.d	$a2, $fp, 16
	st.d	$a2, $sp, 16
	ori	$a2, $zero, 8
	bstrins.d	$a1, $a2, 3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a2, $fp, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 394752
	lu52i.d	$a3, $a3, 1024
	move	$s0, $a0
	move	$a0, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_8
# %bb.6:
	move	$a0, $s0
	ld.w	$a1, $fp, 16
	addi.d	$a2, $fp, 24
	ori	$a3, $zero, 17
	st.d	$a2, $sp, 16
	bne	$a1, $a3, .LBB9_8
.LBB9_7:                                # %bar.exit
	pcalau12i	$a1, %pc_hi20(bar_arg)
	st.w	$a0, $a1, %pc_lo12(bar_arg)
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB9_8:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	f7, .Lfunc_end9-f7
                                        # -- End function
	.globl	f8                              # -- Begin function f8
	.p2align	5
	.type	f8,@function
f8:                                     # @f8
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 104
	st.d	$a6, $sp, 96
	st.d	$a5, $sp, 88
	st.d	$a4, $sp, 80
	st.d	$a3, $sp, 72
	st.d	$a2, $sp, 64
	st.d	$a1, $sp, 56
	addi.d	$a1, $sp, 56
	st.d	$a1, $sp, 16
	pcalau12i	$a2, %pc_hi20(pap)
	addi.d	$a3, $sp, 16
	lu12i.w	$a1, 4
	ori	$a4, $a1, 8
	st.d	$a3, $a2, %pc_lo12(pap)
	beq	$a0, $a4, .LBB10_4
# %bb.1:
	ori	$a1, $a1, 6
	bne	$a0, $a1, .LBB10_7
# %bb.2:
	pcalau12i	$a1, %pc_hi20(gap)
	ld.d	$a2, $a1, %pc_lo12(gap)
	addi.d	$a3, $a2, 8
	st.d	$a3, $a1, %pc_lo12(gap)
	fld.d	$fa0, $a2, 0
	vldi	$vr1, -975
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB10_8
# %bb.3:
	ld.d	$a3, $a2, 8
	addi.d	$a2, $a2, 16
	ori	$a4, $zero, 129
	st.d	$a2, $a1, %pc_lo12(gap)
	beq	$a3, $a4, .LBB10_7
	b	.LBB10_8
.LBB10_4:
	ld.d	$a1, $sp, 16
	addi.d	$a2, $a1, 8
	st.d	$a2, $sp, 16
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 14
	bne	$a2, $a3, .LBB10_8
# %bb.5:
	addi.d	$a1, $a1, 23
	move	$fp, $a1
	bstrins.d	$fp, $zero, 3, 0
	addi.d	$a2, $fp, 16
	st.d	$a2, $sp, 16
	ori	$a2, $zero, 8
	bstrins.d	$a1, $a2, 3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a2, $fp, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 394752
	lu52i.d	$a3, $a3, 1024
	move	$s0, $a0
	move	$a0, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_8
# %bb.6:
	move	$a0, $s0
	ld.w	$a1, $fp, 16
	addi.d	$a2, $fp, 24
	ori	$a3, $zero, 17
	st.d	$a2, $sp, 16
	bne	$a1, $a3, .LBB10_8
.LBB10_7:                               # %bar.exit
	ld.d	$a1, $sp, 16
	addi.d	$a2, $a1, 8
	st.d	$a2, $sp, 16
	fld.d	$fa0, $a1, 0
	pcalau12i	$a1, %pc_hi20(bar_arg)
	st.w	$a0, $a1, %pc_lo12(bar_arg)
	pcalau12i	$a0, %pc_hi20(d)
	fst.d	$fa0, $a0, %pc_lo12(d)
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB10_8:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	f8, .Lfunc_end10-f8
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI11_0:
	.dword	0x4060600000000000              # double 131
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(d)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 1027
	st.d	$a0, $s1, %pc_lo12(d)
	ori	$a1, $zero, 28
	ori	$s0, $zero, 28
	pcaddu18i	$ra, %call36(f2)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(bar_arg)
	ld.w	$a0, $s2, %pc_lo12(bar_arg)
	bne	$a0, $s0, .LBB11_11
# %bb.1:
	pcalau12i	$fp, %pc_hi20(x)
	ld.d	$a0, $fp, %pc_lo12(x)
	bne	$a0, $s0, .LBB11_11
# %bb.2:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 24576
	lu52i.d	$a1, $a0, 1030
	pcaddu18i	$ra, %call36(f3)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, %pc_lo12(d)
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI11_0)
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB11_11
# %bb.3:
	lu52i.d	$a1, $zero, 1027
	ori	$a0, $zero, 5
	ori	$a2, $zero, 128
	ori	$s0, $zero, 128
	pcaddu18i	$ra, %call36(f4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(x)
	ori	$a1, $zero, 16
	bne	$a0, $a1, .LBB11_11
# %bb.4:
	pcalau12i	$a0, %pc_hi20(foo_arg)
	ld.w	$a0, $a0, %pc_lo12(foo_arg)
	bne	$a0, $s0, .LBB11_11
# %bb.5:
	lu12i.w	$s0, 4
	ori	$fp, $s0, 6
	ori	$a0, $zero, 0
	lu32i.d	$a0, 65536
	lu52i.d	$a1, $a0, 1027
	ori	$a2, $zero, 129
	move	$a0, $fp
	pcaddu18i	$ra, %call36(f5)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(bar_arg)
	bne	$a0, $fp, .LBB11_11
# %bb.6:
	addi.w	$fp, $zero, -31
	ori	$a1, $zero, 12
	ori	$a2, $zero, 14
	move	$a3, $fp
	pcaddu18i	$ra, %call36(f6)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(bar_arg)
	bne	$a0, $fp, .LBB11_11
# %bb.7:
	ori	$fp, $s0, 8
	ori	$a0, $zero, 0
	lu32i.d	$a0, 394752
	lu52i.d	$s0, $a0, 1024
	ori	$a0, $zero, 0
	lu32i.d	$a0, -393216
	lu52i.d	$a5, $a0, 1027
	ori	$a1, $zero, 14
	ori	$a4, $zero, 17
	ori	$s3, $zero, 0
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(f7)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(bar_arg)
	bne	$a0, $fp, .LBB11_11
# %bb.8:
	lu32i.d	$s3, -327680
	lu52i.d	$a5, $s3, 1027
	ori	$a1, $zero, 14
	ori	$a4, $zero, 17
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(f8)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(bar_arg)
	bne	$a0, $fp, .LBB11_11
# %bb.9:
	fld.d	$fa0, $s1, %pc_lo12(d)
	vldi	$vr1, -965
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB11_11
# %bb.10:
	move	$a0, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB11_11:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
                                        # -- End function
	.type	foo_arg,@object                 # @foo_arg
	.bss
	.globl	foo_arg
	.p2align	2, 0x0
foo_arg:
	.word	0                               # 0x0
	.size	foo_arg, 4

	.type	gap,@object                     # @gap
	.globl	gap
	.p2align	3, 0x0
gap:
	.dword	0
	.size	gap, 8

	.type	pap,@object                     # @pap
	.globl	pap
	.p2align	3, 0x0
pap:
	.dword	0
	.size	pap, 8

	.type	bar_arg,@object                 # @bar_arg
	.globl	bar_arg
	.p2align	2, 0x0
bar_arg:
	.word	0                               # 0x0
	.size	bar_arg, 4

	.type	d,@object                       # @d
	.globl	d
	.p2align	3, 0x0
d:
	.dword	0x0000000000000000              # double 0
	.size	d, 8

	.type	x,@object                       # @x
	.globl	x
	.p2align	3, 0x0
x:
	.dword	0                               # 0x0
	.size	x, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gap
