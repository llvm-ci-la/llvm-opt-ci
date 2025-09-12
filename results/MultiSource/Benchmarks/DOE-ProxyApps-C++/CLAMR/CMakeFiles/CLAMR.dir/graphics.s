	.file	"graphics.c"
	.text
	.globl	init_graphics_output            # -- Begin function init_graphics_output
	.p2align	5
	.type	init_graphics_output,@function
init_graphics_output:                   # @init_graphics_output
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(graphics_xmax)
	fld.s	$fa0, $a0, %pc_lo12(graphics_xmax)
	pcalau12i	$a0, %pc_hi20(graphics_xmin)
	fld.s	$fa1, $a0, %pc_lo12(graphics_xmin)
	fsub.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fa1, $a0
	pcalau12i	$a0, %pc_hi20(graphics_ymax)
	fld.s	$fa2, $a0, %pc_lo12(graphics_ymax)
	pcalau12i	$a0, %pc_hi20(graphics_ymin)
	fld.s	$fa3, $a0, %pc_lo12(graphics_ymin)
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a0, %pc_hi20(xconversion)
	fst.d	$fa0, $a0, %pc_lo12(xconversion)
	fsub.s	$fa0, $fa2, $fa3
	fcvt.d.s	$fa0, $fa0
	pcalau12i	$fp, %pc_hi20(graphics_directory)
	ld.d	$a0, $fp, %pc_lo12(graphics_directory)
	fdiv.d	$fa0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(yconversion)
	fst.d	$fa0, $a1, %pc_lo12(yconversion)
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB0_2
# %bb.1:
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB0_2:
	ld.d	$a0, $fp, %pc_lo12(graphics_directory)
	ori	$a1, $zero, 511
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	pcaddu18i	$t8, %call36(mkdir)
	jr	$t8
.Lfunc_end0:
	.size	init_graphics_output, .Lfunc_end0-init_graphics_output
                                        # -- End function
	.globl	terminate_graphics_output       # -- Begin function terminate_graphics_output
	.p2align	5
	.type	terminate_graphics_output,@function
terminate_graphics_output:              # @terminate_graphics_output
# %bb.0:
	ret
.Lfunc_end1:
	.size	terminate_graphics_output, .Lfunc_end1-terminate_graphics_output
                                        # -- End function
	.globl	set_graphics_window             # -- Begin function set_graphics_window
	.p2align	5
	.type	set_graphics_window,@function
set_graphics_window:                    # @set_graphics_window
# %bb.0:
	pcalau12i	$a0, %pc_hi20(graphics_xmin)
	fst.s	$fa0, $a0, %pc_lo12(graphics_xmin)
	pcalau12i	$a0, %pc_hi20(graphics_xmax)
	fst.s	$fa1, $a0, %pc_lo12(graphics_xmax)
	pcalau12i	$a0, %pc_hi20(graphics_ymin)
	fst.s	$fa2, $a0, %pc_lo12(graphics_ymin)
	pcalau12i	$a0, %pc_hi20(graphics_ymax)
	fst.s	$fa3, $a0, %pc_lo12(graphics_ymax)
	ret
.Lfunc_end2:
	.size	set_graphics_window, .Lfunc_end2-set_graphics_window
                                        # -- End function
	.globl	set_graphics_cell_data_double   # -- Begin function set_graphics_cell_data_double
	.p2align	5
	.type	set_graphics_cell_data_double,@function
set_graphics_cell_data_double:          # @set_graphics_cell_data_double
# %bb.0:
	pcalau12i	$a1, %pc_hi20(data_type)
	ori	$a2, $zero, 1
	st.b	$a2, $a1, %pc_lo12(data_type)
	pcalau12i	$a1, %pc_hi20(data_double)
	st.d	$a0, $a1, %pc_lo12(data_double)
	ret
.Lfunc_end3:
	.size	set_graphics_cell_data_double, .Lfunc_end3-set_graphics_cell_data_double
                                        # -- End function
	.globl	set_graphics_cell_data_float    # -- Begin function set_graphics_cell_data_float
	.p2align	5
	.type	set_graphics_cell_data_float,@function
set_graphics_cell_data_float:           # @set_graphics_cell_data_float
# %bb.0:
	pcalau12i	$a1, %pc_hi20(data_type)
	st.b	$zero, $a1, %pc_lo12(data_type)
	pcalau12i	$a1, %pc_hi20(data_float)
	st.d	$a0, $a1, %pc_lo12(data_float)
	ret
.Lfunc_end4:
	.size	set_graphics_cell_data_float, .Lfunc_end4-set_graphics_cell_data_float
                                        # -- End function
	.globl	set_graphics_cell_proc          # -- Begin function set_graphics_cell_proc
	.p2align	5
	.type	set_graphics_cell_proc,@function
set_graphics_cell_proc:                 # @set_graphics_cell_proc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(graphics_proc)
	st.d	$a0, $a1, %pc_lo12(graphics_proc)
	ret
.Lfunc_end5:
	.size	set_graphics_cell_proc, .Lfunc_end5-set_graphics_cell_proc
                                        # -- End function
	.globl	set_graphics_cell_coordinates_double # -- Begin function set_graphics_cell_coordinates_double
	.p2align	5
	.type	set_graphics_cell_coordinates_double,@function
set_graphics_cell_coordinates_double:   # @set_graphics_cell_coordinates_double
# %bb.0:
	pcalau12i	$a4, %pc_hi20(x_double)
	st.d	$a0, $a4, %pc_lo12(x_double)
	pcalau12i	$a0, %pc_hi20(dx_double)
	st.d	$a1, $a0, %pc_lo12(dx_double)
	pcalau12i	$a0, %pc_hi20(y_double)
	st.d	$a2, $a0, %pc_lo12(y_double)
	pcalau12i	$a0, %pc_hi20(dy_double)
	st.d	$a3, $a0, %pc_lo12(dy_double)
	ret
.Lfunc_end6:
	.size	set_graphics_cell_coordinates_double, .Lfunc_end6-set_graphics_cell_coordinates_double
                                        # -- End function
	.globl	set_graphics_cell_coordinates_float # -- Begin function set_graphics_cell_coordinates_float
	.p2align	5
	.type	set_graphics_cell_coordinates_float,@function
set_graphics_cell_coordinates_float:    # @set_graphics_cell_coordinates_float
# %bb.0:
	pcalau12i	$a4, %pc_hi20(x_float)
	st.d	$a0, $a4, %pc_lo12(x_float)
	pcalau12i	$a0, %pc_hi20(dx_float)
	st.d	$a1, $a0, %pc_lo12(dx_float)
	pcalau12i	$a0, %pc_hi20(y_float)
	st.d	$a2, $a0, %pc_lo12(y_float)
	pcalau12i	$a0, %pc_hi20(dy_float)
	st.d	$a3, $a0, %pc_lo12(dy_float)
	ret
.Lfunc_end7:
	.size	set_graphics_cell_coordinates_float, .Lfunc_end7-set_graphics_cell_coordinates_float
                                        # -- End function
	.globl	set_graphics_viewmode           # -- Begin function set_graphics_viewmode
	.p2align	5
	.type	set_graphics_viewmode,@function
set_graphics_viewmode:                  # @set_graphics_viewmode
# %bb.0:
	pcalau12i	$a1, %pc_hi20(graphics_view_mode)
	st.w	$a0, $a1, %pc_lo12(graphics_view_mode)
	ret
.Lfunc_end8:
	.size	set_graphics_viewmode, .Lfunc_end8-set_graphics_viewmode
                                        # -- End function
	.globl	set_graphics_mysize             # -- Begin function set_graphics_mysize
	.p2align	5
	.type	set_graphics_mysize,@function
set_graphics_mysize:                    # @set_graphics_mysize
# %bb.0:
	pcalau12i	$a1, %pc_hi20(graphics_mysize)
	st.w	$a0, $a1, %pc_lo12(graphics_mysize)
	ret
.Lfunc_end9:
	.size	set_graphics_mysize, .Lfunc_end9-set_graphics_mysize
                                        # -- End function
	.globl	set_graphics_outline            # -- Begin function set_graphics_outline
	.p2align	5
	.type	set_graphics_outline,@function
set_graphics_outline:                   # @set_graphics_outline
# %bb.0:
	ret
.Lfunc_end10:
	.size	set_graphics_outline, .Lfunc_end10-set_graphics_outline
                                        # -- End function
	.globl	DrawSquaresToFile               # -- Begin function DrawSquaresToFile
	.p2align	5
	.type	DrawSquaresToFile,@function
DrawSquaresToFile:                      # @DrawSquaresToFile
# %bb.0:
	pcalau12i	$a4, %pc_hi20(graphics_type)
	ld.w	$a5, $a4, %pc_lo12(graphics_type)
	ori	$a6, $zero, 1
	bne	$a5, $a6, .LBB11_19
# %bb.1:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	move	$a4, $a2
	move	$fp, $a0
	fmov.d	$fs0, $fa0
	move	$s1, $a1
	pcalau12i	$a0, %pc_hi20(graphics_proc)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(graphics_proc)
	pcalau12i	$s5, %pc_hi20(graphics_mysize)
	ld.w	$a1, $s5, %pc_lo12(graphics_mysize)
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$s2, $a0, -4
	pcalau12i	$s3, %pc_hi20(graphics_directory)
	ld.d	$a2, $s3, %pc_lo12(graphics_directory)
	beqz	$a4, .LBB11_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 190
	move	$s0, $a3
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, %pc_lo12(graphics_directory)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 140
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB11_4
.LBB11_3:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 190
	move	$a3, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, %pc_lo12(graphics_directory)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 140
	move	$a3, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB11_4:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 190
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a0, $sp, 140
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	beqz	$fp, .LBB11_10
# %bb.5:
	move	$s0, $a0
	beqz	$a0, .LBB11_10
# %bb.6:
	addi.w	$a0, $s2, 1
	ori	$a1, $zero, 256
	div.w	$s6, $a1, $a0
	movfr2gr.d	$a3, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(data_type)
	ld.bu	$a1, $a0, %pc_lo12(data_type)
	ld.w	$a0, $s5, %pc_lo12(graphics_mysize)
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	beqz	$a1, .LBB11_12
# %bb.7:                                # %.preheader
	blez	$a0, .LBB11_15
# %bb.8:                                # %.lr.ph111.preheader
	pcalau12i	$a0, %pc_hi20(x_double)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(graphics_xmin)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(xconversion)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dx_double)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(graphics_ymax)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(y_double)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dy_double)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(yconversion)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $zero
	move	$s8, $zero
	move	$fp, $zero
	.p2align	4, , 16
.LBB11_9:                               # %.lr.ph111
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(x_double)
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	fld.s	$fa0, $s3, %pc_lo12(graphics_xmin)
	fldx.d	$fa1, $a0, $s8
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s4, %pc_lo12(dx_double)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa2, $a1, %pc_lo12(xconversion)
	fcvt.d.s	$fa0, $fa0
	fsub.d	$fa3, $fa1, $fa0
	fldx.d	$fa4, $a0, $s8
	fmul.d	$fa3, $fa2, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a2, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fsub.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa2, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s2, %pc_lo12(y_double)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dy_double)
	ftintrz.w.d	$fa0, $fa0
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	fld.s	$fa1, $s1, %pc_lo12(graphics_ymax)
	fldx.d	$fa2, $a0, $s8
	fldx.d	$fa3, $a1, $s8
	movfr2gr.s	$a4, $fa0
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	fld.d	$fa0, $s5, %pc_lo12(yconversion)
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa3, $fa2, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(graphics_proc)
	movfr2gr.s	$a3, $fa3
	fsub.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	ldx.w	$a0, $a0, $s7
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	sub.w	$a5, $a1, $a3
	mul.w	$a6, $a0, $s6
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(x_double)
	fld.s	$fa0, $s3, %pc_lo12(graphics_xmin)
	fldx.d	$fa1, $a0, $s8
	ld.d	$a0, $s4, %pc_lo12(dx_double)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa2, $a1, %pc_lo12(xconversion)
	fcvt.d.s	$fa0, $fa0
	fsub.d	$fa3, $fa1, $fa0
	fldx.d	$fa4, $a0, $s8
	fmul.d	$fa3, $fa2, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s3, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fsub.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa2, $fa0
	ld.d	$a0, $s2, %pc_lo12(y_double)
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s4, $fa0
	fld.s	$fa0, $s1, %pc_lo12(graphics_ymax)
	fldx.d	$fa1, $a0, $s8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dy_double)
	fld.d	$fa2, $s5, %pc_lo12(yconversion)
	fcvt.d.s	$fa0, $fa0
	fsub.d	$fa3, $fa0, $fa1
	fldx.d	$fa4, $a0, $s8
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s5, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa2, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s6, $fa0
	move	$a0, $s0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s6
	move	$a4, $s4
	move	$a5, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s5
	move	$a4, $s3
	move	$a5, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s6
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(graphics_mysize)
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, 8
	addi.d	$s7, $s7, 4
	blt	$fp, $a0, .LBB11_9
	b	.LBB11_15
.LBB11_10:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB11_16
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	addi.d	$a1, $sp, 140
	b	.LBB11_17
.LBB11_12:                              # %.preheader107
	blez	$a0, .LBB11_15
# %bb.13:                               # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(x_float)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(graphics_xmin)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(xconversion)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dx_float)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(graphics_ymax)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(y_float)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dy_float)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(yconversion)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s7, $zero
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB11_14:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s5, %pc_lo12(x_float)
	fldx.s	$fa0, $a0, $s8
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	fld.s	$fa1, $s1, %pc_lo12(graphics_xmin)
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(dx_float)
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa2, $s3, %pc_lo12(xconversion)
	fsub.s	$fa3, $fa0, $fa1
	fcvt.d.s	$fa3, $fa3
	fldx.s	$fa4, $a0, $s8
	fmul.d	$fa3, $fa2, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a2, $fa3
	fadd.s	$fa0, $fa0, $fa4
	fsub.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa2, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s4, %pc_lo12(y_float)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dy_float)
	fsub.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	fldx.s	$fa1, $a0, $s8
	fldx.s	$fa2, $a1, $s8
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	fld.s	$fa3, $s2, %pc_lo12(graphics_ymax)
	movfr2gr.s	$a4, $fa0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	fld.d	$fa0, $fp, %pc_lo12(yconversion)
	fadd.s	$fa2, $fa1, $fa2
	fsub.s	$fa2, $fa3, $fa2
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a3, $fa2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(graphics_proc)
	fsub.s	$fa1, $fa3, $fa1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ldx.w	$a0, $a0, $s8
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	sub.w	$a5, $a1, $a3
	mul.w	$a6, $a0, $s6
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(x_float)
	fldx.s	$fa0, $a0, $s8
	fld.s	$fa1, $s1, %pc_lo12(graphics_xmin)
	ld.d	$a0, $s0, %pc_lo12(dx_float)
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa2, $s3, %pc_lo12(xconversion)
	fsub.s	$fa3, $fa0, $fa1
	fcvt.d.s	$fa3, $fa3
	fldx.s	$fa4, $a0, $s8
	fmul.d	$fa3, $fa2, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s3, $fa3
	fadd.s	$fa0, $fa0, $fa4
	fsub.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	ld.d	$a0, $s4, %pc_lo12(y_float)
	fmul.d	$fa0, $fa2, $fa0
	ftintrz.w.d	$fa0, $fa0
	fld.s	$fa1, $s2, %pc_lo12(graphics_ymax)
	fldx.s	$fa2, $a0, $s8
	movfr2gr.s	$s4, $fa0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dy_float)
	fld.d	$fa0, $fp, %pc_lo12(yconversion)
	fsub.s	$fa3, $fa1, $fa2
	fcvt.d.s	$fa3, $fa3
	fldx.s	$fa4, $a0, $s8
	fmul.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s5, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fsub.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s6, $fa0
	move	$a0, $s0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s6
	move	$a4, $s4
	move	$a5, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s5
	move	$a4, $s3
	move	$a5, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s6
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(graphics_mysize)
	addi.d	$s7, $s7, 1
	addi.d	$s8, $s8, 4
	blt	$s7, $a0, .LBB11_14
.LBB11_15:                              # %.loopexit
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(iteration)
	ld.w	$a1, $a0, %pc_lo12(iteration)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(iteration)
	b	.LBB11_18
.LBB11_16:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	addi.d	$a1, $sp, 190
.LBB11_17:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_18:
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
.LBB11_19:
	ret
.Lfunc_end11:
	.size	DrawSquaresToFile, .Lfunc_end11-DrawSquaresToFile
                                        # -- End function
	.globl	DisplayStateToFile              # -- Begin function DisplayStateToFile
	.p2align	5
	.type	DisplayStateToFile,@function
DisplayStateToFile:                     # @DisplayStateToFile
# %bb.0:
	pcalau12i	$a4, %pc_hi20(graphics_type)
	ld.w	$a5, $a4, %pc_lo12(graphics_type)
	ori	$a6, $zero, 1
	bne	$a5, $a6, .LBB12_21
# %bb.1:
	addi.d	$sp, $sp, -368
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
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	move	$a4, $a2
	move	$fp, $a0
	fmov.d	$fs0, $fa0
	move	$s1, $a1
	pcalau12i	$s2, %pc_hi20(graphics_directory)
	ld.d	$a2, $s2, %pc_lo12(graphics_directory)
	beqz	$a4, .LBB12_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 222
	move	$s0, $a3
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, %pc_lo12(graphics_directory)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 172
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB12_4
.LBB12_3:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 222
	move	$a3, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, %pc_lo12(graphics_directory)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 172
	move	$a3, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB12_4:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 222
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a0, $sp, 172
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	beqz	$fp, .LBB12_15
# %bb.5:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_15
# %bb.6:
	movfr2gr.d	$a3, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(graphics_mysize)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(graphics_mysize)
	blez	$a0, .LBB12_17
# %bb.7:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(data_type)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(data_double)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 293601
	ori	$a0, $a0, 1147
	lu32i.d	$a0, 293601
	lu52i.d	$a0, $a0, 1026
	movgr2fr.d	$fs0, $a0
	pcalau12i	$s3, %pc_hi20(graphics_xmin)
	pcalau12i	$s4, %pc_hi20(xconversion)
	pcalau12i	$a0, %pc_hi20(x_double)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dx_double)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(graphics_ymax)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(y_double)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dy_double)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(yconversion)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s7, $zero
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(x_float)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dx_float)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(y_float)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dy_float)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	b	.LBB12_10
	.p2align	4, , 16
.LBB12_8:                               #   in Loop: Header=BB12_10 Depth=1
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s5, %pc_lo12(x_float)
	fldx.s	$fa2, $a0, $s7
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $s6, %pc_lo12(dx_float)
	fsub.s	$fa3, $fa2, $fa1
	fcvt.d.s	$fa3, $fa3
	fldx.s	$fa4, $a0, $s7
	fmul.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a2, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fsub.s	$fa1, $fa2, $fa1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(y_float)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dy_float)
	fsub.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	fldx.s	$fa1, $a0, $s7
	fldx.s	$fa2, $a1, $s7
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	fld.s	$fa3, $fp, %pc_lo12(graphics_ymax)
	movfr2gr.s	$a4, $fa0
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	fld.d	$fa0, $s2, %pc_lo12(yconversion)
	fadd.s	$fa2, $fa1, $fa2
	fsub.s	$fa2, $fa3, $fa2
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a3, $fa2
	fsub.s	$fa1, $fa3, $fa1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	sub.w	$a5, $a0, $a3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(x_float)
	fldx.s	$fa0, $a0, $s7
	fld.s	$fa1, $s3, %pc_lo12(graphics_xmin)
	ld.d	$a0, $s6, %pc_lo12(dx_float)
	fld.d	$fa2, $s4, %pc_lo12(xconversion)
	fsub.s	$fa3, $fa0, $fa1
	fcvt.d.s	$fa3, $fa3
	fldx.s	$fa4, $a0, $s7
	fmul.d	$fa3, $fa2, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s3, $fa3
	fadd.s	$fa0, $fa0, $fa4
	fsub.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	ld.d	$a0, $s0, %pc_lo12(y_float)
	fmul.d	$fa0, $fa2, $fa0
	ftintrz.w.d	$fa0, $fa0
	fld.s	$fa1, $fp, %pc_lo12(graphics_ymax)
	fldx.s	$fa2, $a0, $s7
	movfr2gr.s	$s4, $fa0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dy_float)
	fld.d	$fa0, $s2, %pc_lo12(yconversion)
	fsub.s	$fa3, $fa1, $fa2
	fcvt.d.s	$fa3, $fa3
	fldx.s	$fa4, $a0, $s7
	fmul.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s5, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fsub.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s6, $fa0
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
.LBB12_9:                               #   in Loop: Header=BB12_10 Depth=1
	move	$a0, $s0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s6
	move	$a4, $s4
	move	$a5, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s5
	move	$a4, $s3
	move	$a5, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(graphics_mysize)
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	addi.d	$s8, $s8, 8
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	bge	$s1, $a0, .LBB12_17
.LBB12_10:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(data_type)
	beqz	$a0, .LBB12_12
# %bb.11:                               #   in Loop: Header=BB12_10 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(data_double)
	fldx.d	$fa0, $a1, $s8
	ftintrz.w.d	$fa0, $fa0
	b	.LBB12_13
	.p2align	4, , 16
.LBB12_12:                              #   in Loop: Header=BB12_10 Depth=1
	pcalau12i	$a1, %pc_hi20(data_float)
	ld.d	$a1, $a1, %pc_lo12(data_float)
	fldx.s	$fa0, $a1, $s7
	ftintrz.w.s	$fa0, $fa0
.LBB12_13:                              #   in Loop: Header=BB12_10 Depth=1
	movfr2gr.s	$a1, $fa0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ori	$a2, $zero, 256
	sub.w	$a2, $a2, $a1
	srai.d	$a3, $a2, 63
	andn	$a2, $a2, $a3
	slti	$a1, $a1, 1
	fld.s	$fa1, $s3, %pc_lo12(graphics_xmin)
	fld.d	$fa0, $s4, %pc_lo12(xconversion)
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 255
	maskeqz	$a1, $a3, $a1
	or	$a6, $a1, $a2
	beqz	$a0, .LBB12_8
# %bb.14:                               #   in Loop: Header=BB12_10 Depth=1
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $s5, %pc_lo12(x_double)
	fldx.d	$fa2, $a0, $s8
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s6, %pc_lo12(dx_double)
	fcvt.d.s	$fa1, $fa1
	fsub.d	$fa3, $fa2, $fa1
	fldx.d	$fa4, $a0, $s8
	fmul.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fsub.d	$fa1, $fa2, $fa1
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(y_double)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dy_double)
	ftintrz.w.d	$fa0, $fa0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	fld.s	$fa1, $fp, %pc_lo12(graphics_ymax)
	fldx.d	$fa2, $a0, $s8
	fldx.d	$fa3, $a1, $s8
	movfr2gr.s	$a4, $fa0
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	fld.d	$fa0, $s2, %pc_lo12(yconversion)
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa3, $fa2, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a3, $fa3
	fsub.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	sub.w	$a5, $a0, $a3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(x_double)
	fld.s	$fa0, $s3, %pc_lo12(graphics_xmin)
	fldx.d	$fa1, $a0, $s8
	ld.d	$a0, $s6, %pc_lo12(dx_double)
	fld.d	$fa2, $s4, %pc_lo12(xconversion)
	fcvt.d.s	$fa0, $fa0
	fsub.d	$fa3, $fa1, $fa0
	fldx.d	$fa4, $a0, $s8
	fmul.d	$fa3, $fa2, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s3, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fsub.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa2, $fa0
	ld.d	$a0, $s0, %pc_lo12(y_double)
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s4, $fa0
	fld.s	$fa0, $fp, %pc_lo12(graphics_ymax)
	fldx.d	$fa1, $a0, $s8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dy_double)
	fld.d	$fa2, $s2, %pc_lo12(yconversion)
	fcvt.d.s	$fa0, $fa0
	fsub.d	$fa3, $fa0, $fa1
	fldx.d	$fa4, $a0, $s8
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s5, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa2, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s6, $fa0
	b	.LBB12_9
.LBB12_15:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_18
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	addi.d	$a1, $sp, 172
	b	.LBB12_19
.LBB12_17:                              # %._crit_edge
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(iteration)
	ld.w	$a1, $a0, %pc_lo12(iteration)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(iteration)
	b	.LBB12_20
.LBB12_18:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	addi.d	$a1, $sp, 222
.LBB12_19:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB12_20:
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
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
.LBB12_21:
	ret
.Lfunc_end12:
	.size	DisplayStateToFile, .Lfunc_end12-DisplayStateToFile
                                        # -- End function
	.globl	write_graphics_info             # -- Begin function write_graphics_info
	.p2align	5
	.type	write_graphics_info,@function
write_graphics_info:                    # @write_graphics_info
# %bb.0:
	pcalau12i	$a4, %pc_hi20(graphics_view_mode)
	ld.w	$a4, $a4, %pc_lo12(graphics_view_mode)
	beqz	$a4, .LBB13_2
# %bb.1:
	pcaddu18i	$t8, %call36(DisplayStateToFile)
	jr	$t8
.LBB13_2:
	pcaddu18i	$t8, %call36(DrawSquaresToFile)
	jr	$t8
.Lfunc_end13:
	.size	write_graphics_info, .Lfunc_end13-write_graphics_info
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"graphics_output"
	.size	.L.str, 16

	.type	graphics_directory,@object      # @graphics_directory
	.data
	.globl	graphics_directory
	.p2align	3, 0x0
graphics_directory:
	.dword	.L.str
	.size	graphics_directory, 8

	.type	graphics_ymax,@object           # @graphics_ymax
	.local	graphics_ymax
	.comm	graphics_ymax,4,4
	.type	graphics_ymin,@object           # @graphics_ymin
	.local	graphics_ymin
	.comm	graphics_ymin,4,4
	.type	graphics_xmax,@object           # @graphics_xmax
	.local	graphics_xmax
	.comm	graphics_xmax,4,4
	.type	graphics_xmin,@object           # @graphics_xmin
	.local	graphics_xmin
	.comm	graphics_xmin,4,4
	.type	xconversion,@object             # @xconversion
	.local	xconversion
	.comm	xconversion,8,8
	.type	yconversion,@object             # @yconversion
	.local	yconversion
	.comm	yconversion,8,8
	.type	graphics_type,@object           # @graphics_type
	.bss
	.globl	graphics_type
	.p2align	2, 0x0
graphics_type:
	.word	0                               # 0x0
	.size	graphics_type, 4

	.type	data_type,@object               # @data_type
	.local	data_type
	.comm	data_type,1,4
	.type	data_double,@object             # @data_double
	.local	data_double
	.comm	data_double,8,8
	.type	data_float,@object              # @data_float
	.local	data_float
	.comm	data_float,8,8
	.type	graphics_proc,@object           # @graphics_proc
	.local	graphics_proc
	.comm	graphics_proc,8,8
	.type	x_double,@object                # @x_double
	.local	x_double
	.comm	x_double,8,8
	.type	dx_double,@object               # @dx_double
	.local	dx_double
	.comm	dx_double,8,8
	.type	y_double,@object                # @y_double
	.local	y_double
	.comm	y_double,8,8
	.type	dy_double,@object               # @dy_double
	.local	dy_double
	.comm	dy_double,8,8
	.type	x_float,@object                 # @x_float
	.local	x_float
	.comm	x_float,8,8
	.type	dx_float,@object                # @dx_float
	.local	dx_float
	.comm	dx_float,8,8
	.type	y_float,@object                 # @y_float
	.local	y_float
	.comm	y_float,8,8
	.type	dy_float,@object                # @dy_float
	.local	dy_float
	.comm	dy_float,8,8
	.type	graphics_view_mode,@object      # @graphics_view_mode
	.local	graphics_view_mode
	.comm	graphics_view_mode,4,4
	.type	graphics_mysize,@object         # @graphics_mysize
	.local	graphics_mysize
	.comm	graphics_mysize,4,4
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s/graph%dcp%05d.data"
	.size	.L.str.1, 22

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s/outline%dcp%05d.lin"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s/graph%05d.data"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s/outline%05d.lin"
	.size	.L.str.4, 19

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"w"
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%d,%lf\n"
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d,%d,%d,%d,%d\n"
	.size	.L.str.7, 16

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%d,%d,%d,%d\n"
	.size	.L.str.8, 13

	.type	iteration,@object               # @iteration
	.local	iteration
	.comm	iteration,4,4
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Could not create %s in DrawSqaures\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Could not open %s in DisplayStateToFile\n"
	.size	.L.str.10, 41

	.section	".note.GNU-stack","",@progbits
	.addrsig
