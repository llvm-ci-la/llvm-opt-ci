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
	.size	_Z8mkmatrixii, .Lfunc_end0-_Z8mkmatrixii
                                        # -- End function
	.globl	_Z10zeromatrixiiPPi             # -- Begin function _Z10zeromatrixiiPPi
	.p2align	5
	.type	_Z10zeromatrixiiPPi,@function
_Z10zeromatrixiiPPi:                    # @_Z10zeromatrixiiPPi
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
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
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
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_1)
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_2)
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_3)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_3)
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_4)
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_5)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_5)
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	move	$s3, $a0
	move	$s0, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 120
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s0
	vreplgr2vr.w	$vr0, $s1
	vld	$vr1, $sp, 256                  # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 240                  # 16-byte Folded Reload
	vadd.w	$vr2, $vr0, $vr2
	vld	$vr3, $sp, 224                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 208                  # 16-byte Folded Reload
	vadd.w	$vr4, $vr0, $vr4
	vst	$vr4, $a0, 16
	vst	$vr3, $a0, 0
	vld	$vr3, $sp, 192                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 176                  # 16-byte Folded Reload
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
	ori	$a0, $zero, 240
	ori	$fp, $zero, 240
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$s0, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB4_6:                                # %.lr.ph.i17
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 120
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s4, $s0
	vreplgr2vr.w	$vr0, $s1
	vld	$vr1, $sp, 256                  # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 240                  # 16-byte Folded Reload
	vadd.w	$vr2, $vr0, $vr2
	vld	$vr3, $sp, 224                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 208                  # 16-byte Folded Reload
	vadd.w	$vr4, $vr0, $vr4
	vst	$vr4, $a0, 16
	vst	$vr3, $a0, 0
	vld	$vr3, $sp, 192                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 176                  # 16-byte Folded Reload
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
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 240
	ori	$fp, $zero, 240
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s0, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph.i28
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 120
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s0
	vreplgr2vr.w	$vr0, $s1
	vld	$vr1, $sp, 256                  # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 240                  # 16-byte Folded Reload
	vadd.w	$vr2, $vr0, $vr2
	vld	$vr3, $sp, 224                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 208                  # 16-byte Folded Reload
	vadd.w	$vr4, $vr0, $vr4
	vst	$vr4, $a0, 16
	vst	$vr3, $a0, 0
	vld	$vr3, $sp, 192                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr0, $vr3
	vld	$vr4, $sp, 176                  # 16-byte Folded Reload
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
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $s2, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$a0, .LBB4_16
# %bb.10:                               # %.preheader24.i.preheader.preheader
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t2, $a2, 208
	ld.d	$t3, $a2, 216
	ld.d	$t4, $a2, 176
	ld.d	$t5, $a2, 184
	ld.d	$t6, $a2, 144
	ld.d	$t7, $a2, 152
	ld.d	$t8, $a2, 112
	ld.d	$s2, $a2, 120
	ld.d	$s3, $a2, 80
	ld.d	$s4, $a2, 88
	ld.d	$a0, $a2, 48
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 56
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 16
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 24
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 192
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 200
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 160
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 168
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 128
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 136
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 96
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 104
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 64
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 72
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 32
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 40
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 8
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 224
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 232
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $zero
	.p2align	4, , 16
.LBB4_11:                               # %.preheader24.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_13 Depth 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB4_12:                               # %.preheader24.i
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_13 Depth 3
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a4, $a1, 3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a4
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a4, $a5, $a4
	move	$a5, $zero
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_13:                               # %vector.ph
                                        #   Parent Loop BB4_11 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a6, $t2, $a5
	ldx.w	$a7, $t3, $a5
	vinsgr2vr.w	$vr1, $a6, 0
	ld.d	$a6, $a4, 104
	vinsgr2vr.w	$vr1, $a7, 1
	ldx.w	$a7, $t4, $a5
	ldx.w	$t0, $t5, $a5
	vinsgr2vr.d	$vr2, $a6, 0
	ld.d	$a6, $a4, 88
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t0, 1
	ldx.w	$a7, $t6, $a5
	vinsgr2vr.d	$vr4, $a6, 0
	ldx.w	$a6, $t7, $a5
	ld.d	$t0, $a4, 72
	vinsgr2vr.w	$vr5, $a7, 0
	ldx.w	$a7, $t8, $a5
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.d	$vr6, $t0, 0
	ldx.w	$a6, $s2, $a5
	vinsgr2vr.w	$vr7, $a7, 0
	ld.d	$a7, $a4, 56
	ldx.w	$t0, $s3, $a5
	ldx.w	$t1, $s4, $a5
	vinsgr2vr.w	$vr7, $a6, 1
	vinsgr2vr.d	$vr8, $a7, 0
	vinsgr2vr.w	$vr9, $t0, 0
	vinsgr2vr.w	$vr9, $t1, 1
	ld.d	$a6, $a4, 40
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	ldx.w	$a7, $a7, $a5
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a5
	ld.d	$t1, $a4, 24
	vinsgr2vr.d	$vr10, $a6, 0
	vinsgr2vr.w	$vr0, $a7, 0
	vinsgr2vr.w	$vr0, $t0, 1
	vinsgr2vr.d	$vr11, $t1, 0
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$a6, $a6, $a5
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a7, $a7, $a5
	ld.d	$t0, $a4, 8
	vmul.w	$vr0, $vr0, $vr11
	vinsgr2vr.w	$vr11, $a6, 0
	vinsgr2vr.w	$vr11, $a7, 1
	vinsgr2vr.d	$vr12, $t0, 0
	vmadd.w	$vr0, $vr11, $vr12
	vmadd.w	$vr0, $vr9, $vr10
	vmadd.w	$vr0, $vr7, $vr8
	vmadd.w	$vr0, $vr5, $vr6
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ldx.w	$a6, $a6, $a5
	vmadd.w	$vr0, $vr3, $vr4
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a7, $a7, $a5
	vmadd.w	$vr0, $vr1, $vr2
	vinsgr2vr.w	$vr1, $a6, 0
	ld.d	$a6, $a4, 96
	vinsgr2vr.w	$vr1, $a7, 1
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a7, $a7, $a5
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a5
	vinsgr2vr.d	$vr2, $a6, 0
	ld.d	$a6, $a4, 80
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t0, 1
	ldx.w	$a7, $s1, $a5
	vinsgr2vr.d	$vr4, $a6, 0
	ldx.w	$a6, $a1, $a5
	ld.d	$t0, $a4, 64
	vinsgr2vr.w	$vr5, $a7, 0
	ldx.w	$a7, $a2, $a5
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.d	$vr6, $t0, 0
	ldx.w	$a6, $a3, $a5
	vinsgr2vr.w	$vr7, $a7, 0
	ld.d	$a7, $a4, 48
	ldx.w	$t0, $s5, $a5
	ldx.w	$t1, $s6, $a5
	vinsgr2vr.w	$vr7, $a6, 1
	vinsgr2vr.d	$vr8, $a7, 0
	vinsgr2vr.w	$vr9, $t0, 0
	vinsgr2vr.w	$vr9, $t1, 1
	ld.d	$a6, $a4, 32
	ldx.w	$a7, $s7, $a5
	ldx.w	$t0, $s8, $a5
	ld.d	$t1, $a4, 16
	vinsgr2vr.d	$vr10, $a6, 0
	vinsgr2vr.w	$vr11, $a7, 0
	vinsgr2vr.w	$vr11, $t0, 1
	vinsgr2vr.d	$vr12, $t1, 0
	ldx.w	$a6, $ra, $a5
	ldx.w	$a7, $a0, $a5
	ld.d	$t0, $a4, 0
	vmul.w	$vr11, $vr11, $vr12
	vinsgr2vr.w	$vr12, $a6, 0
	vinsgr2vr.w	$vr12, $a7, 1
	vinsgr2vr.d	$vr13, $t0, 0
	vmadd.w	$vr11, $vr12, $vr13
	vmadd.w	$vr11, $vr9, $vr10
	vmadd.w	$vr11, $vr7, $vr8
	vmadd.w	$vr11, $vr5, $vr6
	vmadd.w	$vr11, $vr3, $vr4
	vmadd.w	$vr11, $vr1, $vr2
	vadd.w	$vr0, $vr0, $vr11
	ld.w	$a6, $a4, 112
	ldx.w	$a7, $s0, $a5
	vhaddw.d.w	$vr0, $vr0, $vr0
	ld.w	$t0, $a4, 116
	ldx.w	$t1, $fp, $a5
	mul.d	$a6, $a7, $a6
	vpickve2gr.w	$a7, $vr0, 0
	add.d	$a6, $a6, $a7
	mul.d	$a7, $t1, $t0
	add.d	$a6, $a7, $a6
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	stx.w	$a6, $a7, $a5
	ori	$a6, $zero, 120
	addi.d	$a5, $a5, 4
	bne	$a5, $a6, .LBB4_13
# %bb.14:                               # %._crit_edge28.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ori	$a0, $zero, 30
	bne	$a1, $a0, .LBB4_12
# %bb.15:                               # %_Z5mmultiiPPiS0_S0_.exit
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a3, .LBB4_11
.LBB4_16:                               # %_Z8mkmatrixii.exit36._crit_edge
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s5, 0
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
	ld.d	$a0, $s5, 16
	ld.w	$a1, $a0, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a2, $zero, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 24
	ld.w	$a1, $a0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a2, $zero, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 32
	ld.w	$a1, $a0, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s2, $a1, 240
	beqz	$s2, .LBB4_27
# %bb.17:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a1, $s2, 56
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	beqz	$a1, .LBB4_19
# %bb.18:
	ld.bu	$a1, $s2, 67
	b	.LBB4_20
.LBB4_19:
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
.LBB4_20:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 31
	ori	$s0, $zero, 232
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB4_21:                               # %.lr.ph.i41
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s3, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, -8
	bltu	$s1, $fp, .LBB4_21
# %bb.22:                               # %_Z10freematrixiPPi.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 31
	ori	$s0, $zero, 232
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB4_23:                               # %.lr.ph.i45
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s4, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, -8
	bltu	$s1, $fp, .LBB4_23
# %bb.24:                               # %_Z10freematrixiPPi.exit49
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 31
	ori	$s0, $zero, 232
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB4_25:                               # %.lr.ph.i50
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s5, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, -8
	bltu	$s1, $fp, .LBB4_25
# %bb.26:                               # %_Z10freematrixiPPi.exit54
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB4_27:
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
