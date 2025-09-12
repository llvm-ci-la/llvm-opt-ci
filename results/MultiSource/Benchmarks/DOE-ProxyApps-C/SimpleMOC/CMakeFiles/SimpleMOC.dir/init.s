	.file	"init.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function calculate_derived_inputs
.LCPI0_0:
	.dword	0x3ff6a09e667f3bcd              # double 1.4142135623730951
	.text
	.globl	calculate_derived_inputs
	.p2align	5
	.type	calculate_derived_inputs,@function
calculate_derived_inputs:               # @calculate_derived_inputs
# %bb.0:
	ld.wu	$a1, $a0, 28
	srli.d	$a2, $a1, 31
	add.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	fld.s	$fa0, $a0, 56
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_0)
	st.w	$a1, $a0, 28
	fcvt.d.s	$fa0, $fa0
	fld.s	$fa2, $a0, 20
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	srli.d	$a2, $a1, 63
	add.d	$a1, $a1, $a2
	bstrins.d	$a1, $zero, 0, 0
	ld.w	$a2, $a0, 44
	st.d	$a1, $a0, 80
	fld.s	$fa0, $a0, 24
	fld.s	$fa1, $a0, 60
	movgr2fr.w	$fa2, $a2
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fa0, $fa1, $fa0
	ld.w	$a3, $a0, 32
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	st.w	$a4, $a0, 88
	mul.d	$a1, $a1, $a3
	mul.d	$a1, $a1, $a4
	ld.d	$a3, $a0, 112
	ld.w	$a4, $a0, 8
	st.d	$a1, $a0, 96
	fdiv.s	$fa0, $fa1, $fa2
	fst.s	$fa0, $a0, 64
	mul.d	$a1, $a3, $a4
	div.d	$a1, $a1, $a2
	st.d	$a1, $a0, 120
	ret
.Lfunc_end0:
	.size	calculate_derived_inputs, .Lfunc_end0-calculate_derived_inputs
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function set_default_input
.LCPI1_0:
	.word	17                              # 0x11
	.word	17                              # 0x11
	.word	27                              # 0x1b
	.word	5                               # 0x5
	.text
	.globl	set_default_input
	.p2align	5
	.type	set_default_input,@function
set_default_input:                      # @set_default_input
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 16
	lu12i.w	$a1, 251084
	ori	$a1, $a1, 3277
	lu52i.d	$a1, $a1, 1000
	st.d	$a1, $a0, 20
	ori	$a1, $zero, 64
	lu32i.d	$a1, 10
	st.d	$a1, $a0, 28
	ori	$a1, $zero, 104
	st.w	$a1, $a0, 36
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 40
	ori	$a1, $zero, 20
	st.w	$a1, $a0, 44
	ori	$a1, $zero, 120
	st.d	$a1, $a0, 48
	lu12i.w	$a1, 268981
	ori	$a1, $a1, 3113
	lu32i.d	$a1, -524288
	lu52i.d	$a1, $a1, 1084
	st.d	$a1, $a0, 56
	lu12i.w	$a1, 246333
	ori	$a1, $a1, 1802
	st.w	$a1, $a0, 68
	st.d	$zero, $a0, 72
	lu12i.w	$a1, 1
	ori	$a1, $a1, 904
	st.d	$a1, $a0, 112
	st.b	$zero, $a0, 128
	ret
.Lfunc_end1:
	.size	set_default_input, .Lfunc_end1-set_default_input
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function set_small_input
.LCPI2_0:
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	5                               # 0x5
	.word	3                               # 0x3
	.text
	.globl	set_small_input
	.p2align	5
	.type	set_small_input,@function
set_small_input:                        # @set_small_input
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_0)
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 16
	lu12i.w	$a1, 258048
	lu32i.d	$a1, -209715
	lu52i.d	$a1, $a1, 996
	st.d	$a1, $a0, 20
	ori	$a1, $zero, 5
	lu32i.d	$a1, 5
	st.d	$a1, $a0, 28
	ori	$a1, $zero, 104
	st.w	$a1, $a0, 36
	st.b	$zero, $a0, 40
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 44
	ori	$a1, $zero, 120
	st.d	$a1, $a0, 48
	lu12i.w	$a1, 268981
	ori	$a1, $a1, 3113
	lu32i.d	$a1, -524288
	lu52i.d	$a1, $a1, 1084
	st.d	$a1, $a0, 56
	lu12i.w	$a1, 246333
	ori	$a1, $a1, 1802
	st.w	$a1, $a0, 68
	ori	$a1, $zero, 3000
	st.d	$a1, $a0, 112
	ret
.Lfunc_end2:
	.size	set_small_input, .Lfunc_end2-set_small_input
                                        # -- End function
	.globl	build_tracks                    # -- Begin function build_tracks
	.p2align	5
	.type	build_tracks,@function
build_tracks:                           # @build_tracks
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 296                  # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 224
	ori	$a2, $zero, 68
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $s1, 80
	vld	$vr1, $s1, 96
	vst	$vr0, $sp, 176
	fld.s	$fs0, $s1, 68
	ld.d	$s3, $s1, 72
	vst	$vr1, $sp, 192
	ld.w	$a0, $s1, 129
	vld	$vr0, $s1, 112
	ld.bu	$s4, $s1, 128
	ld.w	$a1, $s1, 132
	st.w	$a0, $sp, 168
	ld.d	$s0, $s1, 136
	ld.d	$s5, $s1, 144
	st.w	$a1, $sp, 171
	vst	$vr0, $sp, 208
	st.d	$zero, $sp, 160
	beqz	$s3, .LBB3_3
# %bb.1:
	andi	$a0, $s4, 1
	beqz	$a0, .LBB3_4
.LBB3_2:
	addi.d	$s4, $s1, 80
	addi.d	$s5, $s1, 129
	addi.d	$a3, $sp, 160
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(load_OpenMOC_tracks)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$a0, $sp, 224
	ori	$a2, $zero, 68
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $s4, 0
	vld	$vr1, $s4, 16
	vst	$vr0, $sp, 176
	fld.s	$fs0, $s1, 68
	ld.d	$s3, $s1, 72
	vst	$vr1, $sp, 192
	vld	$vr0, $s4, 32
	ld.bu	$s4, $s1, 128
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s5, 3
	ld.d	$s0, $s1, 136
	ld.d	$s5, $s1, 144
	st.w	$a0, $sp, 168
	vst	$vr0, $sp, 208
	st.w	$a1, $sp, 171
	st.d	$s2, $fp, 0
	bnez	$s3, .LBB3_6
	b	.LBB3_5
.LBB3_3:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 79
	pcaddu18i	$ra, %call36(center_print)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(border_print)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	andi	$a0, $s4, 1
	bnez	$a0, .LBB3_2
.LBB3_4:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 68
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176
	vld	$vr1, $sp, 192
	vst	$vr0, $sp, 88
	ld.w	$a0, $sp, 168
	fst.s	$fs0, $sp, 76
	vst	$vr1, $sp, 104
	vld	$vr0, $sp, 208
	st.w	$a0, $sp, 137
	ld.w	$a0, $sp, 171
	st.d	$s3, $sp, 80
	vst	$vr0, $sp, 120
	st.b	$s4, $sp, 136
	st.w	$a0, $sp, 140
	st.d	$s0, $sp, 144
	st.d	$s5, $sp, 152
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(generate_2D_tracks)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s2, $fp, 0
	bnez	$s3, .LBB3_6
.LBB3_5:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_6:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 68
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176
	vld	$vr1, $sp, 192
	vst	$vr0, $sp, 88
	ld.w	$a0, $sp, 168
	fst.s	$fs0, $sp, 76
	vst	$vr1, $sp, 104
	vld	$vr0, $sp, 208
	st.w	$a0, $sp, 137
	ld.w	$a0, $sp, 171
	st.d	$s3, $sp, 80
	vst	$vr0, $sp, 120
	st.b	$s4, $sp, 136
	st.w	$a0, $sp, 140
	st.d	$s0, $sp, 144
	st.d	$s5, $sp, 152
	addi.d	$a0, $sp, 8
	addi.d	$a2, $sp, 160
	move	$a1, $s2
	pcaddu18i	$ra, %call36(generate_tracks)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 68
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176
	vld	$vr1, $sp, 192
	vst	$vr0, $sp, 88
	ld.w	$a0, $sp, 168
	fst.s	$fs0, $sp, 76
	vst	$vr1, $sp, 104
	vld	$vr0, $sp, 208
	st.w	$a0, $sp, 137
	ld.w	$a0, $sp, 171
	st.d	$s3, $sp, 80
	vst	$vr0, $sp, 120
	st.b	$s4, $sp, 136
	st.w	$a0, $sp, 140
	st.d	$s0, $sp, 144
	st.d	$s5, $sp, 152
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(generate_polar_angles)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	bnez	$s3, .LBB3_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_8:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 68
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176
	vld	$vr1, $sp, 192
	vst	$vr0, $sp, 88
	ld.w	$a0, $sp, 168
	st.b	$s4, $sp, 136
	vst	$vr1, $sp, 104
	vld	$vr0, $sp, 208
	st.w	$a0, $sp, 137
	ld.w	$a0, $sp, 171
	fst.s	$fs0, $sp, 76
	st.d	$s3, $sp, 80
	vst	$vr0, $sp, 120
	st.w	$a0, $sp, 140
	st.d	$s0, $sp, 144
	st.d	$s5, $sp, 152
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(initialize_sources)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	bnez	$s3, .LBB3_10
# %bb.9:
	pcaddu18i	$ra, %call36(border_print)
	jirl	$ra, $ra, 0
.LBB3_10:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	addi.d	$a0, $fp, 40
	vldi	$vr1, -1244
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(buildExponentialTable)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 296                  # 8-byte Folded Reload
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
.Lfunc_end3:
	.size	build_tracks, .Lfunc_end3-build_tracks
                                        # -- End function
	.globl	init_mpi_grid                   # -- Begin function init_mpi_grid
	.p2align	5
	.type	init_mpi_grid,@function
init_mpi_grid:                          # @init_mpi_grid
# %bb.0:
	ret
.Lfunc_end4:
	.size	init_mpi_grid, .Lfunc_end4-init_mpi_grid
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"INITIALIZATION"
	.size	.L.str, 15

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Initializing 2D tracks..."
	.size	.Lstr, 26

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Initializing 3D tracks..."
	.size	.Lstr.1, 26

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Initializing flat source regions..."
	.size	.Lstr.2, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
