	.file	"gxpath.c"
	.text
	.globl	gx_path_init                    # -- Begin function gx_path_init
	.p2align	5
	.type	gx_path_init,@function
gx_path_init:                           # @gx_path_init
# %bb.0:
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	st.d	$zero, $a0, 48
	st.h	$zero, $a0, 136
	st.b	$zero, $a0, 138
	st.d	$zero, $a0, 88
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 96
	st.w	$zero, $a0, 112
	ret
.Lfunc_end0:
	.size	gx_path_init, .Lfunc_end0-gx_path_init
                                        # -- End function
	.globl	gx_path_release                 # -- Begin function gx_path_release
	.p2align	5
	.type	gx_path_release,@function
gx_path_release:                        # @gx_path_release
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 88
	beqz	$a0, .LBB1_7
# %bb.1:
	ld.bu	$a0, $fp, 138
	bnez	$a0, .LBB1_7
# %bb.2:
	ld.d	$a0, $fp, 96
	ld.d	$a0, $a0, 40
	beqz	$a0, .LBB1_6
# %bb.3:                                # %.lr.ph
	ori	$s1, $zero, 4
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.gx_path_release)
	addi.d	$s2, $a1, %pc_lo12(.Lswitch.table.gx_path_release)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$s0, $a1, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 16
	bgeu	$a1, $s1, .LBB1_8
# %bb.5:                                # %switch.lookup
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$s3, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $s2, $a1
	ld.d	$a4, $fp, 8
	ori	$a1, $zero, 1
	move	$a3, $s0
	jirl	$ra, $a4, 0
	move	$a0, $s3
	bnez	$s3, .LBB1_4
.LBB1_6:                                # %._crit_edge
	st.d	$zero, $fp, 88
.LBB1_7:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_8:
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$fp, $a1, %got_pc_lo12(stderr)
	ld.d	$a4, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 75
	move	$s0, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $s0, 16
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	gx_path_release, .Lfunc_end1-gx_path_release
                                        # -- End function
	.globl	gx_path_share                   # -- Begin function gx_path_share
	.p2align	5
	.type	gx_path_share,@function
gx_path_share:                          # @gx_path_share
# %bb.0:
	ld.d	$a1, $a0, 88
	beqz	$a1, .LBB2_2
# %bb.1:
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 138
.LBB2_2:
	ret
.Lfunc_end2:
	.size	gx_path_share, .Lfunc_end2-gx_path_share
                                        # -- End function
	.globl	gx_path_new_subpath             # -- Begin function gx_path_new_subpath
	.p2align	5
	.type	gx_path_new_subpath,@function
gx_path_new_subpath:                    # @gx_path_new_subpath
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 138
	beqz	$a0, .LBB3_3
# %bb.1:
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_copy)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_7
# %bb.2:                                # %path_alloc_copy.exit
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 96
	st.b	$zero, $fp, 138
	bnez	$s0, .LBB3_4
	b	.LBB3_7
.LBB3_3:
	ld.d	$s0, $fp, 96
.LBB3_4:
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 64
	ori	$s1, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB3_7
# %bb.5:
	st.w	$zero, $a0, 16
	st.d	$zero, $a0, 8
	st.d	$a0, $a0, 40
	st.b	$zero, $a0, 56
	st.d	$zero, $a0, 48
	vld	$vr0, $fp, 120
	vst	$vr0, $a0, 24
	st.b	$s1, $fp, 137
	beqz	$s0, .LBB3_8
# %bb.6:
	ld.d	$a2, $s0, 40
	st.d	$a0, $a2, 8
	b	.LBB3_9
.LBB3_7:
	addi.w	$a1, $zero, -13
	b	.LBB3_10
.LBB3_8:
	move	$a2, $zero
	st.d	$a0, $fp, 88
.LBB3_9:
	ld.w	$a3, $fp, 104
	move	$a1, $zero
	st.d	$a2, $a0, 0
	st.d	$a0, $fp, 96
	addi.d	$a0, $a3, 1
	st.w	$a0, $fp, 104
.LBB3_10:
	move	$a0, $a1
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end3:
	.size	gx_path_new_subpath, .Lfunc_end3-gx_path_new_subpath
                                        # -- End function
	.globl	path_alloc_copy                 # -- Begin function path_alloc_copy
	.p2align	5
	.type	path_alloc_copy,@function
path_alloc_copy:                        # @path_alloc_copy
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_copy)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_2
# %bb.1:
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	st.b	$zero, $fp, 138
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB4_2:
	move	$a0, $zero
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end4:
	.size	path_alloc_copy, .Lfunc_end4-path_alloc_copy
                                        # -- End function
	.globl	gx_path_add_point               # -- Begin function gx_path_add_point
	.p2align	5
	.type	gx_path_add_point,@function
gx_path_add_point:                      # @gx_path_add_point
# %bb.0:
	ori	$a3, $zero, 1
	st.h	$a3, $a0, 136
	st.d	$a1, $a0, 120
	st.d	$a2, $a0, 128
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	gx_path_add_point, .Lfunc_end5-gx_path_add_point
                                        # -- End function
	.globl	gx_path_add_relative_point      # -- Begin function gx_path_add_relative_point
	.p2align	5
	.type	gx_path_add_relative_point,@function
gx_path_add_relative_point:             # @gx_path_add_relative_point
# %bb.0:
	ld.bu	$a3, $a0, 136
	beqz	$a3, .LBB6_2
# %bb.1:
	vld	$vr0, $a0, 120
	st.b	$zero, $a0, 137
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr1, $a2, 1
	vadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 120
	move	$a0, $zero
	ret
.LBB6_2:
	addi.w	$a0, $zero, -14
	ret
.Lfunc_end6:
	.size	gx_path_add_relative_point, .Lfunc_end6-gx_path_add_relative_point
                                        # -- End function
	.globl	gx_path_add_line                # -- Begin function gx_path_add_line
	.p2align	5
	.type	gx_path_add_line,@function
gx_path_add_line:                       # @gx_path_add_line
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 137
	ld.d	$s3, $fp, 96
	move	$s0, $a2
	move	$s1, $a1
	beqz	$a0, .LBB7_6
# %bb.1:
	move	$s2, $s3
	ld.bu	$a0, $fp, 138
	beqz	$a0, .LBB7_4
.LBB7_2:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_copy)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_13
# %bb.3:                                # %path_alloc_copy.exit
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 96
	st.b	$zero, $fp, 138
	beqz	$s2, .LBB7_13
.LBB7_4:
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 40
	ori	$s3, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB7_13
# %bb.5:
	st.w	$s3, $a0, 16
	st.d	$zero, $a0, 8
	ld.d	$a1, $s2, 40
	st.d	$a0, $a1, 8
	st.d	$a1, $a0, 0
	st.d	$a0, $s2, 40
	st.d	$s1, $fp, 120
	st.d	$s1, $a0, 24
	st.d	$s0, $fp, 128
	st.d	$s0, $a0, 32
	ld.w	$a0, $s2, 48
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 48
	ld.w	$a1, $fp, 108
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 108
	b	.LBB7_14
.LBB7_6:
	ld.bu	$a0, $fp, 136
	beqz	$a0, .LBB7_15
# %bb.7:
	ld.bu	$a0, $fp, 138
	beqz	$a0, .LBB7_10
# %bb.8:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_copy)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_13
# %bb.9:                                # %path_alloc_copy.exit.i
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 96
	st.b	$zero, $fp, 138
	beqz	$s3, .LBB7_13
.LBB7_10:
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 64
	ori	$s4, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB7_13
# %bb.11:
	move	$s2, $a0
	st.w	$zero, $a0, 16
	st.d	$zero, $a0, 8
	st.d	$a0, $a0, 40
	st.b	$zero, $a0, 56
	st.d	$zero, $a0, 48
	vld	$vr0, $fp, 120
	vst	$vr0, $a0, 24
	st.b	$s4, $fp, 137
	beqz	$s3, .LBB7_16
# %bb.12:
	ld.d	$a0, $s3, 40
	st.d	$s2, $a0, 8
	b	.LBB7_17
.LBB7_13:
	addi.w	$a0, $zero, -13
.LBB7_14:                               # %.thread
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB7_15:
	addi.w	$a0, $zero, -14
	b	.LBB7_14
.LBB7_16:
	move	$a0, $zero
	st.d	$s2, $fp, 88
.LBB7_17:
	st.d	$a0, $s2, 0
	ld.w	$a0, $fp, 104
	st.d	$s2, $fp, 96
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 104
	ld.bu	$a0, $fp, 138
	bnez	$a0, .LBB7_2
	b	.LBB7_4
.Lfunc_end7:
	.size	gx_path_add_line, .Lfunc_end7-gx_path_add_line
                                        # -- End function
	.globl	gx_path_add_rectangle           # -- Begin function gx_path_add_rectangle
	.p2align	5
	.type	gx_path_add_rectangle,@function
gx_path_add_rectangle:                  # @gx_path_add_rectangle
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a4
	move	$s1, $a3
	move	$s0, $a2
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.h	$a0, $fp, 136
	st.d	$a1, $fp, 120
	st.d	$a2, $fp, 128
	move	$a0, $fp
	move	$a2, $a4
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB8_4
# %bb.1:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB8_4
# %bb.2:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB8_4
# %bb.3:
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(gx_path_close_subpath)
	jr	$t8
.LBB8_4:                                # %gx_path_add_pgram.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	gx_path_add_rectangle, .Lfunc_end8-gx_path_add_rectangle
                                        # -- End function
	.globl	gx_path_add_pgram               # -- Begin function gx_path_add_pgram
	.p2align	5
	.type	gx_path_add_pgram,@function
gx_path_add_pgram:                      # @gx_path_add_pgram
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a6
	move	$s2, $a5
	move	$s1, $a4
	move	$s4, $a3
	move	$s3, $a2
	move	$s5, $a1
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.h	$a0, $fp, 136
	st.d	$a1, $fp, 120
	st.d	$a2, $fp, 128
	move	$a0, $fp
	move	$a1, $a3
	move	$a2, $a4
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB9_4
# %bb.1:
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB9_4
# %bb.2:
	sub.d	$a0, $s5, $s4
	add.d	$a1, $a0, $s2
	sub.d	$a0, $s3, $s1
	add.d	$a2, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB9_4
# %bb.3:
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(gx_path_close_subpath)
	jr	$t8
.LBB9_4:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end9:
	.size	gx_path_add_pgram, .Lfunc_end9-gx_path_add_pgram
                                        # -- End function
	.globl	gx_path_close_subpath           # -- Begin function gx_path_close_subpath
	.p2align	5
	.type	gx_path_close_subpath,@function
gx_path_close_subpath:                  # @gx_path_close_subpath
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 137
	beqz	$a0, .LBB10_15
# %bb.1:
	ld.d	$s0, $fp, 96
	ld.d	$a0, $fp, 120
	ld.d	$a1, $s0, 24
	bne	$a0, $a1, .LBB10_9
# %bb.2:
	ld.d	$a0, $fp, 128
	ld.d	$a1, $s0, 32
	bne	$a0, $a1, .LBB10_9
# %bb.3:
	ld.d	$a0, $s0, 40
	ld.w	$a1, $a0, 16
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB10_9
# %bb.4:
	ld.bu	$a1, $fp, 138
	beqz	$a1, .LBB10_8
# %bb.5:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_copy)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_16
# %bb.6:                                # %path_alloc_copy.exit
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	st.b	$zero, $fp, 138
	beqz	$a0, .LBB10_16
# %bb.7:                                # %path_alloc_copy.exit._crit_edge
	ld.d	$a0, $s0, 40
.LBB10_8:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 16
	b	.LBB10_14
.LBB10_9:
	ld.bu	$a0, $fp, 138
	beqz	$a0, .LBB10_12
# %bb.10:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_copy)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_16
# %bb.11:                               # %path_alloc_copy.exit41
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 96
	st.b	$zero, $fp, 138
	beqz	$s0, .LBB10_16
.LBB10_12:
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 40
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB10_16
# %bb.13:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 16
	st.d	$zero, $a0, 8
	ld.d	$a1, $s0, 40
	st.d	$a0, $a1, 8
	st.d	$a1, $a0, 0
	ld.d	$a1, $s0, 24
	st.d	$a0, $s0, 40
	st.d	$a1, $fp, 120
	st.d	$a1, $a0, 24
	ld.d	$a1, $s0, 32
	st.d	$a1, $fp, 128
	st.d	$a1, $a0, 32
	ld.w	$a0, $s0, 48
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 48
	ld.w	$a0, $fp, 108
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 108
.LBB10_14:
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 56
	st.b	$zero, $fp, 137
	b	.LBB10_17
.LBB10_15:
	move	$a0, $zero
	b	.LBB10_17
.LBB10_16:
	addi.w	$a0, $zero, -13
.LBB10_17:
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end10:
	.size	gx_path_close_subpath, .Lfunc_end10-gx_path_close_subpath
                                        # -- End function
	.globl	gx_path_add_curve               # -- Begin function gx_path_add_curve
	.p2align	5
	.type	gx_path_add_curve,@function
gx_path_add_curve:                      # @gx_path_add_curve
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 137
	ld.d	$s7, $fp, 96
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a2
	move	$s5, $a1
	beqz	$a0, .LBB11_6
# %bb.1:
	move	$s6, $s7
	ld.bu	$a0, $fp, 138
	beqz	$a0, .LBB11_4
.LBB11_2:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_copy)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_13
# %bb.3:                                # %path_alloc_copy.exit
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s6, $fp, 96
	st.b	$zero, $fp, 138
	beqz	$s6, .LBB11_13
.LBB11_4:
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 72
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB11_13
# %bb.5:
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 16
	st.d	$zero, $a0, 8
	ld.d	$a1, $s6, 40
	st.d	$a0, $a1, 8
	st.d	$a1, $a0, 0
	st.d	$a0, $s6, 40
	st.d	$s5, $a0, 40
	st.d	$s4, $a0, 48
	st.d	$s3, $a0, 56
	st.d	$s2, $a0, 64
	st.d	$s1, $fp, 120
	st.d	$s1, $a0, 24
	st.d	$s0, $fp, 128
	st.d	$s0, $a0, 32
	ld.w	$a0, $s6, 52
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 52
	ld.w	$a1, $fp, 108
	ld.w	$a2, $fp, 112
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 108
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 112
	b	.LBB11_14
.LBB11_6:
	ld.bu	$a0, $fp, 136
	beqz	$a0, .LBB11_15
# %bb.7:
	ld.bu	$a0, $fp, 138
	beqz	$a0, .LBB11_10
# %bb.8:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_copy)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_13
# %bb.9:                                # %path_alloc_copy.exit.i
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s7, $fp, 96
	st.b	$zero, $fp, 138
	beqz	$s7, .LBB11_13
.LBB11_10:
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 64
	ori	$s8, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB11_13
# %bb.11:
	move	$s6, $a0
	st.w	$zero, $a0, 16
	st.d	$zero, $a0, 8
	st.d	$a0, $a0, 40
	st.b	$zero, $a0, 56
	st.d	$zero, $a0, 48
	vld	$vr0, $fp, 120
	vst	$vr0, $a0, 24
	st.b	$s8, $fp, 137
	beqz	$s7, .LBB11_16
# %bb.12:
	ld.d	$a0, $s7, 40
	st.d	$s6, $a0, 8
	b	.LBB11_17
.LBB11_13:
	addi.w	$a0, $zero, -13
.LBB11_14:                              # %.thread
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB11_15:
	addi.w	$a0, $zero, -14
	b	.LBB11_14
.LBB11_16:
	move	$a0, $zero
	st.d	$s6, $fp, 88
.LBB11_17:
	st.d	$a0, $s6, 0
	ld.w	$a0, $fp, 104
	st.d	$s6, $fp, 96
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 104
	ld.bu	$a0, $fp, 138
	bnez	$a0, .LBB11_2
	b	.LBB11_4
.Lfunc_end11:
	.size	gx_path_add_curve, .Lfunc_end11-gx_path_add_curve
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gx_path_add_arc
.LCPI12_0:
	.dword	0x3fe199999999999a              # double 0.55000000000000004
.LCPI12_1:
	.dword	0x3fdccccccccccccc              # double 0.44999999999999996
	.text
	.globl	gx_path_add_arc
	.p2align	5
	.type	gx_path_add_arc,@function
gx_path_add_arc:                        # @gx_path_add_arc
# %bb.0:
	pcalau12i	$a7, %pc_hi20(.LCPI12_0)
	fld.d	$fa0, $a7, %pc_lo12(.LCPI12_0)
	move	$a7, $a4
	move	$t0, $a3
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a3, $fa1
	movgr2fr.d	$fa1, $a6
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.l.d	$fa0, $fa0
	pcalau12i	$a4, %pc_hi20(.LCPI12_1)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI12_1)
	movfr2gr.d	$a4, $fa0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	add.d	$a1, $a3, $a1
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	add.d	$a2, $a4, $a2
	movgr2fr.d	$fa0, $t0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a5, $fa0
	add.d	$a3, $a3, $a5
	movgr2fr.d	$fa0, $a7
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a5, $fa0
	add.d	$a4, $a4, $a5
	move	$a5, $t0
	move	$a6, $a7
	pcaddu18i	$t8, %call36(gx_path_add_curve)
	jr	$t8
.Lfunc_end12:
	.size	gx_path_add_arc, .Lfunc_end12-gx_path_add_arc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s(%d): "
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxpath.c"
	.size	.L.str.1, 130

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"bad type in gx_path_release: %x!\n"
	.size	.L.str.2, 34

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"gx_path_release"
	.size	.L.str.3, 16

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"gx_path_new_subpath"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"gx_path_add_line"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"gx_path_add_curve"
	.size	.L.str.6, 18

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"gx_path_close_subpath"
	.size	.L.str.7, 22

	.type	.Lswitch.table.gx_path_release,@object # @switch.table.gx_path_release
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.Lswitch.table.gx_path_release:
	.word	64                              # 0x40
	.word	40                              # 0x28
	.word	40                              # 0x28
	.word	72                              # 0x48
	.size	.Lswitch.table.gx_path_release, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
