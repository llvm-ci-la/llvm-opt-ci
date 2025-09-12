	.file	"puzzle.c"
	.text
	.globl	rand                            # -- Begin function rand
	.p2align	5
	.type	rand,@function
rand:                                   # @rand
# %bb.0:
	pcalau12i	$a1, %pc_hi20(next)
	ld.d	$a0, $a1, %pc_lo12(next)
	lu12i.w	$a2, 269412
	ori	$a2, $a2, 3693
	mul.d	$a0, $a0, $a2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 57
	add.d	$a2, $a0, $a2
	srli.d	$a0, $a2, 16
	bstrpick.d	$a3, $a2, 47, 16
	lu12i.w	$a4, 32
	ori	$a4, $a4, 5
	mul.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 32
	sub.d	$a4, $a0, $a3
	bstrpick.d	$a4, $a4, 31, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 14
	slli.d	$a4, $a3, 15
	sub.d	$a3, $a3, $a4
	add.d	$a0, $a0, $a3
	addi.w	$a0, $a0, 1
	st.d	$a2, $a1, %pc_lo12(next)
	ret
.Lfunc_end0:
	.size	rand, .Lfunc_end0-rand
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	5
	.type	srand,@function
srand:                                  # @srand
# %bb.0:
	bstrpick.d	$a0, $a0, 31, 0
	pcalau12i	$a1, %pc_hi20(next)
	st.d	$a0, $a1, %pc_lo12(next)
	ret
.Lfunc_end1:
	.size	srand, .Lfunc_end1-srand
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function randInt
.LCPI2_0:
	.dword	0x3f00000000000000              # double 3.0517578125E-5
	.text
	.globl	randInt
	.p2align	5
	.type	randInt,@function
randInt:                                # @randInt
# %bb.0:
	pcalau12i	$a2, %pc_hi20(next)
	ld.d	$a3, $a2, %pc_lo12(next)
	lu12i.w	$a4, 269412
	ori	$a4, $a4, 3693
	mul.d	$a3, $a3, $a4
	lu12i.w	$a4, 3
	ori	$a4, $a4, 57
	add.d	$a3, $a3, $a4
	srli.d	$a4, $a3, 16
	bstrpick.d	$a5, $a3, 47, 16
	lu12i.w	$a6, 32
	ori	$a6, $a6, 5
	mul.d	$a5, $a5, $a6
	srli.d	$a5, $a5, 32
	sub.d	$a6, $a4, $a5
	bstrpick.d	$a6, $a6, 31, 1
	add.d	$a5, $a6, $a5
	srli.d	$a5, $a5, 14
	slli.d	$a6, $a5, 15
	sub.d	$a5, $a5, $a6
	add.d	$a4, $a4, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a5, %pc_lo12(.LCPI2_0)
	sub.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 1
	movgr2fr.w	$fa1, $a1
	addi.w	$a1, $a1, 0
	ffint.d.w	$fa1, $fa1
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	xor	$a1, $a1, $a4
	sltui	$a1, $a1, 1
	add.d	$a0, $a0, $a4
	sub.w	$a0, $a0, $a1
	st.d	$a3, $a2, %pc_lo12(next)
	ret
.Lfunc_end2:
	.size	randInt, .Lfunc_end2-randInt
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function shuffle
.LCPI3_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI3_1:
	.dword	0x3f00000000000000              # double 3.0517578125E-5
	.text
	.globl	shuffle
	.p2align	5
	.type	shuffle,@function
shuffle:                                # @shuffle
# %bb.0:
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB3_4
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a3, %pc_hi20(next)
	ld.d	$a4, $a3, %pc_lo12(next)
	alsl.d	$a5, $a1, $a0, 2
	addi.d	$a5, $a5, -4
	lu52i.d	$a6, $zero, 1107
	pcalau12i	$a7, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a7, %pc_lo12(.LCPI3_0)
	lu12i.w	$a7, 275200
	lu12i.w	$t0, 269412
	ori	$t0, $t0, 3693
	lu12i.w	$t1, 3
	pcalau12i	$t2, %pc_hi20(.LCPI3_1)
	fld.d	$fa1, $t2, %pc_lo12(.LCPI3_1)
	ori	$t1, $t1, 57
	lu12i.w	$t2, 32
	ori	$t2, $t2, 5
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$t3, $a1, 32
	or	$t3, $t3, $a6
	movgr2fr.d	$fa2, $t3
	fsub.d	$fa2, $fa2, $fa0
	move	$t3, $a1
	bstrins.d	$t3, $a7, 63, 32
	movgr2fr.d	$fa3, $t3
	fadd.d	$fa2, $fa3, $fa2
	mul.d	$a4, $a4, $t0
	add.d	$a4, $a4, $t1
	srli.d	$t3, $a4, 16
	bstrpick.d	$t4, $a4, 47, 16
	mul.d	$t4, $t4, $t2
	srli.d	$t4, $t4, 32
	sub.d	$t5, $t3, $t4
	bstrpick.d	$t5, $t5, 31, 1
	add.d	$t4, $t5, $t4
	srli.d	$t4, $t4, 14
	slli.d	$t5, $t4, 15
	sub.d	$t4, $t4, $t5
	add.d	$t3, $t3, $t4
	addi.d	$t3, $t3, 1
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa3, $t3
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa1
	fmul.d	$fa2, $fa3, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t3, $fa2
	xor	$t4, $a1, $t3
	sltui	$t4, $t4, 1
	alsl.d	$t3, $t3, $a0, 2
	slli.d	$t4, $t4, 2
	sub.d	$t3, $t3, $t4
	ld.w	$t4, $t3, 0
	ld.w	$t5, $a5, 0
	st.w	$t4, $a5, 0
	st.w	$t5, $t3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, -4
	bne	$a1, $a2, .LBB3_2
# %bb.3:                                # %._crit_edge
	st.d	$a4, $a3, %pc_lo12(next)
.LBB3_4:
	ret
.Lfunc_end3:
	.size	shuffle, .Lfunc_end3-shuffle
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function createRandomArray
.LCPI4_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_1:
	.dword	0x3f00000000000000              # double 3.0517578125E-5
.LCPI4_2:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	createRandomArray
	.p2align	5
	.type	createRandomArray,@function
createRandomArray:                      # @createRandomArray
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$s0, $a0, 1
	addi.w	$s1, $s0, 0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bltz	$fp, .LBB4_8
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 8
	bstrpick.d	$a2, $s1, 31, 0
	bgeu	$s1, $a1, .LBB4_3
# %bb.2:
	move	$a1, $zero
	b	.LBB4_6
.LBB4_3:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_0)
	bstrpick.d	$a1, $a2, 31, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $a0, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB4_4
# %bb.5:                                # %middle.block
	beq	$a1, $a2, .LBB4_8
.LBB4_6:                                # %.lr.ph.preheader15
	alsl.d	$a3, $a1, $a0, 2
	sub.d	$a2, $a2, $a1
	.p2align	4, , 16
.LBB4_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB4_7
.LBB4_8:                                # %._crit_edge
	movgr2fr.w	$fa0, $fp
	pcalau12i	$a1, %pc_hi20(next)
	ld.d	$a3, $a1, %pc_lo12(next)
	ffint.d.w	$fa1, $fa0
	lu12i.w	$a2, 269412
	ori	$a2, $a2, 3693
	mul.d	$a4, $a3, $a2
	lu12i.w	$a3, 3
	ori	$a3, $a3, 57
	add.d	$a4, $a4, $a3
	st.d	$a4, $a1, %pc_lo12(next)
	srli.d	$a6, $a4, 16
	bstrpick.d	$a7, $a4, 47, 16
	lu12i.w	$a5, 32
	ori	$a5, $a5, 5
	mul.d	$a7, $a7, $a5
	srli.d	$a7, $a7, 32
	sub.d	$t0, $a6, $a7
	bstrpick.d	$t0, $t0, 31, 1
	add.d	$a7, $t0, $a7
	srli.d	$a7, $a7, 14
	slli.d	$t0, $a7, 15
	sub.d	$a7, $a7, $t0
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	pcalau12i	$a7, %pc_hi20(.LCPI4_1)
	fld.d	$fa0, $a7, %pc_lo12(.LCPI4_1)
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa2, $a6
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fmul.d	$fa1, $fa2, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	xor	$a7, $fp, $a6
	sltui	$a7, $a7, 1
	sub.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	st.w	$a6, $a0, 0
	beqz	$fp, .LBB4_12
# %bb.9:                                # %.lr.ph.preheader.i
	alsl.d	$a6, $fp, $a0, 2
	pcalau12i	$a7, %pc_hi20(.LCPI4_2)
	fld.d	$fa1, $a7, %pc_lo12(.LCPI4_2)
	lu52i.d	$a7, $zero, 1107
	lu12i.w	$t0, 275200
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB4_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$t2, $s0, 32
	or	$t2, $t2, $a7
	movgr2fr.d	$fa2, $t2
	fsub.d	$fa2, $fa2, $fa1
	move	$t2, $s0
	bstrins.d	$t2, $t0, 63, 32
	movgr2fr.d	$fa3, $t2
	fadd.d	$fa2, $fa3, $fa2
	mul.d	$a4, $a4, $a2
	add.d	$a4, $a4, $a3
	srli.d	$t2, $a4, 16
	bstrpick.d	$t3, $a4, 47, 16
	mul.d	$t3, $t3, $a5
	srli.d	$t3, $t3, 32
	sub.d	$t4, $t2, $t3
	bstrpick.d	$t4, $t4, 31, 1
	add.d	$t3, $t4, $t3
	srli.d	$t3, $t3, 14
	slli.d	$t4, $t3, 15
	sub.d	$t3, $t3, $t4
	add.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 1
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa3, $t2
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa0
	fmul.d	$fa2, $fa3, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t2, $fa2
	xor	$t3, $s0, $t2
	sltui	$t3, $t3, 1
	alsl.d	$t2, $t2, $a0, 2
	slli.d	$t3, $t3, 2
	sub.d	$t2, $t2, $t3
	ld.w	$t3, $t2, 0
	ld.w	$t4, $a6, 0
	st.w	$t3, $a6, 0
	st.w	$t4, $t2, 0
	addi.d	$s0, $s0, -1
	addi.d	$a6, $a6, -4
	bne	$s0, $t1, .LBB4_10
# %bb.11:                               # %._crit_edge.i
	st.d	$a4, $a1, %pc_lo12(next)
.LBB4_12:                               # %shuffle.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	createRandomArray, .Lfunc_end4-createRandomArray
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function findDuplicate
.LCPI5_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI5_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	findDuplicate
	.p2align	5
	.type	findDuplicate,@function
findDuplicate:                          # @findDuplicate
# %bb.0:
	blez	$a1, .LBB5_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB5_4
# %bb.2:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB5_7
.LBB5_3:
	move	$a3, $zero
	xor	$a0, $a3, $a1
	ret
.LBB5_4:                                # %vector.ph
	bstrpick.d	$a2, $a1, 30, 3
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI5_1)
	slli.d	$a2, $a2, 3
	vrepli.b	$vr2, 0
	addi.d	$a3, $a0, 16
	move	$a4, $a2
	vori.b	$vr3, $vr2, 0
	.p2align	4, , 16
.LBB5_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a3, -16
	vld	$vr5, $a3, 0
	vxor.v	$vr2, $vr2, $vr4
	vxor.v	$vr3, $vr3, $vr5
	vpickev.w	$vr4, $vr0, $vr1
	vaddi.wu	$vr5, $vr4, 1
	vaddi.wu	$vr4, $vr4, 5
	vxor.v	$vr2, $vr2, $vr5
	vxor.v	$vr3, $vr3, $vr4
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_5
# %bb.6:                                # %middle.block
	vxor.v	$vr0, $vr3, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vxor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a2, $a1, .LBB5_9
.LBB5_7:                                # %.lr.ph.preheader15
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a4, $a1, $a2
	addi.w	$a2, $a2, 1
	.p2align	4, , 16
.LBB5_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a0, 0
	xor	$a3, $a3, $a5
	xor	$a3, $a3, $a2
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, -1
	addi.w	$a2, $a2, 1
	bnez	$a4, .LBB5_8
.LBB5_9:                                # %._crit_edge
	xor	$a0, $a3, $a1
	ret
.Lfunc_end5:
	.size	findDuplicate, .Lfunc_end5-findDuplicate
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI6_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI6_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
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
	pcalau12i	$a0, %pc_hi20(next)
	ori	$a1, $zero, 1
	st.d	$a1, $a0, %pc_lo12(next)
	lu12i.w	$a0, 122
	ori	$fp, $a0, 288
	move	$a0, $fp
	pcaddu18i	$ra, %call36(createRandomArray)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	lu12i.w	$a2, 488
	ori	$s1, $a2, 1152
	pcalau12i	$s2, %pc_hi20(.LCPI6_0)
	vld	$vr0, $s2, %pc_lo12(.LCPI6_0)
	pcalau12i	$s3, %pc_hi20(.LCPI6_1)
	vld	$vr1, $s3, %pc_lo12(.LCPI6_1)
	add.d	$a2, $a0, $s1
	vrepli.b	$vr2, 0
	ori	$a3, $zero, 200
	.p2align	4, , 16
.LBB6_1:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
	move	$a4, $zero
	vori.b	$vr4, $vr1, 0
	vori.b	$vr6, $vr0, 0
	vori.b	$vr3, $vr2, 0
	vori.b	$vr5, $vr2, 0
	.p2align	4, , 16
.LBB6_2:                                # %vector.body
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $a0, $a4
	vldx	$vr7, $a0, $a4
	vld	$vr8, $a5, 16
	vxor.v	$vr3, $vr7, $vr3
	vxor.v	$vr5, $vr8, $vr5
	vpickev.w	$vr7, $vr6, $vr4
	vaddi.wu	$vr8, $vr7, 1
	vaddi.wu	$vr7, $vr7, 5
	vxor.v	$vr3, $vr3, $vr8
	vxor.v	$vr5, $vr5, $vr7
	vaddi.du	$vr4, $vr4, 8
	addi.d	$a4, $a4, 32
	vaddi.du	$vr6, $vr6, 8
	bne	$a4, $s1, .LBB6_2
# %bb.3:                                # %.lr.ph.i
                                        #   in Loop: Header=BB6_1 Depth=1
	addi.w	$a1, $a1, 1
	bne	$a1, $a3, .LBB6_1
# %bb.4:
	ld.w	$a1, $a2, 0
	vxor.v	$vr0, $vr5, $vr3
	vbsrl.v	$vr1, $vr0, 8
	vxor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a2, $vr0, 0
	xor	$s0, $a1, $a2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(createRandomArray)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	vld	$vr0, $s2, %pc_lo12(.LCPI6_0)
	vld	$vr1, $s3, %pc_lo12(.LCPI6_1)
	add.d	$a2, $a0, $s1
	vrepli.b	$vr2, 0
	ori	$a3, $zero, 200
	.p2align	4, , 16
.LBB6_5:                                # %vector.ph26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
	move	$a4, $zero
	vori.b	$vr4, $vr1, 0
	vori.b	$vr6, $vr0, 0
	vori.b	$vr3, $vr2, 0
	vori.b	$vr5, $vr2, 0
	.p2align	4, , 16
.LBB6_6:                                # %vector.body27
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $a0, $a4
	vldx	$vr7, $a0, $a4
	vld	$vr8, $a5, 16
	vxor.v	$vr3, $vr7, $vr3
	vxor.v	$vr5, $vr8, $vr5
	vpickev.w	$vr7, $vr6, $vr4
	vaddi.wu	$vr8, $vr7, 1
	vaddi.wu	$vr7, $vr7, 5
	vxor.v	$vr3, $vr3, $vr8
	vxor.v	$vr5, $vr5, $vr7
	vaddi.du	$vr4, $vr4, 8
	addi.d	$a4, $a4, 32
	vaddi.du	$vr6, $vr6, 8
	bne	$a4, $s1, .LBB6_6
# %bb.7:                                # %.lr.ph.i.1
                                        #   in Loop: Header=BB6_5 Depth=1
	addi.w	$a1, $a1, 1
	bne	$a1, $a3, .LBB6_5
# %bb.8:
	ld.w	$a1, $a2, 0
	vxor.v	$vr0, $vr5, $vr3
	vbsrl.v	$vr1, $vr0, 8
	vxor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a2, $vr0, 0
	xor	$s0, $a1, $a2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(createRandomArray)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	vld	$vr0, $s2, %pc_lo12(.LCPI6_0)
	vld	$vr1, $s3, %pc_lo12(.LCPI6_1)
	add.d	$a2, $a0, $s1
	vrepli.b	$vr2, 0
	ori	$a3, $zero, 200
	.p2align	4, , 16
.LBB6_9:                                # %vector.ph42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
	move	$a4, $zero
	vori.b	$vr4, $vr1, 0
	vori.b	$vr6, $vr0, 0
	vori.b	$vr3, $vr2, 0
	vori.b	$vr5, $vr2, 0
	.p2align	4, , 16
.LBB6_10:                               # %vector.body43
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $a0, $a4
	vldx	$vr7, $a0, $a4
	vld	$vr8, $a5, 16
	vxor.v	$vr3, $vr7, $vr3
	vxor.v	$vr5, $vr8, $vr5
	vpickev.w	$vr7, $vr6, $vr4
	vaddi.wu	$vr8, $vr7, 1
	vaddi.wu	$vr7, $vr7, 5
	vxor.v	$vr3, $vr3, $vr8
	vxor.v	$vr5, $vr5, $vr7
	vaddi.du	$vr4, $vr4, 8
	addi.d	$a4, $a4, 32
	vaddi.du	$vr6, $vr6, 8
	bne	$a4, $s1, .LBB6_10
# %bb.11:                               # %.lr.ph.i.2
                                        #   in Loop: Header=BB6_9 Depth=1
	addi.w	$a1, $a1, 1
	bne	$a1, $a3, .LBB6_9
# %bb.12:
	ld.w	$a1, $a2, 0
	vxor.v	$vr0, $vr5, $vr3
	vbsrl.v	$vr1, $vr0, 8
	vxor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a2, $vr0, 0
	xor	$s0, $a1, $a2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(createRandomArray)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	vld	$vr0, $s2, %pc_lo12(.LCPI6_0)
	vld	$vr1, $s3, %pc_lo12(.LCPI6_1)
	add.d	$a2, $a0, $s1
	vrepli.b	$vr2, 0
	ori	$a3, $zero, 200
	.p2align	4, , 16
.LBB6_13:                               # %vector.ph58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_14 Depth 2
	move	$a4, $zero
	vori.b	$vr4, $vr1, 0
	vori.b	$vr6, $vr0, 0
	vori.b	$vr3, $vr2, 0
	vori.b	$vr5, $vr2, 0
	.p2align	4, , 16
.LBB6_14:                               # %vector.body59
                                        #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $a0, $a4
	vldx	$vr7, $a0, $a4
	vld	$vr8, $a5, 16
	vxor.v	$vr3, $vr7, $vr3
	vxor.v	$vr5, $vr8, $vr5
	vpickev.w	$vr7, $vr6, $vr4
	vaddi.wu	$vr8, $vr7, 1
	vaddi.wu	$vr7, $vr7, 5
	vxor.v	$vr3, $vr3, $vr8
	vxor.v	$vr5, $vr5, $vr7
	vaddi.du	$vr4, $vr4, 8
	addi.d	$a4, $a4, 32
	vaddi.du	$vr6, $vr6, 8
	bne	$a4, $s1, .LBB6_14
# %bb.15:                               # %.lr.ph.i.3
                                        #   in Loop: Header=BB6_13 Depth=1
	addi.w	$a1, $a1, 1
	bne	$a1, $a3, .LBB6_13
# %bb.16:
	ld.w	$a1, $a2, 0
	vxor.v	$vr0, $vr5, $vr3
	vbsrl.v	$vr1, $vr0, 8
	vxor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a2, $vr0, 0
	xor	$s0, $a1, $a2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(createRandomArray)
	jirl	$ra, $ra, 0
	vld	$vr0, $s2, %pc_lo12(.LCPI6_0)
	vld	$vr1, $s3, %pc_lo12(.LCPI6_1)
	move	$a1, $zero
	vrepli.b	$vr2, 0
	ori	$a2, $zero, 200
	.p2align	4, , 16
.LBB6_17:                               # %vector.ph74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_18 Depth 2
	move	$a3, $zero
	vori.b	$vr4, $vr1, 0
	vori.b	$vr6, $vr0, 0
	vori.b	$vr3, $vr2, 0
	vori.b	$vr5, $vr2, 0
	.p2align	4, , 16
.LBB6_18:                               # %vector.body75
                                        #   Parent Loop BB6_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $a0, $a3
	vldx	$vr7, $a0, $a3
	vld	$vr8, $a4, 16
	vxor.v	$vr3, $vr7, $vr3
	vxor.v	$vr5, $vr8, $vr5
	vpickev.w	$vr7, $vr6, $vr4
	vaddi.wu	$vr8, $vr7, 1
	vaddi.wu	$vr7, $vr7, 5
	vxor.v	$vr3, $vr3, $vr8
	vxor.v	$vr5, $vr5, $vr7
	vaddi.du	$vr4, $vr4, 8
	addi.d	$a3, $a3, 32
	vaddi.du	$vr6, $vr6, 8
	bne	$a3, $s1, .LBB6_18
# %bb.19:                               # %.lr.ph.i.4
                                        #   in Loop: Header=BB6_17 Depth=1
	addi.w	$a1, $a1, 1
	bne	$a1, $a2, .LBB6_17
# %bb.20:
	ldx.w	$a1, $a0, $s1
	vxor.v	$vr0, $vr5, $vr3
	vbsrl.v	$vr1, $vr0, 8
	vxor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a2, $vr0, 0
	xor	$fp, $a1, $a2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
                                        # -- End function
	.type	next,@object                    # @next
	.data
	.p2align	3, 0x0
next:
	.dword	1                               # 0x1
	.size	next, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Found duplicate: %d\n"
	.size	.L.str, 21

	.section	".note.GNU-stack","",@progbits
	.addrsig
