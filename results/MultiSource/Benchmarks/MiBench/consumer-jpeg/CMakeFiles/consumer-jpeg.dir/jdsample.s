	.file	"jdsample.c"
	.text
	.globl	jinit_upsampler                 # -- Begin function jinit_upsampler
	.p2align	5
	.type	jinit_upsampler,@function
jinit_upsampler:                        # @jinit_upsampler
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
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	move	$a0, $fp
	jirl	$ra, $a3, 0
	move	$s0, $a0
	st.d	$a0, $fp, 592
	pcalau12i	$a0, %pc_hi20(start_pass_upsample)
	addi.d	$a0, $a0, %pc_lo12(start_pass_upsample)
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(sep_upsample)
	addi.d	$a0, $a0, %pc_lo12(sep_upsample)
	ld.w	$a1, $fp, 384
	st.d	$a0, $s0, 8
	st.w	$zero, $s0, 16
	beqz	$a1, .LBB0_2
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 23
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_2:
	ld.w	$a0, $fp, 92
	beqz	$a0, .LBB0_4
# %bb.3:
	ld.w	$a0, $fp, 396
	ori	$a1, $zero, 1
	slt	$a0, $a1, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 48
	bgtz	$a0, .LBB0_5
	b	.LBB0_28
.LBB0_4:
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	ld.w	$a0, $fp, 48
	blez	$a0, .LBB0_28
.LBB0_5:                                # %.lr.ph
	ld.d	$a0, $fp, 296
	addi.d	$s2, $s0, 104
	addi.d	$a1, $s0, 24
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s4, $a0, 36
	ori	$s5, $zero, 192
	ori	$s7, $zero, 242
	pcalau12i	$a0, %pc_hi20(noop_upsample)
	addi.d	$s6, $a0, %pc_lo12(noop_upsample)
	pcalau12i	$a0, %pc_hi20(fullsize_upsample)
	addi.d	$s8, $a0, %pc_lo12(fullsize_upsample)
	pcalau12i	$a0, %pc_hi20(h2v1_fancy_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v1_fancy_upsample)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(h2v1_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v1_upsample)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(h2v2_fancy_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v2_fancy_upsample)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(h2v2_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v2_upsample)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB0_10
.LBB0_6:                                #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
.LBB0_7:                                #   in Loop: Header=BB0_10 Depth=1
	st.d	$a1, $a0, 104
.LBB0_8:                                #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$s3, $a0, 16
	ld.wu	$a0, $fp, 128
	ld.w	$a1, $fp, 388
	pcaddu18i	$ra, %call36(jround_up)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, 392
	addi.w	$a2, $a0, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $s3, 0
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
.LBB0_9:                                # %.critedge
                                        #   in Loop: Header=BB0_10 Depth=1
	stx.d	$a0, $a6, $s1
	ld.w	$a0, $fp, 48
	addi.d	$s1, $s1, 8
	addi.d	$s5, $s5, 4
	addi.d	$a1, $s7, -241
	addi.d	$s7, $s7, 1
	addi.d	$s4, $s4, 96
	bge	$a1, $a0, .LBB0_28
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $s4, 0
	ld.w	$a0, $s4, -24
	ld.w	$a5, $fp, 396
	ld.w	$a7, $s4, -28
	mul.w	$a0, $a0, $a4
	div.w	$a1, $a0, $a5
	ld.w	$a3, $fp, 388
	ld.w	$a2, $fp, 392
	stx.w	$a1, $s0, $s5
	ld.w	$t0, $s4, 12
	move	$a6, $s2
	move	$a0, $s6
	beqz	$t0, .LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	mul.w	$a0, $a4, $a7
	div.w	$a4, $a0, $a5
	bne	$a4, $a3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a6, $s2
	move	$a0, $s8
	beq	$a1, $a2, .LBB0_9
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	slli.w	$a0, $a4, 1
	bne	$a0, $a3, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	bne	$a1, $a2, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_6
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $s4, 4
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB0_6
# %bb.17:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_7
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=1
	bne	$a0, $a3, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=1
	slli.w	$a0, $a1, 1
	bne	$a0, $a2, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_26
# %bb.21:                               #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $s4, 4
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $a0, 104
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 16
	b	.LBB0_8
.LBB0_23:                               #   in Loop: Header=BB0_10 Depth=1
	div.w	$a0, $a3, $a4
	mul.d	$a4, $a0, $a4
	sub.w	$a3, $a3, $a4
	bnez	$a3, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_10 Depth=1
	div.w	$a3, $a2, $a1
	mul.d	$a1, $a3, $a1
	sub.w	$a1, $a2, $a1
	beqz	$a1, .LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 37
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_8
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_7
.LBB0_27:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a1, $s0, $s1
	pcalau12i	$a2, %pc_hi20(int_upsample)
	addi.d	$a2, $a2, %pc_lo12(int_upsample)
	st.d	$a2, $a1, 104
	add.d	$a1, $s0, $s7
	st.b	$a0, $a1, -10
	stx.b	$a3, $s0, $s7
	b	.LBB0_8
.LBB0_28:                               # %._crit_edge
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
.Lfunc_end0:
	.size	jinit_upsampler, .Lfunc_end0-jinit_upsampler
                                        # -- End function
	.p2align	5                               # -- Begin function start_pass_upsample
	.type	start_pass_upsample,@function
start_pass_upsample:                    # @start_pass_upsample
# %bb.0:
	ld.d	$a1, $a0, 592
	ld.w	$a2, $a0, 392
	ld.w	$a0, $a0, 132
	st.w	$a2, $a1, 184
	st.w	$a0, $a1, 188
	ret
.Lfunc_end1:
	.size	start_pass_upsample, .Lfunc_end1-start_pass_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function sep_upsample
	.type	sep_upsample,@function
sep_upsample:                           # @sep_upsample
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
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$s4, $a0, 592
	ld.w	$a7, $s4, 184
	ld.w	$a0, $a0, 392
	move	$s1, $a5
	move	$fp, $a2
	blt	$a7, $a0, .LBB2_6
# %bb.1:
	move	$s2, $a1
	ld.w	$a1, $s0, 48
	blez	$a1, .LBB2_5
# %bb.2:                                # %.lr.ph
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $a4
	ld.d	$s3, $s0, 296
	move	$s7, $zero
	addi.d	$s8, $s4, 104
	addi.d	$s5, $s4, 192
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s2, 0
	ld.d	$a4, $s8, 0
	mul.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a3, $s8, -80
	move	$a0, $s0
	move	$a1, $s3
	jirl	$ra, $a4, 0
	addi.d	$s7, $s7, 1
	ld.w	$a0, $s0, 48
	addi.d	$s3, $s3, 96
	addi.d	$s8, $s8, 8
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 4
	blt	$s7, $a0, .LBB2_3
# %bb.4:                                # %._crit_edge.loopexit
	ld.w	$a0, $s0, 392
	move	$a4, $s6
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
.LBB2_5:                                # %._crit_edge
	move	$a7, $zero
	st.w	$zero, $s4, 184
.LBB2_6:
	ld.w	$a1, $s4, 188
	sub.w	$a0, $a0, $a7
	sltu	$a2, $a0, $a1
	ld.wu	$a3, $s1, 0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	sub.w	$a1, $a6, $a3
	ld.d	$a2, $s0, 600
	sltu	$a5, $a0, $a1
	maskeqz	$a0, $a0, $a5
	masknez	$a1, $a1, $a5
	ld.d	$a5, $a2, 8
	or	$s2, $a0, $a1
	addi.d	$a1, $s4, 24
	alsl.d	$a3, $a3, $a4, 3
	move	$a0, $s0
	move	$a2, $a7
	move	$a4, $s2
	jirl	$ra, $a5, 0
	ld.w	$a0, $s1, 0
	add.d	$a0, $a0, $s2
	st.w	$a0, $s1, 0
	ld.w	$a0, $s4, 188
	ld.w	$a1, $s4, 184
	ld.w	$a2, $s0, 392
	sub.d	$a0, $a0, $s2
	st.w	$a0, $s4, 188
	add.w	$a0, $a1, $s2
	st.w	$a0, $s4, 184
	blt	$a0, $a2, .LBB2_8
# %bb.7:
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
.LBB2_8:
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	sep_upsample, .Lfunc_end2-sep_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function noop_upsample
	.type	noop_upsample,@function
noop_upsample:                          # @noop_upsample
# %bb.0:
	st.d	$zero, $a3, 0
	ret
.Lfunc_end3:
	.size	noop_upsample, .Lfunc_end3-noop_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function fullsize_upsample
	.type	fullsize_upsample,@function
fullsize_upsample:                      # @fullsize_upsample
# %bb.0:
	st.d	$a2, $a3, 0
	ret
.Lfunc_end4:
	.size	fullsize_upsample, .Lfunc_end4-fullsize_upsample
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function h2v1_fancy_upsample
.LCPI5_0:
	.dword	8                               # 0x8
	.dword	10                              # 0xa
	.dword	12                              # 0xc
	.dword	14                              # 0xe
.LCPI5_1:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	4                               # 0x4
	.dword	6                               # 0x6
	.text
	.p2align	5
	.type	h2v1_fancy_upsample,@function
h2v1_fancy_upsample:                    # @h2v1_fancy_upsample
# %bb.0:
	ld.w	$a4, $a0, 392
	blez	$a4, .LBB5_14
# %bb.1:                                # %.lr.ph42
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	move	$a4, $zero
	ld.d	$a3, $a3, 0
	ori	$a5, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.h	$vr1, 3
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a6, $a7, -2
.LBB5_3:                                # %._crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$t1, $t0, 0
	ld.bu	$t0, $t0, -1
	alsl.d	$t2, $t1, $t1, 1
	add.d	$t0, $t0, $t2
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 2
	st.b	$t0, $a7, 0
	st.b	$t1, $a6, 3
	ld.w	$a6, $a0, 392
	addi.d	$a4, $a4, 1
	bge	$a4, $a6, .LBB5_13
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_12 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$t5, $a2, $a6
	ldx.d	$a6, $a3, $a6
	ld.bu	$a7, $t5, 0
	st.b	$a7, $a6, 0
	ld.bu	$t0, $t5, 1
	alsl.d	$a7, $a7, $a7, 1
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.b	$a7, $a6, 1
	ld.w	$t2, $a1, 40
	addi.d	$t0, $t5, 1
	addi.w	$t1, $t2, -2
	addi.d	$a7, $a6, 2
	beqz	$t1, .LBB5_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	bltu	$t1, $a5, .LBB5_12
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$t2, $t2, -3
	bstrpick.d	$t2, $t2, 31, 0
	add.d	$t3, $t5, $t2
	addi.d	$t3, $t3, 3
	bgeu	$a7, $t3, .LBB5_8
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_4 Depth=1
	alsl.d	$t2, $t2, $a6, 1
	addi.d	$t2, $t2, 4
	bltu	$t5, $t2, .LBB5_12
.LBB5_8:                                # %vector.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	bstrpick.d	$t2, $t1, 31, 0
	bstrpick.d	$t6, $t2, 31, 3
	slli.d	$t4, $t6, 3
	alsl.d	$a7, $t6, $a7, 4
	sub.d	$t1, $t1, $t4
	alsl.d	$t3, $t6, $a6, 4
	alsl.d	$t0, $t6, $t0, 3
	addi.d	$t5, $t5, 2
	move	$t6, $t4
	.p2align	4, , 16
.LBB5_9:                                # %vector.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$t7, %pc_hi20(.LCPI5_0)
	xvld	$xr2, $t7, %pc_lo12(.LCPI5_0)
	pcalau12i	$t7, %pc_hi20(.LCPI5_1)
	xvld	$xr3, $t7, %pc_lo12(.LCPI5_1)
	addi.d	$t7, $a6, 2
	xvreplgr2vr.d	$xr4, $a6
	xvadd.d	$xr5, $xr4, $xr2
	xvadd.d	$xr4, $xr4, $xr3
	xvreplgr2vr.d	$xr6, $t7
	ld.d	$t7, $t5, -1
	xvadd.d	$xr2, $xr6, $xr2
	ld.d	$t8, $t5, -2
	xvadd.d	$xr3, $xr6, $xr3
	vinsgr2vr.d	$vr6, $t7, 0
	vilvl.b	$vr6, $vr0, $vr6
	vinsgr2vr.d	$vr7, $t8, 0
	vilvl.b	$vr7, $vr0, $vr7
	vmadd.h	$vr7, $vr6, $vr1
	vaddi.hu	$vr7, $vr7, 1
	vsrli.h	$vr7, $vr7, 2
	xvpickve2gr.d	$t7, $xr4, 1
	xvpickve2gr.d	$t8, $xr4, 2
	xvpickve2gr.d	$fp, $xr4, 3
	xvpickve2gr.d	$s0, $xr5, 0
	xvpickve2gr.d	$s1, $xr5, 1
	xvpickve2gr.d	$s2, $xr5, 2
	xvpickve2gr.d	$s3, $xr3, 0
	vstelm.b	$vr7, $s3, 0, 0
	xvpickve2gr.d	$s3, $xr3, 1
	vstelm.b	$vr7, $s3, 0, 2
	xvpickve2gr.d	$s3, $xr3, 2
	vstelm.b	$vr7, $s3, 0, 4
	xvpickve2gr.d	$s3, $xr3, 3
	vstelm.b	$vr7, $s3, 0, 6
	xvpickve2gr.d	$s3, $xr2, 0
	vstelm.b	$vr7, $s3, 0, 8
	xvpickve2gr.d	$s3, $xr2, 1
	vstelm.b	$vr7, $s3, 0, 10
	xvpickve2gr.d	$s3, $xr2, 2
	vstelm.b	$vr7, $s3, 0, 12
	ld.d	$s3, $t5, 0
	xvpickve2gr.d	$s4, $xr2, 3
	vstelm.b	$vr7, $s4, 0, 14
	xvpickve2gr.d	$s4, $xr5, 3
	vinsgr2vr.d	$vr2, $s3, 0
	vilvl.b	$vr2, $vr0, $vr2
	vmadd.h	$vr2, $vr6, $vr1
	vaddi.hu	$vr2, $vr2, 2
	vsrli.h	$vr2, $vr2, 2
	vstelm.b	$vr2, $a6, 3, 0
	vstelm.b	$vr2, $t7, 3, 2
	vstelm.b	$vr2, $t8, 3, 4
	vstelm.b	$vr2, $fp, 3, 6
	vstelm.b	$vr2, $s0, 3, 8
	vstelm.b	$vr2, $s1, 3, 10
	vstelm.b	$vr2, $s2, 3, 12
	vstelm.b	$vr2, $s4, 3, 14
	addi.d	$a6, $a6, 16
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, 8
	bnez	$t6, .LBB5_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB5_4 Depth=1
	beq	$t4, $t2, .LBB5_2
# %bb.11:                               #   in Loop: Header=BB5_4 Depth=1
	move	$a6, $t3
	.p2align	4, , 16
.LBB5_12:                               # %.lr.ph
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t2, $t0, 0
	ld.bu	$t3, $t0, -1
	alsl.d	$t2, $t2, $t2, 1
	add.d	$t3, $t3, $t2
	addi.d	$t3, $t3, 1
	srli.d	$t3, $t3, 2
	st.b	$t3, $a7, 0
	ld.bu	$t3, $t0, 1
	addi.d	$t0, $t0, 1
	add.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	st.b	$t2, $a6, 3
	addi.w	$t1, $t1, -1
	move	$a6, $a7
	addi.d	$a7, $a7, 2
	bnez	$t1, .LBB5_12
	b	.LBB5_2
.LBB5_13:
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB5_14:                               # %._crit_edge43
	ret
.Lfunc_end5:
	.size	h2v1_fancy_upsample, .Lfunc_end5-h2v1_fancy_upsample
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function h2v1_upsample
.LCPI6_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	15                              # 0xf
	.text
	.p2align	5
	.type	h2v1_upsample,@function
h2v1_upsample:                          # @h2v1_upsample
# %bb.0:
	ld.w	$a7, $a0, 392
	blez	$a7, .LBB6_20
# %bb.1:                                # %.lr.ph22
	move	$a1, $zero
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 30
	addi.w	$a5, $zero, -2
	ori	$a6, $zero, 62
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.w	$a7, $a0, 392
.LBB6_3:                                # %._crit_edge
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a1, $a1, 1
	bge	$a1, $a7, .LBB6_20
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_16 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #     Child Loop BB6_9 Depth 2
	ld.wu	$t1, $a0, 128
	beqz	$t1, .LBB6_3
# %bb.5:                                # %iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	slli.d	$t2, $a1, 3
	ldx.d	$t0, $a3, $t2
	add.d	$a7, $t0, $t1
	ldx.d	$t2, $a2, $t2
	addi.d	$t1, $t0, 2
	sltu	$t3, $t1, $a7
	maskeqz	$t4, $a7, $t3
	masknez	$t3, $t1, $t3
	or	$t4, $t4, $t3
	nor	$t3, $t0, $zero
	add.d	$t3, $t4, $t3
	bltu	$t3, $a4, .LBB6_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_4 Depth=1
	srli.d	$t5, $t3, 1
	add.d	$t6, $t2, $t5
	addi.d	$t6, $t6, 1
	bgeu	$t0, $t6, .LBB6_10
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_4 Depth=1
	sub.d	$t4, $t0, $t4
	andn	$t4, $a5, $t4
	add.d	$t1, $t1, $t4
	bgeu	$t2, $t1, .LBB6_10
.LBB6_8:                                #   in Loop: Header=BB6_4 Depth=1
	move	$t4, $t2
	move	$t5, $t0
	.p2align	4, , 16
.LBB6_9:                                # %.lr.ph
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t0, $t4, 0
	addi.d	$t4, $t4, 1
	st.b	$t0, $t5, 0
	addi.d	$t1, $t5, 2
	st.b	$t0, $t5, 1
	move	$t5, $t1
	bltu	$t1, $a7, .LBB6_9
	b	.LBB6_2
.LBB6_10:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$t1, $t5, 1
	bgeu	$t3, $a6, .LBB6_15
# %bb.11:                               #   in Loop: Header=BB6_4 Depth=1
	move	$t3, $zero
.LBB6_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t6, $t1
	bstrins.d	$t6, $zero, 3, 0
	add.d	$t4, $t2, $t6
	alsl.d	$t5, $t6, $t0, 1
	add.d	$t2, $t2, $t3
	sub.d	$t7, $t3, $t6
	alsl.d	$t0, $t3, $t0, 1
	addi.d	$t0, $t0, 15
	.p2align	4, , 16
.LBB6_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t2, 0
	pcalau12i	$t3, %pc_hi20(.LCPI6_0)
	xvld	$xr1, $t3, %pc_lo12(.LCPI6_0)
	xvpermi.d	$xr0, $xr0, 68
	xvshuf.b	$xr0, $xr0, $xr0, $xr1
	xvst	$xr0, $t0, -15
	addi.d	$t2, $t2, 16
	addi.d	$t7, $t7, 16
	addi.d	$t0, $t0, 32
	bnez	$t7, .LBB6_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	bne	$t1, $t6, .LBB6_9
	b	.LBB6_2
.LBB6_15:                               # %vector.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t3, $t1
	bstrins.d	$t3, $zero, 4, 0
	addi.d	$t4, $t0, 31
	move	$t5, $t3
	move	$t6, $t2
	.p2align	4, , 16
.LBB6_16:                               # %vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t6, 0
	xvstelm.b	$xr0, $t4, -31, 0
	xvstelm.b	$xr0, $t4, -29, 1
	xvstelm.b	$xr0, $t4, -27, 2
	xvstelm.b	$xr0, $t4, -25, 3
	xvstelm.b	$xr0, $t4, -23, 4
	xvstelm.b	$xr0, $t4, -21, 5
	xvstelm.b	$xr0, $t4, -19, 6
	xvstelm.b	$xr0, $t4, -17, 7
	xvstelm.b	$xr0, $t4, -15, 8
	xvstelm.b	$xr0, $t4, -13, 9
	xvstelm.b	$xr0, $t4, -11, 10
	xvstelm.b	$xr0, $t4, -9, 11
	xvstelm.b	$xr0, $t4, -7, 12
	xvstelm.b	$xr0, $t4, -5, 13
	xvstelm.b	$xr0, $t4, -3, 14
	xvstelm.b	$xr0, $t4, -1, 15
	xvstelm.b	$xr0, $t4, 1, 16
	xvstelm.b	$xr0, $t4, 3, 17
	xvstelm.b	$xr0, $t4, 5, 18
	xvstelm.b	$xr0, $t4, 7, 19
	xvstelm.b	$xr0, $t4, 9, 20
	xvstelm.b	$xr0, $t4, 11, 21
	xvstelm.b	$xr0, $t4, 13, 22
	xvstelm.b	$xr0, $t4, 15, 23
	xvstelm.b	$xr0, $t4, 17, 24
	xvstelm.b	$xr0, $t4, 19, 25
	xvstelm.b	$xr0, $t4, 21, 26
	xvstelm.b	$xr0, $t4, 23, 27
	xvstelm.b	$xr0, $t4, 25, 28
	xvstelm.b	$xr0, $t4, 27, 29
	xvstelm.b	$xr0, $t4, 29, 30
	xvstelm.b	$xr0, $t4, 31, 31
	xvstelm.b	$xr0, $t4, -30, 0
	xvstelm.b	$xr0, $t4, -28, 1
	xvstelm.b	$xr0, $t4, -26, 2
	xvstelm.b	$xr0, $t4, -24, 3
	xvstelm.b	$xr0, $t4, -22, 4
	xvstelm.b	$xr0, $t4, -20, 5
	xvstelm.b	$xr0, $t4, -18, 6
	xvstelm.b	$xr0, $t4, -16, 7
	xvstelm.b	$xr0, $t4, -14, 8
	xvstelm.b	$xr0, $t4, -12, 9
	xvstelm.b	$xr0, $t4, -10, 10
	xvstelm.b	$xr0, $t4, -8, 11
	xvstelm.b	$xr0, $t4, -6, 12
	xvstelm.b	$xr0, $t4, -4, 13
	xvstelm.b	$xr0, $t4, -2, 14
	xvstelm.b	$xr0, $t4, 0, 15
	xvstelm.b	$xr0, $t4, 2, 16
	xvstelm.b	$xr0, $t4, 4, 17
	xvstelm.b	$xr0, $t4, 6, 18
	xvstelm.b	$xr0, $t4, 8, 19
	xvstelm.b	$xr0, $t4, 10, 20
	xvstelm.b	$xr0, $t4, 12, 21
	xvstelm.b	$xr0, $t4, 14, 22
	xvstelm.b	$xr0, $t4, 16, 23
	xvstelm.b	$xr0, $t4, 18, 24
	xvstelm.b	$xr0, $t4, 20, 25
	xvstelm.b	$xr0, $t4, 22, 26
	xvstelm.b	$xr0, $t4, 24, 27
	xvstelm.b	$xr0, $t4, 26, 28
	xvstelm.b	$xr0, $t4, 28, 29
	xvstelm.b	$xr0, $t4, 30, 30
	xvstelm.b	$xr0, $t4, 32, 31
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, -32
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB6_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	beq	$t1, $t3, .LBB6_2
# %bb.18:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	andi	$t4, $t1, 16
	bnez	$t4, .LBB6_12
# %bb.19:                               #   in Loop: Header=BB6_4 Depth=1
	add.d	$t4, $t2, $t3
	alsl.d	$t5, $t3, $t0, 1
	b	.LBB6_9
.LBB6_20:                               # %._crit_edge23
	ret
.Lfunc_end6:
	.size	h2v1_upsample, .Lfunc_end6-h2v1_upsample
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function h2v2_fancy_upsample
.LCPI7_0:
	.dword	56                              # 0x38
	.dword	58                              # 0x3a
	.dword	60                              # 0x3c
	.dword	62                              # 0x3e
.LCPI7_1:
	.dword	48                              # 0x30
	.dword	50                              # 0x32
	.dword	52                              # 0x34
	.dword	54                              # 0x36
.LCPI7_2:
	.dword	40                              # 0x28
	.dword	42                              # 0x2a
	.dword	44                              # 0x2c
	.dword	46                              # 0x2e
.LCPI7_3:
	.dword	32                              # 0x20
	.dword	34                              # 0x22
	.dword	36                              # 0x24
	.dword	38                              # 0x26
.LCPI7_4:
	.dword	24                              # 0x18
	.dword	26                              # 0x1a
	.dword	28                              # 0x1c
	.dword	30                              # 0x1e
.LCPI7_5:
	.dword	16                              # 0x10
	.dword	18                              # 0x12
	.dword	20                              # 0x14
	.dword	22                              # 0x16
.LCPI7_6:
	.dword	8                               # 0x8
	.dword	10                              # 0xa
	.dword	12                              # 0xc
	.dword	14                              # 0xe
.LCPI7_7:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	4                               # 0x4
	.dword	6                               # 0x6
.LCPI7_8:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.p2align	5
	.type	h2v2_fancy_upsample,@function
h2v2_fancy_upsample:                    # @h2v2_fancy_upsample
# %bb.0:
	ld.w	$a4, $a0, 392
	blez	$a4, .LBB7_26
# %bb.1:                                # %.preheader.lr.ph
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 24                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 0
	move	$a4, $zero
	move	$a5, $zero
	xvrepli.w	$xr0, 3
	pcalau12i	$t3, %pc_hi20(.LCPI7_4)
	pcalau12i	$t4, %pc_hi20(.LCPI7_5)
	pcalau12i	$t5, %pc_hi20(.LCPI7_6)
	pcalau12i	$t6, %pc_hi20(.LCPI7_7)
	pcalau12i	$t7, %pc_hi20(.LCPI7_8)
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                # %._crit_edge.1.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t8, $fp, -2
.LBB7_3:                                # %._crit_edge.1
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$a6, $s4, $s4, 1
	add.d	$a6, $ra, $a6
	addi.d	$a6, $a6, 8
	srli.d	$a6, $a6, 4
	st.b	$a6, $fp, 0
	slli.d	$a6, $s4, 2
	addi.d	$a6, $a6, 7
	srli.d	$a6, $a6, 4
	st.b	$a6, $t8, 3
	ld.w	$a6, $a0, 392
	addi.w	$a5, $a5, 2
	addi.d	$a4, $a4, 1
	bge	$a5, $a6, .LBB7_25
.LBB7_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
                                        #     Child Loop BB7_7 Depth 2
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_12 Depth 2
	alsl.d	$t8, $a4, $a2, 3
	slli.d	$a7, $a4, 3
	ldx.d	$s7, $a2, $a7
	ld.d	$s4, $t8, -8
	slli.d	$a7, $a5, 3
	ldx.d	$fp, $a3, $a7
	ld.bu	$a7, $s7, 0
	ld.bu	$t0, $s4, 0
	ld.bu	$t1, $s7, 1
	ld.bu	$t2, $s4, 1
	alsl.d	$a7, $a7, $a7, 1
	add.d	$s5, $a7, $t0
	alsl.d	$a7, $t1, $t1, 1
	add.d	$s6, $a7, $t2
	slli.d	$a7, $s5, 2
	addi.d	$a7, $a7, 8
	srli.d	$a7, $a7, 4
	st.b	$a7, $fp, 0
	alsl.d	$a7, $s5, $s5, 1
	add.d	$a7, $a7, $s6
	addi.d	$a7, $a7, 7
	srli.d	$a7, $a7, 4
	st.b	$a7, $fp, 1
	ld.w	$s8, $a1, 40
	addi.w	$s1, $s8, -2
	addi.d	$s0, $fp, 2
	pcalau12i	$a7, %pc_hi20(.LCPI7_0)
	pcalau12i	$t0, %pc_hi20(.LCPI7_1)
	pcalau12i	$t1, %pc_hi20(.LCPI7_2)
	pcalau12i	$t2, %pc_hi20(.LCPI7_3)
	beqz	$s1, .LBB7_9
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s2, $s4, 2
	addi.d	$s3, $s7, 2
	ori	$a6, $zero, 32
	bgeu	$s1, $a6, .LBB7_13
.LBB7_6:                                # %.lr.ph.preheader149
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$s4, $s5
	.p2align	4, , 16
.LBB7_7:                                # %.lr.ph
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $s3, 0
	move	$s5, $s6
	ld.bu	$s6, $s2, 0
	addi.d	$s3, $s3, 1
	alsl.d	$a6, $a6, $a6, 1
	addi.d	$s2, $s2, 1
	add.d	$s6, $a6, $s6
	alsl.d	$a6, $s5, $s5, 1
	add.d	$s4, $s4, $a6
	addi.d	$s4, $s4, 8
	srli.d	$s4, $s4, 4
	st.b	$s4, $s0, 0
	add.d	$a6, $a6, $s6
	addi.d	$a6, $a6, 7
	srli.d	$a6, $a6, 4
	st.b	$a6, $fp, 3
	addi.w	$s1, $s1, -1
	move	$fp, $s0
	addi.d	$s0, $s0, 2
	move	$s4, $s5
	bnez	$s1, .LBB7_7
.LBB7_8:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$fp, $s0, -2
.LBB7_9:                                # %._crit_edge
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$a6, $s6, $s6, 1
	add.d	$a6, $s5, $a6
	addi.d	$a6, $a6, 8
	srli.d	$a6, $a6, 4
	st.b	$a6, $s0, 0
	slli.d	$a6, $s6, 2
	addi.d	$a6, $a6, 7
	srli.d	$a6, $a6, 4
	st.b	$a6, $fp, 3
	ld.d	$s5, $t8, 0
	ld.d	$s3, $t8, 8
	alsl.d	$a6, $a5, $a3, 3
	ld.d	$t8, $a6, 8
	ld.bu	$a6, $s5, 0
	ld.bu	$fp, $s3, 0
	ld.bu	$s0, $s5, 1
	ld.bu	$s1, $s3, 1
	alsl.d	$a6, $a6, $a6, 1
	add.d	$ra, $a6, $fp
	alsl.d	$a6, $s0, $s0, 1
	add.d	$s4, $a6, $s1
	slli.d	$a6, $ra, 2
	addi.d	$a6, $a6, 8
	srli.d	$a6, $a6, 4
	st.b	$a6, $t8, 0
	alsl.d	$a6, $ra, $ra, 1
	add.d	$a6, $a6, $s4
	addi.d	$a6, $a6, 7
	srli.d	$a6, $a6, 4
	st.b	$a6, $t8, 1
	ld.w	$s6, $a1, 40
	addi.w	$s0, $s6, -2
	addi.d	$fp, $t8, 2
	beqz	$s0, .LBB7_3
# %bb.10:                               # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s1, $s3, 2
	addi.d	$s2, $s5, 2
	ori	$a6, $zero, 32
	bgeu	$s0, $a6, .LBB7_19
.LBB7_11:                               # %.lr.ph.1.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$a7, $ra
	.p2align	4, , 16
.LBB7_12:                               # %.lr.ph.1
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $s2, 0
	move	$ra, $s4
	ld.bu	$t0, $s1, 0
	addi.d	$s2, $s2, 1
	alsl.d	$a6, $a6, $a6, 1
	addi.d	$s1, $s1, 1
	add.d	$s4, $a6, $t0
	alsl.d	$a6, $ra, $ra, 1
	add.d	$a7, $a7, $a6
	addi.d	$a7, $a7, 8
	srli.d	$a7, $a7, 4
	st.b	$a7, $fp, 0
	add.d	$a6, $a6, $s4
	addi.d	$a6, $a6, 7
	srli.d	$a6, $a6, 4
	st.b	$a6, $t8, 3
	addi.w	$s0, $s0, -1
	move	$t8, $fp
	addi.d	$fp, $fp, 2
	move	$a7, $ra
	bnez	$s0, .LBB7_12
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_13:                               # %vector.memcheck99
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s8, $s8, -3
	bstrpick.d	$ra, $s8, 31, 0
	alsl.d	$s8, $ra, $fp, 1
	addi.d	$s8, $s8, 4
	add.d	$s7, $s7, $ra
	addi.d	$s7, $s7, 3
	sltu	$s7, $s0, $s7
	sltu	$a6, $s3, $s8
	and	$a6, $s7, $a6
	bnez	$a6, .LBB7_6
# %bb.14:                               # %vector.memcheck99
                                        #   in Loop: Header=BB7_4 Depth=1
	add.d	$a6, $s4, $ra
	addi.d	$a6, $a6, 3
	sltu	$a6, $s0, $a6
	sltu	$s4, $s2, $s8
	and	$a6, $a6, $s4
	bnez	$a6, .LBB7_6
# %bb.15:                               # %vector.ph115
                                        #   in Loop: Header=BB7_4 Depth=1
	bstrpick.d	$s4, $s1, 31, 0
	bstrpick.d	$a6, $s4, 31, 5
	slli.d	$s8, $a6, 5
	slli.d	$a6, $a6, 6
	add.d	$s0, $s0, $a6
	sub.d	$s1, $s1, $s8
	add.d	$a6, $fp, $a6
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	add.d	$a6, $s2, $s8
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	add.d	$s7, $s3, $s8
	xvinsgr2vr.w	$xr19, $s5, 7
	xvinsgr2vr.w	$xr18, $s6, 7
	move	$ra, $s8
	.p2align	4, , 16
.LBB7_16:                               # %vector.body119
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $fp, 2
	xvld	$xr9, $a7, %pc_lo12(.LCPI7_0)
	xvreplgr2vr.d	$xr8, $fp
	xvld	$xr11, $t0, %pc_lo12(.LCPI7_1)
	xvld	$xr12, $t1, %pc_lo12(.LCPI7_2)
	xvld	$xr13, $t2, %pc_lo12(.LCPI7_3)
	xvadd.d	$xr1, $xr8, $xr9
	xvadd.d	$xr2, $xr8, $xr11
	xvadd.d	$xr3, $xr8, $xr12
	xvadd.d	$xr4, $xr8, $xr13
	xvld	$xr14, $t3, %pc_lo12(.LCPI7_4)
	xvld	$xr15, $t4, %pc_lo12(.LCPI7_5)
	xvld	$xr16, $t5, %pc_lo12(.LCPI7_6)
	xvld	$xr17, $t6, %pc_lo12(.LCPI7_7)
	xvadd.d	$xr5, $xr8, $xr14
	xvadd.d	$xr6, $xr8, $xr15
	xvadd.d	$xr7, $xr8, $xr16
	xvadd.d	$xr8, $xr8, $xr17
	xvreplgr2vr.d	$xr20, $a6
	xvadd.d	$xr10, $xr20, $xr9
	xvadd.d	$xr11, $xr20, $xr11
	xvadd.d	$xr12, $xr20, $xr12
	xvadd.d	$xr13, $xr20, $xr13
	xvadd.d	$xr14, $xr20, $xr14
	xvld	$xr9, $s3, 0
	xvadd.d	$xr15, $xr20, $xr15
	xvadd.d	$xr16, $xr20, $xr16
	xvadd.d	$xr17, $xr20, $xr17
	xvpermi.q	$xr20, $xr9, 1
	vpickve2gr.b	$a6, $vr20, 4
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 0
	vpickve2gr.b	$a6, $vr20, 5
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 1
	vpickve2gr.b	$a6, $vr20, 6
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 2
	vpickve2gr.b	$a6, $vr20, 7
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 3
	vpickve2gr.b	$a6, $vr20, 0
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr21, $a6, 0
	vpickve2gr.b	$a6, $vr20, 1
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr21, $a6, 1
	vpickve2gr.b	$a6, $vr20, 2
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr21, $a6, 2
	vpickve2gr.b	$a6, $vr20, 3
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr21, $a6, 3
	xvpermi.q	$xr21, $xr22, 2
	vpickve2gr.b	$a6, $vr20, 12
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 0
	vpickve2gr.b	$a6, $vr20, 13
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 1
	vpickve2gr.b	$a6, $vr20, 14
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 2
	vpickve2gr.b	$a6, $vr20, 15
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 3
	vpickve2gr.b	$a6, $vr20, 8
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 0
	vpickve2gr.b	$a6, $vr20, 9
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 1
	vpickve2gr.b	$a6, $vr20, 10
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 2
	vpickve2gr.b	$a6, $vr20, 11
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 3
	xvpermi.q	$xr22, $xr23, 2
	vpickve2gr.b	$a6, $vr9, 12
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 0
	vpickve2gr.b	$a6, $vr9, 13
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 1
	vpickve2gr.b	$a6, $vr9, 14
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 2
	vpickve2gr.b	$a6, $vr9, 15
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 3
	vpickve2gr.b	$a6, $vr9, 8
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 0
	vpickve2gr.b	$a6, $vr9, 9
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 1
	vpickve2gr.b	$a6, $vr9, 10
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 2
	vpickve2gr.b	$a6, $vr9, 11
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 3
	xvpermi.q	$xr23, $xr20, 2
	vpickve2gr.b	$a6, $vr9, 4
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 0
	vpickve2gr.b	$a6, $vr9, 5
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 1
	vpickve2gr.b	$a6, $vr9, 6
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 2
	vpickve2gr.b	$a6, $vr9, 7
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 3
	vpickve2gr.b	$a6, $vr9, 0
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr25, $a6, 0
	vpickve2gr.b	$a6, $vr9, 1
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr25, $a6, 1
	vpickve2gr.b	$a6, $vr9, 2
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr25, $a6, 2
	vpickve2gr.b	$a6, $vr9, 3
	xvld	$xr26, $s2, 0
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr25, $a6, 3
	xvpermi.q	$xr25, $xr20, 2
	xvpermi.q	$xr20, $xr26, 1
	vpickve2gr.b	$a6, $vr20, 4
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 0
	vpickve2gr.b	$a6, $vr20, 5
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 1
	vpickve2gr.b	$a6, $vr20, 6
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 2
	vpickve2gr.b	$a6, $vr20, 7
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 3
	vpickve2gr.b	$a6, $vr20, 0
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr9, $a6, 0
	vpickve2gr.b	$a6, $vr20, 1
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr9, $a6, 1
	vpickve2gr.b	$a6, $vr20, 2
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr9, $a6, 2
	vpickve2gr.b	$a6, $vr20, 3
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr9, $a6, 3
	xvpermi.q	$xr9, $xr24, 2
	vpickve2gr.b	$a6, $vr20, 12
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 0
	vpickve2gr.b	$a6, $vr20, 13
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 1
	vpickve2gr.b	$a6, $vr20, 14
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 2
	vpickve2gr.b	$a6, $vr20, 15
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 3
	vpickve2gr.b	$a6, $vr20, 8
	andi	$s5, $a6, 255
	xvpickve2gr.w	$s6, $xr18, 7
	xvpermi.d	$xr27, $xr18, 78
	vinsgr2vr.w	$vr18, $s5, 0
	vpickve2gr.b	$a6, $vr20, 9
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr18, $a6, 1
	vpickve2gr.b	$a6, $vr20, 10
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr18, $a6, 2
	vpickve2gr.b	$a6, $vr20, 11
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr18, $a6, 3
	xvpermi.q	$xr18, $xr24, 2
	vpickve2gr.b	$a6, $vr26, 12
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 0
	vpickve2gr.b	$a6, $vr26, 13
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 1
	vpickve2gr.b	$a6, $vr26, 14
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 2
	vpickve2gr.b	$a6, $vr26, 15
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 3
	vpickve2gr.b	$a6, $vr26, 8
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 0
	vpickve2gr.b	$a6, $vr26, 9
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 1
	vpickve2gr.b	$a6, $vr26, 10
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 2
	vpickve2gr.b	$a6, $vr26, 11
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 3
	xvpermi.q	$xr20, $xr24, 2
	vpickve2gr.b	$a6, $vr26, 4
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr28, $a6, 0
	vpickve2gr.b	$a6, $vr26, 5
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr28, $a6, 1
	vpickve2gr.b	$a6, $vr26, 6
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr28, $a6, 2
	vpickve2gr.b	$a6, $vr26, 7
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr28, $a6, 3
	vpickve2gr.b	$a6, $vr26, 0
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 0
	vpickve2gr.b	$a6, $vr26, 1
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 1
	vpickve2gr.b	$a6, $vr26, 2
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 2
	vpickve2gr.b	$a6, $vr26, 3
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 3
	xvpermi.q	$xr24, $xr28, 2
	xvmadd.w	$xr18, $xr22, $xr0
	xvmadd.w	$xr9, $xr21, $xr0
	xvmadd.w	$xr24, $xr25, $xr0
	xvmadd.w	$xr20, $xr23, $xr0
	xvpickve2gr.w	$a6, $xr9, 0
	xvpickve2gr.w	$s5, $xr20, 7
	vinsgr2vr.w	$vr21, $s5, 0
	vinsgr2vr.w	$vr21, $a6, 1
	xvpickve2gr.w	$a6, $xr9, 1
	vinsgr2vr.w	$vr21, $a6, 2
	xvpickve2gr.w	$a6, $xr9, 2
	vinsgr2vr.w	$vr21, $a6, 3
	xvpickve2gr.w	$a6, $xr9, 3
	vinsgr2vr.w	$vr22, $a6, 0
	xvpickve2gr.w	$a6, $xr9, 4
	vinsgr2vr.w	$vr22, $a6, 1
	xvpickve2gr.w	$a6, $xr9, 5
	vinsgr2vr.w	$vr22, $a6, 2
	xvpickve2gr.w	$a6, $xr9, 6
	vinsgr2vr.w	$vr22, $a6, 3
	xvpermi.q	$xr21, $xr22, 2
	xvpickve2gr.w	$a6, $xr18, 3
	vinsgr2vr.w	$vr22, $a6, 0
	xvpickve2gr.w	$a6, $xr18, 4
	vinsgr2vr.w	$vr22, $a6, 1
	xvpickve2gr.w	$a6, $xr18, 5
	vinsgr2vr.w	$vr22, $a6, 2
	xvpickve2gr.w	$s5, $xr18, 6
	vinsgr2vr.w	$vr22, $s5, 3
	xvpickve2gr.w	$a6, $xr9, 7
	xvpermi.d	$xr25, $xr19, 78
	vinsgr2vr.w	$vr19, $a6, 0
	xvpickve2gr.w	$a6, $xr18, 0
	vinsgr2vr.w	$vr19, $a6, 1
	xvpickve2gr.w	$a6, $xr18, 1
	vinsgr2vr.w	$vr19, $a6, 2
	xvpickve2gr.w	$a6, $xr18, 2
	vinsgr2vr.w	$vr19, $a6, 3
	xvpermi.q	$xr19, $xr22, 2
	xvpickve2gr.w	$a6, $xr24, 0
	vinsgr2vr.w	$vr23, $s6, 0
	vinsgr2vr.w	$vr23, $a6, 1
	xvpickve2gr.w	$a6, $xr24, 1
	vinsgr2vr.w	$vr23, $a6, 2
	xvpickve2gr.w	$a6, $xr24, 2
	vinsgr2vr.w	$vr23, $a6, 3
	xvpickve2gr.w	$a6, $xr24, 3
	vinsgr2vr.w	$vr22, $a6, 0
	xvpickve2gr.w	$a6, $xr24, 4
	vinsgr2vr.w	$vr22, $a6, 1
	xvpickve2gr.w	$a6, $xr24, 5
	vinsgr2vr.w	$vr22, $a6, 2
	xvpickve2gr.w	$a6, $xr24, 6
	vinsgr2vr.w	$vr22, $a6, 3
	xvpermi.q	$xr23, $xr22, 2
	xvpickve2gr.w	$a6, $xr20, 3
	vinsgr2vr.w	$vr26, $a6, 0
	xvpickve2gr.w	$a6, $xr20, 4
	vinsgr2vr.w	$vr26, $a6, 1
	xvpickve2gr.w	$a6, $xr20, 5
	vinsgr2vr.w	$vr26, $a6, 2
	xvpickve2gr.w	$a6, $xr20, 6
	vinsgr2vr.w	$vr26, $a6, 3
	xvpickve2gr.w	$a6, $xr24, 7
	vinsgr2vr.w	$vr22, $a6, 0
	xvpickve2gr.w	$a6, $xr20, 0
	vinsgr2vr.w	$vr22, $a6, 1
	xvpickve2gr.w	$a6, $xr20, 1
	vinsgr2vr.w	$vr22, $a6, 2
	xvpickve2gr.w	$a6, $xr20, 2
	vinsgr2vr.w	$vr22, $a6, 3
	xvpermi.q	$xr22, $xr26, 2
	xvpickve2gr.d	$a6, $xr18, 1
	vinsgr2vr.d	$vr26, $a6, 0
	xvpickve2gr.d	$a6, $xr18, 2
	vinsgr2vr.d	$vr26, $a6, 1
	xvpickve2gr.d	$a6, $xr9, 3
	vinsgr2vr.d	$vr28, $a6, 0
	xvpickve2gr.d	$a6, $xr18, 0
	vinsgr2vr.d	$vr28, $a6, 1
	xvpermi.q	$xr28, $xr26, 2
	xvpickve2gr.d	$a6, $xr20, 1
	vinsgr2vr.d	$vr26, $a6, 0
	xvpickve2gr.d	$a6, $xr20, 2
	vinsgr2vr.d	$vr26, $a6, 1
	xvpickve2gr.d	$a6, $xr24, 3
	vinsgr2vr.d	$vr29, $a6, 0
	xvpickve2gr.d	$a6, $xr20, 0
	vinsgr2vr.d	$vr29, $a6, 1
	xvpermi.q	$xr29, $xr26, 2
	xvpickve2gr.d	$a6, $xr9, 1
	vinsgr2vr.d	$vr26, $a6, 0
	xvpickve2gr.d	$a6, $xr9, 2
	vinsgr2vr.d	$vr26, $a6, 1
	xvpickve2gr.d	$a6, $xr9, 0
	xvpickve2gr.d	$s6, $xr20, 3
	vinsgr2vr.d	$vr30, $s6, 0
	vinsgr2vr.d	$vr30, $a6, 1
	xvpermi.q	$xr30, $xr26, 2
	xvpickve2gr.d	$a6, $xr24, 1
	vinsgr2vr.d	$vr26, $a6, 0
	xvld	$xr31, $t7, %pc_lo12(.LCPI7_8)
	xvpickve2gr.d	$a6, $xr24, 2
	vinsgr2vr.d	$vr26, $a6, 1
	xvpickve2gr.d	$a6, $xr24, 0
	xvshuf.w	$xr31, $xr27, $xr25
	xvpickve2gr.d	$s6, $xr31, 0
	vinsgr2vr.d	$vr25, $s6, 0
	vinsgr2vr.d	$vr25, $a6, 1
	xvpermi.q	$xr25, $xr26, 2
	xvmadd.w	$xr28, $xr19, $xr0
	xvmadd.w	$xr30, $xr21, $xr0
	xvmadd.w	$xr29, $xr22, $xr0
	xvmadd.w	$xr25, $xr23, $xr0
	xvaddi.wu	$xr26, $xr28, 8
	xvaddi.wu	$xr28, $xr29, 8
	xvaddi.wu	$xr29, $xr30, 8
	xvaddi.wu	$xr27, $xr25, 8
	xvpickve2gr.w	$a6, $xr26, 0
	vinsgr2vr.h	$vr25, $a6, 0
	xvpickve2gr.w	$a6, $xr26, 1
	vinsgr2vr.h	$vr25, $a6, 1
	xvpickve2gr.w	$a6, $xr26, 2
	vinsgr2vr.h	$vr25, $a6, 2
	xvpickve2gr.w	$a6, $xr26, 3
	vinsgr2vr.h	$vr25, $a6, 3
	xvpickve2gr.w	$a6, $xr26, 4
	vinsgr2vr.h	$vr25, $a6, 4
	xvpickve2gr.w	$a6, $xr26, 5
	vinsgr2vr.h	$vr25, $a6, 5
	xvpickve2gr.w	$a6, $xr26, 6
	vinsgr2vr.h	$vr25, $a6, 6
	xvpickve2gr.w	$a6, $xr26, 7
	vinsgr2vr.h	$vr25, $a6, 7
	vsrli.h	$vr25, $vr25, 4
	xvpickve2gr.w	$a6, $xr29, 0
	vinsgr2vr.h	$vr26, $a6, 0
	xvpickve2gr.w	$a6, $xr29, 1
	vinsgr2vr.h	$vr26, $a6, 1
	xvpickve2gr.w	$a6, $xr29, 2
	vinsgr2vr.h	$vr26, $a6, 2
	xvpickve2gr.w	$a6, $xr29, 3
	vinsgr2vr.h	$vr26, $a6, 3
	xvpickve2gr.w	$a6, $xr29, 4
	vinsgr2vr.h	$vr26, $a6, 4
	xvpickve2gr.w	$a6, $xr29, 5
	vinsgr2vr.h	$vr26, $a6, 5
	xvpickve2gr.w	$a6, $xr29, 6
	vinsgr2vr.h	$vr26, $a6, 6
	xvpickve2gr.w	$a6, $xr29, 7
	vinsgr2vr.h	$vr26, $a6, 7
	vsrli.h	$vr26, $vr26, 4
	xvpickve2gr.w	$a6, $xr28, 0
	vinsgr2vr.h	$vr29, $a6, 0
	xvpickve2gr.w	$a6, $xr28, 1
	vinsgr2vr.h	$vr29, $a6, 1
	xvpickve2gr.w	$a6, $xr28, 2
	vinsgr2vr.h	$vr29, $a6, 2
	xvpickve2gr.w	$a6, $xr28, 3
	vinsgr2vr.h	$vr29, $a6, 3
	xvpickve2gr.w	$a6, $xr28, 4
	vinsgr2vr.h	$vr29, $a6, 4
	xvpickve2gr.w	$a6, $xr28, 5
	vinsgr2vr.h	$vr29, $a6, 5
	xvpickve2gr.w	$a6, $xr28, 6
	vinsgr2vr.h	$vr29, $a6, 6
	xvpickve2gr.w	$a6, $xr28, 7
	vinsgr2vr.h	$vr29, $a6, 7
	vsrli.h	$vr28, $vr29, 4
	xvpickve2gr.w	$a6, $xr27, 0
	vinsgr2vr.h	$vr29, $a6, 0
	xvpickve2gr.w	$a6, $xr27, 1
	vinsgr2vr.h	$vr29, $a6, 1
	xvpickve2gr.w	$a6, $xr27, 2
	vinsgr2vr.h	$vr29, $a6, 2
	xvpickve2gr.w	$a6, $xr27, 3
	vinsgr2vr.h	$vr29, $a6, 3
	xvpickve2gr.w	$a6, $xr27, 4
	vinsgr2vr.h	$vr29, $a6, 4
	xvpickve2gr.w	$a6, $xr27, 5
	vinsgr2vr.h	$vr29, $a6, 5
	xvpickve2gr.w	$a6, $xr27, 6
	vinsgr2vr.h	$vr29, $a6, 6
	xvpickve2gr.w	$a6, $xr27, 7
	vinsgr2vr.h	$vr29, $a6, 7
	vsrli.h	$vr27, $vr29, 4
	vpickve2gr.h	$a6, $vr27, 0
	xvpickve2gr.d	$s6, $xr17, 0
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr27, 1
	xvpickve2gr.d	$s6, $xr17, 1
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr27, 2
	xvpickve2gr.d	$s6, $xr17, 2
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr27, 3
	xvpickve2gr.d	$s6, $xr17, 3
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr27, 4
	xvpickve2gr.d	$s6, $xr16, 0
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr27, 5
	xvpickve2gr.d	$s6, $xr16, 1
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr27, 6
	xvpickve2gr.d	$s6, $xr16, 2
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr27, 7
	xvpickve2gr.d	$s6, $xr16, 3
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr28, 0
	xvpickve2gr.d	$s6, $xr15, 0
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr28, 1
	xvpickve2gr.d	$s6, $xr15, 1
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr28, 2
	xvpickve2gr.d	$s6, $xr15, 2
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr28, 3
	xvpickve2gr.d	$s6, $xr15, 3
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr28, 4
	xvpickve2gr.d	$s6, $xr14, 0
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr28, 5
	xvpickve2gr.d	$s6, $xr14, 1
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr28, 6
	xvpickve2gr.d	$s6, $xr14, 2
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr28, 7
	xvpickve2gr.d	$s6, $xr14, 3
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr26, 0
	xvpickve2gr.d	$s6, $xr13, 0
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr26, 1
	xvpickve2gr.d	$s6, $xr13, 1
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr26, 2
	xvpickve2gr.d	$s6, $xr13, 2
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr26, 3
	xvpickve2gr.d	$s6, $xr13, 3
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr26, 4
	xvpickve2gr.d	$s6, $xr12, 0
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr26, 5
	xvpickve2gr.d	$s6, $xr12, 1
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr26, 6
	xvpickve2gr.d	$s6, $xr12, 2
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr26, 7
	xvpickve2gr.d	$s6, $xr12, 3
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr25, 0
	xvpickve2gr.d	$s6, $xr11, 0
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr25, 1
	xvpickve2gr.d	$s6, $xr11, 1
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr25, 2
	xvpickve2gr.d	$s6, $xr11, 2
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr25, 3
	xvpickve2gr.d	$s6, $xr11, 3
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr25, 4
	xvpickve2gr.d	$s6, $xr10, 0
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr25, 5
	xvpickve2gr.d	$s6, $xr10, 1
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr25, 6
	xvpickve2gr.d	$s6, $xr10, 2
	st.b	$a6, $s6, 0
	vpickve2gr.h	$a6, $vr25, 7
	xvpickve2gr.d	$s6, $xr10, 3
	st.b	$a6, $s6, 0
	xvpickve2gr.d	$s6, $xr8, 1
	xvmadd.w	$xr24, $xr23, $xr0
	xvaddi.wu	$xr10, $xr24, 7
	xvpickve2gr.w	$a6, $xr10, 0
	vinsgr2vr.h	$vr11, $a6, 0
	xvpickve2gr.w	$a6, $xr10, 1
	vinsgr2vr.h	$vr11, $a6, 1
	xvpickve2gr.w	$a6, $xr10, 2
	vinsgr2vr.h	$vr11, $a6, 2
	xvpickve2gr.w	$a6, $xr10, 3
	vinsgr2vr.h	$vr11, $a6, 3
	xvpickve2gr.w	$a6, $xr10, 4
	vinsgr2vr.h	$vr11, $a6, 4
	xvpickve2gr.w	$a6, $xr10, 5
	vinsgr2vr.h	$vr11, $a6, 5
	xvpickve2gr.w	$a6, $xr10, 6
	vinsgr2vr.h	$vr11, $a6, 6
	xvpickve2gr.w	$a6, $xr10, 7
	vinsgr2vr.h	$vr11, $a6, 7
	vsrli.h	$vr10, $vr11, 4
	vpickve2gr.h	$a6, $vr10, 0
	st.b	$a6, $fp, 3
	vpickve2gr.h	$a6, $vr10, 1
	st.b	$a6, $s6, 3
	xvpickve2gr.d	$a6, $xr8, 2
	vpickve2gr.h	$s6, $vr10, 2
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr8, 3
	vpickve2gr.h	$s6, $vr10, 3
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr7, 0
	vpickve2gr.h	$s6, $vr10, 4
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr7, 1
	vpickve2gr.h	$s6, $vr10, 5
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr7, 2
	vpickve2gr.h	$s6, $vr10, 6
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr7, 3
	vpickve2gr.h	$s6, $vr10, 7
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr6, 0
	xvmadd.w	$xr20, $xr22, $xr0
	xvaddi.wu	$xr7, $xr20, 7
	xvpickve2gr.w	$s6, $xr7, 0
	vinsgr2vr.h	$vr8, $s6, 0
	xvpickve2gr.w	$s6, $xr7, 1
	vinsgr2vr.h	$vr8, $s6, 1
	xvpickve2gr.w	$s6, $xr7, 2
	vinsgr2vr.h	$vr8, $s6, 2
	xvpickve2gr.w	$s6, $xr7, 3
	vinsgr2vr.h	$vr8, $s6, 3
	xvpickve2gr.w	$s6, $xr7, 4
	vinsgr2vr.h	$vr8, $s6, 4
	xvpickve2gr.w	$s6, $xr7, 5
	vinsgr2vr.h	$vr8, $s6, 5
	xvpickve2gr.w	$s6, $xr7, 6
	vinsgr2vr.h	$vr8, $s6, 6
	xvpickve2gr.w	$s6, $xr7, 7
	vinsgr2vr.h	$vr8, $s6, 7
	vsrli.h	$vr7, $vr8, 4
	vpickve2gr.h	$s6, $vr7, 0
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr6, 1
	vpickve2gr.h	$s6, $vr7, 1
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr6, 2
	vpickve2gr.h	$s6, $vr7, 2
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr6, 3
	vpickve2gr.h	$s6, $vr7, 3
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr5, 0
	vpickve2gr.h	$s6, $vr7, 4
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr5, 1
	vpickve2gr.h	$s6, $vr7, 5
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr5, 2
	vpickve2gr.h	$s6, $vr7, 6
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr5, 3
	vpickve2gr.h	$s6, $vr7, 7
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr4, 0
	xvmadd.w	$xr9, $xr21, $xr0
	xvaddi.wu	$xr5, $xr9, 7
	xvpickve2gr.w	$s6, $xr5, 0
	vinsgr2vr.h	$vr6, $s6, 0
	xvpickve2gr.w	$s6, $xr5, 1
	vinsgr2vr.h	$vr6, $s6, 1
	xvpickve2gr.w	$s6, $xr5, 2
	vinsgr2vr.h	$vr6, $s6, 2
	xvpickve2gr.w	$s6, $xr5, 3
	vinsgr2vr.h	$vr6, $s6, 3
	xvpickve2gr.w	$s6, $xr5, 4
	vinsgr2vr.h	$vr6, $s6, 4
	xvpickve2gr.w	$s6, $xr5, 5
	vinsgr2vr.h	$vr6, $s6, 5
	xvpickve2gr.w	$s6, $xr5, 6
	vinsgr2vr.h	$vr6, $s6, 6
	xvpickve2gr.w	$s6, $xr5, 7
	vinsgr2vr.h	$vr6, $s6, 7
	vsrli.h	$vr5, $vr6, 4
	vpickve2gr.h	$s6, $vr5, 0
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr4, 1
	vpickve2gr.h	$s6, $vr5, 1
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr4, 2
	vpickve2gr.h	$s6, $vr5, 2
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr4, 3
	vpickve2gr.h	$s6, $vr5, 3
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 0
	vpickve2gr.h	$s6, $vr5, 4
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 1
	vpickve2gr.h	$s6, $vr5, 5
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 2
	vpickve2gr.h	$s6, $vr5, 6
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 3
	vpickve2gr.h	$s6, $vr5, 7
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr2, 0
	xvori.b	$xr3, $xr18, 0
	xvmadd.w	$xr3, $xr19, $xr0
	xvaddi.wu	$xr3, $xr3, 7
	xvpickve2gr.w	$s6, $xr3, 0
	vinsgr2vr.h	$vr4, $s6, 0
	xvpickve2gr.w	$s6, $xr3, 1
	vinsgr2vr.h	$vr4, $s6, 1
	xvpickve2gr.w	$s6, $xr3, 2
	vinsgr2vr.h	$vr4, $s6, 2
	xvpickve2gr.w	$s6, $xr3, 3
	vinsgr2vr.h	$vr4, $s6, 3
	xvpickve2gr.w	$s6, $xr3, 4
	vinsgr2vr.h	$vr4, $s6, 4
	xvpickve2gr.w	$s6, $xr3, 5
	vinsgr2vr.h	$vr4, $s6, 5
	xvpickve2gr.w	$s6, $xr3, 6
	vinsgr2vr.h	$vr4, $s6, 6
	xvpickve2gr.w	$s6, $xr3, 7
	vinsgr2vr.h	$vr4, $s6, 7
	vsrli.h	$vr3, $vr4, 4
	vpickve2gr.h	$s6, $vr3, 0
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr2, 1
	vpickve2gr.h	$s6, $vr3, 1
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr2, 2
	vpickve2gr.h	$s6, $vr3, 2
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr2, 3
	vpickve2gr.h	$s6, $vr3, 3
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr1, 0
	vpickve2gr.h	$s6, $vr3, 4
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr1, 1
	vpickve2gr.h	$s6, $vr3, 5
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr1, 2
	vpickve2gr.h	$s6, $vr3, 6
	st.b	$s6, $a6, 3
	xvpickve2gr.d	$a6, $xr1, 3
	vpickve2gr.h	$s6, $vr3, 7
	st.b	$s6, $a6, 3
	addi.d	$fp, $fp, 64
	addi.d	$ra, $ra, -32
	addi.d	$s3, $s3, 32
	addi.d	$s2, $s2, 32
	bnez	$ra, .LBB7_16
# %bb.17:                               # %middle.block136
                                        #   in Loop: Header=BB7_4 Depth=1
	xvpickve2gr.w	$s6, $xr18, 7
	beq	$s8, $s4, .LBB7_8
# %bb.18:                               #   in Loop: Header=BB7_4 Depth=1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	move	$s3, $s7
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_19:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a6, $s6, -3
	bstrpick.d	$s7, $a6, 31, 0
	alsl.d	$a6, $s7, $t8, 1
	addi.d	$s6, $a6, 4
	add.d	$a6, $s5, $s7
	addi.d	$a6, $a6, 3
	sltu	$a6, $fp, $a6
	sltu	$s5, $s2, $s6
	and	$a6, $a6, $s5
	bnez	$a6, .LBB7_11
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_4 Depth=1
	add.d	$a6, $s3, $s7
	addi.d	$a6, $a6, 3
	sltu	$a6, $fp, $a6
	sltu	$s3, $s1, $s6
	and	$a6, $a6, $s3
	bnez	$a6, .LBB7_11
# %bb.21:                               # %vector.ph
                                        #   in Loop: Header=BB7_4 Depth=1
	bstrpick.d	$s3, $s0, 31, 0
	bstrpick.d	$a6, $s3, 31, 5
	slli.d	$s7, $a6, 5
	slli.d	$a6, $a6, 6
	add.d	$fp, $fp, $a6
	sub.d	$s0, $s0, $s7
	add.d	$a6, $t8, $a6
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	add.d	$s5, $s1, $s7
	add.d	$s6, $s2, $s7
	xvinsgr2vr.w	$xr19, $ra, 7
	xvinsgr2vr.w	$xr18, $s4, 7
	move	$s8, $s7
	.p2align	4, , 16
.LBB7_22:                               # %vector.body
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $t8, 2
	xvld	$xr9, $a7, %pc_lo12(.LCPI7_0)
	xvreplgr2vr.d	$xr8, $t8
	xvld	$xr11, $t0, %pc_lo12(.LCPI7_1)
	xvld	$xr12, $t1, %pc_lo12(.LCPI7_2)
	xvld	$xr13, $t2, %pc_lo12(.LCPI7_3)
	xvadd.d	$xr1, $xr8, $xr9
	xvadd.d	$xr2, $xr8, $xr11
	xvadd.d	$xr3, $xr8, $xr12
	xvadd.d	$xr4, $xr8, $xr13
	xvld	$xr14, $t3, %pc_lo12(.LCPI7_4)
	xvld	$xr15, $t4, %pc_lo12(.LCPI7_5)
	xvld	$xr16, $t5, %pc_lo12(.LCPI7_6)
	xvld	$xr17, $t6, %pc_lo12(.LCPI7_7)
	xvadd.d	$xr5, $xr8, $xr14
	xvadd.d	$xr6, $xr8, $xr15
	xvadd.d	$xr7, $xr8, $xr16
	xvadd.d	$xr8, $xr8, $xr17
	xvreplgr2vr.d	$xr20, $a6
	xvadd.d	$xr10, $xr20, $xr9
	xvadd.d	$xr11, $xr20, $xr11
	xvadd.d	$xr12, $xr20, $xr12
	xvadd.d	$xr13, $xr20, $xr13
	xvadd.d	$xr14, $xr20, $xr14
	xvld	$xr9, $s2, 0
	xvadd.d	$xr15, $xr20, $xr15
	xvadd.d	$xr16, $xr20, $xr16
	xvadd.d	$xr17, $xr20, $xr17
	xvpermi.q	$xr20, $xr9, 1
	vpickve2gr.b	$a6, $vr20, 4
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 0
	vpickve2gr.b	$a6, $vr20, 5
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 1
	vpickve2gr.b	$a6, $vr20, 6
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 2
	vpickve2gr.b	$a6, $vr20, 7
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 3
	vpickve2gr.b	$a6, $vr20, 0
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr21, $a6, 0
	vpickve2gr.b	$a6, $vr20, 1
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr21, $a6, 1
	vpickve2gr.b	$a6, $vr20, 2
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr21, $a6, 2
	vpickve2gr.b	$a6, $vr20, 3
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr21, $a6, 3
	xvpermi.q	$xr21, $xr22, 2
	vpickve2gr.b	$a6, $vr20, 12
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 0
	vpickve2gr.b	$a6, $vr20, 13
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 1
	vpickve2gr.b	$a6, $vr20, 14
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 2
	vpickve2gr.b	$a6, $vr20, 15
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 3
	vpickve2gr.b	$a6, $vr20, 8
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 0
	vpickve2gr.b	$a6, $vr20, 9
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 1
	vpickve2gr.b	$a6, $vr20, 10
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 2
	vpickve2gr.b	$a6, $vr20, 11
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr22, $a6, 3
	xvpermi.q	$xr22, $xr23, 2
	vpickve2gr.b	$a6, $vr9, 12
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 0
	vpickve2gr.b	$a6, $vr9, 13
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 1
	vpickve2gr.b	$a6, $vr9, 14
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 2
	vpickve2gr.b	$a6, $vr9, 15
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 3
	vpickve2gr.b	$a6, $vr9, 8
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 0
	vpickve2gr.b	$a6, $vr9, 9
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 1
	vpickve2gr.b	$a6, $vr9, 10
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 2
	vpickve2gr.b	$a6, $vr9, 11
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr23, $a6, 3
	xvpermi.q	$xr23, $xr20, 2
	vpickve2gr.b	$a6, $vr9, 4
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 0
	vpickve2gr.b	$a6, $vr9, 5
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 1
	vpickve2gr.b	$a6, $vr9, 6
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 2
	vpickve2gr.b	$a6, $vr9, 7
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 3
	vpickve2gr.b	$a6, $vr9, 0
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr25, $a6, 0
	vpickve2gr.b	$a6, $vr9, 1
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr25, $a6, 1
	vpickve2gr.b	$a6, $vr9, 2
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr25, $a6, 2
	vpickve2gr.b	$a6, $vr9, 3
	xvld	$xr26, $s1, 0
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr25, $a6, 3
	xvpermi.q	$xr25, $xr20, 2
	xvpermi.q	$xr20, $xr26, 1
	vpickve2gr.b	$a6, $vr20, 4
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 0
	vpickve2gr.b	$a6, $vr20, 5
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 1
	vpickve2gr.b	$a6, $vr20, 6
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 2
	vpickve2gr.b	$a6, $vr20, 7
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 3
	vpickve2gr.b	$a6, $vr20, 0
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr9, $a6, 0
	vpickve2gr.b	$a6, $vr20, 1
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr9, $a6, 1
	vpickve2gr.b	$a6, $vr20, 2
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr9, $a6, 2
	vpickve2gr.b	$a6, $vr20, 3
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr9, $a6, 3
	xvpermi.q	$xr9, $xr24, 2
	vpickve2gr.b	$a6, $vr20, 12
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 0
	vpickve2gr.b	$a6, $vr20, 13
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 1
	vpickve2gr.b	$a6, $vr20, 14
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 2
	vpickve2gr.b	$a6, $vr20, 15
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 3
	vpickve2gr.b	$a6, $vr20, 8
	andi	$ra, $a6, 255
	xvpickve2gr.w	$s4, $xr18, 7
	xvpermi.d	$xr27, $xr18, 78
	vinsgr2vr.w	$vr18, $ra, 0
	vpickve2gr.b	$a6, $vr20, 9
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr18, $a6, 1
	vpickve2gr.b	$a6, $vr20, 10
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr18, $a6, 2
	vpickve2gr.b	$a6, $vr20, 11
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr18, $a6, 3
	xvpermi.q	$xr18, $xr24, 2
	vpickve2gr.b	$a6, $vr26, 12
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 0
	vpickve2gr.b	$a6, $vr26, 13
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 1
	vpickve2gr.b	$a6, $vr26, 14
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 2
	vpickve2gr.b	$a6, $vr26, 15
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 3
	vpickve2gr.b	$a6, $vr26, 8
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 0
	vpickve2gr.b	$a6, $vr26, 9
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 1
	vpickve2gr.b	$a6, $vr26, 10
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 2
	vpickve2gr.b	$a6, $vr26, 11
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr20, $a6, 3
	xvpermi.q	$xr20, $xr24, 2
	vpickve2gr.b	$a6, $vr26, 4
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr28, $a6, 0
	vpickve2gr.b	$a6, $vr26, 5
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr28, $a6, 1
	vpickve2gr.b	$a6, $vr26, 6
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr28, $a6, 2
	vpickve2gr.b	$a6, $vr26, 7
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr28, $a6, 3
	vpickve2gr.b	$a6, $vr26, 0
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 0
	vpickve2gr.b	$a6, $vr26, 1
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 1
	vpickve2gr.b	$a6, $vr26, 2
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 2
	vpickve2gr.b	$a6, $vr26, 3
	andi	$a6, $a6, 255
	vinsgr2vr.w	$vr24, $a6, 3
	xvpermi.q	$xr24, $xr28, 2
	xvmadd.w	$xr18, $xr22, $xr0
	xvmadd.w	$xr9, $xr21, $xr0
	xvmadd.w	$xr24, $xr25, $xr0
	xvmadd.w	$xr20, $xr23, $xr0
	xvpickve2gr.w	$a6, $xr9, 0
	xvpickve2gr.w	$ra, $xr20, 7
	vinsgr2vr.w	$vr21, $ra, 0
	vinsgr2vr.w	$vr21, $a6, 1
	xvpickve2gr.w	$a6, $xr9, 1
	vinsgr2vr.w	$vr21, $a6, 2
	xvpickve2gr.w	$a6, $xr9, 2
	vinsgr2vr.w	$vr21, $a6, 3
	xvpickve2gr.w	$a6, $xr9, 3
	vinsgr2vr.w	$vr22, $a6, 0
	xvpickve2gr.w	$a6, $xr9, 4
	vinsgr2vr.w	$vr22, $a6, 1
	xvpickve2gr.w	$a6, $xr9, 5
	vinsgr2vr.w	$vr22, $a6, 2
	xvpickve2gr.w	$a6, $xr9, 6
	vinsgr2vr.w	$vr22, $a6, 3
	xvpermi.q	$xr21, $xr22, 2
	xvpickve2gr.w	$a6, $xr18, 3
	vinsgr2vr.w	$vr22, $a6, 0
	xvpickve2gr.w	$a6, $xr18, 4
	vinsgr2vr.w	$vr22, $a6, 1
	xvpickve2gr.w	$a6, $xr18, 5
	vinsgr2vr.w	$vr22, $a6, 2
	xvpickve2gr.w	$ra, $xr18, 6
	vinsgr2vr.w	$vr22, $ra, 3
	xvpickve2gr.w	$a6, $xr9, 7
	xvpermi.d	$xr25, $xr19, 78
	vinsgr2vr.w	$vr19, $a6, 0
	xvpickve2gr.w	$a6, $xr18, 0
	vinsgr2vr.w	$vr19, $a6, 1
	xvpickve2gr.w	$a6, $xr18, 1
	vinsgr2vr.w	$vr19, $a6, 2
	xvpickve2gr.w	$a6, $xr18, 2
	vinsgr2vr.w	$vr19, $a6, 3
	xvpermi.q	$xr19, $xr22, 2
	xvpickve2gr.w	$a6, $xr24, 0
	vinsgr2vr.w	$vr23, $s4, 0
	vinsgr2vr.w	$vr23, $a6, 1
	xvpickve2gr.w	$a6, $xr24, 1
	vinsgr2vr.w	$vr23, $a6, 2
	xvpickve2gr.w	$a6, $xr24, 2
	vinsgr2vr.w	$vr23, $a6, 3
	xvpickve2gr.w	$a6, $xr24, 3
	vinsgr2vr.w	$vr22, $a6, 0
	xvpickve2gr.w	$a6, $xr24, 4
	vinsgr2vr.w	$vr22, $a6, 1
	xvpickve2gr.w	$a6, $xr24, 5
	vinsgr2vr.w	$vr22, $a6, 2
	xvpickve2gr.w	$a6, $xr24, 6
	vinsgr2vr.w	$vr22, $a6, 3
	xvpermi.q	$xr23, $xr22, 2
	xvpickve2gr.w	$a6, $xr20, 3
	vinsgr2vr.w	$vr26, $a6, 0
	xvpickve2gr.w	$a6, $xr20, 4
	vinsgr2vr.w	$vr26, $a6, 1
	xvpickve2gr.w	$a6, $xr20, 5
	vinsgr2vr.w	$vr26, $a6, 2
	xvpickve2gr.w	$a6, $xr20, 6
	vinsgr2vr.w	$vr26, $a6, 3
	xvpickve2gr.w	$a6, $xr24, 7
	vinsgr2vr.w	$vr22, $a6, 0
	xvpickve2gr.w	$a6, $xr20, 0
	vinsgr2vr.w	$vr22, $a6, 1
	xvpickve2gr.w	$a6, $xr20, 1
	vinsgr2vr.w	$vr22, $a6, 2
	xvpickve2gr.w	$a6, $xr20, 2
	vinsgr2vr.w	$vr22, $a6, 3
	xvpermi.q	$xr22, $xr26, 2
	xvpickve2gr.d	$a6, $xr18, 1
	vinsgr2vr.d	$vr26, $a6, 0
	xvpickve2gr.d	$a6, $xr18, 2
	vinsgr2vr.d	$vr26, $a6, 1
	xvpickve2gr.d	$a6, $xr9, 3
	vinsgr2vr.d	$vr28, $a6, 0
	xvpickve2gr.d	$a6, $xr18, 0
	vinsgr2vr.d	$vr28, $a6, 1
	xvpermi.q	$xr28, $xr26, 2
	xvpickve2gr.d	$a6, $xr20, 1
	vinsgr2vr.d	$vr26, $a6, 0
	xvpickve2gr.d	$a6, $xr20, 2
	vinsgr2vr.d	$vr26, $a6, 1
	xvpickve2gr.d	$a6, $xr24, 3
	vinsgr2vr.d	$vr29, $a6, 0
	xvpickve2gr.d	$a6, $xr20, 0
	vinsgr2vr.d	$vr29, $a6, 1
	xvpermi.q	$xr29, $xr26, 2
	xvpickve2gr.d	$a6, $xr9, 1
	vinsgr2vr.d	$vr26, $a6, 0
	xvpickve2gr.d	$a6, $xr9, 2
	vinsgr2vr.d	$vr26, $a6, 1
	xvpickve2gr.d	$a6, $xr9, 0
	xvpickve2gr.d	$s4, $xr20, 3
	vinsgr2vr.d	$vr30, $s4, 0
	vinsgr2vr.d	$vr30, $a6, 1
	xvpermi.q	$xr30, $xr26, 2
	xvpickve2gr.d	$a6, $xr24, 1
	vinsgr2vr.d	$vr26, $a6, 0
	xvld	$xr31, $t7, %pc_lo12(.LCPI7_8)
	xvpickve2gr.d	$a6, $xr24, 2
	vinsgr2vr.d	$vr26, $a6, 1
	xvpickve2gr.d	$a6, $xr24, 0
	xvshuf.w	$xr31, $xr27, $xr25
	xvpickve2gr.d	$s4, $xr31, 0
	vinsgr2vr.d	$vr25, $s4, 0
	vinsgr2vr.d	$vr25, $a6, 1
	xvpermi.q	$xr25, $xr26, 2
	xvmadd.w	$xr28, $xr19, $xr0
	xvmadd.w	$xr30, $xr21, $xr0
	xvmadd.w	$xr29, $xr22, $xr0
	xvmadd.w	$xr25, $xr23, $xr0
	xvaddi.wu	$xr26, $xr28, 8
	xvaddi.wu	$xr28, $xr29, 8
	xvaddi.wu	$xr29, $xr30, 8
	xvaddi.wu	$xr27, $xr25, 8
	xvpickve2gr.w	$a6, $xr26, 0
	vinsgr2vr.h	$vr25, $a6, 0
	xvpickve2gr.w	$a6, $xr26, 1
	vinsgr2vr.h	$vr25, $a6, 1
	xvpickve2gr.w	$a6, $xr26, 2
	vinsgr2vr.h	$vr25, $a6, 2
	xvpickve2gr.w	$a6, $xr26, 3
	vinsgr2vr.h	$vr25, $a6, 3
	xvpickve2gr.w	$a6, $xr26, 4
	vinsgr2vr.h	$vr25, $a6, 4
	xvpickve2gr.w	$a6, $xr26, 5
	vinsgr2vr.h	$vr25, $a6, 5
	xvpickve2gr.w	$a6, $xr26, 6
	vinsgr2vr.h	$vr25, $a6, 6
	xvpickve2gr.w	$a6, $xr26, 7
	vinsgr2vr.h	$vr25, $a6, 7
	vsrli.h	$vr25, $vr25, 4
	xvpickve2gr.w	$a6, $xr29, 0
	vinsgr2vr.h	$vr26, $a6, 0
	xvpickve2gr.w	$a6, $xr29, 1
	vinsgr2vr.h	$vr26, $a6, 1
	xvpickve2gr.w	$a6, $xr29, 2
	vinsgr2vr.h	$vr26, $a6, 2
	xvpickve2gr.w	$a6, $xr29, 3
	vinsgr2vr.h	$vr26, $a6, 3
	xvpickve2gr.w	$a6, $xr29, 4
	vinsgr2vr.h	$vr26, $a6, 4
	xvpickve2gr.w	$a6, $xr29, 5
	vinsgr2vr.h	$vr26, $a6, 5
	xvpickve2gr.w	$a6, $xr29, 6
	vinsgr2vr.h	$vr26, $a6, 6
	xvpickve2gr.w	$a6, $xr29, 7
	vinsgr2vr.h	$vr26, $a6, 7
	vsrli.h	$vr26, $vr26, 4
	xvpickve2gr.w	$a6, $xr28, 0
	vinsgr2vr.h	$vr29, $a6, 0
	xvpickve2gr.w	$a6, $xr28, 1
	vinsgr2vr.h	$vr29, $a6, 1
	xvpickve2gr.w	$a6, $xr28, 2
	vinsgr2vr.h	$vr29, $a6, 2
	xvpickve2gr.w	$a6, $xr28, 3
	vinsgr2vr.h	$vr29, $a6, 3
	xvpickve2gr.w	$a6, $xr28, 4
	vinsgr2vr.h	$vr29, $a6, 4
	xvpickve2gr.w	$a6, $xr28, 5
	vinsgr2vr.h	$vr29, $a6, 5
	xvpickve2gr.w	$a6, $xr28, 6
	vinsgr2vr.h	$vr29, $a6, 6
	xvpickve2gr.w	$a6, $xr28, 7
	vinsgr2vr.h	$vr29, $a6, 7
	vsrli.h	$vr28, $vr29, 4
	xvpickve2gr.w	$a6, $xr27, 0
	vinsgr2vr.h	$vr29, $a6, 0
	xvpickve2gr.w	$a6, $xr27, 1
	vinsgr2vr.h	$vr29, $a6, 1
	xvpickve2gr.w	$a6, $xr27, 2
	vinsgr2vr.h	$vr29, $a6, 2
	xvpickve2gr.w	$a6, $xr27, 3
	vinsgr2vr.h	$vr29, $a6, 3
	xvpickve2gr.w	$a6, $xr27, 4
	vinsgr2vr.h	$vr29, $a6, 4
	xvpickve2gr.w	$a6, $xr27, 5
	vinsgr2vr.h	$vr29, $a6, 5
	xvpickve2gr.w	$a6, $xr27, 6
	vinsgr2vr.h	$vr29, $a6, 6
	xvpickve2gr.w	$a6, $xr27, 7
	vinsgr2vr.h	$vr29, $a6, 7
	vsrli.h	$vr27, $vr29, 4
	vpickve2gr.h	$a6, $vr27, 0
	xvpickve2gr.d	$s4, $xr17, 0
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr27, 1
	xvpickve2gr.d	$s4, $xr17, 1
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr27, 2
	xvpickve2gr.d	$s4, $xr17, 2
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr27, 3
	xvpickve2gr.d	$s4, $xr17, 3
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr27, 4
	xvpickve2gr.d	$s4, $xr16, 0
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr27, 5
	xvpickve2gr.d	$s4, $xr16, 1
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr27, 6
	xvpickve2gr.d	$s4, $xr16, 2
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr27, 7
	xvpickve2gr.d	$s4, $xr16, 3
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr28, 0
	xvpickve2gr.d	$s4, $xr15, 0
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr28, 1
	xvpickve2gr.d	$s4, $xr15, 1
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr28, 2
	xvpickve2gr.d	$s4, $xr15, 2
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr28, 3
	xvpickve2gr.d	$s4, $xr15, 3
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr28, 4
	xvpickve2gr.d	$s4, $xr14, 0
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr28, 5
	xvpickve2gr.d	$s4, $xr14, 1
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr28, 6
	xvpickve2gr.d	$s4, $xr14, 2
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr28, 7
	xvpickve2gr.d	$s4, $xr14, 3
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr26, 0
	xvpickve2gr.d	$s4, $xr13, 0
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr26, 1
	xvpickve2gr.d	$s4, $xr13, 1
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr26, 2
	xvpickve2gr.d	$s4, $xr13, 2
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr26, 3
	xvpickve2gr.d	$s4, $xr13, 3
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr26, 4
	xvpickve2gr.d	$s4, $xr12, 0
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr26, 5
	xvpickve2gr.d	$s4, $xr12, 1
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr26, 6
	xvpickve2gr.d	$s4, $xr12, 2
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr26, 7
	xvpickve2gr.d	$s4, $xr12, 3
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr25, 0
	xvpickve2gr.d	$s4, $xr11, 0
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr25, 1
	xvpickve2gr.d	$s4, $xr11, 1
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr25, 2
	xvpickve2gr.d	$s4, $xr11, 2
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr25, 3
	xvpickve2gr.d	$s4, $xr11, 3
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr25, 4
	xvpickve2gr.d	$s4, $xr10, 0
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr25, 5
	xvpickve2gr.d	$s4, $xr10, 1
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr25, 6
	xvpickve2gr.d	$s4, $xr10, 2
	st.b	$a6, $s4, 0
	vpickve2gr.h	$a6, $vr25, 7
	xvpickve2gr.d	$s4, $xr10, 3
	st.b	$a6, $s4, 0
	xvpickve2gr.d	$s4, $xr8, 1
	xvmadd.w	$xr24, $xr23, $xr0
	xvaddi.wu	$xr10, $xr24, 7
	xvpickve2gr.w	$a6, $xr10, 0
	vinsgr2vr.h	$vr11, $a6, 0
	xvpickve2gr.w	$a6, $xr10, 1
	vinsgr2vr.h	$vr11, $a6, 1
	xvpickve2gr.w	$a6, $xr10, 2
	vinsgr2vr.h	$vr11, $a6, 2
	xvpickve2gr.w	$a6, $xr10, 3
	vinsgr2vr.h	$vr11, $a6, 3
	xvpickve2gr.w	$a6, $xr10, 4
	vinsgr2vr.h	$vr11, $a6, 4
	xvpickve2gr.w	$a6, $xr10, 5
	vinsgr2vr.h	$vr11, $a6, 5
	xvpickve2gr.w	$a6, $xr10, 6
	vinsgr2vr.h	$vr11, $a6, 6
	xvpickve2gr.w	$a6, $xr10, 7
	vinsgr2vr.h	$vr11, $a6, 7
	vsrli.h	$vr10, $vr11, 4
	vpickve2gr.h	$a6, $vr10, 0
	st.b	$a6, $t8, 3
	vpickve2gr.h	$a6, $vr10, 1
	st.b	$a6, $s4, 3
	xvpickve2gr.d	$a6, $xr8, 2
	vpickve2gr.h	$s4, $vr10, 2
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr8, 3
	vpickve2gr.h	$s4, $vr10, 3
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr7, 0
	vpickve2gr.h	$s4, $vr10, 4
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr7, 1
	vpickve2gr.h	$s4, $vr10, 5
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr7, 2
	vpickve2gr.h	$s4, $vr10, 6
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr7, 3
	vpickve2gr.h	$s4, $vr10, 7
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr6, 0
	xvmadd.w	$xr20, $xr22, $xr0
	xvaddi.wu	$xr7, $xr20, 7
	xvpickve2gr.w	$s4, $xr7, 0
	vinsgr2vr.h	$vr8, $s4, 0
	xvpickve2gr.w	$s4, $xr7, 1
	vinsgr2vr.h	$vr8, $s4, 1
	xvpickve2gr.w	$s4, $xr7, 2
	vinsgr2vr.h	$vr8, $s4, 2
	xvpickve2gr.w	$s4, $xr7, 3
	vinsgr2vr.h	$vr8, $s4, 3
	xvpickve2gr.w	$s4, $xr7, 4
	vinsgr2vr.h	$vr8, $s4, 4
	xvpickve2gr.w	$s4, $xr7, 5
	vinsgr2vr.h	$vr8, $s4, 5
	xvpickve2gr.w	$s4, $xr7, 6
	vinsgr2vr.h	$vr8, $s4, 6
	xvpickve2gr.w	$s4, $xr7, 7
	vinsgr2vr.h	$vr8, $s4, 7
	vsrli.h	$vr7, $vr8, 4
	vpickve2gr.h	$s4, $vr7, 0
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr6, 1
	vpickve2gr.h	$s4, $vr7, 1
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr6, 2
	vpickve2gr.h	$s4, $vr7, 2
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr6, 3
	vpickve2gr.h	$s4, $vr7, 3
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr5, 0
	vpickve2gr.h	$s4, $vr7, 4
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr5, 1
	vpickve2gr.h	$s4, $vr7, 5
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr5, 2
	vpickve2gr.h	$s4, $vr7, 6
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr5, 3
	vpickve2gr.h	$s4, $vr7, 7
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr4, 0
	xvmadd.w	$xr9, $xr21, $xr0
	xvaddi.wu	$xr5, $xr9, 7
	xvpickve2gr.w	$s4, $xr5, 0
	vinsgr2vr.h	$vr6, $s4, 0
	xvpickve2gr.w	$s4, $xr5, 1
	vinsgr2vr.h	$vr6, $s4, 1
	xvpickve2gr.w	$s4, $xr5, 2
	vinsgr2vr.h	$vr6, $s4, 2
	xvpickve2gr.w	$s4, $xr5, 3
	vinsgr2vr.h	$vr6, $s4, 3
	xvpickve2gr.w	$s4, $xr5, 4
	vinsgr2vr.h	$vr6, $s4, 4
	xvpickve2gr.w	$s4, $xr5, 5
	vinsgr2vr.h	$vr6, $s4, 5
	xvpickve2gr.w	$s4, $xr5, 6
	vinsgr2vr.h	$vr6, $s4, 6
	xvpickve2gr.w	$s4, $xr5, 7
	vinsgr2vr.h	$vr6, $s4, 7
	vsrli.h	$vr5, $vr6, 4
	vpickve2gr.h	$s4, $vr5, 0
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr4, 1
	vpickve2gr.h	$s4, $vr5, 1
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr4, 2
	vpickve2gr.h	$s4, $vr5, 2
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr4, 3
	vpickve2gr.h	$s4, $vr5, 3
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 0
	vpickve2gr.h	$s4, $vr5, 4
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 1
	vpickve2gr.h	$s4, $vr5, 5
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 2
	vpickve2gr.h	$s4, $vr5, 6
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 3
	vpickve2gr.h	$s4, $vr5, 7
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr2, 0
	xvori.b	$xr3, $xr18, 0
	xvmadd.w	$xr3, $xr19, $xr0
	xvaddi.wu	$xr3, $xr3, 7
	xvpickve2gr.w	$s4, $xr3, 0
	vinsgr2vr.h	$vr4, $s4, 0
	xvpickve2gr.w	$s4, $xr3, 1
	vinsgr2vr.h	$vr4, $s4, 1
	xvpickve2gr.w	$s4, $xr3, 2
	vinsgr2vr.h	$vr4, $s4, 2
	xvpickve2gr.w	$s4, $xr3, 3
	vinsgr2vr.h	$vr4, $s4, 3
	xvpickve2gr.w	$s4, $xr3, 4
	vinsgr2vr.h	$vr4, $s4, 4
	xvpickve2gr.w	$s4, $xr3, 5
	vinsgr2vr.h	$vr4, $s4, 5
	xvpickve2gr.w	$s4, $xr3, 6
	vinsgr2vr.h	$vr4, $s4, 6
	xvpickve2gr.w	$s4, $xr3, 7
	vinsgr2vr.h	$vr4, $s4, 7
	vsrli.h	$vr3, $vr4, 4
	vpickve2gr.h	$s4, $vr3, 0
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr2, 1
	vpickve2gr.h	$s4, $vr3, 1
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr2, 2
	vpickve2gr.h	$s4, $vr3, 2
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr2, 3
	vpickve2gr.h	$s4, $vr3, 3
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr1, 0
	vpickve2gr.h	$s4, $vr3, 4
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr1, 1
	vpickve2gr.h	$s4, $vr3, 5
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr1, 2
	vpickve2gr.h	$s4, $vr3, 6
	st.b	$s4, $a6, 3
	xvpickve2gr.d	$a6, $xr1, 3
	vpickve2gr.h	$s4, $vr3, 7
	st.b	$s4, $a6, 3
	addi.d	$t8, $t8, 64
	addi.d	$s8, $s8, -32
	addi.d	$s2, $s2, 32
	addi.d	$s1, $s1, 32
	bnez	$s8, .LBB7_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB7_4 Depth=1
	xvpickve2gr.w	$s4, $xr18, 7
	beq	$s7, $s3, .LBB7_2
# %bb.24:                               #   in Loop: Header=BB7_4 Depth=1
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	move	$s1, $s5
	move	$s2, $s6
	b	.LBB7_11
.LBB7_25:
	fld.d	$fs7, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
.LBB7_26:                               # %._crit_edge68
	ret
.Lfunc_end7:
	.size	h2v2_fancy_upsample, .Lfunc_end7-h2v2_fancy_upsample
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function h2v2_upsample
.LCPI8_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	15                              # 0xf
	.text
	.p2align	5
	.type	h2v2_upsample,@function
h2v2_upsample:                          # @h2v2_upsample
# %bb.0:
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
	move	$fp, $a0
	ld.w	$a0, $a0, 392
	blez	$a0, .LBB8_21
# %bb.1:                                # %.lr.ph30
	move	$s0, $a2
	move	$s3, $zero
	move	$s1, $zero
	move	$s4, $zero
	ld.d	$s2, $a3, 0
	ori	$s5, $zero, 30
	addi.w	$s6, $zero, -2
	ori	$s7, $zero, 62
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	move	$a5, $zero
.LBB8_3:                                # %._crit_edge
                                        #   in Loop: Header=BB8_4 Depth=1
	ori	$a3, $s4, 1
	ori	$a4, $zero, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(jcopy_sample_rows)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 392
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 2
	addi.w	$a1, $s1, 0
	addi.w	$s4, $s4, 2
	bge	$a1, $a0, .LBB8_21
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_17 Depth 2
                                        #     Child Loop BB8_14 Depth 2
                                        #     Child Loop BB8_9 Depth 2
	ld.wu	$a0, $fp, 128
	beqz	$a0, .LBB8_2
# %bb.5:                                # %iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	slli.d	$a1, $s1, 3
	ldx.d	$a1, $s2, $a1
	add.d	$a0, $a1, $a0
	slli.d	$a2, $s3, 3
	ldx.d	$a3, $s0, $a2
	addi.d	$a2, $a1, 2
	sltu	$a4, $a2, $a0
	maskeqz	$a5, $a0, $a4
	masknez	$a4, $a2, $a4
	or	$a5, $a5, $a4
	nor	$a4, $a1, $zero
	add.d	$a4, $a5, $a4
	bltu	$a4, $s5, .LBB8_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	srli.d	$a6, $a4, 1
	add.d	$a7, $a3, $a6
	addi.d	$a7, $a7, 1
	bgeu	$a1, $a7, .LBB8_11
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	sub.d	$a5, $a1, $a5
	andn	$a5, $s6, $a5
	add.d	$a2, $a2, $a5
	bgeu	$a3, $a2, .LBB8_11
.LBB8_8:                                #   in Loop: Header=BB8_4 Depth=1
	move	$a5, $a3
	move	$a6, $a1
	.p2align	4, , 16
.LBB8_9:                                # %.lr.ph
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $a5, 0
	addi.d	$a5, $a5, 1
	st.b	$a1, $a6, 0
	addi.d	$a2, $a6, 2
	st.b	$a1, $a6, 1
	move	$a6, $a2
	bltu	$a2, $a0, .LBB8_9
.LBB8_10:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.w	$a5, $fp, 128
	b	.LBB8_3
.LBB8_11:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$a2, $a6, 1
	bgeu	$a4, $s7, .LBB8_16
# %bb.12:                               #   in Loop: Header=BB8_4 Depth=1
	move	$a4, $zero
.LBB8_13:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a7, $a2
	bstrins.d	$a7, $zero, 3, 0
	add.d	$a5, $a3, $a7
	alsl.d	$a6, $a7, $a1, 1
	add.d	$a3, $a3, $a4
	sub.d	$t0, $a4, $a7
	alsl.d	$a1, $a4, $a1, 1
	addi.d	$a1, $a1, 15
	.p2align	4, , 16
.LBB8_14:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	pcalau12i	$a4, %pc_hi20(.LCPI8_0)
	xvld	$xr1, $a4, %pc_lo12(.LCPI8_0)
	xvpermi.d	$xr0, $xr0, 68
	xvshuf.b	$xr0, $xr0, $xr0, $xr1
	xvst	$xr0, $a1, -15
	addi.d	$a3, $a3, 16
	addi.d	$t0, $t0, 16
	addi.d	$a1, $a1, 32
	bnez	$t0, .LBB8_14
# %bb.15:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	bne	$a2, $a7, .LBB8_9
	b	.LBB8_10
.LBB8_16:                               # %vector.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a4, $a2
	bstrins.d	$a4, $zero, 4, 0
	addi.d	$a5, $a1, 31
	move	$a6, $a4
	move	$a7, $a3
	.p2align	4, , 16
.LBB8_17:                               # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a7, 0
	xvstelm.b	$xr0, $a5, -31, 0
	xvstelm.b	$xr0, $a5, -29, 1
	xvstelm.b	$xr0, $a5, -27, 2
	xvstelm.b	$xr0, $a5, -25, 3
	xvstelm.b	$xr0, $a5, -23, 4
	xvstelm.b	$xr0, $a5, -21, 5
	xvstelm.b	$xr0, $a5, -19, 6
	xvstelm.b	$xr0, $a5, -17, 7
	xvstelm.b	$xr0, $a5, -15, 8
	xvstelm.b	$xr0, $a5, -13, 9
	xvstelm.b	$xr0, $a5, -11, 10
	xvstelm.b	$xr0, $a5, -9, 11
	xvstelm.b	$xr0, $a5, -7, 12
	xvstelm.b	$xr0, $a5, -5, 13
	xvstelm.b	$xr0, $a5, -3, 14
	xvstelm.b	$xr0, $a5, -1, 15
	xvstelm.b	$xr0, $a5, 1, 16
	xvstelm.b	$xr0, $a5, 3, 17
	xvstelm.b	$xr0, $a5, 5, 18
	xvstelm.b	$xr0, $a5, 7, 19
	xvstelm.b	$xr0, $a5, 9, 20
	xvstelm.b	$xr0, $a5, 11, 21
	xvstelm.b	$xr0, $a5, 13, 22
	xvstelm.b	$xr0, $a5, 15, 23
	xvstelm.b	$xr0, $a5, 17, 24
	xvstelm.b	$xr0, $a5, 19, 25
	xvstelm.b	$xr0, $a5, 21, 26
	xvstelm.b	$xr0, $a5, 23, 27
	xvstelm.b	$xr0, $a5, 25, 28
	xvstelm.b	$xr0, $a5, 27, 29
	xvstelm.b	$xr0, $a5, 29, 30
	xvstelm.b	$xr0, $a5, 31, 31
	xvstelm.b	$xr0, $a5, -30, 0
	xvstelm.b	$xr0, $a5, -28, 1
	xvstelm.b	$xr0, $a5, -26, 2
	xvstelm.b	$xr0, $a5, -24, 3
	xvstelm.b	$xr0, $a5, -22, 4
	xvstelm.b	$xr0, $a5, -20, 5
	xvstelm.b	$xr0, $a5, -18, 6
	xvstelm.b	$xr0, $a5, -16, 7
	xvstelm.b	$xr0, $a5, -14, 8
	xvstelm.b	$xr0, $a5, -12, 9
	xvstelm.b	$xr0, $a5, -10, 10
	xvstelm.b	$xr0, $a5, -8, 11
	xvstelm.b	$xr0, $a5, -6, 12
	xvstelm.b	$xr0, $a5, -4, 13
	xvstelm.b	$xr0, $a5, -2, 14
	xvstelm.b	$xr0, $a5, 0, 15
	xvstelm.b	$xr0, $a5, 2, 16
	xvstelm.b	$xr0, $a5, 4, 17
	xvstelm.b	$xr0, $a5, 6, 18
	xvstelm.b	$xr0, $a5, 8, 19
	xvstelm.b	$xr0, $a5, 10, 20
	xvstelm.b	$xr0, $a5, 12, 21
	xvstelm.b	$xr0, $a5, 14, 22
	xvstelm.b	$xr0, $a5, 16, 23
	xvstelm.b	$xr0, $a5, 18, 24
	xvstelm.b	$xr0, $a5, 20, 25
	xvstelm.b	$xr0, $a5, 22, 26
	xvstelm.b	$xr0, $a5, 24, 27
	xvstelm.b	$xr0, $a5, 26, 28
	xvstelm.b	$xr0, $a5, 28, 29
	xvstelm.b	$xr0, $a5, 30, 30
	xvstelm.b	$xr0, $a5, 32, 31
	addi.d	$a7, $a7, 32
	addi.d	$a6, $a6, -32
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB8_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	beq	$a2, $a4, .LBB8_10
# %bb.19:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	andi	$a5, $a2, 16
	bnez	$a5, .LBB8_13
# %bb.20:                               #   in Loop: Header=BB8_4 Depth=1
	add.d	$a5, $a3, $a4
	alsl.d	$a6, $a4, $a1, 1
	b	.LBB8_9
.LBB8_21:                               # %._crit_edge31
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
.Lfunc_end8:
	.size	h2v2_upsample, .Lfunc_end8-h2v2_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function int_upsample
	.type	int_upsample,@function
int_upsample:                           # @int_upsample
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 392
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	blez	$a0, .LBB9_16
# %bb.1:                                # %.lr.ph
	ld.d	$a2, $fp, 592
	ld.w	$a1, $a1, 4
	add.d	$a1, $a2, $a1
	ld.b	$a2, $a1, 232
	ld.b	$a1, $a1, 242
	ld.d	$a3, $a3, 0
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	andi	$s3, $a2, 255
	andi	$s6, $a1, 255
	addi.d	$a1, $s6, -1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$s3, .LBB9_9
# %bb.2:                                # %.lr.ph.split.us.preheader
	move	$s7, $zero
	move	$s4, $zero
	move	$s8, $zero
	addi.d	$a0, $s3, -1
	bstrpick.d	$s1, $a0, 31, 0
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_3:                                #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a0, $fp, 392
	addi.d	$s7, $s7, 1
	add.d	$s4, $s4, $s6
	addi.w	$a1, $s4, 0
	add.d	$s8, $s8, $s6
	bge	$a1, $a0, .LBB9_16
.LBB9_4:                                # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	ld.wu	$a0, $fp, 128
	beqz	$a0, .LBB9_7
# %bb.5:                                # %.lr.ph.us.us.preheader
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a1, $s4, 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$s5, $a2, $a1
	slli.d	$a1, $s7, 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$s2, $a2, $a1
	add.d	$s0, $s5, $a0
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph.us.us
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $s2, 0
	move	$a0, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s5, $s1
	addi.d	$s5, $a0, 1
	addi.d	$s2, $s2, 1
	bltu	$s5, $s0, .LBB9_6
.LBB9_7:                                # %._crit_edge.split.us.us
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 2
	bltu	$s6, $a0, .LBB9_3
# %bb.8:                                #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a5, $fp, 128
	addi.w	$a3, $s8, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $a0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(jcopy_sample_rows)
	jirl	$ra, $ra, 0
	b	.LBB9_3
.LBB9_9:                                # %.lr.ph.split
	ori	$a1, $zero, 2
	bltu	$s6, $a1, .LBB9_13
# %bb.10:                               # %.lr.ph.split.split.us.preheader
	move	$s2, $zero
	.p2align	4, , 16
.LBB9_11:                               # %.lr.ph.split.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 128
	bnez	$a0, .LBB9_17
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=1
	addi.w	$a3, $s2, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $a0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	move	$a5, $zero
	pcaddu18i	$ra, %call36(jcopy_sample_rows)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 392
	add.w	$s2, $s2, $s6
	blt	$s2, $a0, .LBB9_11
	b	.LBB9_16
.LBB9_13:                               # %.lr.ph.split.split
	ld.w	$a1, $fp, 128
	move	$a2, $zero
	.p2align	4, , 16
.LBB9_14:                               # =>This Inner Loop Header: Depth=1
	bnez	$a1, .LBB9_17
# %bb.15:                               #   in Loop: Header=BB9_14 Depth=1
	add.w	$a2, $a2, $s6
	blt	$a2, $a0, .LBB9_14
.LBB9_16:                               # %._crit_edge44
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
	.p2align	4, , 16
.LBB9_17:                               # %.loopexit
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB9_17
.Lfunc_end9:
	.size	int_upsample, .Lfunc_end9-int_upsample
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_upsample
	.addrsig_sym sep_upsample
	.addrsig_sym noop_upsample
	.addrsig_sym fullsize_upsample
	.addrsig_sym h2v1_fancy_upsample
	.addrsig_sym h2v1_upsample
	.addrsig_sym h2v2_fancy_upsample
	.addrsig_sym h2v2_upsample
	.addrsig_sym int_upsample
