	.file	"ialloc.c"
	.text
	.globl	alloc_init                      # -- Begin function alloc_init
	.p2align	5
	.type	alloc_init,@function
alloc_init:                             # @alloc_init
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(as_current)
	addi.d	$s2, $a0, %pc_lo12(as_current)
	ori	$a2, $zero, 392
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$fp, $s2, 56
	ori	$a0, $zero, 8
	st.w	$a0, $s2, 60
	st.d	$s1, $s2, 64
	st.d	$s0, $s2, 72
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	alloc_init, .Lfunc_end0-alloc_init
                                        # -- End function
	.globl	alloc_status                    # -- Begin function alloc_status
	.p2align	5
	.type	alloc_status,@function
alloc_status:                           # @alloc_status
# %bb.0:
	pcalau12i	$a2, %pc_hi20(as_current)
	addi.d	$a2, $a2, %pc_lo12(as_current)
	ld.d	$a3, $a2, 8
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a2, 24
	ld.d	$a6, $a2, 16
	ld.d	$a7, $a2, 80
	add.d	$a3, $a3, $a5
	add.d	$a6, $a4, $a6
	sub.d	$a3, $a3, $a6
	add.d	$a3, $a3, $a7
	st.d	$a3, $a0, 0
	ld.d	$a0, $a2, 88
	sub.d	$a2, $a5, $a4
	add.d	$a0, $a2, $a0
	st.d	$a0, $a1, 0
	ret
.Lfunc_end1:
	.size	alloc_status, .Lfunc_end1-alloc_status
                                        # -- End function
	.globl	alloc                           # -- Begin function alloc
	.p2align	5
	.type	alloc,@function
alloc:                                  # @alloc
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	mul.d	$s1, $a1, $a0
	addi.w	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(as_current)
	addi.d	$s0, $a1, %pc_lo12(as_current)
	ld.w	$a1, $s0, 60
	bltu	$a0, $a1, .LBB2_3
# %bb.1:
	ld.d	$a3, $s0, 64
	addi.w	$a1, $s1, 24
	ori	$a0, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB2_3
# %bb.2:                                # %alloc_large.exit
	ld.d	$a1, $s0, 360
	ld.w	$a2, $s0, 376
	move	$a3, $a0
	addi.d	$a0, $a0, 24
	st.d	$a1, $a3, 0
	st.w	$s1, $a3, 8
	st.w	$a2, $a3, 12
	st.d	$s0, $a3, 16
	st.d	$a3, $s0, 360
	b	.LBB2_16
.LBB2_3:                                # %alloc_large.exit.thread
	addi.w	$s2, $s1, 7
	ori	$a0, $zero, 255
	bltu	$a0, $s2, .LBB2_6
# %bb.4:
	bstrpick.d	$a0, $s2, 31, 3
	alsl.d	$a1, $a0, $s0, 3
	ld.d	$a0, $a1, 104
	beqz	$a0, .LBB2_6
# %bb.5:
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, 104
	st.d	$a2, $a1, 0
	b	.LBB2_16
.LBB2_6:                                # %.thread
	ld.d	$a1, $s0, 16
	ld.d	$a0, $s0, 8
	bstrins.d	$s2, $zero, 2, 0
	sub.w	$a2, $a1, $a0
	bgeu	$a2, $s2, .LBB2_13
# %bb.7:
	ld.d	$a3, $s0, 64
	ld.w	$a1, $s0, 56
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB2_10
# %bb.8:
	ld.d	$a1, $s0, 8
	ld.d	$a2, $s0, 0
	ld.d	$a3, $s0, 24
	ld.d	$a4, $s0, 16
	ld.d	$a5, $s0, 80
	add.d	$a1, $a1, $a3
	add.d	$a4, $a2, $a4
	sub.d	$a1, $a1, $a4
	add.d	$a1, $a1, $a5
	st.d	$a1, $s0, 80
	ld.d	$a4, $s0, 88
	sub.d	$a2, $a3, $a2
	ld.w	$a3, $s0, 96
	ld.d	$a1, $s0, 48
	add.d	$a2, $a2, $a4
	st.d	$a2, $s0, 88
	addi.d	$a2, $a3, 1
	st.w	$a2, $s0, 96
	beqz	$a1, .LBB2_11
# %bb.9:
	vld	$vr0, $s0, 32
	vst	$vr0, $a1, 32
	vld	$vr0, $s0, 16
	vst	$vr0, $a1, 16
	vld	$vr0, $s0, 0
	vst	$vr0, $a1, 0
	ld.d	$a2, $s0, 48
	b	.LBB2_12
.LBB2_10:
	move	$a0, $zero
	b	.LBB2_16
.LBB2_11:
	move	$a2, $zero
.LBB2_12:                               # %alloc_add_chunk.exit
	ld.wu	$a1, $s0, 56
	addi.d	$a3, $a0, 48
	st.d	$a3, $s0, 8
	st.d	$a3, $s0, 0
	add.d	$a1, $a0, $a1
	ld.w	$a4, $s0, 376
	st.d	$a1, $s0, 16
	st.d	$a1, $s0, 24
	st.d	$a2, $s0, 40
	st.w	$a4, $s0, 32
	st.d	$a0, $s0, 48
	move	$a0, $a3
.LBB2_13:
	ori	$a2, $zero, 1
	bne	$fp, $a2, .LBB2_15
# %bb.14:
	bstrpick.d	$a0, $s1, 31, 0
	sub.d	$a0, $a1, $a0
	st.d	$a0, $s0, 16
	b	.LBB2_16
.LBB2_15:
	bstrpick.d	$a1, $s2, 31, 0
	add.d	$a1, $a0, $a1
	st.d	$a1, $s0, 8
.LBB2_16:                               # %alloc_add_chunk.exit.thread
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	alloc, .Lfunc_end2-alloc
                                        # -- End function
	.globl	alloc_large                     # -- Begin function alloc_large
	.p2align	5
	.type	alloc_large,@function
alloc_large:                            # @alloc_large
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a3, $a0, 64
	move	$s0, $a1
	addi.w	$a1, $a1, 24
	ori	$a0, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB3_2
# %bb.1:
	ld.d	$a2, $fp, 360
	ld.w	$a3, $fp, 376
	addi.d	$a1, $a0, 24
	st.d	$a2, $a0, 0
	st.w	$s0, $a0, 8
	st.w	$a3, $a0, 12
	st.d	$fp, $a0, 16
	st.d	$a0, $fp, 360
	b	.LBB3_3
.LBB3_2:
	move	$a1, $zero
.LBB3_3:
	move	$a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	alloc_large, .Lfunc_end3-alloc_large
                                        # -- End function
	.globl	alloc_add_chunk                 # -- Begin function alloc_add_chunk
	.p2align	5
	.type	alloc_add_chunk,@function
alloc_add_chunk:                        # @alloc_add_chunk
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a3, $a0, 64
	ld.w	$a1, $a0, 56
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB4_3
# %bb.1:
	pcalau12i	$a1, %pc_hi20(as_current)
	addi.d	$a1, $a1, %pc_lo12(as_current)
	ld.d	$a2, $a1, 8
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a1, 24
	ld.d	$a5, $a1, 16
	ld.d	$a6, $a1, 80
	add.d	$a2, $a2, $a4
	add.d	$a5, $a3, $a5
	sub.d	$a2, $a2, $a5
	add.d	$a2, $a2, $a6
	st.d	$a2, $fp, 80
	ld.d	$a2, $a1, 88
	sub.d	$a3, $a4, $a3
	ld.w	$a4, $fp, 96
	ld.d	$a1, $fp, 48
	add.d	$a2, $a3, $a2
	st.d	$a2, $fp, 88
	addi.d	$a2, $a4, 1
	st.w	$a2, $fp, 96
	beqz	$a1, .LBB4_4
# %bb.2:
	vld	$vr0, $fp, 32
	vst	$vr0, $a1, 32
	vld	$vr0, $fp, 16
	vst	$vr0, $a1, 16
	vld	$vr0, $fp, 0
	vst	$vr0, $a1, 0
	ld.d	$a1, $fp, 48
	b	.LBB4_5
.LBB4_3:
	move	$a0, $zero
	b	.LBB4_6
.LBB4_4:
	move	$a1, $zero
.LBB4_5:
	ld.wu	$a2, $fp, 56
	addi.d	$a3, $a0, 48
	st.d	$a3, $fp, 8
	st.d	$a3, $fp, 0
	add.d	$a2, $a0, $a2
	ld.w	$a3, $fp, 376
	st.d	$a2, $fp, 16
	st.d	$a2, $fp, 24
	st.d	$a1, $fp, 40
	st.w	$a3, $fp, 32
	st.d	$a0, $fp, 48
	ori	$a0, $zero, 1
.LBB4_6:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	alloc_add_chunk, .Lfunc_end4-alloc_add_chunk
                                        # -- End function
	.globl	alloc_free                      # -- Begin function alloc_free
	.p2align	5
	.type	alloc_free,@function
alloc_free:                             # @alloc_free
# %bb.0:
	mul.d	$a2, $a2, $a1
	addi.w	$a3, $a2, 0
	pcalau12i	$a1, %pc_hi20(as_current)
	addi.d	$a1, $a1, %pc_lo12(as_current)
	ld.w	$a4, $a1, 60
	bgeu	$a3, $a4, .LBB5_7
# %bb.1:
	ld.d	$a3, $a1, 16
	beq	$a0, $a3, .LBB5_12
# %bb.2:
	ld.d	$a4, $a1, 8
	addi.w	$a3, $a2, 7
	bstrpick.d	$a2, $a3, 31, 3
	alsl.d	$a5, $a2, $a0, 3
	beq	$a5, $a4, .LBB5_16
# %bb.3:
	ld.d	$a5, $a1, 0
	bltu	$a0, $a5, .LBB5_20
# %bb.4:
	ld.d	$a5, $a1, 24
	bgeu	$a0, $a5, .LBB5_20
# %bb.5:
	bltu	$a0, $a4, .LBB5_29
.LBB5_6:                                # %alloc_free_large.exit
	ret
.LBB5_7:
	ld.d	$a1, $a0, -8
	ld.w	$a3, $a0, -12
	ld.w	$a4, $a1, 376
	bne	$a3, $a4, .LBB5_6
# %bb.8:
	addi.d	$a4, $a1, 360
	.p2align	4, , 16
.LBB5_9:                                # =>This Inner Loop Header: Depth=1
	move	$a3, $a4
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB5_6
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=1
	addi.d	$a5, $a4, 24
	bne	$a5, $a0, .LBB5_9
# %bb.11:
	ld.d	$a0, $a4, 0
	ld.d	$a5, $a1, 72
	st.d	$a0, $a3, 0
	addi.w	$a2, $a2, 24
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a3, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 1
	move	$a0, $a4
	jr	$a5
.LBB5_12:
	ld.w	$a4, $a1, 376
	beqz	$a4, .LBB5_15
# %bb.13:
	ld.w	$a5, $a1, 32
	bge	$a5, $a4, .LBB5_15
# %bb.14:
	ld.d	$a4, $a1, 368
	ld.d	$a4, $a4, 16
	bgeu	$a0, $a4, .LBB5_6
.LBB5_15:
	bstrpick.d	$a0, $a2, 31, 0
	add.d	$a0, $a3, $a0
	st.d	$a0, $a1, 16
	ret
.LBB5_16:
	ld.w	$a2, $a1, 376
	beqz	$a2, .LBB5_19
# %bb.17:
	ld.w	$a3, $a1, 32
	bge	$a3, $a2, .LBB5_19
# %bb.18:
	ld.d	$a2, $a1, 368
	ld.d	$a2, $a2, 8
	bltu	$a0, $a2, .LBB5_6
.LBB5_19:
	st.d	$a0, $a1, 8
	ret
.LBB5_20:
	ld.d	$a4, $a1, 40
	beqz	$a4, .LBB5_6
# %bb.21:                               # %.lr.ph.preheader
	ld.w	$a5, $a1, 376
	b	.LBB5_23
	.p2align	4, , 16
.LBB5_22:                               #   in Loop: Header=BB5_23 Depth=1
	ld.d	$a4, $a4, 40
	beqz	$a4, .LBB5_6
.LBB5_23:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 32
	sub.w	$a6, $a6, $a5
	bnez	$a6, .LBB5_26
# %bb.24:                               #   in Loop: Header=BB5_23 Depth=1
	ld.d	$a6, $a4, 0
	bltu	$a0, $a6, .LBB5_22
# %bb.25:                               #   in Loop: Header=BB5_23 Depth=1
	ld.d	$a6, $a4, 24
	bgeu	$a0, $a6, .LBB5_22
	b	.LBB5_28
.LBB5_26:                               # %.lr.ph
	addi.w	$a4, $zero, -1
	bne	$a6, $a4, .LBB5_6
# %bb.27:
	ld.d	$a4, $a1, 368
.LBB5_28:
	ld.d	$a4, $a4, 8
	bgeu	$a0, $a4, .LBB5_6
.LBB5_29:                               # %.critedge
	ori	$a4, $zero, 255
	bltu	$a4, $a3, .LBB5_6
# %bb.30:                               # %.critedge
	bstrins.d	$a3, $zero, 2, 0
	beqz	$a3, .LBB5_6
# %bb.31:
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a2, $a1, 104
	st.d	$a2, $a0, 0
	st.d	$a0, $a1, 104
	ret
.Lfunc_end5:
	.size	alloc_free, .Lfunc_end5-alloc_free
                                        # -- End function
	.globl	alloc_free_large                # -- Begin function alloc_free_large
	.p2align	5
	.type	alloc_free_large,@function
alloc_free_large:                       # @alloc_free_large
# %bb.0:
	move	$a2, $a0
	ld.d	$a3, $a0, -8
	ld.w	$a0, $a0, -12
	ld.w	$a4, $a3, 376
	bne	$a0, $a4, .LBB6_5
# %bb.1:
	addi.d	$a0, $a3, 360
	.p2align	4, , 16
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	move	$a4, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB6_5
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	addi.d	$a5, $a0, 24
	bne	$a5, $a2, .LBB6_2
# %bb.4:
	ld.d	$a2, $a0, 0
	ld.d	$a5, $a3, 72
	st.d	$a2, $a4, 0
	addi.w	$a2, $a1, 24
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a3, $a1, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 1
	jr	$a5
.LBB6_5:                                # %.loopexit
	ret
.Lfunc_end6:
	.size	alloc_free_large, .Lfunc_end6-alloc_free_large
                                        # -- End function
	.globl	alloc_grow                      # -- Begin function alloc_grow
	.p2align	5
	.type	alloc_grow,@function
alloc_grow:                             # @alloc_grow
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	mul.d	$s1, $a3, $a1
	addi.w	$a7, $s1, 0
	mul.d	$a5, $a3, $a2
	addi.w	$a6, $a5, 0
	beq	$a6, $a7, .LBB7_11
# %bb.1:
	pcalau12i	$a7, %pc_hi20(as_current)
	addi.d	$fp, $a7, %pc_lo12(as_current)
	ld.w	$a7, $fp, 60
	bgeu	$a6, $a7, .LBB7_6
# %bb.2:
	ld.d	$a7, $fp, 16
	ld.d	$a6, $fp, 8
	bne	$a0, $a7, .LBB7_4
# %bb.3:
	sub.d	$t0, $a5, $s1
	bstrpick.d	$t0, $t0, 31, 0
	sub.d	$t1, $a0, $a6
	bge	$t1, $t0, .LBB7_9
.LBB7_4:                                # %.thread
	addi.w	$t0, $s1, 7
	bstrpick.d	$t1, $t0, 31, 3
	alsl.d	$t1, $t1, $a0, 3
	bne	$t1, $a6, .LBB7_6
# %bb.5:
	bstrins.d	$t0, $zero, 2, 0
	addi.d	$a5, $a5, 7
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	sub.d	$a5, $a5, $t0
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a7, $a7, $a6
	bge	$a7, $a5, .LBB7_10
.LBB7_6:                                # %.thread65
	move	$fp, $a1
	move	$s2, $a0
	move	$a0, $a2
	move	$s0, $a3
	move	$a1, $a3
	move	$a2, $a4
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_8
# %bb.7:
	bstrpick.d	$a2, $s1, 31, 0
	move	$s1, $a0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB7_11
.LBB7_8:
	move	$a0, $zero
	b	.LBB7_11
.LBB7_9:
	sub.d	$a3, $a7, $t0
	st.d	$a3, $fp, 16
	bstrpick.d	$a2, $s1, 31, 0
	move	$a1, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	b	.LBB7_11
.LBB7_10:
	add.d	$a1, $a6, $a5
	st.d	$a1, $fp, 8
.LBB7_11:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	alloc_grow, .Lfunc_end7-alloc_grow
                                        # -- End function
	.globl	alloc_shrink                    # -- Begin function alloc_shrink
	.p2align	5
	.type	alloc_shrink,@function
alloc_shrink:                           # @alloc_shrink
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	mul.d	$a6, $a3, $a1
	addi.w	$t0, $a6, 0
	mul.d	$s1, $a3, $a2
	addi.w	$a7, $s1, 0
	beq	$a7, $t0, .LBB8_16
# %bb.1:
	pcalau12i	$a5, %pc_hi20(as_current)
	addi.d	$a5, $a5, %pc_lo12(as_current)
	ld.w	$t1, $a5, 60
	bgeu	$t0, $t1, .LBB8_4
# %bb.2:
	ld.d	$a1, $a5, 16
	beq	$a0, $a1, .LBB8_6
# %bb.3:
	addi.d	$a1, $s1, 7
	bstrpick.d	$a1, $a1, 31, 3
	slli.d	$a2, $a1, 3
	alsl.d	$a3, $a1, $a0, 3
	addi.d	$a1, $a6, 7
	bstrpick.d	$a1, $a1, 31, 3
	slli.d	$a1, $a1, 3
	sub.w	$a2, $a1, $a2
	ori	$a1, $zero, 1
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB8_16
.LBB8_4:
	move	$fp, $a1
	move	$s2, $a0
	move	$a0, $a2
	move	$s0, $a3
	move	$a1, $a3
	move	$a2, $a4
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_15
# %bb.5:
	bstrpick.d	$a2, $s1, 31, 0
	move	$s1, $a0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB8_16
.LBB8_6:
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a1, $a0, $a6
	beqz	$a7, .LBB8_14
# %bb.7:                                # %.lr.ph.preheader
	bstrpick.d	$a7, $s1, 31, 0
	add.d	$a2, $a0, $a7
	addi.d	$a3, $a2, -1
	sltu	$a4, $a0, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a0, $a4
	or	$a3, $a4, $a3
	sub.d	$a3, $a2, $a3
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB8_12
# %bb.8:                                # %.lr.ph.preheader
	sub.d	$t0, $a7, $a6
	bltu	$t0, $a4, .LBB8_12
# %bb.9:                                # %vector.ph
	move	$a4, $a3
	bstrins.d	$a4, $zero, 4, 0
	sub.d	$a1, $a1, $a4
	sub.d	$a2, $a2, $a4
	add.d	$a6, $a6, $a0
	addi.d	$a6, $a6, -16
	add.d	$a7, $a7, $a0
	addi.d	$a7, $a7, -16
	move	$t0, $a4
	.p2align	4, , 16
.LBB8_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, 0
	vld	$vr1, $a7, -16
	vst	$vr0, $a6, 0
	vst	$vr1, $a6, -16
	addi.d	$t0, $t0, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB8_10
# %bb.11:                               # %middle.block
	beq	$a3, $a4, .LBB8_14
.LBB8_12:                               # %.lr.ph.preheader63
	move	$a3, $a1
	.p2align	4, , 16
.LBB8_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, -1
	addi.d	$a6, $a2, -1
	addi.d	$a1, $a3, -1
	st.b	$a4, $a3, -1
	move	$a3, $a1
	move	$a2, $a6
	bltu	$a0, $a6, .LBB8_13
.LBB8_14:                               # %._crit_edge
	st.d	$a1, $a5, 16
	move	$a0, $a1
	b	.LBB8_16
.LBB8_15:
	move	$a0, $s2
.LBB8_16:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	alloc_shrink, .Lfunc_end8-alloc_shrink
                                        # -- End function
	.globl	alloc_save_state                # -- Begin function alloc_save_state
	.p2align	5
	.type	alloc_save_state,@function
alloc_save_state:                       # @alloc_save_state
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 400
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(as_current)
	addi.d	$s0, $a1, %pc_lo12(as_current)
	ori	$a2, $zero, 392
	move	$fp, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 104
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.w	$a1, $s0, 376
	st.d	$fp, $s0, 368
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, 376
	st.d	$zero, $s0, 384
.LBB9_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	alloc_save_state, .Lfunc_end9-alloc_save_state
                                        # -- End function
	.globl	alloc_save_change               # -- Begin function alloc_save_change
	.p2align	5
	.type	alloc_save_change,@function
alloc_save_change:                      # @alloc_save_change
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(as_current)
	addi.d	$s1, $a0, %pc_lo12(as_current)
	ld.w	$a0, $s1, 376
	beqz	$a0, .LBB10_3
# %bb.1:
	move	$s0, $a1
	addi.w	$a1, $a1, 24
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_4
# %bb.2:
	ld.d	$a1, $s1, 384
	bstrpick.d	$a2, $s0, 31, 0
	st.d	$a1, $a0, 0
	st.d	$fp, $a0, 8
	st.w	$s0, $a0, 16
	addi.d	$a1, $a0, 24
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.d	$s0, $s1, 384
	b	.LBB10_5
.LBB10_3:
	move	$a0, $zero
	b	.LBB10_5
.LBB10_4:
	addi.w	$a0, $zero, -1
.LBB10_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	alloc_save_change, .Lfunc_end10-alloc_save_change
                                        # -- End function
	.globl	alloc_save_level                # -- Begin function alloc_save_level
	.p2align	5
	.type	alloc_save_level,@function
alloc_save_level:                       # @alloc_save_level
# %bb.0:
	pcalau12i	$a0, %pc_hi20(as_current+376)
	ld.w	$a0, $a0, %pc_lo12(as_current+376)
	ret
.Lfunc_end11:
	.size	alloc_save_level, .Lfunc_end11-alloc_save_level
                                        # -- End function
	.globl	alloc_is_since_save             # -- Begin function alloc_is_since_save
	.p2align	5
	.type	alloc_is_since_save,@function
alloc_is_since_save:                    # @alloc_is_since_save
# %bb.0:
	ld.d	$a2, $a1, 0
	ld.d	$a3, $a1, 392
	bltu	$a0, $a2, .LBB12_5
# %bb.1:
	ld.d	$a2, $a1, 24
	bgeu	$a0, $a2, .LBB12_5
# %bb.2:
	ld.d	$a2, $a1, 8
	bltu	$a0, $a2, .LBB12_16
# %bb.3:
	ld.d	$a1, $a1, 16
	sltu	$a2, $a0, $a1
.LBB12_4:                               # %.loopexit
	move	$a0, $a2
	ret
.LBB12_5:
	ld.w	$a2, $a1, 376
	ld.w	$a4, $a3, 32
	bge	$a2, $a4, .LBB12_11
# %bb.6:
	move	$a4, $a3
	b	.LBB12_8
	.p2align	4, , 16
.LBB12_7:                               #   in Loop: Header=BB12_8 Depth=1
	ld.d	$a4, $a4, 40
	ld.w	$a5, $a4, 32
	bge	$a2, $a5, .LBB12_11
.LBB12_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	bltu	$a0, $a5, .LBB12_7
# %bb.9:                                #   in Loop: Header=BB12_8 Depth=1
	ld.d	$a5, $a4, 24
	bgeu	$a0, $a5, .LBB12_7
.LBB12_10:
	ori	$a0, $zero, 1
	ret
.LBB12_11:                              # %.critedge.preheader
	beq	$a3, $a1, .LBB12_16
.LBB12_12:                              # %.lr.ph54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_13 Depth 2
	addi.d	$a2, $a3, 360
	.p2align	4, , 16
.LBB12_13:                              #   Parent Loop BB12_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a2, 0
	beqz	$a2, .LBB12_15
# %bb.14:                               #   in Loop: Header=BB12_13 Depth=2
	addi.d	$a4, $a2, 24
	bne	$a4, $a0, .LBB12_13
	b	.LBB12_10
	.p2align	4, , 16
.LBB12_15:                              # %.critedge45
                                        #   in Loop: Header=BB12_12 Depth=1
	ld.d	$a3, $a3, 368
	move	$a2, $zero
	bne	$a3, $a1, .LBB12_12
	b	.LBB12_4
.LBB12_16:
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	alloc_is_since_save, .Lfunc_end12-alloc_is_since_save
                                        # -- End function
	.globl	alloc_restore_state_check       # -- Begin function alloc_restore_state_check
	.p2align	5
	.type	alloc_restore_state_check,@function
alloc_restore_state_check:              # @alloc_restore_state_check
# %bb.0:
	move	$a1, $a0
	ld.d	$a2, $a0, 392
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 368
	beq	$a2, $a1, .LBB13_4
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	bnez	$a2, .LBB13_1
# %bb.3:
	ret
.LBB13_4:
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	alloc_restore_state_check, .Lfunc_end13-alloc_restore_state_check
                                        # -- End function
	.globl	alloc_restore_state             # -- Begin function alloc_restore_state
	.p2align	5
	.type	alloc_restore_state,@function
alloc_restore_state:                    # @alloc_restore_state
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s1, $a0, %pc_lo12(.L.str.3)
	b	.LBB14_2
	.p2align	4, , 16
.LBB14_1:                               # %._crit_edge32
                                        #   in Loop: Header=BB14_2 Depth=1
	ori	$a2, $zero, 392
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 400
	move	$a0, $s2
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	beq	$s2, $fp, .LBB14_6
.LBB14_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
                                        #     Child Loop BB14_5 Depth 2
	ld.d	$a0, $s0, 48
	vld	$vr0, $s0, 32
	ld.d	$s2, $s0, 368
	vst	$vr0, $a0, 32
	vld	$vr0, $s0, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $s0, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $s0, 360
	beqz	$a0, .LBB14_4
	.p2align	4, , 16
.LBB14_3:                               # %.lr.ph
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 0
	ld.w	$a2, $a0, 8
	ld.d	$a4, $s0, 72
	st.d	$a1, $s0, 360
	addi.w	$a2, $a2, 24
	ori	$a1, $zero, 1
	move	$a3, $s1
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 360
	bnez	$a0, .LBB14_3
.LBB14_4:                               # %._crit_edge
                                        #   in Loop: Header=BB14_2 Depth=1
	ld.d	$s3, $s0, 384
	beqz	$s3, .LBB14_1
	.p2align	4, , 16
.LBB14_5:                               # %.lr.ph31
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 8
	ld.wu	$a2, $s3, 16
	addi.d	$a1, $s3, 24
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB14_5
	b	.LBB14_1
.LBB14_6:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	alloc_restore_state, .Lfunc_end14-alloc_restore_state
                                        # -- End function
	.type	as_current,@object              # @as_current
	.bss
	.globl	as_current
	.p2align	3, 0x0
as_current:
	.space	392
	.size	as_current, 392

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"alloc_save_state"
	.size	.L.str.1, 17

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"alloc_save_change"
	.size	.L.str.2, 18

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"alloc_restore_state(malloc'ed)"
	.size	.L.str.3, 31

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"alloc chunk"
	.size	.L.str.5, 12

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"large object"
	.size	.L.str.6, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym as_current
