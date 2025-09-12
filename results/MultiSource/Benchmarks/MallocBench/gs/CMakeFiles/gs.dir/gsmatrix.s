	.file	"gsmatrix.c"
	.text
	.globl	gs_make_identity                # -- Begin function gs_make_identity
	.p2align	5
	.type	gs_make_identity,@function
gs_make_identity:                       # @gs_make_identity
# %bb.0:
	pcalau12i	$a1, %pc_hi20(gs_identity_matrix)
	addi.d	$a1, $a1, %pc_lo12(gs_identity_matrix)
	ori	$a2, $zero, 96
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end0:
	.size	gs_make_identity, .Lfunc_end0-gs_make_identity
                                        # -- End function
	.globl	gs_make_translation             # -- Begin function gs_make_translation
	.p2align	5
	.type	gs_make_translation,@function
gs_make_translation:                    # @gs_make_translation
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	pcalau12i	$a0, %pc_hi20(gs_identity_matrix)
	addi.d	$a1, $a0, %pc_lo12(gs_identity_matrix)
	ori	$a2, $zero, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fs1
	fst.s	$fa0, $fp, 64
	fcvt.s.d	$fa0, $fs0
	fst.s	$fa0, $fp, 80
	move	$a0, $zero
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	gs_make_translation, .Lfunc_end1-gs_make_translation
                                        # -- End function
	.globl	gs_make_scaling                 # -- Begin function gs_make_scaling
	.p2align	5
	.type	gs_make_scaling,@function
gs_make_scaling:                        # @gs_make_scaling
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	pcalau12i	$a0, %pc_hi20(gs_identity_matrix)
	addi.d	$a1, $a0, %pc_lo12(gs_identity_matrix)
	ori	$a2, $zero, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fs1
	fst.s	$fa0, $fp, 0
	fcvt.s.d	$fa0, $fs0
	fst.s	$fa0, $fp, 48
	move	$a0, $zero
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	gs_make_scaling, .Lfunc_end2-gs_make_scaling
                                        # -- End function
	.globl	gs_make_rotation                # -- Begin function gs_make_rotation
	.p2align	5
	.type	gs_make_rotation,@function
gs_make_rotation:                       # @gs_make_rotation
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, -383703
	ori	$a0, $a0, 3385
	lu32i.d	$a0, 122694
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(gs_identity_matrix)
	addi.d	$a1, $a0, %pc_lo12(gs_identity_matrix)
	ori	$a2, $zero, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fs0, $fs0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 48
	fst.s	$fa0, $fp, 0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 16
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $fp, 32
	move	$a0, $zero
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	gs_make_rotation, .Lfunc_end3-gs_make_rotation
                                        # -- End function
	.globl	gs_matrix_multiply              # -- Begin function gs_matrix_multiply
	.p2align	5
	.type	gs_matrix_multiply,@function
gs_matrix_multiply:                     # @gs_matrix_multiply
# %bb.0:
	addi.d	$sp, $sp, -16
	fld.s	$fa5, $a0, 0
	fld.s	$fa2, $a0, 48
	fld.s	$fa3, $a0, 64
	fld.s	$fa0, $a0, 80
	fld.s	$fa4, $a1, 0
	fld.s	$fa6, $a1, 16
	ld.d	$a3, $a0, 16
	ld.d	$a0, $a0, 32
	fld.s	$fa1, $a1, 48
	fld.s	$fa7, $a1, 32
	fst.s	$fa6, $sp, 8
	or	$a4, $a0, $a3
	slli.d	$a4, $a4, 1
	fst.s	$fa7, $sp, 0
	beqz	$a4, .LBB4_2
# %bb.1:
	movgr2fr.w	$ft0, $a0
	movgr2fr.w	$ft1, $a3
	fmul.s	$ft2, $fa7, $ft1
	fmadd.s	$ft2, $fa5, $fa4, $ft2
	fst.s	$ft2, $a2, 0
	fmul.s	$ft1, $fa1, $ft1
	fmadd.s	$fa5, $fa5, $fa6, $ft1
	fst.s	$fa5, $a2, 16
	fmul.s	$fa5, $fa2, $fa1
	fmadd.s	$fa5, $ft0, $fa6, $fa5
	fst.s	$fa5, $a2, 48
	fmul.s	$fa2, $fa2, $fa7
	fmadd.s	$fa2, $ft0, $fa4, $fa2
	fld.s	$fa5, $a1, 64
	fst.s	$fa2, $a2, 32
	fmul.s	$fa2, $fa0, $fa7
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fadd.s	$fa2, $fa2, $fa5
	fld.s	$fa4, $a1, 80
	fst.s	$fa2, $a2, 64
	fmul.s	$fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa3, $fa6, $fa0
	fadd.s	$fa0, $fa0, $fa4
	ori	$a0, $zero, 80
	fstx.s	$fa0, $a2, $a0
	move	$a0, $zero
	addi.d	$sp, $sp, 16
	ret
.LBB4_2:
	fld.s	$fa6, $a1, 64
	fld.s	$fa7, $a1, 80
	fmadd.s	$fa6, $fa3, $fa4, $fa6
	ld.d	$a0, $sp, 8
	fst.s	$fa6, $a2, 64
	fmadd.s	$ft1, $fa0, $fa1, $fa7
	movgr2fr.w	$fa7, $zero
	slli.d	$a1, $a0, 1
	fst.s	$ft1, $a2, 80
	fmov.s	$ft0, $fa7
	beqz	$a1, .LBB4_4
# %bb.3:
	movgr2fr.w	$ft2, $a0
	fmul.s	$ft0, $fa5, $ft2
	fmadd.s	$fa3, $fa3, $ft2, $ft1
	fst.s	$fa3, $a2, 80
.LBB4_4:
	ld.d	$a0, $sp, 0
	fst.s	$ft0, $a2, 16
	fmul.s	$fa3, $fa5, $fa4
	slli.d	$a1, $a0, 1
	fst.s	$fa3, $a2, 0
	beqz	$a1, .LBB4_6
# %bb.5:
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa7, $fa2, $fa3
	fmadd.s	$fa0, $fa0, $fa3, $fa6
	fst.s	$fa0, $a2, 64
.LBB4_6:
	fst.s	$fa7, $a2, 32
	fmul.s	$fa0, $fa2, $fa1
	ori	$a0, $zero, 48
	fstx.s	$fa0, $a2, $a0
	move	$a0, $zero
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	gs_matrix_multiply, .Lfunc_end4-gs_matrix_multiply
                                        # -- End function
	.globl	gs_matrix_invert                # -- Begin function gs_matrix_invert
	.p2align	5
	.type	gs_matrix_invert,@function
gs_matrix_invert:                       # @gs_matrix_invert
# %bb.0:
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 32
	or	$a4, $a2, $a3
	slli.d	$a4, $a4, 1
	beqz	$a4, .LBB5_3
# %bb.1:
	movgr2fr.w	$fa1, $a3
	lu12i.w	$a3, -524288
	fld.s	$fa0, $a0, 0
	fld.s	$fa4, $a0, 48
	xor	$a2, $a2, $a3
	movgr2fr.w	$fa2, $a2
	fmul.s	$fa3, $fa1, $fa2
	fmadd.s	$fa3, $fa0, $fa4, $fa3
	movgr2fr.w	$fa5, $zero
	fcmp.ceq.s	$fcc0, $fa3, $fa5
	bceqz	$fcc0, .LBB5_6
# %bb.2:
	addi.w	$a0, $zero, -23
	ret
.LBB5_3:
	ld.d	$a3, $a0, 0
	slli.d	$a4, $a3, 1
	addi.w	$a2, $zero, -23
	beqz	$a4, .LBB5_8
# %bb.4:
	ld.d	$a4, $a0, 48
	slli.d	$a5, $a4, 1
	beqz	$a5, .LBB5_8
# %bb.5:
	movgr2fr.w	$fa0, $a3
	movgr2fr.w	$fa1, $a4
	fld.s	$fa2, $a0, 64
	frecip.s	$fa0, $fa0
	fst.s	$fa0, $a1, 0
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 64
	st.w	$zero, $a1, 16
	st.w	$zero, $a1, 32
	fld.s	$fa0, $a0, 80
	frecip.s	$fa1, $fa1
	fst.s	$fa1, $a1, 48
	fneg.s	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	b	.LBB5_7
.LBB5_6:                                # %.thread
	fld.s	$fa5, $a0, 64
	fdiv.s	$fa4, $fa4, $fa3
	fst.s	$fa4, $a1, 0
	fneg.s	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa3
	fdiv.s	$fa2, $fa2, $fa3
	fdiv.s	$fa0, $fa0, $fa3
	fld.s	$fa3, $a0, 80
	fst.s	$fa1, $a1, 16
	fst.s	$fa2, $a1, 32
	fst.s	$fa0, $a1, 48
	fmul.s	$fa2, $fa2, $fa3
	fnmadd.s	$fa2, $fa5, $fa4, $fa2
	fst.s	$fa2, $a1, 64
	fmul.s	$fa0, $fa0, $fa3
	fnmadd.s	$fa0, $fa5, $fa1, $fa0
.LBB5_7:                                # %.sink.split
	move	$a2, $zero
	fst.s	$fa0, $a1, 80
.LBB5_8:
	move	$a0, $a2
	ret
.Lfunc_end5:
	.size	gs_matrix_invert, .Lfunc_end5-gs_matrix_invert
                                        # -- End function
	.globl	gs_matrix_rotate                # -- Begin function gs_matrix_rotate
	.p2align	5
	.type	gs_matrix_rotate,@function
gs_matrix_rotate:                       # @gs_matrix_rotate
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	fabs.d	$fa1, $fa0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 425984
	lu52i.d	$a2, $a2, 1031
	movgr2fr.d	$fa2, $a2
	fcmp.cult.d	$fcc0, $fa2, $fa1
	move	$fp, $a1
	move	$s0, $a0
	bcnez	$fcc0, .LBB6_6
# %bb.1:
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -302922
	ori	$a1, $a1, 183
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srli.d	$a0, $a0, 6
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 90
	mul.d	$a1, $a0, $a1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB6_6
# %bb.2:
	andi	$a0, $a0, 3
	beqz	$a0, .LBB6_8
# %bb.3:                                # %.lr.ph.preheader
	move	$a1, $zero
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB6_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a1
	move	$a1, $a2
	addi.w	$a0, $a0, -1
	sub.w	$a2, $zero, $a3
	bnez	$a0, .LBB6_4
# %bb.5:                                # %._crit_edge.loopexit
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fs1, $fa0
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	b	.LBB6_7
.LBB6_6:
	lu12i.w	$a0, -383703
	ori	$a0, $a0, 3385
	lu32i.d	$a0, 122694
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
.LBB6_7:                                # %._crit_edge
	fld.s	$fa1, $s0, 32
	fld.s	$fa2, $s0, 0
	fld.s	$fa3, $s0, 16
	fld.s	$fa4, $s0, 48
	fmul.s	$fa5, $fs1, $fa1
	fmadd.s	$fa5, $fa0, $fa2, $fa5
	fst.s	$fa5, $fp, 0
	fmul.s	$fa5, $fs1, $fa4
	fmadd.s	$fa5, $fa0, $fa3, $fa5
	fst.s	$fa5, $fp, 16
	fneg.s	$fa2, $fa2
	fmul.s	$fa2, $fs1, $fa2
	fmadd.s	$fa1, $fa0, $fa1, $fa2
	fst.s	$fa1, $fp, 32
	fneg.s	$fa1, $fa3
	fmul.s	$fa1, $fs1, $fa1
	fld.s	$fa2, $s0, 64
	fld.s	$fa3, $s0, 80
	fmadd.s	$fa0, $fa0, $fa4, $fa1
	fst.s	$fa0, $fp, 48
	fst.s	$fa2, $fp, 64
	fst.s	$fa3, $fp, 80
	move	$a0, $zero
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_8:
	movgr2fr.w	$fs1, $zero
	vldi	$vr0, -1168
	b	.LBB6_7
.Lfunc_end6:
	.size	gs_matrix_rotate, .Lfunc_end6-gs_matrix_rotate
                                        # -- End function
	.globl	gs_point_transform              # -- Begin function gs_point_transform
	.p2align	5
	.type	gs_point_transform,@function
gs_point_transform:                     # @gs_point_transform
# %bb.0:
	fld.s	$fa2, $a0, 0
	fld.s	$fa3, $a0, 64
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa3, $fa3
	fmadd.d	$fa2, $fa0, $fa2, $fa3
	fld.s	$fa4, $a0, 48
	fld.s	$fa5, $a0, 80
	fcvt.s.d	$fa3, $fa2
	fst.s	$fa3, $a1, 0
	fcvt.d.s	$fa2, $fa4
	fcvt.d.s	$fa4, $fa5
	fmadd.d	$fa2, $fa1, $fa2, $fa4
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a1, 4
	ld.d	$a2, $a0, 32
	slli.d	$a3, $a2, 1
	beqz	$a3, .LBB7_2
# %bb.1:
	movgr2fr.w	$fa4, $a2
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa3, $fa3
	fmadd.d	$fa1, $fa1, $fa4, $fa3
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a1, 0
.LBB7_2:
	ld.d	$a0, $a0, 16
	slli.d	$a2, $a0, 1
	beqz	$a2, .LBB7_4
# %bb.3:
	movgr2fr.w	$fa1, $a0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a1, 4
.LBB7_4:
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	gs_point_transform, .Lfunc_end7-gs_point_transform
                                        # -- End function
	.globl	gs_point_transform_inverse      # -- Begin function gs_point_transform_inverse
	.p2align	5
	.type	gs_point_transform_inverse,@function
gs_point_transform_inverse:             # @gs_point_transform_inverse
# %bb.0:
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 32
	fld.s	$fa2, $a0, 0
	or	$a4, $a2, $a3
	slli.d	$a4, $a4, 1
	beqz	$a4, .LBB8_3
# %bb.1:
	movgr2fr.w	$fa3, $a3
	lu12i.w	$a3, -524288
	fld.s	$fa6, $a0, 48
	xor	$a2, $a2, $a3
	movgr2fr.w	$fa4, $a2
	fmul.s	$fa5, $fa3, $fa4
	fmadd.s	$fa5, $fa2, $fa6, $fa5
	movgr2fr.w	$fa7, $zero
	fcmp.ceq.s	$fcc0, $fa5, $fa7
	bceqz	$fcc0, .LBB8_4
# %bb.2:
	addi.w	$a0, $zero, -23
	ret
.LBB8_3:
	fld.s	$fa3, $a0, 64
	move	$a2, $zero
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa0, $fa0, $fa3
	fcvt.d.s	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fld.s	$fa2, $a0, 80
	fld.s	$fa3, $a0, 48
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a1, 0
	fcvt.d.s	$fa0, $fa2
	fsub.d	$fa0, $fa1, $fa0
	fcvt.d.s	$fa1, $fa3
	fdiv.d	$fa0, $fa0, $fa1
	b	.LBB8_8
.LBB8_4:
	fld.s	$fa7, $a0, 64
	fdiv.s	$fa6, $fa6, $fa5
	fneg.s	$fa3, $fa3
	fld.s	$ft0, $a0, 80
	fdiv.s	$fa3, $fa3, $fa5
	fdiv.s	$fa4, $fa4, $fa5
	fdiv.s	$fa2, $fa2, $fa5
	fmul.s	$fa5, $fa4, $ft0
	fnmadd.s	$fa5, $fa7, $fa6, $fa5
	fmul.s	$ft0, $fa2, $ft0
	fnmadd.s	$fa7, $fa7, $fa3, $ft0
	fcvt.d.s	$fa6, $fa6
	fcvt.d.s	$fa5, $fa5
	fmadd.d	$fa5, $fa0, $fa6, $fa5
	fcvt.s.d	$fa5, $fa5
	fst.s	$fa5, $a1, 0
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa6, $fa7
	fmadd.d	$fa2, $fa1, $fa2, $fa6
	fcvt.s.d	$fa2, $fa2
	fclass.s	$fa6, $fa4
	movfr2gr.s	$a0, $fa6
	andi	$a0, $a0, 512
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	fst.s	$fa2, $a1, 4
	bnez	$a0, .LBB8_6
# %bb.5:
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fmadd.d	$fa1, $fa1, $fa4, $fa5
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a1, 0
.LBB8_6:
	fclass.s	$fa1, $fa3
	movfr2gr.s	$a0, $fa1
	andi	$a0, $a0, 512
	sltu	$a0, $zero, $a0
	move	$a2, $zero
	andi	$a0, $a0, 1
	bnez	$a0, .LBB8_9
# %bb.7:
	fcvt.d.s	$fa1, $fa3
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa0, $fa0, $fa1, $fa2
.LBB8_8:                                # %gs_point_transform.exit
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a1, 4
.LBB8_9:                                # %gs_point_transform.exit
	move	$a0, $a2
	ret
.Lfunc_end8:
	.size	gs_point_transform_inverse, .Lfunc_end8-gs_point_transform_inverse
                                        # -- End function
	.globl	gs_distance_transform           # -- Begin function gs_distance_transform
	.p2align	5
	.type	gs_distance_transform,@function
gs_distance_transform:                  # @gs_distance_transform
# %bb.0:
	fld.s	$fa2, $a0, 0
	fcvt.d.s	$fa2, $fa2
	fld.s	$fa4, $a0, 48
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa3, $fa2
	fst.s	$fa3, $a1, 0
	fcvt.d.s	$fa2, $fa4
	fmul.d	$fa2, $fa1, $fa2
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a1, 4
	ld.d	$a2, $a0, 32
	slli.d	$a3, $a2, 1
	beqz	$a3, .LBB9_2
# %bb.1:
	movgr2fr.w	$fa4, $a2
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa3, $fa3
	fmadd.d	$fa1, $fa1, $fa4, $fa3
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a1, 0
.LBB9_2:
	ld.d	$a0, $a0, 16
	slli.d	$a2, $a0, 1
	beqz	$a2, .LBB9_4
# %bb.3:
	movgr2fr.w	$fa1, $a0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a1, 4
.LBB9_4:
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	gs_distance_transform, .Lfunc_end9-gs_distance_transform
                                        # -- End function
	.globl	gs_distance_transform_inverse   # -- Begin function gs_distance_transform_inverse
	.p2align	5
	.type	gs_distance_transform_inverse,@function
gs_distance_transform_inverse:          # @gs_distance_transform_inverse
# %bb.0:
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 32
	fld.s	$fa2, $a0, 0
	or	$a4, $a2, $a3
	slli.d	$a4, $a4, 1
	beqz	$a4, .LBB10_3
# %bb.1:
	movgr2fr.w	$fa3, $a3
	fld.s	$fa5, $a0, 48
	movgr2fr.w	$fa4, $a2
	fneg.s	$fa6, $fa4
	fmul.s	$fa6, $fa3, $fa6
	fmadd.s	$fa6, $fa2, $fa5, $fa6
	movgr2fr.w	$fa7, $zero
	fcmp.ceq.s	$fcc0, $fa6, $fa7
	bceqz	$fcc0, .LBB10_4
# %bb.2:
	addi.w	$a0, $zero, -23
	ret
.LBB10_3:
	fcvt.d.s	$fa2, $fa2
	fld.s	$fa3, $a0, 48
	fdiv.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a1, 0
	fcvt.d.s	$fa0, $fa3
	fdiv.d	$fa0, $fa1, $fa0
	move	$a0, $zero
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a1, 4
	ret
.LBB10_4:                               # %.thread
	fcvt.d.s	$fa6, $fa6
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa4, $fa4
	fneg.d	$fa4, $fa4
	fmul.d	$fa4, $fa1, $fa4
	fmadd.d	$fa4, $fa0, $fa5, $fa4
	fdiv.d	$fa4, $fa4, $fa6
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa4, $a1, 0
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa3, $fa3
	fneg.d	$fa3, $fa3
	fmul.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fdiv.d	$fa0, $fa0, $fa6
	move	$a0, $zero
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a1, 4
	ret
.Lfunc_end10:
	.size	gs_distance_transform_inverse, .Lfunc_end10-gs_distance_transform_inverse
                                        # -- End function
	.globl	gs_bbox_transform_inverse       # -- Begin function gs_bbox_transform_inverse
	.p2align	5
	.type	gs_bbox_transform_inverse,@function
gs_bbox_transform_inverse:              # @gs_bbox_transform_inverse
# %bb.0:
	fld.s	$fa2, $a0, 0
	ld.d	$a4, $a1, 16
	ld.d	$a3, $a1, 32
	fcvt.d.s	$fa1, $fa2
	fld.s	$fa4, $a0, 4
	fld.s	$fa3, $a1, 0
	or	$a5, $a3, $a4
	slli.d	$a5, $a5, 1
	fcvt.d.s	$ft1, $fa4
	beqz	$a5, .LBB11_3
# %bb.1:
	movgr2fr.w	$fa7, $a4
	fld.s	$fa6, $a1, 48
	movgr2fr.w	$fa5, $a3
	fneg.s	$fa0, $fa5
	fmul.s	$ft0, $fa7, $fa0
	fmadd.s	$ft0, $fa3, $fa6, $ft0
	movgr2fr.w	$ft2, $zero
	fcmp.ceq.s	$fcc0, $ft0, $ft2
	bceqz	$fcc0, .LBB11_4
# %bb.2:
	addi.w	$a0, $zero, -23
	ret
.LBB11_3:
	fld.s	$fa0, $a1, 64
	fcvt.d.s	$fa0, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fcvt.d.s	$fa1, $fa3
	fld.s	$fa5, $a1, 80
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fld.s	$fa6, $a1, 48
	fcvt.d.s	$fa1, $fa5
	fsub.d	$fa1, $ft1, $fa1
	fld.s	$fa5, $a0, 8
	fcvt.d.s	$fa7, $fa6
	fdiv.d	$fa1, $fa1, $fa7
	fcvt.s.d	$fa1, $fa1
	fsub.s	$fa2, $fa5, $fa2
	fld.s	$ft0, $a0, 12
	fdiv.s	$fa5, $fa2, $fa3
	movgr2fr.w	$ft1, $zero
	fdiv.s	$fa2, $ft1, $fa6
	fsub.s	$fa4, $ft0, $fa4
	fcvt.d.s	$fa6, $fa4
	fdiv.s	$fa4, $ft1, $fa3
	fdiv.d	$fa3, $fa6, $fa7
	b	.LBB11_5
.LBB11_4:                               # %.thread.i49
	fld.s	$ft2, $a1, 64
	fdiv.s	$ft3, $fa6, $ft0
	fneg.s	$ft4, $fa7
	fld.s	$ft5, $a1, 80
	fdiv.s	$ft4, $ft4, $ft0
	fdiv.s	$fa0, $fa0, $ft0
	fdiv.s	$ft6, $fa3, $ft0
	fmul.s	$ft7, $fa0, $ft5
	fnmadd.s	$ft7, $ft2, $ft3, $ft7
	fmul.s	$ft5, $ft6, $ft5
	fnmadd.s	$ft2, $ft2, $ft4, $ft5
	fcvt.d.s	$ft3, $ft3
	fcvt.d.s	$ft5, $ft7
	fmadd.d	$ft3, $fa1, $ft3, $ft5
	fcvt.s.d	$ft3, $ft3
	fcvt.d.s	$ft5, $ft6
	fcvt.d.s	$ft2, $ft2
	fmadd.d	$ft2, $ft1, $ft5, $ft2
	fcvt.s.d	$ft2, $ft2
	fclass.s	$ft5, $fa0
	movfr2gr.s	$a1, $ft5
	andi	$a1, $a1, 512
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$ft5, $ft3
	fmadd.d	$fa0, $ft1, $fa0, $ft5
	fcvt.s.d	$fa0, $fa0
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa0, $ft3, $fcc0
	fclass.s	$ft1, $ft4
	movfr2gr.s	$a1, $ft1
	andi	$a1, $a1, 512
	sltu	$a1, $zero, $a1
	andi	$a1, $a1, 1
	fcvt.d.s	$ft1, $ft4
	fcvt.d.s	$ft3, $ft2
	fmadd.d	$fa1, $fa1, $ft1, $ft3
	fld.s	$ft1, $a0, 12
	fcvt.s.d	$fa1, $fa1
	movgr2cf	$fcc0, $a1
	fsel	$fa1, $fa1, $ft2, $fcc0
	fld.s	$ft2, $a0, 8
	fsub.s	$fa4, $ft1, $fa4
	fcvt.d.s	$ft1, $fa4
	fcvt.d.s	$fa3, $fa3
	fsub.s	$fa2, $ft2, $fa2
	fcvt.d.s	$fa4, $fa2
	fcvt.d.s	$fa7, $fa7
	fneg.d	$fa2, $fa7
	fmul.d	$fa2, $fa2, $fa4
	movgr2fr.d	$ft2, $zero
	fmadd.d	$fa2, $fa3, $ft2, $fa2
	fcvt.d.s	$ft0, $ft0
	fdiv.d	$fa2, $fa2, $ft0
	fcvt.s.d	$fa2, $fa2
	fcvt.d.s	$fa6, $fa6
	fcvt.d.s	$ft3, $fa5
	fneg.d	$ft4, $ft2
	fmul.d	$fa5, $ft3, $ft4
	fmadd.d	$fa4, $fa4, $fa6, $fa5
	fdiv.d	$fa4, $fa4, $ft0
	fcvt.s.d	$fa5, $fa4
	fneg.d	$fa4, $ft3
	fmul.d	$fa4, $fa4, $ft1
	fmadd.d	$fa4, $fa6, $ft2, $fa4
	fdiv.d	$fa4, $fa4, $ft0
	fcvt.s.d	$fa4, $fa4
	fmul.d	$fa6, $fa7, $ft4
	fmadd.d	$fa3, $ft1, $fa3, $fa6
	fdiv.d	$fa3, $fa3, $ft0
.LBB11_5:
	move	$a0, $zero
	lu52i.d	$a1, $zero, -1175
	movgr2fr.d	$fa6, $a1
	fcvt.s.d	$fa7, $fa3
	fadd.s	$ft0, $fa5, $fa0
	movgr2fr.w	$ft1, $zero
	fcmp.clt.s	$fcc0, $fa5, $ft1
	fsel	$fa5, $fa0, $ft0, $fcc0
	fsel	$fa0, $ft0, $fa0, $fcc0
	fadd.s	$ft0, $fa4, $fa5
	fcmp.clt.s	$fcc0, $fa4, $ft1
	fadd.s	$fa4, $fa4, $fa0
	fsel	$fa5, $fa5, $ft0, $fcc0
	fsel	$fa0, $fa4, $fa0, $fcc0
	fadd.s	$fa4, $fa2, $fa1
	fcmp.clt.s	$fcc0, $fa2, $ft1
	fsel	$fa2, $fa1, $fa4, $fcc0
	fsel	$fa1, $fa4, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa3, $fa6
	fadd.s	$fa3, $fa2, $fa7
	fadd.s	$fa4, $fa1, $fa7
	fsel	$fa2, $fa2, $fa3, $fcc0
	fsel	$fa1, $fa4, $fa1, $fcc0
	fst.s	$fa5, $a2, 0
	fst.s	$fa2, $a2, 4
	fst.s	$fa0, $a2, 8
	fst.s	$fa1, $a2, 12
	ret
.Lfunc_end11:
	.size	gs_bbox_transform_inverse, .Lfunc_end11-gs_bbox_transform_inverse
                                        # -- End function
	.globl	gs_point_transform2fixed        # -- Begin function gs_point_transform2fixed
	.p2align	5
	.type	gs_point_transform2fixed,@function
gs_point_transform2fixed:               # @gs_point_transform2fixed
# %bb.0:
	fld.s	$fa2, $a0, 0
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa3, $fa0, $fa2
	lu52i.d	$a2, $zero, 1035
	movgr2fr.d	$fa2, $a2
	fmul.d	$fa3, $fa3, $fa2
	ld.d	$a2, $a0, 96
	ftintrz.l.d	$fa3, $fa3
	fld.s	$fa4, $a0, 48
	movfr2gr.d	$a3, $fa3
	add.d	$a3, $a2, $a3
	st.d	$a3, $a1, 0
	fcvt.d.s	$fa3, $fa4
	fmul.d	$fa3, $fa1, $fa3
	ld.d	$a2, $a0, 104
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.l.d	$fa3, $fa3
	movfr2gr.d	$a4, $fa3
	add.d	$a2, $a2, $a4
	st.d	$a2, $a1, 8
	ld.d	$a4, $a0, 32
	slli.d	$a5, $a4, 1
	beqz	$a5, .LBB12_2
# %bb.1:
	movgr2fr.w	$fa3, $a4
	fcvt.d.s	$fa3, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa1, $fa1, $fa2
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a4, $fa1
	add.d	$a3, $a3, $a4
	st.d	$a3, $a1, 0
.LBB12_2:
	ld.d	$a0, $a0, 16
	slli.d	$a3, $a0, 1
	beqz	$a3, .LBB12_4
# %bb.3:
	movgr2fr.w	$fa1, $a0
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	add.d	$a0, $a2, $a0
	st.d	$a0, $a1, 8
.LBB12_4:
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	gs_point_transform2fixed, .Lfunc_end12-gs_point_transform2fixed
                                        # -- End function
	.globl	gs_distance_transform2fixed     # -- Begin function gs_distance_transform2fixed
	.p2align	5
	.type	gs_distance_transform2fixed,@function
gs_distance_transform2fixed:            # @gs_distance_transform2fixed
# %bb.0:
	fld.s	$fa2, $a0, 0
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa3, $fa0, $fa2
	lu52i.d	$a2, $zero, 1035
	movgr2fr.d	$fa2, $a2
	fld.s	$fa5, $a0, 48
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.l.d	$fa4, $fa3
	fst.d	$fa4, $a1, 0
	fcvt.d.s	$fa3, $fa5
	fmul.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.l.d	$fa3, $fa3
	fst.d	$fa3, $a1, 8
	ld.d	$a2, $a0, 32
	slli.d	$a3, $a2, 1
	beqz	$a3, .LBB13_2
# %bb.1:
	movfr2gr.d	$a3, $fa4
	movgr2fr.w	$fa4, $a2
	fcvt.d.s	$fa4, $fa4
	fmul.d	$fa1, $fa1, $fa4
	fmul.d	$fa1, $fa1, $fa2
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a2, $fa1
	add.d	$a2, $a2, $a3
	st.d	$a2, $a1, 0
.LBB13_2:
	ld.d	$a0, $a0, 16
	slli.d	$a2, $a0, 1
	beqz	$a2, .LBB13_4
# %bb.3:
	movfr2gr.d	$a2, $fa3
	movgr2fr.w	$fa1, $a0
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 8
.LBB13_4:
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	gs_distance_transform2fixed, .Lfunc_end13-gs_distance_transform2fixed
                                        # -- End function
	.type	gs_identity_matrix,@object      # @gs_identity_matrix
	.data
	.globl	gs_identity_matrix
	.p2align	3, 0x0
gs_identity_matrix:
	.word	0x3f800000                      # float 1
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x3f800000                      # float 1
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.size	gs_identity_matrix, 96

	.section	".note.GNU-stack","",@progbits
	.addrsig
