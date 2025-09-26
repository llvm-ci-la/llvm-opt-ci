	.file	"shared_sha256.c"
	.text
	.globl	sha256_init                     # -- Begin function sha256_init
	.p2align	5
	.type	sha256_init,@function
sha256_init:                            # @sha256_init
# %bb.0:
	pcalau12i	$a1, %pc_hi20(sha256_init.H0)
	addi.d	$a1, $a1, %pc_lo12(sha256_init.H0)
	vld	$vr0, $a1, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	st.d	$zero, $a0, 32
	st.w	$zero, $a0, 104
	ret
.Lfunc_end0:
	.size	sha256_init, .Lfunc_end0-sha256_init
                                        # -- End function
	.globl	sha256_update                   # -- Begin function sha256_update
	.p2align	5
	.type	sha256_update,@function
sha256_update:                          # @sha256_update
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 104
	move	$s0, $a2
	move	$s1, $a1
	addi.d	$s2, $fp, 40
	beqz	$a0, .LBB1_4
# %bb.1:
	bstrpick.d	$a1, $a0, 31, 0
	ori	$a2, $zero, 64
	sub.w	$s4, $a2, $a0
	add.d	$a0, $s2, $a1
	bgeu	$s0, $s4, .LBB1_3
# %bb.2:
	bstrpick.d	$a2, $s0, 31, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 104
	add.d	$s0, $a0, $s0
	b	.LBB1_8
.LBB1_3:
	bstrpick.d	$s3, $s4, 31, 0
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sha256_block)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s3
	sub.w	$s0, $s0, $s4
.LBB1_4:
	ori	$a0, $zero, 64
	bltu	$s0, $a0, .LBB1_7
# %bb.5:                                # %.lr.ph.preheader
	ori	$s3, $zero, 63
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sha256_block)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -64
	addi.d	$s1, $s1, 64
	bltu	$s3, $s0, .LBB1_6
.LBB1_7:                                # %._crit_edge
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_8:
	st.w	$s0, $fp, 104
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	sha256_update, .Lfunc_end1-sha256_update
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sha256_block
.LCPI2_0:
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_2:
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	10                              # 0xa
	.byte	14                              # 0xe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_3:
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	11                              # 0xb
	.byte	15                              # 0xf
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.p2align	5
	.type	sha256_block,@function
sha256_block:                           # @sha256_block
# %bb.0:
	ld.wu	$a2, $a0, 32
	addi.d	$a2, $a2, 1
	slli.d	$a3, $a2, 31
	st.w	$a2, $a0, 32
	bgez	$a3, .LBB2_2
# %bb.1:
	ld.w	$a2, $a0, 36
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 36
.LBB2_2:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	vld	$vr6, $a1, 0
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_0)
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI2_1)
	vshuf.b	$vr2, $vr0, $vr6, $vr0
	vsllwil.hu.bu	$vr2, $vr2, 0
	vsllwil.wu.hu	$vr3, $vr2, 0
	vshuf.b	$vr2, $vr0, $vr6, $vr1
	vsllwil.hu.bu	$vr2, $vr2, 0
	vsllwil.wu.hu	$vr5, $vr2, 0
	ori	$a2, $zero, 8
	lu32i.d	$a2, 16
	vreplgr2vr.d	$vr2, $a2
	vsll.w	$vr7, $vr3, $vr2
	pcalau12i	$a2, %pc_hi20(.LCPI2_2)
	vld	$vr3, $a2, %pc_lo12(.LCPI2_2)
	ori	$a2, $zero, 16
	lu32i.d	$a2, 8
	vreplgr2vr.d	$vr4, $a2
	vsll.w	$vr5, $vr5, $vr4
	vor.v	$vr7, $vr5, $vr7
	vshuf.b	$vr5, $vr0, $vr6, $vr3
	vsllwil.hu.bu	$vr8, $vr5, 0
	pcalau12i	$a2, %pc_hi20(.LCPI2_3)
	vld	$vr5, $a2, %pc_lo12(.LCPI2_3)
	vsllwil.wu.hu	$vr8, $vr8, 0
	vor.v	$vr7, $vr7, $vr8
	vslli.w	$vr7, $vr7, 8
	vshuf.b	$vr6, $vr0, $vr6, $vr5
	vsllwil.hu.bu	$vr6, $vr6, 0
	vld	$vr8, $a1, 16
	vsllwil.wu.hu	$vr6, $vr6, 0
	vor.v	$vr6, $vr7, $vr6
	vst	$vr6, $sp, 16
	vshuf.b	$vr6, $vr0, $vr8, $vr0
	vsllwil.hu.bu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vshuf.b	$vr7, $vr0, $vr8, $vr1
	vsllwil.hu.bu	$vr7, $vr7, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vsll.w	$vr6, $vr6, $vr2
	vsll.w	$vr7, $vr7, $vr4
	vor.v	$vr6, $vr7, $vr6
	vshuf.b	$vr7, $vr0, $vr8, $vr3
	vsllwil.hu.bu	$vr7, $vr7, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vor.v	$vr6, $vr6, $vr7
	vslli.w	$vr6, $vr6, 8
	vshuf.b	$vr7, $vr0, $vr8, $vr5
	vsllwil.hu.bu	$vr7, $vr7, 0
	vld	$vr8, $a1, 32
	vsllwil.wu.hu	$vr7, $vr7, 0
	vor.v	$vr6, $vr6, $vr7
	vst	$vr6, $sp, 32
	vshuf.b	$vr6, $vr0, $vr8, $vr0
	vsllwil.hu.bu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vshuf.b	$vr7, $vr0, $vr8, $vr1
	vsllwil.hu.bu	$vr7, $vr7, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vsll.w	$vr6, $vr6, $vr2
	vsll.w	$vr7, $vr7, $vr4
	vor.v	$vr6, $vr7, $vr6
	vshuf.b	$vr7, $vr0, $vr8, $vr3
	vsllwil.hu.bu	$vr7, $vr7, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vor.v	$vr6, $vr6, $vr7
	vslli.w	$vr6, $vr6, 8
	vshuf.b	$vr7, $vr0, $vr8, $vr5
	vsllwil.hu.bu	$vr7, $vr7, 0
	vld	$vr8, $a1, 48
	vsllwil.wu.hu	$vr7, $vr7, 0
	vor.v	$vr6, $vr6, $vr7
	vst	$vr6, $sp, 48
	vshuf.b	$vr0, $vr0, $vr8, $vr0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vshuf.b	$vr1, $vr0, $vr8, $vr1
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsll.w	$vr0, $vr0, $vr2
	vsll.w	$vr1, $vr1, $vr4
	vor.v	$vr0, $vr1, $vr0
	vshuf.b	$vr1, $vr0, $vr8, $vr3
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vor.v	$vr0, $vr0, $vr1
	vslli.w	$vr0, $vr0, 8
	vshuf.b	$vr1, $vr0, $vr8, $vr5
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vor.v	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(sha256_transform)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end2:
	.size	sha256_block, .Lfunc_end2-sha256_block
                                        # -- End function
	.globl	sha256_final                    # -- Begin function sha256_final
	.p2align	5
	.type	sha256_final,@function
sha256_final:                           # @sha256_final
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.wu	$a2, $a0, 104
	addi.d	$a1, $a0, 40
	ori	$a3, $zero, 128
	addi.w	$a0, $a2, 1
	andi	$a4, $a0, 3
	stx.b	$a3, $a1, $a2
	beqz	$a4, .LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.w	$a0, $a0, 1
	andi	$a3, $a0, 3
	stx.b	$zero, $a1, $a2
	bnez	$a3, .LBB3_1
.LBB3_2:                                # %._crit_edge
	bstrpick.d	$a1, $a0, 31, 2
	addi.w	$a1, $a1, 0
	beqz	$a0, .LBB3_15
# %bb.3:                                # %.lr.ph44.preheader
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a2, $a3, $a2
	ori	$a3, $zero, 8
	bstrpick.d	$a2, $a2, 31, 0
	bgeu	$a0, $a3, .LBB3_5
# %bb.4:
	move	$a3, $zero
	b	.LBB3_8
.LBB3_5:                                # %vector.ph
	bstrpick.d	$a3, $a2, 29, 1
	slli.d	$a3, $a3, 1
	addi.d	$a4, $fp, 47
	addi.d	$a5, $sp, 20
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a4, -7
	ld.w	$t0, $a4, -3
	revb.2w	$a7, $a7
	revb.2w	$t0, $t0
	st.w	$a7, $a5, -4
	st.w	$t0, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB3_6
# %bb.7:                                # %middle.block
	beq	$a3, $a2, .LBB3_10
.LBB3_8:                                # %.lr.ph44.preheader64
	addi.d	$a4, $sp, 16
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a2, $a2, $a3
	alsl.d	$a3, $a3, $fp, 2
	addi.d	$a3, $a3, 43
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph44
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -3
	revb.2w	$a5, $a5
	st.w	$a5, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB3_9
.LBB3_10:                               # %._crit_edge45
	ori	$a2, $zero, 56
	bgeu	$a2, $a0, .LBB3_14
# %bb.11:
	ori	$a1, $zero, 63
	bltu	$a1, $a0, .LBB3_13
# %bb.12:                               # %.lr.ph49
	st.w	$zero, $sp, 76
.LBB3_13:                               # %.loopexit.loopexit
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sha256_transform)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 64
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 16
	b	.LBB3_16
.LBB3_14:                               # %.preheader
	beq	$a0, $a2, .LBB3_16
.LBB3_15:                               # %.lr.ph47.preheader
	andi	$a0, $a0, 60
	addi.d	$a2, $sp, 16
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 13
	sub.d	$a1, $a2, $a1
	sltu	$a2, $a2, $a1
	masknez	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_16:                               # %.loopexit
	ld.w	$a0, $fp, 32
	ld.w	$a1, $fp, 36
	bstrpick.d	$a2, $a0, 31, 23
	slli.d	$a1, $a1, 9
	ld.w	$a3, $fp, 104
	or	$a1, $a1, $a2
	st.w	$a1, $sp, 72
	slli.d	$a0, $a0, 9
	slli.d	$a1, $a3, 3
	or	$a0, $a1, $a0
	st.w	$a0, $sp, 76
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sha256_transform)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end3:
	.size	sha256_final, .Lfunc_end3-sha256_final
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sha256_transform
.LCPI4_0:
	.word	17                              # 0x11
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI4_1:
	.word	15                              # 0xf
	.word	25                              # 0x19
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI4_2:
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI4_3:
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.p2align	5
	.type	sha256_transform,@function
sha256_transform:                       # @sha256_transform
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	ld.w	$s3, $a0, 0
	ld.w	$s6, $a0, 4
	ld.w	$s8, $a0, 8
	ld.w	$s2, $a0, 12
	ld.w	$s4, $a0, 16
	ld.w	$s5, $a0, 20
	ld.w	$s7, $a0, 24
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$ra, $a0, 28
	ori	$a3, $zero, 1
	pcalau12i	$a0, %pc_hi20(K)
	addi.d	$a0, $a0, %pc_lo12(K)
	move	$a2, $zero
	.p2align	4, , 16
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $a2
	add.d	$a5, $a1, $a2
	rotri.w	$a6, $s4, 6
	rotri.w	$a7, $s4, 11
	xor	$a6, $a6, $a7
	rotri.w	$a7, $s4, 25
	xor	$a6, $a6, $a7
	andn	$a7, $s7, $s4
	and	$t0, $s5, $s4
	or	$a7, $t0, $a7
	ldx.w	$t0, $a0, $a2
	ldx.w	$t1, $a1, $a2
	add.d	$a7, $a7, $ra
	add.d	$a6, $a7, $a6
	add.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	rotri.w	$a7, $s3, 2
	rotri.w	$t0, $s3, 13
	xor	$a7, $a7, $t0
	rotri.w	$t0, $s3, 22
	xor	$a7, $a7, $t0
	and	$t0, $s3, $s6
	xor	$t1, $s3, $s6
	and	$t1, $t1, $s8
	xor	$t0, $t1, $t0
	add.d	$a7, $a7, $t0
	add.d	$t4, $a6, $s2
	add.d	$t0, $a7, $a6
	rotri.w	$a6, $t4, 6
	rotri.w	$a7, $t4, 11
	xor	$a6, $a6, $a7
	rotri.w	$a7, $t4, 25
	xor	$a6, $a6, $a7
	and	$a7, $s4, $t4
	ld.w	$t1, $a4, 4
	ld.w	$t2, $a5, 4
	andn	$t3, $s5, $t4
	or	$a7, $a7, $t3
	add.d	$t1, $t1, $s7
	add.d	$t1, $t1, $t2
	add.d	$a7, $t1, $a7
	add.d	$a6, $a7, $a6
	rotri.w	$a7, $t0, 2
	rotri.w	$t1, $t0, 13
	xor	$a7, $a7, $t1
	rotri.w	$t1, $t0, 22
	xor	$a7, $a7, $t1
	and	$t1, $t0, $s3
	xor	$t2, $t0, $s3
	and	$t2, $t2, $s6
	xor	$t1, $t2, $t1
	add.d	$a7, $a7, $t1
	add.d	$t5, $a6, $s8
	add.d	$t1, $a7, $a6
	rotri.w	$a6, $t5, 6
	rotri.w	$a7, $t5, 11
	xor	$a6, $a6, $a7
	rotri.w	$a7, $t5, 25
	xor	$a6, $a6, $a7
	andn	$a7, $s4, $t5
	ld.w	$t2, $a4, 8
	ld.w	$t3, $a5, 8
	and	$t6, $t4, $t5
	or	$a7, $t6, $a7
	add.d	$t2, $t2, $s5
	add.d	$t2, $t2, $t3
	add.d	$a7, $t2, $a7
	add.d	$a6, $a7, $a6
	rotri.w	$a7, $t1, 2
	rotri.w	$t2, $t1, 13
	xor	$a7, $a7, $t2
	rotri.w	$t2, $t1, 22
	xor	$a7, $a7, $t2
	and	$t2, $t1, $t0
	xor	$t3, $t1, $t0
	and	$t3, $t3, $s3
	xor	$t2, $t3, $t2
	add.d	$a7, $a7, $t2
	add.d	$t3, $a6, $s6
	add.d	$a7, $a7, $a6
	rotri.w	$a6, $t3, 6
	rotri.w	$t2, $t3, 11
	xor	$a6, $a6, $t2
	rotri.w	$t2, $t3, 25
	xor	$a6, $a6, $t2
	andn	$t2, $t4, $t3
	ld.w	$t6, $a4, 12
	ld.w	$t7, $a5, 12
	and	$t8, $t5, $t3
	or	$t2, $t8, $t2
	add.d	$t6, $t6, $s4
	add.d	$t6, $t6, $t7
	add.d	$t2, $t6, $t2
	add.d	$a6, $t2, $a6
	rotri.w	$t2, $a7, 2
	rotri.w	$t6, $a7, 13
	xor	$t2, $t2, $t6
	rotri.w	$t6, $a7, 22
	xor	$t2, $t2, $t6
	and	$t6, $a7, $t1
	xor	$t7, $a7, $t1
	and	$t7, $t7, $t0
	xor	$t6, $t7, $t6
	add.d	$t6, $t2, $t6
	add.d	$t2, $a6, $s3
	add.d	$a6, $t6, $a6
	rotri.w	$t6, $t2, 6
	rotri.w	$t7, $t2, 11
	xor	$t6, $t6, $t7
	rotri.w	$t7, $t2, 25
	xor	$t6, $t6, $t7
	andn	$t7, $t5, $t2
	ld.w	$t8, $a4, 16
	ld.w	$fp, $a5, 16
	and	$s0, $t3, $t2
	or	$t7, $s0, $t7
	add.d	$t4, $t8, $t4
	add.d	$t4, $t4, $fp
	add.d	$t4, $t4, $t7
	add.d	$t4, $t4, $t6
	rotri.w	$t6, $a6, 2
	rotri.w	$t7, $a6, 13
	xor	$t6, $t6, $t7
	rotri.w	$t7, $a6, 22
	xor	$t6, $t6, $t7
	and	$t7, $a6, $a7
	xor	$t8, $a6, $a7
	and	$t8, $t8, $t1
	xor	$t7, $t8, $t7
	add.d	$t6, $t6, $t7
	add.d	$ra, $t4, $t0
	add.d	$s2, $t6, $t4
	rotri.w	$t0, $ra, 6
	rotri.w	$t4, $ra, 11
	xor	$t0, $t0, $t4
	rotri.w	$t4, $ra, 25
	xor	$t0, $t0, $t4
	andn	$t4, $t3, $ra
	ld.w	$t6, $a4, 20
	ld.w	$t7, $a5, 20
	and	$t8, $t2, $ra
	or	$t4, $t8, $t4
	add.d	$t5, $t5, $t6
	add.d	$t5, $t5, $t7
	add.d	$t4, $t5, $t4
	add.d	$t0, $t4, $t0
	rotri.w	$t4, $s2, 2
	rotri.w	$t5, $s2, 13
	xor	$t4, $t4, $t5
	rotri.w	$t5, $s2, 22
	xor	$t4, $t4, $t5
	and	$t5, $s2, $a6
	xor	$t6, $s2, $a6
	and	$t6, $t6, $a7
	xor	$t5, $t6, $t5
	add.d	$t4, $t4, $t5
	add.d	$s7, $t0, $t1
	add.d	$s8, $t4, $t0
	rotri.w	$t0, $s7, 6
	rotri.w	$t1, $s7, 11
	xor	$t0, $t0, $t1
	rotri.w	$t1, $s7, 25
	xor	$t0, $t0, $t1
	ld.w	$t1, $a4, 24
	ld.w	$t4, $a5, 24
	andn	$t5, $t2, $s7
	and	$t6, $ra, $s7
	or	$t5, $t6, $t5
	add.d	$t1, $t4, $t1
	add.d	$t1, $t1, $t3
	add.d	$t1, $t1, $t5
	add.d	$t0, $t1, $t0
	rotri.w	$t1, $s8, 2
	rotri.w	$t3, $s8, 13
	xor	$t1, $t1, $t3
	rotri.w	$t3, $s8, 22
	xor	$t1, $t1, $t3
	and	$t3, $s8, $s2
	xor	$t4, $s8, $s2
	and	$t4, $t4, $a6
	xor	$t3, $t4, $t3
	add.d	$t1, $t1, $t3
	add.d	$s5, $t0, $a7
	add.d	$s6, $t1, $t0
	rotri.w	$a7, $s5, 6
	rotri.w	$t0, $s5, 11
	xor	$a7, $a7, $t0
	rotri.w	$t0, $s5, 25
	xor	$a7, $a7, $t0
	ld.w	$a4, $a4, 28
	ld.w	$a5, $a5, 28
	andn	$t0, $ra, $s5
	and	$t1, $s7, $s5
	or	$t0, $t1, $t0
	add.d	$a4, $a5, $a4
	add.d	$a4, $a4, $t2
	add.d	$a4, $a4, $t0
	add.d	$a4, $a4, $a7
	rotri.w	$a5, $s6, 2
	rotri.w	$a7, $s6, 13
	xor	$a5, $a5, $a7
	rotri.w	$a7, $s6, 22
	xor	$a5, $a5, $a7
	and	$a7, $s6, $s8
	xor	$t0, $s6, $s8
	and	$t0, $t0, $s2
	xor	$a7, $t0, $a7
	add.d	$a5, $a5, $a7
	add.d	$s4, $a4, $a6
	add.d	$s3, $a5, $a4
	andi	$a4, $a3, 1
	addi.d	$a2, $a2, 32
	move	$a3, $zero
	bnez	$a4, .LBB4_1
# %bb.2:                                # %.lr.ph
	ld.w	$s0, $a1, 56
	ld.w	$a3, $a1, 36
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a1, 4
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	ld.w	$t4, $a1, 0
	ld.w	$fp, $a1, 60
	ld.w	$a6, $a1, 40
	ld.w	$t7, $a1, 8
	ld.w	$t0, $a1, 44
	ld.w	$a4, $a1, 12
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	ld.w	$t2, $a1, 48
	ld.w	$a4, $a1, 16
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a4, $a1, 52
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a4, $a1, 20
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a4, $a1, 24
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a4, $a1, 28
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	addi.d	$t6, $a0, 64
	ld.w	$a0, $a1, 32
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a4, $zero, 16
	ori	$a0, $zero, 10
	lu32i.d	$a0, 3
	vreplgr2vr.d	$vr0, $a0
	.p2align	4, , 16
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	rotri.w	$a0, $s4, 6
	rotri.w	$s1, $s4, 11
	xor	$a0, $a0, $s1
	rotri.w	$s1, $s4, 25
	xor	$a0, $a0, $s1
	andn	$s1, $s7, $s4
	and	$t5, $s5, $s4
	or	$t5, $t5, $s1
	rotri.w	$s1, $s0, 17
	rotri.w	$t8, $s0, 19
	xor	$t8, $s1, $t8
	bstrpick.d	$s1, $s0, 31, 10
	xor	$t8, $t8, $s1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	rotri.w	$s1, $t1, 7
	rotri.w	$a4, $t1, 18
	xor	$a4, $s1, $a4
	bstrpick.d	$s1, $t1, 31, 3
	xor	$a4, $a4, $s1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	add.d	$t8, $t8, $a3
	add.d	$a5, $t8, $t4
	ld.w	$t8, $t6, 0
	add.w	$t3, $a5, $a4
	add.d	$a4, $t5, $ra
	add.d	$a0, $a4, $a0
	add.d	$a0, $a0, $t8
	add.d	$a4, $a0, $t3
	rotri.w	$a0, $s3, 2
	rotri.w	$t5, $s3, 13
	xor	$a0, $a0, $t5
	rotri.w	$t5, $s3, 22
	xor	$a0, $a0, $t5
	and	$t5, $s3, $s6
	xor	$t8, $s3, $s6
	and	$t8, $t8, $s8
	xor	$t5, $t8, $t5
	add.d	$t5, $a0, $t5
	add.d	$a0, $a4, $s2
	add.d	$ra, $t5, $a4
	rotri.w	$a4, $a0, 6
	rotri.w	$t5, $a0, 11
	xor	$a4, $a4, $t5
	rotri.w	$t5, $a0, 25
	xor	$a4, $a4, $t5
	andn	$t5, $s5, $a0
	and	$t8, $s4, $a0
	or	$t5, $t8, $t5
	rotri.w	$t8, $fp, 17
	rotri.w	$s1, $fp, 19
	xor	$t8, $t8, $s1
	bstrpick.d	$s1, $fp, 31, 10
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	xor	$t8, $t8, $s1
	rotri.w	$s1, $t7, 7
	rotri.w	$s2, $t7, 18
	xor	$s1, $s1, $s2
	bstrpick.d	$s2, $t7, 31, 3
	xor	$s1, $s1, $s2
	st.w	$t3, $a1, 0
	ld.w	$s2, $t6, 4
	add.d	$t1, $a6, $t1
	add.d	$t1, $t1, $t8
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	move	$a2, $t7
	add.w	$t7, $t1, $s1
	add.d	$t1, $s2, $s7
	add.d	$t1, $t1, $t5
	add.d	$a4, $t1, $a4
	add.d	$a4, $a4, $t7
	rotri.w	$t1, $ra, 2
	rotri.w	$t5, $ra, 13
	xor	$t1, $t1, $t5
	rotri.w	$t5, $ra, 22
	xor	$t1, $t1, $t5
	and	$t5, $ra, $s3
	xor	$t8, $ra, $s3
	and	$t8, $t8, $s6
	xor	$t5, $t8, $t5
	add.d	$t1, $t1, $t5
	add.d	$s8, $a4, $s8
	add.d	$s7, $t1, $a4
	rotri.w	$a4, $s8, 6
	rotri.w	$t1, $s8, 11
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s8, 25
	xor	$a4, $a4, $t1
	and	$t1, $a0, $s8
	andn	$t5, $s4, $s8
	or	$t1, $t1, $t5
	rotri.w	$t5, $t3, 17
	rotri.w	$t8, $t3, 19
	xor	$t5, $t5, $t8
	bstrpick.d	$t8, $t3, 31, 10
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$t8, $t8, 53, 0
	xor	$t5, $t5, $t8
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	rotri.w	$t8, $a5, 7
	rotri.w	$s1, $a5, 18
	xor	$t8, $t8, $s1
	bstrpick.d	$s1, $a5, 31, 3
	xor	$t8, $t8, $s1
	add.d	$t5, $t5, $a2
	st.w	$t7, $a1, 4
	ld.w	$s1, $t6, 8
	add.d	$t5, $t5, $t0
	add.w	$a2, $t5, $t8
	st.w	$a2, $a1, 8
	add.d	$t5, $s1, $s5
	add.d	$t5, $t5, $a2
	add.d	$t1, $t5, $t1
	add.d	$a4, $t1, $a4
	rotri.w	$t1, $s7, 2
	rotri.w	$t5, $s7, 13
	xor	$t1, $t1, $t5
	rotri.w	$t5, $s7, 22
	xor	$t1, $t1, $t5
	and	$t5, $s7, $ra
	xor	$t8, $s7, $ra
	and	$t8, $t8, $s3
	xor	$t5, $t8, $t5
	add.d	$t1, $t1, $t5
	add.d	$s5, $a4, $s6
	add.d	$s2, $t1, $a4
	rotri.w	$a4, $s5, 6
	rotri.w	$t1, $s5, 11
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s5, 25
	xor	$a4, $a4, $t1
	andn	$t1, $a0, $s5
	pcalau12i	$t5, %pc_hi20(.LCPI4_0)
	vld	$vr1, $t5, %pc_lo12(.LCPI4_0)
	and	$t5, $s8, $s5
	or	$t1, $t5, $t1
	vinsgr2vr.w	$vr5, $t7, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr5, $s1, 1
	vsrl.w	$vr6, $vr5, $vr1
	pcalau12i	$t5, %pc_hi20(.LCPI4_1)
	vld	$vr2, $t5, %pc_lo12(.LCPI4_1)
	pcalau12i	$t5, %pc_hi20(.LCPI4_2)
	vld	$vr3, $t5, %pc_lo12(.LCPI4_2)
	pcalau12i	$t5, %pc_hi20(.LCPI4_3)
	vld	$vr4, $t5, %pc_lo12(.LCPI4_3)
	vsll.w	$vr7, $vr5, $vr2
	vor.v	$vr6, $vr7, $vr6
	vsrl.w	$vr7, $vr5, $vr3
	vsll.w	$vr8, $vr5, $vr4
	vor.v	$vr7, $vr8, $vr7
	vxor.v	$vr6, $vr6, $vr7
	vsrl.w	$vr5, $vr5, $vr0
	vxor.v	$vr5, $vr6, $vr5
	add.d	$t4, $t2, $a5
	vpickve2gr.w	$t5, $vr5, 0
	add.d	$t4, $t4, $t5
	ld.w	$t5, $t6, 12
	vpickve2gr.w	$t8, $vr5, 1
	add.w	$a5, $t4, $t8
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.w	$a5, $a1, 12
	add.d	$t5, $t5, $s4
	add.d	$t5, $t5, $a5
	move	$s4, $a5
	add.d	$t1, $t5, $t1
	add.d	$a4, $t1, $a4
	rotri.w	$t1, $s2, 2
	rotri.w	$t5, $s2, 13
	xor	$t1, $t1, $t5
	rotri.w	$t5, $s2, 22
	xor	$t1, $t1, $t5
	and	$t5, $s2, $s7
	xor	$t8, $s2, $s7
	and	$t8, $t8, $ra
	xor	$t5, $t8, $t5
	add.d	$t1, $t1, $t5
	add.d	$s6, $a4, $s3
	add.d	$s3, $t1, $a4
	rotri.w	$a4, $s6, 6
	rotri.w	$t1, $s6, 11
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s6, 25
	xor	$a4, $a4, $t1
	andn	$t1, $s8, $s6
	and	$t5, $s5, $s6
	or	$t1, $t5, $t1
	vinsgr2vr.w	$vr5, $a2, 0
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr5, $a7, 1
	vsrl.w	$vr6, $vr5, $vr1
	vsll.w	$vr7, $vr5, $vr2
	vor.v	$vr6, $vr7, $vr6
	vsrl.w	$vr7, $vr5, $vr3
	vsll.w	$vr8, $vr5, $vr4
	vor.v	$vr7, $vr8, $vr7
	vxor.v	$vr6, $vr6, $vr7
	vsrl.w	$vr5, $vr5, $vr0
	vxor.v	$vr5, $vr6, $vr5
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	add.d	$t5, $a5, $s1
	vpickve2gr.w	$t8, $vr5, 0
	add.d	$t5, $t5, $t8
	ld.w	$t8, $t6, 16
	vpickve2gr.w	$s1, $vr5, 1
	add.d	$t4, $t5, $s1
	st.w	$t4, $a1, 16
	add.d	$a0, $t8, $a0
	add.d	$a0, $a0, $t4
	add.d	$a0, $a0, $t1
	add.d	$a0, $a0, $a4
	rotri.w	$a4, $s3, 2
	rotri.w	$t1, $s3, 13
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s3, 22
	xor	$a4, $a4, $t1
	and	$t1, $s3, $s2
	xor	$t5, $s3, $s2
	and	$t5, $t5, $s7
	xor	$t1, $t5, $t1
	add.d	$a4, $a4, $t1
	add.d	$ra, $a0, $ra
	add.d	$a0, $a4, $a0
	rotri.w	$a4, $ra, 6
	rotri.w	$t1, $ra, 11
	xor	$a4, $a4, $t1
	rotri.w	$t1, $ra, 25
	xor	$a4, $a4, $t1
	andn	$t1, $s5, $ra
	and	$t5, $s6, $ra
	or	$t1, $t5, $t1
	vinsgr2vr.w	$vr5, $s4, 0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr5, $a5, 1
	vsrl.w	$vr6, $vr5, $vr1
	vsll.w	$vr7, $vr5, $vr2
	vor.v	$vr6, $vr7, $vr6
	vsrl.w	$vr7, $vr5, $vr3
	vsll.w	$vr8, $vr5, $vr4
	vor.v	$vr7, $vr8, $vr7
	vxor.v	$vr6, $vr6, $vr7
	vsrl.w	$vr5, $vr5, $vr0
	vxor.v	$vr5, $vr6, $vr5
	add.d	$t5, $a7, $s0
	vpickve2gr.w	$t8, $vr5, 0
	add.d	$t5, $t5, $t8
	ld.w	$t8, $t6, 20
	vpickve2gr.w	$s1, $vr5, 1
	move	$a7, $t2
	move	$t2, $t0
	move	$t0, $a6
	move	$a6, $a3
	add.d	$a3, $t5, $s1
	st.w	$a3, $a1, 20
	add.d	$t5, $t8, $s8
	add.d	$t5, $t5, $a3
	add.d	$t1, $t5, $t1
	add.d	$a4, $t1, $a4
	rotri.w	$t1, $a0, 2
	rotri.w	$t5, $a0, 13
	xor	$t1, $t1, $t5
	rotri.w	$t5, $a0, 22
	xor	$t1, $t1, $t5
	and	$t5, $a0, $s3
	xor	$t8, $a0, $s3
	and	$t8, $t8, $s2
	xor	$t5, $t8, $t5
	add.d	$t1, $t1, $t5
	add.d	$s7, $a4, $s7
	add.d	$s4, $t1, $a4
	rotri.w	$a4, $s7, 6
	rotri.w	$t1, $s7, 11
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s7, 25
	xor	$a4, $a4, $t1
	andn	$t1, $s6, $s7
	and	$t5, $ra, $s7
	or	$t1, $t5, $t1
	vinsgr2vr.w	$vr5, $t4, 0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr5, $s1, 1
	vsrl.w	$vr6, $vr5, $vr1
	vsll.w	$vr7, $vr5, $vr2
	vor.v	$vr6, $vr7, $vr6
	vsrl.w	$vr7, $vr5, $vr3
	vsll.w	$vr8, $vr5, $vr4
	vor.v	$vr7, $vr8, $vr7
	vxor.v	$vr6, $vr6, $vr7
	vsrl.w	$vr5, $vr5, $vr0
	vxor.v	$vr5, $vr6, $vr5
	add.d	$t5, $a5, $fp
	vpickve2gr.w	$t8, $vr5, 0
	add.d	$t5, $t5, $t8
	ld.w	$t8, $t6, 24
	vpickve2gr.w	$s0, $vr5, 1
	add.w	$a5, $t5, $s0
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	st.w	$a5, $a1, 24
	add.d	$t5, $t8, $s5
	add.d	$t5, $t5, $a5
	add.d	$t1, $t5, $t1
	add.d	$a4, $t1, $a4
	rotri.w	$t1, $s4, 2
	rotri.w	$t5, $s4, 13
	xor	$t1, $t1, $t5
	rotri.w	$t5, $s4, 22
	xor	$t1, $t1, $t5
	and	$t5, $s4, $a0
	xor	$t8, $s4, $a0
	and	$t8, $t8, $s3
	xor	$t5, $t8, $t5
	add.d	$t1, $t1, $t5
	add.d	$s8, $a4, $s2
	add.d	$s5, $t1, $a4
	rotri.w	$a4, $s8, 6
	rotri.w	$t1, $s8, 11
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s8, 25
	xor	$a4, $a4, $t1
	and	$t1, $s7, $s8
	andn	$t5, $ra, $s8
	or	$t1, $t1, $t5
	ld.w	$t5, $t6, 28
	vinsgr2vr.w	$vr5, $a3, 0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr5, $s0, 1
	vsrl.w	$vr1, $vr5, $vr1
	vsll.w	$vr2, $vr5, $vr2
	vor.v	$vr1, $vr2, $vr1
	vsrl.w	$vr2, $vr5, $vr3
	vsll.w	$vr3, $vr5, $vr4
	vor.v	$vr2, $vr3, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrl.w	$vr2, $vr5, $vr0
	vxor.v	$vr1, $vr1, $vr2
	add.d	$t8, $s1, $t3
	vpickve2gr.w	$fp, $vr1, 0
	add.d	$t8, $t8, $fp
	vpickve2gr.w	$fp, $vr1, 1
	add.w	$t3, $t8, $fp
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	add.d	$t5, $s6, $t5
	add.d	$t5, $t5, $t3
	add.d	$t1, $t5, $t1
	add.d	$a4, $t1, $a4
	rotri.w	$t1, $s5, 2
	rotri.w	$t5, $s5, 13
	xor	$t1, $t1, $t5
	rotri.w	$t5, $s5, 22
	xor	$t1, $t1, $t5
	and	$t5, $s5, $s4
	xor	$t8, $s5, $s4
	and	$t8, $t8, $a0
	xor	$t5, $t8, $t5
	add.d	$t1, $t1, $t5
	add.d	$s1, $a4, $s3
	add.d	$s6, $t1, $a4
	rotri.w	$a4, $s1, 6
	rotri.w	$t1, $s1, 11
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s1, 25
	xor	$a4, $a4, $t1
	andn	$t1, $s7, $s1
	and	$t5, $s8, $s1
	or	$t1, $t5, $t1
	rotri.w	$t5, $a5, 17
	rotri.w	$t8, $a5, 19
	xor	$t5, $t5, $t8
	bstrpick.d	$t8, $a5, 31, 10
	xor	$t5, $t5, $t8
	rotri.w	$t8, $a6, 7
	rotri.w	$s2, $a6, 18
	xor	$t8, $t8, $s2
	bstrpick.d	$s2, $a6, 31, 3
	xor	$t8, $t8, $s2
	st.w	$t3, $a1, 28
	ld.w	$s2, $t6, 32
	st.d	$t7, $sp, 96                    # 8-byte Folded Spill
	add.d	$t8, $t7, $t8
	add.d	$t7, $t8, $s0
	move	$s0, $a3
	add.w	$fp, $t7, $t5
	move	$t7, $a2
	add.d	$t5, $fp, $s2
	add.d	$t5, $t5, $ra
	add.d	$t1, $t5, $t1
	add.d	$a4, $t1, $a4
	rotri.w	$t1, $s6, 2
	rotri.w	$t5, $s6, 13
	xor	$t1, $t1, $t5
	rotri.w	$t5, $s6, 22
	xor	$t1, $t1, $t5
	and	$t5, $s6, $s5
	xor	$t8, $s6, $s5
	and	$t8, $t8, $s4
	xor	$t5, $t8, $t5
	add.d	$t1, $t1, $t5
	add.d	$ra, $a4, $a0
	add.d	$s2, $t1, $a4
	rotri.w	$a0, $ra, 6
	rotri.w	$a4, $ra, 11
	xor	$a0, $a0, $a4
	rotri.w	$a4, $ra, 25
	xor	$a0, $a0, $a4
	andn	$a4, $s8, $ra
	and	$t1, $s1, $ra
	or	$a4, $t1, $a4
	rotri.w	$t1, $t3, 17
	rotri.w	$t5, $t3, 19
	xor	$t1, $t1, $t5
	bstrpick.d	$t5, $t3, 31, 10
	xor	$t1, $t1, $t5
	rotri.w	$t5, $t0, 7
	rotri.w	$t8, $t0, 18
	xor	$t5, $t5, $t8
	bstrpick.d	$t8, $t0, 31, 3
	xor	$t5, $t5, $t8
	st.w	$fp, $a1, 32
	ld.w	$t8, $t6, 36
	add.d	$a3, $t5, $a6
	add.d	$a3, $a3, $a2
	add.w	$a2, $a3, $t1
	add.d	$t1, $a2, $t8
	add.d	$t1, $t1, $s7
	add.d	$a4, $t1, $a4
	add.d	$a0, $a4, $a0
	rotri.w	$a4, $s2, 2
	rotri.w	$t1, $s2, 13
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s2, 22
	xor	$a4, $a4, $t1
	and	$t1, $s2, $s6
	xor	$t5, $s2, $s6
	and	$t5, $t5, $s5
	xor	$t1, $t5, $t1
	add.d	$a4, $a4, $t1
	add.d	$s7, $a0, $s4
	add.d	$s3, $a4, $a0
	rotri.w	$a0, $s7, 6
	rotri.w	$a4, $s7, 11
	xor	$a0, $a0, $a4
	rotri.w	$a4, $s7, 25
	xor	$a0, $a0, $a4
	andn	$a4, $s1, $s7
	and	$t1, $ra, $s7
	or	$a4, $t1, $a4
	rotri.w	$t1, $fp, 17
	rotri.w	$t5, $fp, 19
	xor	$t1, $t1, $t5
	bstrpick.d	$t5, $fp, 31, 10
	xor	$t1, $t1, $t5
	rotri.w	$t5, $t2, 7
	rotri.w	$t8, $t2, 18
	xor	$t5, $t5, $t8
	bstrpick.d	$t8, $t2, 31, 3
	xor	$t5, $t5, $t8
	st.w	$a2, $a1, 36
	ld.w	$t8, $t6, 40
	add.d	$a6, $t5, $t0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a3
	add.w	$a6, $a6, $t1
	add.d	$t1, $a6, $t8
	add.d	$t1, $t1, $s8
	add.d	$a4, $t1, $a4
	add.d	$a0, $a4, $a0
	rotri.w	$a4, $s3, 2
	rotri.w	$t1, $s3, 13
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s3, 22
	xor	$a4, $a4, $t1
	and	$t1, $s3, $s2
	xor	$t5, $s3, $s2
	and	$t5, $t5, $s6
	xor	$t1, $t5, $t1
	add.d	$a4, $a4, $t1
	add.d	$s5, $a0, $s5
	add.d	$s4, $a4, $a0
	rotri.w	$a0, $s5, 6
	rotri.w	$a4, $s5, 11
	xor	$a0, $a0, $a4
	rotri.w	$a4, $s5, 25
	xor	$a0, $a0, $a4
	andn	$a4, $ra, $s5
	and	$t1, $s7, $s5
	or	$a4, $t1, $a4
	rotri.w	$t1, $a2, 17
	rotri.w	$t5, $a2, 19
	xor	$t1, $t1, $t5
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$t5, $a2, 31, 10
	xor	$t1, $t1, $t5
	rotri.w	$t5, $a7, 7
	rotri.w	$t8, $a7, 18
	xor	$t5, $t5, $t8
	bstrpick.d	$t8, $a7, 31, 3
	xor	$t5, $t5, $t8
	st.w	$a6, $a1, 40
	ld.w	$t8, $t6, 44
	add.d	$t0, $t5, $t2
	st.d	$t4, $sp, 88                    # 8-byte Folded Spill
	add.d	$t0, $t0, $t4
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	add.w	$t0, $t0, $t1
	add.d	$t1, $t0, $t8
	add.d	$t1, $t1, $s1
	add.d	$a4, $t1, $a4
	add.d	$a0, $a4, $a0
	rotri.w	$a4, $s4, 2
	rotri.w	$t1, $s4, 13
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s4, 22
	xor	$a4, $a4, $t1
	and	$t1, $s4, $s3
	xor	$t5, $s4, $s3
	and	$t5, $t5, $s2
	xor	$t1, $t5, $t1
	add.d	$a4, $a4, $t1
	add.d	$s1, $a0, $s6
	add.d	$a0, $a4, $a0
	rotri.w	$a4, $s1, 6
	rotri.w	$t1, $s1, 11
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s1, 25
	xor	$a4, $a4, $t1
	andn	$t1, $s7, $s1
	and	$t5, $s5, $s1
	or	$t1, $t5, $t1
	rotri.w	$t5, $a6, 17
	rotri.w	$t8, $a6, 19
	xor	$t5, $t5, $t8
	bstrpick.d	$t8, $a6, 31, 10
	xor	$t5, $t5, $t8
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	rotri.w	$t8, $a3, 7
	rotri.w	$s6, $a3, 18
	xor	$t8, $t8, $s6
	bstrpick.d	$s6, $a3, 31, 3
	xor	$t8, $t8, $s6
	st.w	$t0, $a1, 44
	ld.w	$s6, $t6, 48
	add.d	$t2, $t8, $a7
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	add.d	$t2, $t2, $s0
	add.w	$t2, $t2, $t5
	add.d	$t5, $t2, $s6
	add.d	$t5, $t5, $ra
	add.d	$t1, $t5, $t1
	add.d	$s6, $t1, $a4
	rotri.w	$a4, $a0, 2
	rotri.w	$t1, $a0, 13
	xor	$a4, $a4, $t1
	rotri.w	$t1, $a0, 22
	xor	$a4, $a4, $t1
	and	$t1, $a0, $s4
	xor	$t5, $a0, $s4
	and	$t5, $t5, $s3
	xor	$t1, $t5, $t1
	add.d	$s8, $a4, $t1
	rotri.w	$a4, $t0, 17
	rotri.w	$t1, $t0, 19
	xor	$a4, $a4, $t1
	bstrpick.d	$t1, $t0, 31, 10
	xor	$a4, $a4, $t1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	rotri.w	$t1, $s0, 7
	rotri.w	$t5, $s0, 18
	xor	$t1, $t1, $t5
	bstrpick.d	$t5, $s0, 31, 3
	bstrpick.d	$t5, $t5, 60, 0
	xor	$t1, $t1, $t5
	st.w	$t2, $a1, 48
	ld.w	$t5, $t6, 52
	add.d	$t1, $a3, $t1
	add.d	$t1, $t1, $a5
	add.w	$a7, $t1, $a4
	add.d	$a4, $a7, $t5
	add.d	$a4, $a4, $s7
	rotri.w	$t1, $t2, 17
	rotri.w	$t5, $t2, 19
	xor	$t1, $t1, $t5
	bstrpick.d	$t5, $t2, 31, 10
	xor	$t1, $t1, $t5
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	rotri.w	$t5, $s7, 7
	rotri.w	$t8, $s7, 18
	xor	$t5, $t5, $t8
	bstrpick.d	$t8, $s7, 31, 3
	xor	$t5, $t5, $t8
	add.d	$a2, $t5, $s0
	add.d	$a2, $a2, $t3
	add.w	$s0, $a2, $t1
	rotri.w	$t1, $a7, 17
	rotri.w	$t5, $a7, 19
	xor	$t1, $t1, $t5
	bstrpick.d	$t5, $a7, 31, 10
	xor	$t1, $t1, $t5
	rotri.w	$t5, $t4, 7
	rotri.w	$t8, $t4, 18
	xor	$t5, $t5, $t8
	bstrpick.d	$t8, $t4, 31, 3
	xor	$t5, $t5, $t8
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.w	$a7, $a1, 52
	add.d	$a7, $t5, $s7
	ld.w	$t5, $t6, 56
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	add.d	$a7, $a7, $fp
	add.w	$fp, $a7, $t1
	add.d	$ra, $s6, $s2
	rotri.w	$t1, $ra, 6
	rotri.w	$t8, $ra, 11
	xor	$t1, $t1, $t8
	rotri.w	$t8, $ra, 25
	xor	$t1, $t1, $t8
	add.d	$t5, $s0, $t5
	add.d	$t5, $t5, $s5
	andn	$t8, $s5, $ra
	and	$s2, $s1, $ra
	or	$t8, $s2, $t8
	st.w	$s0, $a1, 56
	add.d	$a4, $a4, $t8
	ld.w	$t8, $t6, 60
	add.d	$a4, $a4, $t1
	add.d	$s7, $a4, $s3
	rotri.w	$t1, $s7, 6
	rotri.w	$s2, $s7, 11
	xor	$t1, $t1, $s2
	rotri.w	$s2, $s7, 25
	xor	$t1, $t1, $s2
	add.d	$t8, $fp, $t8
	add.d	$t8, $t8, $s1
	andn	$s1, $s1, $s7
	and	$s2, $ra, $s7
	or	$s1, $s2, $s1
	add.d	$t5, $t5, $s1
	add.d	$t1, $t5, $t1
	add.d	$s5, $t1, $s4
	rotri.w	$t5, $s5, 6
	rotri.w	$s1, $s5, 11
	xor	$t5, $t5, $s1
	rotri.w	$s1, $s5, 25
	xor	$t5, $t5, $s1
	andn	$s1, $ra, $s5
	and	$s2, $s7, $s5
	or	$s1, $s2, $s1
	add.d	$t8, $t8, $s1
	add.d	$t5, $t8, $t5
	add.d	$s2, $s8, $s6
	rotri.w	$t8, $s2, 2
	rotri.w	$s1, $s2, 13
	xor	$t8, $t8, $s1
	rotri.w	$s1, $s2, 22
	xor	$t8, $t8, $s1
	xor	$s1, $s2, $a0
	and	$s1, $s1, $s4
	and	$s3, $s2, $a0
	xor	$s1, $s1, $s3
	add.d	$t8, $t8, $s1
	add.d	$s8, $t8, $a4
	rotri.w	$a4, $s8, 2
	rotri.w	$t8, $s8, 13
	xor	$a4, $a4, $t8
	rotri.w	$t8, $s8, 22
	xor	$a4, $a4, $t8
	and	$t8, $s8, $s2
	xor	$s1, $s8, $s2
	and	$s1, $s1, $a0
	xor	$t8, $s1, $t8
	add.d	$a4, $a4, $t8
	add.d	$s6, $a4, $t1
	rotri.w	$a4, $s6, 2
	rotri.w	$t1, $s6, 13
	xor	$a4, $a4, $t1
	rotri.w	$t1, $s6, 22
	xor	$a4, $a4, $t1
	and	$t1, $s6, $s8
	xor	$t8, $s6, $s8
	and	$t8, $t8, $s2
	xor	$t1, $t8, $t1
	add.d	$a4, $a4, $t1
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	st.w	$fp, $a1, 60
	add.d	$s4, $t5, $a0
	add.d	$s3, $a4, $t5
	addi.d	$a4, $t1, 16
	addi.d	$t6, $t6, 64
	ori	$a0, $zero, 48
	bltu	$t1, $a0, .LBB4_3
# %bb.4:                                # %._crit_edge
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	vld	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $s3, 0
	vinsgr2vr.w	$vr1, $s6, 1
	vinsgr2vr.w	$vr1, $s8, 2
	vinsgr2vr.w	$vr1, $s2, 3
	vadd.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	vld	$vr0, $a0, 16
	vinsgr2vr.w	$vr1, $s4, 0
	vinsgr2vr.w	$vr1, $s5, 1
	vinsgr2vr.w	$vr1, $s7, 2
	vinsgr2vr.w	$vr1, $ra, 3
	vadd.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 16
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end4:
	.size	sha256_transform, .Lfunc_end4-sha256_transform
                                        # -- End function
	.globl	sha256_digest                   # -- Begin function sha256_digest
	.p2align	5
	.type	sha256_digest,@function
sha256_digest:                          # @sha256_digest
# %bb.0:
	beqz	$a1, .LBB5_2
# %bb.1:                                # %.preheader.preheader
	ld.b	$a2, $a0, 3
	st.b	$a2, $a1, 0
	ld.b	$a2, $a0, 2
	st.b	$a2, $a1, 1
	ld.b	$a2, $a0, 1
	st.b	$a2, $a1, 2
	ld.b	$a2, $a0, 0
	st.b	$a2, $a1, 3
	ld.b	$a2, $a0, 7
	st.b	$a2, $a1, 4
	ld.b	$a2, $a0, 6
	st.b	$a2, $a1, 5
	ld.b	$a2, $a0, 5
	st.b	$a2, $a1, 6
	ld.b	$a2, $a0, 4
	st.b	$a2, $a1, 7
	ld.b	$a2, $a0, 11
	st.b	$a2, $a1, 8
	ld.b	$a2, $a0, 10
	st.b	$a2, $a1, 9
	ld.b	$a2, $a0, 9
	st.b	$a2, $a1, 10
	ld.b	$a2, $a0, 8
	st.b	$a2, $a1, 11
	ld.b	$a2, $a0, 15
	st.b	$a2, $a1, 12
	ld.b	$a2, $a0, 14
	st.b	$a2, $a1, 13
	ld.b	$a2, $a0, 13
	st.b	$a2, $a1, 14
	ld.b	$a2, $a0, 12
	st.b	$a2, $a1, 15
	ld.b	$a2, $a0, 19
	st.b	$a2, $a1, 16
	ld.b	$a2, $a0, 18
	st.b	$a2, $a1, 17
	ld.b	$a2, $a0, 17
	st.b	$a2, $a1, 18
	ld.b	$a2, $a0, 16
	st.b	$a2, $a1, 19
	ld.b	$a2, $a0, 23
	st.b	$a2, $a1, 20
	ld.b	$a2, $a0, 22
	st.b	$a2, $a1, 21
	ld.b	$a2, $a0, 21
	st.b	$a2, $a1, 22
	ld.b	$a2, $a0, 20
	st.b	$a2, $a1, 23
	ld.b	$a2, $a0, 27
	st.b	$a2, $a1, 24
	ld.b	$a2, $a0, 26
	st.b	$a2, $a1, 25
	ld.b	$a2, $a0, 25
	st.b	$a2, $a1, 26
	ld.b	$a2, $a0, 24
	st.b	$a2, $a1, 27
	ld.b	$a2, $a0, 31
	st.b	$a2, $a1, 28
	ld.b	$a2, $a0, 30
	st.b	$a2, $a1, 29
	ld.b	$a2, $a0, 29
	st.b	$a2, $a1, 30
	ld.b	$a0, $a0, 28
	st.b	$a0, $a1, 31
.LBB5_2:                                # %.loopexit
	ret
.Lfunc_end5:
	.size	sha256_digest, .Lfunc_end5-sha256_digest
                                        # -- End function
	.type	sha256_init.H0,@object          # @sha256_init.H0
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
sha256_init.H0:
	.word	1779033703                      # 0x6a09e667
	.word	3144134277                      # 0xbb67ae85
	.word	1013904242                      # 0x3c6ef372
	.word	2773480762                      # 0xa54ff53a
	.word	1359893119                      # 0x510e527f
	.word	2600822924                      # 0x9b05688c
	.word	528734635                       # 0x1f83d9ab
	.word	1541459225                      # 0x5be0cd19
	.size	sha256_init.H0, 32

	.type	K,@object                       # @K
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
K:
	.word	1116352408                      # 0x428a2f98
	.word	1899447441                      # 0x71374491
	.word	3049323471                      # 0xb5c0fbcf
	.word	3921009573                      # 0xe9b5dba5
	.word	961987163                       # 0x3956c25b
	.word	1508970993                      # 0x59f111f1
	.word	2453635748                      # 0x923f82a4
	.word	2870763221                      # 0xab1c5ed5
	.word	3624381080                      # 0xd807aa98
	.word	310598401                       # 0x12835b01
	.word	607225278                       # 0x243185be
	.word	1426881987                      # 0x550c7dc3
	.word	1925078388                      # 0x72be5d74
	.word	2162078206                      # 0x80deb1fe
	.word	2614888103                      # 0x9bdc06a7
	.word	3248222580                      # 0xc19bf174
	.word	3835390401                      # 0xe49b69c1
	.word	4022224774                      # 0xefbe4786
	.word	264347078                       # 0xfc19dc6
	.word	604807628                       # 0x240ca1cc
	.word	770255983                       # 0x2de92c6f
	.word	1249150122                      # 0x4a7484aa
	.word	1555081692                      # 0x5cb0a9dc
	.word	1996064986                      # 0x76f988da
	.word	2554220882                      # 0x983e5152
	.word	2821834349                      # 0xa831c66d
	.word	2952996808                      # 0xb00327c8
	.word	3210313671                      # 0xbf597fc7
	.word	3336571891                      # 0xc6e00bf3
	.word	3584528711                      # 0xd5a79147
	.word	113926993                       # 0x6ca6351
	.word	338241895                       # 0x14292967
	.word	666307205                       # 0x27b70a85
	.word	773529912                       # 0x2e1b2138
	.word	1294757372                      # 0x4d2c6dfc
	.word	1396182291                      # 0x53380d13
	.word	1695183700                      # 0x650a7354
	.word	1986661051                      # 0x766a0abb
	.word	2177026350                      # 0x81c2c92e
	.word	2456956037                      # 0x92722c85
	.word	2730485921                      # 0xa2bfe8a1
	.word	2820302411                      # 0xa81a664b
	.word	3259730800                      # 0xc24b8b70
	.word	3345764771                      # 0xc76c51a3
	.word	3516065817                      # 0xd192e819
	.word	3600352804                      # 0xd6990624
	.word	4094571909                      # 0xf40e3585
	.word	275423344                       # 0x106aa070
	.word	430227734                       # 0x19a4c116
	.word	506948616                       # 0x1e376c08
	.word	659060556                       # 0x2748774c
	.word	883997877                       # 0x34b0bcb5
	.word	958139571                       # 0x391c0cb3
	.word	1322822218                      # 0x4ed8aa4a
	.word	1537002063                      # 0x5b9cca4f
	.word	1747873779                      # 0x682e6ff3
	.word	1955562222                      # 0x748f82ee
	.word	2024104815                      # 0x78a5636f
	.word	2227730452                      # 0x84c87814
	.word	2361852424                      # 0x8cc70208
	.word	2428436474                      # 0x90befffa
	.word	2756734187                      # 0xa4506ceb
	.word	3204031479                      # 0xbef9a3f7
	.word	3329325298                      # 0xc67178f2
	.size	K, 256

	.section	".note.GNU-stack","",@progbits
	.addrsig
