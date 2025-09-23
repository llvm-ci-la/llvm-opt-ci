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
	.size	mkmatrix, .Lfunc_end0-mkmatrix
                                        # -- End function
	.globl	zeromatrix                      # -- Begin function zeromatrix
	.p2align	5
	.type	zeromatrix,@function
zeromatrix:                             # @zeromatrix
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
	.size	mmult, .Lfunc_end3-mmult
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI4_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI4_1:
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI4_2:
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
.LCPI4_3:
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
.LCPI4_4:
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
.LCPI4_5:
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
.LCPI4_6:
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
.LCPI4_7:
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
.LCPI4_8:
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
.LCPI4_9:
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
.LCPI4_10:
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
.LCPI4_11:
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
.LCPI4_12:
	.word	61                              # 0x3d
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.word	64                              # 0x40
.LCPI4_13:
	.word	65                              # 0x41
	.word	66                              # 0x42
	.word	67                              # 0x43
	.word	68                              # 0x44
.LCPI4_14:
	.word	71                              # 0x47
	.word	72                              # 0x48
	.word	73                              # 0x49
	.word	74                              # 0x4a
.LCPI4_15:
	.word	75                              # 0x4b
	.word	76                              # 0x4c
	.word	77                              # 0x4d
	.word	78                              # 0x4e
.LCPI4_16:
	.word	81                              # 0x51
	.word	82                              # 0x52
	.word	83                              # 0x53
	.word	84                              # 0x54
.LCPI4_17:
	.word	85                              # 0x55
	.word	86                              # 0x56
	.word	87                              # 0x57
	.word	88                              # 0x58
.LCPI4_18:
	.word	91                              # 0x5b
	.word	92                              # 0x5c
	.word	93                              # 0x5d
	.word	94                              # 0x5e
.LCPI4_19:
	.word	95                              # 0x5f
	.word	96                              # 0x60
	.word	97                              # 0x61
	.word	98                              # 0x62
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB4_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	b	.LBB4_3
.LBB4_2:
	lu12i.w	$a0, 732
	ori	$a0, $a0, 1728
.LBB4_3:                                # %.lr.ph.us.i
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 80
	ori	$s2, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_0)
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_1)
	vst	$vr1, $sp, 368                  # 16-byte Folded Spill
	st.d	$a0, $fp, 0
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$a1, $zero, 9
	lu32i.d	$a1, 10
	st.d	$a1, $a0, 32
	move	$s6, $a1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_2)
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_3)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_3)
	vst	$vr1, $sp, 336                  # 16-byte Folded Spill
	st.d	$a0, $fp, 8
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$s8, $zero, 19
	lu32i.d	$s8, 20
	st.d	$s8, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_4)
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_5)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_5)
	vst	$vr1, $sp, 304                  # 16-byte Folded Spill
	st.d	$a0, $fp, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$a1, $zero, 29
	lu32i.d	$a1, 30
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_6)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_6)
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_7)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_7)
	vst	$vr1, $sp, 272                  # 16-byte Folded Spill
	st.d	$a0, $fp, 24
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$a1, $zero, 39
	lu32i.d	$a1, 40
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	st.d	$a1, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_8)
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_9)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_9)
	vst	$vr1, $sp, 240                  # 16-byte Folded Spill
	st.d	$a0, $fp, 32
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$a1, $zero, 49
	lu32i.d	$a1, 50
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$a1, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_10)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_10)
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_11)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_11)
	vst	$vr1, $sp, 192                  # 16-byte Folded Spill
	st.d	$a0, $fp, 40
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$s1, $zero, 59
	lu32i.d	$s1, 60
	st.d	$s1, $a0, 32
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_12)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_12)
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_13)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_13)
	vst	$vr1, $sp, 144                  # 16-byte Folded Spill
	st.d	$a0, $fp, 48
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$s3, $zero, 69
	lu32i.d	$s3, 70
	st.d	$s3, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_14)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_14)
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_15)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_15)
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	st.d	$a0, $fp, 56
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$s4, $zero, 79
	lu32i.d	$s4, 80
	st.d	$s4, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_16)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_16)
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_17)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_17)
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	st.d	$a0, $fp, 64
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$s5, $zero, 89
	lu32i.d	$s5, 90
	st.d	$s5, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_18)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_18)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_19)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_19)
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	st.d	$a0, $fp, 72
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$s7, $zero, 99
	lu32i.d	$s7, 100
	st.d	$s7, $a0, 32
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	vld	$vr0, $sp, 384                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 368                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s6, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	vld	$vr0, $sp, 352                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 336                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s8, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	st.d	$s6, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 24
	vld	$vr0, $sp, 288                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a1, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 32
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 40
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s1, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 48
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s3, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 56
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s4, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 64
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s5, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 72
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s7, $a0, 32
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	vld	$vr0, $sp, 384                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 368                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	vld	$vr0, $sp, 352                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 336                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s8, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s6, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 24
	vld	$vr0, $sp, 288                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a1, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 32
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 40
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 48
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$s3, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s1, 56
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s4, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s1, 64
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s5, $a0, 32
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $s1, 72
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	st.d	$s7, $s5, 32
	blez	$a0, .LBB4_8
# %bb.4:                                # %.preheader24.us.i.preheader.preheader
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
	.p2align	4, , 16
.LBB4_5:                                # %.preheader24.us.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	move	$t4, $zero
	.p2align	4, , 16
.LBB4_6:                                # %.preheader24.us.i
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t6, $fp, $t4
	ld.w	$t7, $t6, 0
	ld.w	$t8, $a1, 0
	ld.w	$s6, $t6, 4
	ld.w	$s7, $a2, 0
	ldx.d	$t5, $s1, $t4
	mul.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	ld.w	$s6, $t6, 8
	ld.w	$s7, $a3, 0
	ld.w	$s8, $t6, 12
	ld.w	$ra, $a4, 0
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 16
	ld.w	$s7, $a5, 0
	ld.w	$s8, $t6, 20
	ld.w	$ra, $a6, 0
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 24
	ld.w	$s7, $a7, 0
	ld.w	$s8, $t6, 28
	ld.w	$ra, $t0, 0
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 32
	ld.w	$s7, $t1, 0
	ld.w	$s8, $t6, 36
	ld.w	$ra, $t2, 0
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	add.d	$t7, $t8, $t7
	st.w	$t7, $t5, 0
	ld.w	$t7, $t6, 0
	ld.w	$t8, $a1, 4
	ld.w	$s6, $t6, 4
	ld.w	$s7, $a2, 4
	mul.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	ld.w	$s6, $t6, 8
	ld.w	$s7, $a3, 4
	ld.w	$s8, $t6, 12
	ld.w	$ra, $a4, 4
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 16
	ld.w	$s7, $a5, 4
	ld.w	$s8, $t6, 20
	ld.w	$ra, $a6, 4
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 24
	ld.w	$s7, $a7, 4
	ld.w	$s8, $t6, 28
	ld.w	$ra, $t0, 4
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 32
	ld.w	$s7, $t1, 4
	ld.w	$s8, $t6, 36
	ld.w	$ra, $t2, 4
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	add.d	$t7, $t8, $t7
	st.w	$t7, $t5, 4
	ld.w	$t7, $t6, 0
	ld.w	$t8, $a1, 8
	ld.w	$s6, $t6, 4
	ld.w	$s7, $a2, 8
	mul.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	ld.w	$s6, $t6, 8
	ld.w	$s7, $a3, 8
	ld.w	$s8, $t6, 12
	ld.w	$ra, $a4, 8
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 16
	ld.w	$s7, $a5, 8
	ld.w	$s8, $t6, 20
	ld.w	$ra, $a6, 8
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 24
	ld.w	$s7, $a7, 8
	ld.w	$s8, $t6, 28
	ld.w	$ra, $t0, 8
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 32
	ld.w	$s7, $t1, 8
	ld.w	$s8, $t6, 36
	ld.w	$ra, $t2, 8
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	add.d	$t7, $t8, $t7
	st.w	$t7, $t5, 8
	ld.w	$t7, $t6, 0
	ld.w	$t8, $a1, 12
	ld.w	$s6, $t6, 4
	ld.w	$s7, $a2, 12
	mul.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	ld.w	$s6, $t6, 8
	ld.w	$s7, $a3, 12
	ld.w	$s8, $t6, 12
	ld.w	$ra, $a4, 12
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 16
	ld.w	$s7, $a5, 12
	ld.w	$s8, $t6, 20
	ld.w	$ra, $a6, 12
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 24
	ld.w	$s7, $a7, 12
	ld.w	$s8, $t6, 28
	ld.w	$ra, $t0, 12
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 32
	ld.w	$s7, $t1, 12
	ld.w	$s8, $t6, 36
	ld.w	$ra, $t2, 12
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	add.d	$t7, $t8, $t7
	st.w	$t7, $t5, 12
	ld.w	$t7, $t6, 0
	ld.w	$t8, $a1, 16
	ld.w	$s6, $t6, 4
	ld.w	$s7, $a2, 16
	mul.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	ld.w	$s6, $t6, 8
	ld.w	$s7, $a3, 16
	ld.w	$s8, $t6, 12
	ld.w	$ra, $a4, 16
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 16
	ld.w	$s7, $a5, 16
	ld.w	$s8, $t6, 20
	ld.w	$ra, $a6, 16
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 24
	ld.w	$s7, $a7, 16
	ld.w	$s8, $t6, 28
	ld.w	$ra, $t0, 16
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 32
	ld.w	$s7, $t1, 16
	ld.w	$s8, $t6, 36
	ld.w	$ra, $t2, 16
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	add.d	$t7, $t8, $t7
	st.w	$t7, $t5, 16
	ld.w	$t7, $t6, 0
	ld.w	$t8, $a1, 20
	ld.w	$s6, $t6, 4
	ld.w	$s7, $a2, 20
	mul.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	ld.w	$s6, $t6, 8
	ld.w	$s7, $a3, 20
	ld.w	$s8, $t6, 12
	ld.w	$ra, $a4, 20
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 16
	ld.w	$s7, $a5, 20
	ld.w	$s8, $t6, 20
	ld.w	$ra, $a6, 20
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 24
	ld.w	$s7, $a7, 20
	ld.w	$s8, $t6, 28
	ld.w	$ra, $t0, 20
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 32
	ld.w	$s7, $t1, 20
	ld.w	$s8, $t6, 36
	ld.w	$ra, $t2, 20
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	add.d	$t7, $t8, $t7
	st.w	$t7, $t5, 20
	ld.w	$t7, $t6, 0
	ld.w	$t8, $a1, 24
	ld.w	$s6, $t6, 4
	ld.w	$s7, $a2, 24
	mul.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	ld.w	$s6, $t6, 8
	ld.w	$s7, $a3, 24
	ld.w	$s8, $t6, 12
	ld.w	$ra, $a4, 24
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 16
	ld.w	$s7, $a5, 24
	ld.w	$s8, $t6, 20
	ld.w	$ra, $a6, 24
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 24
	ld.w	$s7, $a7, 24
	ld.w	$s8, $t6, 28
	ld.w	$ra, $t0, 24
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 32
	ld.w	$s7, $t1, 24
	ld.w	$s8, $t6, 36
	ld.w	$ra, $t2, 24
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	add.d	$t7, $t8, $t7
	st.w	$t7, $t5, 24
	ld.w	$t7, $t6, 0
	ld.w	$t8, $a1, 28
	ld.w	$s6, $t6, 4
	ld.w	$s7, $a2, 28
	mul.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	ld.w	$s6, $t6, 8
	ld.w	$s7, $a3, 28
	ld.w	$s8, $t6, 12
	ld.w	$ra, $a4, 28
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 16
	ld.w	$s7, $a5, 28
	ld.w	$s8, $t6, 20
	ld.w	$ra, $a6, 28
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 24
	ld.w	$s7, $a7, 28
	ld.w	$s8, $t6, 28
	ld.w	$ra, $t0, 28
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 32
	ld.w	$s7, $t1, 28
	ld.w	$s8, $t6, 36
	ld.w	$ra, $t2, 28
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	add.d	$t7, $t8, $t7
	st.w	$t7, $t5, 28
	ld.w	$t7, $t6, 0
	ld.w	$t8, $a1, 32
	ld.w	$s6, $t6, 4
	ld.w	$s7, $a2, 32
	mul.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	ld.w	$s6, $t6, 8
	ld.w	$s7, $a3, 32
	ld.w	$s8, $t6, 12
	ld.w	$ra, $a4, 32
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 16
	ld.w	$s7, $a5, 32
	ld.w	$s8, $t6, 20
	ld.w	$ra, $a6, 32
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 24
	ld.w	$s7, $a7, 32
	ld.w	$s8, $t6, 28
	ld.w	$ra, $t0, 32
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 32
	ld.w	$s7, $t1, 32
	ld.w	$s8, $t6, 36
	ld.w	$ra, $t2, 32
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	add.d	$t7, $t8, $t7
	st.w	$t7, $t5, 32
	ld.w	$t7, $t6, 0
	ld.w	$t8, $a1, 36
	ld.w	$s6, $t6, 4
	ld.w	$s7, $a2, 36
	mul.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	ld.w	$s6, $t6, 8
	ld.w	$s7, $a3, 36
	ld.w	$s8, $t6, 12
	ld.w	$ra, $a4, 36
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 16
	ld.w	$s7, $a5, 36
	ld.w	$s8, $t6, 20
	ld.w	$ra, $a6, 36
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 24
	ld.w	$s7, $a7, 36
	ld.w	$s8, $t6, 28
	ld.w	$ra, $t0, 36
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t8, $ra, $s8
	ld.w	$s6, $t6, 32
	ld.w	$s7, $t1, 36
	ld.w	$t6, $t6, 36
	ld.w	$s8, $t2, 36
	add.d	$t7, $t8, $t7
	mul.d	$t8, $s7, $s6
	add.d	$t7, $t8, $t7
	mul.d	$t6, $s8, $t6
	add.d	$t6, $t6, $t7
	addi.d	$t4, $t4, 8
	st.w	$t6, $t5, 36
	bne	$t4, $s2, .LBB4_6
# %bb.7:                                # %mmult.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.w	$t3, $t3, 1
	bne	$t3, $a0, .LBB4_5
.LBB4_8:                                # %mkmatrix.exit36._crit_edge
	ld.d	$s6, $s1, 0
	ld.d	$s7, $s1, 16
	ld.d	$s8, $s1, 24
	ld.d	$s2, $s1, 32
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s7, 12
	ld.w	$a3, $s8, 8
	ld.w	$a4, $s2, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
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
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
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
