	.file	"gxcache.c"
	.text
	.globl	gx_alloc_char_bits              # -- Begin function gx_alloc_char_bits
	.p2align	5
	.type	gx_alloc_char_bits,@function
gx_alloc_char_bits:                     # @gx_alloc_char_bits
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	move	$s0, $a1
	move	$fp, $a0
	st.w	$a2, $a1, 24
	st.w	$a3, $a1, 28
	move	$a0, $a1
	pcaddu18i	$ra, %call36(gx_device_memory_bitmap_size)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 152
	move	$s1, $a0
	beqz	$a1, .LBB0_2
# %bb.1:
	ld.w	$a0, $fp, 68
	div.wu	$a0, $a0, $a1
	bltu	$a0, $s2, .LBB0_8
.LBB0_2:
	ld.w	$a1, $fp, 56
	ld.w	$a0, $fp, 60
	bgeu	$a1, $a0, .LBB0_5
# %bb.3:
	ld.w	$a0, $fp, 44
	ld.w	$a1, $fp, 40
	sub.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 0
	bltu	$a1, $s1, .LBB0_7
# %bb.4:                                # %._crit_edge
	ld.w	$a0, $fp, 1136
	ld.w	$a1, $fp, 1104
	b	.LBB0_10
.LBB0_5:
	beqz	$a0, .LBB0_8
# %bb.6:                                # %..thread_crit_edge
	ld.w	$a0, $fp, 44
.LBB0_7:                                # %.thread
	bstrpick.d	$a0, $a0, 31, 0
	bgeu	$a0, $s1, .LBB0_9
.LBB0_8:
	move	$a0, $zero
	b	.LBB0_11
.LBB0_9:
	st.w	$zero, $fp, 40
	st.w	$zero, $fp, 48
	st.w	$zero, $fp, 56
	st.w	$zero, $fp, 1120
	addi.d	$a0, $fp, 72
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a0, $zero
.LBB0_10:
	ld.d	$a2, $fp, 1128
	addi.d	$a3, $a0, 1
	st.w	$a3, $fp, 1136
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a3, $a0, 6
	ld.d	$a4, $fp, 1096
	alsl.d	$a0, $a0, $a3, 3
	add.d	$s4, $a2, $a0
	bstrpick.d	$a0, $a1, 31, 0
	add.d	$a0, $a4, $a0
	st.d	$a0, $s4, 64
	add.d	$a1, $a1, $s1
	st.w	$a1, $fp, 1104
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	st.h	$s3, $s4, 28
	ld.h	$a1, $s0, 152
	ld.d	$a2, $s4, 64
	ld.d	$a3, $a0, 0
	st.h	$s2, $s4, 26
	st.h	$a1, $s4, 24
	st.d	$a2, $s0, 160
	move	$a0, $s0
	jirl	$ra, $a3, 0
	move	$a0, $s4
	ld.w	$a1, $fp, 56
	ld.w	$a2, $fp, 40
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 56
	add.d	$a1, $a2, $s1
	st.w	$a1, $fp, 40
.LBB0_11:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	gx_alloc_char_bits, .Lfunc_end0-gx_alloc_char_bits
                                        # -- End function
	.globl	zap_cache                       # -- Begin function zap_cache
	.p2align	5
	.type	zap_cache,@function
zap_cache:                              # @zap_cache
# %bb.0:
	st.w	$zero, $a0, 40
	st.w	$zero, $a0, 48
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 1104
	st.w	$zero, $a0, 1120
	addi.d	$a1, $a0, 72
	ori	$a2, $zero, 1024
	st.w	$zero, $a0, 1136
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end1:
	.size	zap_cache, .Lfunc_end1-zap_cache
                                        # -- End function
	.globl	gx_unalloc_cached_char          # -- Begin function gx_unalloc_cached_char
	.p2align	5
	.type	gx_unalloc_cached_char,@function
gx_unalloc_cached_char:                 # @gx_unalloc_cached_char
# %bb.0:
	ld.hu	$a2, $a1, 24
	ld.hu	$a1, $a1, 26
	ld.w	$a3, $a0, 1136
	mul.d	$a1, $a1, $a2
	ld.w	$a2, $a0, 1104
	addi.d	$a3, $a3, -1
	st.w	$a3, $a0, 1136
	ld.w	$a3, $a0, 56
	sub.d	$a2, $a2, $a1
	ld.w	$a4, $a0, 40
	st.w	$a2, $a0, 1104
	addi.d	$a2, $a3, -1
	st.w	$a2, $a0, 56
	sub.d	$a1, $a4, $a1
	st.w	$a1, $a0, 40
	ret
.Lfunc_end2:
	.size	gx_unalloc_cached_char, .Lfunc_end2-gx_unalloc_cached_char
                                        # -- End function
	.globl	gx_lookup_fm_pair               # -- Begin function gx_lookup_fm_pair
	.p2align	5
	.type	gx_lookup_fm_pair,@function
gx_lookup_fm_pair:                      # @gx_lookup_fm_pair
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	ld.d	$fp, $a0, 328
	fld.s	$fs0, $a0, 336
	ld.d	$s0, $fp, 24
	fld.s	$fs1, $a0, 352
	fld.s	$fs2, $a0, 368
	fld.s	$fs3, $a0, 384
	ld.w	$a1, $s0, 48
	ld.d	$s1, $s0, 1112
	beqz	$a1, .LBB3_10
# %bb.1:                                # %.lr.ph
	ld.wu	$a0, $s0, 1120
	slli.d	$a0, $a0, 5
	add.d	$a0, $s1, $a0
	move	$a2, $a1
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB3_10
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	beq	$a0, $s1, .LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a0, $a0, -32
	ld.d	$a3, $a0, 0
	bne	$a3, $fp, .LBB3_2
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	ld.wu	$a0, $s0, 52
	slli.d	$a0, $a0, 5
	add.d	$a0, $s1, $a0
	ld.d	$a3, $a0, 0
	bne	$a3, $fp, .LBB3_2
.LBB3_6:                                #   in Loop: Header=BB3_3 Depth=1
	fld.s	$fa0, $a0, 8
	fcmp.cune.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB3_2
# %bb.7:                                #   in Loop: Header=BB3_3 Depth=1
	fld.s	$fa0, $a0, 12
	fcmp.cune.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB3_2
# %bb.8:                                #   in Loop: Header=BB3_3 Depth=1
	fld.s	$fa0, $a0, 16
	fcmp.cune.s	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB3_2
# %bb.9:                                #   in Loop: Header=BB3_3 Depth=1
	fld.s	$fa0, $a0, 20
	fcmp.ceq.s	$fcc0, $fa0, $fs3
	bceqz	$fcc0, .LBB3_2
	b	.LBB3_14
.LBB3_10:                               # %._crit_edge
	ld.w	$s2, $s0, 52
	bne	$a1, $s2, .LBB3_12
# %bb.11:
	st.w	$zero, $s0, 40
	st.w	$zero, $s0, 56
	st.w	$zero, $s0, 1104
	st.w	$zero, $s0, 1136
	addi.d	$a0, $s0, 72
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	ori	$a0, $zero, 1
	b	.LBB3_13
.LBB3_12:                               # %._crit_edge._crit_edge
	ld.w	$a2, $s0, 1120
	addi.d	$a0, $a1, 1
.LBB3_13:
	st.w	$a0, $s0, 48
	bstrpick.d	$a0, $a2, 31, 0
	slli.d	$a1, $a0, 5
	add.d	$a0, $s1, $a1
	addi.w	$a2, $a2, 1
	xor	$a3, $a2, $s2
	sltui	$a3, $a3, 1
	masknez	$a2, $a2, $a3
	st.w	$a2, $s0, 1120
	stx.d	$fp, $s1, $a1
	fst.s	$fs0, $a0, 8
	fst.s	$fs1, $a0, 12
	fst.s	$fs2, $a0, 16
	fst.s	$fs3, $a0, 20
	st.w	$zero, $a0, 24
.LBB3_14:                               # %.loopexit
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	gx_lookup_fm_pair, .Lfunc_end3-gx_lookup_fm_pair
                                        # -- End function
	.globl	gx_add_cached_char              # -- Begin function gx_add_cached_char
	.p2align	5
	.type	gx_add_cached_char,@function
gx_add_cached_char:                     # @gx_add_cached_char
# %bb.0:
	ld.wu	$a3, $a1, 8
	andi	$a3, $a3, 127
	alsl.d	$a0, $a3, $a0, 3
	addi.d	$a3, $a0, 72
	.p2align	4, , 16
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB4_1
# %bb.2:
	ld.w	$a3, $a2, 24
	st.d	$a1, $a0, 0
	st.d	$zero, $a1, 0
	st.d	$a2, $a1, 16
	addi.d	$a0, $a3, 1
	st.w	$a0, $a2, 24
	ret
.Lfunc_end4:
	.size	gx_add_cached_char, .Lfunc_end4-gx_add_cached_char
                                        # -- End function
	.globl	gx_lookup_cached_char           # -- Begin function gx_lookup_cached_char
	.p2align	5
	.type	gx_lookup_cached_char,@function
gx_lookup_cached_char:                  # @gx_lookup_cached_char
# %bb.0:
	ld.d	$a0, $a0, 328
	ld.d	$a0, $a0, 24
	andi	$a3, $a2, 127
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a0, $a0, 72
	bnez	$a0, .LBB5_3
.LBB5_1:
	move	$a0, $zero
	ret
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB5_1
.LBB5_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 8
	bne	$a3, $a2, .LBB5_2
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a3, $a0, 16
	bne	$a3, $a1, .LBB5_2
# %bb.5:                                # %._crit_edge
	ret
.Lfunc_end5:
	.size	gx_lookup_cached_char, .Lfunc_end5-gx_lookup_cached_char
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gx_copy_cached_char
.LCPI6_0:
	.dword	0x3f30000000000000              # double 2.44140625E-4
	.text
	.globl	gx_copy_cached_char
	.p2align	5
	.type	gx_copy_cached_char,@function
gx_copy_cached_char:                    # @gx_copy_cached_char
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	ld.d	$fp, $a0, 0
	ld.d	$a2, $fp, 256
	ld.bu	$a3, $a2, 136
	beqz	$a3, .LBB6_8
# %bb.1:
	move	$s0, $a1
	ld.d	$s2, $a2, 120
	ld.w	$a1, $a0, 356
	ld.d	$s3, $a2, 128
	beqz	$a1, .LBB6_9
.LBB6_2:
	ld.d	$a1, $s0, 48
	sub.d	$s2, $s2, $a1
	ori	$a1, $zero, 2048
	add.d	$a2, $s2, $a1
	ld.d	$a3, $s0, 56
	ld.w	$a5, $a0, 60
	ld.hu	$s1, $s0, 26
	srli.d	$a2, $a2, 12
	addi.w	$a4, $a2, 0
	sub.d	$s3, $s3, $a3
	blt	$a4, $a5, .LBB6_6
# %bb.3:
	ld.hu	$a6, $s0, 28
	ld.w	$a3, $a0, 68
	add.w	$a2, $a2, $a6
	blt	$a3, $a2, .LBB6_6
# %bb.4:
	ld.w	$a2, $a0, 64
	add.d	$a1, $s3, $a1
	srli.d	$a1, $a1, 12
	addi.w	$a5, $a1, 0
	blt	$a5, $a2, .LBB6_6
# %bb.5:
	ld.w	$a0, $a0, 72
	add.w	$a1, $a1, $s1
	bge	$a0, $a1, .LBB6_12
.LBB6_6:
	addi.d	$a1, $fp, 24
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	movgr2fr.d	$fa1, $s2
	fld.s	$fa2, $sp, 88
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fcvt.s.d	$fa1, $fa1
	fsub.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $sp, 88
	movgr2fr.d	$fa1, $s3
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fld.s	$fa1, $sp, 104
	fcvt.s.d	$fa0, $fa0
	ld.hu	$a0, $s0, 24
	ld.d	$a5, $s0, 64
	fsub.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $sp, 104
	slli.d	$a1, $a0, 3
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 24
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gs_imagemask)
	jirl	$ra, $ra, 0
.LBB6_7:
	srai.d	$a1, $a0, 63
	and	$a0, $a1, $a0
	b	.LBB6_10
.LBB6_8:
	addi.w	$a0, $zero, -14
	b	.LBB6_10
.LBB6_9:
	move	$s4, $a0
	ld.d	$s1, $fp, 312
	ld.d	$a0, $fp, 304
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(gx_color_render)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 16
	ori	$a0, $zero, 1
	beqz	$a1, .LBB6_11
.LBB6_10:                               # %.critedge
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB6_11:
	ori	$a1, $zero, 1
	move	$a0, $s4
	st.w	$a1, $s4, 356
	b	.LBB6_2
.LBB6_12:
	ld.d	$a0, $fp, 448
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	ld.d	$a2, $fp, 312
	ld.d	$t0, $a1, 72
	ld.d	$a1, $s0, 64
	ld.hu	$a3, $s0, 24
	ld.d	$a2, $a2, 0
	st.d	$a2, $sp, 8
	addi.w	$a2, $zero, -1
	st.d	$a2, $sp, 0
	move	$a2, $zero
	move	$a7, $s1
	jirl	$ra, $t0, 0
	b	.LBB6_7
.Lfunc_end6:
	.size	gx_copy_cached_char, .Lfunc_end6-gx_copy_cached_char
                                        # -- End function
	.type	cached_char_sizeof,@object      # @cached_char_sizeof
	.data
	.globl	cached_char_sizeof
	.p2align	2, 0x0
cached_char_sizeof:
	.word	72                              # 0x48
	.size	cached_char_sizeof, 4

	.type	cached_fm_pair_sizeof,@object   # @cached_fm_pair_sizeof
	.globl	cached_fm_pair_sizeof
	.p2align	2, 0x0
cached_fm_pair_sizeof:
	.word	32                              # 0x20
	.size	cached_fm_pair_sizeof, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
