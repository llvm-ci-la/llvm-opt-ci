	.file	"btSolve2LinearConstraint.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_
.LCPI0_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_
	.p2align	5
	.type	_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_,@function
_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_: # @_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
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
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	ld.d	$t0, $sp, 440
	ld.d	$a7, $sp, 448
	ld.d	$s1, $sp, 408
	st.w	$zero, $t0, 0
	st.w	$zero, $a7, 0
	fld.s	$fa4, $s1, 4
	fld.s	$fa5, $s1, 0
	fld.s	$fa6, $s1, 8
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa4, $fa5, $fa5, $fa4
	fmadd.s	$fa4, $fa6, $fa6, $fa4
	fsqrt.s	$fa4, $fa4
	fabs.s	$fa4, $fa4
	pcalau12i	$a6, %pc_hi20(.LCPI0_0)
	fld.s	$fa5, $a6, %pc_lo12(.LCPI0_0)
	vldi	$vr6, -1040
	fadd.s	$fa4, $fa4, $fa6
	fabs.s	$fa4, $fa4
	fcmp.cle.s	$fcc0, $fa5, $fa4
                                        # kill: def $f1 killed $f1 def $vr1
                                        # kill: def $f0 killed $f0 def $vr0
	bcnez	$fcc0, .LBB0_2
# %bb.1:
	fmov.s	$fs0, $fa3
	fmov.s	$fs1, $fa2
	move	$s5, $a5
	move	$s6, $a4
	move	$s7, $a3
	move	$s3, $a2
	move	$s4, $a1
	ld.d	$a1, $sp, 432
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s8, $sp, 424
	ld.d	$s2, $sp, 416
	ld.d	$a4, $sp, 400
	ld.d	$fp, $sp, 376
	ld.d	$s0, $sp, 368
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 176
	move	$a1, $a3
	move	$a2, $s6
	move	$a3, $s0
	move	$a5, $s1
	move	$a6, $s5
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
                                        # kill: def $f0 killed $f0 killed $vr0
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	move	$a7, $fp
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
                                        # kill: def $f1 killed $f1 killed $vr1
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s8
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s5
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
                                        # kill: def $f0 killed $f0 killed $vr0
	move	$a7, $fp
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f1 killed $f1 killed $vr1
	pcaddu18i	$ra, %call36(_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f)
	jirl	$ra, $ra, 0
	fld.s	$fa3, $s0, 4
	fld.s	$fa1, $s4, 352
	fld.s	$fa0, $s4, 348
	fld.s	$fa4, $s0, 8
	fneg.s	$fa5, $fa3
	fmul.s	$fa6, $fa1, $fa5
	fld.s	$fa2, $s4, 344
	fld.s	$fa7, $s0, 0
	fmadd.s	$fa6, $fa0, $fa4, $fa6
	fneg.s	$ft0, $fa4
	fmul.s	$ft1, $fa2, $ft0
	fmadd.s	$ft1, $fa1, $fa7, $ft1
	fneg.s	$ft2, $fa7
	fld.s	$ft3, $s4, 328
	fld.s	$ft4, $s4, 332
	fmul.s	$ft5, $fa0, $ft2
	fmadd.s	$ft5, $fa2, $fa3, $ft5
	fadd.s	$fa6, $fa6, $ft3
	fadd.s	$ft1, $ft4, $ft1
	fld.s	$ft6, $s4, 336
	fld.s	$ft7, $s3, 352
	fld.s	$ft8, $s3, 348
	fld.s	$ft9, $s3, 344
	fadd.s	$ft5, $ft5, $ft6
	fmul.s	$fa5, $ft7, $fa5
	fmadd.s	$fa4, $ft8, $fa4, $fa5
	fmul.s	$fa5, $ft9, $ft0
	fmadd.s	$fa5, $ft7, $fa7, $fa5
	fmul.s	$fa7, $ft8, $ft2
	fld.s	$ft0, $s3, 328
	fld.s	$ft2, $s3, 332
	fld.s	$ft10, $s3, 336
	fmadd.s	$fa3, $ft9, $fa3, $fa7
	fadd.s	$fa4, $fa4, $ft0
	fadd.s	$fa5, $ft2, $fa5
	fadd.s	$fa3, $fa3, $ft10
	fsub.s	$fa4, $fa6, $fa4
	fsub.s	$fa5, $ft1, $fa5
	fld.s	$fa6, $s1, 4
	fsub.s	$fa3, $ft5, $fa3
	fld.s	$fa7, $s1, 0
	fld.s	$ft1, $s1, 8
	fmul.s	$fa5, $fa5, $fa6
	fld.s	$fa6, $s2, 4
	fmadd.s	$fa4, $fa7, $fa4, $fa5
	fmadd.s	$fa3, $ft1, $fa3, $fa4
	fld.s	$fa4, $s2, 8
	fneg.s	$fa5, $fa6
	fmul.s	$fa7, $fa1, $fa5
	fld.s	$ft1, $s2, 0
	fmadd.s	$fa7, $fa0, $fa4, $fa7
	fneg.s	$ft5, $fa4
	fmul.s	$ft11, $fa2, $ft5
	fmadd.s	$fa1, $fa1, $ft1, $ft11
	fneg.s	$ft11, $ft1
	fmul.s	$fa0, $fa0, $ft11
	fmadd.s	$fa0, $fa2, $fa6, $fa0
	fadd.s	$fa2, $ft3, $fa7
	fadd.s	$fa1, $ft4, $fa1
	fadd.s	$fa0, $ft6, $fa0
	fmul.s	$fa5, $ft7, $fa5
	fmadd.s	$fa4, $ft8, $fa4, $fa5
	fmul.s	$fa5, $ft9, $ft5
	fmadd.s	$fa5, $ft7, $ft1, $fa5
	fmul.s	$fa7, $ft8, $ft11
	fmadd.s	$fa6, $ft9, $fa6, $fa7
	fadd.s	$fa4, $ft0, $fa4
	fadd.s	$fa5, $ft2, $fa5
	fadd.s	$fa6, $ft10, $fa6
	fsub.s	$fa2, $fa2, $fa4
	fsub.s	$fa1, $fa1, $fa5
	fld.s	$fa4, $s6, 4
	fld.s	$fa5, $s6, 0
	fld.s	$fa7, $s6, 8
	fsub.s	$fa0, $fa0, $fa6
	fmul.s	$fa1, $fa4, $fa1
	fmadd.s	$fa1, $fa5, $fa2, $fa1
	fmadd.s	$fa1, $fa7, $fa0, $fa1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	fld.s	$fa2, $a0, 0
	fld.s	$fa0, $a0, 4
	vld	$vr10, $sp, 48                  # 16-byte Folded Reload
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	fadd.s	$fa4, $ft3, $ft2
	frecip.s	$fa4, $fa4
	fmul.s	$fa5, $fs1, $fa2
	fneg.s	$fa6, $fa0
	fmul.s	$fa0, $fa3, $fa6
	fmadd.s	$fa0, $fa5, $fa4, $fa0
	fmul.s	$fa2, $fs0, $fa2
	fmul.s	$fa1, $fa1, $fa6
	fld.s	$fa3, $sp, 184
	fld.s	$fa5, $sp, 96
	fld.s	$fa6, $sp, 232
	fld.s	$fa7, $sp, 112
	fld.s	$ft0, $sp, 248
	fld.s	$ft1, $sp, 128
	fmadd.s	$fa1, $fa2, $fa4, $fa1
	fmul.s	$fa2, $fa3, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fmul.s	$fa4, $ft0, $ft1
	fmul.s	$fa5, $ft3, $fa2
	fmul.s	$fa2, $ft2, $fa2
	ld.d	$a0, $sp, 176
	fadd.s	$fa3, $fa3, $fa4
	ld.d	$a1, $sp, 88
	fadd.s	$fa3, $fa5, $fa3
	vinsgr2vr.d	$vr4, $a0, 0
	ld.d	$a0, $sp, 224
	vinsgr2vr.d	$vr5, $a1, 0
	vfmul.s	$vr4, $vr4, $vr5
	ld.d	$a1, $sp, 104
	vinsgr2vr.d	$vr5, $a0, 0
	ld.d	$a0, $sp, 240
	ld.d	$a2, $sp, 120
	vinsgr2vr.d	$vr6, $a1, 0
	vfmul.s	$vr5, $vr5, $vr6
	vinsgr2vr.d	$vr6, $a0, 0
	vinsgr2vr.d	$vr7, $a2, 0
	vfmul.s	$vr6, $vr6, $vr7
	vori.b	$vr7, $vr11, 0
	vextrins.w	$vr7, $vr11, 16
	vfmul.s	$vr7, $vr7, $vr4
	vextrins.w	$vr10, $vr10, 16
	vfmul.s	$vr4, $vr10, $vr4
	vfadd.s	$vr5, $vr5, $vr6
	vfadd.s	$vr5, $vr7, $vr5
	vfadd.s	$vr4, $vr4, $vr5
	fadd.s	$fa2, $fa2, $fa3
	vreplvei.w	$vr3, $vr4, 0
	vreplvei.w	$vr4, $vr4, 1
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $sp, 256
	fld.s	$fa5, $sp, 168
	fadd.s	$fa2, $fa3, $fa2
	fneg.s	$fa3, $fa2
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	frecip.s	$fa2, $fa2
	fmul.s	$fa4, $fa0, $fa4
	fmul.s	$fa6, $fa1, $fa3
	fmul.s	$fa6, $fa6, $fa2
	fmadd.s	$fa4, $fa4, $fa2, $fa6
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	fst.s	$fa4, $a0, 0
	fmul.s	$fa1, $fa1, $fa5
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fa2
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
.LBB0_2:
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
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
	ret
.Lfunc_end0:
	.size	_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_, .Lfunc_end0-_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f,"axG",@progbits,_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f,comdat
	.weak	_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f # -- Begin function _ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f
	.p2align	5
	.type	_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f,@function
_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f: # @_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f
	.cfi_startproc
# %bb.0:
	vld	$vr2, $a5, 0
	vst	$vr2, $a0, 0
	fld.s	$fa6, $a0, 4
	fld.s	$fa2, $a3, 8
	fld.s	$fa3, $a3, 4
	fld.s	$fa7, $a0, 8
	fneg.s	$fa5, $fa6
	fmul.s	$fa4, $fa2, $fa5
	fld.s	$ft0, $a3, 0
	fld.s	$ft1, $a0, 0
	fmadd.s	$fa4, $fa3, $fa7, $fa4
	fneg.s	$ft2, $fa7
	fmul.s	$ft3, $ft0, $ft2
	fmadd.s	$ft3, $fa2, $ft1, $ft3
	fneg.s	$ft4, $ft1
	fld.s	$fa2, $a1, 4
	fmul.s	$fa3, $fa3, $ft4
	fmadd.s	$ft0, $ft0, $fa6, $fa3
	fld.s	$fa3, $a1, 0
	fmul.s	$fa2, $fa2, $ft3
	fld.s	$ft5, $a1, 8
	fld.s	$ft6, $a1, 20
	fld.s	$ft7, $a1, 16
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fmadd.s	$fa2, $ft5, $ft0, $fa2
	fmul.s	$fa3, $ft3, $ft6
	fmadd.s	$fa3, $ft7, $fa4, $fa3
	fld.s	$ft5, $a1, 24
	fld.s	$ft6, $a1, 36
	fld.s	$ft7, $a1, 32
	fld.s	$ft8, $a1, 40
	fmadd.s	$fa3, $ft5, $ft0, $fa3
	fmul.s	$ft3, $ft3, $ft6
	fmadd.s	$fa4, $ft7, $fa4, $ft3
	fmadd.s	$fa4, $ft8, $ft0, $fa4
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a3, $fa3
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $fa4
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $a0, 16
	st.d	$a3, $a0, 24
	fld.s	$ft0, $a4, 8
	fld.s	$ft3, $a4, 4
	fld.s	$ft5, $a4, 0
	fmul.s	$fa6, $fa6, $ft0
	fmadd.s	$fa6, $ft3, $ft2, $fa6
	fmul.s	$fa7, $fa7, $ft5
	fmadd.s	$fa7, $ft0, $ft4, $fa7
	fld.s	$ft0, $a2, 4
	fmul.s	$ft1, $ft1, $ft3
	fmadd.s	$fa5, $ft5, $fa5, $ft1
	fld.s	$ft1, $a2, 0
	fmul.s	$ft0, $ft0, $fa7
	fld.s	$ft2, $a2, 8
	fld.s	$ft3, $a2, 20
	fld.s	$ft4, $a2, 16
	fmadd.s	$ft0, $ft1, $fa6, $ft0
	fmadd.s	$ft0, $ft2, $fa5, $ft0
	fmul.s	$ft1, $fa7, $ft3
	fmadd.s	$ft1, $ft4, $fa6, $ft1
	fld.s	$ft2, $a2, 24
	fld.s	$ft3, $a2, 36
	fld.s	$ft4, $a2, 32
	fld.s	$ft5, $a2, 40
	fmadd.s	$ft1, $ft2, $fa5, $ft1
	fmul.s	$fa7, $fa7, $ft3
	fmadd.s	$fa6, $ft4, $fa6, $fa7
	fmadd.s	$fa5, $ft5, $fa5, $fa6
	movfr2gr.s	$a1, $ft0
	movfr2gr.s	$a2, $ft1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa5
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 32
	st.d	$a2, $a0, 40
	fld.s	$fa6, $a6, 0
	fld.s	$fa7, $a6, 4
	fld.s	$ft2, $a6, 8
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$fa7, $fa7, $fa3
	fmul.s	$ft2, $ft2, $fa4
	movfr2gr.s	$a1, $fa6
	movfr2gr.s	$a2, $fa7
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $ft2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 48
	st.d	$a2, $a0, 56
	fld.s	$ft3, $a7, 0
	fld.s	$ft4, $a7, 4
	fld.s	$ft5, $a7, 8
	fmul.s	$ft3, $ft3, $ft0
	fmul.s	$ft4, $ft4, $ft1
	fmul.s	$ft5, $ft5, $fa5
	movfr2gr.s	$a1, $ft3
	movfr2gr.s	$a2, $ft4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $ft5
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 64
	st.d	$a2, $a0, 72
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa2, $fa6, $fa2, $fa3
	fmadd.s	$fa2, $ft2, $fa4, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa1, $fa0
	fmul.s	$fa1, $ft1, $ft4
	fmadd.s	$fa1, $ft3, $ft0, $fa1
	fmadd.s	$fa1, $ft5, $fa5, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 80
	ret
.Lfunc_end1:
	.size	_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f, .Lfunc_end1-_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_
.LCPI2_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_
	.p2align	5
	.type	_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_,@function
_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_: # @_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
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
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	ld.d	$s2, $sp, 440
	ld.d	$s8, $sp, 448
	ld.d	$s1, $sp, 408
	st.w	$zero, $s2, 0
	st.w	$zero, $s8, 0
	fld.s	$fa4, $s1, 4
	fld.s	$fa5, $s1, 0
	fld.s	$fa6, $s1, 8
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa4, $fa5, $fa5, $fa4
	fmadd.s	$fa4, $fa6, $fa6, $fa4
	fsqrt.s	$fa4, $fa4
	fabs.s	$fa4, $fa4
	pcalau12i	$a6, %pc_hi20(.LCPI2_0)
	fld.s	$fa5, $a6, %pc_lo12(.LCPI2_0)
	vldi	$vr6, -1040
	fadd.s	$fa4, $fa4, $fa6
	fabs.s	$fa4, $fa4
	fcmp.cle.s	$fcc0, $fa5, $fa4
                                        # kill: def $f1 killed $f1 def $vr1
                                        # kill: def $f0 killed $f0 def $vr0
	bcnez	$fcc0, .LBB2_6
# %bb.1:
	fmov.s	$fs0, $fa3
	fmov.s	$fs1, $fa2
	move	$s5, $a5
	move	$s6, $a4
	move	$s7, $a3
	move	$s3, $a2
	move	$s4, $a1
	ld.d	$a1, $sp, 432
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 424
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 416
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a4, $sp, 400
	ld.d	$fp, $sp, 376
	ld.d	$s0, $sp, 368
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 176
	move	$a1, $a3
	move	$a2, $s6
	move	$a3, $s0
	move	$a5, $s1
	move	$a6, $s5
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
                                        # kill: def $f0 killed $f0 killed $vr0
	move	$a7, $fp
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
                                        # kill: def $f1 killed $f1 killed $vr1
	pcaddu18i	$ra, %call36(_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	move	$a1, $s7
	move	$a2, $s6
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s5
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
                                        # kill: def $f0 killed $f0 killed $vr0
	move	$a7, $fp
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f1 killed $f1 killed $vr1
	pcaddu18i	$ra, %call36(_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f)
	jirl	$ra, $ra, 0
	fld.s	$fa3, $s0, 4
	fld.s	$fa1, $s4, 352
	fld.s	$fa0, $s4, 348
	fld.s	$fa4, $s0, 8
	fneg.s	$fa5, $fa3
	fmul.s	$fa6, $fa1, $fa5
	fld.s	$fa2, $s4, 344
	fld.s	$fa7, $s0, 0
	fmadd.s	$fa6, $fa0, $fa4, $fa6
	fneg.s	$ft0, $fa4
	fmul.s	$ft1, $fa2, $ft0
	fmadd.s	$ft1, $fa1, $fa7, $ft1
	fneg.s	$ft2, $fa7
	fld.s	$ft3, $s4, 328
	fld.s	$ft4, $s4, 332
	fmul.s	$ft5, $fa0, $ft2
	fmadd.s	$ft5, $fa2, $fa3, $ft5
	fadd.s	$fa6, $fa6, $ft3
	fadd.s	$ft1, $ft4, $ft1
	fld.s	$ft6, $s4, 336
	fld.s	$ft7, $s3, 352
	fld.s	$ft8, $s3, 348
	fld.s	$ft9, $s3, 344
	fadd.s	$ft5, $ft5, $ft6
	fmul.s	$fa5, $ft7, $fa5
	fmadd.s	$fa4, $ft8, $fa4, $fa5
	fmul.s	$fa5, $ft9, $ft0
	fmadd.s	$fa5, $ft7, $fa7, $fa5
	fmul.s	$fa7, $ft8, $ft2
	fld.s	$ft0, $s3, 328
	fld.s	$ft2, $s3, 332
	fld.s	$ft10, $s3, 336
	fmadd.s	$fa3, $ft9, $fa3, $fa7
	fadd.s	$fa4, $fa4, $ft0
	fadd.s	$fa5, $ft2, $fa5
	fadd.s	$fa3, $fa3, $ft10
	fsub.s	$fa4, $fa6, $fa4
	fsub.s	$fa5, $ft1, $fa5
	fld.s	$fa6, $s1, 4
	fsub.s	$fa3, $ft5, $fa3
	fld.s	$fa7, $s1, 0
	fld.s	$ft1, $s1, 8
	fmul.s	$fa5, $fa5, $fa6
	fld.s	$fa6, $s7, 4
	fmadd.s	$fa4, $fa7, $fa4, $fa5
	fmadd.s	$fa3, $ft1, $fa3, $fa4
	fld.s	$fa4, $s7, 8
	fneg.s	$fa5, $fa6
	fmul.s	$fa7, $fa1, $fa5
	fld.s	$ft1, $s7, 0
	fmadd.s	$fa7, $fa0, $fa4, $fa7
	fneg.s	$ft5, $fa4
	fmul.s	$ft11, $fa2, $ft5
	fmadd.s	$fa1, $fa1, $ft1, $ft11
	fneg.s	$ft11, $ft1
	fmul.s	$fa0, $fa0, $ft11
	fmadd.s	$fa0, $fa2, $fa6, $fa0
	fadd.s	$fa2, $ft3, $fa7
	fadd.s	$fa1, $ft4, $fa1
	fadd.s	$fa0, $ft6, $fa0
	fmul.s	$fa5, $ft7, $fa5
	fmadd.s	$fa4, $ft8, $fa4, $fa5
	fmul.s	$fa5, $ft9, $ft5
	fmadd.s	$fa5, $ft7, $ft1, $fa5
	fmul.s	$fa7, $ft8, $ft11
	fmadd.s	$fa6, $ft9, $fa6, $fa7
	fadd.s	$fa4, $ft0, $fa4
	fadd.s	$fa5, $ft2, $fa5
	fadd.s	$fa6, $ft10, $fa6
	fsub.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $s6, 4
	fsub.s	$fa1, $fa1, $fa5
	fsub.s	$fa0, $fa0, $fa6
	fld.s	$fa5, $s6, 0
	fmul.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $s6, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fld.s	$fa6, $a0, 4
	fmadd.s	$fa1, $fa5, $fa2, $fa1
	fld.s	$fa2, $a0, 0
	fmadd.s	$fa1, $fa4, $fa0, $fa1
	fneg.s	$fa4, $fa6
	fmul.s	$fa0, $fa3, $fa4
	fmadd.s	$fa0, $fs1, $fa2, $fa0
	fmul.s	$fa1, $fa1, $fa4
	fld.s	$fa3, $sp, 184
	fld.s	$fa4, $sp, 96
	fld.s	$fa5, $sp, 232
	fld.s	$fa6, $sp, 112
	fld.s	$fa7, $sp, 248
	fld.s	$ft0, $sp, 128
	fmadd.s	$fa1, $fs0, $fa2, $fa1
	fmul.s	$fa2, $fa3, $fa4
	fmul.s	$fa3, $fa5, $fa6
	fmul.s	$fa4, $fa7, $ft0
	vld	$vr9, $sp, 64                   # 16-byte Folded Reload
	fmul.s	$fa5, $ft1, $fa2
	vld	$vr8, $sp, 48                   # 16-byte Folded Reload
	fmul.s	$fa2, $ft0, $fa2
	ld.d	$a0, $sp, 176
	fadd.s	$fa3, $fa3, $fa4
	ld.d	$a1, $sp, 88
	fadd.s	$fa3, $fa5, $fa3
	vinsgr2vr.d	$vr4, $a0, 0
	ld.d	$a0, $sp, 224
	vinsgr2vr.d	$vr5, $a1, 0
	vfmul.s	$vr4, $vr4, $vr5
	ld.d	$a1, $sp, 104
	vinsgr2vr.d	$vr5, $a0, 0
	ld.d	$a0, $sp, 240
	ld.d	$a2, $sp, 120
	vinsgr2vr.d	$vr6, $a1, 0
	vfmul.s	$vr5, $vr5, $vr6
	vinsgr2vr.d	$vr6, $a0, 0
	vinsgr2vr.d	$vr7, $a2, 0
	vfmul.s	$vr6, $vr6, $vr7
	vori.b	$vr7, $vr9, 0
	vextrins.w	$vr7, $vr9, 16
	vfmul.s	$vr7, $vr7, $vr4
	vextrins.w	$vr8, $vr8, 16
	vfmul.s	$vr4, $vr8, $vr4
	vfadd.s	$vr5, $vr5, $vr6
	vfadd.s	$vr5, $vr7, $vr5
	vfadd.s	$vr4, $vr4, $vr5
	fadd.s	$fa3, $fa2, $fa3
	vreplvei.w	$vr2, $vr4, 0
	vreplvei.w	$vr4, $vr4, 1
	fadd.s	$fa5, $fa2, $fa4
	fld.s	$fa2, $sp, 256
	fld.s	$fa4, $sp, 168
	fadd.s	$fa3, $fa5, $fa3
	fneg.s	$fa5, $fa3
	fmul.s	$fa3, $fa3, $fa5
	fmadd.s	$fa3, $fa2, $fa4, $fa3
	frecip.s	$fa3, $fa3
	fmul.s	$fa6, $fa0, $fa2
	fmul.s	$fa7, $fa1, $fa5
	fmul.s	$fa7, $fa7, $fa3
	fmadd.s	$fa6, $fa6, $fa3, $fa7
	fst.s	$fa6, $s2, 0
	fmul.s	$fa6, $fa1, $fa4
	fmul.s	$fa5, $fa0, $fa5
	fmul.s	$fa5, $fa5, $fa3
	fmadd.s	$fa5, $fa6, $fa3, $fa5
	fst.s	$fa5, $s8, 0
	fld.s	$fa6, $s2, 0
	movgr2fr.w	$fa3, $zero
	fcmp.cule.s	$fcc0, $fa6, $fa3
	bcnez	$fcc0, .LBB2_3
# %bb.2:
	fcmp.clt.s	$fcc0, $fa3, $fa5
	bceqz	$fcc0, .LBB2_4
	b	.LBB2_6
.LBB2_3:
	st.w	$zero, $s2, 0
	fdiv.s	$fa1, $fa1, $fa4
	fcmp.cult.s	$fcc0, $fa3, $fa1
	fst.s	$fa1, $s8, 0
	bcnez	$fcc0, .LBB2_6
.LBB2_4:
	st.w	$zero, $s8, 0
	fdiv.s	$fa0, $fa0, $fa2
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fst.s	$fa0, $s2, 0
	bcnez	$fcc0, .LBB2_6
# %bb.5:                                # %.sink.split
	st.w	$zero, $s2, 0
.LBB2_6:
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
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
	ret
.Lfunc_end2:
	.size	_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_, .Lfunc_end2-_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
