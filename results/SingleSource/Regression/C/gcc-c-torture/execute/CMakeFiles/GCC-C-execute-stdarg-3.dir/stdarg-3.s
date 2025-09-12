	.file	"stdarg-3.c"
	.text
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	pcalau12i	$a1, %pc_hi20(bar_arg)
	st.w	$a0, $a1, %pc_lo12(bar_arg)
	ret
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar
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
	addi.d	$a1, $sp, 24
	st.d	$a1, $sp, 8
	blez	$a0, .LBB1_5
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a2, $sp, 8
	ori	$a3, $zero, 20
	pcalau12i	$a1, %pc_hi20(x)
	addi.d	$a1, $a1, %pc_lo12(x)
	bgeu	$a0, $a3, .LBB1_6
.LBB1_2:
	move	$a3, $a0
	move	$a4, $a2
.LBB1_3:                                # %.lr.ph.preheader12
	addi.d	$a0, $a3, 1
	addi.d	$a2, $a4, 8
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $sp, 8
	ld.d	$a4, $a2, -8
	st.d	$a4, $a1, 0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bltu	$a3, $a0, .LBB1_4
.LBB1_5:                                # %._crit_edge
	addi.d	$sp, $sp, 80
	ret
.LBB1_6:                                # %vector.memcheck
	addi.d	$a4, $sp, 16
	addi.d	$a3, $a1, 8
	addi.d	$a5, $sp, 8
	sltu	$a6, $a5, $a3
	sltu	$a7, $a1, $a4
	and	$a6, $a6, $a7
	bnez	$a6, .LBB1_2
# %bb.7:                                # %vector.memcheck
	addi.d	$a6, $a0, -1
	bstrpick.d	$a6, $a6, 31, 0
	alsl.d	$a6, $a6, $a2, 3
	addi.d	$a6, $a6, 8
	sltu	$a5, $a5, $a6
	sltu	$a4, $a2, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_2
# %bb.8:                                # %vector.memcheck
	sltu	$a4, $a1, $a6
	sltu	$a3, $a2, $a3
	and	$a3, $a4, $a3
	bnez	$a3, .LBB1_2
# %bb.9:                                # %vector.ph
	bstrpick.d	$a4, $a0, 30, 2
	slli.d	$a5, $a4, 2
	sub.d	$a3, $a0, $a5
	slli.d	$a4, $a4, 5
	add.d	$a4, $a2, $a4
	move	$a7, $a5
	.p2align	4, , 16
.LBB1_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a6, $a2
	addi.d	$a7, $a7, -4
	addi.d	$a2, $a2, 32
	bnez	$a7, .LBB1_10
# %bb.11:                               # %middle.block
	vreplgr2vr.d	$vr0, $a6
	vaddi.du	$vr0, $vr0, 8
	ld.d	$a2, $a6, 24
	vpickve2gr.d	$a6, $vr0, 1
	addi.d	$a6, $a6, 24
	st.d	$a6, $sp, 8
	st.d	$a2, $a1, 0
	bne	$a5, $a0, .LBB1_3
	b	.LBB1_5
.Lfunc_end1:
	.size	f1, .Lfunc_end1-f1
                                        # -- End function
	.globl	f2                              # -- Begin function f2
	.p2align	5
	.type	f2,@function
f2:                                     # @f2
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	addi.d	$a1, $sp, 24
	st.d	$a1, $sp, 8
	blez	$a0, .LBB2_5
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a2, $sp, 8
	ori	$a3, $zero, 20
	pcalau12i	$a1, %pc_hi20(d)
	addi.d	$a1, $a1, %pc_lo12(d)
	bgeu	$a0, $a3, .LBB2_6
.LBB2_2:
	move	$a3, $a0
	move	$a4, $a2
.LBB2_3:                                # %.lr.ph.preheader12
	addi.d	$a0, $a3, 1
	addi.d	$a2, $a4, 8
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $sp, 8
	fld.d	$fa0, $a2, -8
	fst.d	$fa0, $a1, 0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bltu	$a3, $a0, .LBB2_4
.LBB2_5:                                # %._crit_edge
	addi.d	$sp, $sp, 80
	ret
.LBB2_6:                                # %vector.memcheck
	addi.d	$a4, $sp, 16
	addi.d	$a3, $a1, 8
	addi.d	$a5, $sp, 8
	sltu	$a6, $a5, $a3
	sltu	$a7, $a1, $a4
	and	$a6, $a6, $a7
	bnez	$a6, .LBB2_2
# %bb.7:                                # %vector.memcheck
	addi.d	$a6, $a0, -1
	bstrpick.d	$a6, $a6, 31, 0
	alsl.d	$a6, $a6, $a2, 3
	addi.d	$a6, $a6, 8
	sltu	$a5, $a5, $a6
	sltu	$a4, $a2, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB2_2
# %bb.8:                                # %vector.memcheck
	sltu	$a4, $a1, $a6
	sltu	$a3, $a2, $a3
	and	$a3, $a4, $a3
	bnez	$a3, .LBB2_2
# %bb.9:                                # %vector.ph
	bstrpick.d	$a4, $a0, 30, 2
	slli.d	$a5, $a4, 2
	sub.d	$a3, $a0, $a5
	slli.d	$a4, $a4, 5
	add.d	$a4, $a2, $a4
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a6, $a2
	addi.d	$a7, $a7, -4
	addi.d	$a2, $a2, 32
	bnez	$a7, .LBB2_10
# %bb.11:                               # %middle.block
	vreplgr2vr.d	$vr0, $a6
	vaddi.du	$vr0, $vr0, 8
	fld.d	$fa1, $a6, 24
	vpickve2gr.d	$a2, $vr0, 1
	addi.d	$a2, $a2, 24
	st.d	$a2, $sp, 8
	fst.d	$fa1, $a1, 0
	bne	$a5, $a0, .LBB2_3
	b	.LBB2_5
.Lfunc_end2:
	.size	f2, .Lfunc_end2-f2
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
	blez	$a0, .LBB3_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $a0, 1
	addi.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(x)
	pcalau12i	$a3, %pc_hi20(bar_arg)
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 8
	ld.d	$a5, $sp, 24
	st.d	$a5, $a2, %pc_lo12(x)
	addi.w	$a0, $a0, -1
	st.w	$a5, $a3, %pc_lo12(bar_arg)
	bltu	$a4, $a0, .LBB3_2
.LBB3_3:                                # %._crit_edge
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	f3, .Lfunc_end3-f3
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
	blez	$a0, .LBB4_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $a0, 1
	addi.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(d)
	vldi	$vr0, -1008
	pcalau12i	$a3, %pc_hi20(bar_arg)
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 8
	fld.d	$fa1, $sp, 24
	fst.d	$fa1, $a2, %pc_lo12(d)
	fadd.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a5, $fa1
	addi.w	$a0, $a0, -1
	st.w	$a5, $a3, %pc_lo12(bar_arg)
	bltu	$a4, $a0, .LBB4_2
.LBB4_3:                                # %._crit_edge
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end4:
	.size	f4, .Lfunc_end4-f4
                                        # -- End function
	.globl	f5                              # -- Begin function f5
	.p2align	5
	.type	f5,@function
f5:                                     # @f5
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	addi.d	$a1, $sp, 24
	st.d	$a1, $sp, 8
	blez	$a0, .LBB5_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a1, $sp, 8
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	pcalau12i	$a2, %pc_hi20(s1)
	addi.d	$a2, $a2, %pc_lo12(s1)
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 8
	ld.d	$a4, $a1, -8
	vld	$vr0, $a4, 16
	vst	$vr0, $a2, 16
	vld	$vr0, $a4, 0
	vst	$vr0, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bltu	$a3, $a0, .LBB5_2
.LBB5_3:                                # %._crit_edge
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end5:
	.size	f5, .Lfunc_end5-f5
                                        # -- End function
	.globl	f6                              # -- Begin function f6
	.p2align	5
	.type	f6,@function
f6:                                     # @f6
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	addi.d	$a1, $sp, 24
	st.d	$a1, $sp, 8
	blez	$a0, .LBB6_4
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a2, $sp, 8
	addi.d	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(s2)
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, 0
	addi.d	$a2, $a2, 16
	addi.w	$a0, $a0, -1
	vst	$vr0, $a1, %pc_lo12(s2)
	bltu	$a3, $a0, .LBB6_2
# %bb.3:                                # %._crit_edge
	st.d	$a2, $sp, 8
.LBB6_4:
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end6:
	.size	f6, .Lfunc_end6-f6
                                        # -- End function
	.globl	f7                              # -- Begin function f7
	.p2align	5
	.type	f7,@function
f7:                                     # @f7
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	blez	$a0, .LBB7_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $a0, 1
	addi.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(s1)
	addi.d	$a2, $a2, %pc_lo12(s1)
	pcalau12i	$a3, %pc_hi20(bar_arg)
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 8
	ld.d	$a5, $sp, 24
	vld	$vr0, $a5, 0
	vst	$vr0, $a2, 0
	vld	$vr0, $a5, 16
	ld.w	$a5, $a2, 0
	vst	$vr0, $a2, 16
	addi.w	$a0, $a0, -1
	st.w	$a5, $a3, %pc_lo12(bar_arg)
	bltu	$a4, $a0, .LBB7_2
.LBB7_3:                                # %._crit_edge
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end7:
	.size	f7, .Lfunc_end7-f7
                                        # -- End function
	.globl	f8                              # -- Begin function f8
	.p2align	5
	.type	f8,@function
f8:                                     # @f8
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	blez	$a0, .LBB8_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(s2)
	addi.d	$a1, $a1, %pc_lo12(s2)
	addi.d	$a2, $sp, 48
	pcalau12i	$a3, %pc_hi20(y)
	pcalau12i	$a4, %pc_hi20(bar_arg)
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB8_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 24
	ld.w	$a6, $sp, 40
	vst	$vr0, $a1, 0
	ld.d	$a7, $a1, 8
	st.d	$a2, $sp, 8
	st.w	$a6, $a3, %pc_lo12(y)
	addi.w	$a0, $a0, -1
	st.w	$a7, $a4, %pc_lo12(bar_arg)
	bltu	$a5, $a0, .LBB8_2
.LBB8_3:                                # %._crit_edge
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end8:
	.size	f8, .Lfunc_end8-f8
                                        # -- End function
	.globl	main                            # -- Begin function main
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
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 0
	ori	$a0, $zero, 7
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	ori	$a3, $zero, 3
	ori	$a4, $zero, 5
	ori	$a5, $zero, 7
	ori	$a6, $zero, 9
	ori	$a7, $zero, 11
	ori	$fp, $zero, 11
	pcaddu18i	$ra, %call36(f1)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(x)
	ld.d	$a0, $s0, %pc_lo12(x)
	bne	$a0, $fp, .LBB9_26
# %bb.1:
	lu52i.d	$a1, $zero, 1023
	lu52i.d	$a2, $zero, 1024
	lu52i.d	$a3, $zero, 1025
	lu52i.d	$a4, $zero, 1026
	lu52i.d	$a5, $zero, 1027
	lu52i.d	$fp, $zero, 1028
	lu52i.d	$a7, $zero, 1029
	ori	$a0, $zero, 6
	move	$a6, $fp
	pcaddu18i	$ra, %call36(f2)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(d)
	fld.d	$fa0, $s1, %pc_lo12(d)
	movgr2fr.d	$fa1, $fp
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_26
# %bb.2:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 1
	ori	$a2, $zero, 3
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(f3)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(bar_arg)
	ld.w	$a0, $fp, %pc_lo12(bar_arg)
	bne	$a0, $s2, .LBB9_26
# %bb.3:
	ld.d	$a0, $s0, %pc_lo12(x)
	bne	$a0, $s2, .LBB9_26
# %bb.4:
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 65536
	lu52i.d	$a1, $a1, 1027
	lu32i.d	$a0, 196608
	lu52i.d	$a2, $a0, 1027
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(f4)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(bar_arg)
	ori	$a1, $zero, 21
	bne	$a0, $a1, .LBB9_26
# %bb.5:
	fld.d	$fa0, $s1, %pc_lo12(d)
	vldi	$vr1, -975
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_26
# %bb.6:
	ori	$s2, $zero, 131
	st.w	$s2, $sp, 80
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -131072
	lu52i.d	$a1, $a1, 1026
	st.d	$a1, $sp, 88
	ori	$a2, $zero, 251
	st.w	$a2, $sp, 96
	ori	$a3, $zero, 0
	lu32i.d	$a3, 516096
	lu52i.d	$a3, $a3, 1030
	st.d	$a3, $sp, 104
	st.w	$s2, $sp, 48
	st.d	$a1, $sp, 56
	ori	$s1, $zero, 254
	st.w	$s1, $sp, 64
	lu32i.d	$a0, 409600
	lu52i.d	$a0, $a0, 1030
	st.d	$a0, $sp, 72
	st.w	$s2, $sp, 16
	st.d	$a1, $sp, 24
	st.w	$a2, $sp, 32
	st.d	$a3, $sp, 40
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 16
	pcaddu18i	$ra, %call36(f5)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(s1)
	addi.d	$s0, $a0, %pc_lo12(s1)
	ld.w	$a0, $s0, 0
	bne	$a0, $s2, .LBB9_26
# %bb.7:
	ld.w	$a0, $s0, 16
	bne	$a0, $s1, .LBB9_26
# %bb.8:
	fld.d	$fa0, $s0, 8
	vldi	$vr1, -978
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_26
# %bb.9:
	fld.d	$fa0, $s0, 24
	ori	$a0, $zero, 0
	lu32i.d	$a0, 409600
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa1, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	ori	$a1, $zero, 0
	bceqz	$fcc0, .LBB9_26
# %bb.10:
	ori	$s2, $zero, 131
	st.w	$s2, $sp, 80
	ori	$a2, $zero, 0
	lu32i.d	$a2, -131072
	lu52i.d	$a2, $a2, 1026
	st.d	$a2, $sp, 88
	ori	$s1, $zero, 251
	st.w	$s1, $sp, 96
	lu32i.d	$a1, 516096
	lu52i.d	$a1, $a1, 1030
	st.d	$a1, $sp, 104
	st.w	$s2, $sp, 48
	st.d	$a2, $sp, 56
	ori	$a3, $zero, 254
	st.w	$a3, $sp, 64
	st.d	$a0, $sp, 72
	st.w	$s2, $sp, 16
	st.d	$a2, $sp, 24
	st.w	$s1, $sp, 32
	st.d	$a1, $sp, 40
	ori	$a0, $zero, 3
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 16
	pcaddu18i	$ra, %call36(f5)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	bne	$a0, $s2, .LBB9_26
# %bb.11:
	ld.w	$a0, $s0, 16
	bne	$a0, $s1, .LBB9_26
# %bb.12:
	fld.d	$fa0, $s0, 8
	vldi	$vr1, -978
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_26
# %bb.13:
	fld.d	$fa0, $s0, 24
	ori	$a0, $zero, 0
	lu32i.d	$a0, 516096
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa1, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 0
	bceqz	$fcc0, .LBB9_26
# %bb.14:
	lu32i.d	$a0, 393216
	lu52i.d	$a3, $a0, 1030
	lu52i.d	$a1, $zero, 1027
	ori	$a0, $zero, 2
	ori	$a2, $zero, 138
	ori	$a4, $zero, 257
	ori	$a6, $zero, 138
	ori	$s2, $zero, 257
	move	$a5, $a1
	pcaddu18i	$ra, %call36(f6)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(s2)
	addi.d	$s1, $a0, %pc_lo12(s2)
	ld.d	$a0, $s1, 8
	bne	$a0, $s2, .LBB9_26
# %bb.15:
	fld.d	$fa0, $s1, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 393216
	lu52i.d	$a3, $a0, 1030
	movgr2fr.d	$fa1, $a3
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_26
# %bb.16:
	lu52i.d	$a1, $zero, 1027
	ori	$a0, $zero, 3
	ori	$a2, $zero, 138
	ori	$a4, $zero, 257
	ori	$a6, $zero, 138
	ori	$s2, $zero, 138
	move	$a5, $a1
	pcaddu18i	$ra, %call36(f6)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	bne	$a0, $s2, .LBB9_26
# %bb.17:
	fld.d	$fa0, $s1, 0
	vldi	$vr1, -976
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_26
# %bb.18:
	ori	$s3, $zero, 131
	st.w	$s3, $sp, 80
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -131072
	lu52i.d	$a1, $a1, 1026
	st.d	$a1, $sp, 88
	ori	$s2, $zero, 254
	st.w	$s2, $sp, 96
	ori	$a2, $zero, 0
	lu32i.d	$a2, 409600
	lu52i.d	$a2, $a2, 1030
	st.d	$a2, $sp, 104
	st.w	$s3, $sp, 48
	st.d	$a1, $sp, 56
	ori	$a2, $zero, 251
	st.w	$a2, $sp, 64
	lu32i.d	$a0, 516096
	lu52i.d	$a0, $a0, 1030
	st.d	$a0, $sp, 72
	st.w	$s3, $sp, 16
	st.d	$a1, $sp, 24
	st.w	$a2, $sp, 32
	st.d	$a0, $sp, 40
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 16
	pcaddu18i	$ra, %call36(f7)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	bne	$a0, $s3, .LBB9_26
# %bb.19:
	ld.w	$a0, $s0, 16
	bne	$a0, $s2, .LBB9_26
# %bb.20:
	fld.d	$fa0, $s0, 8
	vldi	$vr1, -978
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_26
# %bb.21:
	fld.d	$fa0, $s0, 24
	ori	$a0, $zero, 0
	lu32i.d	$a0, 409600
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa1, $a0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_26
# %bb.22:
	ld.w	$a0, $fp, %pc_lo12(bar_arg)
	ori	$a1, $zero, 131
	bne	$a0, $a1, .LBB9_26
# %bb.23:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 393216
	lu52i.d	$fp, $a0, 1030
	lu52i.d	$a3, $zero, 1027
	ori	$a0, $zero, 3
	ori	$a2, $zero, 257
	ori	$a4, $zero, 138
	ori	$a6, $zero, 138
	ori	$s0, $zero, 257
	move	$a1, $fp
	move	$a5, $a3
	pcaddu18i	$ra, %call36(f8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	bne	$a0, $s0, .LBB9_26
# %bb.24:
	fld.d	$fa0, $s1, 0
	movgr2fr.d	$fa1, $fp
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_26
# %bb.25:
	move	$a0, $zero
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB9_26:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
                                        # -- End function
	.type	bar_arg,@object                 # @bar_arg
	.bss
	.globl	bar_arg
	.p2align	2, 0x0
bar_arg:
	.word	0                               # 0x0
	.size	bar_arg, 4

	.type	x,@object                       # @x
	.globl	x
	.p2align	3, 0x0
x:
	.dword	0                               # 0x0
	.size	x, 8

	.type	d,@object                       # @d
	.globl	d
	.p2align	3, 0x0
d:
	.dword	0x0000000000000000              # double 0
	.size	d, 8

	.type	s1,@object                      # @s1
	.globl	s1
	.p2align	3, 0x0
s1:
	.space	32
	.size	s1, 32

	.type	s2,@object                      # @s2
	.globl	s2
	.p2align	3, 0x0
s2:
	.space	16
	.size	s2, 16

	.type	y,@object                       # @y
	.globl	y
	.p2align	2, 0x0
y:
	.word	0                               # 0x0
	.size	y, 4

	.type	foo_arg,@object                 # @foo_arg
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

	.section	".note.GNU-stack","",@progbits
	.addrsig
