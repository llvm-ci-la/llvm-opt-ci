	.file	"gschar.c"
	.text
	.globl	gs_show_init                    # -- Begin function gs_show_init
	.p2align	5
	.type	gs_show_init,@function
gs_show_init:                           # @gs_show_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 16
	st.w	$zero, $s1, 48
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(show_setup)
	jr	$t8
.Lfunc_end0:
	.size	gs_show_init, .Lfunc_end0-gs_show_init
                                        # -- End function
	.globl	show_setup                      # -- Begin function show_setup
	.p2align	5
	.type	show_setup,@function
show_setup:                             # @show_setup
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	st.d	$a1, $a0, 0
	st.d	$a2, $a0, 8
	ori	$a0, $zero, 256
	st.w	$a0, $fp, 28
	st.d	$zero, $fp, 40
	st.w	$zero, $fp, 52
	st.d	$zero, $fp, 312
	pcalau12i	$a0, %pc_hi20(continue_show)
	addi.d	$a0, $a0, %pc_lo12(continue_show)
	ld.w	$a1, $a1, 432
	st.d	$a0, $fp, 360
	bnez	$a1, .LBB1_3
# %bb.1:
	addi.d	$s1, $s0, 336
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gs_make_identity)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 328
	addi.d	$a0, $a0, 40
	addi.d	$a1, $s0, 24
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gs_matrix_multiply)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB1_8
# %bb.2:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 432
.LBB1_3:
	ld.d	$a0, $s0, 352
	ld.d	$a1, $s0, 368
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	beqz	$a0, .LBB1_6
# %bb.4:
	ld.d	$a0, $s0, 336
	ld.d	$a1, $s0, 384
	or	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 62, 0
	sltui	$a1, $a1, 1
	slli.d	$a0, $a0, 1
	st.w	$a1, $fp, 56
	beqz	$a0, .LBB1_7
# %bb.5:
	move	$a0, $zero
	b	.LBB1_8
.LBB1_6:                                # %.critedge
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 56
.LBB1_7:
	ld.d	$a0, $s0, 264
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(gx_cpath_box_for_check)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	vld	$vr0, $sp, 16
	vld	$vr1, $sp, 32
	ori	$a1, $zero, 4095
	vreplgr2vr.d	$vr2, $a1
	vadd.d	$vr0, $vr0, $vr2
	vsrli.d	$vr0, $vr0, 12
	vsrli.d	$vr1, $vr1, 12
	vpickev.w	$vr0, $vr1, $vr0
	vst	$vr0, $fp, 60
.LBB1_8:
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	show_setup, .Lfunc_end1-show_setup
                                        # -- End function
	.globl	gs_show_n_init                  # -- Begin function gs_show_n_init
	.p2align	5
	.type	gs_show_n_init,@function
gs_show_n_init:                         # @gs_show_n_init
# %bb.0:
	st.w	$a3, $a0, 16
	st.w	$zero, $a0, 48
	pcaddu18i	$t8, %call36(show_setup)
	jr	$t8
.Lfunc_end2:
	.size	gs_show_n_init, .Lfunc_end2-gs_show_n_init
                                        # -- End function
	.globl	gs_ashow_init                   # -- Begin function gs_ashow_init
	.p2align	5
	.type	gs_ashow_init,@function
gs_ashow_init:                          # @gs_ashow_init
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a2
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 16
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $s1, 40
	fcvt.s.d	$fa0, $fs1
	fst.s	$fa0, $s1, 32
	fcvt.s.d	$fa0, $fs0
	fst.s	$fa0, $s1, 36
	st.w	$a1, $s1, 48
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	gs_ashow_init, .Lfunc_end3-gs_ashow_init
                                        # -- End function
	.globl	gs_ashow_n_init                 # -- Begin function gs_ashow_n_init
	.p2align	5
	.type	gs_ashow_n_init,@function
gs_ashow_n_init:                        # @gs_ashow_n_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$fp, $a0
	st.w	$a3, $a0, 16
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 40
	fcvt.s.d	$fa0, $fs1
	fst.s	$fa0, $fp, 32
	fcvt.s.d	$fa0, $fs0
	fst.s	$fa0, $fp, 36
	st.w	$a1, $fp, 48
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	gs_ashow_n_init, .Lfunc_end4-gs_ashow_n_init
                                        # -- End function
	.globl	gs_widthshow_init               # -- Begin function gs_widthshow_init
	.p2align	5
	.type	gs_widthshow_init,@function
gs_widthshow_init:                      # @gs_widthshow_init
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s1, $a1
	move	$s2, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 16
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	st.w	$s0, $s2, 28
	fcvt.s.d	$fa0, $fs1
	fst.s	$fa0, $s2, 20
	fcvt.s.d	$fa0, $fs0
	fst.s	$fa0, $s2, 24
	ori	$a1, $zero, 1
	st.w	$a1, $s2, 48
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	gs_widthshow_init, .Lfunc_end5-gs_widthshow_init
                                        # -- End function
	.globl	gs_widthshow_n_init             # -- Begin function gs_widthshow_n_init
	.p2align	5
	.type	gs_widthshow_n_init,@function
gs_widthshow_n_init:                    # @gs_widthshow_n_init
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a2
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s0, $a0
	st.w	$a4, $a0, 16
	move	$a2, $a3
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	st.w	$fp, $s0, 28
	fcvt.s.d	$fa0, $fs1
	fst.s	$fa0, $s0, 20
	fcvt.s.d	$fa0, $fs0
	fst.s	$fa0, $s0, 24
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 48
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	gs_widthshow_n_init, .Lfunc_end6-gs_widthshow_n_init
                                        # -- End function
	.globl	gs_awidthshow_init              # -- Begin function gs_awidthshow_init
	.p2align	5
	.type	gs_awidthshow_init,@function
gs_awidthshow_init:                     # @gs_awidthshow_init
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a3
	fmov.d	$fs0, $fa3
	fmov.d	$fs1, $fa2
	move	$s0, $a2
	fmov.d	$fs2, $fa1
	fmov.d	$fs3, $fa0
	move	$s1, $a1
	move	$s2, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 16
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $s2, 40
	fcvt.s.d	$fa0, $fs1
	fst.s	$fa0, $s2, 32
	fcvt.s.d	$fa0, $fs0
	fst.s	$fa0, $s2, 36
	st.w	$s0, $s2, 28
	fcvt.s.d	$fa0, $fs3
	fst.s	$fa0, $s2, 20
	fcvt.s.d	$fa0, $fs2
	fst.s	$fa0, $s2, 24
	st.w	$a1, $s2, 48
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end7:
	.size	gs_awidthshow_init, .Lfunc_end7-gs_awidthshow_init
                                        # -- End function
	.globl	gs_awidthshow_n_init            # -- Begin function gs_awidthshow_n_init
	.p2align	5
	.type	gs_awidthshow_n_init,@function
gs_awidthshow_n_init:                   # @gs_awidthshow_n_init
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa3
	fmov.d	$fs1, $fa2
	move	$fp, $a2
	fmov.d	$fs2, $fa1
	fmov.d	$fs3, $fa0
	move	$s0, $a0
	st.w	$a4, $a0, 16
	move	$a2, $a3
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 40
	fcvt.s.d	$fa0, $fs1
	fst.s	$fa0, $s0, 32
	fcvt.s.d	$fa0, $fs0
	fst.s	$fa0, $s0, 36
	st.w	$fp, $s0, 28
	fcvt.s.d	$fa0, $fs3
	fst.s	$fa0, $s0, 20
	fcvt.s.d	$fa0, $fs2
	fst.s	$fa0, $s0, 24
	st.w	$a1, $s0, 48
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end8:
	.size	gs_awidthshow_n_init, .Lfunc_end8-gs_awidthshow_n_init
                                        # -- End function
	.globl	gs_kshow_init                   # -- Begin function gs_kshow_init
	.p2align	5
	.type	gs_kshow_init,@function
gs_kshow_init:                          # @gs_kshow_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 16
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $s1, 44
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	gs_kshow_init, .Lfunc_end9-gs_kshow_init
                                        # -- End function
	.globl	gs_kshow_n_init                 # -- Begin function gs_kshow_n_init
	.p2align	5
	.type	gs_kshow_n_init,@function
gs_kshow_n_init:                        # @gs_kshow_n_init
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	st.w	$a3, $a0, 16
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $fp, 44
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	gs_kshow_n_init, .Lfunc_end10-gs_kshow_n_init
                                        # -- End function
	.globl	gs_stringwidth_init             # -- Begin function gs_stringwidth_init
	.p2align	5
	.type	gs_stringwidth_init,@function
gs_stringwidth_init:                    # @gs_stringwidth_init
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 16
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(continue_stringwidth)
	addi.d	$a0, $a0, %pc_lo12(continue_stringwidth)
	st.d	$a0, $s0, 360
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_gsave)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_5
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_device_no_output)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 256
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(gx_path_current_point)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB11_4
# %bb.3:
	ld.d	$a0, $fp, 256
	ld.d	$a1, $fp, 120
	ld.d	$a2, $fp, 128
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
.LBB11_4:                               # %stringwidth_setup.exit
	move	$a0, $zero
.LBB11_5:                               # %stringwidth_setup.exit
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	gs_stringwidth_init, .Lfunc_end11-gs_stringwidth_init
                                        # -- End function
	.globl	stringwidth_setup               # -- Begin function stringwidth_setup
	.p2align	5
	.type	stringwidth_setup,@function
stringwidth_setup:                      # @stringwidth_setup
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB12_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(continue_stringwidth)
	addi.d	$a0, $a0, %pc_lo12(continue_stringwidth)
	st.d	$a0, $s0, 360
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_gsave)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB12_5
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_device_no_output)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 256
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(gx_path_current_point)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB12_4
# %bb.3:
	ld.d	$a0, $fp, 256
	ld.d	$a1, $fp, 120
	ld.d	$a2, $fp, 128
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
.LBB12_4:
	move	$a0, $zero
.LBB12_5:
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	stringwidth_setup, .Lfunc_end12-stringwidth_setup
                                        # -- End function
	.globl	gs_stringwidth_n_init           # -- Begin function gs_stringwidth_n_init
	.p2align	5
	.type	gs_stringwidth_n_init,@function
gs_stringwidth_n_init:                  # @gs_stringwidth_n_init
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	st.w	$a3, $a0, 16
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(continue_stringwidth)
	addi.d	$a0, $a0, %pc_lo12(continue_stringwidth)
	st.d	$a0, $s0, 360
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_gsave)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_5
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_device_no_output)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 256
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(gx_path_current_point)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB13_4
# %bb.3:
	ld.d	$a0, $fp, 256
	ld.d	$a1, $fp, 120
	ld.d	$a2, $fp, 128
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
.LBB13_4:                               # %stringwidth_setup.exit
	move	$a0, $zero
.LBB13_5:                               # %stringwidth_setup.exit
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	gs_stringwidth_n_init, .Lfunc_end13-gs_stringwidth_n_init
                                        # -- End function
	.globl	continue_stringwidth            # -- Begin function continue_stringwidth
	.p2align	5
	.type	continue_stringwidth,@function
continue_stringwidth:                   # @continue_stringwidth
# %bb.0:
	pcaddu18i	$t8, %call36(stringwidth_proceed)
	jr	$t8
.Lfunc_end14:
	.size	continue_stringwidth, .Lfunc_end14-continue_stringwidth
                                        # -- End function
	.globl	gs_charpath_init                # -- Begin function gs_charpath_init
	.p2align	5
	.type	gs_charpath_init,@function
gs_charpath_init:                       # @gs_charpath_init
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 16
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	sltui	$a1, $fp, 1
	ori	$a2, $zero, 2
	sub.d	$a1, $a2, $a1
	st.w	$a1, $s2, 52
	st.w	$zero, $s2, 56
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	gs_charpath_init, .Lfunc_end15-gs_charpath_init
                                        # -- End function
	.globl	gs_charpath_n_init              # -- Begin function gs_charpath_n_init
	.p2align	5
	.type	gs_charpath_n_init,@function
gs_charpath_n_init:                     # @gs_charpath_n_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a0
	st.w	$a3, $a0, 16
	pcaddu18i	$ra, %call36(show_setup)
	jirl	$ra, $ra, 0
	sltui	$a1, $fp, 1
	ori	$a2, $zero, 2
	sub.d	$a1, $a2, $a1
	st.w	$a1, $s0, 52
	st.w	$zero, $s0, 56
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	gs_charpath_n_init, .Lfunc_end16-gs_charpath_n_init
                                        # -- End function
	.globl	gs_setcachedevice               # -- Begin function gs_setcachedevice
	.p2align	5
	.type	gs_setcachedevice,@function
gs_setcachedevice:                      # @gs_setcachedevice
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 352
	beqz	$a0, .LBB17_2
# %bb.1:
	addi.w	$a0, $zero, -21
	b	.LBB17_4
.LBB17_2:
	fmov.d	$fs0, $fa2
	fmov.d	$fs2, $fa3
	fmov.d	$fs1, $fa4
	fmov.d	$fs3, $fa5
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 24
	addi.d	$s1, $fp, 320
	move	$a1, $s1
	pcaddu18i	$ra, %call36(gs_distance_transform2fixed)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	ld.bu	$a0, $s0, 436
	ori	$a1, $zero, 2
	st.w	$a1, $fp, 352
	beqz	$a0, .LBB17_5
.LBB17_3:
	move	$a0, $zero
.LBB17_4:                               # %gs_setcharwidth.exit.thread
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB17_5:
	ld.w	$a0, $fp, 56
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 436
	beqz	$a0, .LBB17_3
# %bb.6:
	fcmp.clt.d	$fcc0, $fs3, $fs2
	move	$a0, $zero
	bcnez	$fcc0, .LBB17_4
# %bb.7:
	fcmp.clt.d	$fcc0, $fs1, $fs0
	bcnez	$fcc0, .LBB17_4
# %bb.8:
	ld.w	$a1, $s0, 432
	beqz	$a1, .LBB17_4
# %bb.9:
	fmov.d	$fa1, $fs2
	fmov.d	$fa0, $fs0
	ld.d	$a0, $s0, 328
	ld.d	$s2, $a0, 24
	addi.d	$s3, $s0, 24
	addi.d	$a1, $sp, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(gs_distance_transform2fixed)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(gs_distance_transform2fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 32
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 63
	xor	$a0, $a0, $a1
	sub.d	$a0, $a0, $a1
	lu12i.w	$a1, 65533
	ori	$a2, $a1, 4095
	bltu	$a2, $a0, .LBB17_3
# %bb.10:
	ld.d	$a1, $sp, 24
	ld.d	$a3, $sp, 40
	sub.d	$a1, $a1, $a3
	srai.d	$a3, $a1, 63
	xor	$a1, $a1, $a3
	sub.d	$a1, $a1, $a3
	bltu	$a2, $a1, .LBB17_3
# %bb.11:
	srli.d	$a0, $a0, 12
	ld.w	$a2, $fp, 312
	addi.d	$s4, $a0, 2
	srli.d	$a0, $a1, 12
	addi.d	$s5, $a0, 2
	addi.d	$s3, $fp, 80
	bnez	$a2, .LBB17_13
# %bb.12:
	pcalau12i	$a0, %got_pc_hi20(mem_mono_device)
	ld.d	$a1, $a0, %got_pc_lo12(mem_mono_device)
	ori	$a2, $zero, 200
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s3, $fp, 280
	st.w	$zero, $fp, 288
	vrepli.d	$vr0, 1
	vst	$vr0, $fp, 296
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 312
.LBB17_13:
	bstrpick.d	$a2, $s4, 15, 0
	bstrpick.d	$a3, $s5, 15, 0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(gx_alloc_char_bits)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_3
# %bb.14:
	move	$s3, $a0
	vld	$vr0, $sp, 32
	vld	$vr1, $sp, 16
	vmin.d	$vr0, $vr0, $vr1
	ori	$a0, $zero, 2048
	vreplgr2vr.d	$vr1, $a0
	vsub.d	$vr0, $vr1, $vr0
	lu12i.w	$a2, -1
	ld.d	$a0, $s0, 304
	ld.d	$a1, $s0, 312
	vreplgr2vr.d	$vr1, $a2
	vand.v	$vr0, $vr0, $vr1
	vst	$vr0, $s3, 48
	move	$a2, $s0
	pcaddu18i	$ra, %call36(gx_color_render)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 312
	ld.w	$a0, $a0, 16
	beqz	$a0, .LBB17_17
# %bb.15:
	move	$fp, $zero
.LBB17_16:                              # %.thread.sink.split
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(gx_unalloc_cached_char)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB17_4
.LBB17_17:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_gsave)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB17_20
# %bb.18:
	ld.w	$a0, $fp, 316
	ld.d	$a1, $fp, 8
	st.d	$s3, $fp, 336
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a1, $a0
	st.w	$a0, $s3, 8
	vld	$vr0, $s1, 0
	vst	$vr0, $s3, 32
	addi.d	$a0, $fp, 280
	ld.d	$a1, $s3, 48
	ld.d	$a2, $s3, 56
	st.d	$a0, $s0, 448
	ori	$s1, $zero, 1
	st.w	$s1, $s0, 456
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_translate_to_fixed)
	jirl	$ra, $ra, 0
	slli.d	$a3, $s4, 12
	slli.d	$a4, $s5, 12
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(gx_clip_to_rectangle)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB17_4
# %bb.19:
	st.b	$zero, $s0, 436
	movgr2fr.d	$fa0, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_setgray)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.b	$s1, $s0, 436
	st.w	$s1, $fp, 352
	b	.LBB17_4
.LBB17_20:
	move	$fp, $a0
	b	.LBB17_16
.Lfunc_end17:
	.size	gs_setcachedevice, .Lfunc_end17-gs_setcachedevice
                                        # -- End function
	.globl	gs_setcharwidth                 # -- Begin function gs_setcharwidth
	.p2align	5
	.type	gs_setcharwidth,@function
gs_setcharwidth:                        # @gs_setcharwidth
# %bb.0:
	ld.w	$a1, $a0, 352
	beqz	$a1, .LBB18_2
# %bb.1:
	addi.w	$a0, $zero, -21
	ret
.LBB18_2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 24
	addi.d	$a1, $a0, 320
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(gs_distance_transform2fixed)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$a1, $zero, 2
	st.w	$a1, $fp, 352
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end18:
	.size	gs_setcharwidth, .Lfunc_end18-gs_setcharwidth
                                        # -- End function
	.globl	gs_show_current_char            # -- Begin function gs_show_current_char
	.p2align	5
	.type	gs_show_current_char,@function
gs_show_current_char:                   # @gs_show_current_char
# %bb.0:
	ld.w	$a1, $a0, 316
	ld.d	$a0, $a0, 8
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a0, $a0, $a1
	ret
.Lfunc_end19:
	.size	gs_show_current_char, .Lfunc_end19-gs_show_current_char
                                        # -- End function
	.globl	gs_show_next                    # -- Begin function gs_show_next
	.p2align	5
	.type	gs_show_next,@function
gs_show_next:                           # @gs_show_next
# %bb.0:
	ld.d	$a1, $a0, 360
	jr	$a1
.Lfunc_end20:
	.size	gs_show_next, .Lfunc_end20-gs_show_next
                                        # -- End function
	.globl	continue_show_update            # -- Begin function continue_show_update
	.p2align	5
	.type	continue_show_update,@function
continue_show_update:                   # @continue_show_update
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 352
	beqz	$a0, .LBB21_11
# %bb.1:
	ld.d	$s0, $fp, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB21_3
# %bb.2:
	ld.d	$a0, $s0, 328
	ld.d	$s1, $fp, 336
	ld.d	$s2, $a0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_lookup_fm_pair)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(gx_add_cached_char)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 356
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(gx_copy_cached_char)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB21_14
.LBB21_3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	ld.d	$s0, $fp, 0
	beqz	$a0, .LBB21_5
# %bb.4:
	fld.s	$fa0, $fp, 32
	fld.s	$fa1, $fp, 36
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_rmoveto)
	jirl	$ra, $ra, 0
.LBB21_5:
	ld.w	$a0, $fp, 316
	ld.d	$a1, $fp, 8
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a1, $a0
	ld.w	$a1, $fp, 28
	bne	$a1, $a0, .LBB21_7
# %bb.6:
	fld.s	$fa0, $fp, 20
	fld.s	$fa1, $fp, 24
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_rmoveto)
	jirl	$ra, $ra, 0
.LBB21_7:
	ld.d	$a0, $s0, 256
	ld.bu	$a1, $a0, 136
	beqz	$a1, .LBB21_13
# %bb.8:
	vld	$vr0, $fp, 320
	vld	$vr1, $a0, 120
	ld.w	$a1, $fp, 44
	vadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 120
	st.b	$zero, $a0, 137
	beqz	$a1, .LBB21_12
# %bb.9:
	ld.w	$a0, $fp, 316
	ld.w	$a1, $fp, 16
	bgeu	$a0, $a1, .LBB21_12
# %bb.10:
	pcalau12i	$a0, %pc_hi20(continue_show)
	addi.d	$a0, $a0, %pc_lo12(continue_show)
	st.d	$a0, $fp, 360
	ori	$a0, $zero, 2
	b	.LBB21_14
.LBB21_11:
	addi.w	$a0, $zero, -23
	b	.LBB21_14
.LBB21_12:
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(show_proceed)
	jr	$t8
.LBB21_13:
	addi.w	$a0, $zero, -14
.LBB21_14:                              # %show_move.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end21:
	.size	continue_show_update, .Lfunc_end21-continue_show_update
                                        # -- End function
	.globl	show_update                     # -- Begin function show_update
	.p2align	5
	.type	show_update,@function
show_update:                            # @show_update
# %bb.0:
	ld.w	$a1, $a0, 352
	beqz	$a1, .LBB22_5
# %bb.1:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB22_3
# %bb.2:
	ld.d	$a1, $fp, 328
	ld.d	$s0, $a0, 336
	ld.d	$s1, $a1, 24
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_lookup_fm_pair)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gx_add_cached_char)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
	st.w	$zero, $s2, 356
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gx_copy_cached_char)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB22_4
.LBB22_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB22_4:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB22_5:
	addi.w	$a0, $zero, -23
	ret
.Lfunc_end22:
	.size	show_update, .Lfunc_end22-show_update
                                        # -- End function
	.globl	show_move                       # -- Begin function show_move
	.p2align	5
	.type	show_move,@function
show_move:                              # @show_move
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 40
	ld.d	$s0, $fp, 0
	beqz	$a0, .LBB23_2
# %bb.1:
	fld.s	$fa0, $fp, 32
	fld.s	$fa1, $fp, 36
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_rmoveto)
	jirl	$ra, $ra, 0
.LBB23_2:
	ld.w	$a0, $fp, 316
	ld.d	$a1, $fp, 8
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a1, $a0
	ld.w	$a1, $fp, 28
	bne	$a1, $a0, .LBB23_4
# %bb.3:
	fld.s	$fa0, $fp, 20
	fld.s	$fa1, $fp, 24
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_rmoveto)
	jirl	$ra, $ra, 0
.LBB23_4:
	ld.d	$a0, $s0, 256
	ld.bu	$a1, $a0, 136
	beqz	$a1, .LBB23_9
# %bb.5:
	vld	$vr0, $fp, 320
	vld	$vr1, $a0, 120
	ld.w	$a1, $fp, 44
	vadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 120
	st.b	$zero, $a0, 137
	beqz	$a1, .LBB23_8
# %bb.6:
	ld.w	$a0, $fp, 316
	ld.w	$a1, $fp, 16
	bgeu	$a0, $a1, .LBB23_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(continue_show)
	addi.d	$a0, $a0, %pc_lo12(continue_show)
	st.d	$a0, $fp, 360
	ori	$a0, $zero, 2
	b	.LBB23_10
.LBB23_8:
	move	$a0, $zero
	b	.LBB23_10
.LBB23_9:
	addi.w	$a0, $zero, -14
.LBB23_10:                              # %.thread
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end23:
	.size	show_move, .Lfunc_end23-show_move
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function show_proceed
.LCPI24_0:
	.dword	0x3f30000000000000              # double 2.44140625E-4
	.text
	.globl	show_proceed
	.p2align	5
	.type	show_proceed,@function
show_proceed:                           # @show_proceed
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 0
	ld.d	$s7, $a0, 8
	st.w	$zero, $a0, 356
	addi.d	$s8, $a0, 320
	addi.d	$a0, $s0, 336
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -14
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 2048
	pcalau12i	$a1, %pc_hi20(.LCPI24_0)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI24_0)
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	lu12i.w	$a0, -1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(continue_show_update)
	addi.d	$s1, $a0, %pc_lo12(continue_show_update)
	move	$s2, $zero
	addi.w	$a0, $zero, -23
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
.LBB24_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_6 Depth 2
	ld.w	$a0, $fp, 56
	beqz	$a0, .LBB24_19
# %bb.2:                                #   in Loop: Header=BB24_1 Depth=1
	bnez	$s2, .LBB24_4
# %bb.3:                                #   in Loop: Header=BB24_1 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_lookup_fm_pair)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB24_4:                               #   in Loop: Header=BB24_1 Depth=1
	ld.w	$a0, $fp, 316
	ld.w	$a1, $fp, 16
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 316
	bne	$a0, $a1, .LBB24_6
	b	.LBB24_40
	.p2align	4, , 16
.LBB24_5:                               #   in Loop: Header=BB24_6 Depth=2
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 316
	beq	$a0, $a1, .LBB24_40
.LBB24_6:                               # %.lr.ph
                                        #   Parent Loop BB24_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$s3, $s7, $a0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gx_lookup_cached_char)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB24_21
# %bb.7:                                #   in Loop: Header=BB24_6 Depth=2
	move	$s4, $a0
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(gx_copy_cached_char)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB24_41
# %bb.8:                                #   in Loop: Header=BB24_6 Depth=2
	bnez	$a0, .LBB24_21
# %bb.9:                                #   in Loop: Header=BB24_6 Depth=2
	ld.w	$a0, $fp, 48
	beqz	$a0, .LBB24_17
# %bb.10:                               #   in Loop: Header=BB24_6 Depth=2
	vld	$vr0, $s4, 32
	ld.w	$a0, $fp, 40
	ld.d	$s3, $fp, 0
	vst	$vr0, $s8, 0
	beqz	$a0, .LBB24_12
# %bb.11:                               #   in Loop: Header=BB24_6 Depth=2
	fld.s	$fa0, $fp, 32
	fld.s	$fa1, $fp, 36
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(gs_rmoveto)
	jirl	$ra, $ra, 0
.LBB24_12:                              #   in Loop: Header=BB24_6 Depth=2
	ld.w	$a0, $fp, 316
	ld.d	$a1, $fp, 8
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a1, $a0
	ld.w	$a1, $fp, 28
	bne	$a1, $a0, .LBB24_14
# %bb.13:                               #   in Loop: Header=BB24_6 Depth=2
	fld.s	$fa0, $fp, 20
	fld.s	$fa1, $fp, 24
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(gs_rmoveto)
	jirl	$ra, $ra, 0
.LBB24_14:                              #   in Loop: Header=BB24_6 Depth=2
	ld.d	$a2, $s3, 256
	ld.bu	$a0, $a2, 136
	beqz	$a0, .LBB24_39
# %bb.15:                               #   in Loop: Header=BB24_6 Depth=2
	vld	$vr0, $fp, 320
	vld	$vr1, $a2, 120
	ld.w	$a3, $fp, 44
	ld.w	$a0, $fp, 316
	ld.w	$a1, $fp, 16
	vadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $a2, 120
	st.b	$zero, $a2, 137
	beqz	$a3, .LBB24_5
# %bb.16:                               #   in Loop: Header=BB24_6 Depth=2
	bgeu	$a0, $a1, .LBB24_5
	b	.LBB24_38
	.p2align	4, , 16
.LBB24_17:                              #   in Loop: Header=BB24_6 Depth=2
	ld.d	$a2, $s0, 256
	ld.bu	$a0, $a2, 136
	beqz	$a0, .LBB24_39
# %bb.18:                               #   in Loop: Header=BB24_6 Depth=2
	vld	$vr0, $s4, 32
	vld	$vr1, $a2, 120
	ld.w	$a0, $fp, 316
	ld.w	$a1, $fp, 16
	vadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $a2, 120
	st.b	$zero, $a2, 137
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_19:                              #   in Loop: Header=BB24_1 Depth=1
	ld.w	$a0, $fp, 316
	ld.w	$a1, $fp, 16
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 316
	beq	$a0, $a1, .LBB24_40
# %bb.20:                               #   in Loop: Header=BB24_1 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$s3, $s7, $a0
.LBB24_21:                              # %.thread121
                                        #   in Loop: Header=BB24_1 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_gsave)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB24_41
# %bb.22:                               #   in Loop: Header=BB24_1 Depth=1
	ld.d	$s6, $s0, 256
	ld.b	$a0, $fp, 52
	ld.bu	$a1, $s6, 136
	st.b	$a0, $s0, 437
	beqz	$a1, .LBB24_39
# %bb.23:                               #   in Loop: Header=BB24_1 Depth=1
	ld.d	$s4, $s6, 120
	ld.d	$s5, $s6, 128
	move	$a0, $s6
	pcaddu18i	$ra, %call36(gx_path_is_void)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB24_26
# %bb.24:                               #   in Loop: Header=BB24_1 Depth=1
	ld.w	$a0, $fp, 52
	bnez	$a0, .LBB24_26
# %bb.25:                               #   in Loop: Header=BB24_1 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_newpath)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB24_26:                              #   in Loop: Header=BB24_1 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gs_setmatrix)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gs_translate_to_fixed)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 120
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vadd.d	$vr0, $vr0, $vr1
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr1
	vpickve2gr.d	$a0, $vr0, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fs0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $s0, 88
	vst	$vr0, $s0, 120
	vpickve2gr.d	$a0, $vr0, 1
	movgr2fr.d	$fa0, $a0
	ld.d	$a2, $s0, 328
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fcvt.s.d	$fa0, $fa0
	ld.d	$a5, $a2, 168
	ld.d	$a4, $a2, 176
	fst.s	$fa0, $s0, 104
	st.w	$zero, $fp, 352
	st.d	$s1, $fp, 360
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $s3
	jirl	$ra, $a5, 0
	bltz	$a0, .LBB24_41
# %bb.27:                               #   in Loop: Header=BB24_1 Depth=1
	bnez	$a0, .LBB24_42
# %bb.28:                               #   in Loop: Header=BB24_1 Depth=1
	ld.w	$a0, $fp, 352
	ld.d	$s3, $fp, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB24_30
# %bb.29:                               #   in Loop: Header=BB24_1 Depth=1
	bnez	$a0, .LBB24_31
	b	.LBB24_43
	.p2align	4, , 16
.LBB24_30:                              #   in Loop: Header=BB24_1 Depth=1
	ld.d	$a0, $s3, 328
	ld.d	$s4, $fp, 336
	ld.d	$s5, $a0, 24
	move	$a0, $s3
	pcaddu18i	$ra, %call36(gx_lookup_fm_pair)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(gx_add_cached_char)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 356
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(gx_copy_cached_char)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB24_41
.LBB24_31:                              #   in Loop: Header=BB24_1 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	ld.d	$s3, $fp, 0
	st.w	$zero, $fp, 356
	beqz	$a0, .LBB24_33
# %bb.32:                               #   in Loop: Header=BB24_1 Depth=1
	fld.s	$fa0, $fp, 32
	fld.s	$fa1, $fp, 36
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(gs_rmoveto)
	jirl	$ra, $ra, 0
.LBB24_33:                              #   in Loop: Header=BB24_1 Depth=1
	ld.w	$a0, $fp, 316
	ld.d	$a1, $fp, 8
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a1, $a0
	ld.w	$a1, $fp, 28
	bne	$a1, $a0, .LBB24_35
# %bb.34:                               #   in Loop: Header=BB24_1 Depth=1
	fld.s	$fa0, $fp, 20
	fld.s	$fa1, $fp, 24
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(gs_rmoveto)
	jirl	$ra, $ra, 0
.LBB24_35:                              #   in Loop: Header=BB24_1 Depth=1
	ld.d	$a0, $s3, 256
	ld.bu	$a1, $a0, 136
	beqz	$a1, .LBB24_39
# %bb.36:                               #   in Loop: Header=BB24_1 Depth=1
	vld	$vr0, $fp, 320
	vld	$vr1, $a0, 120
	ld.w	$a1, $fp, 44
	vadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 120
	st.b	$zero, $a0, 137
	beqz	$a1, .LBB24_1
# %bb.37:                               #   in Loop: Header=BB24_1 Depth=1
	ld.w	$a0, $fp, 316
	ld.w	$a1, $fp, 16
	bgeu	$a0, $a1, .LBB24_1
.LBB24_38:                              # %.thread.sink.split
	pcalau12i	$a0, %pc_hi20(continue_show)
	addi.d	$a0, $a0, %pc_lo12(continue_show)
	st.d	$a0, $fp, 360
	ori	$a0, $zero, 2
	b	.LBB24_41
.LBB24_39:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB24_41
.LBB24_40:
	move	$a0, $zero
.LBB24_41:                              # %.thread
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB24_42:
	ori	$a0, $zero, 1
	b	.LBB24_41
.LBB24_43:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB24_41
.Lfunc_end24:
	.size	show_proceed, .Lfunc_end24-show_proceed
                                        # -- End function
	.globl	continue_show                   # -- Begin function continue_show
	.p2align	5
	.type	continue_show,@function
continue_show:                          # @continue_show
# %bb.0:
	pcaddu18i	$t8, %call36(show_proceed)
	jr	$t8
.Lfunc_end25:
	.size	continue_show, .Lfunc_end25-continue_show
                                        # -- End function
	.globl	continue_stringwidth_update     # -- Begin function continue_stringwidth_update
	.p2align	5
	.type	continue_stringwidth_update,@function
continue_stringwidth_update:            # @continue_stringwidth_update
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 352
	beqz	$a0, .LBB26_5
# %bb.1:
	ld.d	$s0, $fp, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB26_3
# %bb.2:
	ld.d	$a0, $s0, 328
	ld.d	$s1, $a0, 24
	ld.d	$s2, $fp, 336
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gx_lookup_fm_pair)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(gx_add_cached_char)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
.LBB26_3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 256
	ld.bu	$a1, $a0, 136
	beqz	$a1, .LBB26_6
# %bb.4:
	vld	$vr0, $fp, 320
	vld	$vr1, $a0, 120
	vadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 120
	st.b	$zero, $a0, 137
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(stringwidth_proceed)
	jr	$t8
.LBB26_5:
	addi.w	$a0, $zero, -23
	b	.LBB26_7
.LBB26_6:
	addi.w	$a0, $zero, -14
.LBB26_7:                               # %stringwidth_move.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end26:
	.size	continue_stringwidth_update, .Lfunc_end26-continue_stringwidth_update
                                        # -- End function
	.globl	stringwidth_update              # -- Begin function stringwidth_update
	.p2align	5
	.type	stringwidth_update,@function
stringwidth_update:                     # @stringwidth_update
# %bb.0:
	ld.w	$a1, $a0, 352
	beqz	$a1, .LBB27_4
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB27_3
# %bb.2:
	ld.d	$a1, $fp, 328
	ld.d	$s0, $a1, 24
	ld.d	$s1, $a0, 336
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_lookup_fm_pair)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(gx_add_cached_char)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
.LBB27_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB27_4:
	addi.w	$a0, $zero, -23
	ret
.Lfunc_end27:
	.size	stringwidth_update, .Lfunc_end27-stringwidth_update
                                        # -- End function
	.globl	stringwidth_move                # -- Begin function stringwidth_move
	.p2align	5
	.type	stringwidth_move,@function
stringwidth_move:                       # @stringwidth_move
# %bb.0:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 256
	ld.bu	$a2, $a1, 136
	beqz	$a2, .LBB28_2
# %bb.1:
	vld	$vr0, $a0, 320
	vld	$vr1, $a1, 120
	move	$a0, $zero
	vadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 120
	st.b	$zero, $a1, 137
	ret
.LBB28_2:
	addi.w	$a0, $zero, -14
	ret
.Lfunc_end28:
	.size	stringwidth_move, .Lfunc_end28-stringwidth_move
                                        # -- End function
	.globl	stringwidth_proceed             # -- Begin function stringwidth_proceed
	.p2align	5
	.type	stringwidth_proceed,@function
stringwidth_proceed:                    # @stringwidth_proceed
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 0
	ld.w	$a0, $a0, 316
	ld.w	$a1, $fp, 16
	ld.d	$s7, $fp, 8
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 316
	bne	$a0, $a1, .LBB29_3
.LBB29_1:                               # %._crit_edge
	addi.d	$a1, $sp, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gs_currentpoint)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gs_currentpoint)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 14
	sltui	$a0, $a0, 1
	move	$s0, $zero
	movgr2cf	$fcc0, $a0
	fld.s	$fa0, $sp, 28
	fld.s	$fa1, $sp, 24
	movgr2fr.w	$fa2, $zero
	fld.s	$fa3, $sp, 32
	fsel	$fa0, $fa0, $fa2, $fcc0
	fld.s	$fa4, $sp, 36
	fsel	$fa1, $fa1, $fa2, $fcc0
	fsub.s	$fa1, $fa3, $fa1
	fst.s	$fa1, $fp, 344
	fsub.s	$fa0, $fa4, $fa0
	fst.s	$fa0, $fp, 348
.LBB29_2:                               # %.thread86
	move	$a0, $s0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB29_3:                               # %.lr.ph
	addi.d	$a1, $fp, 320
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s2, $s1, 336
	addi.w	$s0, $zero, -14
	pcalau12i	$a1, %pc_hi20(continue_stringwidth_update)
	addi.d	$s8, $a1, %pc_lo12(continue_stringwidth_update)
	move	$s3, $zero
	addi.w	$a1, $zero, -23
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	b	.LBB29_7
	.p2align	4, , 16
.LBB29_4:                               #   in Loop: Header=BB29_7 Depth=1
	ld.d	$a0, $s4, 328
	ld.d	$s5, $a0, 24
	ld.d	$s6, $fp, 336
	move	$a0, $s4
	pcaddu18i	$ra, %call36(gx_lookup_fm_pair)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(gx_add_cached_char)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
.LBB29_5:                               #   in Loop: Header=BB29_7 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(gs_grestore)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 256
	ld.bu	$a0, $a1, 136
	beqz	$a0, .LBB29_2
.LBB29_6:                               # %.backedge
                                        #   in Loop: Header=BB29_7 Depth=1
	vld	$vr0, $fp, 320
	vld	$vr1, $a1, 120
	vadd.d	$vr0, $vr1, $vr0
	ld.w	$a0, $fp, 316
	ld.w	$a2, $fp, 16
	vst	$vr0, $a1, 120
	st.b	$zero, $a1, 137
	addi.d	$a1, $a0, 1
	st.w	$a1, $fp, 316
	beq	$a0, $a2, .LBB29_1
.LBB29_7:                               # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	ld.w	$a1, $fp, 56
	ldx.bu	$s4, $s7, $a0
	beqz	$a1, .LBB29_12
# %bb.8:                                #   in Loop: Header=BB29_7 Depth=1
	bnez	$s3, .LBB29_10
# %bb.9:                                #   in Loop: Header=BB29_7 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gx_lookup_fm_pair)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB29_10:                              #   in Loop: Header=BB29_7 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(gx_lookup_cached_char)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_12
# %bb.11:                               #   in Loop: Header=BB29_7 Depth=1
	vld	$vr0, $a0, 32
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	vst	$vr0, $a1, 0
	ld.d	$a1, $a0, 256
	ld.bu	$a0, $a1, 136
	ori	$a2, $zero, 2
	st.w	$a2, $fp, 352
	bnez	$a0, .LBB29_6
	b	.LBB29_2
	.p2align	4, , 16
.LBB29_12:                              # %.thread78
                                        #   in Loop: Header=BB29_7 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gs_gsave)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB29_19
# %bb.13:                               #   in Loop: Header=BB29_7 Depth=1
	ld.d	$a0, $s1, 256
	ld.bu	$a1, $a0, 136
	beqz	$a1, .LBB29_2
# %bb.14:                               #   in Loop: Header=BB29_7 Depth=1
	ld.d	$s5, $a0, 120
	ld.d	$s6, $a0, 128
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(gs_setmatrix)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(gs_translate_to_fixed)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 328
	ld.d	$a5, $a2, 168
	ld.d	$a4, $a2, 176
	st.w	$zero, $fp, 352
	st.d	$s8, $fp, 360
	move	$a0, $fp
	move	$a1, $s1
	move	$a3, $s4
	jirl	$ra, $a5, 0
	bltz	$a0, .LBB29_19
# %bb.15:                               #   in Loop: Header=BB29_7 Depth=1
	bnez	$a0, .LBB29_20
# %bb.16:                               #   in Loop: Header=BB29_7 Depth=1
	ld.w	$a0, $fp, 352
	ld.d	$s4, $fp, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB29_4
# %bb.17:                               #   in Loop: Header=BB29_7 Depth=1
	bnez	$a0, .LBB29_5
# %bb.18:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	b	.LBB29_2
.LBB29_19:
	move	$s0, $a0
	b	.LBB29_2
.LBB29_20:
	ori	$s0, $zero, 1
	b	.LBB29_2
.Lfunc_end29:
	.size	stringwidth_proceed, .Lfunc_end29-stringwidth_proceed
                                        # -- End function
	.globl	gs_kshow_previous_char          # -- Begin function gs_kshow_previous_char
	.p2align	5
	.type	gs_kshow_previous_char,@function
gs_kshow_previous_char:                 # @gs_kshow_previous_char
# %bb.0:
	ld.w	$a1, $a0, 316
	ld.d	$a0, $a0, 8
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a0, $a0, $a1
	ret
.Lfunc_end30:
	.size	gs_kshow_previous_char, .Lfunc_end30-gs_kshow_previous_char
                                        # -- End function
	.globl	gs_kshow_next_char              # -- Begin function gs_kshow_next_char
	.p2align	5
	.type	gs_kshow_next_char,@function
gs_kshow_next_char:                     # @gs_kshow_next_char
# %bb.0:
	ld.d	$a1, $a0, 8
	ld.wu	$a0, $a0, 316
	ldx.bu	$a0, $a1, $a0
	ret
.Lfunc_end31:
	.size	gs_kshow_next_char, .Lfunc_end31-gs_kshow_next_char
                                        # -- End function
	.globl	gs_show_width                   # -- Begin function gs_show_width
	.p2align	5
	.type	gs_show_width,@function
gs_show_width:                          # @gs_show_width
# %bb.0:
	ld.d	$a0, $a0, 344
	st.d	$a0, $a1, 0
	ret
.Lfunc_end32:
	.size	gs_show_width, .Lfunc_end32-gs_show_width
                                        # -- End function
	.globl	gs_show_in_charpath             # -- Begin function gs_show_in_charpath
	.p2align	5
	.type	gs_show_in_charpath,@function
gs_show_in_charpath:                    # @gs_show_in_charpath
# %bb.0:
	ld.w	$a0, $a0, 52
	ret
.Lfunc_end33:
	.size	gs_show_in_charpath, .Lfunc_end33-gs_show_in_charpath
                                        # -- End function
	.type	gs_show_enum_sizeof,@object     # @gs_show_enum_sizeof
	.data
	.globl	gs_show_enum_sizeof
	.p2align	2, 0x0
gs_show_enum_sizeof:
	.word	368                             # 0x170
	.size	gs_show_enum_sizeof, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym continue_stringwidth
	.addrsig_sym continue_show_update
	.addrsig_sym continue_show
	.addrsig_sym continue_stringwidth_update
