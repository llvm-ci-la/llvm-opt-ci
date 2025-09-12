	.file	"recursive.c"
	.text
	.globl	ack                             # -- Begin function ack
	.p2align	5
	.type	ack,@function
ack:                                    # @ack
# %bb.0:
	beqz	$a0, .LBB0_6
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi.w	$a1, $a1, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ack)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$fp, $fp, -1
	beqz	$fp, .LBB0_5
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bnez	$a1, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ori	$a1, $zero, 1
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB0_3
.LBB0_5:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB0_6:                                # %tailrecurse._crit_edge
	addi.w	$a0, $a1, 1
	ret
.Lfunc_end0:
	.size	ack, .Lfunc_end0-ack
                                        # -- End function
	.globl	fib                             # -- Begin function fib
	.p2align	5
	.type	fib,@function
fib:                                    # @fib
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ori	$fp, $zero, 2
	ori	$a1, $zero, 1
	blt	$a0, $fp, .LBB1_4
# %bb.1:                                # %tailrecurse.preheader
	move	$s0, $zero
	addi.d	$s1, $a0, 1
	.p2align	4, , 16
.LBB1_2:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $s1, -3
	pcaddu18i	$ra, %call36(fib)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	add.d	$s0, $a0, $s0
	bltu	$fp, $s1, .LBB1_2
# %bb.3:                                # %tailrecurse._crit_edge.loopexit
	addi.w	$a1, $s0, 1
.LBB1_4:                                # %tailrecurse._crit_edge
	move	$a0, $a1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	fib, .Lfunc_end1-fib
                                        # -- End function
	.globl	fibFP                           # -- Begin function fibFP
	.p2align	5
	.type	fibFP,@function
fibFP:                                  # @fibFP
# %bb.0:
	vldi	$vr1, -1024
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_2
# %bb.1:
	vldi	$vr0, -912
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	ret
.LBB2_2:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	vldi	$vr1, -896
	fadd.d	$fa1, $fa0, $fa1
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(fibFP)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	vldi	$vr0, -784
	fadd.d	$fa0, $fs1, $fa0
	pcaddu18i	$ra, %call36(fibFP)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	ret
.Lfunc_end2:
	.size	fibFP, .Lfunc_end2-fibFP
                                        # -- End function
	.globl	tak                             # -- Begin function tak
	.p2align	5
	.type	tak,@function
tak:                                    # @tak
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	bge	$a1, $a0, .LBB3_3
# %bb.1:                                # %tailrecurse.preheader
	move	$s0, $a1
	move	$s1, $a0
	.p2align	4, , 16
.LBB3_2:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $s1, -1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(tak)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$a0, $s0, -1
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tak)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$a0, $fp, -1
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(tak)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s0, $s3
	move	$s1, $s2
	blt	$s3, $s2, .LBB3_2
.LBB3_3:                                # %tailrecurse._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	tak, .Lfunc_end3-tak
                                        # -- End function
	.globl	takFP                           # -- Begin function takFP
	.p2align	5
	.type	takFP,@function
takFP:                                  # @takFP
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fcmp.cule.d	$fcc0, $fa0, $fa1
	fmov.d	$fs0, $fa2
	bcnez	$fcc0, .LBB4_3
# %bb.1:                                # %tailrecurse.preheader
	fmov.d	$fs1, $fa1
	fmov.d	$fs2, $fa0
	.p2align	4, , 16
.LBB4_2:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	vldi	$vr0, -784
	fadd.d	$fa0, $fs2, $fa0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs0
	pcaddu18i	$ra, %call36(takFP)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	vldi	$vr0, -784
	fadd.d	$fa0, $fs1, $fa0
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fs2
	pcaddu18i	$ra, %call36(takFP)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fmov.d	$fa1, $fs2
	fmov.d	$fa2, $fs1
	pcaddu18i	$ra, %call36(takFP)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fs4, $fs3
	fmov.d	$fs0, $fa0
	fmov.d	$fs1, $fs4
	fmov.d	$fs2, $fs3
	bcnez	$fcc0, .LBB4_2
.LBB4_3:                                # %tailrecurse._crit_edge
	fmov.d	$fa0, $fs0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	takFP, .Lfunc_end4-takFP
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI5_0:
	.dword	0x4043000000000000              # double 38
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 3
	ori	$a1, $zero, 11
	pcaddu18i	$ra, %call36(ack)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 11
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI5_0)
	pcaddu18i	$ra, %call36(fibFP)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 0
	lu32i.d	$a1, 196608
	lu52i.d	$a1, $a1, 1028
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 30
	ori	$a1, $zero, 20
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(tak)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 20
	ori	$a3, $zero, 10
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(fib)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vldi	$vr0, -1016
	vldi	$vr1, -1024
	vldi	$vr2, -912
	pcaddu18i	$ra, %call36(takFP)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Ack(3,%d): %d\n"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Fib(%.1f): %.1f\n"
	.size	.L.str.1, 17

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Tak(%d,%d,%d): %d\n"
	.size	.L.str.2, 19

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Fib(3): %d\n"
	.size	.L.str.3, 12

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Tak(3.0,2.0,1.0): %.1f\n"
	.size	.L.str.4, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
