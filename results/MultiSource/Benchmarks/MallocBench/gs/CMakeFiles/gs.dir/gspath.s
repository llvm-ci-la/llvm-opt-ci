	.file	"gspath.c"
	.text
	.globl	gs_newpath                      # -- Begin function gs_newpath
	.p2align	5
	.type	gs_newpath,@function
gs_newpath:                             # @gs_newpath
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 256
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 256
	addi.d	$a1, $fp, 8
	pcaddu18i	$ra, %call36(gx_path_init)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	gs_newpath, .Lfunc_end0-gs_newpath
                                        # -- End function
	.globl	gs_closepath                    # -- Begin function gs_closepath
	.p2align	5
	.type	gs_closepath,@function
gs_closepath:                           # @gs_closepath
# %bb.0:
	ld.d	$a0, $a0, 256
	pcaddu18i	$t8, %call36(gx_path_close_subpath)
	jr	$t8
.Lfunc_end1:
	.size	gs_closepath, .Lfunc_end1-gs_closepath
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gs_currentpoint
.LCPI2_0:
	.dword	0x3f30000000000000              # double 2.44140625E-4
	.text
	.globl	gs_currentpoint
	.p2align	5
	.type	gs_currentpoint,@function
gs_currentpoint:                        # @gs_currentpoint
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 256
	move	$fp, $a1
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(gx_path_current_point)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_2
# %bb.1:
	ld.d	$a0, $sp, 8
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI2_0)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 16
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(gs_itransform)
	jirl	$ra, $ra, 0
.LBB2_2:
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	gs_currentpoint, .Lfunc_end2-gs_currentpoint
                                        # -- End function
	.globl	gs_moveto                       # -- Begin function gs_moveto
	.p2align	5
	.type	gs_moveto,@function
gs_moveto:                              # @gs_moveto
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(gs_point_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_2
# %bb.1:
	ld.d	$a0, $fp, 256
	ld.d	$a1, $sp, 0
	ld.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
.LBB3_2:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	gs_moveto, .Lfunc_end3-gs_moveto
                                        # -- End function
	.globl	gs_rmoveto                      # -- Begin function gs_rmoveto
	.p2align	5
	.type	gs_rmoveto,@function
gs_rmoveto:                             # @gs_rmoveto
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(gs_distance_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_2
# %bb.1:
	ld.d	$a0, $fp, 256
	ld.d	$a1, $sp, 0
	ld.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(gx_path_add_relative_point)
	jirl	$ra, $ra, 0
.LBB4_2:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	gs_rmoveto, .Lfunc_end4-gs_rmoveto
                                        # -- End function
	.globl	gs_lineto                       # -- Begin function gs_lineto
	.p2align	5
	.type	gs_lineto,@function
gs_lineto:                              # @gs_lineto
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(gs_point_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_2
# %bb.1:
	ld.d	$a0, $fp, 256
	ld.d	$a1, $sp, 0
	ld.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
.LBB5_2:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	gs_lineto, .Lfunc_end5-gs_lineto
                                        # -- End function
	.globl	gs_rlineto                      # -- Begin function gs_rlineto
	.p2align	5
	.type	gs_rlineto,@function
gs_rlineto:                             # @gs_rlineto
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 256
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(gx_path_current_point)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB6_3
# %bb.1:
	addi.d	$a0, $fp, 24
	addi.d	$a1, $sp, 16
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(gs_distance_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB6_3
# %bb.2:
	ld.d	$a1, $sp, 32
	ld.d	$a2, $sp, 16
	ld.d	$a3, $sp, 40
	ld.d	$a4, $sp, 24
	ld.d	$a0, $fp, 256
	add.d	$a1, $a2, $a1
	add.d	$a2, $a4, $a3
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
.LBB6_3:
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end6:
	.size	gs_rlineto, .Lfunc_end6-gs_rlineto
                                        # -- End function
	.globl	gs_arc                          # -- Begin function gs_arc
	.p2align	5
	.type	gs_arc,@function
gs_arc:                                 # @gs_arc
# %bb.0:
	move	$a1, $zero
	pcaddu18i	$t8, %call36(arc_either)
	jr	$t8
.Lfunc_end7:
	.size	gs_arc, .Lfunc_end7-gs_arc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function arc_either
.LCPI8_0:
	.dword	0x40b0000000000000              # double 4096
.LCPI8_1:
	.dword	0x3f30000000000000              # double 2.44140625E-4
.LCPI8_2:
	.dword	0x3f91df46a2529d39              # double 0.017453292519943295
.LCPI8_3:
	.dword	0x3f81df46a2529d39              # double 0.0087266462599716477
	.text
	.globl	arc_either
	.p2align	5
	.type	arc_either,@function
arc_either:                             # @arc_either
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 40                   # 8-byte Folded Spill
	fmov.d	$fs6, $fa2
	movgr2fr.d	$fa2, $zero
	fcmp.clt.d	$fcc0, $fs6, $fa2
	fst.d	$fa1, $sp, 32                   # 8-byte Folded Spill
	bceqz	$fcc0, .LBB8_2
# %bb.1:
	addi.w	$a0, $zero, -15
	b	.LBB8_24
.LBB8_2:
	move	$s0, $a1
	fmov.d	$fs2, $fa0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI8_0)
	fmul.d	$fa1, $fa3, $fa0
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$s1, $fa1
	fmul.d	$fa0, $fa4, $fa0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	bne	$s1, $a0, .LBB8_4
# %bb.3:
	move	$s3, $s1
	b	.LBB8_7
.LBB8_4:
	lu12i.w	$a1, -512638
	ori	$a1, $a1, 3459
	lu32i.d	$a1, 186413
	lu52i.d	$a2, $a1, 728
	mulh.d	$a1, $s1, $a2
	srli.d	$a3, $a1, 63
	srai.d	$a1, $a1, 18
	add.d	$a3, $a1, $a3
	lu12i.w	$a1, 360
	mul.d	$a3, $a3, $a1
	sub.d	$s3, $s1, $a3
	mulh.d	$a2, $a0, $a2
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $a1
	sub.d	$s1, $a0, $a2
	beqz	$s0, .LBB8_6
# %bb.5:
	slt	$a0, $s1, $s3
	add.d	$a1, $s3, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	b	.LBB8_7
.LBB8_6:
	slt	$a0, $s3, $s1
	add.d	$a1, $s1, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
.LBB8_7:
	movgr2fr.d	$fa0, $s3
	pcalau12i	$a0, %pc_hi20(.LCPI8_1)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI8_1)
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI8_2)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI8_2)
	fmul.d	$fa0, $fa0, $fs4
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fs3, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs6, $fa0
	fcvt.s.d	$fs0, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs6, $fa0
	fcvt.s.d	$fs3, $fa0
	fcvt.d.s	$fa0, $fs3
	fadd.d	$fa1, $fs2, $fa0
	fcvt.s.d	$fa4, $fa1
	fcvt.d.s	$fa1, $fs0
	fld.d	$fa2, $sp, 32                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa5, $fa2
	sub.d	$s2, $s1, $s3
	beqz	$s0, .LBB8_14
# %bb.8:                                # %.preheader158
	lu12i.w	$a0, -91
	ori	$s4, $a0, 4095
	ori	$s0, $zero, 1
	blt	$s4, $s2, .LBB8_20
# %bb.9:                                # %.lr.ph.preheader
	fadd.d	$fa1, $fs2, $fa1
	fcvt.s.d	$fs7, $fa1
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fs1, $fa0
	fcvt.d.s	$fa0, $fa4
	fcvt.d.s	$fa1, $fa5
	fcvt.d.s	$fa2, $fs7
	fcvt.d.s	$fa3, $fs1
	fadd.s	$fa4, $fa4, $fs0
	fcvt.d.s	$fa4, $fa4
	fsub.s	$fa5, $fa5, $fs3
	fcvt.d.s	$fa5, $fa5
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(arc_add)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB8_24
# %bb.10:
	fst.d	$fs6, $sp, 24                   # 8-byte Folded Spill
	sub.d	$a0, $s1, $s3
	lu12i.w	$s0, 90
	add.d	$s2, $a0, $s0
	fneg.s	$fs6, $fs3
	blt	$s4, $s2, .LBB8_19
	.p2align	4, , 16
.LBB8_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fmov.s	$fs3, $fs6
	fcvt.d.s	$fa0, $fs6
	fadd.d	$fa1, $fs2, $fa0
	fcvt.d.s	$fa0, $fs7
	fadd.s	$fa4, $fs7, $fs6
	fcvt.s.d	$fs7, $fa1
	fcvt.d.s	$fa1, $fs0
	fld.d	$fa2, $sp, 32                   # 8-byte Folded Reload
	fsub.d	$fa2, $fa2, $fa1
	fcvt.d.s	$fa1, $fs1
	fsub.s	$fa5, $fs1, $fs0
	fcvt.s.d	$fs1, $fa2
	fcvt.d.s	$fa2, $fs7
	fcvt.d.s	$fa3, $fs1
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(arc_add)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB8_24
# %bb.12:                               #   in Loop: Header=BB8_11 Depth=1
	add.d	$s2, $s2, $s0
	fneg.s	$fs6, $fs0
	fmov.s	$fs0, $fs3
	bge	$s4, $s2, .LBB8_11
# %bb.13:
	move	$s0, $zero
	fmov.s	$fs0, $fs3
	bnez	$s2, .LBB8_21
	b	.LBB8_23
.LBB8_14:                               # %.preheader
	lu12i.w	$a0, 90
	ori	$s4, $a0, 1
	ori	$s0, $zero, 1
	blt	$s2, $s4, .LBB8_20
# %bb.15:                               # %.lr.ph193.preheader
	fsub.d	$fa1, $fs2, $fa1
	fcvt.s.d	$fs7, $fa1
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fs1, $fa0
	fcvt.d.s	$fa0, $fa4
	fcvt.d.s	$fa1, $fa5
	fcvt.d.s	$fa2, $fs7
	fcvt.d.s	$fa3, $fs1
	fsub.s	$fa4, $fa4, $fs0
	fcvt.d.s	$fa4, $fa4
	fadd.s	$fa5, $fa5, $fs3
	fcvt.d.s	$fa5, $fa5
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(arc_add)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB8_24
# %bb.16:
	fst.d	$fs6, $sp, 24                   # 8-byte Folded Spill
	sub.d	$a0, $s1, $s3
	lu12i.w	$s0, -90
	add.d	$s2, $a0, $s0
	fneg.s	$fs0, $fs0
	blt	$s2, $s4, .LBB8_22
	.p2align	4, , 16
.LBB8_17:                               # %.lr.ph193
                                        # =>This Inner Loop Header: Depth=1
	fmov.s	$fs6, $fs0
	fcvt.d.s	$fa0, $fs3
	fsub.d	$fa1, $fs2, $fa0
	fcvt.d.s	$fa0, $fs7
	fsub.s	$fa4, $fs7, $fs3
	fcvt.s.d	$fs7, $fa1
	fcvt.d.s	$fa1, $fs0
	fld.d	$fa2, $sp, 32                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fcvt.d.s	$fa1, $fs1
	fadd.s	$fa5, $fs1, $fs0
	fcvt.s.d	$fs1, $fa2
	fcvt.d.s	$fa2, $fs7
	fcvt.d.s	$fa3, $fs1
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(arc_add)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB8_24
# %bb.18:                               #   in Loop: Header=BB8_17 Depth=1
	add.d	$s2, $s2, $s0
	fneg.s	$fs0, $fs3
	fmov.s	$fs3, $fs6
	bge	$s2, $s4, .LBB8_17
.LBB8_19:
	move	$s0, $zero
	bnez	$s2, .LBB8_21
	b	.LBB8_23
.LBB8_20:
	fst.d	$fs6, $sp, 24                   # 8-byte Folded Spill
	fmov.s	$fs7, $fa4
	fmov.s	$fs1, $fa5
	fmov.s	$fs6, $fs0
	fmov.s	$fs0, $fs3
	beqz	$s2, .LBB8_23
.LBB8_21:
	movgr2fr.d	$fa0, $s2
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI8_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI8_3)
	fmul.d	$fa0, $fa0, $fs4
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(tan)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fs3, $fa0
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs4
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa1, $fs7
	fst.d	$fa1, $sp, 16                   # 8-byte Folded Spill
	fcvt.d.s	$fa1, $fs1
	fst.d	$fa1, $sp, 8                    # 8-byte Folded Spill
	fcvt.d.s	$fs5, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fmadd.d	$fs2, $fs4, $fa0, $fs2
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	fmadd.d	$fa3, $fs4, $fa0, $fa1
	fneg.s	$fa0, $fs3
	fmadd.s	$fa0, $fa0, $fs6, $fs7
	fcvt.d.s	$fa4, $fa0
	fmadd.s	$fa0, $fs3, $fs0, $fs1
	fcvt.d.s	$fa5, $fa0
	move	$a0, $fp
	fld.d	$fa0, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fa1, $sp, 8                    # 8-byte Folded Reload
	fmov.d	$fa2, $fs2
	move	$a1, $s0
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	pcaddu18i	$t8, %call36(arc_add)
	jr	$t8
.LBB8_22:
	move	$s0, $zero
	fmov.s	$fs6, $fs3
	bnez	$s2, .LBB8_21
.LBB8_23:
	move	$a0, $zero
.LBB8_24:                               # %.thread
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end8:
	.size	arc_either, .Lfunc_end8-arc_either
                                        # -- End function
	.globl	gs_arcn                         # -- Begin function gs_arcn
	.p2align	5
	.type	gs_arcn,@function
gs_arcn:                                # @gs_arcn
# %bb.0:
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(arc_either)
	jr	$t8
.Lfunc_end9:
	.size	gs_arcn, .Lfunc_end9-gs_arcn
                                        # -- End function
	.globl	arc_add                         # -- Begin function arc_add
	.p2align	5
	.type	arc_add,@function
arc_add:                                # @arc_add
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 80                   # 8-byte Folded Spill
	ld.d	$fp, $a0, 256
	move	$s0, $a1
	fmov.d	$fs0, $fa5
	fmov.d	$fs1, $fa4
	fmov.d	$fs2, $fa3
	fmov.d	$fs3, $fa2
	addi.d	$s1, $a0, 24
	addi.d	$a1, $sp, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gs_point_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_7
# %bb.1:
	addi.d	$a1, $sp, 48
	move	$a0, $s1
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(gs_point_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_7
# %bb.2:
	addi.d	$a1, $sp, 32
	move	$a0, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(gs_point_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_7
# %bb.3:
	beqz	$s0, .LBB10_6
# %bb.4:
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_current_point)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	ld.d	$a2, $sp, 72
	bltz	$a0, .LBB10_8
# %bb.5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_7
.LBB10_6:
	ld.d	$a1, $sp, 64
	ld.d	$a2, $sp, 72
	ld.d	$a3, $sp, 48
	ld.d	$a4, $sp, 56
	ld.d	$a5, $sp, 32
	ld.d	$a6, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_arc)
	jirl	$ra, $ra, 0
.LBB10_7:
	fld.d	$fs3, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB10_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB10_6
	b	.LBB10_7
.Lfunc_end10:
	.size	arc_add, .Lfunc_end10-arc_add
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gs_arcto
.LCPI11_0:
	.dword	0x3f30000000000000              # double 2.44140625E-4
.LCPI11_1:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	gs_arcto
	.p2align	5
	.type	gs_arcto,@function
gs_arcto:                               # @gs_arcto
# %bb.0:
	movgr2fr.d	$fa5, $zero
	fcmp.clt.d	$fcc0, $fa4, $fa5
	bceqz	$fcc0, .LBB11_2
# %bb.1:
	addi.w	$a0, $zero, -23
	ret
.LBB11_2:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 56                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$fp, $a0
	fmov.d	$fs4, $fa2
	fmov.d	$fs3, $fa3
	fst.d	$fa4, $sp, 24                   # 8-byte Folded Spill
	move	$s0, $a1
	ld.d	$a0, $a0, 256
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(gx_path_current_point)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_12
# %bb.3:                                # %gs_currentpoint.exit
	ld.d	$a0, $sp, 40
	pcalau12i	$a1, %pc_hi20(.LCPI11_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI11_0)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 48
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	addi.d	$a1, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_itransform)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_12
# %bb.4:
	fld.s	$fa0, $sp, 32
	fld.s	$fa1, $sp, 36
	fcvt.d.s	$fa0, $fa0
	fsub.d	$fa0, $fa0, $fs1
	fcvt.s.d	$fs5, $fa0
	fcvt.d.s	$fa0, $fa1
	fsub.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fs6, $fa0
	fsub.d	$fa0, $fs4, $fs1
	fcvt.s.d	$fs4, $fa0
	fsub.d	$fa0, $fs3, $fs0
	fcvt.s.d	$fs3, $fa0
	fmul.s	$fa0, $fs6, $fs6
	fmadd.s	$fa0, $fs5, $fs5, $fa0
	fcvt.d.s	$fa4, $fa0
	fmul.s	$fa0, $fs3, $fs3
	fmadd.s	$fa0, $fs4, $fs4, $fa0
	fcvt.d.s	$fs2, $fa0
	fneg.s	$fa0, $fs5
	fmul.s	$fa0, $fs3, $fa0
	fmadd.s	$fa2, $fs6, $fs4, $fa0
	fmul.d	$fa1, $fs2, $fa4
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fcvt.d.s	$fs7, $fa2
	bceqz	$fcc0, .LBB11_13
.LBB11_5:                               # %.split
	pcalau12i	$a0, %pc_hi20(.LCPI11_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI11_1)
	fabs.d	$fa1, $fs7
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fld.d	$fa1, $sp, 24                   # 8-byte Folded Reload
	bcnez	$fcc0, .LBB11_8
# %bb.6:                                # %.split
	fmul.s	$fa3, $fs3, $fs6
	fmadd.s	$fa3, $fs5, $fs4, $fa3
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa0, $fa0, $fa3
	fabs.d	$fa3, $fa0
	fcmp.cule.d	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB11_8
# %bb.7:
	fmul.d	$fa1, $fa1, $fs7
	fdiv.d	$fa0, $fa1, $fa0
	fabs.d	$fa0, $fa0
	fsqrt.d	$fa1, $fa4
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa2, $fs2
	fdiv.d	$fa0, $fa0, $fa2
	fcvt.d.s	$fa2, $fs5
	fmadd.d	$fa2, $fa2, $fa1, $fs1
	fcvt.s.d	$fs5, $fa2
	fcvt.d.s	$fa2, $fs6
	fmadd.d	$fa1, $fa2, $fa1, $fs0
	fcvt.s.d	$fs6, $fa1
	fcvt.d.s	$fa1, $fs4
	fmadd.d	$fa1, $fa1, $fa0, $fs1
	fcvt.s.d	$fs2, $fa1
	fcvt.d.s	$fa1, $fs3
	fmadd.d	$fa0, $fa1, $fa0, $fs0
	fcvt.s.d	$fs3, $fa0
	fcvt.d.s	$fa0, $fs5
	fcvt.d.s	$fa1, $fs6
	fcvt.d.s	$fa2, $fs2
	fcvt.d.s	$fa3, $fs3
	ori	$a1, $zero, 1
	move	$a0, $fp
	fmov.d	$fa4, $fs1
	fmov.d	$fa5, $fs0
	pcaddu18i	$ra, %call36(arc_add)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB11_11
	b	.LBB11_12
.LBB11_8:
	addi.d	$a0, $fp, 24
	addi.d	$a1, $sp, 40
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(gs_point_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_10
# %bb.9:
	ld.d	$a0, $fp, 256
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 48
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
.LBB11_10:
	fcvt.s.d	$fs2, $fs1
	fcvt.s.d	$fs3, $fs0
	fmov.s	$fs6, $fs3
	fmov.s	$fs5, $fs2
	beqz	$s0, .LBB11_12
.LBB11_11:
	fst.s	$fs5, $s0, 0
	fst.s	$fs6, $s0, 4
	fst.s	$fs2, $s0, 8
	fst.s	$fs3, $s0, 12
.LBB11_12:
	fld.d	$fs7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB11_13:                              # %call.sqrt
	fmov.d	$fa0, $fa1
	fst.d	$fa4, $sp, 16                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 16                   # 8-byte Folded Reload
	b	.LBB11_5
.Lfunc_end11:
	.size	gs_arcto, .Lfunc_end11-gs_arcto
                                        # -- End function
	.globl	gs_curveto                      # -- Begin function gs_curveto
	.p2align	5
	.type	gs_curveto,@function
gs_curveto:                             # @gs_curveto
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa5
	fmov.d	$fs1, $fa4
	fmov.d	$fs2, $fa3
	fmov.d	$fs3, $fa2
	move	$fp, $a0
	addi.d	$s0, $a0, 24
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_point_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB12_4
# %bb.1:
	addi.d	$a1, $sp, 24
	move	$a0, $s0
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(gs_point_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB12_4
# %bb.2:
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(gs_point_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB12_4
# %bb.3:
	ld.d	$a0, $fp, 256
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 48
	ld.d	$a3, $sp, 24
	ld.d	$a4, $sp, 32
	ld.d	$a5, $sp, 8
	ld.d	$a6, $sp, 16
	pcaddu18i	$ra, %call36(gx_path_add_curve)
	jirl	$ra, $ra, 0
.LBB12_4:
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end12:
	.size	gs_curveto, .Lfunc_end12-gs_curveto
                                        # -- End function
	.globl	gs_rcurveto                     # -- Begin function gs_rcurveto
	.p2align	5
	.type	gs_rcurveto,@function
gs_rcurveto:                            # @gs_rcurveto
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 72                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 256
	fmov.d	$fs0, $fa5
	fmov.d	$fs1, $fa4
	fmov.d	$fs2, $fa3
	fmov.d	$fs3, $fa2
	fmov.d	$fs4, $fa1
	fmov.d	$fs5, $fa0
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(gx_path_current_point)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_5
# %bb.1:
	addi.d	$s0, $fp, 24
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs4
	pcaddu18i	$ra, %call36(gs_distance_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_5
# %bb.2:
	addi.d	$a1, $sp, 24
	move	$a0, $s0
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(gs_distance_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_5
# %bb.3:
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(gs_distance_transform2fixed)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_5
# %bb.4:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 40
	add.d	$a1, $a1, $a0
	ld.d	$a2, $sp, 24
	ld.d	$a6, $sp, 64
	ld.d	$a4, $sp, 8
	ld.d	$a7, $sp, 48
	add.d	$a3, $a2, $a0
	ld.d	$t0, $sp, 32
	add.d	$a5, $a4, $a0
	ld.d	$t1, $sp, 16
	ld.d	$a0, $fp, 256
	add.d	$a2, $a7, $a6
	add.d	$a4, $t0, $a6
	add.d	$a6, $t1, $a6
	pcaddu18i	$ra, %call36(gx_path_add_curve)
	jirl	$ra, $ra, 0
.LBB13_5:
	fld.d	$fs5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end13:
	.size	gs_rcurveto, .Lfunc_end13-gs_rcurveto
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
