	.file	"gspath2.c"
	.text
	.globl	gs_flattenpath                  # -- Begin function gs_flattenpath
	.p2align	5
	.type	gs_flattenpath,@function
gs_flattenpath:                         # @gs_flattenpath
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 256
	ld.w	$a1, $a0, 112
	beqz	$a1, .LBB0_3
# %bb.1:
	fld.s	$fa0, $fp, 440
	fcvt.d.s	$fa0, $fa0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_flatten)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_4
# %bb.2:
	ld.d	$a0, $fp, 256
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 256
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_3:
	move	$a0, $zero
.LBB0_4:
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end0:
	.size	gs_flattenpath, .Lfunc_end0-gs_flattenpath
                                        # -- End function
	.globl	gs_reversepath                  # -- Begin function gs_reversepath
	.p2align	5
	.type	gs_reversepath,@function
gs_reversepath:                         # @gs_reversepath
# %bb.0:
	addi.w	$a0, $zero, -21
	ret
.Lfunc_end1:
	.size	gs_reversepath, .Lfunc_end1-gs_reversepath
                                        # -- End function
	.globl	gs_pathbbox                     # -- Begin function gs_pathbbox
	.p2align	5
	.type	gs_pathbbox,@function
gs_pathbbox:                            # @gs_pathbbox
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 256
	move	$fp, $a1
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(gx_path_bbox)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_2
# %bb.1:
	ld.d	$a0, $sp, 24
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	lu52i.d	$a0, $zero, 1011
	movgr2fr.d	$fa1, $a0
	ld.d	$a0, $sp, 32
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $sp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 40
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $sp, 12
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 48
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $sp, 16
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $sp, 20
	addi.d	$a1, $s0, 24
	addi.d	$a0, $sp, 8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(gs_bbox_transform_inverse)
	jirl	$ra, $ra, 0
.LBB2_2:
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	gs_pathbbox, .Lfunc_end2-gs_pathbbox
                                        # -- End function
	.globl	gs_path_enum_init               # -- Begin function gs_path_enum_init
	.p2align	5
	.type	gs_path_enum_init,@function
gs_path_enum_init:                      # @gs_path_enum_init
# %bb.0:
	ld.d	$a2, $a1, 256
	ld.d	$a2, $a2, 88
	st.d	$a2, $a0, 0
	st.d	$a1, $a0, 8
	ret
.Lfunc_end3:
	.size	gs_path_enum_init, .Lfunc_end3-gs_path_enum_init
                                        # -- End function
	.globl	gs_path_enum_next               # -- Begin function gs_path_enum_next
	.p2align	5
	.type	gs_path_enum_next,@function
gs_path_enum_next:                      # @gs_path_enum_next
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	ld.d	$s1, $a0, 0
	beqz	$s1, .LBB4_11
# %bb.1:
	ld.d	$a2, $s1, 8
	ld.w	$a3, $s1, 16
	ld.d	$s0, $a0, 8
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 2
	ori	$a0, $zero, 4
	beq	$a3, $a2, .LBB4_12
# %bb.2:
	move	$fp, $a1
	ld.d	$a0, $s1, 24
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	lu52i.d	$a0, $zero, 1011
	movgr2fr.d	$fs0, $a0
	ld.d	$a0, $s1, 32
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fs0
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	addi.d	$a1, $sp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_itransform)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_12
# %bb.3:
	ld.w	$a0, $s1, 16
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB4_8
# %bb.4:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_7
# %bb.5:
	bnez	$a0, .LBB4_13
# %bb.6:
	ld.d	$a0, $sp, 0
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 1
	b	.LBB4_12
.LBB4_7:
	ld.d	$a0, $sp, 0
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 2
	b	.LBB4_12
.LBB4_8:
	ld.d	$a0, $s1, 40
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $s1, 48
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fs0
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(gs_itransform)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_11
# %bb.9:
	ld.d	$a0, $s1, 56
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $s1, 64
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fs0
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	addi.d	$a1, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_itransform)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_11
# %bb.10:
	ld.d	$a0, $sp, 0
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 3
	b	.LBB4_12
.LBB4_11:
	move	$a0, $zero
.LBB4_12:
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_13:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 125
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $s1, 16
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	gs_path_enum_next, .Lfunc_end4-gs_path_enum_next
                                        # -- End function
	.globl	gs_clippath                     # -- Begin function gs_clippath
	.p2align	5
	.type	gs_clippath,@function
gs_clippath:                            # @gs_clippath
# %bb.0:
	ld.d	$a2, $a0, 264
	ld.d	$a1, $a0, 256
	move	$a0, $a2
	pcaddu18i	$t8, %call36(gx_path_copy)
	jr	$t8
.Lfunc_end5:
	.size	gs_clippath, .Lfunc_end5-gs_clippath
                                        # -- End function
	.globl	gs_initclip                     # -- Begin function gs_initclip
	.p2align	5
	.type	gs_initclip,@function
gs_initclip:                            # @gs_initclip
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 448
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 24
	ld.w	$a0, $a0, 28
	slli.d	$s0, $a1, 12
	slli.d	$s1, $a0, 12
	addi.d	$a1, $fp, 8
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_init)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $s0
	move	$a4, $s1
	pcaddu18i	$ra, %call36(gx_path_add_rectangle)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB6_4
# %bb.1:
	ld.d	$a0, $fp, 264
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	addi.d	$s0, $sp, 72
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gx_path_is_rectangle)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_3
# %bb.2:
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 16
	vst	$vr0, $s0, 0
.LBB6_3:                                # %set_clip_path.exit.i
	addi.d	$a1, $sp, 32
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_bbox)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 264
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 272
	b	.LBB6_5
.LBB6_4:
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB6_5:                                # %gx_clip_to_rectangle.exit
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end6:
	.size	gs_initclip, .Lfunc_end6-gs_initclip
                                        # -- End function
	.globl	gs_clip                         # -- Begin function gs_clip
	.p2align	5
	.type	gs_clip,@function
gs_clip:                                # @gs_clip
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$fp, $a0
	fld.s	$fa0, $a0, 440
	ld.d	$a0, $a0, 256
	fcvt.d.s	$fa0, $fa0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_flatten)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_4
# %bb.1:
	move	$s1, $a0
	addi.d	$s0, $sp, 72
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gx_path_is_rectangle)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_3
# %bb.2:
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 16
	vst	$vr0, $s0, 0
.LBB7_3:                                # %set_clip_path.exit.i
	addi.d	$a1, $sp, 32
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_bbox)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 264
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 272
	move	$a0, $s1
.LBB7_4:                                # %common_clip.exit
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end7:
	.size	gs_clip, .Lfunc_end7-gs_clip
                                        # -- End function
	.globl	common_clip                     # -- Begin function common_clip
	.p2align	5
	.type	common_clip,@function
common_clip:                            # @common_clip
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	fld.s	$fa0, $a0, 440
	ld.d	$a0, $a0, 256
	move	$s0, $a1
	fcvt.d.s	$fa0, $fa0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(gx_path_flatten)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_4
# %bb.1:
	move	$s2, $a0
	addi.d	$s1, $sp, 64
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(gx_path_is_rectangle)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_3
# %bb.2:
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 16
	vst	$vr0, $s1, 0
.LBB8_3:                                # %set_clip_path.exit
	addi.d	$a1, $sp, 24
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(gx_path_bbox)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 264
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.w	$s0, $fp, 272
	move	$a0, $s2
.LBB8_4:
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end8:
	.size	common_clip, .Lfunc_end8-common_clip
                                        # -- End function
	.globl	gs_eoclip                       # -- Begin function gs_eoclip
	.p2align	5
	.type	gs_eoclip,@function
gs_eoclip:                              # @gs_eoclip
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$fp, $a0
	fld.s	$fa0, $a0, 440
	ld.d	$a0, $a0, 256
	fcvt.d.s	$fa0, $fa0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_flatten)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_4
# %bb.1:
	move	$s1, $a0
	addi.d	$s0, $sp, 72
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gx_path_is_rectangle)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_3
# %bb.2:
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 16
	vst	$vr0, $s0, 0
.LBB9_3:                                # %set_clip_path.exit.i
	addi.d	$a1, $sp, 32
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_bbox)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 264
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 272
	move	$a0, $s1
.LBB9_4:                                # %common_clip.exit
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end9:
	.size	gs_eoclip, .Lfunc_end9-gs_eoclip
                                        # -- End function
	.globl	gx_clip_to_rectangle            # -- Begin function gx_clip_to_rectangle
	.p2align	5
	.type	gx_clip_to_rectangle,@function
gx_clip_to_rectangle:                   # @gx_clip_to_rectangle
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$fp, $a0
	addi.d	$a1, $a0, 8
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_init)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(gx_path_add_rectangle)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_4
# %bb.1:
	ld.d	$a0, $fp, 264
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	addi.d	$s0, $sp, 72
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gx_path_is_rectangle)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_3
# %bb.2:
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 16
	vst	$vr0, $s0, 0
.LBB10_3:                               # %set_clip_path.exit
	addi.d	$a1, $sp, 32
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_bbox)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 264
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 272
	b	.LBB10_5
.LBB10_4:
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB10_5:
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end10:
	.size	gx_clip_to_rectangle, .Lfunc_end10-gx_clip_to_rectangle
                                        # -- End function
	.globl	set_clip_path                   # -- Begin function set_clip_path
	.p2align	5
	.type	set_clip_path,@function
set_clip_path:                          # @set_clip_path
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$s2, $a1, 56
	move	$a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(gx_path_is_rectangle)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_2
# %bb.1:
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 16
	vst	$vr0, $s2, 0
.LBB11_2:
	addi.d	$a1, $s1, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gx_path_bbox)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 264
	ori	$a2, $zero, 144
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.w	$fp, $s0, 272
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	set_clip_path, .Lfunc_end11-set_clip_path
                                        # -- End function
	.type	gs_path_enum_sizeof,@object     # @gs_path_enum_sizeof
	.data
	.globl	gs_path_enum_sizeof
	.p2align	2, 0x0
gs_path_enum_sizeof:
	.word	16                              # 0x10
	.size	gs_path_enum_sizeof, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s(%d): "
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspath2.c"
	.size	.L.str.1, 131

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"bad type %x in gs_path_enum_next!\n"
	.size	.L.str.2, 35

	.section	".note.GNU-stack","",@progbits
	.addrsig
