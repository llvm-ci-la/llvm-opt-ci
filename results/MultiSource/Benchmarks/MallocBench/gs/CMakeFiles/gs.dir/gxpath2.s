	.file	"gxpath2.c"
	.text
	.globl	gx_path_current_point           # -- Begin function gx_path_current_point
	.p2align	5
	.type	gx_path_current_point,@function
gx_path_current_point:                  # @gx_path_current_point
# %bb.0:
	ld.bu	$a2, $a0, 136
	beqz	$a2, .LBB0_2
# %bb.1:
	vld	$vr0, $a0, 120
	move	$a0, $zero
	vst	$vr0, $a1, 0
	ret
.LBB0_2:
	addi.w	$a0, $zero, -14
	ret
.Lfunc_end0:
	.size	gx_path_current_point, .Lfunc_end0-gx_path_current_point
                                        # -- End function
	.globl	gx_path_bbox                    # -- Begin function gx_path_bbox
	.p2align	5
	.type	gx_path_bbox,@function
gx_path_bbox:                           # @gx_path_bbox
# %bb.0:
	ld.d	$a2, $a0, 88
	beqz	$a2, .LBB1_5
# %bb.1:
	ld.d	$a3, $a0, 96
	ld.d	$a4, $a0, 48
	ld.d	$a3, $a3, 40
	beq	$a4, $a3, .LBB1_7
# %bb.2:
	beqz	$a4, .LBB1_8
# %bb.3:
	vld	$vr0, $a0, 16
	ld.d	$a2, $a4, 8
	vld	$vr1, $a0, 32
	bnez	$a2, .LBB1_9
.LBB1_4:                                # %._crit_edge
	vst	$vr0, $a0, 16
	vst	$vr1, $a0, 32
	st.d	$a3, $a0, 48
	vst	$vr0, $a1, 0
	vst	$vr1, $a1, 16
	move	$a0, $zero
	ret
.LBB1_5:
	ld.bu	$a2, $a0, 136
	beqz	$a2, .LBB1_13
# %bb.6:
	ld.d	$a3, $a0, 120
	ld.d	$a0, $a0, 128
	st.d	$a3, $a1, 0
	st.d	$a0, $a1, 8
	st.d	$a3, $a1, 16
	st.d	$a0, $a1, 24
	move	$a0, $zero
	ret
.LBB1_7:
	vld	$vr0, $a0, 32
	vst	$vr0, $a1, 16
	vld	$vr0, $a0, 16
	vst	$vr0, $a1, 0
	move	$a0, $zero
	ret
.LBB1_8:                                # %.thread
	vld	$vr0, $a2, 24
	vori.b	$vr1, $vr0, 0
.LBB1_9:                                # %.lr.ph.preheader
	ori	$a4, $zero, 3
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=1
	vld	$vr2, $a2, 24
	ld.d	$a2, $a2, 8
	vslt.d	$vr3, $vr2, $vr0
	vmax.d	$vr4, $vr2, $vr1
	vbitsel.v	$vr1, $vr4, $vr1, $vr3
	vmin.d	$vr0, $vr2, $vr0
	beqz	$a2, .LBB1_4
.LBB1_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 16
	bne	$a5, $a4, .LBB1_10
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	vld	$vr2, $a2, 40
	vslt.d	$vr3, $vr2, $vr0
	vld	$vr4, $a2, 56
	vmax.d	$vr5, $vr2, $vr1
	vbitsel.v	$vr1, $vr5, $vr1, $vr3
	vmin.d	$vr0, $vr2, $vr0
	vslt.d	$vr2, $vr4, $vr0
	vmax.d	$vr3, $vr4, $vr1
	vbitsel.v	$vr1, $vr3, $vr1, $vr2
	vmin.d	$vr0, $vr4, $vr0
	b	.LBB1_10
.LBB1_13:
	addi.w	$a0, $zero, -14
	ret
.Lfunc_end1:
	.size	gx_path_bbox, .Lfunc_end1-gx_path_bbox
                                        # -- End function
	.globl	gx_path_has_curves              # -- Begin function gx_path_has_curves
	.p2align	5
	.type	gx_path_has_curves,@function
gx_path_has_curves:                     # @gx_path_has_curves
# %bb.0:
	ld.w	$a0, $a0, 112
	sltu	$a0, $zero, $a0
	ret
.Lfunc_end2:
	.size	gx_path_has_curves, .Lfunc_end2-gx_path_has_curves
                                        # -- End function
	.globl	gx_path_is_void                 # -- Begin function gx_path_is_void
	.p2align	5
	.type	gx_path_is_void,@function
gx_path_is_void:                        # @gx_path_is_void
# %bb.0:
	ld.w	$a0, $a0, 108
	sltui	$a0, $a0, 1
	ret
.Lfunc_end3:
	.size	gx_path_is_void, .Lfunc_end3-gx_path_is_void
                                        # -- End function
	.globl	gx_path_is_rectangle            # -- Begin function gx_path_is_rectangle
	.p2align	5
	.type	gx_path_is_rectangle,@function
gx_path_is_rectangle:                   # @gx_path_is_rectangle
# %bb.0:
	ld.w	$a2, $a0, 104
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB4_13
# %bb.1:
	ld.w	$a2, $a0, 108
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB4_13
# %bb.2:
	ld.w	$a2, $a0, 112
	bnez	$a2, .LBB4_13
# %bb.3:
	ld.d	$a0, $a0, 88
	ld.d	$a2, $a0, 40
	ld.w	$a2, $a2, 16
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB4_13
# %bb.4:
	ld.d	$a2, $a0, 8
	ld.d	$a4, $a2, 8
	vld	$vr0, $a0, 24
	vld	$vr1, $a4, 24
	ld.d	$a3, $a2, 24
	ld.d	$a0, $a4, 8
	vpickve2gr.d	$a4, $vr0, 0
	bne	$a4, $a3, .LBB4_8
# %bb.5:
	ld.d	$a5, $a2, 32
	vpickve2gr.d	$a6, $vr1, 1
	bne	$a5, $a6, .LBB4_8
# %bb.6:
	ld.d	$a5, $a0, 24
	vpickve2gr.d	$a6, $vr1, 0
	bne	$a6, $a5, .LBB4_8
# %bb.7:
	ld.d	$a5, $a0, 32
	vpickve2gr.d	$a6, $vr0, 1
	beq	$a5, $a6, .LBB4_12
.LBB4_8:
	ld.d	$a5, $a0, 24
	bne	$a4, $a5, .LBB4_13
# %bb.9:
	ld.d	$a4, $a0, 32
	vpickve2gr.d	$a5, $vr1, 1
	move	$a0, $zero
	bne	$a4, $a5, .LBB4_14
# %bb.10:
	vpickve2gr.d	$a4, $vr1, 0
	bne	$a4, $a3, .LBB4_14
# %bb.11:
	ld.d	$a0, $a2, 32
	vpickve2gr.d	$a2, $vr0, 1
	bne	$a0, $a2, .LBB4_13
.LBB4_12:                               # %.critedge.sink.split
	vmin.d	$vr2, $vr0, $vr1
	vst	$vr2, $a1, 0
	vmax.d	$vr0, $vr0, $vr1
	vst	$vr0, $a1, 16
	ori	$a0, $zero, 1
	ret
.LBB4_13:
	move	$a0, $zero
.LBB4_14:                               # %.critedge
	ret
.Lfunc_end4:
	.size	gx_path_is_rectangle, .Lfunc_end4-gx_path_is_rectangle
                                        # -- End function
	.globl	gx_cpath_box_for_check          # -- Begin function gx_cpath_box_for_check
	.p2align	5
	.type	gx_cpath_box_for_check,@function
gx_cpath_box_for_check:                 # @gx_cpath_box_for_check
# %bb.0:
	vld	$vr0, $a0, 72
	vst	$vr0, $a1, 16
	vld	$vr0, $a0, 56
	vst	$vr0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	gx_cpath_box_for_check, .Lfunc_end5-gx_cpath_box_for_check
                                        # -- End function
	.globl	gx_cpath_includes_rectangle     # -- Begin function gx_cpath_includes_rectangle
	.p2align	5
	.type	gx_cpath_includes_rectangle,@function
gx_cpath_includes_rectangle:            # @gx_cpath_includes_rectangle
# %bb.0:
	ld.d	$a5, $a0, 56
	bge	$a3, $a1, .LBB6_3
# %bb.1:
	bge	$a3, $a5, .LBB6_5
# %bb.2:
	move	$a0, $zero
	ret
.LBB6_3:
	bge	$a1, $a5, .LBB6_7
# %bb.4:
	move	$a0, $zero
	ret
.LBB6_5:
	ld.d	$a3, $a0, 72
	bge	$a3, $a1, .LBB6_9
# %bb.6:
	move	$a0, $zero
	ret
.LBB6_7:
	ld.d	$a1, $a0, 72
	bge	$a1, $a3, .LBB6_9
# %bb.8:
	move	$a0, $zero
	ret
.LBB6_9:
	ld.d	$a1, $a0, 64
	bge	$a4, $a2, .LBB6_12
# %bb.10:
	move	$a3, $a2
	bge	$a4, $a1, .LBB6_14
# %bb.11:
	move	$a0, $zero
	ret
.LBB6_12:
	move	$a3, $a4
	bge	$a2, $a1, .LBB6_14
# %bb.13:
	move	$a0, $zero
	ret
.LBB6_14:                               # %.sink.split
	ld.d	$a0, $a0, 80
	slt	$a0, $a0, $a3
	xori	$a0, $a0, 1
	ret
.Lfunc_end6:
	.size	gx_cpath_includes_rectangle, .Lfunc_end6-gx_cpath_includes_rectangle
                                        # -- End function
	.globl	gx_path_copy                    # -- Begin function gx_path_copy
	.p2align	5
	.type	gx_path_copy,@function
gx_path_copy:                           # @gx_path_copy
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
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	ori	$a2, $zero, 88
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 88
	ld.d	$a0, $fp, 96
	vld	$vr0, $fp, 104
	vld	$vr1, $fp, 120
	ld.d	$s2, $fp, 136
	st.d	$a0, $sp, 8
	vst	$vr0, $sp, 16
	vst	$vr1, $sp, 32
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(gx_path_init)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB7_10
# %bb.1:                                # %.lr.ph.i.preheader
	addi.d	$s3, $fp, 96
	ori	$s4, $zero, 3
	pcalau12i	$a0, %pc_hi20(.LJTI7_0)
	addi.d	$s5, $a0, %pc_lo12(.LJTI7_0)
	move	$s6, $s1
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_5 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_path_close_subpath)
	jirl	$ra, $ra, 0
.LBB7_3:                                #   in Loop: Header=BB7_5 Depth=1
	bnez	$a0, .LBB7_12
.LBB7_4:                                # %.thread.i
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$s6, $s6, 8
	beqz	$s6, .LBB7_10
.LBB7_5:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, 16
	bltu	$s4, $a0, .LBB7_4
# %bb.6:                                # %.lr.ph.i
                                        #   in Loop: Header=BB7_5 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s5, $a0
	add.d	$a0, $s5, $a0
	jr	$a0
.LBB7_7:                                #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a1, $s6, 24
	ld.d	$a2, $s6, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_8:                                #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a1, $s6, 40
	ld.d	$a2, $s6, 48
	ld.d	$a3, $s6, 56
	ld.d	$a4, $s6, 64
	ld.d	$a5, $s6, 24
	ld.d	$a6, $s6, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_path_add_curve)
	jirl	$ra, $ra, 0
	b	.LBB7_3
.LBB7_9:                                #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a1, $s6, 24
	ld.d	$a2, $s6, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	b	.LBB7_3
.LBB7_10:                               # %._crit_edge.i
	vld	$vr0, $sp, 32
	move	$a0, $zero
	vst	$vr0, $s0, 120
.LBB7_11:                               # %copy_path.exit
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
.LBB7_12:
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	beq	$s0, $fp, .LBB7_14
# %bb.13:
	move	$a0, $s4
	b	.LBB7_11
.LBB7_14:
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	vld	$vr0, $sp, 16
	vld	$vr1, $sp, 32
	st.d	$s1, $fp, 88
	st.d	$a0, $s3, 0
	vst	$vr0, $s3, 8
	vst	$vr1, $s3, 24
	st.d	$s2, $fp, 136
	move	$a0, $s4
	b	.LBB7_11
.Lfunc_end7:
	.size	gx_path_copy, .Lfunc_end7-gx_path_copy
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_7-.LJTI7_0
	.word	.LBB7_9-.LJTI7_0
	.word	.LBB7_2-.LJTI7_0
	.word	.LBB7_8-.LJTI7_0
                                        # -- End function
	.text
	.globl	copy_path                       # -- Begin function copy_path
	.p2align	5
	.type	copy_path,@function
copy_path:                              # @copy_path
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 56
	ori	$a2, $zero, 88
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 88
	ld.d	$a0, $fp, 96
	vld	$vr0, $fp, 104
	vld	$vr1, $fp, 120
	ld.d	$s3, $fp, 136
	st.d	$a0, $sp, 16
	vst	$vr0, $sp, 24
	vst	$vr1, $sp, 40
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(gx_path_init)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB8_10
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s4, $fp, 96
	ori	$s5, $zero, 3
	pcalau12i	$a0, %pc_hi20(.LJTI8_0)
	addi.d	$s6, $a0, %pc_lo12(.LJTI8_0)
	move	$s7, $s2
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_5 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_path_close_subpath)
	jirl	$ra, $ra, 0
.LBB8_3:                                #   in Loop: Header=BB8_5 Depth=1
	bnez	$a0, .LBB8_12
.LBB8_4:                                # %.thread
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$s7, $s7, 8
	beqz	$s7, .LBB8_10
.LBB8_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s7, 16
	bltu	$s5, $a0, .LBB8_4
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB8_5 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s6, $a0
	add.d	$a0, $s6, $a0
	jr	$a0
.LBB8_7:                                #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a1, $s7, 24
	ld.d	$a2, $s7, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_8:                                #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a1, $s7, 40
	ld.d	$a2, $s7, 48
	ld.d	$a3, $s7, 56
	ld.d	$a4, $s7, 64
	ld.d	$a5, $s7, 24
	ld.d	$a6, $s7, 32
	move	$a0, $s0
	jirl	$ra, $s1, 0
	b	.LBB8_3
.LBB8_9:                                #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a1, $s7, 24
	ld.d	$a2, $s7, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	b	.LBB8_3
.LBB8_10:                               # %._crit_edge
	vld	$vr0, $sp, 40
	move	$a0, $zero
	vst	$vr0, $s0, 120
.LBB8_11:
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB8_12:
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	beq	$s0, $fp, .LBB8_14
# %bb.13:
	move	$a0, $s1
	b	.LBB8_11
.LBB8_14:
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	vld	$vr0, $sp, 24
	vld	$vr1, $sp, 40
	st.d	$s2, $fp, 88
	st.d	$a0, $s4, 0
	vst	$vr0, $s4, 8
	vst	$vr1, $s4, 24
	st.d	$s3, $fp, 136
	move	$a0, $s1
	b	.LBB8_11
.Lfunc_end8:
	.size	copy_path, .Lfunc_end8-copy_path
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.word	.LBB8_7-.LJTI8_0
	.word	.LBB8_9-.LJTI8_0
	.word	.LBB8_2-.LJTI8_0
	.word	.LBB8_8-.LJTI8_0
                                        # -- End function
	.text
	.globl	gx_path_merge                   # -- Begin function gx_path_merge
	.p2align	5
	.type	gx_path_merge,@function
gx_path_merge:                          # @gx_path_merge
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.d	$a1, $a1, 96
	move	$fp, $a0
	beqz	$a1, .LBB9_3
# %bb.1:
	ld.d	$a0, $fp, 96
	ld.d	$a0, $a0, 40
	ld.d	$a1, $a1, 40
	beq	$a0, $a1, .LBB9_3
# %bb.2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
.LBB9_3:
	ori	$a2, $zero, 144
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 138
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	gx_path_merge, .Lfunc_end9-gx_path_merge
                                        # -- End function
	.globl	gx_path_translate               # -- Begin function gx_path_translate
	.p2align	5
	.type	gx_path_translate,@function
gx_path_translate:                      # @gx_path_translate
# %bb.0:
	vld	$vr1, $a0, 16
	vinsgr2vr.d	$vr0, $a1, 0
	vinsgr2vr.d	$vr0, $a2, 1
	vadd.d	$vr1, $vr1, $vr0
	vld	$vr2, $a0, 32
	vst	$vr1, $a0, 16
	vld	$vr1, $a0, 120
	ld.d	$a1, $a0, 88
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr2, $a0, 32
	vadd.d	$vr1, $vr1, $vr0
	vst	$vr1, $a0, 120
	beqz	$a1, .LBB10_5
# %bb.1:                                # %.lr.ph.preheader
	ori	$a0, $zero, 3
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               #   in Loop: Header=BB10_3 Depth=1
	vld	$vr1, $a1, 24
	vadd.d	$vr1, $vr1, $vr0
	vst	$vr1, $a1, 24
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB10_5
.LBB10_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 16
	bne	$a2, $a0, .LBB10_2
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	vld	$vr1, $a1, 40
	vld	$vr2, $a1, 56
	vadd.d	$vr1, $vr1, $vr0
	vst	$vr1, $a1, 40
	vadd.d	$vr1, $vr2, $vr0
	vst	$vr1, $a1, 56
	b	.LBB10_2
.LBB10_5:                               # %._crit_edge
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	gx_path_translate, .Lfunc_end10-gx_path_translate
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gx_path_flatten
.LCPI11_0:
	.dword	0x40b0000000000000              # double 4096
.LCPI11_1:
	.dword	0x3fdccccccccccccd              # double 0.45000000000000001
	.text
	.globl	gx_path_flatten
	.p2align	5
	.type	gx_path_flatten,@function
gx_path_flatten:                        # @gx_path_flatten
# %bb.0:
	pcalau12i	$a2, %pc_hi20(.LCPI11_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI11_0)
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	ftintrz.l.s	$fa1, $fa0
	pcalau12i	$a2, %pc_hi20(.LCPI11_1)
	fld.d	$fa2, $a2, %pc_lo12(.LCPI11_1)
	pcalau12i	$a2, %pc_hi20(scaled_flat)
	fst.d	$fa1, $a2, %pc_lo12(scaled_flat)
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fa0, $fa0
	pcalau12i	$a2, %pc_hi20(scaled_flat_sq)
	fst.s	$fa0, $a2, %pc_lo12(scaled_flat_sq)
	pcalau12i	$a2, %pc_hi20(flatten_curve)
	addi.d	$a2, $a2, %pc_lo12(flatten_curve)
	pcaddu18i	$t8, %call36(copy_path)
	jr	$t8
.Lfunc_end11:
	.size	gx_path_flatten, .Lfunc_end11-gx_path_flatten
                                        # -- End function
	.globl	flatten_curve                   # -- Begin function flatten_curve
	.p2align	5
	.type	flatten_curve,@function
flatten_curve:                          # @flatten_curve
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
	move	$fp, $a0
	ld.d	$s6, $a0, 120
	ld.d	$s7, $a0, 128
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a2
	move	$s5, $a1
	pcalau12i	$a0, %pc_hi20(scaled_flat_sq)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(scaled_flat)
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_1:                               #   in Loop: Header=BB12_3 Depth=1
	add.d	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	xor	$a1, $a1, $a2
	sub.d	$a1, $a1, $a2
	bgeu	$a0, $a1, .LBB12_11
.LBB12_2:                               #   in Loop: Header=BB12_3 Depth=1
	add.d	$a0, $s5, $s6
	srai.d	$a1, $a0, 1
	add.d	$a0, $s4, $s7
	srai.d	$a2, $a0, 1
	add.d	$a0, $s5, $s3
	srai.d	$a0, $a0, 1
	add.d	$a3, $s4, $s2
	srai.d	$a5, $a3, 1
	add.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 1
	add.d	$a4, $a2, $a5
	srai.d	$a4, $a4, 1
	add.d	$a6, $s3, $s1
	srai.d	$s3, $a6, 1
	add.d	$a6, $s2, $s0
	srai.d	$s2, $a6, 1
	add.d	$a0, $a0, $s3
	srai.d	$s5, $a0, 1
	add.d	$a0, $a5, $s2
	srai.d	$s4, $a0, 1
	add.d	$a0, $a3, $s5
	srai.d	$s6, $a0, 1
	add.d	$a0, $a4, $s4
	srai.d	$s7, $a0, 1
	move	$a0, $fp
	move	$a5, $s6
	move	$a6, $s7
	pcaddu18i	$ra, %call36(flatten_curve)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB12_10
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $s1, $s6
	sub.d	$a1, $s0, $s7
	srai.d	$a2, $a0, 63
	xor	$a3, $a0, $a2
	sub.d	$a2, $a3, $a2
	srai.d	$a3, $a1, 63
	xor	$a4, $a1, $a3
	sub.d	$a3, $a4, $a3
	bgeu	$a2, $a3, .LBB12_6
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	fld.s	$fa2, $a0, %pc_lo12(scaled_flat_sq)
	fdiv.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa0, $fa0
	ld.d	$a0, $s8, %pc_lo12(scaled_flat)
	fmul.s	$fa1, $fa1, $fa2
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa1
	add.d	$a0, $a0, $a1
	sub.d	$a1, $s4, $s7
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa1
	sub.d	$a2, $s6, $s5
	add.d	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	xor	$a1, $a1, $a2
	sub.d	$a1, $a1, $a2
	blt	$a0, $a1, .LBB12_2
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	sub.d	$a1, $s2, $s7
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	sub.d	$a2, $s6, $s3
	b	.LBB12_1
	.p2align	4, , 16
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=1
	beq	$s1, $s6, .LBB12_9
# %bb.7:                                #   in Loop: Header=BB12_3 Depth=1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	fld.s	$fa2, $a0, %pc_lo12(scaled_flat_sq)
	fdiv.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa0, $fa0
	ld.d	$a0, $s8, %pc_lo12(scaled_flat)
	fmul.s	$fa1, $fa1, $fa2
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa1
	add.d	$a0, $a0, $a1
	sub.d	$a1, $s5, $s6
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa1
	sub.d	$a2, $s7, $s4
	add.d	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	xor	$a1, $a1, $a2
	sub.d	$a1, $a1, $a2
	blt	$a0, $a1, .LBB12_2
# %bb.8:                                #   in Loop: Header=BB12_3 Depth=1
	sub.d	$a1, $s3, $s6
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	sub.d	$a2, $s7, $s2
	b	.LBB12_1
.LBB12_9:
	move	$a0, $zero
.LBB12_10:                              # %.loopexit
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
.LBB12_11:                              # %.loopexit.sink.split
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
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
	pcaddu18i	$t8, %call36(gx_path_add_line)
	jr	$t8
.Lfunc_end12:
	.size	flatten_curve, .Lfunc_end12-flatten_curve
                                        # -- End function
	.type	scaled_flat,@object             # @scaled_flat
	.bss
	.globl	scaled_flat
	.p2align	3, 0x0
scaled_flat:
	.dword	0                               # 0x0
	.size	scaled_flat, 8

	.type	scaled_flat_sq,@object          # @scaled_flat_sq
	.globl	scaled_flat_sq
	.p2align	2, 0x0
scaled_flat_sq:
	.word	0x00000000                      # float 0
	.size	scaled_flat_sq, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym flatten_curve
