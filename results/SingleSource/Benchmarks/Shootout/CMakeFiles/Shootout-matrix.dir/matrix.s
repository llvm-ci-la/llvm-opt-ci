	.file	"matrix.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mkmatrix
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	mkmatrix
	.p2align	5
	.type	mkmatrix,@function
mkmatrix:                               # @mkmatrix
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s0, .LBB0_12
# %bb.1:                                # %.lr.ph21
	move	$s3, $zero
	slli.d	$s2, $fp, 2
	bstrpick.d	$s4, $fp, 31, 0
	bstrpick.d	$a0, $fp, 30, 3
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	slli.d	$s5, $a0, 3
	ori	$s7, $zero, 1
	ori	$s6, $zero, 8
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $s7
.LBB0_3:                                # %._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s3, $s3, 1
	move	$s7, $a1
	beq	$s3, $s0, .LBB0_12
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_11 Depth 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s3, 3
	stx.d	$a0, $s1, $a1
	blez	$fp, .LBB0_2
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	bgeu	$fp, $s6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a2, $zero
	move	$a1, $s7
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_7:                                # %vector.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	add.d	$a1, $s7, $s5
	vreplgr2vr.w	$vr0, $s7
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a2, $a0, 16
	move	$a3, $s5
	.p2align	4, , 16
.LBB0_8:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB0_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a2, $s5
	beq	$s5, $s4, .LBB0_3
.LBB0_10:                               # %.lr.ph.preheader29
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a2, $s4, $a2
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $a3, 1
	st.w	$a3, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	move	$a3, $a1
	bnez	$a2, .LBB0_11
	b	.LBB0_3
.LBB0_12:                               # %._crit_edge22
	move	$a0, $s1
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end0:
	.size	mkmatrix, .Lfunc_end0-mkmatrix
                                        # -- End function
	.globl	zeromatrix                      # -- Begin function zeromatrix
	.p2align	5
	.type	zeromatrix,@function
zeromatrix:                             # @zeromatrix
# %bb.0:
	blez	$a0, .LBB1_6
# %bb.1:                                # %.preheader.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$s2, $a0, 2
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %._crit_edge
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	beqz	$s1, .LBB1_5
.LBB1_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	blez	$s0, .LBB1_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_5:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB1_6:                                # %._crit_edge11
	ret
.Lfunc_end1:
	.size	zeromatrix, .Lfunc_end1-zeromatrix
                                        # -- End function
	.globl	freematrix                      # -- Begin function freematrix
	.p2align	5
	.type	freematrix,@function
freematrix:                             # @freematrix
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	blez	$a0, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s0, $a0, 1
	alsl.d	$a0, $a0, $fp, 3
	addi.d	$s1, $a0, -8
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, -8
	bltu	$s2, $s0, .LBB2_2
.LBB2_3:                                # %._crit_edge
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end2:
	.size	freematrix, .Lfunc_end2-freematrix
                                        # -- End function
	.globl	mmult                           # -- Begin function mmult
	.p2align	5
	.type	mmult,@function
mmult:                                  # @mmult
# %bb.0:
	blez	$a0, .LBB3_14
# %bb.1:                                # %.preheader24.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	move	$a5, $zero
	bstrpick.d	$a6, $a1, 31, 0
	bstrpick.d	$a7, $a1, 30, 2
	slli.d	$a7, $a7, 2
	addi.d	$t0, $a3, 16
	ori	$t1, $zero, 4
	vrepli.b	$vr0, 0
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %._crit_edge28
                                        #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a0, .LBB3_13
.LBB3_3:                                # %.preheader24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
                                        #       Child Loop BB3_9 Depth 3
                                        #       Child Loop BB3_12 Depth 3
	blez	$a1, .LBB3_2
# %bb.4:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB3_3 Depth=1
	slli.d	$t3, $a5, 3
	ldx.d	$t2, $a2, $t3
	ldx.d	$t3, $a4, $t3
	move	$t4, $zero
	addi.d	$t5, $t2, 8
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                # %._crit_edge
                                        #   in Loop: Header=BB3_6 Depth=2
	addi.d	$t4, $t4, 1
	stx.w	$t7, $t3, $t6
	beq	$t4, $a6, .LBB3_2
.LBB3_6:                                # %.preheader
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_9 Depth 3
                                        #       Child Loop BB3_12 Depth 3
	slli.d	$t6, $t4, 2
	bgeu	$a1, $t1, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=2
	move	$s0, $zero
	move	$t7, $zero
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_8:                                # %vector.body.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	move	$t7, $t5
	move	$t8, $t0
	move	$fp, $a7
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB3_9:                                # %vector.body
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $t7, -8
	ld.d	$s1, $t7, 0
	vinsgr2vr.d	$vr3, $s0, 0
	vinsgr2vr.d	$vr4, $s1, 0
	ld.d	$s0, $t8, -16
	ld.d	$s1, $t8, -8
	ld.d	$s2, $t8, 0
	ld.d	$s3, $t8, 8
	ldx.w	$s0, $s0, $t6
	ldx.w	$s1, $s1, $t6
	ldx.w	$s2, $s2, $t6
	ldx.w	$s3, $s3, $t6
	vinsgr2vr.w	$vr5, $s0, 0
	vinsgr2vr.w	$vr5, $s1, 1
	vinsgr2vr.w	$vr6, $s2, 0
	vinsgr2vr.w	$vr6, $s3, 1
	vmadd.w	$vr1, $vr5, $vr3
	vmadd.w	$vr2, $vr6, $vr4
	addi.d	$fp, $fp, -4
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 16
	bnez	$fp, .LBB3_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB3_6 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vpickve2gr.w	$t7, $vr1, 0
	move	$s0, $a7
	beq	$a7, $a6, .LBB3_5
.LBB3_11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	alsl.d	$t8, $s0, $a3, 3
	alsl.d	$fp, $s0, $t2, 2
	sub.d	$s0, $a6, $s0
	.p2align	4, , 16
.LBB3_12:                               # %scalar.ph
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $t8, 0
	ld.w	$s2, $fp, 0
	ldx.w	$s1, $s1, $t6
	mul.d	$s1, $s1, $s2
	add.d	$t7, $s1, $t7
	addi.d	$t8, $t8, 8
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 4
	bnez	$s0, .LBB3_12
	b	.LBB3_5
.LBB3_13:
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB3_14:                               # %._crit_edge30
	move	$a0, $a4
	ret
.Lfunc_end3:
	.size	mmult, .Lfunc_end3-mmult
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI4_0:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI4_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
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
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB4_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	b	.LBB4_3
.LBB4_2:
	lu12i.w	$a0, 732
	ori	$s2, $a0, 1728
.LBB4_3:
	ori	$a0, $zero, 80
	ori	$fp, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_0)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_1)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s1, $a0
	move	$s0, $zero
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s1, $s0
	vreplgr2vr.w	$vr0, $s3
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr2
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	addi.d	$a1, $s3, 8
	st.w	$a1, $a0, 32
	addi.d	$a1, $s3, 9
	st.w	$a1, $a0, 36
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, 10
	bne	$s0, $fp, .LBB4_4
# %bb.5:                                # %mkmatrix.exit
	ori	$a0, $zero, 80
	ori	$fp, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s3, $zero
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB4_6:                                # %.lr.ph.i17
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s0, $s3
	vreplgr2vr.w	$vr0, $s4
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr2
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	addi.d	$a1, $s4, 8
	st.w	$a1, $a0, 32
	addi.d	$a1, $s4, 9
	st.w	$a1, $a0, 36
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, 10
	bne	$s3, $fp, .LBB4_6
# %bb.7:                                # %mkmatrix.exit25
	ori	$a0, $zero, 80
	ori	$s3, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s4, $zero
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph.i28
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $fp, $s4
	vreplgr2vr.w	$vr0, $s5
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr2
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	addi.d	$a1, $s5, 8
	st.w	$a1, $a0, 32
	addi.d	$a1, $s5, 9
	st.w	$a1, $a0, 36
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, 10
	bne	$s4, $s3, .LBB4_8
# %bb.9:                                # %mkmatrix.exit36.preheader
	addi.w	$a0, $s2, 0
	blez	$a0, .LBB4_16
# %bb.10:                               # %.preheader24.i.preheader.preheader
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 8
	ld.d	$a3, $s0, 16
	ld.d	$a4, $s0, 24
	ld.d	$a5, $s0, 32
	ld.d	$a6, $s0, 40
	ld.d	$a7, $s0, 48
	ld.d	$t0, $s0, 56
	ld.d	$t1, $s0, 64
	ld.d	$t2, $s0, 72
	move	$t3, $zero
	ori	$t4, $zero, 40
	ori	$t5, $zero, 10
	.p2align	4, , 16
.LBB4_11:                               # %.preheader24.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_13 Depth 3
	move	$t6, $zero
	.p2align	4, , 16
.LBB4_12:                               # %.preheader24.i
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_13 Depth 3
	slli.d	$t8, $t6, 3
	ldx.d	$t7, $fp, $t8
	ldx.d	$t8, $s1, $t8
	move	$s2, $zero
	.p2align	4, , 16
.LBB4_13:                               # %.preheader.i
                                        #   Parent Loop BB4_11 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s3, $t8, 0
	ldx.w	$s4, $a1, $s2
	ld.w	$s5, $t8, 4
	ldx.w	$s6, $a2, $s2
	mul.d	$s3, $s4, $s3
	mul.d	$s4, $s6, $s5
	ld.w	$s5, $t8, 8
	ldx.w	$s6, $a3, $s2
	ld.w	$s7, $t8, 12
	ldx.w	$s8, $a4, $s2
	add.d	$s3, $s4, $s3
	mul.d	$s4, $s6, $s5
	add.d	$s3, $s4, $s3
	mul.d	$s4, $s8, $s7
	ld.w	$s5, $t8, 16
	ldx.w	$s6, $a5, $s2
	ld.w	$s7, $t8, 20
	ldx.w	$s8, $a6, $s2
	add.d	$s3, $s4, $s3
	mul.d	$s4, $s6, $s5
	add.d	$s3, $s4, $s3
	mul.d	$s4, $s8, $s7
	ld.w	$s5, $t8, 24
	ldx.w	$s6, $a7, $s2
	ld.w	$s7, $t8, 28
	ldx.w	$s8, $t0, $s2
	add.d	$s3, $s4, $s3
	mul.d	$s4, $s6, $s5
	add.d	$s3, $s4, $s3
	mul.d	$s4, $s8, $s7
	ld.w	$s5, $t8, 32
	ldx.w	$s6, $t1, $s2
	ld.w	$s7, $t8, 36
	ldx.w	$s8, $t2, $s2
	add.d	$s3, $s4, $s3
	mul.d	$s4, $s6, $s5
	add.d	$s3, $s4, $s3
	mul.d	$s4, $s8, $s7
	add.d	$s3, $s4, $s3
	stx.w	$s3, $t7, $s2
	addi.d	$s2, $s2, 4
	bne	$s2, $t4, .LBB4_13
# %bb.14:                               # %._crit_edge28.i
                                        #   in Loop: Header=BB4_12 Depth=2
	addi.d	$t6, $t6, 1
	bne	$t6, $t5, .LBB4_12
# %bb.15:                               # %mmult.exit
                                        #   in Loop: Header=BB4_11 Depth=1
	addi.w	$t3, $t3, 1
	bne	$t3, $a0, .LBB4_11
.LBB4_16:                               # %mkmatrix.exit36._crit_edge
	ld.d	$s2, $fp, 0
	ld.d	$s3, $fp, 16
	ld.d	$s4, $fp, 24
	ld.d	$s5, $fp, 32
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s3, 12
	ld.w	$a3, $s4, 8
	ld.w	$a4, $s5, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 72
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 64
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 56
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 72
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 56
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
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
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %d %d %d\n"
	.size	.L.str, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
