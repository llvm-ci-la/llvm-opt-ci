	.file	"matrix.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z8mkmatrixii
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	_Z8mkmatrixii
	.p2align	5
	.type	_Z8mkmatrixii,@function
_Z8mkmatrixii:                          # @_Z8mkmatrixii
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
	move	$s2, $a1
	move	$fp, $a0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$fp, .LBB0_13
# %bb.1:                                # %.lr.ph21
	slli.d	$s1, $s2, 2
	blez	$s2, .LBB0_11
# %bb.2:                                # %.lr.ph.us.preheader
	move	$s3, $zero
	bstrpick.d	$a0, $s2, 30, 3
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	slli.d	$s4, $a0, 3
	ori	$s6, $zero, 1
	ori	$s5, $zero, 8
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s3, $s3, 1
	move	$s6, $a1
	beq	$s3, $fp, .LBB0_13
.LBB0_4:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s3, 3
	stx.d	$a0, $s0, $a1
	bgeu	$s2, $s5, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a2, $zero
	move	$a1, $s6
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_6:                                # %vector.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	add.d	$a1, $s6, $s4
	vreplgr2vr.w	$vr0, $s6
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a2, $a0, 16
	move	$a3, $s4
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB0_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a2, $s4
	beq	$s4, $s2, .LBB0_3
.LBB0_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a2, $s2, $a2
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_10:                               # %scalar.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $a3, 1
	st.w	$a3, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	move	$a3, $a1
	bnez	$a2, .LBB0_10
	b	.LBB0_3
.LBB0_11:
	move	$s2, $s0
	.p2align	4, , 16
.LBB0_12:                               # %.lr.ph21.split
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 8
	bnez	$fp, .LBB0_12
.LBB0_13:                               # %._crit_edge22
	move	$a0, $s0
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
	.size	_Z8mkmatrixii, .Lfunc_end0-_Z8mkmatrixii
                                        # -- End function
	.globl	_Z10zeromatrixiiPPi             # -- Begin function _Z10zeromatrixiiPPi
	.p2align	5
	.type	_Z10zeromatrixiiPPi,@function
_Z10zeromatrixiiPPi:                    # @_Z10zeromatrixiiPPi
# %bb.0:
	blez	$a0, .LBB1_5
# %bb.1:
	blez	$a1, .LBB1_5
# %bb.2:                                # %.preheader.us.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	slli.d	$s1, $a1, 2
	.p2align	4, , 16
.LBB1_3:                                # %.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB1_3
# %bb.4:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB1_5:                                # %._crit_edge11
	ret
.Lfunc_end1:
	.size	_Z10zeromatrixiiPPi, .Lfunc_end1-_Z10zeromatrixiiPPi
                                        # -- End function
	.globl	_Z10freematrixiPPi              # -- Begin function _Z10freematrixiPPi
	.p2align	5
	.type	_Z10freematrixiPPi,@function
_Z10freematrixiPPi:                     # @_Z10freematrixiPPi
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
	.size	_Z10freematrixiPPi, .Lfunc_end2-_Z10freematrixiPPi
                                        # -- End function
	.globl	_Z5mmultiiPPiS0_S0_             # -- Begin function _Z5mmultiiPPiS0_S0_
	.p2align	5
	.type	_Z5mmultiiPPiS0_S0_,@function
_Z5mmultiiPPiS0_S0_:                    # @_Z5mmultiiPPiS0_S0_
# %bb.0:
	blez	$a0, .LBB3_14
# %bb.1:
	blez	$a1, .LBB3_14
# %bb.2:                                # %.preheader24.us.preheader
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	move	$a5, $zero
	bstrpick.d	$a6, $a1, 30, 2
	slli.d	$a6, $a6, 2
	addi.d	$a7, $a3, 16
	ori	$t0, $zero, 4
	vrepli.b	$vr0, 0
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %._crit_edge28.split.us.us
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a0, .LBB3_13
.LBB3_4:                                # %.preheader24.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
                                        #       Child Loop BB3_9 Depth 3
                                        #       Child Loop BB3_12 Depth 3
	slli.d	$t2, $a5, 3
	ldx.d	$t1, $a2, $t2
	ldx.d	$t2, $a4, $t2
	move	$t3, $zero
	addi.d	$t4, $t1, 8
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB3_6 Depth=2
	addi.d	$t3, $t3, 1
	stx.w	$t6, $t2, $t5
	beq	$t3, $a1, .LBB3_3
.LBB3_6:                                # %.preheader.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_9 Depth 3
                                        #       Child Loop BB3_12 Depth 3
	slli.d	$t5, $t3, 2
	bgeu	$a1, $t0, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=2
	move	$fp, $zero
	move	$t6, $zero
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_8:                                # %vector.body.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	move	$t6, $t4
	move	$t7, $a7
	move	$t8, $a6
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB3_9:                                # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $t6, -8
	ld.d	$s0, $t6, 0
	vinsgr2vr.d	$vr3, $fp, 0
	vinsgr2vr.d	$vr4, $s0, 0
	ld.d	$fp, $t7, -16
	ld.d	$s0, $t7, -8
	ld.d	$s1, $t7, 0
	ld.d	$s2, $t7, 8
	ldx.w	$fp, $fp, $t5
	ldx.w	$s0, $s0, $t5
	ldx.w	$s1, $s1, $t5
	ldx.w	$s2, $s2, $t5
	vinsgr2vr.w	$vr5, $fp, 0
	vinsgr2vr.w	$vr5, $s0, 1
	vinsgr2vr.w	$vr6, $s1, 0
	vinsgr2vr.w	$vr6, $s2, 1
	vmadd.w	$vr1, $vr5, $vr3
	vmadd.w	$vr2, $vr6, $vr4
	addi.d	$t8, $t8, -4
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 16
	bnez	$t8, .LBB3_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB3_6 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vpickve2gr.w	$t6, $vr1, 0
	move	$fp, $a6
	beq	$a6, $a1, .LBB3_5
.LBB3_11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	alsl.d	$t7, $fp, $t1, 2
	alsl.d	$t8, $fp, $a3, 3
	sub.d	$fp, $a1, $fp
	.p2align	4, , 16
.LBB3_12:                               # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $t8, 0
	ld.w	$s1, $t7, 0
	ldx.w	$s0, $s0, $t5
	mul.d	$s0, $s0, $s1
	add.d	$t6, $s0, $t6
	addi.d	$t7, $t7, 4
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB3_12
	b	.LBB3_5
.LBB3_13:
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB3_14:                               # %._crit_edge
	move	$a0, $a4
	ret
.Lfunc_end3:
	.size	_Z5mmultiiPPiS0_S0_, .Lfunc_end3-_Z5mmultiiPPiS0_S0_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI4_0:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
.LCPI4_1:
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
.LCPI4_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI4_3:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI4_4:
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
.LCPI4_5:
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -784
	.cfi_def_cfa_offset 784
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	st.d	$fp, $sp, 768                   # 8-byte Folded Spill
	st.d	$s0, $sp, 760                   # 8-byte Folded Spill
	st.d	$s1, $sp, 752                   # 8-byte Folded Spill
	st.d	$s2, $sp, 744                   # 8-byte Folded Spill
	st.d	$s3, $sp, 736                   # 8-byte Folded Spill
	st.d	$s4, $sp, 728                   # 8-byte Folded Spill
	st.d	$s5, $sp, 720                   # 8-byte Folded Spill
	st.d	$s6, $sp, 712                   # 8-byte Folded Spill
	st.d	$s7, $sp, 704                   # 8-byte Folded Spill
	st.d	$s8, $sp, 696                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 688                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 680                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 672                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 664                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 656                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 648                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 640                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 632                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB4_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	b	.LBB4_3
.LBB4_2:
	lu12i.w	$a0, 24
	ori	$s2, $a0, 1696
.LBB4_3:
	ori	$a0, $zero, 240
	ori	$fp, $zero, 240
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_0)
	vst	$vr0, $sp, 608                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_1)
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_2)
	vst	$vr0, $sp, 576                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_3)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_3)
	vst	$vr0, $sp, 560                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_4)
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_5)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_5)
	vst	$vr0, $sp, 528                  # 16-byte Folded Spill
	move	$s3, $a0
	move	$s0, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.us.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 120
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s0
	vreplgr2vr.w	$vr0, $s1
	vld	$vr1, $sp, 608                  # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 592                  # 16-byte Folded Reload
	vadd.w	$vr2, $vr0, $vr2
	vld	$vr3, $sp, 576                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 560                  # 16-byte Folded Reload
	vadd.w	$vr4, $vr0, $vr4
	vst	$vr4, $a0, 16
	vst	$vr3, $a0, 0
	vld	$vr3, $sp, 544                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 528                  # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr4
	vst	$vr2, $a0, 48
	vst	$vr1, $a0, 32
	vst	$vr0, $a0, 80
	vst	$vr3, $a0, 64
	addi.d	$a1, $s1, 24
	st.w	$a1, $a0, 96
	addi.d	$a1, $s1, 25
	st.w	$a1, $a0, 100
	addi.d	$a1, $s1, 26
	st.w	$a1, $a0, 104
	addi.d	$a1, $s1, 27
	st.w	$a1, $a0, 108
	addi.d	$a1, $s1, 28
	st.w	$a1, $a0, 112
	addi.d	$a1, $s1, 29
	st.w	$a1, $a0, 116
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 30
	bne	$s0, $fp, .LBB4_4
# %bb.5:                                # %_Z8mkmatrixii.exit
	st.d	$s3, $sp, 328                   # 8-byte Folded Spill
	ori	$a0, $zero, 240
	ori	$fp, $zero, 240
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s0, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB4_6:                                # %.lr.ph.us.i15
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 120
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s0
	vreplgr2vr.w	$vr0, $s1
	vld	$vr1, $sp, 608                  # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 592                  # 16-byte Folded Reload
	vadd.w	$vr2, $vr0, $vr2
	vld	$vr3, $sp, 576                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 560                  # 16-byte Folded Reload
	vadd.w	$vr4, $vr0, $vr4
	vst	$vr4, $a0, 16
	vst	$vr3, $a0, 0
	vld	$vr3, $sp, 544                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 528                  # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr4
	vst	$vr2, $a0, 48
	vst	$vr1, $a0, 32
	vst	$vr0, $a0, 80
	vst	$vr3, $a0, 64
	addi.d	$a1, $s1, 24
	st.w	$a1, $a0, 96
	addi.d	$a1, $s1, 25
	st.w	$a1, $a0, 100
	addi.d	$a1, $s1, 26
	st.w	$a1, $a0, 104
	addi.d	$a1, $s1, 27
	st.w	$a1, $a0, 108
	addi.d	$a1, $s1, 28
	st.w	$a1, $a0, 112
	addi.d	$a1, $s1, 29
	st.w	$a1, $a0, 116
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 30
	bne	$s0, $fp, .LBB4_6
# %bb.7:                                # %_Z8mkmatrixii.exit25
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 240
	ori	$fp, $zero, 240
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s0, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph.us.i26
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 120
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s0
	vreplgr2vr.w	$vr0, $s1
	vld	$vr1, $sp, 608                  # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 592                  # 16-byte Folded Reload
	vadd.w	$vr2, $vr0, $vr2
	vld	$vr3, $sp, 576                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 560                  # 16-byte Folded Reload
	vadd.w	$vr4, $vr0, $vr4
	vst	$vr4, $a0, 16
	vst	$vr3, $a0, 0
	vld	$vr3, $sp, 544                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 528                  # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr4
	vst	$vr2, $a0, 48
	vst	$vr1, $a0, 32
	vst	$vr0, $a0, 80
	vst	$vr3, $a0, 64
	addi.d	$a1, $s1, 24
	st.w	$a1, $a0, 96
	addi.d	$a1, $s1, 25
	st.w	$a1, $a0, 100
	addi.d	$a1, $s1, 26
	st.w	$a1, $a0, 104
	addi.d	$a1, $s1, 27
	st.w	$a1, $a0, 108
	addi.d	$a1, $s1, 28
	st.w	$a1, $a0, 112
	addi.d	$a1, $s1, 29
	st.w	$a1, $a0, 116
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 30
	bne	$s0, $fp, .LBB4_8
# %bb.9:                                # %_Z8mkmatrixii.exit36.preheader
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	addi.w	$a0, $s2, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blez	$a0, .LBB4_52
# %bb.10:                               # %.preheader24.us.i.preheader.preheader
	move	$a5, $zero
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t1, $a3, 0
	ld.d	$t2, $a3, 8
	ld.d	$t3, $a3, 16
	ld.d	$t4, $a3, 24
	ld.d	$a4, $a3, 32
	ld.d	$a6, $a3, 40
	ld.d	$a7, $a3, 48
	ld.d	$t0, $a3, 56
	ld.d	$t5, $a3, 64
	ld.d	$t6, $a3, 72
	ld.d	$t7, $a3, 80
	ld.d	$t8, $a3, 88
	ld.d	$a0, $a3, 96
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	ld.d	$s0, $a3, 104
	ld.d	$a1, $a3, 112
	ld.d	$fp, $a3, 120
	ld.d	$s2, $a3, 128
	ld.d	$s1, $a3, 136
	ld.d	$a2, $a3, 144
	ld.d	$s3, $a3, 152
	ld.d	$s4, $a3, 160
	ld.d	$s5, $a3, 168
	ld.d	$s6, $a3, 176
	ld.d	$s7, $a3, 184
	ld.d	$s8, $a3, 192
	ld.d	$ra, $a3, 200
	ld.d	$a0, $a3, 208
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 216
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 224
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 232
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	addi.d	$a3, $t1, 120
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	addi.d	$a3, $t2, 120
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a3, $t3, 120
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	addi.d	$a3, $t4, 120
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	st.d	$a4, $sp, 528                   # 8-byte Folded Spill
	addi.d	$a3, $a4, 120
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	st.d	$a6, $sp, 560                   # 8-byte Folded Spill
	addi.d	$a3, $a6, 120
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	st.d	$a7, $sp, 520                   # 8-byte Folded Spill
	addi.d	$a3, $a7, 120
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	st.d	$t0, $sp, 544                   # 8-byte Folded Spill
	addi.d	$a3, $t0, 120
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	st.d	$t5, $sp, 592                   # 8-byte Folded Spill
	addi.d	$a3, $t5, 120
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$t6, $sp, 576                   # 8-byte Folded Spill
	addi.d	$a3, $t6, 120
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	st.d	$t7, $sp, 512                   # 8-byte Folded Spill
	addi.d	$a3, $t7, 120
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	st.d	$t8, $sp, 480                   # 8-byte Folded Spill
	addi.d	$a3, $t8, 120
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 120
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	st.d	$s0, $sp, 320                   # 8-byte Folded Spill
	addi.d	$a3, $s0, 120
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 120
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.d	$fp, $sp, 472                   # 8-byte Folded Spill
	addi.d	$a1, $fp, 120
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	addi.d	$a1, $s2, 120
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	addi.d	$a1, $s1, 120
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 496                   # 8-byte Folded Spill
	addi.d	$a1, $a2, 120
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s3, $sp, 488                   # 8-byte Folded Spill
	addi.d	$a1, $s3, 120
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$s4, $sp, 464                   # 8-byte Folded Spill
	addi.d	$a1, $s4, 120
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s5, $sp, 296                   # 8-byte Folded Spill
	addi.d	$a1, $s5, 120
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a1, $s6, 120
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s7, $sp, 280                   # 8-byte Folded Spill
	addi.d	$a1, $s7, 120
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	addi.d	$a1, $s8, 120
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$ra, $sp, 384                   # 8-byte Folded Spill
	addi.d	$a1, $ra, 120
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 120
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 120
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 120
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 120
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_11:                               # %.preheader24.us.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_44 Depth 3
                                        #       Child Loop BB4_49 Depth 3
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	move	$t5, $zero
	.p2align	4, , 16
.LBB4_12:                               # %.preheader24.us.i
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_44 Depth 3
                                        #       Child Loop BB4_49 Depth 3
	slli.d	$a5, $t5, 3
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ldx.d	$t6, $a4, $a5
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	ldx.d	$a5, $a6, $a5
	addi.d	$a6, $t6, 120
	addi.d	$a7, $a5, 120
	sltu	$a7, $t6, $a7
	sltu	$t0, $a5, $a6
	and	$a7, $a7, $t0
	st.d	$zero, $sp, 448                 # 8-byte Folded Spill
	st.d	$t5, $sp, 344                   # 8-byte Folded Spill
	bnez	$a7, .LBB4_46
# %bb.13:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a0
	sltu	$t0, $t1, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_46
# %bb.14:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a0
	sltu	$t0, $t2, $a6
	and	$a7, $a7, $t0
	ld.d	$s2, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	bnez	$a7, .LBB4_47
# %bb.15:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $t3, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.16:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $t4, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.17:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $s2, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.18:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.19:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.20:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	ld.d	$t0, $sp, 544                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.21:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $t8, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.22:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $s3, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.23:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $s4, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.24:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $s5, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.25:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $t7, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.26:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $s7, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.27:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $s8, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.28:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $ra, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.29:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $a3, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.30:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $a2, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.31:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $a4, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.32:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $a1, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.33:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $fp, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.34:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $s0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.35:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $s6, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.36:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	sltu	$t0, $s1, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.37:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.38:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.39:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	ld.d	$t0, $sp, 376                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.40:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.41:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_47
# %bb.42:                               # %.preheader24.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	sltu	$a7, $t6, $a7
	ld.d	$t0, $sp, 352                   # 8-byte Folded Reload
	sltu	$a6, $t0, $a6
	and	$a6, $a7, $a6
	ld.d	$a7, $sp, 448                   # 8-byte Folded Reload
	bnez	$a6, .LBB4_48
# %bb.43:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_12 Depth=2
	vldrepl.w	$vr0, $a5, 0
	vst	$vr0, $sp, 448                  # 16-byte Folded Spill
	vldrepl.w	$vr0, $a5, 4
	vst	$vr0, $sp, 432                  # 16-byte Folded Spill
	vldrepl.w	$vr0, $a5, 8
	vst	$vr0, $sp, 416                  # 16-byte Folded Spill
	vldrepl.w	$vr0, $a5, 12
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	vldrepl.w	$vr4, $a5, 16
	vldrepl.w	$vr5, $a5, 20
	vldrepl.w	$vr6, $a5, 24
	vldrepl.w	$vr7, $a5, 28
	vldrepl.w	$vr8, $a5, 32
	vldrepl.w	$vr9, $a5, 36
	vldrepl.w	$vr10, $a5, 40
	vldrepl.w	$vr11, $a5, 44
	vldrepl.w	$vr12, $a5, 48
	vldrepl.w	$vr13, $a5, 52
	vldrepl.w	$vr14, $a5, 56
	vldrepl.w	$vr15, $a5, 60
	vldrepl.w	$vr16, $a5, 64
	vldrepl.w	$vr17, $a5, 68
	vldrepl.w	$vr18, $a5, 72
	vldrepl.w	$vr19, $a5, 76
	vldrepl.w	$vr20, $a5, 80
	vldrepl.w	$vr21, $a5, 84
	vldrepl.w	$vr22, $a5, 88
	vldrepl.w	$vr23, $a5, 92
	vldrepl.w	$vr24, $a5, 96
	vldrepl.w	$vr25, $a5, 100
	vldrepl.w	$vr26, $a5, 104
	vldrepl.w	$vr27, $a5, 108
	vldrepl.w	$vr28, $a5, 112
	vldrepl.w	$vr29, $a5, 116
	move	$a6, $zero
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 376                   # 8-byte Folded Reload
	move	$s5, $t6
	ld.d	$t6, $sp, 368                   # 8-byte Folded Reload
	move	$ra, $s2
	ld.d	$s2, $sp, 560                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	move	$t8, $a0
	move	$a0, $s6
	move	$s6, $s1
	move	$s1, $a1
	move	$a1, $s0
	move	$s0, $a4
	move	$a4, $a3
	move	$a3, $s8
	move	$s8, $t8
	ld.d	$t8, $sp, 352                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_44:                               # %vector.body
                                        #   Parent Loop BB4_11 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr30, $t2, $a6
	vldx	$vr31, $t1, $a6
	vld	$vr0, $sp, 432                  # 16-byte Folded Reload
	vmul.w	$vr30, $vr30, $vr0
	vld	$vr0, $sp, 448                  # 16-byte Folded Reload
	vmadd.w	$vr30, $vr31, $vr0
	vldx	$vr31, $t3, $a6
	vldx	$vr0, $t4, $a6
	vldx	$vr1, $ra, $a6
	vldx	$vr2, $s2, $a6
	vld	$vr3, $sp, 416                  # 16-byte Folded Reload
	vmadd.w	$vr30, $vr31, $vr3
	vld	$vr3, $sp, 400                  # 16-byte Folded Reload
	vmadd.w	$vr30, $vr0, $vr3
	vmadd.w	$vr30, $vr1, $vr4
	vmadd.w	$vr30, $vr2, $vr5
	vldx	$vr0, $s8, $a6
	vldx	$vr1, $s3, $a6
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	vldx	$vr2, $fp, $a6
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	vldx	$vr31, $fp, $a6
	vmadd.w	$vr30, $vr0, $vr6
	vmadd.w	$vr30, $vr1, $vr7
	vmadd.w	$vr30, $vr2, $vr8
	vmadd.w	$vr30, $vr31, $vr9
	vldx	$vr0, $s4, $a6
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	vldx	$vr1, $fp, $a6
	ld.d	$fp, $sp, 608                   # 8-byte Folded Reload
	vldx	$vr2, $fp, $a6
	vldx	$vr31, $s7, $a6
	vmadd.w	$vr30, $vr0, $vr10
	vmadd.w	$vr30, $vr1, $vr11
	vmadd.w	$vr30, $vr2, $vr12
	vmadd.w	$vr30, $vr31, $vr13
	vldx	$vr0, $a3, $a6
	ld.d	$fp, $sp, 472                   # 8-byte Folded Reload
	vldx	$vr1, $fp, $a6
	vldx	$vr2, $a4, $a6
	vldx	$vr31, $a2, $a6
	vmadd.w	$vr30, $vr0, $vr14
	vmadd.w	$vr30, $vr1, $vr15
	vmadd.w	$vr30, $vr2, $vr16
	vmadd.w	$vr30, $vr31, $vr17
	vldx	$vr0, $s0, $a6
	vldx	$vr1, $s1, $a6
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	vldx	$vr2, $fp, $a6
	vldx	$vr31, $a1, $a6
	vmadd.w	$vr30, $vr0, $vr18
	vmadd.w	$vr30, $vr1, $vr19
	vmadd.w	$vr30, $vr2, $vr20
	vmadd.w	$vr30, $vr31, $vr21
	vldx	$vr0, $a0, $a6
	vldx	$vr1, $s6, $a6
	vldx	$vr2, $a7, $a6
	vldx	$vr31, $t0, $a6
	vmadd.w	$vr30, $vr0, $vr22
	vmadd.w	$vr30, $vr1, $vr23
	vmadd.w	$vr30, $vr2, $vr24
	vmadd.w	$vr30, $vr31, $vr25
	vldx	$vr0, $t5, $a6
	vldx	$vr1, $t6, $a6
	vldx	$vr2, $t7, $a6
	vldx	$vr31, $t8, $a6
	vmadd.w	$vr30, $vr0, $vr26
	vmadd.w	$vr30, $vr1, $vr27
	vmadd.w	$vr30, $vr2, $vr28
	vmadd.w	$vr30, $vr31, $vr29
	vstx	$vr30, $s5, $a6
	addi.d	$a6, $a6, 16
	ori	$fp, $zero, 112
	bne	$a6, $fp, .LBB4_44
# %bb.45:                               #   in Loop: Header=BB4_12 Depth=2
	ori	$a7, $zero, 28
	move	$t6, $s5
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	move	$s8, $a3
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	move	$s0, $a1
	move	$s1, $s6
	move	$s6, $a0
	b	.LBB4_48
.LBB4_46:                               #   in Loop: Header=BB4_12 Depth=2
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_47:                               #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 448                   # 8-byte Folded Reload
.LBB4_48:                               # %.preheader.us.us.i.preheader
                                        #   in Loop: Header=BB4_12 Depth=2
	slli.d	$a6, $a7, 2
	move	$a4, $s0
	move	$s0, $s6
	move	$a1, $a2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 352                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_49:                               # %.preheader.us.us.i
                                        #   Parent Loop BB4_11 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a5, 0
	ldx.w	$t0, $t1, $a6
	move	$t5, $t1
	ld.w	$t1, $a5, 4
	move	$s4, $t6
	move	$t6, $t2
	ldx.w	$t2, $t2, $a6
	mul.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	ld.w	$t1, $a5, 8
	ldx.w	$t2, $t3, $a6
	move	$t7, $t3
	ld.w	$t3, $a5, 12
	move	$t8, $t4
	ldx.w	$t4, $t4, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 16
	ld.d	$t2, $sp, 528                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $a6
	ld.w	$t3, $a5, 20
	ld.d	$t4, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$t4, $t4, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 24
	ld.d	$t2, $sp, 520                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $a6
	ld.w	$t3, $a5, 28
	ld.d	$t4, $sp, 544                   # 8-byte Folded Reload
	ldx.w	$t4, $t4, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 32
	ld.d	$t2, $sp, 592                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $a6
	ld.w	$t3, $a5, 36
	ld.d	$t4, $sp, 576                   # 8-byte Folded Reload
	ldx.w	$t4, $t4, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 40
	ld.d	$t2, $sp, 512                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $a6
	ld.w	$t3, $a5, 44
	ldx.w	$t4, $s5, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 48
	ld.d	$t2, $sp, 608                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $a6
	ld.w	$t3, $a5, 52
	ldx.w	$t4, $s7, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 56
	ldx.w	$t2, $s8, $a6
	ld.w	$t3, $a5, 60
	ldx.w	$t4, $ra, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 64
	ld.d	$t2, $sp, 504                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $a6
	ld.w	$t3, $a5, 68
	ldx.w	$t4, $a1, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 72
	ld.d	$t2, $sp, 496                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $a6
	ld.w	$t3, $a5, 76
	ld.d	$t4, $sp, 488                   # 8-byte Folded Reload
	ldx.w	$t4, $t4, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 80
	ldx.w	$t2, $fp, $a6
	ld.w	$t3, $a5, 84
	ldx.w	$t4, $a4, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 88
	ldx.w	$t2, $s0, $a6
	ld.w	$t3, $a5, 92
	ldx.w	$t4, $s1, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 96
	ldx.w	$t2, $a2, $a6
	ld.w	$t3, $a5, 100
	ldx.w	$t4, $a0, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 104
	ldx.w	$t2, $s3, $a6
	ld.w	$t3, $a5, 108
	ldx.w	$t4, $s2, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	ld.w	$t1, $a5, 112
	ldx.w	$t2, $a3, $a6
	ld.w	$t3, $a5, 116
	ldx.w	$t4, $s6, $a6
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	move	$t2, $t6
	move	$t6, $s4
	move	$t1, $t5
	ori	$t5, $zero, 120
	add.d	$a7, $t0, $a7
	mul.d	$t0, $t4, $t3
	move	$t4, $t8
	move	$t3, $t7
	add.d	$a7, $t0, $a7
	stx.w	$a7, $s4, $a6
	addi.d	$a6, $a6, 4
	bne	$a6, $t5, .LBB4_49
# %bb.50:                               # %._crit_edge28.split.us.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$t5, $sp, 344                   # 8-byte Folded Reload
	addi.d	$t5, $t5, 1
	ori	$a0, $zero, 30
	bne	$t5, $a0, .LBB4_12
# %bb.51:                               # %_Z5mmultiiPPiS0_S0_.exit
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bne	$a5, $a4, .LBB4_11
.LBB4_52:                               # %_Z8mkmatrixii.exit36._crit_edge
	ld.d	$s0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s3, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.w	$a1, $a0, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a2, $zero, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	ld.w	$a1, $a0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a2, $zero, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.w	$a1, $a0, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s2, $a1, 240
	beqz	$s2, .LBB4_57
# %bb.53:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a1, $s2, 56
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_55
# %bb.54:
	ld.bu	$a1, $s2, 67
	b	.LBB4_56
.LBB4_55:
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $fp
.LBB4_56:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 232
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 224
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 216
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 208
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 200
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 192
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 184
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 176
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 168
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 160
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 152
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 144
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 136
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 128
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 120
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 112
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 104
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 96
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 80
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 72
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 64
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 56
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 232
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 224
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 216
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 208
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 200
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 192
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 184
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 176
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 168
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 160
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 152
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 144
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 136
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 128
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 120
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 112
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 104
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 96
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 80
	pcaddu18i	$ra, %call36(free)
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
	ld.d	$a0, $s0, 232
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 224
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 216
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 208
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 200
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 192
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 184
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 176
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 168
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 160
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 152
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 144
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 136
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 128
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 120
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 112
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 104
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 96
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 80
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
	move	$a0, $zero
	fld.d	$fs7, $sp, 632                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 640                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 648                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 656                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 664                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 680                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 688                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	ret
.LBB4_57:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" "
	.size	.L.str, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZSt4cout
