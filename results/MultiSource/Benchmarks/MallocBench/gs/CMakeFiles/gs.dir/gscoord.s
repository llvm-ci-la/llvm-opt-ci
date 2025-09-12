	.file	"gscoord.c"
	.text
	.globl	gs_initmatrix                   # -- Begin function gs_initmatrix
	.p2align	5
	.type	gs_initmatrix,@function
gs_initmatrix:                          # @gs_initmatrix
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 448
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a1, 8
	addi.d	$a1, $fp, 24
	jirl	$ra, $a2, 0
	fld.s	$fa0, $fp, 88
	fld.s	$fa1, $fp, 104
	vextrins.w	$vr0, $vr1, 16
	lu12i.w	$a0, 284672
	vreplgr2vr.w	$vr1, $a0
	vfmul.s	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 0
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a0, $fa1
	vinsgr2vr.d	$vr1, $a0, 0
	vreplvei.w	$vr0, $vr0, 1
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	vinsgr2vr.d	$vr1, $a0, 1
	vst	$vr1, $fp, 120
	st.w	$zero, $fp, 232
	st.w	$zero, $fp, 432
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	gs_initmatrix, .Lfunc_end0-gs_initmatrix
                                        # -- End function
	.globl	gs_defaultmatrix                # -- Begin function gs_defaultmatrix
	.p2align	5
	.type	gs_defaultmatrix,@function
gs_defaultmatrix:                       # @gs_defaultmatrix
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 448
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 8
	ld.d	$a2, $a2, 8
	jirl	$ra, $a2, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	gs_defaultmatrix, .Lfunc_end1-gs_defaultmatrix
                                        # -- End function
	.globl	gs_currentmatrix                # -- Begin function gs_currentmatrix
	.p2align	5
	.type	gs_currentmatrix,@function
gs_currentmatrix:                       # @gs_currentmatrix
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $a1
	addi.d	$a1, $a0, 24
	ori	$a2, $zero, 96
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	gs_currentmatrix, .Lfunc_end2-gs_currentmatrix
                                        # -- End function
	.globl	gs_setmatrix                    # -- Begin function gs_setmatrix
	.p2align	5
	.type	gs_setmatrix,@function
gs_setmatrix:                           # @gs_setmatrix
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 24
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 88
	fld.s	$fa1, $fp, 104
	vextrins.w	$vr0, $vr1, 16
	lu12i.w	$a0, 284672
	vreplgr2vr.w	$vr1, $a0
	vfmul.s	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 0
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a0, $fa1
	vinsgr2vr.d	$vr1, $a0, 0
	vreplvei.w	$vr0, $vr0, 1
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	vinsgr2vr.d	$vr1, $a0, 1
	vst	$vr1, $fp, 120
	st.w	$zero, $fp, 232
	st.w	$zero, $fp, 432
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	gs_setmatrix, .Lfunc_end3-gs_setmatrix
                                        # -- End function
	.globl	gs_translate                    # -- Begin function gs_translate
	.p2align	5
	.type	gs_translate,@function
gs_translate:                           # @gs_translate
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(gs_distance_transform)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_2
# %bb.1:
	fld.s	$fa0, $fp, 88
	ld.d	$a1, $sp, 8
	fld.s	$fa1, $fp, 104
	move	$a0, $zero
	vinsgr2vr.d	$vr2, $a1, 0
	vextrins.w	$vr0, $vr1, 16
	vfadd.s	$vr0, $vr2, $vr0
	lu12i.w	$a1, 284672
	vreplgr2vr.w	$vr1, $a1
	vfmul.s	$vr1, $vr0, $vr1
	vreplvei.w	$vr2, $vr1, 0
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a1, $fa2
	vinsgr2vr.d	$vr2, $a1, 0
	vreplvei.w	$vr1, $vr1, 1
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa1
	vinsgr2vr.d	$vr2, $a1, 1
	vstelm.w	$vr0, $fp, 88, 0
	vstelm.w	$vr0, $fp, 104, 1
	vst	$vr2, $fp, 120
	st.w	$zero, $fp, 232
.LBB4_2:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	gs_translate, .Lfunc_end4-gs_translate
                                        # -- End function
	.globl	gs_scale                        # -- Begin function gs_scale
	.p2align	5
	.type	gs_scale,@function
gs_scale:                               # @gs_scale
# %bb.0:
	fld.s	$fa2, $a0, 24
	fcvt.d.s	$fa2, $fa2
	fld.s	$fa3, $a0, 40
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a0, 24
	fcvt.d.s	$fa2, $fa3
	fld.s	$fa3, $a0, 56
	fmul.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 40
	fcvt.d.s	$fa0, $fa3
	fld.s	$fa2, $a0, 72
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 56
	fcvt.d.s	$fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 72
	st.w	$zero, $a0, 232
	st.w	$zero, $a0, 432
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	gs_scale, .Lfunc_end5-gs_scale
                                        # -- End function
	.globl	gs_rotate                       # -- Begin function gs_rotate
	.p2align	5
	.type	gs_rotate,@function
gs_rotate:                              # @gs_rotate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 24
	move	$a1, $a0
	pcaddu18i	$ra, %call36(gs_matrix_rotate)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 232
	st.w	$zero, $fp, 432
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	gs_rotate, .Lfunc_end6-gs_rotate
                                        # -- End function
	.globl	gs_concat                       # -- Begin function gs_concat
	.p2align	5
	.type	gs_concat,@function
gs_concat:                              # @gs_concat
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a2, $a0, 24
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(gs_matrix_multiply)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 88
	fld.s	$fa1, $fp, 104
	vextrins.w	$vr0, $vr1, 16
	lu12i.w	$a1, 284672
	vreplgr2vr.w	$vr1, $a1
	vfmul.s	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 0
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa1
	vinsgr2vr.d	$vr1, $a1, 0
	vreplvei.w	$vr0, $vr0, 1
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	vinsgr2vr.d	$vr1, $a1, 1
	vst	$vr1, $fp, 120
	st.w	$zero, $fp, 232
	st.w	$zero, $fp, 432
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	gs_concat, .Lfunc_end7-gs_concat
                                        # -- End function
	.globl	gs_transform                    # -- Begin function gs_transform
	.p2align	5
	.type	gs_transform,@function
gs_transform:                           # @gs_transform
# %bb.0:
	addi.d	$a0, $a0, 24
	pcaddu18i	$t8, %call36(gs_point_transform)
	jr	$t8
.Lfunc_end8:
	.size	gs_transform, .Lfunc_end8-gs_transform
                                        # -- End function
	.globl	gs_dtransform                   # -- Begin function gs_dtransform
	.p2align	5
	.type	gs_dtransform,@function
gs_dtransform:                          # @gs_dtransform
# %bb.0:
	addi.d	$a0, $a0, 24
	pcaddu18i	$t8, %call36(gs_distance_transform)
	jr	$t8
.Lfunc_end9:
	.size	gs_dtransform, .Lfunc_end9-gs_dtransform
                                        # -- End function
	.globl	gs_itransform                   # -- Begin function gs_itransform
	.p2align	5
	.type	gs_itransform,@function
gs_itransform:                          # @gs_itransform
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	ld.w	$a2, $a0, 232
	addi.d	$fp, $a0, 136
	bnez	$a2, .LBB10_3
# %bb.1:
	fmov.d	$fs0, $fa0
	fmov.d	$fs1, $fa1
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$a0, $a0, 24
	move	$a1, $fp
	pcaddu18i	$ra, %call36(gs_matrix_invert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_4
# %bb.2:                                # %.thread
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 232
	move	$a1, $s0
	fmov.d	$fa1, $fs1
	fmov.d	$fa0, $fs0
.LBB10_3:
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	move	$a0, $fp
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(gs_point_transform)
	jr	$t8
.LBB10_4:
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	gs_itransform, .Lfunc_end10-gs_itransform
                                        # -- End function
	.globl	gs_idtransform                  # -- Begin function gs_idtransform
	.p2align	5
	.type	gs_idtransform,@function
gs_idtransform:                         # @gs_idtransform
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	ld.w	$a2, $a0, 232
	addi.d	$fp, $a0, 136
	bnez	$a2, .LBB11_3
# %bb.1:
	fmov.d	$fs0, $fa0
	fmov.d	$fs1, $fa1
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$a0, $a0, 24
	move	$a1, $fp
	pcaddu18i	$ra, %call36(gs_matrix_invert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_4
# %bb.2:                                # %.thread
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 232
	move	$a1, $s0
	fmov.d	$fa1, $fs1
	fmov.d	$fa0, $fs0
.LBB11_3:
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	move	$a0, $fp
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(gs_distance_transform)
	jr	$t8
.LBB11_4:
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	gs_idtransform, .Lfunc_end11-gs_idtransform
                                        # -- End function
	.globl	gs_translate_to_fixed           # -- Begin function gs_translate_to_fixed
	.p2align	5
	.type	gs_translate_to_fixed,@function
gs_translate_to_fixed:                  # @gs_translate_to_fixed
# %bb.0:
	st.d	$a1, $a0, 120
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	lu52i.d	$a1, $zero, 1011
	movgr2fr.d	$fa1, $a1
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 88
	st.d	$a2, $a0, 128
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 104
	st.w	$zero, $a0, 232
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 432
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	gs_translate_to_fixed, .Lfunc_end12-gs_translate_to_fixed
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
