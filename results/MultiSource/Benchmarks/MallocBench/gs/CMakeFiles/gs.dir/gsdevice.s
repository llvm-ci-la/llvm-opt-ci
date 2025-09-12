	.file	"gsdevice.c"
	.text
	.globl	gx_default_open_device          # -- Begin function gx_default_open_device
	.p2align	5
	.type	gx_default_open_device,@function
gx_default_open_device:                 # @gx_default_open_device
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	gx_default_open_device, .Lfunc_end0-gx_default_open_device
                                        # -- End function
	.globl	gx_default_get_initial_matrix   # -- Begin function gx_default_get_initial_matrix
	.p2align	5
	.type	gx_default_get_initial_matrix,@function
gx_default_get_initial_matrix:          # @gx_default_get_initial_matrix
# %bb.0:
	fld.s	$fa0, $a0, 32
	lu12i.w	$a2, 272640
	movgr2fr.w	$fa1, $a2
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	st.w	$zero, $a1, 16
	st.w	$zero, $a1, 32
	fld.s	$fa0, $a0, 36
	lu12i.w	$a2, -251648
	lu32i.d	$a2, 0
	movgr2fr.w	$fa1, $a2
	ld.w	$a0, $a0, 28
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 48
	st.w	$zero, $a1, 64
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $a1, 80
	ret
.Lfunc_end1:
	.size	gx_default_get_initial_matrix, .Lfunc_end1-gx_default_get_initial_matrix
                                        # -- End function
	.globl	gx_default_sync_output          # -- Begin function gx_default_sync_output
	.p2align	5
	.type	gx_default_sync_output,@function
gx_default_sync_output:                 # @gx_default_sync_output
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	gx_default_sync_output, .Lfunc_end2-gx_default_sync_output
                                        # -- End function
	.globl	gx_default_output_page          # -- Begin function gx_default_output_page
	.p2align	5
	.type	gx_default_output_page,@function
gx_default_output_page:                 # @gx_default_output_page
# %bb.0:
	ld.d	$a1, $a0, 8
	ld.d	$a1, $a1, 16
	jr	$a1
.Lfunc_end3:
	.size	gx_default_output_page, .Lfunc_end3-gx_default_output_page
                                        # -- End function
	.globl	gx_default_close_device         # -- Begin function gx_default_close_device
	.p2align	5
	.type	gx_default_close_device,@function
gx_default_close_device:                # @gx_default_close_device
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	gx_default_close_device, .Lfunc_end4-gx_default_close_device
                                        # -- End function
	.globl	gx_default_map_rgb_color        # -- Begin function gx_default_map_rgb_color
	.p2align	5
	.type	gx_default_map_rgb_color,@function
gx_default_map_rgb_color:               # @gx_default_map_rgb_color
# %bb.0:
	sltu	$a0, $a2, $a1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	sltu	$a1, $a3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a3, $a1
	or	$a0, $a0, $a1
	ret
.Lfunc_end5:
	.size	gx_default_map_rgb_color, .Lfunc_end5-gx_default_map_rgb_color
                                        # -- End function
	.globl	gx_default_map_color_rgb        # -- Begin function gx_default_map_color_rgb
	.p2align	5
	.type	gx_default_map_color_rgb,@function
gx_default_map_color_rgb:               # @gx_default_map_color_rgb
# %bb.0:
	st.h	$a1, $a2, 4
	st.h	$a1, $a2, 2
	st.h	$a1, $a2, 0
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	gx_default_map_color_rgb, .Lfunc_end6-gx_default_map_color_rgb
                                        # -- End function
	.globl	null_fill_rectangle             # -- Begin function null_fill_rectangle
	.p2align	5
	.type	null_fill_rectangle,@function
null_fill_rectangle:                    # @null_fill_rectangle
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	null_fill_rectangle, .Lfunc_end7-null_fill_rectangle
                                        # -- End function
	.globl	null_tile_rectangle             # -- Begin function null_tile_rectangle
	.p2align	5
	.type	null_tile_rectangle,@function
null_tile_rectangle:                    # @null_tile_rectangle
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	null_tile_rectangle, .Lfunc_end8-null_tile_rectangle
                                        # -- End function
	.globl	null_copy_mono                  # -- Begin function null_copy_mono
	.p2align	5
	.type	null_copy_mono,@function
null_copy_mono:                         # @null_copy_mono
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	null_copy_mono, .Lfunc_end9-null_copy_mono
                                        # -- End function
	.globl	null_copy_color                 # -- Begin function null_copy_color
	.p2align	5
	.type	null_copy_color,@function
null_copy_color:                        # @null_copy_color
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	null_copy_color, .Lfunc_end10-null_copy_color
                                        # -- End function
	.globl	null_draw_line                  # -- Begin function null_draw_line
	.p2align	5
	.type	null_draw_line,@function
null_draw_line:                         # @null_draw_line
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end11:
	.size	null_draw_line, .Lfunc_end11-null_draw_line
                                        # -- End function
	.globl	null_fill_trapezoid             # -- Begin function null_fill_trapezoid
	.p2align	5
	.type	null_fill_trapezoid,@function
null_fill_trapezoid:                    # @null_fill_trapezoid
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	null_fill_trapezoid, .Lfunc_end12-null_fill_trapezoid
                                        # -- End function
	.globl	null_tile_trapezoid             # -- Begin function null_tile_trapezoid
	.p2align	5
	.type	null_tile_trapezoid,@function
null_tile_trapezoid:                    # @null_tile_trapezoid
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	null_tile_trapezoid, .Lfunc_end13-null_tile_trapezoid
                                        # -- End function
	.globl	gs_flushpage                    # -- Begin function gs_flushpage
	.p2align	5
	.type	gs_flushpage,@function
gs_flushpage:                           # @gs_flushpage
# %bb.0:
	ld.d	$a0, $a0, 448
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	ld.d	$a1, $a1, 16
	jr	$a1
.Lfunc_end14:
	.size	gs_flushpage, .Lfunc_end14-gs_flushpage
                                        # -- End function
	.globl	gs_copypage                     # -- Begin function gs_copypage
	.p2align	5
	.type	gs_copypage,@function
gs_copypage:                            # @gs_copypage
# %bb.0:
	ld.d	$a0, $a0, 448
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	ld.d	$a1, $a1, 24
	jr	$a1
.Lfunc_end15:
	.size	gs_copypage, .Lfunc_end15-gs_copypage
                                        # -- End function
	.globl	gs_copyscanlines                # -- Begin function gs_copyscanlines
	.p2align	5
	.type	gs_copyscanlines,@function
gs_copyscanlines:                       # @gs_copyscanlines
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(gs_device_is_memory)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_5
# %bb.1:
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(mem_copy_scan_lines)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$s1, .LBB16_3
# %bb.2:
	st.w	$s2, $s1, 0
.LBB16_3:
	beqz	$fp, .LBB16_6
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(mem_bytes_per_scan_line)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	mul.d	$a1, $a1, $s2
	st.w	$a1, $fp, 0
	b	.LBB16_7
.LBB16_5:
	addi.w	$a0, $zero, -21
	b	.LBB16_7
.LBB16_6:
	move	$a0, $zero
.LBB16_7:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end16:
	.size	gs_copyscanlines, .Lfunc_end16-gs_copyscanlines
                                        # -- End function
	.globl	gs_currentdevice                # -- Begin function gs_currentdevice
	.p2align	5
	.type	gs_currentdevice,@function
gs_currentdevice:                       # @gs_currentdevice
# %bb.0:
	ld.d	$a0, $a0, 448
	ld.d	$a0, $a0, 0
	ret
.Lfunc_end17:
	.size	gs_currentdevice, .Lfunc_end17-gs_currentdevice
                                        # -- End function
	.globl	gs_devicename                   # -- Begin function gs_devicename
	.p2align	5
	.type	gs_devicename,@function
gs_devicename:                          # @gs_devicename
# %bb.0:
	ld.d	$a0, $a0, 16
	ret
.Lfunc_end18:
	.size	gs_devicename, .Lfunc_end18-gs_devicename
                                        # -- End function
	.globl	gs_deviceparams                 # -- Begin function gs_deviceparams
	.p2align	5
	.type	gs_deviceparams,@function
gs_deviceparams:                        # @gs_deviceparams
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a4, $a0, 8
	move	$s0, $a3
	move	$s1, $a2
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.w	$a0, $fp, 24
	st.w	$a0, $s1, 0
	ld.w	$a0, $fp, 28
	st.w	$a0, $s0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end19:
	.size	gs_deviceparams, .Lfunc_end19-gs_deviceparams
                                        # -- End function
	.globl	gs_getdevice                    # -- Begin function gs_getdevice
	.p2align	5
	.type	gs_getdevice,@function
gs_getdevice:                           # @gs_getdevice
# %bb.0:
	bstrpick.d	$a1, $a0, 31, 0
	pcalau12i	$a0, %got_pc_hi20(gx_device_list)
	ld.d	$a2, $a0, %got_pc_lo12(gx_device_list)
	.p2align	4, , 16
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a2, 0
	beqz	$a1, .LBB20_3
# %bb.2:                                #   in Loop: Header=BB20_1 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB20_1
.LBB20_3:
	ret
.Lfunc_end20:
	.size	gs_getdevice, .Lfunc_end20-gs_getdevice
                                        # -- End function
	.globl	gs_makedevice                   # -- Begin function gs_makedevice
	.p2align	5
	.type	gs_makedevice,@function
gs_makedevice:                          # @gs_makedevice
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $a1
	ld.w	$a1, $a1, 0
	move	$s0, $a4
	move	$s1, $a3
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	jirl	$ra, $a5, 0
	beqz	$a0, .LBB21_4
# %bb.1:
	move	$s3, $a0
	addi.w	$a0, $zero, -15
	beqz	$s1, .LBB21_5
# %bb.2:
	beqz	$s0, .LBB21_5
# %bb.3:
	ld.w	$a2, $s2, 0
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.w	$s1, $s3, 24
	st.w	$s0, $s3, 28
	st.w	$zero, $s3, 52
	st.d	$s3, $fp, 0
	b	.LBB21_5
.LBB21_4:
	addi.w	$a0, $zero, -25
.LBB21_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end21:
	.size	gs_makedevice, .Lfunc_end21-gs_makedevice
                                        # -- End function
	.globl	gs_makeimagedevice              # -- Begin function gs_makeimagedevice
	.p2align	5
	.type	gs_makeimagedevice,@function
gs_makeimagedevice:                     # @gs_makeimagedevice
# %bb.0:
	move	$a7, $a0
	addi.w	$a0, $zero, -15
	beqz	$a2, .LBB22_31
# %bb.1:
	beqz	$a3, .LBB22_31
# %bb.2:
	addi.d	$sp, $sp, -896
	st.d	$ra, $sp, 888                   # 8-byte Folded Spill
	st.d	$fp, $sp, 880                   # 8-byte Folded Spill
	st.d	$s0, $sp, 872                   # 8-byte Folded Spill
	st.d	$s1, $sp, 864                   # 8-byte Folded Spill
	st.d	$s2, $sp, 856                   # 8-byte Folded Spill
	st.d	$s3, $sp, 848                   # 8-byte Folded Spill
	st.d	$s4, $sp, 840                   # 8-byte Folded Spill
	st.d	$s5, $sp, 832                   # 8-byte Folded Spill
	st.d	$s6, $sp, 824                   # 8-byte Folded Spill
	st.d	$s7, $sp, 816                   # 8-byte Folded Spill
	st.d	$s8, $sp, 808                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	blt	$s5, $a5, .LBB22_6
# %bb.3:
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a4, $zero, -32
	addi.w	$s3, $zero, -1
	beq	$a5, $a4, .LBB22_9
# %bb.4:
	addi.w	$a4, $zero, -24
	bne	$a5, $a4, .LBB22_30
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(mem_true24_color_device)
	ld.d	$s0, $a0, %got_pc_lo12(mem_true24_color_device)
	move	$fp, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	ori	$s6, $zero, 24
	b	.LBB22_25
.LBB22_6:
	ori	$t0, $zero, 2
	beq	$a5, $t0, .LBB22_10
# %bb.7:
	ori	$t0, $zero, 256
	bne	$a5, $t0, .LBB22_30
# %bb.8:
	ori	$s6, $zero, 8
	pcalau12i	$t0, %got_pc_hi20(mem_mapped_color_device)
	ld.d	$s0, $t0, %got_pc_lo12(mem_mapped_color_device)
	b	.LBB22_11
.LBB22_9:
	pcalau12i	$a0, %got_pc_hi20(mem_true32_color_device)
	ld.d	$s0, $a0, %got_pc_lo12(mem_true32_color_device)
	move	$fp, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	ori	$s6, $zero, 32
	b	.LBB22_25
.LBB22_10:
	pcalau12i	$t0, %got_pc_hi20(mem_mono_device)
	ld.d	$s0, $t0, %got_pc_lo12(mem_mono_device)
	ori	$s6, $zero, 1
.LBB22_11:                              # %.lr.ph.preheader
	move	$t0, $zero
	move	$s5, $zero
	alsl.w	$fp, $a5, $a5, 1
	addi.w	$s3, $zero, -1
	addi.d	$t1, $sp, 40
	lu12i.w	$t2, -349526
	ori	$t2, $t2, 2731
	lu32i.d	$t2, 0
	lu12i.w	$t3, -184550
	ori	$t3, $t3, 2556
	lu32i.d	$t3, 25165
	lu52i.d	$t3, $t3, -1035
	movgr2fr.d	$fa0, $t3
	lu12i.w	$t3, -444597
	ori	$t3, $t3, 3178
	lu32i.d	$t3, 1048
	lu52i.d	$t3, $t3, 1023
	movgr2fr.d	$fa1, $t3
	lu12i.w	$t3, 276464
	movgr2fr.w	$fa2, $t3
	vldi	$vr3, -928
	ori	$t3, $zero, 255
	move	$t4, $s3
	b	.LBB22_14
	.p2align	4, , 16
.LBB22_12:                              #   in Loop: Header=BB22_14 Depth=1
	ori	$s5, $zero, 1
.LBB22_13:                              #   in Loop: Header=BB22_14 Depth=1
	addi.w	$t0, $t0, 1
	addi.d	$a4, $a4, 4
	addi.d	$t1, $t1, 1
	beq	$fp, $t0, .LBB22_23
.LBB22_14:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a4, 0
	fcvt.d.s	$fa5, $fa4
	fcmp.clt.d	$fcc0, $fa5, $fa0
	bcnez	$fcc0, .LBB22_30
# %bb.15:                               # %.lr.ph
                                        #   in Loop: Header=BB22_14 Depth=1
	fcmp.clt.d	$fcc0, $fa1, $fa5
	bcnez	$fcc0, .LBB22_30
# %bb.16:                               #   in Loop: Header=BB22_14 Depth=1
	bstrpick.d	$t5, $t0, 31, 0
	mul.d	$t5, $t5, $t2
	srli.d	$t5, $t5, 33
	alsl.d	$t5, $t5, $t5, 1
	addi.w	$t6, $t5, 2
	fmul.s	$fa4, $fa4, $fa2
	fcvt.d.s	$fa4, $fa4
	fadd.d	$fa4, $fa4, $fa3
	ftintrz.l.d	$fa4, $fa4
	movfr2gr.d	$t5, $fa4
	st.b	$t5, $t1, 0
	bne	$t6, $t0, .LBB22_13
# %bb.17:                               #   in Loop: Header=BB22_14 Depth=1
	ld.bu	$t6, $t1, -1
	bne	$t6, $t5, .LBB22_12
# %bb.18:                               #   in Loop: Header=BB22_14 Depth=1
	ld.bu	$t6, $t1, -2
	bne	$t6, $t5, .LBB22_12
# %bb.19:                               #   in Loop: Header=BB22_14 Depth=1
	beq	$t5, $t3, .LBB22_22
# %bb.20:                               #   in Loop: Header=BB22_14 Depth=1
	bnez	$t5, .LBB22_13
# %bb.21:                               #   in Loop: Header=BB22_14 Depth=1
	addi.w	$s3, $t0, -2
	b	.LBB22_13
.LBB22_22:                              #   in Loop: Header=BB22_14 Depth=1
	addi.w	$t4, $t0, -2
	b	.LBB22_13
.LBB22_23:                              # %._crit_edge
	bltz	$t4, .LBB22_30
# %bb.24:                               # %._crit_edge
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	bltz	$s3, .LBB22_30
.LBB22_25:                              # %.thread
	move	$s2, $a1
	move	$s7, $a2
	move	$s4, $a3
	ld.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	move	$s8, $a6
	jirl	$ra, $a6, 0
	move	$s1, $a0
	addi.w	$a0, $zero, -25
	beqz	$s1, .LBB22_30
# %bb.26:
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a2, $zero, 200
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 56
	ori	$a2, $zero, 96
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.w	$s7, $s1, 24
	st.w	$s4, $s1, 28
	st.w	$s5, $s1, 40
	st.w	$s6, $s1, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gx_device_memory_bitmap_size)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	srli.d	$a0, $a0, 32
	beqz	$a0, .LBB22_28
# %bb.27:
	addi.w	$a0, $zero, -13
	b	.LBB22_30
.LBB22_28:
	add.w	$a1, $fp, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	jirl	$ra, $s8, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB22_30
# %bb.29:
	st.d	$a1, $s1, 160
	sltu	$a0, $zero, $s3
	sub.d	$a0, $zero, $a0
	st.w	$a0, $s1, 184
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $s1, 188
	add.d	$a0, $a1, $s0
	st.d	$a0, $s1, 192
	addi.d	$a1, $sp, 40
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.w	$zero, $s1, 52
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
.LBB22_30:
	ld.d	$s8, $sp, 808                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 816                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 824                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 832                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 872                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 880                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 888                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 896
.LBB22_31:                              # %.critedge
	ret
.Lfunc_end22:
	.size	gs_makeimagedevice, .Lfunc_end22-gs_makeimagedevice
                                        # -- End function
	.globl	gs_setdevice                    # -- Begin function gs_setdevice
	.p2align	5
	.type	gs_setdevice,@function
gs_setdevice:                           # @gs_setdevice
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$s1, $a1, 52
	ld.d	$s2, $a0, 448
	bnez	$s1, .LBB23_3
# %bb.1:
	ld.d	$a0, $s0, 8
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bltz	$a0, .LBB23_8
# %bb.2:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 52
.LBB23_3:
	ld.d	$a0, $s0, 8
	ld.d	$a4, $a0, 40
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	ld.d	$a1, $s0, 8
	ld.d	$a4, $a1, 40
	ld.hu	$a1, $s0, 44
	st.d	$a0, $s2, 24
	move	$a0, $s0
	move	$a2, $a1
	move	$a3, $a1
	jirl	$ra, $a4, 0
	st.d	$a0, $s2, 16
	st.d	$s0, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_initmatrix)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB23_8
# %bb.4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_initclip)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB23_8
# %bb.5:
	bnez	$s1, .LBB23_7
# %bb.6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_erasepage)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB23_8
.LBB23_7:
	move	$a0, $zero
.LBB23_8:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end23:
	.size	gs_setdevice, .Lfunc_end23-gs_setdevice
                                        # -- End function
	.globl	gs_nulldevice                   # -- Begin function gs_nulldevice
	.p2align	5
	.type	gs_nulldevice,@function
gs_nulldevice:                          # @gs_nulldevice
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(gx_device_null_p)
	ld.d	$s0, $a1, %pc_lo12(gx_device_null_p)
	move	$fp, $a0
	ld.w	$s1, $s0, 52
	ld.d	$s2, $a0, 448
	bnez	$s1, .LBB24_3
# %bb.1:
	ld.d	$a0, $s0, 8
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bltz	$a0, .LBB24_7
# %bb.2:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 52
.LBB24_3:
	ld.d	$a0, $s0, 8
	ld.d	$a4, $a0, 40
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	ld.d	$a1, $s0, 8
	ld.d	$a4, $a1, 40
	ld.hu	$a1, $s0, 44
	st.d	$a0, $s2, 24
	move	$a0, $s0
	move	$a2, $a1
	move	$a3, $a1
	jirl	$ra, $a4, 0
	st.d	$a0, $s2, 16
	st.d	$s0, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_initmatrix)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB24_7
# %bb.4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_initclip)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB24_7
# %bb.5:
	bltz	$a0, .LBB24_7
# %bb.6:
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(gs_erasepage)
	jr	$t8
.LBB24_7:                               # %gs_setdevice.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	gs_nulldevice, .Lfunc_end24-gs_nulldevice
                                        # -- End function
	.globl	gx_device_no_output             # -- Begin function gx_device_no_output
	.p2align	5
	.type	gx_device_no_output,@function
gx_device_no_output:                    # @gx_device_no_output
# %bb.0:
	ld.d	$a0, $a0, 448
	pcalau12i	$a1, %pc_hi20(null_device)
	addi.d	$a1, $a1, %pc_lo12(null_device)
	st.d	$a1, $a0, 0
	ret
.Lfunc_end25:
	.size	gx_device_no_output, .Lfunc_end25-gx_device_no_output
                                        # -- End function
	.type	null_procs,@object              # @null_procs
	.data
	.globl	null_procs
	.p2align	3, 0x0
null_procs:
	.dword	gx_default_open_device
	.dword	gx_default_get_initial_matrix
	.dword	gx_default_sync_output
	.dword	gx_default_output_page
	.dword	gx_default_close_device
	.dword	gx_default_map_rgb_color
	.dword	gx_default_map_color_rgb
	.dword	null_fill_rectangle
	.dword	null_tile_rectangle
	.dword	null_copy_mono
	.dword	null_copy_color
	.dword	null_draw_line
	.dword	null_fill_trapezoid
	.dword	null_tile_trapezoid
	.size	null_procs, 112

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"null"
	.size	.L.str, 5

	.type	null_device,@object             # @null_device
	.data
	.globl	null_device
	.p2align	3, 0x0
null_device:
	.word	32                              # 0x20
	.space	4
	.dword	null_procs
	.dword	.L.str
	.word	16383                           # 0x3fff
	.word	16383                           # 0x3fff
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0                               # 0x0
	.half	1                               # 0x1
	.space	2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	null_device, 56

	.type	gx_device_null_p,@object        # @gx_device_null_p
	.globl	gx_device_null_p
	.p2align	3, 0x0
gx_device_null_p:
	.dword	null_device
	.size	gx_device_null_p, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_makedevice"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"gs_makeimagedevice(device)"
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"gs_makeimagedevice(bits)"
	.size	.L.str.3, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gx_default_open_device
	.addrsig_sym gx_default_get_initial_matrix
	.addrsig_sym gx_default_sync_output
	.addrsig_sym gx_default_output_page
	.addrsig_sym gx_default_close_device
	.addrsig_sym gx_default_map_rgb_color
	.addrsig_sym gx_default_map_color_rgb
	.addrsig_sym null_fill_rectangle
	.addrsig_sym null_tile_rectangle
	.addrsig_sym null_copy_mono
	.addrsig_sym null_copy_color
	.addrsig_sym null_draw_line
	.addrsig_sym null_fill_trapezoid
	.addrsig_sym null_tile_trapezoid
	.addrsig_sym null_procs
	.addrsig_sym null_device
