	.file	"solver.c"
	.text
	.globl	attenuate_fluxes                # -- Begin function attenuate_fluxes
	.p2align	5
	.type	attenuate_fluxes,@function
attenuate_fluxes:                       # @attenuate_fluxes
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
                                        # kill: def $f1 killed $f1 def $vr1
                                        # kill: def $f0 killed $f0 def $vr0
	ld.w	$t3, $a3, 8
	ld.w	$t2, $a3, 12
	ld.w	$a6, $a3, 36
	ld.w	$t4, $a3, 44
	fld.s	$ft1, $a3, 60
	ld.d	$s1, $a4, 40
	fld.s	$fa7, $a4, 48
	fld.s	$ft0, $a4, 52
	ld.d	$t0, $a5, 0
	ld.d	$a7, $a5, 8
	ld.d	$t7, $a5, 16
	vld	$vr5, $a5, 24
	vld	$vr6, $a5, 40
	ld.d	$s7, $a5, 56
	ld.d	$a4, $a5, 64
	ld.d	$t1, $a5, 72
	vld	$vr3, $a5, 80
	vld	$vr4, $a5, 96
	mul.d	$a3, $t2, $t3
	mul.d	$a3, $a3, $t4
	fld.s	$ft2, $a0, 4
	movgr2fr.w	$ft3, $a3
	ffint.s.w	$ft3, $ft3
	fdiv.s	$ft4, $ft1, $ft3
	fdiv.s	$ft1, $ft2, $ft4
	ftintrz.w.s	$ft1, $ft1
	movfr2gr.s	$a3, $ft1
	movgr2fr.w	$ft1, $a3
	ffint.s.w	$ft3, $ft1
	vldi	$vr13, -1184
	ld.d	$t3, $a2, 0
	mod.w	$a5, $a3, $t2
	fld.s	$ft1, $a0, 0
	slli.d	$a3, $a5, 3
	ldx.d	$t3, $t3, $a3
	fadd.s	$ft3, $ft3, $ft5
	fneg.s	$ft5, $ft4
	fmadd.s	$ft2, $ft5, $ft3, $ft2
	beqz	$a5, .LBB0_7
# %bb.1:
	addi.w	$t2, $t2, -1
	bne	$a5, $t2, .LBB0_12
# %bb.2:
	blez	$a6, .LBB0_92
# %bb.3:                                # %.lr.ph338
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$t2, $a2, 8
	fadd.s	$ft2, $ft4, $ft2
	alsl.d	$a5, $a5, $t2, 3
	ld.d	$t3, $a5, -16
	ld.d	$t4, $a5, -8
	ldx.d	$t5, $t2, $a3
	fadd.s	$ft3, $ft4, $ft4
	ori	$a3, $zero, 16
	fmul.s	$ft4, $ft4, $ft3
	bgeu	$a6, $a3, .LBB0_140
# %bb.4:
	move	$t6, $zero
.LBB0_5:                                # %scalar.ph500.preheader
	alsl.d	$a3, $t6, $t7, 2
	alsl.d	$a5, $t6, $a7, 2
	alsl.d	$t2, $t6, $t0, 2
	alsl.d	$t5, $t6, $t5, 2
	alsl.d	$t4, $t6, $t4, 2
	alsl.d	$t3, $t6, $t3, 2
	sub.d	$t6, $a6, $t6
	vldi	$vr13, -1152
	.p2align	4, , 16
.LBB0_6:                                # %scalar.ph500
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft6, $t3, 0
	fld.s	$ft7, $t5, 0
	fld.s	$ft8, $t4, 0
	fsub.s	$ft9, $ft6, $ft7
	fdiv.s	$ft9, $ft9, $ft3
	fmadd.s	$ft6, $ft8, $ft5, $ft6
	fadd.s	$ft6, $ft6, $ft7
	fdiv.s	$ft6, $ft6, $ft4
	fmadd.s	$ft7, $ft9, $ft2, $ft8
	fmul.s	$ft8, $ft2, $ft6
	fmadd.s	$ft7, $ft8, $ft2, $ft7
	fst.s	$ft7, $t2, 0
	fadd.s	$ft7, $ft6, $ft6
	fmadd.s	$ft7, $ft7, $ft2, $ft9
	fst.s	$ft7, $a5, 0
	fst.s	$ft6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 4
	addi.d	$t2, $t2, 4
	addi.d	$t5, $t5, 4
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, -1
	addi.d	$t3, $t3, 4
	bnez	$t6, .LBB0_6
	b	.LBB0_17
.LBB0_7:
	blez	$a6, .LBB0_92
# %bb.8:                                # %.lr.ph340
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a5, $a2, 8
	fsub.s	$ft2, $ft2, $ft4
	ldx.d	$t3, $a5, $a3
	ld.d	$t4, $a5, 8
	ld.d	$t5, $a5, 16
	fadd.s	$ft3, $ft4, $ft4
	ori	$a3, $zero, 16
	fmul.s	$ft4, $ft4, $ft3
	bgeu	$a6, $a3, .LBB0_119
# %bb.9:
	move	$t6, $zero
.LBB0_10:                               # %scalar.ph544.preheader
	alsl.d	$a3, $t6, $t7, 2
	alsl.d	$a5, $t6, $a7, 2
	alsl.d	$t2, $t6, $t0, 2
	alsl.d	$t5, $t6, $t5, 2
	alsl.d	$t4, $t6, $t4, 2
	alsl.d	$t3, $t6, $t3, 2
	sub.d	$t6, $a6, $t6
	vldi	$vr13, -1152
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph544
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft6, $t3, 0
	fld.s	$ft7, $t5, 0
	fld.s	$ft8, $t4, 0
	fsub.s	$ft9, $ft6, $ft7
	fdiv.s	$ft9, $ft9, $ft3
	fmadd.s	$ft6, $ft8, $ft5, $ft6
	fadd.s	$ft6, $ft6, $ft7
	fdiv.s	$ft6, $ft6, $ft4
	fmadd.s	$ft7, $ft9, $ft2, $ft8
	fmul.s	$ft8, $ft2, $ft6
	fmadd.s	$ft7, $ft8, $ft2, $ft7
	fst.s	$ft7, $t2, 0
	fadd.s	$ft7, $ft6, $ft6
	fmadd.s	$ft7, $ft7, $ft2, $ft9
	fst.s	$ft7, $a5, 0
	fst.s	$ft6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 4
	addi.d	$t2, $t2, 4
	addi.d	$t5, $t5, 4
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, -1
	addi.d	$t3, $t3, 4
	bnez	$t6, .LBB0_11
	b	.LBB0_17
.LBB0_12:                               # %.preheader334
	blez	$a6, .LBB0_92
# %bb.13:                               # %.lr.ph
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$t2, $a2, 8
	alsl.d	$a5, $a5, $t2, 3
	ld.d	$t3, $a5, -8
	ldx.d	$t4, $t2, $a3
	ld.d	$t5, $a5, 8
	fadd.s	$ft3, $ft4, $ft4
	ori	$a3, $zero, 16
	fmul.s	$ft4, $ft4, $ft3
	bgeu	$a6, $a3, .LBB0_155
# %bb.14:
	move	$t6, $zero
.LBB0_15:                               # %scalar.ph.preheader
	alsl.d	$a3, $t6, $t7, 2
	alsl.d	$a5, $t6, $a7, 2
	alsl.d	$t2, $t6, $t0, 2
	alsl.d	$t5, $t6, $t5, 2
	alsl.d	$t4, $t6, $t4, 2
	alsl.d	$t3, $t6, $t3, 2
	sub.d	$t6, $a6, $t6
	vldi	$vr13, -1152
	.p2align	4, , 16
.LBB0_16:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft6, $t3, 0
	fld.s	$ft7, $t5, 0
	fld.s	$ft8, $t4, 0
	fsub.s	$ft9, $ft6, $ft7
	fdiv.s	$ft9, $ft9, $ft3
	fmadd.s	$ft6, $ft8, $ft5, $ft6
	fadd.s	$ft6, $ft6, $ft7
	fdiv.s	$ft6, $ft6, $ft4
	fmadd.s	$ft7, $ft9, $ft2, $ft8
	fmul.s	$ft8, $ft2, $ft6
	fmadd.s	$ft7, $ft8, $ft2, $ft7
	fst.s	$ft7, $t2, 0
	fadd.s	$ft7, $ft6, $ft6
	fmadd.s	$ft7, $ft7, $ft2, $ft9
	fst.s	$ft7, $a5, 0
	fst.s	$ft6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 4
	addi.d	$t2, $t2, 4
	addi.d	$t5, $t5, 4
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, -1
	addi.d	$t3, $t3, 4
	bnez	$t6, .LBB0_16
.LBB0_17:                               # %.lr.ph342
	bstrpick.d	$t3, $a6, 31, 0
	vpickve2gr.d	$t8, $vr6, 1
	vpickve2gr.d	$s0, $vr6, 0
	vpickve2gr.d	$fp, $vr5, 1
	vpickve2gr.d	$s2, $vr5, 0
	vpickve2gr.d	$t5, $vr4, 1
	vpickve2gr.d	$a3, $vr4, 0
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	vpickve2gr.d	$t6, $vr3, 1
	vpickve2gr.d	$a5, $vr3, 0
	ld.d	$a2, $a2, 24
	fmul.s	$ft1, $fa2, $ft1
	ori	$a3, $zero, 20
	fmul.s	$fa2, $fa1, $fa1
	bgeu	$a6, $a3, .LBB0_22
# %bb.18:
	move	$s3, $zero
.LBB0_19:                               # %scalar.ph588.preheader
	alsl.d	$a3, $s3, $s0, 2
	alsl.d	$t2, $s3, $fp, 2
	alsl.d	$s4, $s3, $s2, 2
	alsl.d	$a2, $s3, $a2, 2
	sub.d	$s3, $t3, $s3
	.p2align	4, , 16
.LBB0_20:                               # %scalar.ph588
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft2, $a2, 0
	fst.s	$ft2, $s4, 0
	fmul.s	$ft2, $fa0, $ft2
	fst.s	$ft2, $t2, 0
	fld.s	$ft2, $s4, 0
	fmul.s	$ft2, $ft2, $ft2
	fst.s	$ft2, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$t2, $t2, 4
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, -1
	addi.d	$a2, $a2, 4
	bnez	$s3, .LBB0_20
# %bb.21:
	move	$a3, $t3
	move	$t2, $fp
	move	$s4, $t8
	b	.LBB0_33
.LBB0_22:                               # %vector.memcheck564
	alsl.d	$s4, $t3, $s2, 2
	alsl.d	$a3, $t3, $fp, 2
	sltu	$t2, $s2, $a3
	sltu	$s3, $fp, $s4
	and	$t2, $t2, $s3
	move	$s3, $zero
	bnez	$t2, .LBB0_19
# %bb.23:                               # %vector.memcheck564
	alsl.d	$t2, $t3, $s0, 2
	sltu	$s5, $s2, $t2
	sltu	$s6, $s0, $s4
	and	$s5, $s5, $s6
	bnez	$s5, .LBB0_19
# %bb.24:                               # %vector.memcheck564
	alsl.d	$s5, $t3, $a2, 2
	sltu	$s6, $s2, $s5
	sltu	$s4, $a2, $s4
	and	$s4, $s6, $s4
	bnez	$s4, .LBB0_19
# %bb.25:                               # %vector.memcheck564
	sltu	$s4, $fp, $t2
	sltu	$s6, $s0, $a3
	and	$s4, $s4, $s6
	bnez	$s4, .LBB0_19
# %bb.26:                               # %vector.memcheck564
	sltu	$s4, $fp, $s5
	sltu	$a3, $a2, $a3
	and	$a3, $s4, $a3
	bnez	$a3, .LBB0_19
# %bb.27:                               # %vector.memcheck564
	sltu	$a3, $s0, $s5
	sltu	$t2, $a2, $t2
	and	$a3, $a3, $t2
	bnez	$a3, .LBB0_19
# %bb.28:                               # %vector.ph590
	bstrpick.d	$a3, $t3, 30, 2
	slli.d	$s3, $a3, 2
	vreplvei.w	$vr10, $vr0, 0
	move	$a3, $a2
	move	$t2, $s2
	move	$s4, $fp
	move	$s5, $s0
	move	$s6, $s3
	.p2align	4, , 16
.LBB0_29:                               # %vector.body595
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr11, $a3, 0
	vst	$vr11, $t2, 0
	vfmul.s	$vr12, $vr10, $vr11
	vst	$vr12, $s4, 0
	vfmul.s	$vr11, $vr11, $vr11
	vst	$vr11, $s5, 0
	addi.d	$s6, $s6, -4
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	addi.d	$t2, $t2, 16
	addi.d	$a3, $a3, 16
	bnez	$s6, .LBB0_29
# %bb.30:                               # %middle.block600
	move	$a3, $t3
	move	$t2, $fp
	move	$s4, $t8
	beq	$s3, $t3, .LBB0_33
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_31:                               #   in Loop: Header=BB0_33 Depth=1
	vldi	$vr0, -1168
.LBB0_32:                               # %interpolateTable.exit
                                        #   in Loop: Header=BB0_33 Depth=1
	fst.s	$fa0, $s4, 0
	addi.d	$s4, $s4, 4
	addi.d	$a3, $a3, -1
	addi.d	$t2, $t2, 4
	beqz	$a3, .LBB0_35
.LBB0_33:                               # %.lr.ph344
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t2, 0
	fcmp.clt.s	$fcc0, $ft0, $fa0
	bcnez	$fcc0, .LBB0_31
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=1
	fdiv.s	$ft2, $fa0, $fa7
	vldi	$vr11, -1184
	fmadd.s	$ft2, $fa7, $ft3, $ft2
	ftintrz.w.s	$ft2, $ft2
	movfr2gr.s	$a2, $ft2
	slli.w	$a2, $a2, 1
	alsl.d	$s3, $a2, $s1, 2
	slli.d	$a2, $a2, 2
	fldx.s	$ft2, $s1, $a2
	fld.s	$ft3, $s3, 4
	fmadd.s	$fa0, $ft2, $fa0, $ft3
	b	.LBB0_32
.LBB0_35:                               # %.lr.ph346.preheader
	ori	$a2, $zero, 8
	vrepli.d	$vr0, 32
	bltu	$a6, $a2, .LBB0_37
# %bb.36:                               # %vector.memcheck603
	vreplgr2vr.d	$vr7, $s7
	vsub.d	$vr6, $vr7, $vr6
	vsub.d	$vr5, $vr7, $vr5
	vslt.du	$vr5, $vr5, $vr0
	vslt.du	$vr6, $vr6, $vr0
	vpickev.w	$vr5, $vr6, $vr5
	vmskltz.w	$vr5, $vr5
	vpickve2gr.hu	$a2, $vr5, 0
	beqz	$a2, .LBB0_134
.LBB0_37:
	move	$a2, $zero
.LBB0_38:                               # %.lr.ph346.preheader839
	alsl.d	$a3, $a2, $s7, 2
	alsl.d	$t2, $a2, $s0, 2
	alsl.d	$s1, $a2, $s2, 2
	alsl.d	$s3, $a2, $t8, 2
	alsl.d	$s4, $a2, $fp, 2
	sub.d	$a2, $t3, $a2
	vldi	$vr5, -1152
	.p2align	4, , 16
.LBB0_39:                               # %.lr.ph346
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa6, $s4, 0
	fld.s	$fa7, $s3, 0
	fld.s	$ft0, $s1, 0
	fld.s	$ft2, $t2, 0
	fadd.s	$ft3, $fa6, $fa5
	fadd.s	$fa7, $fa7, $fa7
	fmul.s	$ft0, $ft0, $ft2
	fdiv.s	$fa7, $fa7, $ft0
	fmadd.s	$fa6, $fa6, $ft3, $fa7
	fst.s	$fa6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$t2, $t2, 4
	addi.d	$s1, $s1, 4
	addi.d	$s3, $s3, 4
	addi.d	$a2, $a2, -1
	addi.d	$s4, $s4, 4
	bnez	$a2, .LBB0_39
.LBB0_40:                               # %.lr.ph349.preheader
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 24
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	ldx.d	$a0, $a0, $a1
	ori	$a1, $zero, 8
	bgeu	$a6, $a1, .LBB0_49
# %bb.41:
	move	$t4, $s7
	move	$a1, $zero
.LBB0_42:                               # %.lr.ph349.preheader838
	slli.d	$a2, $a1, 2
	sub.d	$a1, $t3, $a1
	vldi	$vr5, -1144
	vldi	$vr6, -1256
	vldi	$vr7, -1128
	vldi	$vr8, -1272
	move	$s1, $t0
	move	$s3, $fp
	move	$s4, $s2
	move	$s5, $a0
	move	$s6, $t8
	move	$s7, $s0
	move	$s8, $a7
	move	$ra, $t4
	move	$a3, $t7
	move	$t2, $a4
	.p2align	4, , 16
.LBB0_43:                               # %.lr.ph349
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$ft2, $s1, $a2
	fldx.s	$ft3, $s4, $a2
	fldx.s	$ft4, $s5, $a2
	fldx.s	$ft5, $s6, $a2
	fldx.s	$ft6, $s3, $a2
	fmsub.s	$ft3, $ft3, $ft4, $ft2
	fmul.s	$ft3, $ft3, $ft5
	fmadd.s	$ft2, $ft2, $ft6, $ft3
	fldx.s	$ft3, $s7, $a2
	fldx.s	$ft4, $s8, $a2
	fldx.s	$ft7, $ra, $a2
	fldx.s	$ft8, $a3, $a2
	fdiv.s	$ft2, $ft2, $ft3
	fmul.s	$ft4, $fa1, $ft4
	fmadd.s	$ft2, $ft4, $ft7, $ft2
	fmul.s	$ft4, $fa2, $ft8
	fadd.s	$ft7, $ft6, $fa5
	fmadd.s	$ft7, $ft6, $ft7, $fa6
	fmul.s	$ft5, $ft5, $fa7
	fmadd.s	$ft5, $ft6, $ft7, $ft5
	fmul.s	$ft4, $ft5, $ft4
	fmul.s	$ft5, $ft3, $ft0
	fmul.s	$ft3, $ft3, $ft5
	fdiv.s	$ft3, $ft4, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fstx.s	$ft2, $t2, $a2
	addi.d	$t2, $t2, 4
	addi.d	$a3, $a3, 4
	addi.d	$ra, $ra, 4
	addi.d	$s8, $s8, 4
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, 4
	addi.d	$a1, $a1, -1
	addi.d	$s1, $s1, 4
	bnez	$a1, .LBB0_43
.LBB0_44:                               # %.lr.ph351.preheader
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$a6, $a2, .LBB0_61
# %bb.45:                               # %.lr.ph351.preheader
	sub.d	$a2, $t1, $a4
	ori	$a3, $zero, 32
	move	$s1, $t4
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	bltu	$a2, $a3, .LBB0_62
# %bb.46:                               # %vector.ph677
	bstrpick.d	$a1, $t3, 30, 3
	slli.d	$a1, $a1, 3
	vreplvei.w	$vr5, $vr9, 0
	addi.d	$a2, $t1, 16
	addi.d	$a3, $a4, 16
	move	$t2, $a1
	.p2align	4, , 16
.LBB0_47:                               # %vector.body682
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $a3, -16
	vld	$vr7, $a3, 0
	vfmul.s	$vr6, $vr5, $vr6
	vfmul.s	$vr7, $vr5, $vr7
	vst	$vr6, $a2, -16
	vst	$vr7, $a2, 0
	addi.d	$t2, $t2, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$t2, .LBB0_47
# %bb.48:                               # %middle.block687
	bne	$a1, $t3, .LBB0_62
	b	.LBB0_64
.LBB0_49:                               # %vector.memcheck630
	sub.d	$a3, $a4, $t0
	ori	$a2, $zero, 16
	move	$a1, $zero
	bltu	$a3, $a2, .LBB0_170
# %bb.50:                               # %vector.memcheck630
	sub.d	$a3, $a4, $fp
	bltu	$a3, $a2, .LBB0_170
# %bb.51:                               # %vector.memcheck630
	sub.d	$a3, $a4, $s2
	ori	$a2, $zero, 16
	bltu	$a3, $a2, .LBB0_170
# %bb.52:                               # %vector.memcheck630
	sub.d	$a3, $a4, $a0
	bltu	$a3, $a2, .LBB0_170
# %bb.53:                               # %vector.memcheck630
	sub.d	$a3, $a4, $t8
	ori	$a2, $zero, 16
	bltu	$a3, $a2, .LBB0_170
# %bb.54:                               # %vector.memcheck630
	sub.d	$a3, $a4, $s0
	bltu	$a3, $a2, .LBB0_170
# %bb.55:                               # %vector.memcheck630
	sub.d	$a3, $a4, $a7
	ori	$a2, $zero, 16
	bltu	$a3, $a2, .LBB0_170
# %bb.56:                               # %vector.memcheck630
	move	$t4, $s7
	sub.d	$a3, $a4, $s7
	bltu	$a3, $a2, .LBB0_42
# %bb.57:                               # %vector.memcheck630
	sub.d	$a2, $a4, $t7
	ori	$a3, $zero, 16
	bltu	$a2, $a3, .LBB0_42
# %bb.58:                               # %vector.ph651
	bstrpick.d	$a1, $t3, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.w	$vr5, $vr1, 0
	vreplvei.w	$vr6, $vr2, 0
	lu12i.w	$a2, -261120
	vreplgr2vr.w	$vr7, $a2
	lu12i.w	$a2, 265216
	vreplgr2vr.w	$vr8, $a2
	lu12i.w	$a2, -259072
	vreplgr2vr.w	$vr10, $a2
	lu12i.w	$a2, 263168
	vreplgr2vr.w	$vr11, $a2
	move	$a2, $t0
	move	$s1, $fp
	move	$s3, $s2
	move	$s4, $a0
	move	$s5, $t8
	move	$s6, $s0
	move	$s7, $a7
	move	$s8, $t4
	move	$a3, $t7
	move	$t2, $a4
	move	$ra, $a1
	.p2align	4, , 16
.LBB0_59:                               # %vector.body658
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr12, $a2, 0
	vld	$vr13, $s3, 0
	vld	$vr14, $s4, 0
	vld	$vr15, $s5, 0
	vld	$vr16, $s1, 0
	vfmsub.s	$vr13, $vr13, $vr14, $vr12
	vfmul.s	$vr13, $vr13, $vr15
	vfmadd.s	$vr12, $vr12, $vr16, $vr13
	vld	$vr13, $s6, 0
	vld	$vr14, $s7, 0
	vld	$vr17, $s8, 0
	vld	$vr18, $a3, 0
	vfdiv.s	$vr12, $vr12, $vr13
	vfmul.s	$vr14, $vr5, $vr14
	vfmadd.s	$vr12, $vr14, $vr17, $vr12
	vfmul.s	$vr14, $vr6, $vr18
	vfadd.s	$vr17, $vr16, $vr7
	vfmadd.s	$vr17, $vr16, $vr17, $vr8
	vfmul.s	$vr15, $vr15, $vr10
	vfmadd.s	$vr15, $vr16, $vr17, $vr15
	vfmul.s	$vr14, $vr15, $vr14
	vfmul.s	$vr15, $vr13, $vr11
	vfmul.s	$vr13, $vr13, $vr15
	vfdiv.s	$vr13, $vr14, $vr13
	vfadd.s	$vr12, $vr12, $vr13
	vst	$vr12, $t2, 0
	addi.d	$ra, $ra, -4
	addi.d	$t2, $t2, 16
	addi.d	$a3, $a3, 16
	addi.d	$s8, $s8, 16
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	addi.d	$s1, $s1, 16
	addi.d	$a2, $a2, 16
	bnez	$ra, .LBB0_59
# %bb.60:                               # %middle.block670
	bne	$a1, $t3, .LBB0_42
	b	.LBB0_44
.LBB0_61:
	move	$s1, $t4
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
.LBB0_62:                               # %.lr.ph351.preheader837
	alsl.d	$a2, $a1, $t1, 2
	alsl.d	$a3, $a1, $a4, 2
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB0_63:                               # %.lr.ph351
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $a3, 0
	fmul.s	$fa5, $ft1, $fa5
	fst.s	$fa5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB0_63
.LBB0_64:                               # %.lr.ph353.preheader
	ori	$a1, $zero, 8
	bltu	$a6, $a1, .LBB0_67
# %bb.65:                               # %vector.memcheck690
	alsl.d	$a1, $t3, $t1, 2
	bgeu	$t4, $a1, .LBB0_116
# %bb.66:                               # %vector.memcheck690
	alsl.d	$a1, $t3, $t4, 2
	bgeu	$t1, $a1, .LBB0_116
.LBB0_67:
	move	$a1, $zero
.LBB0_68:                               # %.lr.ph353.preheader836
	alsl.d	$a2, $a1, $t4, 2
	alsl.d	$a3, $a1, $t1, 2
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB0_69:                               # %.lr.ph353
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $a3, 0
	fld.s	$fa6, $a2, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB0_69
.LBB0_70:                               # %.lr.ph355.preheader
	ori	$a1, $zero, 8
	bgeu	$a6, $a1, .LBB0_93
# %bb.71:
	move	$a1, $zero
	move	$t4, $t5
.LBB0_72:                               # %.lr.ph355.preheader835
	ld.d	$t5, $sp, 8                     # 8-byte Folded Reload
.LBB0_73:                               # %.lr.ph355.preheader835
	alsl.d	$a2, $a1, $a5, 2
	alsl.d	$a3, $a1, $s2, 2
	alsl.d	$a4, $a1, $t8, 2
	alsl.d	$t0, $a1, $t0, 2
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB0_74:                               # %.lr.ph355
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $t0, 0
	fld.s	$fa6, $a4, 0
	fld.s	$fa7, $a3, 0
	fmul.s	$fa5, $fa5, $fa6
	fdiv.s	$fa5, $fa5, $fa7
	fst.s	$fa5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$t0, $t0, 4
	bnez	$a1, .LBB0_74
.LBB0_75:                               # %.lr.ph357.preheader
	ori	$a1, $zero, 8
	bgeu	$a6, $a1, .LBB0_99
# %bb.76:
	move	$a1, $zero
.LBB0_77:                               # %.lr.ph357.preheader834
	alsl.d	$a2, $a1, $t6, 2
	alsl.d	$a3, $a1, $s0, 2
	alsl.d	$a4, $a1, $t8, 2
	alsl.d	$t0, $a1, $fp, 2
	alsl.d	$a7, $a1, $a7, 2
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB0_78:                               # %.lr.ph357
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $t0, 0
	fld.s	$fa6, $a4, 0
	fld.s	$fa7, $a7, 0
	fld.s	$ft0, $a3, 0
	fsub.s	$fa5, $fa5, $fa6
	fmul.s	$fa6, $fa1, $fa7
	fmul.s	$fa5, $fa6, $fa5
	fdiv.s	$fa5, $fa5, $ft0
	fst.s	$fa5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a1, $a1, -1
	addi.d	$a7, $a7, 4
	bnez	$a1, .LBB0_78
.LBB0_79:                               # %.lr.ph359.preheader
	ori	$a1, $zero, 8
	bgeu	$a6, $a1, .LBB0_106
# %bb.80:
	move	$a1, $zero
.LBB0_81:                               # %.lr.ph359.preheader833
	alsl.d	$a2, $a1, $t5, 2
	alsl.d	$a3, $a1, $s1, 2
	alsl.d	$a4, $a1, $t7, 2
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB0_82:                               # %.lr.ph359
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	fld.s	$fa5, $a3, 0
	fmul.s	$fa1, $fa2, $fa1
	fmul.s	$fa1, $fa1, $fa5
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB0_82
.LBB0_83:                               # %.lr.ph361.preheader
	ori	$a1, $zero, 8
	bgeu	$a6, $a1, .LBB0_111
# %bb.84:
	move	$a1, $zero
.LBB0_85:                               # %.lr.ph361.preheader832
	alsl.d	$a2, $a1, $t4, 2
	alsl.d	$a3, $a1, $t8, 2
	alsl.d	$a4, $a1, $a0, 2
	sub.d	$a1, $t3, $a1
	vldi	$vr1, -1168
	.p2align	4, , 16
.LBB0_86:                               # %.lr.ph361
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a3, 0
	fld.s	$fa5, $a4, 0
	fsub.s	$fa2, $fa1, $fa2
	fmul.s	$fa2, $fa5, $fa2
	fst.s	$fa2, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB0_86
.LBB0_87:                               # %.lr.ph363.preheader
	ori	$a1, $zero, 8
	bltu	$a6, $a1, .LBB0_89
# %bb.88:                               # %vector.memcheck803
	vreplgr2vr.d	$vr1, $a0
	vsub.d	$vr2, $vr1, $vr4
	vsub.d	$vr1, $vr1, $vr3
	vslt.du	$vr1, $vr1, $vr0
	vslt.du	$vr0, $vr2, $vr0
	vpickev.w	$vr0, $vr0, $vr1
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a1, $vr0, 0
	beqz	$a1, .LBB0_137
.LBB0_89:
	move	$a1, $zero
.LBB0_90:                               # %.lr.ph363.preheader831
	alsl.d	$a0, $a1, $a0, 2
	alsl.d	$a2, $a1, $t4, 2
	alsl.d	$a3, $a1, $t5, 2
	alsl.d	$a4, $a1, $t6, 2
	alsl.d	$a5, $a1, $a5, 2
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB0_91:                               # %.lr.ph363
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a3, 0
	fld.s	$fa3, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB0_91
.LBB0_92:                               # %._crit_edge364
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
.LBB0_93:                               # %vector.memcheck711
	sub.d	$a3, $a5, $t0
	ori	$a2, $zero, 32
	move	$a1, $zero
	move	$t4, $t5
	bltu	$a3, $a2, .LBB0_72
# %bb.94:                               # %vector.memcheck711
	sub.d	$a3, $a5, $t8
	ld.d	$t5, $sp, 8                     # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB0_73
# %bb.95:                               # %vector.memcheck711
	sub.d	$a2, $a5, $s2
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB0_73
# %bb.96:                               # %vector.ph719
	bstrpick.d	$a1, $t3, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a5, 16
	addi.d	$a3, $s2, 16
	addi.d	$a4, $t8, 16
	addi.d	$t1, $t0, 16
	move	$t2, $a1
	.p2align	4, , 16
.LBB0_97:                               # %vector.body722
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr5, $t1, -16
	vld	$vr6, $t1, 0
	vld	$vr7, $a4, -16
	vld	$vr8, $a4, 0
	vld	$vr9, $a3, -16
	vld	$vr10, $a3, 0
	vfmul.s	$vr5, $vr5, $vr7
	vfmul.s	$vr6, $vr6, $vr8
	vfdiv.s	$vr5, $vr5, $vr9
	vfdiv.s	$vr6, $vr6, $vr10
	vst	$vr5, $a2, -16
	vst	$vr6, $a2, 0
	addi.d	$t2, $t2, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB0_97
# %bb.98:                               # %middle.block731
	bne	$a1, $t3, .LBB0_73
	b	.LBB0_75
.LBB0_99:                               # %vector.memcheck734
	sub.d	$a3, $t6, $a7
	ori	$a2, $zero, 32
	move	$a1, $zero
	bltu	$a3, $a2, .LBB0_77
# %bb.100:                              # %vector.memcheck734
	sub.d	$a3, $t6, $fp
	bltu	$a3, $a2, .LBB0_77
# %bb.101:                              # %vector.memcheck734
	sub.d	$a3, $t6, $t8
	ori	$a2, $zero, 32
	bltu	$a3, $a2, .LBB0_77
# %bb.102:                              # %vector.memcheck734
	sub.d	$a3, $t6, $s0
	bltu	$a3, $a2, .LBB0_77
# %bb.103:                              # %vector.ph744
	bstrpick.d	$a1, $t3, 30, 3
	slli.d	$a1, $a1, 3
	vreplvei.w	$vr5, $vr1, 0
	addi.d	$a2, $a7, 16
	addi.d	$a3, $t6, 16
	addi.d	$a4, $fp, 16
	addi.d	$t0, $s0, 16
	addi.d	$t1, $t8, 16
	move	$t2, $a1
	.p2align	4, , 16
.LBB0_104:                              # %vector.body749
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $a2, -16
	vld	$vr7, $a2, 0
	vld	$vr8, $a4, -16
	vld	$vr9, $a4, 0
	vld	$vr10, $t1, -16
	vld	$vr11, $t1, 0
	vfmul.s	$vr6, $vr5, $vr6
	vfmul.s	$vr7, $vr5, $vr7
	vfsub.s	$vr8, $vr8, $vr10
	vfsub.s	$vr9, $vr9, $vr11
	vld	$vr10, $t0, -16
	vld	$vr11, $t0, 0
	vfmul.s	$vr6, $vr6, $vr8
	vfmul.s	$vr7, $vr7, $vr9
	vfdiv.s	$vr6, $vr6, $vr10
	vfdiv.s	$vr7, $vr7, $vr11
	vst	$vr6, $a3, -16
	vst	$vr7, $a3, 0
	addi.d	$t2, $t2, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB0_104
# %bb.105:                              # %middle.block760
	bne	$a1, $t3, .LBB0_77
	b	.LBB0_79
.LBB0_106:                              # %vector.memcheck763
	sub.d	$a3, $t5, $t7
	ori	$a2, $zero, 32
	move	$a1, $zero
	bltu	$a3, $a2, .LBB0_81
# %bb.107:                              # %vector.memcheck763
	sub.d	$a3, $t5, $s1
	bltu	$a3, $a2, .LBB0_81
# %bb.108:                              # %vector.ph769
	bstrpick.d	$a1, $t3, 30, 3
	slli.d	$a1, $a1, 3
	vreplvei.w	$vr1, $vr2, 0
	addi.d	$a2, $t5, 16
	addi.d	$a3, $s1, 16
	addi.d	$a4, $t7, 16
	move	$a7, $a1
	.p2align	4, , 16
.LBB0_109:                              # %vector.body774
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr5, $a4, -16
	vld	$vr6, $a4, 0
	vld	$vr7, $a3, -16
	vld	$vr8, $a3, 0
	vfmul.s	$vr5, $vr1, $vr5
	vfmul.s	$vr6, $vr1, $vr6
	vfmul.s	$vr5, $vr5, $vr7
	vfmul.s	$vr6, $vr6, $vr8
	vst	$vr5, $a2, -16
	vst	$vr6, $a2, 0
	addi.d	$a7, $a7, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a7, .LBB0_109
# %bb.110:                              # %middle.block781
	bne	$a1, $t3, .LBB0_81
	b	.LBB0_83
.LBB0_111:                              # %vector.memcheck784
	sub.d	$a3, $t4, $a0
	ori	$a2, $zero, 32
	move	$a1, $zero
	bltu	$a3, $a2, .LBB0_85
# %bb.112:                              # %vector.memcheck784
	sub.d	$a3, $t4, $t8
	bltu	$a3, $a2, .LBB0_85
# %bb.113:                              # %vector.ph790
	bstrpick.d	$a1, $t3, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $t4, 16
	addi.d	$a3, $t8, 16
	addi.d	$a4, $a0, 16
	lu12i.w	$a7, 260096
	vreplgr2vr.w	$vr1, $a7
	move	$a7, $a1
	.p2align	4, , 16
.LBB0_114:                              # %vector.body793
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr5, $a3, 0
	vld	$vr6, $a4, -16
	vld	$vr7, $a4, 0
	vfsub.s	$vr2, $vr1, $vr2
	vfsub.s	$vr5, $vr1, $vr5
	vfmul.s	$vr2, $vr6, $vr2
	vfmul.s	$vr5, $vr7, $vr5
	vst	$vr2, $a2, -16
	vst	$vr5, $a2, 0
	addi.d	$a7, $a7, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a7, .LBB0_114
# %bb.115:                              # %middle.block800
	bne	$a1, $t3, .LBB0_85
	b	.LBB0_87
.LBB0_116:                              # %vector.ph698
	bstrpick.d	$a1, $t3, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $t4, 16
	addi.d	$a3, $t1, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_117:                              # %vector.body701
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr5, $a3, -16
	vld	$vr6, $a3, 0
	vld	$vr7, $a2, -16
	vld	$vr8, $a2, 0
	vfadd.s	$vr5, $vr5, $vr7
	vfadd.s	$vr6, $vr6, $vr8
	vst	$vr5, $a2, -16
	vst	$vr6, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_117
# %bb.118:                              # %middle.block708
	beq	$a1, $t3, .LBB0_70
	b	.LBB0_68
.LBB0_119:                              # %vector.memcheck520
	sub.d	$a5, $a7, $t0
	move	$t6, $zero
	bltu	$a5, $a3, .LBB0_10
# %bb.120:                              # %vector.memcheck520
	sub.d	$a5, $t7, $t0
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_10
# %bb.121:                              # %vector.memcheck520
	sub.d	$a5, $t0, $t3
	bltu	$a5, $a3, .LBB0_10
# %bb.122:                              # %vector.memcheck520
	sub.d	$a5, $t0, $t4
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_10
# %bb.123:                              # %vector.memcheck520
	sub.d	$a5, $t0, $t5
	bltu	$a5, $a3, .LBB0_10
# %bb.124:                              # %vector.memcheck520
	sub.d	$a5, $t7, $a7
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_10
# %bb.125:                              # %vector.memcheck520
	sub.d	$a5, $a7, $t3
	bltu	$a5, $a3, .LBB0_10
# %bb.126:                              # %vector.memcheck520
	sub.d	$a5, $a7, $t4
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_10
# %bb.127:                              # %vector.memcheck520
	sub.d	$a5, $a7, $t5
	bltu	$a5, $a3, .LBB0_10
# %bb.128:                              # %vector.memcheck520
	sub.d	$a5, $t7, $t3
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_10
# %bb.129:                              # %vector.memcheck520
	sub.d	$a5, $t7, $t4
	bltu	$a5, $a3, .LBB0_10
# %bb.130:                              # %vector.memcheck520
	sub.d	$a3, $t7, $t5
	ori	$a5, $zero, 16
	bltu	$a3, $a5, .LBB0_10
# %bb.131:                              # %vector.ph546
	bstrpick.d	$a3, $a6, 30, 2
	slli.d	$t6, $a3, 2
	vreplvei.w	$vr13, $vr11, 0
	vreplvei.w	$vr14, $vr12, 0
	vreplvei.w	$vr15, $vr10, 0
	lu12i.w	$a3, -262144
	vreplgr2vr.w	$vr16, $a3
	move	$a3, $t3
	move	$a5, $t4
	move	$t2, $t5
	move	$t8, $t0
	move	$fp, $a7
	move	$s0, $t7
	move	$s2, $t6
	.p2align	4, , 16
.LBB0_132:                              # %vector.body555
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr17, $a3, 0
	vld	$vr18, $t2, 0
	vld	$vr19, $a5, 0
	vfsub.s	$vr20, $vr17, $vr18
	vfdiv.s	$vr20, $vr20, $vr13
	vfmadd.s	$vr17, $vr19, $vr16, $vr17
	vfadd.s	$vr17, $vr17, $vr18
	vfdiv.s	$vr17, $vr17, $vr14
	vfmadd.s	$vr18, $vr20, $vr15, $vr19
	vfmul.s	$vr19, $vr15, $vr17
	vfmadd.s	$vr18, $vr19, $vr15, $vr18
	vst	$vr18, $t8, 0
	vfadd.s	$vr18, $vr17, $vr17
	vfmadd.s	$vr18, $vr18, $vr15, $vr20
	vst	$vr18, $fp, 0
	vst	$vr17, $s0, 0
	addi.d	$s2, $s2, -4
	addi.d	$s0, $s0, 16
	addi.d	$fp, $fp, 16
	addi.d	$t8, $t8, 16
	addi.d	$t2, $t2, 16
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 16
	bnez	$s2, .LBB0_132
# %bb.133:                              # %middle.block561
	bne	$t6, $a6, .LBB0_10
	b	.LBB0_17
.LBB0_134:                              # %vector.ph613
	bstrpick.d	$a2, $t3, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $fp, 16
	addi.d	$t2, $s7, 16
	addi.d	$s1, $t8, 16
	addi.d	$s3, $s0, 16
	addi.d	$s4, $s2, 16
	lu12i.w	$s5, -262144
	vreplgr2vr.w	$vr5, $s5
	move	$s5, $a2
	.p2align	4, , 16
.LBB0_135:                              # %vector.body616
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $a3, -16
	vld	$vr7, $a3, 0
	vfadd.s	$vr8, $vr6, $vr5
	vfadd.s	$vr10, $vr7, $vr5
	vld	$vr11, $s1, -16
	vld	$vr12, $s1, 0
	vld	$vr13, $s4, -16
	vld	$vr14, $s4, 0
	vld	$vr15, $s3, -16
	vld	$vr16, $s3, 0
	vfadd.s	$vr11, $vr11, $vr11
	vfadd.s	$vr12, $vr12, $vr12
	vfmul.s	$vr13, $vr13, $vr15
	vfmul.s	$vr14, $vr14, $vr16
	vfdiv.s	$vr11, $vr11, $vr13
	vfdiv.s	$vr12, $vr12, $vr14
	vfmadd.s	$vr6, $vr6, $vr8, $vr11
	vfmadd.s	$vr7, $vr7, $vr10, $vr12
	vst	$vr6, $t2, -16
	vst	$vr7, $t2, 0
	addi.d	$s5, $s5, -8
	addi.d	$a3, $a3, 32
	addi.d	$t2, $t2, 32
	addi.d	$s1, $s1, 32
	addi.d	$s3, $s3, 32
	addi.d	$s4, $s4, 32
	bnez	$s5, .LBB0_135
# %bb.136:                              # %middle.block627
	beq	$a2, $t3, .LBB0_40
	b	.LBB0_38
.LBB0_137:                              # %vector.ph813
	bstrpick.d	$a1, $t3, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a5, 16
	addi.d	$a3, $a0, 16
	addi.d	$a4, $t6, 16
	addi.d	$a6, $t4, 16
	addi.d	$a7, $t5, 16
	move	$t0, $a1
	.p2align	4, , 16
.LBB0_138:                              # %vector.body816
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vld	$vr2, $a7, -16
	vld	$vr3, $a7, 0
	vld	$vr4, $a6, -16
	vld	$vr5, $a6, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vfadd.s	$vr1, $vr1, $vr5
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$t0, $t0, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB0_138
# %bb.139:                              # %middle.block827
	beq	$a1, $t3, .LBB0_92
	b	.LBB0_90
.LBB0_140:                              # %vector.memcheck476
	sub.d	$a5, $a7, $t0
	move	$t6, $zero
	bltu	$a5, $a3, .LBB0_5
# %bb.141:                              # %vector.memcheck476
	sub.d	$a5, $t7, $t0
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_5
# %bb.142:                              # %vector.memcheck476
	sub.d	$a5, $t0, $t3
	bltu	$a5, $a3, .LBB0_5
# %bb.143:                              # %vector.memcheck476
	sub.d	$a5, $t0, $t4
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_5
# %bb.144:                              # %vector.memcheck476
	sub.d	$a5, $t0, $t5
	bltu	$a5, $a3, .LBB0_5
# %bb.145:                              # %vector.memcheck476
	sub.d	$a5, $t7, $a7
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_5
# %bb.146:                              # %vector.memcheck476
	sub.d	$a5, $a7, $t3
	bltu	$a5, $a3, .LBB0_5
# %bb.147:                              # %vector.memcheck476
	sub.d	$a5, $a7, $t4
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_5
# %bb.148:                              # %vector.memcheck476
	sub.d	$a5, $a7, $t5
	bltu	$a5, $a3, .LBB0_5
# %bb.149:                              # %vector.memcheck476
	sub.d	$a5, $t7, $t3
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_5
# %bb.150:                              # %vector.memcheck476
	sub.d	$a5, $t7, $t4
	bltu	$a5, $a3, .LBB0_5
# %bb.151:                              # %vector.memcheck476
	sub.d	$a3, $t7, $t5
	ori	$a5, $zero, 16
	bltu	$a3, $a5, .LBB0_5
# %bb.152:                              # %vector.ph502
	bstrpick.d	$a3, $a6, 30, 2
	slli.d	$t6, $a3, 2
	vreplvei.w	$vr13, $vr11, 0
	vreplvei.w	$vr14, $vr12, 0
	vreplvei.w	$vr15, $vr10, 0
	lu12i.w	$a3, -262144
	vreplgr2vr.w	$vr16, $a3
	move	$a3, $t3
	move	$a5, $t4
	move	$t2, $t5
	move	$t8, $t0
	move	$fp, $a7
	move	$s0, $t7
	move	$s2, $t6
	.p2align	4, , 16
.LBB0_153:                              # %vector.body511
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr17, $a3, 0
	vld	$vr18, $t2, 0
	vld	$vr19, $a5, 0
	vfsub.s	$vr20, $vr17, $vr18
	vfdiv.s	$vr20, $vr20, $vr13
	vfmadd.s	$vr17, $vr19, $vr16, $vr17
	vfadd.s	$vr17, $vr17, $vr18
	vfdiv.s	$vr17, $vr17, $vr14
	vfmadd.s	$vr18, $vr20, $vr15, $vr19
	vfmul.s	$vr19, $vr15, $vr17
	vfmadd.s	$vr18, $vr19, $vr15, $vr18
	vst	$vr18, $t8, 0
	vfadd.s	$vr18, $vr17, $vr17
	vfmadd.s	$vr18, $vr18, $vr15, $vr20
	vst	$vr18, $fp, 0
	vst	$vr17, $s0, 0
	addi.d	$s2, $s2, -4
	addi.d	$s0, $s0, 16
	addi.d	$fp, $fp, 16
	addi.d	$t8, $t8, 16
	addi.d	$t2, $t2, 16
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 16
	bnez	$s2, .LBB0_153
# %bb.154:                              # %middle.block517
	bne	$t6, $a6, .LBB0_5
	b	.LBB0_17
.LBB0_155:                              # %vector.memcheck
	sub.d	$a5, $a7, $t0
	move	$t6, $zero
	bltu	$a5, $a3, .LBB0_15
# %bb.156:                              # %vector.memcheck
	sub.d	$a5, $t7, $t0
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_15
# %bb.157:                              # %vector.memcheck
	sub.d	$a5, $t0, $t3
	bltu	$a5, $a3, .LBB0_15
# %bb.158:                              # %vector.memcheck
	sub.d	$a5, $t0, $t4
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_15
# %bb.159:                              # %vector.memcheck
	sub.d	$a5, $t0, $t5
	bltu	$a5, $a3, .LBB0_15
# %bb.160:                              # %vector.memcheck
	sub.d	$a5, $t7, $a7
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_15
# %bb.161:                              # %vector.memcheck
	sub.d	$a5, $a7, $t3
	bltu	$a5, $a3, .LBB0_15
# %bb.162:                              # %vector.memcheck
	sub.d	$a5, $a7, $t4
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_15
# %bb.163:                              # %vector.memcheck
	sub.d	$a5, $a7, $t5
	bltu	$a5, $a3, .LBB0_15
# %bb.164:                              # %vector.memcheck
	sub.d	$a5, $t7, $t3
	ori	$a3, $zero, 16
	bltu	$a5, $a3, .LBB0_15
# %bb.165:                              # %vector.memcheck
	sub.d	$a5, $t7, $t4
	bltu	$a5, $a3, .LBB0_15
# %bb.166:                              # %vector.memcheck
	sub.d	$a3, $t7, $t5
	ori	$a5, $zero, 16
	bltu	$a3, $a5, .LBB0_15
# %bb.167:                              # %vector.ph
	bstrpick.d	$a3, $a6, 30, 2
	slli.d	$t6, $a3, 2
	vreplvei.w	$vr13, $vr11, 0
	vreplvei.w	$vr14, $vr12, 0
	vreplvei.w	$vr15, $vr10, 0
	lu12i.w	$a3, -262144
	vreplgr2vr.w	$vr16, $a3
	move	$a3, $t3
	move	$a5, $t4
	move	$t2, $t5
	move	$t8, $t0
	move	$fp, $a7
	move	$s0, $t7
	move	$s2, $t6
	.p2align	4, , 16
.LBB0_168:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr17, $a3, 0
	vld	$vr18, $t2, 0
	vld	$vr19, $a5, 0
	vfsub.s	$vr20, $vr17, $vr18
	vfdiv.s	$vr20, $vr20, $vr13
	vfmadd.s	$vr17, $vr19, $vr16, $vr17
	vfadd.s	$vr17, $vr17, $vr18
	vfdiv.s	$vr17, $vr17, $vr14
	vfmadd.s	$vr18, $vr20, $vr15, $vr19
	vfmul.s	$vr19, $vr15, $vr17
	vfmadd.s	$vr18, $vr19, $vr15, $vr18
	vst	$vr18, $t8, 0
	vfadd.s	$vr18, $vr17, $vr17
	vfmadd.s	$vr18, $vr18, $vr15, $vr20
	vst	$vr18, $fp, 0
	vst	$vr17, $s0, 0
	addi.d	$s2, $s2, -4
	addi.d	$s0, $s0, 16
	addi.d	$fp, $fp, 16
	addi.d	$t8, $t8, 16
	addi.d	$t2, $t2, 16
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 16
	bnez	$s2, .LBB0_168
# %bb.169:                              # %middle.block
	bne	$t6, $a6, .LBB0_15
	b	.LBB0_17
.LBB0_170:
	move	$t4, $s7
	b	.LBB0_42
.Lfunc_end0:
	.size	attenuate_fluxes, .Lfunc_end0-attenuate_fluxes
                                        # -- End function
	.globl	interpolateTable                # -- Begin function interpolateTable
	.p2align	5
	.type	interpolateTable,@function
interpolateTable:                       # @interpolateTable
# %bb.0:
	fld.s	$fa1, $a0, 12
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB1_2
# %bb.1:
	vldi	$vr0, -1168
	ret
.LBB1_2:
	fld.s	$fa1, $a0, 8
	fdiv.s	$fa2, $fa0, $fa1
	vldi	$vr3, -1184
	fmadd.s	$fa1, $fa1, $fa3, $fa2
	ld.d	$a0, $a0, 0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a1, $fa1
	slli.w	$a1, $a1, 1
	alsl.d	$a2, $a1, $a0, 2
	slli.d	$a1, $a1, 2
	fldx.s	$fa1, $a0, $a1
	fld.s	$fa2, $a2, 4
	fmadd.s	$fa0, $fa1, $fa0, $fa2
	ret
.Lfunc_end1:
	.size	interpolateTable, .Lfunc_end1-interpolateTable
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function transport_sweep
.LCPI2_0:
	.dword	0x3690000000000000              # double 7.0064923216240854E-46
	.text
	.globl	transport_sweep
	.p2align	5
	.type	transport_sweep,@function
transport_sweep:                        # @transport_sweep
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 232                  # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 72
	move	$s0, $a0
	bnez	$a1, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB2_2:
	fld.s	$fs0, $fp, 60
	ld.w	$s1, $fp, 44
	ld.w	$s2, $fp, 36
	ld.w	$s3, $fp, 8
	ld.w	$s4, $fp, 12
	ori	$a0, $zero, 14
	mul.w	$a0, $s2, $a0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 128
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 136
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 144
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 152
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 160
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 168
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 176
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 184
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 192
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 200
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 208
	ld.d	$a1, $fp, 80
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 216
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 224
	move	$s2, $zero
	blez	$a1, .LBB2_32
# %bb.3:                                # %.preheader.lr.ph
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	movgr2fr.w	$fa0, $s1
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $sp, 76                   # 4-byte Folded Spill
	fcvt.d.s	$fa0, $fa0
	mul.d	$a0, $s4, $s3
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	ld.w	$a0, $fp, 32
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fcvt.s.d	$fs5, $fa0
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $sp, 52                   # 4-byte Folded Spill
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_4:                                # %._crit_edge220.loopexit
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a1, $fp, 80
.LBB2_5:                                # %._crit_edge220
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	bge	$a2, $a1, .LBB2_32
.LBB2_6:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #       Child Loop BB2_13 Depth 3
                                        #         Child Loop BB2_16 Depth 4
                                        #           Child Loop BB2_19 Depth 5
	blez	$a0, .LBB2_5
# %bb.7:                                # %.lr.ph219.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$s3, $s0, 0
	move	$s1, $zero
	ori	$s6, $zero, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	slli.d	$s7, $a1, 5
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_8:                                # %._crit_edge214
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.w	$a0, $fp, 32
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB2_4
.LBB2_9:                                # %.lr.ph219
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_13 Depth 3
                                        #         Child Loop BB2_16 Depth 4
                                        #           Child Loop BB2_19 Depth 5
	bstrpick.d	$a1, $a0, 31, 31
	ld.d	$a2, $s0, 24
	add.w	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 32, 1
	slli.d	$a1, $s1, 2
	fldx.s	$fa0, $a2, $a1
	xor	$a0, $s1, $a0
	sltu	$a0, $zero, $a0
	and	$s6, $a0, $s6
	fcvt.d.s	$fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $s7
	ld.d	$a0, $a0, 8
	blez	$a0, .LBB2_8
# %bb.10:                               # %.lr.ph213
                                        #   in Loop: Header=BB2_9 Depth=2
	move	$a1, $zero
	move	$s4, $zero
	fcvt.s.d	$fs1, $fa0
	ld.w	$a0, $fp, 88
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	xori	$a0, $s6, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $s6
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_11:                               # %.._crit_edge_crit_edge
                                        #   in Loop: Header=BB2_13 Depth=3
	add.d	$a0, $s3, $s7
	ld.d	$a0, $a0, 8
.LBB2_12:                               # %._crit_edge
                                        #   in Loop: Header=BB2_13 Depth=3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB2_8
.LBB2_13:                               #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_16 Depth 4
                                        #           Child Loop BB2_19 Depth 5
	add.d	$a0, $s3, $s7
	ld.d	$a0, $a0, 16
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 4
	fldx.s	$fs2, $a0, $a1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	bge	$s4, $a0, .LBB2_11
# %bb.14:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_13 Depth=3
	fcvt.d.s	$fa1, $fs2
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_16 Depth=4
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	bge	$s4, $a1, .LBB2_12
.LBB2_16:                               # %.lr.ph
                                        #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_13 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_19 Depth 5
	ld.d	$a0, $s0, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $s1, 3
	ldx.d	$a0, $a0, $a1
	move	$a1, $s4
	slli.d	$a2, $s4, 5
	alsl.d	$a2, $s4, $a2, 3
	add.d	$s1, $a0, $a2
	fld.s	$fs2, $s1, 4
	fdiv.s	$fa0, $fs2, $fs5
	vreplvei.w	$vr1, $vr0, 0
	vfrintrp.s	$vr1, $vr1
	movgr2cf	$fcc0, $s6
	fsel	$fa0, $fa1, $fa0, $fcc0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$s4, $fa0
	movgr2fr.d	$fa0, $a1
	addi.d	$a0, $a1, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	fst.s	$fa1, $sp, 72                   # 4-byte Folded Spill
	ffint.s.l	$fs6, $fa0
	fld.s	$fs3, $sp, 36                   # 4-byte Folded Reload
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_17:                               #   in Loop: Header=BB2_19 Depth=5
	fld.s	$fa1, $sp, 72                   # 4-byte Folded Reload
	fmul.s	$fs4, $fa0, $fa1
.LBB2_18:                               #   in Loop: Header=BB2_19 Depth=5
	fst.s	$fs4, $s1, 4
	addi.d	$s2, $s2, 1
	fmov.s	$fs2, $fs4
	bnez	$s5, .LBB2_15
.LBB2_19:                               #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_13 Depth=3
                                        #         Parent Loop BB2_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fcvt.d.s	$fs4, $fs2
	fcvt.d.s	$fs7, $fs3
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmadd.d	$fa1, $fs7, $fa0, $fs4
	fcvt.s.d	$fs4, $fa1
	fdiv.s	$fa1, $fs4, $fs5
	vreplvei.w	$vr2, $vr1, 0
	vfrintrp.s	$vr2, $vr2
	movgr2cf	$fcc0, $s6
	fsel	$fa1, $fa2, $fa1, $fcc0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	bne	$s4, $a0, .LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_19 Depth=5
	move	$s8, $zero
	ori	$s5, $zero, 1
	fmov.s	$fs2, $fs3
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_21:                               #   in Loop: Header=BB2_19 Depth=5
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $s4, $a0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	fld.d	$fa2, $sp, 80                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fs4, $fa1
	fsub.s	$fa2, $fs4, $fs2
	fcvt.d.s	$fa2, $fa2
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_0)
	fdiv.d	$fa0, $fa2, $fa0
	addi.w	$s4, $a0, 0
	fcvt.s.d	$fs2, $fa0
	fcmp.cle.d	$fcc0, $fa1, $fa3
	fsub.s	$fs3, $fs3, $fs2
	bcnez	$fcc0, .LBB2_24
# %bb.22:                               #   in Loop: Header=BB2_19 Depth=5
	fld.s	$fa0, $sp, 76                   # 4-byte Folded Reload
	fcmp.cult.s	$fcc0, $fs4, $fa0
	bceqz	$fcc0, .LBB2_24
# %bb.23:                               #   in Loop: Header=BB2_19 Depth=5
	fld.s	$fa0, $sp, 52                   # 4-byte Folded Reload
	fcmp.cle.s	$fcc0, $fs3, $fa0
	move	$s8, $zero
	movcf2gr	$s5, $fcc0
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_19 Depth=5
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	ori	$s8, $zero, 1
.LBB2_25:                               #   in Loop: Header=BB2_19 Depth=5
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 120
	ld.w	$a1, $fp, 16
	mod.d	$a0, $a0, $a2
	beqz	$a1, .LBB2_28
# %bb.26:                               #   in Loop: Header=BB2_19 Depth=5
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB2_33
# %bb.27:                               #   in Loop: Header=BB2_19 Depth=5
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 16
	fldx.s	$fa2, $a1, $s7
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 4
	add.d	$a2, $a2, $a0
	ori	$a1, $zero, 1
	addi.d	$a5, $sp, 120
	move	$a0, $s1
	move	$a3, $fp
	move	$a4, $s0
	fmov.s	$fa0, $fs2
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(attenuate_fluxes)
	jirl	$ra, $ra, 0
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_28:                               #   in Loop: Header=BB2_19 Depth=5
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 16
	fldx.s	$fa2, $a1, $s7
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 4
	add.d	$a2, $a2, $a0
	ori	$a1, $zero, 1
	addi.d	$a5, $sp, 120
	move	$a0, $s1
	move	$a3, $fp
	move	$a4, $s0
	fmov.s	$fa0, $fs2
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(attenuate_FSR_fluxes)
	jirl	$ra, $ra, 0
.LBB2_29:                               #   in Loop: Header=BB2_19 Depth=5
	ld.d	$s3, $s0, 0
	add.d	$a0, $s3, $s7
	ld.d	$a0, $a0, 8
	addi.d	$a1, $a0, -1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltu	$a1, $zero, $a1
	andn	$a1, $a1, $s8
	bnez	$a1, .LBB2_18
# %bb.30:                               #   in Loop: Header=BB2_19 Depth=5
	fld.s	$fa0, $fp, 24
	beqz	$s6, .LBB2_17
# %bb.31:                               #   in Loop: Header=BB2_19 Depth=5
	fmul.s	$fs4, $fa0, $fs6
	b	.LBB2_18
.LBB2_32:                               # %._crit_edge224
	st.d	$s2, $fp, 144
	fld.d	$fs7, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB2_33:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	transport_sweep, .Lfunc_end2-transport_sweep
                                        # -- End function
	.globl	get_pos_interval                # -- Begin function get_pos_interval
	.p2align	5
	.type	get_pos_interval,@function
get_pos_interval:                       # @get_pos_interval
# %bb.0:
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ret
.Lfunc_end3:
	.size	get_pos_interval, .Lfunc_end3-get_pos_interval
                                        # -- End function
	.globl	get_neg_interval                # -- Begin function get_neg_interval
	.p2align	5
	.type	get_neg_interval,@function
get_neg_interval:                       # @get_neg_interval
# %bb.0:
	fdiv.s	$fa0, $fa0, $fa1
	vreplvei.w	$vr0, $vr0, 0
	vfrintrp.s	$vr0, $vr0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ret
.Lfunc_end4:
	.size	get_neg_interval, .Lfunc_end4-get_neg_interval
                                        # -- End function
	.globl	attenuate_FSR_fluxes            # -- Begin function attenuate_FSR_fluxes
	.p2align	5
	.type	attenuate_FSR_fluxes,@function
attenuate_FSR_fluxes:                   # @attenuate_FSR_fluxes
# %bb.0:
	ld.w	$a6, $a3, 36
                                        # kill: def $f0 killed $f0 def $vr0
	blez	$a6, .LBB5_20
# %bb.1:                                # %.lr.ph
	ld.d	$a7, $a5, 72
	ld.d	$t1, $a5, 48
	ld.d	$t0, $a5, 24
	ld.d	$a5, $a5, 32
	fld.s	$fa4, $a3, 60
	ld.w	$t3, $a3, 44
	ld.w	$t4, $a3, 12
	ld.w	$a3, $a3, 8
	ld.d	$t2, $a4, 40
	fld.s	$fa3, $a4, 48
	mul.d	$t3, $t3, $t4
	mul.d	$a3, $t3, $a3
	movgr2fr.w	$fa5, $a3
	fld.s	$fa6, $a0, 4
	ffint.s.w	$fa5, $fa5
	fdiv.s	$fa5, $fa4, $fa5
	fld.s	$fa4, $a4, 52
	fdiv.s	$fa5, $fa6, $fa5
	ftintrz.w.s	$fa5, $fa5
	movfr2gr.s	$a3, $fa5
	ld.d	$t3, $a2, 0
	mod.w	$a3, $a3, $t4
	fld.s	$fa5, $a0, 0
	slli.d	$a4, $a3, 3
	ldx.d	$a3, $t3, $a4
	ld.d	$t3, $a2, 24
	ori	$t4, $zero, 12
	fmul.s	$fa2, $fa2, $fa5
	bgeu	$a6, $t4, .LBB5_21
# %bb.2:
	move	$t4, $zero
.LBB5_3:                                # %scalar.ph.preheader
	alsl.d	$t5, $t4, $a5, 2
	alsl.d	$t6, $t4, $t0, 2
	alsl.d	$t3, $t4, $t3, 2
	sub.d	$t4, $a6, $t4
	.p2align	4, , 16
.LBB5_4:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $t3, 0
	fst.s	$fa5, $t6, 0
	fmul.s	$fa5, $fa0, $fa5
	fst.s	$fa5, $t5, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 4
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 4
	bnez	$t4, .LBB5_4
.LBB5_5:                                # %.lr.ph80.preheader
	move	$t3, $zero
	fmul.s	$fa0, $fa1, $fa2
	vldi	$vr1, -1184
	move	$t4, $a6
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_6:                                #   in Loop: Header=BB5_8 Depth=1
	vldi	$vr2, -1168
.LBB5_7:                                # %interpolateTable.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	fstx.s	$fa2, $t1, $t3
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 4
	beqz	$t4, .LBB5_10
.LBB5_8:                                # %.lr.ph80
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa2, $a5, $t3
	fcmp.clt.s	$fcc0, $fa4, $fa2
	bcnez	$fcc0, .LBB5_6
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=1
	fdiv.s	$fa5, $fa2, $fa3
	fmadd.s	$fa5, $fa3, $fa1, $fa5
	ftintrz.w.s	$fa5, $fa5
	movfr2gr.s	$t5, $fa5
	slli.w	$t5, $t5, 1
	alsl.d	$t6, $t5, $t2, 2
	slli.d	$t5, $t5, 2
	fldx.s	$fa5, $t2, $t5
	fld.s	$fa6, $t6, 4
	fmadd.s	$fa2, $fa5, $fa2, $fa6
	b	.LBB5_7
.LBB5_10:                               # %._crit_edge
	ori	$a5, $zero, 32
	masknez	$a5, $a5, $a1
	ori	$t2, $zero, 24
	ld.d	$t3, $a2, 8
	maskeqz	$a1, $t2, $a1
	or	$a1, $a1, $a5
	ldx.d	$a2, $a0, $a1
	ldx.d	$a1, $t3, $a4
	ori	$a4, $zero, 16
	alsl.d	$a0, $a6, $a7, 2
	bgeu	$a6, $a4, .LBB5_27
# %bb.11:
	move	$a4, $zero
.LBB5_12:                               # %scalar.ph136.preheader
	alsl.d	$a5, $a4, $a7, 2
	alsl.d	$t1, $a4, $t1, 2
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$t0, $a4, $t0, 2
	alsl.d	$a1, $a4, $a1, 2
	sub.d	$a4, $a6, $a4
	.p2align	4, , 16
.LBB5_13:                               # %scalar.ph136
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $t0, 0
	fld.s	$fa3, $a2, 0
	fld.s	$fa4, $t1, 0
	fdiv.s	$fa1, $fa1, $fa2
	fsub.s	$fa1, $fa3, $fa1
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa0, $fa1
	fst.s	$fa2, $a5, 0
	fld.s	$fa2, $a2, 0
	fsub.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a2, 0
	addi.d	$a5, $a5, 4
	addi.d	$t1, $t1, 4
	addi.d	$a2, $a2, 4
	addi.d	$t0, $t0, 4
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB5_13
.LBB5_14:                               # %.lr.ph85.preheader
	ori	$a1, $zero, 8
	bltu	$a6, $a1, .LBB5_17
# %bb.15:                               # %vector.memcheck154
	bgeu	$a3, $a0, .LBB5_37
# %bb.16:                               # %vector.memcheck154
	alsl.d	$a0, $a6, $a3, 2
	bgeu	$a7, $a0, .LBB5_37
.LBB5_17:
	move	$a0, $zero
.LBB5_18:                               # %.lr.ph85.preheader175
	alsl.d	$a1, $a0, $a3, 2
	alsl.d	$a2, $a0, $a7, 2
	sub.d	$a0, $a6, $a0
	.p2align	4, , 16
.LBB5_19:                               # %.lr.ph85
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB5_19
.LBB5_20:                               # %._crit_edge86
	ret
.LBB5_21:                               # %vector.memcheck
	sub.d	$t6, $a5, $t0
	ori	$t5, $zero, 32
	move	$t4, $zero
	bltu	$t6, $t5, .LBB5_3
# %bb.22:                               # %vector.memcheck
	sub.d	$t6, $t0, $t3
	bltu	$t6, $t5, .LBB5_3
# %bb.23:                               # %vector.memcheck
	sub.d	$t5, $a5, $t3
	ori	$t6, $zero, 32
	bltu	$t5, $t6, .LBB5_3
# %bb.24:                               # %vector.ph
	bstrpick.d	$t4, $a6, 30, 3
	slli.d	$t4, $t4, 3
	vreplvei.w	$vr5, $vr0, 0
	addi.d	$t5, $a5, 16
	addi.d	$t6, $t0, 16
	addi.d	$t7, $t3, 16
	move	$t8, $t4
	.p2align	4, , 16
.LBB5_25:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $t7, -16
	vld	$vr7, $t7, 0
	vst	$vr6, $t6, -16
	vst	$vr7, $t6, 0
	vfmul.s	$vr6, $vr5, $vr6
	vfmul.s	$vr7, $vr5, $vr7
	vst	$vr6, $t5, -16
	vst	$vr7, $t5, 0
	addi.d	$t8, $t8, -8
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	addi.d	$t7, $t7, 32
	bnez	$t8, .LBB5_25
# %bb.26:                               # %middle.block
	bne	$t4, $a6, .LBB5_3
	b	.LBB5_5
.LBB5_27:                               # %vector.memcheck107
	alsl.d	$a5, $a6, $a2, 2
	sltu	$a4, $a7, $a5
	sltu	$t2, $a2, $a0
	and	$t2, $a4, $t2
	move	$a4, $zero
	bnez	$t2, .LBB5_12
# %bb.28:                               # %vector.memcheck107
	alsl.d	$t2, $a6, $a1, 2
	sltu	$t3, $a7, $t2
	sltu	$t4, $a1, $a0
	and	$t3, $t3, $t4
	bnez	$t3, .LBB5_12
# %bb.29:                               # %vector.memcheck107
	alsl.d	$t3, $a6, $t0, 2
	sltu	$t4, $a7, $t3
	sltu	$t5, $t0, $a0
	and	$t4, $t4, $t5
	bnez	$t4, .LBB5_12
# %bb.30:                               # %vector.memcheck107
	alsl.d	$t4, $a6, $t1, 2
	sltu	$t5, $a7, $t4
	sltu	$t6, $t1, $a0
	and	$t5, $t5, $t6
	bnez	$t5, .LBB5_12
# %bb.31:                               # %vector.memcheck107
	sltu	$t2, $a2, $t2
	sltu	$t5, $a1, $a5
	and	$t2, $t2, $t5
	bnez	$t2, .LBB5_12
# %bb.32:                               # %vector.memcheck107
	sltu	$t2, $a2, $t3
	sltu	$t3, $t0, $a5
	and	$t2, $t2, $t3
	bnez	$t2, .LBB5_12
# %bb.33:                               # %vector.memcheck107
	sltu	$t2, $a2, $t4
	sltu	$a5, $t1, $a5
	and	$a5, $t2, $a5
	bnez	$a5, .LBB5_12
# %bb.34:                               # %vector.ph138
	bstrpick.d	$a4, $a6, 30, 2
	slli.d	$a4, $a4, 2
	vreplvei.w	$vr1, $vr0, 0
	move	$a5, $a1
	move	$t2, $t0
	move	$t3, $a2
	move	$t4, $t1
	move	$t5, $a7
	move	$t6, $a4
	.p2align	4, , 16
.LBB5_35:                               # %vector.body143
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, 0
	vld	$vr3, $t2, 0
	vld	$vr4, $t3, 0
	vld	$vr5, $t4, 0
	vfdiv.s	$vr2, $vr2, $vr3
	vfsub.s	$vr2, $vr4, $vr2
	vfmul.s	$vr2, $vr2, $vr5
	vfmul.s	$vr3, $vr1, $vr2
	vst	$vr3, $t5, 0
	vfsub.s	$vr2, $vr4, $vr2
	vst	$vr2, $t3, 0
	addi.d	$t6, $t6, -4
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, 16
	addi.d	$a5, $a5, 16
	bnez	$t6, .LBB5_35
# %bb.36:                               # %middle.block151
	bne	$a4, $a6, .LBB5_12
	b	.LBB5_14
.LBB5_37:                               # %vector.ph162
	bstrpick.d	$a0, $a6, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a3, 16
	addi.d	$a2, $a7, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB5_38:                               # %vector.body165
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a4, $a4, -8
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB5_38
# %bb.39:                               # %middle.block172
	beq	$a0, $a6, .LBB5_20
	b	.LBB5_18
.Lfunc_end5:
	.size	attenuate_FSR_fluxes, .Lfunc_end5-attenuate_FSR_fluxes
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function two_way_transport_sweep
.LCPI6_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI6_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	two_way_transport_sweep
	.p2align	5
	.type	two_way_transport_sweep,@function
two_way_transport_sweep:                # @two_way_transport_sweep
# %bb.0:
	addi.d	$sp, $sp, -512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 360                  # 8-byte Folded Spill
	ld.d	$a2, $a1, 72
	move	$s5, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	bnez	$a2, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
.LBB6_2:
	fld.s	$fs0, $a1, 60
	ld.w	$fp, $a1, 44
	ld.w	$s2, $a1, 36
	ld.w	$s0, $a1, 8
	ld.w	$s1, $a1, 12
	ori	$a0, $zero, 14
	mul.w	$a0, $s2, $a0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 248
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 256
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 264
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 272
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 280
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 288
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 296
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 304
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 312
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 320
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 328
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 336
	ld.d	$a4, $a2, 80
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 344
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 352
	blez	$a4, .LBB6_60
# %bb.3:                                # %.lr.ph378
	movgr2fr.w	$fa0, $fp
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fs0, $fa0
	fcvt.d.s	$fa1, $fa0
	mul.d	$a0, $s1, $s0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa1, $sp, 104                  # 8-byte Folded Spill
	fdiv.d	$fs4, $fa1, $fa0
	lu12i.w	$a1, -251659
	ori	$a1, $a1, 3113
	lu32i.d	$a1, -251659
	lu52i.d	$a1, $a1, -1803
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a1, -83887
	ori	$a1, $a1, 3768
	lu32i.d	$a1, -83887
	lu52i.d	$a1, $a1, 81
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	move	$fp, $zero
	movgr2fr.w	$fs5, $zero
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$s5, $sp, 232                   # 8-byte Folded Spill
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                # %._crit_edge374
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s2, 80
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	move	$a2, $s2
	bge	$fp, $a4, .LBB6_61
.LBB6_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
                                        #     Child Loop BB6_15 Depth 2
                                        #       Child Loop BB6_21 Depth 3
                                        #         Child Loop BB6_24 Depth 4
                                        #           Child Loop BB6_29 Depth 5
                                        #       Child Loop BB6_41 Depth 3
                                        #         Child Loop BB6_45 Depth 4
                                        #       Child Loop BB6_52 Depth 3
                                        #       Child Loop BB6_55 Depth 3
                                        #     Child Loop BB6_58 Depth 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $fp, $a0
	rotri.d	$a0, $a0, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB6_8
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a0, $a2, 72
	bnez	$a0, .LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_8:                                #   in Loop: Header=BB6_5 Depth=1
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.w	$s7, $a2, 88
	slli.d	$s1, $s7, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$s2, $s7, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	blez	$s7, .LBB6_11
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 48
	slli.w	$fp, $a0, 1
	slli.d	$s1, $fp, 3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s0, $s7
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_10:                               #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$fp, $s2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 4
	bnez	$s0, .LBB6_10
.LBB6_11:                               # %.preheader328
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.w	$fp, $a3, 32
	blez	$fp, .LBB6_56
# %bb.12:                               # %.lr.ph370.preheader
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$a0, $zero
	ori	$s6, $zero, 1
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_13:                               #   in Loop: Header=BB6_15 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
.LBB6_14:                               # %._crit_edge366
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.w	$fp, $a3, 32
	addi.d	$a0, $a0, 1
	bge	$a0, $fp, .LBB6_56
.LBB6_15:                               # %.lr.ph370
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_21 Depth 3
                                        #         Child Loop BB6_24 Depth 4
                                        #           Child Loop BB6_29 Depth 5
                                        #       Child Loop BB6_41 Depth 3
                                        #         Child Loop BB6_45 Depth 4
                                        #       Child Loop BB6_52 Depth 3
                                        #       Child Loop BB6_55 Depth 3
	move	$a1, $a0
	ld.d	$a0, $s5, 24
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	fcvt.d.s	$fs2, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.w	$s7, $a3, 88
	fmov.d	$fs0, $fa0
	blez	$s7, .LBB6_17
# %bb.16:                               # %.lr.ph337.preheader
                                        #   in Loop: Header=BB6_15 Depth=2
	slli.d	$a2, $s7, 2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
.LBB6_17:                               # %.preheader326
                                        #   in Loop: Header=BB6_15 Depth=2
	bstrpick.d	$a0, $fp, 31, 31
	add.w	$a0, $fp, $a0
	bstrpick.d	$a0, $a0, 32, 1
	ld.d	$fp, $s5, 0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	xor	$a0, $a4, $a0
	sltu	$a0, $zero, $a0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $a2, 5
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	add.d	$a1, $fp, $a1
	ld.d	$a1, $a1, 8
	and	$s6, $a0, $s6
	fcvt.s.d	$fs0, $fs0
	slli.d	$s8, $a2, 3
	slli.d	$a2, $a4, 3
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	blez	$a1, .LBB6_37
# %bb.18:                               # %.lr.ph350
                                        #   in Loop: Header=BB6_15 Depth=2
	move	$s0, $zero
	move	$s1, $zero
	fcvt.d.s	$fa0, $fs0
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_19:                               #   in Loop: Header=BB6_21 Depth=3
	move	$a4, $zero
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
.LBB6_20:                               # %._crit_edge
                                        #   in Loop: Header=BB6_21 Depth=3
	maskeqz	$a0, $a4, $s6
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $fp, $a2
	ld.d	$a1, $a1, 8
	sub.w	$s7, $s7, $a0
	masknez	$a0, $a4, $s6
	addi.d	$s0, $s0, 1
	add.w	$s1, $a0, $s1
	bge	$s0, $a1, .LBB6_36
.LBB6_21:                               #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_24 Depth 4
                                        #           Child Loop BB6_29 Depth 5
	add.d	$a0, $fp, $a2
	ld.d	$a0, $a0, 16
	slli.d	$a1, $s0, 4
	fldx.s	$fs1, $a0, $a1
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	bge	$s1, $s7, .LBB6_19
# %bb.22:                               # %.lr.ph344.preheader
                                        #   in Loop: Header=BB6_21 Depth=3
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	move	$a4, $zero
	fcvt.d.s	$fa1, $fs1
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fs7, $fa0
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a2, $s1, 31, 0
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_23:                               #   in Loop: Header=BB6_24 Depth=4
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	addi.w	$a0, $a2, 0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	bge	$a0, $s7, .LBB6_35
.LBB6_24:                               # %.lr.ph344
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_29 Depth 5
	ld.d	$a0, $s5, 8
	ldx.d	$a0, $a0, $s8
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 5
	alsl.d	$a1, $a2, $a1, 3
	add.d	$s1, $a0, $a1
	fld.s	$fa1, $s1, 4
	beqz	$s6, .LBB6_26
# %bb.25:                               #   in Loop: Header=BB6_24 Depth=4
	fcvt.d.s	$fa0, $fa1
	fld.d	$fa2, $sp, 104                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa2, $fa0
	fld.d	$fa2, $sp, 112                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fa0, $fa0
	b	.LBB6_27
	.p2align	4, , 16
.LBB6_26:                               #   in Loop: Header=BB6_24 Depth=4
	fneg.s	$fa0, $fa1
	fdiv.s	$fa0, $fa0, $fs0
.LBB6_27:                               #   in Loop: Header=BB6_24 Depth=4
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs4
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$s8, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fs7
	fsel	$fs1, $fs7, $fa0, $fcc0
	movcf2gr	$a0, $fcc0
	add.d	$a4, $a4, $a0
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$s4, $a2, $a0, 3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$s5, $a2, $a0, 2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$s7, $a2, $a0, 3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$fp, $a2, $a0, 2
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_28:                               #   in Loop: Header=BB6_29 Depth=5
	addi.w	$a0, $s8, -1
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	masknez	$a0, $a0, $s6
	or	$a0, $s0, $a0
	ld.d	$a1, $sp, 240
	movgr2cf	$fcc0, $a1
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$s8, $a0, $a1
	fsub.s	$fs1, $fs1, $fs2
	fcmp.cle.s	$fcc0, $fs1, $fs5
	slti	$a0, $s8, 0
	movcf2gr	$a1, $fcc0
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	slt	$a1, $s8, $a1
	xori	$a1, $a1, 1
	or	$a0, $a0, $a1
	bnez	$a0, .LBB6_23
.LBB6_29:                               #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	addi.w	$a0, $s8, 1
	masknez	$a1, $s8, $s6
	maskeqz	$s0, $a0, $s6
	or	$a0, $s0, $a1
	movgr2fr.w	$fa0, $a0
	fld.s	$fs3, $s1, 4
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs4, $fa0
	fcvt.s.d	$fa0, $fa0
	fsub.s	$fs6, $fa0, $fs3
	fdiv.s	$fa0, $fs6, $fs0
	fcmp.clt.s	$fcc0, $fa0, $fs1
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 240
	fsel	$fs2, $fs1, $fa0, $fcc0
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $a3, 120
	ld.w	$a1, $a3, 16
	mod.d	$s2, $a0, $a2
	slli.d	$s3, $s2, 5
	beqz	$a1, .LBB6_32
# %bb.30:                               #   in Loop: Header=BB6_29 Depth=5
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB6_59
# %bb.31:                               #   in Loop: Header=BB6_29 Depth=5
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s6, 16
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	fldx.s	$fa2, $a0, $a2
	alsl.d	$a0, $s2, $s3, 4
	add.d	$a2, $a1, $a0
	ori	$a1, $zero, 1
	addi.d	$a5, $sp, 248
	move	$a0, $s1
	move	$a4, $s6
	fmov.s	$fa0, $fs2
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(attenuate_fluxes)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	b	.LBB6_33
	.p2align	4, , 16
.LBB6_32:                               #   in Loop: Header=BB6_29 Depth=5
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s6, 16
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	fldx.s	$fa2, $a0, $a2
	alsl.d	$a0, $s2, $s3, 4
	add.d	$a2, $a1, $a0
	ori	$a1, $zero, 1
	addi.d	$a5, $sp, 248
	move	$a0, $s1
	move	$a4, $s6
	fmov.s	$fa0, $fs2
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(attenuate_FSR_fluxes)
	jirl	$ra, $ra, 0
.LBB6_33:                               #   in Loop: Header=BB6_29 Depth=5
	fadd.s	$fa0, $fs3, $fs6
	fmadd.s	$fa1, $fs1, $fs0, $fs3
	ld.d	$a0, $sp, 240
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $s1, 4
	ld.w	$a2, $s5, 0
	fcvt.d.s	$fa0, $fs2
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s6, 16
	slli.d	$a3, $a2, 3
	alsl.d	$a4, $s2, $s3, 4
	ld.d	$s2, $s7, 0
	add.d	$a4, $a1, $a4
	ld.w	$a1, $fp, 0
	fstx.d	$fa0, $a0, $a3
	stx.d	$a4, $s2, $a3
	addi.w	$a2, $a2, 1
	st.w	$a2, $s5, 0
	blt	$a2, $a1, .LBB6_28
# %bb.34:                               #   in Loop: Header=BB6_29 Depth=5
	slli.w	$a1, $a1, 1
	st.w	$a1, $fp, 0
	slli.d	$s3, $a1, 3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	b	.LBB6_28
	.p2align	4, , 16
.LBB6_35:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB6_21 Depth=3
	ld.d	$fp, $s5, 0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB6_20
	.p2align	4, , 16
.LBB6_36:                               # %.preheader325.loopexit
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.w	$s7, $a3, 88
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bgtz	$s7, .LBB6_38
	b	.LBB6_14
	.p2align	4, , 16
.LBB6_37:                               #   in Loop: Header=BB6_15 Depth=2
	move	$a0, $a4
	blez	$s7, .LBB6_14
.LBB6_38:                               # %.lr.ph361
                                        #   in Loop: Header=BB6_15 Depth=2
	move	$fp, $zero
	fneg.s	$fs1, $fs0
	b	.LBB6_41
	.p2align	4, , 16
.LBB6_39:                               # %._crit_edge357.loopexit
                                        #   in Loop: Header=BB6_41 Depth=3
	ld.w	$s7, $a3, 88
.LBB6_40:                               # %._crit_edge357
                                        #   in Loop: Header=BB6_41 Depth=3
	addi.d	$fp, $fp, 1
	bge	$fp, $s7, .LBB6_48
.LBB6_41:                               #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_45 Depth 4
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	blez	$a0, .LBB6_40
# %bb.42:                               # %.lr.ph356
                                        #   in Loop: Header=BB6_41 Depth=3
	slli.d	$a1, $fp, 3
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$s0, $a2, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$s2, $fp, $a1, 3
	addi.d	$s3, $a0, 1
	slli.d	$a0, $a0, 3
	addi.d	$s4, $a0, -8
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	b	.LBB6_45
	.p2align	4, , 16
.LBB6_43:                               #   in Loop: Header=BB6_45 Depth=4
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s5, 0
	ldx.d	$a2, $a0, $s4
	fldx.s	$fa2, $a1, $s7
	addi.d	$a5, $sp, 248
	move	$a0, $s1
	move	$a1, $zero
	move	$a4, $s5
	fmov.s	$fa0, $fs2
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(attenuate_FSR_fluxes)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
.LBB6_44:                               #   in Loop: Header=BB6_45 Depth=4
	fld.s	$fa0, $s1, 4
	fneg.s	$fa1, $fs2
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fst.s	$fa0, $s1, 4
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, -8
	ori	$a0, $zero, 1
	bgeu	$a0, $s3, .LBB6_39
.LBB6_45:                               #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s5, 8
	ldx.d	$a0, $a0, $s8
	fldx.d	$fa0, $s0, $s4
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	ld.w	$a0, $a3, 16
	fcvt.s.d	$fs2, $fa0
	slli.d	$a2, $fp, 5
	alsl.d	$a2, $fp, $a2, 3
	add.d	$s1, $a1, $a2
	beqz	$a0, .LBB6_43
# %bb.46:                               #   in Loop: Header=BB6_45 Depth=4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB6_44
# %bb.47:                               #   in Loop: Header=BB6_45 Depth=4
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s5, 0
	ldx.d	$a2, $a0, $s4
	fldx.s	$fa2, $a1, $s7
	addi.d	$a5, $sp, 248
	move	$a0, $s1
	move	$a1, $zero
	move	$a4, $s5
	fmov.s	$fa0, $fs2
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(attenuate_fluxes)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	b	.LBB6_44
	.p2align	4, , 16
.LBB6_48:                               # %.preheader
                                        #   in Loop: Header=BB6_15 Depth=2
	blez	$s7, .LBB6_13
# %bb.49:                               # %.lr.ph365
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.d	$a0, $s5, 8
	ldx.d	$a0, $a0, $s8
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	ori	$a0, $zero, 4
	bgeu	$s7, $a0, .LBB6_51
# %bb.50:                               #   in Loop: Header=BB6_15 Depth=2
	move	$a0, $zero
	b	.LBB6_54
.LBB6_51:                               # %vector.ph
                                        #   in Loop: Header=BB6_15 Depth=2
	bstrpick.d	$a0, $s7, 30, 2
	slli.d	$a0, $a0, 2
	vldrepl.w	$vr0, $a3, 24
	pcalau12i	$a2, %pc_hi20(.LCPI6_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI6_0)
	pcalau12i	$a2, %pc_hi20(.LCPI6_1)
	vld	$vr2, $a2, %pc_lo12(.LCPI6_1)
	xori	$a2, $s6, 1
	vreplgr2vr.d	$vr3, $a2
	addi.d	$a2, $a1, 84
	move	$a4, $a0
	.p2align	4, , 16
.LBB6_52:                               # %vector.body
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vadd.d	$vr4, $vr2, $vr3
	vadd.d	$vr5, $vr1, $vr3
	vpickev.w	$vr4, $vr5, $vr4
	vffint.s.wu	$vr4, $vr4
	vfmul.s	$vr4, $vr0, $vr4
	vstelm.w	$vr4, $a2, -80, 0
	vstelm.w	$vr4, $a2, -40, 1
	vstelm.w	$vr4, $a2, 0, 2
	vstelm.w	$vr4, $a2, 40, 3
	vaddi.du	$vr2, $vr2, 4
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 160
	bnez	$a4, .LBB6_52
# %bb.53:                               # %middle.block
                                        #   in Loop: Header=BB6_15 Depth=2
	beq	$a0, $s7, .LBB6_13
.LBB6_54:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB6_15 Depth=2
	fld.s	$fa0, $a3, 24
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 3
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB6_55:                               # %scalar.ph
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a2, $a0, 1
	maskeqz	$a0, $a0, $s6
	masknez	$a4, $a2, $s6
	or	$a0, $a0, $a4
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 40
	move	$a0, $a2
	bne	$s7, $a2, .LBB6_55
	b	.LBB6_13
	.p2align	4, , 16
.LBB6_56:                               # %.preheader327
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$s2, $a3
	blez	$s7, .LBB6_4
# %bb.57:                               # %.lr.ph373.preheader
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$fp, $zero
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_58:                               # %.lr.ph373
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 88
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	blt	$fp, $a0, .LBB6_58
	b	.LBB6_4
.LBB6_59:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_60:
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
.LBB6_61:                               # %._crit_edge379
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a2, 144
	fld.d	$fs7, $sp, 360                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 416                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.Lfunc_end6:
	.size	two_way_transport_sweep, .Lfunc_end6-two_way_transport_sweep
                                        # -- End function
	.globl	calc_next_fai                   # -- Begin function calc_next_fai
	.p2align	5
	.type	calc_next_fai,@function
calc_next_fai:                          # @calc_next_fai
# %bb.0:
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	add.w	$a0, $a1, $a0
	ret
.Lfunc_end7:
	.size	calc_next_fai, .Lfunc_end7-calc_next_fai
                                        # -- End function
	.globl	alt_attenuate_fluxes            # -- Begin function alt_attenuate_fluxes
	.p2align	5
	.type	alt_attenuate_fluxes,@function
alt_attenuate_fluxes:                   # @alt_attenuate_fluxes
# %bb.0:
	ld.w	$t1, $a3, 36
	blez	$t1, .LBB8_13
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -48
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 8                    # 8-byte Folded Spill
	ld.w	$a7, $a3, 12
	ld.w	$a6, $a3, 44
	ld.w	$t0, $a3, 8
	move	$a5, $zero
	fld.s	$fa3, $a3, 60
	mul.d	$a3, $a6, $a7
	mul.d	$a3, $a3, $t0
	fld.s	$fa4, $a0, 4
	movgr2fr.w	$fa5, $a3
	ffint.s.w	$fa5, $fa5
	fdiv.s	$fa3, $fa3, $fa5
	fcvt.d.s	$fa5, $fa4
	fcvt.d.s	$fa6, $fa3
	fdiv.s	$fa4, $fa4, $fa3
	ftintrz.w.s	$fa4, $fa4
	movfr2gr.s	$a3, $fa4
	movgr2fr.w	$fa4, $a3
	ffint.d.w	$fa4, $fa4
	vldi	$vr7, -928
	fadd.d	$fa4, $fa4, $fa7
	fneg.d	$fa6, $fa6
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	fld.s	$fa5, $a0, 0
	fcvt.s.d	$fa4, $fa4
	mod.w	$a3, $a3, $a7
	ld.d	$a6, $a2, 0
	fmul.s	$fa2, $fa2, $fa5
	fmul.s	$fa5, $fa1, $fa1
	slli.d	$t0, $a3, 3
	ldx.d	$a6, $a6, $t0
	ori	$t0, $zero, 32
	masknez	$t0, $t0, $a1
	ori	$t2, $zero, 24
	maskeqz	$t2, $t2, $a1
	ld.d	$a1, $a2, 24
	addi.w	$a7, $a7, -1
	fadd.s	$fa6, $fa3, $fa3
	ld.d	$a2, $a2, 8
	fmul.s	$fa7, $fa3, $fa6
	or	$t0, $t2, $t0
	ldx.d	$a0, $a0, $t0
	alsl.d	$t0, $a3, $a2, 3
	slli.d	$t1, $t1, 2
	movgr2fr.w	$ft0, $zero
	vldi	$vr9, -1152
	vldi	$vr10, -1144
	vldi	$vr11, -1256
	vldi	$vr12, -1128
	vldi	$vr13, -1272
	vldi	$vr14, -912
	vldi	$vr15, -1184
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	vldi	$vr21, -1168
.LBB8_3:                                # %interpolateTable.exit
                                        #   in Loop: Header=BB8_4 Depth=1
	fldx.s	$ft14, $a0, $a5
	fmul.s	$ft15, $ft9, $ft9
	fmsub.s	$ft14, $ft9, $ft14, $ft8
	fmul.s	$ft14, $ft13, $ft14
	fmadd.s	$ft14, $ft8, $ft10, $ft14
	fdiv.s	$ft14, $ft14, $ft15
	fmul.s	$ft12, $fa1, $ft12
	fadd.s	$fs0, $ft10, $ft1
	fadd.s	$fs1, $ft13, $ft13
	fmadd.s	$fs0, $ft10, $fs0, $fs1
	fmul.s	$fs1, $ft12, $fs0
	fmul.s	$fs2, $ft9, $ft15
	fdiv.s	$fs1, $fs1, $fs2
	fadd.s	$ft14, $fs1, $ft14
	fmul.s	$ft11, $fa5, $ft11
	fadd.s	$fs1, $ft10, $ft2
	fmadd.s	$fs1, $ft10, $fs1, $ft3
	fmul.s	$fs3, $ft13, $ft4
	fmadd.s	$fs1, $ft10, $fs1, $fs3
	fmul.s	$fs1, $ft11, $fs1
	fmul.s	$fs3, $ft15, $ft5
	fldx.s	$fs4, $a6, $a5
	fmul.s	$fs3, $ft15, $fs3
	fdiv.s	$fs1, $fs1, $fs3
	fadd.s	$ft14, $fs1, $ft14
	fmadd.s	$ft14, $fa2, $ft14, $fs4
	fstx.s	$ft14, $a6, $a5
	fldx.s	$ft14, $a0, $a5
	fcvt.d.s	$ft14, $ft14
	fcvt.d.s	$fs1, $ft13
	fsub.d	$fs1, $ft6, $fs1
	fmul.s	$ft8, $ft8, $ft13
	fdiv.s	$ft8, $ft8, $ft9
	fcvt.d.s	$ft8, $ft8
	fmadd.d	$ft8, $ft14, $fs1, $ft8
	fsub.s	$ft9, $ft10, $ft13
	fmul.s	$ft9, $ft12, $ft9
	fdiv.s	$ft9, $ft9, $ft15
	fcvt.d.s	$ft9, $ft9
	fadd.d	$ft8, $ft8, $ft9
	fmul.s	$ft9, $ft11, $fs0
	fdiv.s	$ft9, $ft9, $fs2
	fcvt.d.s	$ft9, $ft9
	fadd.d	$ft8, $ft8, $ft9
	fcvt.s.d	$ft8, $ft8
	fstx.s	$ft8, $a0, $a5
	addi.d	$a5, $a5, 4
	beq	$t1, $a5, .LBB8_12
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	beqz	$a3, .LBB8_7
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$t2, $t0, -8
	ld.d	$t3, $t0, 0
	fldx.s	$ft9, $t2, $a5
	fldx.s	$ft8, $t3, $a5
	bne	$a3, $a7, .LBB8_9
# %bb.6:                                #   in Loop: Header=BB8_4 Depth=1
	fsub.s	$ft9, $ft8, $ft9
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_7:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$t2, $t0, 0
	ld.d	$t3, $a2, 8
	fldx.s	$ft8, $t2, $a5
	fldx.s	$ft9, $t3, $a5
	fsub.s	$ft9, $ft9, $ft8
.LBB8_8:                                #   in Loop: Header=BB8_4 Depth=1
	fdiv.s	$ft12, $ft9, $fa3
	fmadd.s	$ft8, $ft12, $fa4, $ft8
	fmov.s	$ft11, $ft0
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_9:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$t2, $t0, 8
	fldx.s	$ft10, $t2, $a5
	fsub.s	$ft11, $ft9, $ft10
	fdiv.s	$ft12, $ft11, $fa6
	fmadd.s	$ft9, $ft8, $ft1, $ft9
	fadd.s	$ft9, $ft9, $ft10
	fdiv.s	$ft11, $ft9, $fa7
	fmadd.s	$ft8, $ft12, $fa4, $ft8
	fmul.s	$ft9, $ft11, $fa4
	fmadd.s	$ft8, $ft9, $fa4, $ft8
	fadd.s	$ft9, $ft11, $ft11
	fmadd.s	$ft12, $ft9, $fa4, $ft12
.LBB8_10:                               #   in Loop: Header=BB8_4 Depth=1
	fldx.s	$ft9, $a1, $a5
	fld.s	$ft13, $a4, 52
	fmul.s	$ft10, $fa0, $ft9
	fcmp.clt.s	$fcc0, $ft13, $ft10
	bcnez	$fcc0, .LBB8_2
# %bb.11:                               #   in Loop: Header=BB8_4 Depth=1
	fld.s	$ft13, $a4, 48
	ld.d	$t2, $a4, 40
	fdiv.s	$ft14, $ft10, $ft13
	fmadd.s	$ft13, $ft13, $ft7, $ft14
	ftintrz.w.s	$ft13, $ft13
	movfr2gr.s	$t3, $ft13
	slli.w	$t3, $t3, 1
	alsl.d	$t4, $t3, $t2, 2
	slli.d	$t3, $t3, 2
	fldx.s	$ft13, $t2, $t3
	fld.s	$ft14, $t4, 4
	fmadd.s	$ft13, $ft13, $ft10, $ft14
	b	.LBB8_3
.LBB8_12:
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB8_13:                               # %._crit_edge
	ret
.Lfunc_end8:
	.size	alt_attenuate_fluxes, .Lfunc_end8-alt_attenuate_fluxes
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function renormalize_flux
.LCPI9_0:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
	.text
	.globl	renormalize_flux
	.p2align	5
	.type	renormalize_flux,@function
renormalize_flux:                       # @renormalize_flux
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 72
	move	$s0, $a0
	bnez	$a1, .LBB9_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB9_2:
	ld.d	$s4, $fp, 120
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$s1, $a0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	move	$s2, $a0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s4, .LBB9_11
# %bb.3:                                # %.lr.ph83
	move	$s5, $zero
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                # %._crit_edge80
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 120
	slli.d	$a0, $s5, 2
	addi.d	$s5, $s5, 1
	fstx.s	$fa0, $s1, $a0
	bge	$s5, $s4, .LBB9_11
.LBB9_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
                                        #       Child Loop BB9_10 Depth 3
	ld.w	$a1, $fp, 12
	blez	$a1, .LBB9_4
# %bb.6:                                # %.preheader75.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a0, $s0, 16
	slli.d	$a1, $s5, 5
	alsl.d	$a1, $s5, $a1, 4
	add.d	$a2, $a0, $a1
	ldx.d	$s4, $a0, $a1
	fld.s	$fs0, $a2, 16
	ld.d	$s6, $a2, 32
	move	$s7, $zero
	b	.LBB9_8
	.p2align	4, , 16
.LBB9_7:                                # %._crit_edge
                                        #   in Loop: Header=BB9_8 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	slli.d	$a0, $s7, 2
	addi.d	$s7, $s7, 1
	fstx.s	$fa0, $s2, $a0
	bge	$s7, $a1, .LBB9_4
.LBB9_8:                                # %.preheader75
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_10 Depth 3
	ld.w	$a1, $fp, 36
	blez	$a1, .LBB9_7
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB9_8 Depth=2
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $s4, $a0
	move	$a2, $a1
	move	$a3, $s6
	move	$a4, $s3
	.p2align	4, , 16
.LBB9_10:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a3, 0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a5, 0
	fmul.s	$fa0, $fs0, $fa0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB9_10
	b	.LBB9_7
.LBB9_11:                               # %._crit_edge84
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	frecip.s	$fa0, $fs0
	blez	$a0, .LBB9_25
# %bb.12:                               # %.lr.ph93
	move	$a1, $zero
	ld.d	$a2, $s0, 16
	vldi	$vr1, -1264
	pcalau12i	$a3, %pc_hi20(.LCPI9_0)
	fld.d	$fa2, $a3, %pc_lo12(.LCPI9_0)
	ld.w	$a3, $fp, 12
	fmul.s	$fa1, $fa0, $fa1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	ori	$a4, $zero, 8
	b	.LBB9_14
	.p2align	4, , 16
.LBB9_13:                               # %._crit_edge90
                                        #   in Loop: Header=BB9_14 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a0, .LBB9_25
.LBB9_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_17 Depth 2
                                        #       Child Loop BB9_21 Depth 3
                                        #       Child Loop BB9_24 Depth 3
	blez	$a3, .LBB9_13
# %bb.15:                               # %.preheader74.lr.ph
                                        #   in Loop: Header=BB9_14 Depth=1
	slli.d	$a5, $a1, 5
	alsl.d	$a5, $a1, $a5, 4
	add.d	$a5, $a2, $a5
	fld.s	$fa2, $a5, 16
	move	$a6, $zero
	ld.wu	$a7, $fp, 36
	fcvt.d.s	$fa2, $fa2
	fdiv.d	$fa2, $fa1, $fa2
	fcvt.s.d	$fa2, $fa2
	bstrpick.d	$t0, $a7, 30, 3
	slli.d	$t0, $t0, 3
	vreplvei.w	$vr3, $vr2, 0
	addi.w	$t1, $a7, 0
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_16:                               # %._crit_edge88
                                        #   in Loop: Header=BB9_17 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $a3, .LBB9_13
.LBB9_17:                               # %.preheader74
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_21 Depth 3
                                        #       Child Loop BB9_24 Depth 3
	blez	$t1, .LBB9_16
# %bb.18:                               # %.lr.ph87
                                        #   in Loop: Header=BB9_17 Depth=2
	ld.d	$t2, $a5, 0
	slli.d	$t3, $a6, 3
	ldx.d	$t2, $t2, $t3
	bgeu	$a7, $a4, .LBB9_20
# %bb.19:                               #   in Loop: Header=BB9_17 Depth=2
	move	$t3, $zero
	b	.LBB9_23
	.p2align	4, , 16
.LBB9_20:                               # %vector.body.preheader
                                        #   in Loop: Header=BB9_17 Depth=2
	addi.d	$t3, $t2, 16
	move	$t4, $t0
	.p2align	4, , 16
.LBB9_21:                               # %vector.body
                                        #   Parent Loop BB9_14 Depth=1
                                        #     Parent Loop BB9_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr4, $t3, -16
	vld	$vr5, $t3, 0
	vfmul.s	$vr4, $vr4, $vr3
	vfmul.s	$vr5, $vr5, $vr3
	vst	$vr4, $t3, -16
	vst	$vr5, $t3, 0
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB9_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB9_17 Depth=2
	move	$t3, $t0
	beq	$t0, $a7, .LBB9_16
.LBB9_23:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB9_17 Depth=2
	alsl.d	$t2, $t3, $t2, 2
	sub.d	$t3, $a7, $t3
	.p2align	4, , 16
.LBB9_24:                               # %scalar.ph
                                        #   Parent Loop BB9_14 Depth=1
                                        #     Parent Loop BB9_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa4, $t2, 0
	fmul.s	$fa4, $fa4, $fa2
	fst.s	$fa4, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 4
	bnez	$t3, .LBB9_24
	b	.LBB9_16
.LBB9_25:                               # %.preheader73
	ld.d	$a0, $fp, 80
	blez	$a0, .LBB9_44
# %bb.26:                               # %.preheader72.lr.ph
	ld.w	$a1, $fp, 32
	move	$a2, $zero
	vreplvei.w	$vr1, $vr0, 0
	ori	$a3, $zero, 4
	b	.LBB9_28
	.p2align	4, , 16
.LBB9_27:                               # %._crit_edge100
                                        #   in Loop: Header=BB9_28 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB9_44
.LBB9_28:                               # %.preheader72
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_31 Depth 2
                                        #       Child Loop BB9_34 Depth 3
                                        #         Child Loop BB9_42 Depth 4
                                        #         Child Loop BB9_40 Depth 4
	blez	$a1, .LBB9_27
# %bb.29:                               # %.preheader71.lr.ph
                                        #   in Loop: Header=BB9_28 Depth=1
	ld.w	$a4, $fp, 88
	move	$a5, $zero
	slli.d	$a6, $a2, 3
	b	.LBB9_31
	.p2align	4, , 16
.LBB9_30:                               # %._crit_edge98
                                        #   in Loop: Header=BB9_31 Depth=2
	addi.d	$a5, $a5, 1
	beq	$a5, $a1, .LBB9_27
.LBB9_31:                               # %.preheader71
                                        #   Parent Loop BB9_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_34 Depth 3
                                        #         Child Loop BB9_42 Depth 4
                                        #         Child Loop BB9_40 Depth 4
	blez	$a4, .LBB9_30
# %bb.32:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB9_31 Depth=2
	ld.wu	$a7, $fp, 36
	move	$t0, $zero
	slli.d	$t1, $a7, 2
	bstrpick.d	$t2, $a7, 30, 2
	slli.d	$t2, $t2, 2
	addi.w	$t3, $a7, 0
	slli.d	$t4, $a5, 3
	b	.LBB9_34
	.p2align	4, , 16
.LBB9_33:                               # %._crit_edge96
                                        #   in Loop: Header=BB9_34 Depth=3
	addi.d	$t0, $t0, 1
	beq	$t0, $a4, .LBB9_30
.LBB9_34:                               # %.preheader
                                        #   Parent Loop BB9_28 Depth=1
                                        #     Parent Loop BB9_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_42 Depth 4
                                        #         Child Loop BB9_40 Depth 4
	blez	$t3, .LBB9_33
# %bb.35:                               # %.lr.ph95
                                        #   in Loop: Header=BB9_34 Depth=3
	ld.d	$t5, $s0, 8
	ldx.d	$t5, $t5, $a6
	ldx.d	$t5, $t5, $t4
	slli.d	$t6, $t0, 5
	alsl.d	$t6, $t0, $t6, 3
	add.d	$t6, $t5, $t6
	ld.d	$t5, $t6, 24
	ld.d	$t6, $t6, 32
	bltu	$a7, $a3, .LBB9_38
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB9_34 Depth=3
	add.d	$t7, $t6, $t1
	bgeu	$t5, $t7, .LBB9_41
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB9_34 Depth=3
	add.d	$t7, $t5, $t1
	bgeu	$t6, $t7, .LBB9_41
.LBB9_38:                               #   in Loop: Header=BB9_34 Depth=3
	move	$t7, $zero
.LBB9_39:                               # %scalar.ph148.preheader
                                        #   in Loop: Header=BB9_34 Depth=3
	alsl.d	$t6, $t7, $t6, 2
	alsl.d	$t5, $t7, $t5, 2
	sub.d	$t7, $a7, $t7
	.p2align	4, , 16
.LBB9_40:                               # %scalar.ph148
                                        #   Parent Loop BB9_28 Depth=1
                                        #     Parent Loop BB9_31 Depth=2
                                        #       Parent Loop BB9_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa2, $t5, 0
	fmul.s	$fa2, $fa0, $fa2
	fst.s	$fa2, $t5, 0
	fld.s	$fa2, $t6, 0
	fmul.s	$fa2, $fa0, $fa2
	fst.s	$fa2, $t6, 0
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, -1
	addi.d	$t5, $t5, 4
	bnez	$t7, .LBB9_40
	b	.LBB9_33
.LBB9_41:                               # %vector.body155.preheader
                                        #   in Loop: Header=BB9_34 Depth=3
	move	$t7, $t5
	move	$t8, $t6
	move	$s1, $t2
	.p2align	4, , 16
.LBB9_42:                               # %vector.body155
                                        #   Parent Loop BB9_28 Depth=1
                                        #     Parent Loop BB9_31 Depth=2
                                        #       Parent Loop BB9_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr2, $t7, 0
	vld	$vr3, $t8, 0
	vfmul.s	$vr2, $vr1, $vr2
	vst	$vr2, $t7, 0
	vfmul.s	$vr2, $vr1, $vr3
	vst	$vr2, $t8, 0
	addi.d	$s1, $s1, -4
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	bnez	$s1, .LBB9_42
# %bb.43:                               # %middle.block160
                                        #   in Loop: Header=BB9_34 Depth=3
	move	$t7, $t2
	beq	$t2, $a7, .LBB9_33
	b	.LBB9_39
.LBB9_44:                               # %._crit_edge102
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB9_46
# %bb.45:
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB9_46:
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end9:
	.size	renormalize_flux, .Lfunc_end9-renormalize_flux
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function update_sources
.LCPI10_0:
	.dword	0x402921fb54442d18              # double 12.566370614359172
	.text
	.globl	update_sources
	.p2align	5
	.type	update_sources,@function
update_sources:                         # @update_sources
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
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a1, $a1, 36
	fmov.s	$fs0, $fa0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	slli.d	$s5, $a1, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	move	$fp, $a0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s0, 120
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	blez	$s6, .LBB10_23
# %bb.1:                                # %.lr.ph84
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	frecip.s	$fs0, $fs0
	addi.d	$a0, $s5, 16
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %._crit_edge81
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s0, 120
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a0, $a2, 2
	addi.d	$a2, $a2, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	bge	$a2, $s6, .LBB10_23
.LBB10_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_9 Depth 3
                                        #       Child Loop BB10_13 Depth 3
                                        #         Child Loop BB10_21 Depth 4
                                        #         Child Loop BB10_17 Depth 4
	ld.w	$a1, $s0, 12
	blez	$a1, .LBB10_2
# %bb.4:                                # %.preheader69.preheader
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a1, $a2, 5
	alsl.d	$a1, $a2, $a1, 4
	add.d	$a2, $a0, $a1
	ldx.d	$s3, $a0, $a1
	ld.d	$a0, $a2, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s7, $a2, 32
	ld.d	$s1, $a2, 40
	move	$s6, $zero
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_5:                               #   in Loop: Header=BB10_7 Depth=2
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
.LBB10_6:                               # %._crit_edge78
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	slli.d	$a0, $s6, 2
	addi.d	$s6, $s6, 1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	bge	$s6, $a1, .LBB10_2
.LBB10_7:                               # %.preheader69
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_9 Depth 3
                                        #       Child Loop BB10_13 Depth 3
                                        #         Child Loop BB10_21 Depth 4
                                        #         Child Loop BB10_17 Depth 4
	ld.w	$a1, $s0, 36
	blez	$a1, .LBB10_10
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB10_7 Depth=2
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $s3, $a0
	move	$a2, $a1
	move	$a3, $s7
	move	$a4, $s2
	.p2align	4, , 16
.LBB10_9:                               #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a3, 0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a5, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB10_9
.LBB10_10:                              # %._crit_edge
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 36
	blez	$a1, .LBB10_6
# %bb.11:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$s4, $zero
	fmul.s	$fs1, $fs0, $fa0
	alsl.d	$s8, $s6, $s3, 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$s2, $s6, $a0, 3
	b	.LBB10_13
	.p2align	4, , 16
.LBB10_12:                              # %._crit_edge76
                                        #   in Loop: Header=BB10_13 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s7, $s3
	fld.s	$fa1, $a0, 8
	fmadd.s	$fa0, $fs1, $fa1, $fa0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.LCPI10_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI10_0)
	slli.d	$a2, $s4, 2
	fldx.s	$fa2, $a0, $a2
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fsub.s	$fa1, $fa0, $fa2
	fmul.s	$fa1, $fa1, $fa1
	fmul.s	$fa2, $fa2, $fa2
	ld.w	$a1, $s0, 36
	fdiv.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $fp, $a2
	addi.d	$s4, $s4, 1
	fstx.s	$fa0, $a0, $a2
	bge	$s4, $a1, .LBB10_5
.LBB10_13:                              # %.preheader
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_21 Depth 4
                                        #         Child Loop BB10_17 Depth 4
	slli.d	$s3, $s4, 3
	blez	$a1, .LBB10_12
# %bb.14:                               # %.lr.ph75
                                        #   in Loop: Header=BB10_13 Depth=3
	ldx.d	$a0, $s1, $s3
	ld.d	$a2, $s8, 0
	ori	$a3, $zero, 8
	bgeu	$a1, $a3, .LBB10_18
# %bb.15:                               #   in Loop: Header=BB10_13 Depth=3
	move	$a3, $zero
.LBB10_16:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_13 Depth=3
	alsl.d	$a4, $a3, $s5, 2
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB10_17:                              # %scalar.ph
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB10_17
	b	.LBB10_12
	.p2align	4, , 16
.LBB10_18:                              # %vector.memcheck
                                        #   in Loop: Header=BB10_13 Depth=3
	sub.d	$a4, $s5, $a0
	move	$a3, $zero
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB10_16
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB10_13 Depth=3
	sub.d	$a4, $s5, $a2
	bltu	$a4, $a5, .LBB10_16
# %bb.20:                               # %vector.ph
                                        #   in Loop: Header=BB10_13 Depth=3
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a2, 16
	addi.d	$a5, $a0, 16
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	move	$a7, $a3
	.p2align	4, , 16
.LBB10_21:                              # %vector.body
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB10_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB10_13 Depth=3
	beq	$a3, $a1, .LBB10_12
	b	.LBB10_16
.LBB10_23:                              # %._crit_edge85
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
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
.Lfunc_end10:
	.size	update_sources, .Lfunc_end10-update_sources
                                        # -- End function
	.globl	compute_keff                    # -- Begin function compute_keff
	.p2align	5
	.type	compute_keff,@function
compute_keff:                           # @compute_keff
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	move	$s2, $a1
	ld.w	$a1, $a1, 36
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s1, $a1, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	move	$s1, $a0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s2, 120
	move	$s3, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blez	$s5, .LBB11_22
# %bb.1:                                # %.lr.ph90
	move	$s6, $zero
	addi.d	$a0, $fp, 4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s8, $s1, 16
	addi.d	$s7, $fp, 16
	ori	$s0, $zero, 8
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %._crit_edge87
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s2, 120
	slli.d	$a0, $s6, 2
	addi.d	$s6, $s6, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	bge	$s6, $s5, .LBB11_22
.LBB11_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
                                        #     Child Loop BB11_10 Depth 2
                                        #     Child Loop BB11_14 Depth 2
                                        #       Child Loop BB11_18 Depth 3
                                        #       Child Loop BB11_21 Depth 3
	ld.w	$a1, $s2, 36
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	slli.d	$a2, $s6, 5
	alsl.d	$a2, $s6, $a2, 4
	blez	$a1, .LBB11_11
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	add.d	$a3, $a0, $a2
	ld.d	$a3, $a3, 32
	ori	$a4, $zero, 1
	bne	$a1, $a4, .LBB11_6
# %bb.5:                                #   in Loop: Header=BB11_3 Depth=1
	move	$a4, $zero
	b	.LBB11_9
	.p2align	4, , 16
.LBB11_6:                               # %vector.ph155
                                        #   in Loop: Header=BB11_3 Depth=1
	bstrpick.d	$a4, $a1, 30, 1
	slli.d	$a4, $a4, 1
	addi.d	$a5, $a3, 8
	move	$a6, $a4
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_7:                               # %vector.body158
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a5, -8
	ld.d	$t1, $a5, 0
	fld.s	$fa0, $t0, 4
	fld.s	$fa1, $t1, 4
	fst.s	$fa0, $a7, -4
	fst.s	$fa1, $a7, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, -2
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB11_7
# %bb.8:                                # %middle.block161
                                        #   in Loop: Header=BB11_3 Depth=1
	beq	$a4, $a1, .LBB11_11
.LBB11_9:                               # %.lr.ph.preheader197
                                        #   in Loop: Header=BB11_3 Depth=1
	alsl.d	$a5, $a4, $fp, 2
	alsl.d	$a3, $a4, $a3, 3
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB11_10:                              # %.lr.ph
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	fld.s	$fa0, $a4, 4
	fst.s	$fa0, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB11_10
.LBB11_11:                              # %.preheader76
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a1, $s2, 12
	blez	$a1, .LBB11_2
# %bb.12:                               # %.lr.ph86.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	ldx.d	$s5, $a0, $a2
	move	$s4, $zero
	b	.LBB11_14
	.p2align	4, , 16
.LBB11_13:                              # %._crit_edge
                                        #   in Loop: Header=BB11_14 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	slli.d	$a0, $s4, 2
	addi.d	$s4, $s4, 1
	fstx.s	$fa0, $s3, $a0
	bge	$s4, $a1, .LBB11_2
.LBB11_14:                              # %.lr.ph86
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_18 Depth 3
                                        #       Child Loop BB11_21 Depth 3
	ld.w	$a1, $s2, 36
	blez	$a1, .LBB11_13
# %bb.15:                               # %.lr.ph84.preheader
                                        #   in Loop: Header=BB11_14 Depth=2
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s5, $a0
	move	$a2, $zero
	bltu	$a1, $s0, .LBB11_20
# %bb.16:                               # %.lr.ph84.preheader
                                        #   in Loop: Header=BB11_14 Depth=2
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_20
# %bb.17:                               # %vector.ph
                                        #   in Loop: Header=BB11_14 Depth=2
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 16
	move	$a4, $s7
	move	$a5, $s8
	move	$a6, $a2
	.p2align	4, , 16
.LBB11_18:                              # %vector.body
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB11_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB11_14 Depth=2
	beq	$a2, $a1, .LBB11_13
.LBB11_20:                              # %.lr.ph84.preheader196
                                        #   in Loop: Header=BB11_14 Depth=2
	alsl.d	$a3, $a2, $s1, 2
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a4, $a2, $fp, 2
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB11_21:                              # %.lr.ph84
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB11_21
	b	.LBB11_13
.LBB11_22:                              # %._crit_edge91
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 120
	fmov.s	$fs0, $fa0
	blez	$a1, .LBB11_44
# %bb.23:                               # %.lr.ph107
	move	$s5, $zero
	addi.d	$a0, $fp, 4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s7, $s1, 16
	addi.d	$s8, $fp, 16
	ori	$s0, $zero, 8
	b	.LBB11_25
	.p2align	4, , 16
.LBB11_24:                              # %._crit_edge103
                                        #   in Loop: Header=BB11_25 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 120
	slli.d	$a0, $s5, 2
	addi.d	$s5, $s5, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	bge	$s5, $a1, .LBB11_44
.LBB11_25:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_29 Depth 2
                                        #     Child Loop BB11_32 Depth 2
                                        #     Child Loop BB11_36 Depth 2
                                        #       Child Loop BB11_40 Depth 3
                                        #       Child Loop BB11_43 Depth 3
	ld.w	$a1, $s2, 36
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	slli.d	$a2, $s5, 5
	alsl.d	$a2, $s5, $a2, 4
	blez	$a1, .LBB11_33
# %bb.26:                               # %.lr.ph95.preheader
                                        #   in Loop: Header=BB11_25 Depth=1
	add.d	$a3, $a0, $a2
	ld.d	$a3, $a3, 32
	ori	$a4, $zero, 1
	bne	$a1, $a4, .LBB11_28
# %bb.27:                               #   in Loop: Header=BB11_25 Depth=1
	move	$a4, $zero
	b	.LBB11_31
	.p2align	4, , 16
.LBB11_28:                              # %vector.ph183
                                        #   in Loop: Header=BB11_25 Depth=1
	bstrpick.d	$a4, $a1, 30, 1
	slli.d	$a4, $a4, 1
	addi.d	$a5, $a3, 8
	move	$a6, $a4
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_29:                              # %vector.body186
                                        #   Parent Loop BB11_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a5, -8
	ld.d	$t1, $a5, 0
	fld.s	$fa0, $t0, 0
	fld.s	$fa1, $t1, 0
	fst.s	$fa0, $a7, -4
	fst.s	$fa1, $a7, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, -2
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB11_29
# %bb.30:                               # %middle.block189
                                        #   in Loop: Header=BB11_25 Depth=1
	beq	$a4, $a1, .LBB11_33
.LBB11_31:                              # %.lr.ph95.preheader194
                                        #   in Loop: Header=BB11_25 Depth=1
	alsl.d	$a5, $a4, $fp, 2
	alsl.d	$a3, $a4, $a3, 3
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB11_32:                              # %.lr.ph95
                                        #   Parent Loop BB11_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	fld.s	$fa0, $a4, 0
	fst.s	$fa0, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB11_32
.LBB11_33:                              # %.preheader
                                        #   in Loop: Header=BB11_25 Depth=1
	ld.w	$a1, $s2, 12
	blez	$a1, .LBB11_24
# %bb.34:                               # %.lr.ph102.preheader
                                        #   in Loop: Header=BB11_25 Depth=1
	ldx.d	$s6, $a0, $a2
	move	$s4, $zero
	b	.LBB11_36
	.p2align	4, , 16
.LBB11_35:                              # %._crit_edge99
                                        #   in Loop: Header=BB11_36 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	slli.d	$a0, $s4, 2
	addi.d	$s4, $s4, 1
	fstx.s	$fa0, $s3, $a0
	bge	$s4, $a1, .LBB11_24
.LBB11_36:                              # %.lr.ph102
                                        #   Parent Loop BB11_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_40 Depth 3
                                        #       Child Loop BB11_43 Depth 3
	ld.w	$a1, $s2, 36
	blez	$a1, .LBB11_35
# %bb.37:                               # %.lr.ph98.preheader
                                        #   in Loop: Header=BB11_36 Depth=2
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s6, $a0
	move	$a2, $zero
	bltu	$a1, $s0, .LBB11_42
# %bb.38:                               # %.lr.ph98.preheader
                                        #   in Loop: Header=BB11_36 Depth=2
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_42
# %bb.39:                               # %vector.ph168
                                        #   in Loop: Header=BB11_36 Depth=2
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 16
	move	$a4, $s8
	move	$a5, $s7
	move	$a6, $a2
	.p2align	4, , 16
.LBB11_40:                              # %vector.body171
                                        #   Parent Loop BB11_25 Depth=1
                                        #     Parent Loop BB11_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vfmul.s	$vr0, $vr0, $vr2
	vfmul.s	$vr1, $vr1, $vr3
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB11_40
# %bb.41:                               # %middle.block178
                                        #   in Loop: Header=BB11_36 Depth=2
	beq	$a2, $a1, .LBB11_35
.LBB11_42:                              # %.lr.ph98.preheader193
                                        #   in Loop: Header=BB11_36 Depth=2
	alsl.d	$a3, $a2, $s1, 2
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a4, $a2, $fp, 2
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB11_43:                              # %.lr.ph98
                                        #   Parent Loop BB11_25 Depth=1
                                        #     Parent Loop BB11_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB11_43
	b	.LBB11_35
.LBB11_44:                              # %._crit_edge108
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 32
	fld.s	$fa1, $a0, 0
	fadd.s	$fa1, $fs0, $fa1
	fdiv.s	$fs0, $fa0, $fa1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end11:
	.size	compute_keff, .Lfunc_end11-compute_keff
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Error: invalid axial expansion order"
	.size	.L.str.1, 37

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s%ld%s%ld\n"
	.size	.L.str.3, 12

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"2D Tracks Completed = "
	.size	.L.str.4, 23

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" / "
	.size	.L.str.5, 4

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Starting transport sweep ..."
	.size	.Lstr.2, 29

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"\n Please input 0 or 2"
	.size	.Lstr.3, 22

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Renormalizing Flux..."
	.size	.Lstr.4, 22

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"Renormalizing Flux Complete."
	.size	.Lstr.5, 29

	.section	".note.GNU-stack","",@progbits
	.addrsig
