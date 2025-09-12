	.file	"L_canny.c"
	.text
	.globl	L_canny                         # -- Begin function L_canny
	.p2align	5
	.type	L_canny,@function
L_canny:                                # @L_canny
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
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	move	$s2, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s3, $a0
	fcvt.d.s	$fs0, $fa0
	addi.d	$a0, $sp, 20
	addi.d	$a1, $sp, 32
	fmov.d	$fa0, $fs0
	move	$a2, $a4
	pcaddu18i	$ra, %call36(GaussianMask)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB0_5
# %bb.1:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 24
	fmov.d	$fa0, $fs0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(DGaussianMask)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_4
# %bb.2:
	ld.d	$s4, $sp, 32
	ld.d	$s6, $sp, 24
	ld.w	$s5, $sp, 20
	ld.w	$s7, $sp, 16
	addi.d	$a7, $sp, 48
	st.d	$s2, $sp, 0
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s7
	move	$a5, $s1
	move	$a6, $s0
	pcaddu18i	$ra, %call36(dfilter)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_4
# %bb.3:
	addi.d	$a7, $sp, 40
	st.d	$s2, $sp, 0
	move	$a0, $s3
	move	$a1, $s6
	move	$a2, $s4
	move	$a3, $s7
	move	$a4, $s5
	move	$a5, $s1
	move	$a6, $s0
	pcaddu18i	$ra, %call36(dfilter)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
.LBB0_4:
	ori	$a0, $zero, 1
.LBB0_5:
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
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
.LBB0_6:
	mul.w	$s3, $s0, $s1
	ori	$a1, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.7:                                # %.preheader
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 40
	blez	$s3, .LBB0_16
# %bb.8:                                # %.lr.ph
	ori	$a3, $zero, 8
	bgeu	$s3, $a3, .LBB0_11
# %bb.9:
	move	$a3, $zero
	b	.LBB0_14
.LBB0_10:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 6
	ld.d	$a0, $a0, 0
	st.d	$a1, $s2, 6
	st.d	$a0, $s2, 0
	ori	$a0, $zero, 1
	b	.LBB0_5
.LBB0_11:                               # %vector.ph
	bstrpick.d	$a3, $s3, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a1, 16
	addi.d	$a6, $a2, 16
	move	$a7, $a3
.LBB0_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vfmul.s	$vr0, $vr0, $vr0
	vfmul.s	$vr1, $vr1, $vr1
	vfmadd.s	$vr0, $vr2, $vr2, $vr0
	vfmadd.s	$vr1, $vr3, $vr3, $vr1
	vfsqrt.s	$vr0, $vr0
	vfsqrt.s	$vr1, $vr1
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a7, $a7, -8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB0_12
# %bb.13:                               # %middle.block
	beq	$a3, $s3, .LBB0_16
.LBB0_14:                               # %scalar.ph.preheader
	alsl.d	$a4, $a3, $a0, 2
	alsl.d	$a5, $a3, $a1, 2
	alsl.d	$a6, $a3, $a2, 2
	sub.d	$a3, $s3, $a3
.LBB0_15:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a6, 0
	fmul.s	$fa0, $fa0, $fa0
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fsqrt.s	$fa0, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, 4
	bnez	$a3, .LBB0_15
.LBB0_16:                               # %._crit_edge
	move	$a3, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(dnon_max)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	st.d	$a1, $fp, 0
	b	.LBB0_5
.Lfunc_end0:
	.size	L_canny, .Lfunc_end0-L_canny
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function GaussianMask
.LCPI1_0:
	.dword	0x3ff6a09e667f3bcd              # double 1.4142135623730951
	.text
	.globl	GaussianMask
	.p2align	5
	.type	GaussianMask,@function
GaussianMask:                           # @GaussianMask
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	move	$s3, $a2
	move	$fp, $a1
	move	$s0, $a0
	fcvt.s.d	$fs0, $fa0
	vldi	$vr0, -1256
	fmul.s	$fa0, $fs0, $fa0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ori	$s2, $a0, 1
	st.w	$s2, $s0, 0
	ori	$a1, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_3
# %bb.1:
	move	$s1, $a0
	bstrpick.d	$a0, $s2, 31, 31
	add.d	$a0, $s2, $a0
	srai.d	$a0, $a0, 1
	sub.d	$s3, $zero, $a0
	ext.w.h	$a1, $s3
	bge	$a0, $a1, .LBB1_5
.LBB1_2:                                # %._crit_edge
	move	$a0, $zero
	st.d	$s1, $fp, 0
	b	.LBB1_4
.LBB1_3:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 6
	ld.d	$a0, $a0, 0
	st.d	$a1, $s3, 6
	st.d	$a0, $s3, 0
	ori	$a0, $zero, 1
.LBB1_4:
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB1_5:                                # %.lr.ph
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI1_0)
	fcvt.d.s	$fa1, $fs0
	fmul.d	$fs1, $fa1, $fa0
	vldi	$vr1, -928
	move	$s4, $s1
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_6:                                #   in Loop: Header=BB1_8 Depth=1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	ld.wu	$s2, $s0, 0
	fst.s	$fa0, $s4, 0
	addi.d	$s3, $s3, 1
	ext.w.h	$a1, $s3
	srli.d	$a0, $s2, 31
	add.w	$a0, $s2, $a0
	srai.d	$a0, $a0, 1
	addi.d	$s4, $s4, 4
	blt	$a0, $a1, .LBB1_2
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	add.w	$a0, $a0, $a1
	ext.w.h	$a1, $s3
	beqz	$a0, .LBB1_6
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	addi.w	$a2, $s2, -1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	vldi	$vr2, -800
	fadd.d	$fs2, $fa0, $fa2
	bne	$a0, $a2, .LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	fdiv.d	$fa0, $fs2, $fs1
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fsub.d	$fa0, $fa1, $fa0
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_11:                               #   in Loop: Header=BB1_8 Depth=1
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fdiv.d	$fa0, $fs2, $fs1
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fs0, $fa0
	b	.LBB1_7
.Lfunc_end1:
	.size	GaussianMask, .Lfunc_end1-GaussianMask
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DGaussianMask
.LCPI2_0:
	.dword	0x4026a09e667f3bcd              # double 11.313708498984761
.LCPI2_1:
	.dword	0x40040d931ff62705              # double 2.5066282746310002
	.text
	.globl	DGaussianMask
	.p2align	5
	.type	DGaussianMask,@function
DGaussianMask:                          # @DGaussianMask
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI2_0)
	move	$s3, $a2
	move	$fp, $a1
	move	$s0, $a0
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fs0, $fa0
	fmul.d	$fa0, $fs0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ori	$s2, $a0, 1
	st.w	$s2, $s0, 0
	ori	$a1, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_3
# %bb.1:
	move	$s1, $a0
	bstrpick.d	$a0, $s2, 31, 31
	add.d	$a0, $s2, $a0
	srai.d	$a0, $a0, 1
	sub.d	$s3, $zero, $a0
	ext.w.h	$a1, $s3
	bge	$a0, $a1, .LBB2_5
.LBB2_2:                                # %._crit_edge
	move	$a0, $zero
	st.d	$s1, $fp, 0
	b	.LBB2_4
.LBB2_3:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 6
	ld.d	$a0, $a0, 0
	st.d	$a1, $s3, 6
	st.d	$a0, $s3, 0
	ori	$a0, $zero, 1
.LBB2_4:
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB2_5:                                # %.lr.ph
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI2_1)
	fadd.d	$fa1, $fs0, $fs0
	fmul.d	$fs1, $fa1, $fs0
	fmul.d	$fs2, $fs0, $fa0
	vldi	$vr0, -784
	fdiv.d	$fa0, $fa0, $fs2
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fs3, $fa0
	frecip.d	$fa0, $fs2
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fs4, $fa0
	move	$s4, $s1
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_8 Depth=1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa1, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs4
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=1
	fcvt.s.d	$fa0, $fa0
	ld.wu	$s2, $s0, 0
	fst.s	$fa0, $s4, 0
	addi.d	$s3, $s3, 1
	ext.w.h	$a1, $s3
	srli.d	$a0, $s2, 31
	add.w	$a0, $s2, $a0
	srai.d	$a0, $a0, 1
	addi.d	$s4, $s4, 4
	blt	$a0, $a1, .LBB2_2
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	add.w	$a0, $a0, $a1
	ext.w.h	$a1, $s3
	beqz	$a0, .LBB2_6
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	addi.w	$a2, $s2, -1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -800
	fadd.d	$fs5, $fa0, $fa1
	bne	$a0, $a2, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=1
	fneg.d	$fa0, $fs5
	fmul.d	$fa0, $fs5, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs3
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_11:                               #   in Loop: Header=BB2_8 Depth=1
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa1, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fneg.d	$fa0, $fs5
	fmul.d	$fa0, $fs5, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fs0, $fa0
	fdiv.d	$fa0, $fa0, $fs2
	b	.LBB2_7
.Lfunc_end2:
	.size	DGaussianMask, .Lfunc_end2-DGaussianMask
                                        # -- End function
	.globl	dfilter                         # -- Begin function dfilter
	.p2align	5
	.type	dfilter,@function
dfilter:                                # @dfilter
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
	ld.d	$s3, $sp, 112
	move	$fp, $a7
	move	$s8, $a6
	move	$s2, $a5
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $a3
	move	$s0, $a2
	move	$s5, $a1
	move	$s6, $a0
	mul.w	$s4, $a6, $a5
	ori	$a1, $zero, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_26
# %bb.1:                                # %.preheader115
	move	$s1, $a0
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ext.w.h	$s8, $s8
	ext.w.h	$fp, $s2
	blez	$s8, .LBB3_13
# %bb.2:                                # %.preheader114.lr.ph
	blez	$fp, .LBB3_13
# %bb.3:                                # %.preheader114.lr.ph
	bstrpick.d	$a0, $s7, 31, 31
	add.w	$a0, $s7, $a0
	srai.d	$a0, $a0, 1
	sub.d	$a1, $zero, $a0
	ext.w.h	$a2, $a1
	blt	$a0, $a2, .LBB3_13
# %bb.4:                                # %.preheader114.us.preheader
	move	$t0, $zero
	move	$a3, $zero
	move	$a4, $s1
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                # %._crit_edge121.split.us128
                                        #   in Loop: Header=BB3_6 Depth=1
	addi.d	$a3, $a3, 1
	ext.w.h	$t0, $a3
	bge	$t0, $s8, .LBB3_13
.LBB3_6:                                # %.preheader114.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
                                        #       Child Loop BB3_10 Depth 3
	move	$a6, $zero
	move	$a5, $zero
	addi.d	$a7, $t0, 1
	mul.w	$a7, $a7, $fp
	alsl.d	$a7, $a7, $s6, 2
	addi.d	$a7, $a7, -4
	mul.w	$t0, $t0, $fp
	alsl.d	$t1, $t0, $s6, 2
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB3_8 Depth=2
	addi.d	$a5, $a5, 1
	ext.w.h	$a6, $a5
	addi.d	$a4, $a4, 4
	bge	$a6, $fp, .LBB3_5
.LBB3_8:                                # %.lr.ph.us
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_10 Depth 3
	fld.s	$fa0, $a4, 0
	add.d	$t2, $a6, $t0
	move	$t4, $a2
	move	$t3, $a1
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                #   in Loop: Header=BB3_10 Depth=3
	fld.s	$fa1, $t5, 0
	sub.w	$t4, $a0, $t4
	slli.d	$t4, $t4, 2
	fldx.s	$fa2, $s5, $t4
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	addi.d	$t3, $t3, 1
	ext.w.h	$t4, $t3
	fst.s	$fa0, $a4, 0
	blt	$a0, $t4, .LBB3_7
.LBB3_10:                               #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t6, $t4, $a6
	move	$t5, $t1
	bltz	$t6, .LBB3_9
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=3
	move	$t5, $a7
	bge	$t6, $fp, .LBB3_9
# %bb.12:                               #   in Loop: Header=BB3_10 Depth=3
	add.w	$t5, $t2, $t4
	alsl.d	$t5, $t5, $s6, 2
	b	.LBB3_9
.LBB3_13:                               # %._crit_edge124
	ori	$a1, $zero, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_26
# %bb.14:                               # %.preheader113
	blez	$fp, .LBB3_27
# %bb.15:                               # %.preheader.lr.ph
	blez	$s8, .LBB3_27
# %bb.16:                               # %.preheader.lr.ph
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a2, 31, 31
	add.w	$a1, $a2, $a1
	srai.d	$a1, $a1, 1
	sub.d	$a2, $zero, $a1
	ext.w.h	$a3, $a2
	blt	$a1, $a3, .LBB3_27
# %bb.17:                               # %.preheader.us.preheader
	move	$a5, $zero
	move	$a4, $zero
	addi.d	$a6, $s8, -1
	mul.d	$a6, $a6, $s2
	b	.LBB3_19
	.p2align	4, , 16
.LBB3_18:                               # %._crit_edge137.split.us143
                                        #   in Loop: Header=BB3_19 Depth=1
	addi.d	$a4, $a4, 1
	ext.w.h	$a5, $a4
	bge	$a5, $fp, .LBB3_27
.LBB3_19:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_21 Depth 2
                                        #       Child Loop BB3_23 Depth 3
	move	$t1, $zero
	move	$a7, $zero
	add.w	$t0, $a5, $a6
	alsl.d	$t0, $t0, $s1, 2
	ext.w.h	$t3, $a4
	alsl.d	$t2, $t3, $s1, 2
	alsl.d	$t3, $t3, $a0, 2
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_20:                               # %._crit_edge.us142
                                        #   in Loop: Header=BB3_21 Depth=2
	addi.d	$a7, $a7, 1
	ext.w.h	$t1, $a7
	fst.s	$fa0, $t4, 0
	bge	$t1, $s8, .LBB3_18
.LBB3_21:                               # %.lr.ph.us140
                                        #   Parent Loop BB3_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_23 Depth 3
	mul.w	$t4, $t1, $fp
	slli.d	$t5, $t4, 2
	fldx.s	$fa0, $t3, $t5
	alsl.d	$t4, $t4, $t3, 2
	move	$t6, $a3
	move	$t5, $a2
	b	.LBB3_23
	.p2align	4, , 16
.LBB3_22:                               #   in Loop: Header=BB3_23 Depth=3
	fld.s	$fa1, $t7, 0
	sub.w	$t6, $a1, $t6
	slli.d	$t6, $t6, 2
	fldx.s	$fa2, $s0, $t6
	addi.d	$t5, $t5, 1
	ext.w.h	$t6, $t5
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	blt	$a1, $t6, .LBB3_20
.LBB3_23:                               #   Parent Loop BB3_19 Depth=1
                                        #     Parent Loop BB3_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t8, $t6, $t1
	move	$t7, $t2
	bltz	$t8, .LBB3_22
# %bb.24:                               #   in Loop: Header=BB3_23 Depth=3
	move	$t7, $t0
	bge	$t8, $s8, .LBB3_22
# %bb.25:                               #   in Loop: Header=BB3_23 Depth=3
	mul.d	$t7, $t8, $fp
	add.w	$t7, $t7, $a5
	alsl.d	$t7, $t7, $s1, 2
	b	.LBB3_22
.LBB3_26:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 6
	ld.d	$a0, $a0, 0
	st.d	$a1, $s3, 6
	st.d	$a0, $s3, 0
	ori	$a1, $zero, 1
	b	.LBB3_28
.LBB3_27:                               # %._crit_edge139
	move	$a1, $zero
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $a2, 0
.LBB3_28:
	move	$a0, $a1
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
.Lfunc_end3:
	.size	dfilter, .Lfunc_end3-dfilter
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dnon_max
.LCPI4_0:
	.dword	0x3e45798ee2308c3a              # double 1.0E-8
.LCPI4_1:
	.dword	0x3fd999999999999a              # double 0.40000000000000002
.LCPI4_2:
	.dword	0xbfd999999999999a              # double -0.40000000000000002
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_3:
	.word	0x437f0000                      # float 255
	.text
	.globl	dnon_max
	.p2align	5
	.type	dnon_max,@function
dnon_max:                               # @dnon_max
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	mul.w	$a0, $a4, $a3
	ori	$a1, $zero, 4
	ori	$s4, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	blt	$s3, $s4, .LBB4_18
# %bb.1:
	blt	$s0, $s4, .LBB4_18
# %bb.2:                                # %.preheader.us.preheader
	addi.w	$a1, $s3, -2
	addi.d	$a2, $s0, -2
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, -4
	slli.d	$a3, $s0, 2
	addi.d	$t0, $a3, 4
	add.d	$a4, $s2, $t0
	alsl.d	$a5, $s0, $fp, 2
	add.d	$a6, $s1, $t0
	alsl.d	$a7, $s0, $fp, 3
	add.d	$t0, $a0, $t0
	pcalau12i	$t1, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $t1, %pc_lo12(.LCPI4_0)
	pcalau12i	$t1, %pc_hi20(.LCPI4_1)
	fld.d	$fa1, $t1, %pc_lo12(.LCPI4_1)
	pcalau12i	$t1, %pc_hi20(.LCPI4_2)
	fld.d	$fa2, $t1, %pc_lo12(.LCPI4_2)
	pcalau12i	$t1, %pc_hi20(.LCPI4_3)
	fld.s	$fa3, $t1, %pc_lo12(.LCPI4_3)
	ori	$t1, $zero, 1
	movgr2fr.w	$fa4, $zero
	vldi	$vr5, -912
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB4_4 Depth=1
	add.d	$a4, $a4, $a3
	add.d	$a5, $a5, $a3
	add.d	$a6, $a6, $a3
	add.d	$fp, $fp, $a3
	add.d	$a7, $a7, $a3
	add.d	$t0, $t0, $a3
	beq	$t1, $a1, .LBB4_18
.LBB4_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	move	$t2, $zero
	addi.d	$t1, $t1, 1
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_5:                                # %.sink.split
                                        #   in Loop: Header=BB4_7 Depth=2
	fstx.s	$ft0, $t0, $t2
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=2
	addi.d	$t2, $t2, 4
	beq	$a2, $t2, .LBB4_3
.LBB4_7:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa6, $a4, $t2
	fabs.s	$fa7, $fa6
	fcvt.d.s	$fa7, $fa7
	fcmp.cult.d	$fcc0, $fa0, $fa7
	add.d	$t3, $a5, $t2
	bceqz	$fcc0, .LBB4_11
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=2
	fldx.s	$fa7, $a6, $t2
	fdiv.s	$fa6, $fa7, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa4
	fcvt.d.s	$fa7, $fa6
	bcnez	$fcc0, .LBB4_12
# %bb.9:                                #   in Loop: Header=BB4_7 Depth=2
	fcmp.clt.d	$fcc0, $fa7, $fa1
	bceqz	$fcc0, .LBB4_12
# %bb.10:                               #   in Loop: Header=BB4_7 Depth=2
	add.d	$t4, $a7, $t2
	fld.s	$ft0, $t4, 8
	fld.s	$ft1, $t4, 4
	fmul.s	$ft0, $fa6, $ft0
	fcvt.d.s	$ft0, $ft0
	fsub.d	$fa7, $fa5, $fa7
	fcvt.d.s	$ft1, $ft1
	fldx.s	$ft2, $fp, $t2
	fmadd.d	$ft0, $fa7, $ft1, $ft0
	add.d	$t4, $fp, $t2
	fld.s	$ft1, $t4, 4
	fmul.s	$ft2, $fa6, $ft2
	fcvt.s.d	$fa6, $ft0
	fcvt.d.s	$ft0, $ft2
	fcvt.d.s	$ft1, $ft1
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_7 Depth=2
	fldx.s	$fa6, $a5, $t2
	fld.s	$fa7, $t3, 8
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_12:                               #   in Loop: Header=BB4_7 Depth=2
	fcmp.cult.s	$fcc0, $fa4, $fa6
	fmov.s	$ft0, $fa4
	bcnez	$fcc0, .LBB4_5
# %bb.13:                               #   in Loop: Header=BB4_7 Depth=2
	fcmp.cule.d	$fcc0, $fa7, $fa2
	fmov.s	$ft0, $fa4
	bcnez	$fcc0, .LBB4_5
# %bb.14:                               #   in Loop: Header=BB4_7 Depth=2
	fldx.s	$ft0, $a7, $t2
	add.d	$t4, $a7, $t2
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $fa6, $ft0
	fcvt.d.s	$ft0, $ft0
	fld.s	$ft1, $t4, 4
	add.d	$t4, $fp, $t2
	fld.s	$ft2, $t4, 8
	fadd.d	$fa7, $fa7, $fa5
	fcvt.d.s	$ft1, $ft1
	fmadd.d	$ft0, $fa7, $ft1, $ft0
	fneg.s	$ft1, $ft2
	fld.s	$ft2, $t4, 4
	fmul.s	$ft1, $fa6, $ft1
	fcvt.s.d	$fa6, $ft0
	fcvt.d.s	$ft0, $ft1
	fcvt.d.s	$ft1, $ft2
.LBB4_15:                               #   in Loop: Header=BB4_7 Depth=2
	fmadd.d	$fa7, $fa7, $ft1, $ft0
	fcvt.s.d	$fa7, $fa7
.LBB4_16:                               #   in Loop: Header=BB4_7 Depth=2
	fld.s	$ft0, $t3, 4
	fcvt.d.s	$ft0, $ft0
	fcvt.d.s	$fa6, $fa6
	fadd.d	$fa6, $fa6, $fa0
	fcmp.cule.d	$fcc0, $ft0, $fa6
	bcnez	$fcc0, .LBB4_6
# %bb.17:                               #   in Loop: Header=BB4_7 Depth=2
	fcvt.d.s	$fa6, $fa7
	fadd.d	$fa6, $fa6, $fa0
	fcmp.cule.d	$fcc0, $ft0, $fa6
	fmov.s	$ft0, $fa3
	bceqz	$fcc0, .LBB4_5
	b	.LBB4_6
.LBB4_18:                               # %._crit_edge104
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	dnon_max, .Lfunc_end4-dnon_max
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"Out of memory"
	.size	.L.str, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
