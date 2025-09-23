	.file	"btHingeConstraint.cpp"
	.text
	.globl	_ZN17btHingeConstraintC2Ev      # -- Begin function _ZN17btHingeConstraintC2Ev
	.p2align	5
	.type	_ZN17btHingeConstraintC2Ev,@function
_ZN17btHingeConstraintC2Ev:             # @_ZN17btHingeConstraintC2Ev
	.cfi_startproc
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintType)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV17btHingeConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV17btHingeConstraint+16)
	st.d	$a0, $fp, 0
	st.b	$zero, $fp, 781
	st.h	$zero, $fp, 783
	lu12i.w	$a0, 260096
	st.w	$a0, $fp, 776
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN17btHingeConstraintC2Ev, .Lfunc_end0-_ZN17btHingeConstraintC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b
.LCPI1_0:
	.word	0x3f7ffffe                      # float 0.99999988
.LCPI1_1:
	.word	0xbf7ffffe                      # float -0.99999988
.LCPI1_2:
	.word	0x3f3504f3                      # float 0.707106769
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_3:
	.word	0x3f666666                      # float 0.899999976
	.word	0x3e99999a                      # float 0.300000012
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.text
	.globl	_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b
	.p2align	5
	.type	_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b,@function
_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b: # @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b
	.cfi_startproc
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	.cfi_offset 58, -88
	.cfi_offset 59, -96
	.cfi_offset 60, -104
	.cfi_offset 61, -112
	.cfi_offset 62, -120
	.cfi_offset 63, -128
	move	$fp, $a7
	move	$s1, $a6
	move	$s3, $a5
	move	$s2, $a4
	move	$s5, $a3
	move	$a3, $a2
	move	$s4, $a1
	move	$s0, $a0
	ori	$a1, $zero, 4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV17btHingeConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV17btHingeConstraint+16)
	st.d	$a0, $s0, 0
	st.h	$zero, $s0, 780
	st.b	$zero, $s0, 783
	st.b	$fp, $s0, 784
	vld	$vr0, $s5, 0
	vst	$vr0, $s0, 648
	fld.s	$fa5, $s4, 8
	fld.s	$fa0, $s4, 24
	fld.s	$fa1, $s4, 40
	fld.s	$fa4, $s3, 0
	fld.s	$fa3, $s3, 4
	fld.s	$fa6, $s3, 8
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI1_0)
	fmul.s	$fa2, $fa0, $fa3
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	fmadd.s	$fa2, $fa6, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa2, $fa7
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	bceqz	$fcc0, .LBB1_3
# %bb.1:
	fld.s	$fa7, $a0, %pc_lo12(.LCPI1_1)
	fcmp.cult.s	$fcc0, $fa7, $fa2
	bceqz	$fcc0, .LBB1_4
# %bb.2:
	fneg.s	$fa2, $fa0
	fmul.s	$fa2, $fa6, $fa2
	fmadd.s	$fa2, $fa3, $fa1, $fa2
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fmadd.s	$fa1, $fa6, $fa5, $fa1
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $fa3, $fa5
	fmadd.s	$fa0, $fa4, $fa0, $fa5
	fneg.s	$fa5, $fa3
	fmul.s	$fa5, $fa0, $fa5
	fmadd.s	$fs0, $fa1, $fa6, $fa5
	fneg.s	$fa5, $fa6
	fmul.s	$fa5, $fa2, $fa5
	fmadd.s	$fs1, $fa0, $fa4, $fa5
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa1, $fa4
	fmadd.s	$fs2, $fa2, $fa3, $fa4
	b	.LBB1_5
.LBB1_3:
	fld.s	$fa3, $s4, 16
	fld.s	$fa4, $s4, 32
	fld.s	$fa5, $s4, 48
	fld.s	$fa2, $s4, 12
	fld.s	$fa1, $s4, 28
	fld.s	$fa0, $s4, 44
	fneg.s	$fs0, $fa3
	fneg.s	$fs1, $fa4
	fneg.s	$fs2, $fa5
	b	.LBB1_5
.LBB1_4:
	fld.s	$fs0, $s4, 16
	fld.s	$fs1, $s4, 32
	fld.s	$fs2, $s4, 48
	fld.s	$fa2, $s4, 12
	fld.s	$fa1, $s4, 28
	fld.s	$fa0, $s4, 44
.LBB1_5:
	fst.s	$fs0, $s0, 600
	fst.s	$fa2, $s0, 604
	fld.s	$fa2, $s3, 0
	fst.s	$fa2, $s0, 608
	st.w	$zero, $s0, 612
	fst.s	$fs1, $s0, 616
	fst.s	$fa1, $s0, 620
	fld.s	$fa1, $s3, 4
	fst.s	$fa1, $s0, 624
	st.w	$zero, $s0, 628
	fst.s	$fs2, $s0, 632
	fst.s	$fa0, $s0, 636
	fld.s	$fa0, $s3, 8
	fst.s	$fa0, $s0, 640
	st.w	$zero, $s0, 644
	fld.s	$fa0, $s3, 4
	fld.s	$fs5, $s1, 8
	fld.s	$fs3, $s1, 4
	fld.s	$fs4, $s1, 0
	fld.s	$fa4, $s3, 0
	fld.s	$fa1, $s3, 8
	fld.s	$fa3, $a0, %pc_lo12(.LCPI1_1)
	fmul.s	$fa2, $fa0, $fs3
	fmadd.s	$fa2, $fa4, $fs4, $fa2
	fmadd.s	$fa2, $fa1, $fs5, $fa2
	fcmp.cule.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB1_8
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI1_2)
	fabs.s	$fa3, $fa1
	fcmp.cule.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB1_10
# %bb.7:
	fmul.s	$fa2, $fa1, $fa1
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa3, $fa2
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa3, $fa1
	movgr2fr.w	$fa2, $zero
	fmul.s	$fa3, $fa0, $fa3
	fmov.s	$fa0, $fa2
	b	.LBB1_11
.LBB1_8:
	fneg.s	$fa3, $fs3
	fmul.s	$fa3, $fa1, $fa3
	fmadd.s	$fa5, $fa0, $fs5, $fa3
	fneg.s	$fa3, $fs5
	fmul.s	$fa3, $fa4, $fa3
	fmadd.s	$fs7, $fa1, $fs4, $fa3
	fneg.s	$fa1, $fs4
	fmul.s	$fa3, $fa0, $fa1
	vldi	$vr0, -1168
	fadd.s	$fa0, $fa2, $fa0
	fadd.s	$fa1, $fa0, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fmadd.s	$fs6, $fa4, $fs3, $fa3
	bceqz	$fcc0, .LBB1_12
.LBB1_9:                                # %.split
	frecip.s	$fa3, $fa0
	fmul.s	$fa2, $fa5, $fa3
	fmul.s	$fa1, $fs7, $fa3
	fmul.s	$fa3, $fs6, $fa3
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa0, $fa4
	b	.LBB1_11
.LBB1_10:
	fmul.s	$fa1, $fa0, $fa0
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	frsqrt.s	$fa1, $fa1
	fneg.s	$fa0, $fa0
	fmul.s	$fa2, $fa1, $fa0
	movgr2fr.w	$fa3, $zero
	fmul.s	$fa1, $fa4, $fa1
	fmov.s	$fa0, $fa3
.LBB1_11:
	fmul.s	$fa4, $fs2, $fa1
	fmadd.s	$fa4, $fa0, $fs0, $fa4
	fneg.s	$fa5, $fa3
	fmadd.s	$fa4, $fa5, $fs1, $fa4
	fmul.s	$fa6, $fs0, $fa3
	fmadd.s	$fa6, $fa0, $fs1, $fa6
	fneg.s	$fa7, $fa2
	fmadd.s	$fa6, $fa7, $fs2, $fa6
	fmul.s	$ft0, $fs1, $fa2
	fmadd.s	$ft0, $fa0, $fs2, $ft0
	fneg.s	$ft1, $fa1
	fmadd.s	$ft0, $ft1, $fs0, $ft0
	fneg.s	$ft2, $fs1
	fmul.s	$ft2, $fa1, $ft2
	fmadd.s	$ft2, $fa7, $fs0, $ft2
	fmadd.s	$ft2, $fa5, $fs2, $ft2
	fmul.s	$ft3, $fa0, $fa4
	fmadd.s	$ft3, $ft2, $fa7, $ft3
	fmadd.s	$ft3, $fa6, $fa5, $ft3
	fmadd.s	$ft4, $ft0, $fa1, $ft3
	fmul.s	$ft5, $fa0, $fa6
	fmadd.s	$ft5, $ft2, $ft1, $ft5
	fmadd.s	$fa7, $ft0, $fa7, $ft5
	fmadd.s	$ft5, $fa4, $fa3, $fa7
	fmul.s	$fa0, $fa0, $ft0
	fmadd.s	$fa0, $ft2, $fa5, $fa0
	fmadd.s	$fa0, $fa4, $ft1, $fa0
	fmadd.s	$fa5, $fa6, $fa2, $fa0
	vld	$vr9, $s2, 0
	fnmadd.s	$fa3, $fa4, $fa3, $fa7
	fmul.s	$fa3, $fs5, $fa3
	fmadd.s	$fa3, $fs3, $fa5, $fa3
	vst	$vr9, $s0, 712
	fst.s	$ft4, $s0, 664
	fst.s	$fa3, $s0, 668
	fld.s	$fa3, $s1, 0
	fnmadd.s	$fa0, $fa6, $fa2, $fa0
	fmul.s	$fa0, $fs4, $fa0
	fmadd.s	$fa0, $fs5, $ft4, $fa0
	fst.s	$fa3, $s0, 672
	st.w	$zero, $s0, 676
	fst.s	$ft5, $s0, 680
	fst.s	$fa0, $s0, 684
	fld.s	$fa0, $s1, 4
	fnmadd.s	$fa1, $ft0, $fa1, $ft3
	fmul.s	$fa1, $fs3, $fa1
	fmadd.s	$fa1, $fs4, $ft5, $fa1
	fst.s	$fa0, $s0, 688
	st.w	$zero, $s0, 692
	fst.s	$fa5, $s0, 696
	fst.s	$fa1, $s0, 700
	fld.s	$fa0, $s1, 8
	fst.s	$fa0, $s0, 704
	st.w	$zero, $s0, 708
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_3)
	lu12i.w	$a0, -264192
	lu32i.d	$a0, 0
	st.w	$a0, $s0, 752
	vst	$vr0, $s0, 736
	st.b	$zero, $s0, 782
	vldi	$vr0, -1040
	vldi	$vr1, -1168
	movgr2cf	$fcc0, $fp
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $s0, 776
	fld.d	$fs7, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
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
.LBB1_12:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	fst.s	$fa5, $sp, 12                   # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	fld.s	$fa5, $sp, 12                   # 4-byte Folded Reload
	b	.LBB1_9
.Lfunc_end1:
	.size	_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b, .Lfunc_end1-_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b
.LCPI2_0:
	.word	0x3f3504f3                      # float 0.707106769
.LCPI2_1:
	.word	0xbf7ffffe                      # float -0.99999988
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_2:
	.word	0x3f666666                      # float 0.899999976
	.word	0x3e99999a                      # float 0.300000012
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.text
	.globl	_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b
	.p2align	5
	.type	_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b,@function
_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b: # @_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b
	.cfi_startproc
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 48                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	.cfi_offset 58, -72
	.cfi_offset 59, -80
	.cfi_offset 60, -88
	.cfi_offset 61, -96
	.cfi_offset 62, -104
	.cfi_offset 63, -112
	move	$fp, $a4
	move	$s3, $a3
	move	$s2, $a2
	move	$s1, $a1
	move	$s0, $a0
	ori	$a1, $zero, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV17btHingeConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV17btHingeConstraint+16)
	st.h	$zero, $s0, 780
	fld.s	$fa1, $s3, 8
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI2_0)
	st.d	$a0, $s0, 0
	st.b	$zero, $s0, 783
	fabs.s	$fa2, $fa1
	fcmp.cule.s	$fcc0, $fa2, $fa0
	st.b	$fp, $s0, 784
	bcnez	$fcc0, .LBB2_2
# %bb.1:
	fld.s	$fa2, $s3, 4
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa4, $fa3
	fneg.s	$fa1, $fa1
	fld.s	$fa5, $s3, 0
	fmul.s	$fs0, $fa4, $fa1
	fmul.s	$fs2, $fa2, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fneg.s	$fa1, $fa5
	fmul.s	$fa2, $fs2, $fa1
	fmul.s	$fa1, $fa5, $fs0
	movgr2fr.w	$fs1, $zero
	b	.LBB2_3
.LBB2_2:
	fld.s	$fa2, $s3, 4
	fld.s	$fa3, $s3, 0
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa5, $fa4
	fneg.s	$fa2, $fa2
	fmul.s	$fs1, $fa5, $fa2
	fmul.s	$fs0, $fa3, $fa5
	fneg.s	$fa2, $fa1
	fmul.s	$fa3, $fs0, $fa2
	fmul.s	$fa2, $fa1, $fs1
	fmul.s	$fa1, $fa4, $fa5
	movgr2fr.w	$fs2, $zero
.LBB2_3:
	vld	$vr4, $s2, 0
	vst	$vr4, $s0, 648
	fst.s	$fs1, $s0, 600
	fst.s	$fa3, $s0, 604
	fld.s	$fa3, $s3, 0
	fst.s	$fa3, $s0, 608
	st.w	$zero, $s0, 612
	fst.s	$fs0, $s0, 616
	fst.s	$fa2, $s0, 620
	fld.s	$fa2, $s3, 4
	fst.s	$fa2, $s0, 624
	st.w	$zero, $s0, 628
	fst.s	$fs2, $s0, 632
	fst.s	$fa1, $s0, 636
	fld.s	$fa1, $s3, 8
	fst.s	$fa1, $s0, 640
	st.w	$zero, $s0, 644
	fld.s	$ft6, $s1, 12
	fld.s	$fa1, $s3, 4
	fld.s	$ft7, $s1, 8
	fld.s	$fa2, $s3, 0
	fmul.s	$fa4, $ft6, $fa1
	fld.s	$ft12, $s1, 16
	fld.s	$fa3, $s3, 8
	fld.s	$ft9, $s1, 28
	fld.s	$ft8, $s1, 24
	fmadd.s	$fa4, $ft7, $fa2, $fa4
	fmadd.s	$fs3, $ft12, $fa3, $fa4
	fmul.s	$fa4, $fa1, $ft9
	fmadd.s	$fa4, $ft8, $fa2, $fa4
	fld.s	$ft14, $s1, 32
	fld.s	$ft11, $s1, 44
	fld.s	$ft10, $s1, 40
	fld.s	$ft13, $s1, 48
	fmadd.s	$fs5, $ft14, $fa3, $fa4
	fmul.s	$fa4, $fa1, $ft11
	fmadd.s	$fa4, $ft10, $fa2, $fa4
	fmadd.s	$fs4, $ft13, $fa3, $fa4
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.s	$fa5, $a0, %pc_lo12(.LCPI2_1)
	fmul.s	$fa4, $fa1, $fs5
	fmadd.s	$fa4, $fa2, $fs3, $fa4
	fmadd.s	$fa4, $fa3, $fs4, $fa4
	fcmp.cule.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB2_6
# %bb.4:
	fabs.s	$fa4, $fa3
	fcmp.cule.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB2_8
# %bb.5:
	fmul.s	$fa0, $fa3, $fa3
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	frsqrt.s	$fa0, $fa0
	fneg.s	$fa2, $fa3
	fmul.s	$fa2, $fa0, $fa2
	movgr2fr.w	$fa3, $zero
	fmul.s	$fa1, $fa1, $fa0
	fmov.s	$fa0, $fa3
	b	.LBB2_9
.LBB2_6:
	fneg.s	$fa0, $fs5
	fmul.s	$fa0, $fa3, $fa0
	fmadd.s	$fa5, $fa1, $fs4, $fa0
	fneg.s	$fa0, $fs4
	fmul.s	$fa0, $fa2, $fa0
	fmadd.s	$fs6, $fa3, $fs3, $fa0
	fneg.s	$fa0, $fs3
	fmul.s	$fa3, $fa1, $fa0
	vldi	$vr0, -1168
	fadd.s	$fa0, $fa4, $fa0
	fadd.s	$fa1, $fa0, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fmadd.s	$fs7, $fa2, $fs5, $fa3
	bceqz	$fcc0, .LBB2_10
.LBB2_7:                                # %.split
	frecip.s	$fa1, $fa0
	fmul.s	$fa3, $fa5, $fa1
	fmul.s	$fa2, $fs6, $fa1
	fmul.s	$fa1, $fs7, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa0, $fa4
	b	.LBB2_9
.LBB2_8:
	fmul.s	$fa0, $fa1, $fa1
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	frsqrt.s	$fa0, $fa0
	fneg.s	$fa1, $fa1
	fmul.s	$fa3, $fa0, $fa1
	movgr2fr.w	$fa1, $zero
	fmul.s	$fa2, $fa2, $fa0
	fmov.s	$fa0, $fa1
.LBB2_9:
	fmul.s	$fa4, $fs2, $fa2
	fmadd.s	$fa4, $fa0, $fs1, $fa4
	fneg.s	$fa5, $fa1
	fmadd.s	$fa4, $fa5, $fs0, $fa4
	fmul.s	$fa6, $fs1, $fa1
	fmadd.s	$fa6, $fa0, $fs0, $fa6
	fneg.s	$fa7, $fa3
	fmadd.s	$fa6, $fa7, $fs2, $fa6
	fmul.s	$ft0, $fs0, $fa3
	fmadd.s	$ft0, $fa0, $fs2, $ft0
	fneg.s	$ft1, $fa2
	fmadd.s	$ft0, $ft1, $fs1, $ft0
	fneg.s	$ft2, $fs0
	fmul.s	$ft2, $fa2, $ft2
	fmadd.s	$ft2, $fa7, $fs1, $ft2
	fmadd.s	$ft2, $fa5, $fs2, $ft2
	fmul.s	$ft3, $fa0, $fa4
	fmadd.s	$ft3, $ft2, $fa7, $ft3
	fmadd.s	$ft3, $fa6, $fa5, $ft3
	fmadd.s	$ft4, $ft0, $fa2, $ft3
	fmul.s	$ft5, $fa0, $fa6
	fmadd.s	$ft5, $ft2, $ft1, $ft5
	fmadd.s	$fa7, $ft0, $fa7, $ft5
	fmadd.s	$ft5, $fa4, $fa1, $fa7
	fmul.s	$fa0, $fa0, $ft0
	fmadd.s	$fa0, $ft2, $fa5, $fa0
	fmadd.s	$fa0, $fa4, $ft1, $fa0
	fmadd.s	$fa5, $fa6, $fa3, $fa0
	fnmadd.s	$fa1, $fa4, $fa1, $fa7
	fmul.s	$fa1, $fs4, $fa1
	fmadd.s	$fa1, $fs5, $fa5, $fa1
	fnmadd.s	$fa0, $fa6, $fa3, $fa0
	fmul.s	$fa0, $fs3, $fa0
	fmadd.s	$fa0, $fs4, $ft4, $fa0
	fnmadd.s	$fa2, $ft0, $fa2, $ft3
	fmul.s	$fa2, $fs5, $fa2
	fmadd.s	$fa2, $fs3, $ft5, $fa2
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s2, 0
	fld.s	$fa6, $s2, 8
	fld.s	$fa7, $s1, 56
	fmul.s	$ft0, $ft6, $fa3
	fmadd.s	$ft0, $ft7, $fa4, $ft0
	fmadd.s	$ft0, $ft12, $fa6, $ft0
	fadd.s	$fa7, $fa7, $ft0
	fld.s	$ft0, $s1, 60
	fmul.s	$ft1, $ft9, $fa3
	fmadd.s	$ft1, $ft8, $fa4, $ft1
	fmadd.s	$ft1, $ft14, $fa6, $ft1
	fadd.s	$ft0, $ft0, $ft1
	fld.s	$ft1, $s1, 64
	fmul.s	$fa3, $ft11, $fa3
	fmadd.s	$fa3, $ft10, $fa4, $fa3
	fmadd.s	$fa3, $ft13, $fa6, $fa3
	fadd.s	$fa3, $fa3, $ft1
	movfr2gr.s	$a0, $fa7
	movfr2gr.s	$a1, $ft0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 712
	st.d	$a1, $s0, 720
	fst.s	$ft4, $s0, 664
	fst.s	$fa1, $s0, 668
	fst.s	$fs3, $s0, 672
	st.w	$zero, $s0, 676
	fst.s	$ft5, $s0, 680
	fst.s	$fa0, $s0, 684
	fst.s	$fs5, $s0, 688
	st.w	$zero, $s0, 692
	fst.s	$fa5, $s0, 696
	fst.s	$fa2, $s0, 700
	fst.s	$fs4, $s0, 704
	st.w	$zero, $s0, 708
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	lu12i.w	$a0, -264192
	lu32i.d	$a0, 0
	st.w	$a0, $s0, 752
	vst	$vr0, $s0, 736
	st.b	$zero, $s0, 782
	vldi	$vr0, -1040
	vldi	$vr1, -1168
	movgr2cf	$fcc0, $fp
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $s0, 776
	fld.d	$fs7, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB2_10:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	fst.s	$ft6, $sp, 44                   # 4-byte Folded Spill
	fst.s	$ft7, $sp, 40                   # 4-byte Folded Spill
	fst.s	$ft8, $sp, 36                   # 4-byte Folded Spill
	fst.s	$ft9, $sp, 32                   # 4-byte Folded Spill
	fst.s	$ft10, $sp, 28                  # 4-byte Folded Spill
	fst.s	$ft11, $sp, 24                  # 4-byte Folded Spill
	fst.s	$ft12, $sp, 20                  # 4-byte Folded Spill
	fst.s	$ft13, $sp, 16                  # 4-byte Folded Spill
	fst.s	$ft14, $sp, 12                  # 4-byte Folded Spill
	fst.s	$fa5, $sp, 8                    # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	fld.s	$fa5, $sp, 8                    # 4-byte Folded Reload
	fld.s	$ft14, $sp, 12                  # 4-byte Folded Reload
	fld.s	$ft13, $sp, 16                  # 4-byte Folded Reload
	fld.s	$ft12, $sp, 20                  # 4-byte Folded Reload
	fld.s	$ft11, $sp, 24                  # 4-byte Folded Reload
	fld.s	$ft10, $sp, 28                  # 4-byte Folded Reload
	fld.s	$ft9, $sp, 32                   # 4-byte Folded Reload
	fld.s	$ft8, $sp, 36                   # 4-byte Folded Reload
	fld.s	$ft7, $sp, 40                   # 4-byte Folded Reload
	fld.s	$ft6, $sp, 44                   # 4-byte Folded Reload
	b	.LBB2_7
.Lfunc_end2:
	.size	_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b, .Lfunc_end2-_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
.LCPI3_0:
	.word	0x3f666666                      # float 0.899999976
	.word	0x3e99999a                      # float 0.300000012
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.text
	.globl	_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.p2align	5
	.type	_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b,@function
_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b: # @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.cfi_startproc
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$s2, $a0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV17btHingeConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV17btHingeConstraint+16)
	st.d	$a0, $s2, 0
	vld	$vr0, $s1, 0
	vst	$vr0, $s2, 600
	vld	$vr0, $s1, 16
	vst	$vr0, $s2, 616
	vld	$vr0, $s1, 32
	vst	$vr0, $s2, 632
	vld	$vr0, $s1, 48
	vst	$vr0, $s2, 648
	vld	$vr0, $s0, 0
	vst	$vr0, $s2, 664
	vld	$vr0, $s0, 16
	vst	$vr0, $s2, 680
	vld	$vr0, $s0, 32
	vst	$vr0, $s2, 696
	vld	$vr0, $s0, 48
	vst	$vr0, $s2, 712
	st.w	$zero, $s2, 780
	st.b	$fp, $s2, 784
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_0)
	lu12i.w	$a0, -264192
	lu32i.d	$a0, 0
	st.w	$a0, $s2, 752
	vst	$vr0, $s2, 736
	vldi	$vr0, -1040
	vldi	$vr1, -1168
	movgr2cf	$fcc0, $fp
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $s2, 776
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b, .Lfunc_end3-_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb
.LCPI4_0:
	.word	0x3f666666                      # float 0.899999976
	.word	0x3e99999a                      # float 0.300000012
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.text
	.globl	_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb
	.p2align	5
	.type	_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb,@function
_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb: # @_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb
	.cfi_startproc
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a3
	move	$s1, $a2
	move	$a2, $a1
	move	$s0, $a0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV17btHingeConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV17btHingeConstraint+16)
	st.d	$a0, $s0, 0
	vld	$vr0, $s1, 0
	vst	$vr0, $s0, 600
	vld	$vr0, $s1, 16
	vst	$vr0, $s0, 616
	vld	$vr0, $s1, 32
	vst	$vr0, $s0, 632
	vld	$vr0, $s1, 48
	vst	$vr0, $s0, 648
	vld	$vr0, $s1, 0
	vst	$vr0, $s0, 664
	vld	$vr0, $s1, 16
	vst	$vr0, $s0, 680
	vld	$vr0, $s1, 32
	vst	$vr0, $s0, 696
	vld	$vr0, $s1, 48
	ld.d	$a0, $s0, 24
	vst	$vr0, $s0, 712
	st.h	$zero, $s0, 780
	fld.s	$fa0, $a0, 8
	fld.s	$fa1, $a0, 12
	fld.s	$fa2, $s0, 652
	fld.s	$fa3, $s0, 648
	fld.s	$fa4, $a0, 16
	fld.s	$fa5, $s0, 656
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fld.s	$fa1, $a0, 56
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fld.s	$fa4, $a0, 28
	fld.s	$fa6, $a0, 24
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a0, 32
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa4, $fa6, $fa3, $fa4
	fld.s	$fa6, $a0, 44
	fmadd.s	$fa1, $fa1, $fa5, $fa4
	fld.s	$fa4, $a0, 40
	st.b	$zero, $s0, 783
	fmul.s	$fa2, $fa2, $fa6
	fld.s	$fa6, $a0, 60
	fmadd.s	$fa2, $fa4, $fa3, $fa2
	fld.s	$fa3, $a0, 48
	fld.s	$fa4, $a0, 64
	st.b	$fp, $s0, 784
	fadd.s	$fa1, $fa6, $fa1
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fadd.s	$fa2, $fa4, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 712
	st.d	$a1, $s0, 720
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI4_0)
	lu12i.w	$a0, -264192
	lu32i.d	$a0, 0
	st.w	$a0, $s0, 752
	vst	$vr0, $s0, 736
	st.b	$zero, $s0, 782
	vldi	$vr0, -1040
	vldi	$vr1, -1168
	movgr2cf	$fcc0, $fp
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $s0, 776
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb, .Lfunc_end4-_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN17btHingeConstraint13buildJacobianEv
.LCPI5_0:
	.word	0x34000000                      # float 1.1920929E-7
.LCPI5_2:
	.word	0x3f3504f3                      # float 0.707106769
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_1:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN17btHingeConstraint13buildJacobianEv
	.p2align	5
	.type	_ZN17btHingeConstraint13buildJacobianEv,@function
_ZN17btHingeConstraint13buildJacobianEv: # @_ZN17btHingeConstraint13buildJacobianEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 80                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	.cfi_offset 57, -32
	.cfi_offset 58, -40
	.cfi_offset 59, -48
	.cfi_offset 60, -56
	.cfi_offset 61, -64
	.cfi_offset 62, -72
	.cfi_offset 63, -80
	move	$fp, $a0
	ld.bu	$a0, $a0, 783
	beqz	$a0, .LBB5_19
# %bb.1:
	ld.bu	$a1, $fp, 780
	st.w	$zero, $fp, 40
	st.w	$zero, $fp, 788
	pcalau12i	$a0, %pc_hi20(.LCPI5_2)
	bnez	$a1, .LBB5_9
# %bb.2:
	ld.d	$a1, $fp, 24
	fld.s	$fa0, $a1, 8
	fld.s	$fa2, $fp, 648
	fld.s	$fa1, $a1, 12
	fld.s	$fa3, $fp, 652
	fld.s	$fa4, $a1, 16
	fld.s	$fa5, $fp, 656
	fld.s	$fa6, $a1, 56
	fld.s	$fa7, $a1, 24
	fld.s	$ft0, $a1, 28
	fld.s	$ft1, $a1, 32
	fld.s	$ft2, $a1, 60
	fld.s	$ft3, $a1, 40
	ld.d	$a2, $fp, 32
	fld.s	$ft4, $a1, 44
	fld.s	$ft5, $a1, 48
	fld.s	$ft6, $a1, 64
	fld.s	$ft7, $a2, 8
	fld.s	$ft8, $fp, 712
	fld.s	$ft9, $a2, 12
	fld.s	$ft10, $fp, 716
	fld.s	$ft11, $a2, 16
	fld.s	$ft12, $fp, 720
	fld.s	$ft13, $a2, 56
	fld.s	$ft14, $a2, 24
	fld.s	$ft15, $a2, 28
	fld.s	$fs0, $a2, 32
	fld.s	$fs1, $a2, 60
	fld.s	$fs2, $a2, 40
	fld.s	$fs3, $a2, 44
	fld.s	$fs4, $a2, 48
	fld.s	$fs5, $a2, 64
	fmul.s	$fa1, $fa1, $fa3
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fadd.s	$fa0, $fa0, $fa6
	fmul.s	$fa1, $fa3, $ft0
	fmadd.s	$fa1, $fa7, $fa2, $fa1
	fmadd.s	$fa1, $ft1, $fa5, $fa1
	fadd.s	$fa1, $ft2, $fa1
	fmul.s	$fa3, $fa3, $ft4
	fmadd.s	$fa2, $ft3, $fa2, $fa3
	fmadd.s	$fa2, $ft5, $fa5, $fa2
	fadd.s	$fa2, $ft6, $fa2
	fmul.s	$fa3, $ft9, $ft10
	fmadd.s	$fa3, $ft7, $ft8, $fa3
	fmadd.s	$fa3, $ft11, $ft12, $fa3
	fadd.s	$ft13, $fa3, $ft13
	fmul.s	$fa4, $ft10, $ft15
	fmadd.s	$fa4, $ft14, $ft8, $fa4
	fmadd.s	$fa4, $fs0, $ft12, $fa4
	fadd.s	$ft14, $fs1, $fa4
	fmul.s	$fa5, $ft10, $fs3
	fmadd.s	$fa5, $fs2, $ft8, $fa5
	fmadd.s	$fa5, $fs4, $ft12, $fa5
	fadd.s	$ft15, $fs5, $fa5
	fsub.s	$fa6, $ft13, $fa0
	fsub.s	$fa7, $ft14, $fa1
	fsub.s	$ft1, $ft15, $fa2
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	fld.s	$ft2, $a3, %pc_lo12(.LCPI5_0)
	fmul.s	$ft0, $fa7, $fa7
	fmadd.s	$ft0, $fa6, $fa6, $ft0
	fmadd.s	$ft0, $ft1, $ft1, $ft0
	fcmp.cule.s	$fcc0, $ft0, $ft2
	bcnez	$fcc0, .LBB5_5
# %bb.3:
	frsqrt.s	$ft2, $ft0
	fmul.s	$ft0, $fa6, $ft2
	fmul.s	$fa7, $fa7, $ft2
	fmul.s	$ft1, $ft1, $ft2
	movfr2gr.s	$a3, $ft0
	movfr2gr.s	$a4, $fa7
	bstrins.d	$a3, $a4, 63, 32
	movfr2gr.s	$a4, $ft1
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a3, $sp, 32
	st.d	$a4, $sp, 40
	fld.s	$fa6, $a0, %pc_lo12(.LCPI5_2)
	fabs.s	$ft2, $ft1
	fcmp.cule.s	$fcc0, $ft2, $fa6
	bceqz	$fcc0, .LBB5_6
.LBB5_4:
	fmul.s	$fa6, $fa7, $fa7
	fmadd.s	$ft2, $ft0, $ft0, $fa6
	frsqrt.s	$ft4, $ft2
	fneg.s	$fa6, $fa7
	fmul.s	$ft3, $ft4, $fa6
	fmul.s	$fa6, $ft0, $ft4
	fneg.s	$fa7, $ft1
	fmul.s	$fa7, $fa6, $fa7
	fmul.s	$ft1, $ft1, $ft3
	fmul.s	$ft0, $ft2, $ft4
	movgr2fr.w	$ft2, $zero
	b	.LBB5_7
.LBB5_5:
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	vld	$vr6, $a3, %pc_lo12(.LCPI5_1)
	vst	$vr6, $sp, 32
	movgr2fr.w	$fa7, $zero
	vldi	$vr8, -1168
	fmov.s	$ft1, $fa7
	fld.s	$fa6, $a0, %pc_lo12(.LCPI5_2)
	fabs.s	$ft2, $ft1
	fcmp.cule.s	$fcc0, $ft2, $fa6
	bcnez	$fcc0, .LBB5_4
.LBB5_6:
	fmul.s	$fa6, $ft1, $ft1
	fmadd.s	$ft3, $fa7, $fa7, $fa6
	frsqrt.s	$ft4, $ft3
	fneg.s	$fa6, $ft1
	fmul.s	$fa6, $ft4, $fa6
	fmul.s	$ft2, $fa7, $ft4
	fmul.s	$fa7, $ft3, $ft4
	fneg.s	$ft1, $ft0
	fmul.s	$ft1, $ft2, $ft1
	fmul.s	$ft0, $fa6, $ft0
	movgr2fr.w	$ft3, $zero
.LBB5_7:                                # %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
	move	$a3, $zero
	fst.s	$ft3, $sp, 48
	fst.s	$fa6, $sp, 52
	fst.s	$ft2, $sp, 56
	st.w	$zero, $sp, 60
	fst.s	$fa7, $sp, 64
	fst.s	$ft1, $sp, 68
	fst.s	$ft0, $sp, 72
	st.w	$zero, $sp, 76
	addi.d	$a4, $sp, 32
	ori	$a5, $zero, 252
	fst.s	$fa0, $sp, 8                    # 4-byte Folded Spill
	.p2align	4, , 16
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	add.d	$a6, $fp, $a3
	fld.s	$ft9, $a1, 8
	fld.s	$ft11, $a1, 24
	fld.s	$ft8, $a1, 40
	fld.s	$ft12, $a1, 12
	fmov.s	$ft2, $ft13
	fld.s	$ft13, $a1, 28
	fmov.s	$ft1, $ft14
	fld.s	$ft14, $a1, 44
	fmov.s	$ft0, $ft15
	fld.s	$ft15, $a1, 16
	fld.s	$fs0, $a1, 32
	fld.s	$fs1, $a1, 48
	fld.s	$fa3, $a2, 8
	fst.s	$fa3, $sp, 12                   # 4-byte Folded Spill
	fld.s	$ft6, $a2, 24
	fld.s	$ft4, $a2, 40
	fld.s	$ft3, $a2, 12
	fld.s	$ft7, $a2, 28
	fld.s	$ft5, $a2, 44
	fld.s	$fa3, $a2, 16
	fst.s	$fa3, $sp, 20                   # 4-byte Folded Spill
	fld.s	$fa6, $a1, 56
	fld.s	$fa7, $a1, 60
	fld.s	$ft10, $a2, 32
	fld.s	$fa3, $a2, 48
	fst.s	$fa3, $sp, 16                   # 4-byte Folded Spill
	fsub.s	$fs2, $fa0, $fa6
	fsub.s	$fs3, $fa1, $fa7
	fld.s	$fs4, $a1, 64
	fld.s	$fs5, $a2, 56
	fld.s	$fs6, $a2, 60
	vld	$vr31, $a4, 0
	fld.s	$fa0, $a2, 64
	fld.s	$fa3, $a1, 360
	fst.s	$fa3, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa3, $a2, 360
	fst.s	$fa3, $sp, 24                   # 4-byte Folded Spill
	vst	$vr31, $a6, 96
	fld.s	$fs7, $a6, 100
	fmov.s	$fa7, $fa1
	fld.s	$fa1, $a6, 104
	fsub.s	$fs4, $fa2, $fs4
	fmov.s	$fa6, $fa2
	fld.s	$fa2, $a6, 96
	fneg.s	$fa3, $fs7
	fneg.s	$fa4, $fa1
	fmul.s	$fa5, $fs2, $fa4
	fmadd.s	$fa5, $fs4, $fa2, $fa5
	fmul.s	$fs4, $fs4, $fa3
	fmadd.s	$fs4, $fs3, $fa1, $fs4
	fmul.s	$ft11, $ft11, $fa5
	fmadd.s	$ft9, $ft9, $fs4, $ft11
	fmul.s	$ft11, $ft13, $fa5
	fmadd.s	$ft11, $ft12, $fs4, $ft11
	fmul.s	$fa5, $fs0, $fa5
	fmadd.s	$fa5, $ft15, $fs4, $fa5
	fmov.s	$ft15, $ft0
	fneg.s	$ft12, $fa2
	fmul.s	$ft13, $fs3, $ft12
	fmadd.s	$ft13, $fs2, $fs7, $ft13
	fmadd.s	$ft8, $ft8, $ft13, $ft9
	fmadd.s	$ft11, $ft14, $ft13, $ft11
	fmov.s	$ft14, $ft1
	fmadd.s	$ft9, $fs1, $ft13, $fa5
	fmov.s	$ft13, $ft2
	fsub.s	$fa5, $ft2, $fs5
	fsub.s	$fa0, $ft0, $fa0
	fmul.s	$fa1, $fa5, $fa1
	fmadd.s	$fa1, $fa0, $ft12, $fa1
	fmul.s	$fa0, $fa0, $fs7
	fsub.s	$ft12, $ft1, $fs6
	fmadd.s	$fa0, $ft12, $fa4, $fa0
	fmul.s	$fa2, $ft12, $fa2
	fmadd.s	$fa2, $fa5, $fa3, $fa2
	fmul.s	$fa3, $ft6, $fa1
	fld.s	$fa4, $sp, 12                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $ft4, $fa2, $fa3
	fmul.s	$fa4, $ft7, $fa1
	fmadd.s	$fa4, $ft3, $fa0, $fa4
	fmadd.s	$fa4, $ft5, $fa2, $fa4
	fmul.s	$fa1, $ft10, $fa1
	movfr2gr.s	$a7, $ft8
	movfr2gr.s	$t0, $ft11
	bstrins.d	$a7, $t0, 63, 32
	movfr2gr.s	$t0, $ft9
	bstrpick.d	$t0, $t0, 31, 0
	st.d	$a7, $a6, 112
	st.d	$t0, $a6, 120
	fld.s	$fa5, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fld.s	$fa1, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	movfr2gr.s	$a7, $fa3
	movfr2gr.s	$t0, $fa4
	bstrins.d	$a7, $t0, 63, 32
	movfr2gr.s	$t0, $fa0
	bstrpick.d	$t0, $t0, 31, 0
	st.d	$a7, $a6, 128
	st.d	$t0, $a6, 136
	fld.s	$fa1, $a1, 428
	fld.s	$fa2, $a1, 432
	fld.s	$fa5, $a1, 436
	fmul.s	$fa1, $ft8, $fa1
	fmul.s	$fa2, $ft11, $fa2
	fmul.s	$fa5, $ft9, $fa5
	movfr2gr.s	$a7, $fa1
	movfr2gr.s	$t0, $fa2
	bstrins.d	$a7, $t0, 63, 32
	movfr2gr.s	$t0, $fa5
	bstrpick.d	$t0, $t0, 31, 0
	st.d	$a7, $a6, 144
	st.d	$t0, $a6, 152
	fld.s	$ft0, $a2, 428
	fmul.s	$fa2, $ft11, $fa2
	fld.s	$ft1, $a2, 432
	fmadd.s	$fa1, $fa1, $ft8, $fa2
	fmadd.s	$fa1, $fa5, $ft9, $fa1
	fmul.s	$fa2, $fa3, $ft0
	fmul.s	$fa5, $fa4, $ft1
	fld.s	$ft0, $a2, 436
	fmul.s	$fa4, $fa4, $fa5
	fmadd.s	$fa3, $fa2, $fa3, $fa4
	movfr2gr.s	$a7, $fa2
	movfr2gr.s	$t0, $fa5
	fmul.s	$fa2, $fa0, $ft0
	fmadd.s	$fa0, $fa2, $fa0, $fa3
	movfr2gr.s	$t1, $fa2
	fmov.s	$fa2, $fa6
	fld.s	$fa3, $sp, 28                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa3, $fa1
	fld.s	$fa3, $sp, 24                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa3, $fa1
	fadd.s	$fa0, $fa1, $fa0
	fmov.s	$fa1, $fa7
	fst.s	$fa0, $a6, 176
	fld.s	$fa0, $sp, 8                    # 4-byte Folded Reload
	bstrins.d	$a7, $t0, 63, 32
	bstrpick.d	$t0, $t1, 31, 0
	st.d	$a7, $a6, 160
	st.d	$t0, $a6, 168
	addi.d	$a3, $a3, 84
	addi.d	$a4, $a4, 16
	bne	$a3, $a5, .LBB5_8
.LBB5_9:
	fld.s	$fa0, $fp, 640
	fld.s	$fa1, $a0, %pc_lo12(.LCPI5_2)
	fld.s	$fa4, $fp, 608
	fld.s	$fa5, $fp, 624
	fabs.s	$fa2, $fa0
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB5_11
# %bb.10:
	fmul.s	$fa1, $fa0, $fa0
	fmadd.s	$fa1, $fa5, $fa5, $fa1
	frsqrt.s	$fa2, $fa1
	fneg.s	$fa3, $fa0
	fmul.s	$ft8, $fa2, $fa3
	fmul.s	$fa6, $fa5, $fa2
	fmul.s	$ft6, $fa1, $fa2
	fneg.s	$fa1, $fa4
	fmul.s	$ft7, $fa6, $fa1
	fmul.s	$fa7, $fa4, $ft8
	movgr2fr.w	$ft10, $zero
	b	.LBB5_12
.LBB5_11:
	fmul.s	$fa1, $fa5, $fa5
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	frsqrt.s	$fa2, $fa1
	fneg.s	$fa3, $fa5
	fmul.s	$ft10, $fa2, $fa3
	fmul.s	$ft8, $fa4, $fa2
	fneg.s	$fa3, $fa0
	fmul.s	$ft6, $ft8, $fa3
	fmul.s	$ft7, $fa0, $ft10
	fmul.s	$fa7, $fa1, $fa2
	movgr2fr.w	$fa6, $zero
.LBB5_12:                               # %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit95
	ld.d	$a0, $fp, 24
	fld.s	$ft2, $a0, 8
	fld.s	$ft3, $a0, 12
	fld.s	$fa1, $a0, 16
	fld.s	$ft4, $a0, 24
	fld.s	$ft5, $a0, 28
	fld.s	$fa2, $a0, 32
	fld.s	$ft0, $a0, 40
	fld.s	$ft1, $a0, 44
	fld.s	$fa3, $a0, 48
	fmul.s	$ft9, $ft8, $ft3
	fmadd.s	$ft11, $ft2, $ft10, $ft9
	fmadd.s	$ft9, $fa1, $fa6, $ft11
	fmul.s	$ft12, $ft8, $ft5
	ld.d	$a2, $fp, 32
	fmadd.s	$ft12, $ft4, $ft10, $ft12
	fmul.s	$ft8, $ft8, $ft1
	fmadd.s	$ft8, $ft0, $ft10, $ft8
	fld.s	$ft10, $a2, 8
	fld.s	$ft13, $a2, 24
	fld.s	$ft14, $a2, 12
	fld.s	$ft15, $a2, 28
	fnmadd.s	$ft11, $fa1, $fa6, $ft11
	fnmadd.s	$fs0, $fa2, $fa6, $ft12
	fmul.s	$ft13, $ft13, $fs0
	fmadd.s	$ft13, $ft10, $ft11, $ft13
	fld.s	$ft10, $a2, 32
	fmul.s	$ft15, $ft15, $fs0
	fmadd.s	$ft14, $ft14, $ft11, $ft15
	fld.s	$ft15, $a2, 16
	fmadd.s	$ft12, $fa2, $fa6, $ft12
	fmul.s	$ft10, $ft10, $fs0
	fmadd.s	$fs0, $fa3, $fa6, $ft8
	fmadd.s	$ft11, $ft15, $ft11, $ft10
	fmul.s	$ft10, $ft4, $ft12
	fmadd.s	$ft10, $ft2, $ft9, $ft10
	fmul.s	$ft15, $ft5, $ft12
	fmadd.s	$ft15, $ft3, $ft9, $ft15
	fmul.s	$ft12, $fa2, $ft12
	fmadd.s	$ft9, $fa1, $ft9, $ft12
	fld.s	$ft12, $a2, 40
	fmadd.s	$fs1, $ft0, $fs0, $ft10
	fmadd.s	$ft15, $ft1, $fs0, $ft15
	fmadd.s	$ft10, $fa3, $fs0, $ft9
	fld.s	$fs0, $a2, 44
	fnmadd.s	$ft8, $fa3, $fa6, $ft8
	fld.s	$fs2, $a2, 48
	fmadd.s	$ft9, $ft12, $ft8, $ft13
	vrepli.b	$vr6, 0
	vst	$vr6, $fp, 348
	movfr2gr.s	$a1, $fs1
	movfr2gr.s	$a3, $ft15
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $ft10
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 364
	st.d	$a3, $fp, 372
	fmadd.s	$ft13, $fs0, $ft8, $ft14
	fmadd.s	$ft12, $fs2, $ft8, $ft11
	movfr2gr.s	$a1, $ft9
	movfr2gr.s	$a3, $ft13
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $ft12
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 380
	st.d	$a3, $fp, 388
	fld.s	$ft11, $a0, 428
	fld.s	$ft14, $a0, 432
	fmul.s	$ft8, $ft7, $ft3
	fmadd.s	$ft8, $ft2, $ft6, $ft8
	fmul.s	$ft11, $fs1, $ft11
	fmul.s	$ft14, $ft15, $ft14
	fmul.s	$ft15, $ft15, $ft14
	fmadd.s	$ft15, $ft11, $fs1, $ft15
	fmadd.s	$fs0, $fa1, $fa7, $ft8
	movfr2gr.s	$a1, $ft11
	fld.s	$fs1, $a0, 436
	movfr2gr.s	$a3, $ft14
	fmul.s	$ft11, $ft7, $ft5
	fmadd.s	$ft11, $ft4, $ft6, $ft11
	fmul.s	$ft14, $ft10, $fs1
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $ft14
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 396
	st.d	$a3, $fp, 404
	fmadd.s	$ft14, $ft14, $ft10, $ft15
	fld.s	$ft15, $a2, 428
	fld.s	$fs1, $a2, 432
	fmul.s	$ft7, $ft7, $ft1
	fmadd.s	$ft10, $ft0, $ft6, $ft7
	fmul.s	$ft6, $ft9, $ft15
	fmul.s	$ft7, $ft13, $fs1
	fld.s	$ft15, $a2, 436
	fmul.s	$ft13, $ft13, $ft7
	fmadd.s	$ft9, $ft6, $ft9, $ft13
	fmadd.s	$ft13, $fa2, $fa7, $ft11
	movfr2gr.s	$a1, $ft6
	fmadd.s	$fs1, $fa3, $fa7, $ft10
	fmul.s	$ft6, $ft12, $ft15
	movfr2gr.s	$a3, $ft7
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $ft6
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 412
	st.d	$a3, $fp, 420
	fmadd.s	$ft6, $ft6, $ft12, $ft9
	fadd.s	$ft6, $ft14, $ft6
	fst.s	$ft6, $fp, 428
	fld.s	$ft6, $a0, 8
	fld.s	$ft7, $a0, 24
	fld.s	$ft9, $a0, 12
	fld.s	$ft12, $a0, 28
	fld.s	$ft14, $a0, 16
	fmul.s	$ft7, $ft13, $ft7
	fmadd.s	$ft6, $ft6, $fs0, $ft7
	fld.s	$ft7, $a0, 32
	fmul.s	$ft12, $ft13, $ft12
	fmadd.s	$ft9, $ft9, $fs0, $ft12
	fld.s	$ft12, $a0, 40
	fmul.s	$ft7, $ft13, $ft7
	fld.s	$ft13, $a0, 44
	fmadd.s	$ft7, $ft14, $fs0, $ft7
	fld.s	$ft14, $a0, 48
	fld.s	$ft15, $a2, 8
	fmadd.s	$ft6, $ft12, $fs1, $ft6
	fld.s	$ft12, $a2, 24
	fmadd.s	$ft9, $ft13, $fs1, $ft9
	fld.s	$ft13, $a2, 12
	fmadd.s	$ft7, $ft14, $fs1, $ft7
	fld.s	$ft14, $a2, 28
	fld.s	$fs0, $a2, 32
	fnmadd.s	$ft8, $fa1, $fa7, $ft8
	fnmadd.s	$ft11, $fa2, $fa7, $ft11
	fmul.s	$ft12, $ft12, $ft11
	fmadd.s	$ft12, $ft15, $ft8, $ft12
	fld.s	$ft15, $a2, 16
	fmul.s	$ft14, $ft14, $ft11
	fmadd.s	$ft13, $ft13, $ft8, $ft14
	fmul.s	$ft11, $fs0, $ft11
	fld.s	$ft14, $a2, 40
	fmadd.s	$ft8, $ft15, $ft8, $ft11
	fld.s	$ft11, $a2, 44
	fld.s	$ft15, $a2, 48
	fnmadd.s	$fa7, $fa3, $fa7, $ft10
	fmadd.s	$ft10, $ft14, $fa7, $ft12
	fmadd.s	$ft11, $ft11, $fa7, $ft13
	fmadd.s	$ft8, $ft15, $fa7, $ft8
	fmul.s	$fa7, $fa5, $ft3
	fmadd.s	$fa7, $ft2, $fa4, $fa7
	fmul.s	$ft2, $fa5, $ft5
	fmadd.s	$ft2, $ft4, $fa4, $ft2
	vst	$vr6, $fp, 432
	movfr2gr.s	$a1, $ft6
	movfr2gr.s	$a3, $ft9
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $ft7
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 448
	st.d	$a3, $fp, 456
	movfr2gr.s	$a1, $ft10
	movfr2gr.s	$a3, $ft11
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $ft8
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 464
	st.d	$a3, $fp, 472
	fld.s	$ft3, $a0, 432
	fmul.s	$fa5, $fa5, $ft1
	fmadd.s	$fa4, $ft0, $fa4, $fa5
	fld.s	$fa5, $a0, 428
	fmul.s	$ft0, $ft9, $ft3
	fld.s	$ft1, $a0, 436
	movfr2gr.s	$a1, $ft0
	fmul.s	$ft0, $ft9, $ft0
	fmul.s	$fa5, $ft6, $fa5
	fmul.s	$ft1, $ft7, $ft1
	movfr2gr.s	$a3, $fa5
	bstrins.d	$a3, $a1, 63, 32
	movfr2gr.s	$a1, $ft1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a3, $fp, 480
	st.d	$a1, $fp, 488
	fmadd.s	$fa5, $fa5, $ft6, $ft0
	fld.s	$ft0, $a2, 428
	fld.s	$ft3, $a2, 432
	fmadd.s	$fa5, $ft1, $ft7, $fa5
	fmadd.s	$ft1, $fa1, $fa0, $fa7
	fmul.s	$ft0, $ft10, $ft0
	fmul.s	$ft3, $ft11, $ft3
	fld.s	$ft4, $a2, 436
	fmul.s	$ft5, $ft11, $ft3
	fmadd.s	$ft5, $ft0, $ft10, $ft5
	fmadd.s	$ft6, $fa2, $fa0, $ft2
	movfr2gr.s	$a1, $ft0
	fmadd.s	$ft0, $fa3, $fa0, $fa4
	fmul.s	$ft4, $ft8, $ft4
	movfr2gr.s	$a3, $ft3
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $ft4
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 496
	st.d	$a3, $fp, 504
	fmadd.s	$ft3, $ft4, $ft8, $ft5
	fadd.s	$fa5, $fa5, $ft3
	fst.s	$fa5, $fp, 512
	fld.s	$fa5, $a0, 8
	fld.s	$ft3, $a0, 24
	fld.s	$ft4, $a0, 12
	fld.s	$ft5, $a0, 28
	fld.s	$ft7, $a0, 16
	fmul.s	$ft3, $ft6, $ft3
	fmadd.s	$fa5, $fa5, $ft1, $ft3
	fld.s	$ft3, $a0, 32
	fmul.s	$ft5, $ft6, $ft5
	fmadd.s	$ft4, $ft4, $ft1, $ft5
	fld.s	$ft5, $a0, 40
	fmul.s	$ft3, $ft6, $ft3
	fld.s	$ft6, $a0, 44
	fmadd.s	$ft3, $ft7, $ft1, $ft3
	fld.s	$ft7, $a0, 48
	fld.s	$ft8, $a2, 8
	fmadd.s	$fa5, $ft5, $ft0, $fa5
	fld.s	$ft5, $a2, 24
	fmadd.s	$ft1, $ft6, $ft0, $ft4
	fld.s	$ft4, $a2, 40
	fmadd.s	$ft0, $ft7, $ft0, $ft3
	fld.s	$ft3, $a2, 12
	fld.s	$ft6, $a2, 28
	fnmadd.s	$fa1, $fa1, $fa0, $fa7
	fld.s	$fa7, $a2, 44
	fnmadd.s	$fa2, $fa2, $fa0, $ft2
	fld.s	$ft2, $a2, 16
	fnmadd.s	$fa0, $fa3, $fa0, $fa4
	fld.s	$fa3, $a2, 32
	fld.s	$fa4, $a2, 48
	vst	$vr6, $fp, 516
	fmul.s	$fa6, $ft5, $fa2
	fmadd.s	$fa6, $ft8, $fa1, $fa6
	fmadd.s	$fa6, $ft4, $fa0, $fa6
	fmul.s	$ft4, $ft6, $fa2
	fmadd.s	$ft3, $ft3, $fa1, $ft4
	fmadd.s	$fa7, $fa7, $fa0, $ft3
	fmul.s	$fa2, $fa3, $fa2
	movfr2gr.s	$a1, $fa5
	movfr2gr.s	$a3, $ft1
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $ft0
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 532
	st.d	$a3, $fp, 540
	fmadd.s	$fa1, $ft2, $fa1, $fa2
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	movfr2gr.s	$a1, $fa6
	movfr2gr.s	$a3, $fa7
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $fa0
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 548
	st.d	$a3, $fp, 556
	fld.s	$fa1, $a0, 428
	fld.s	$fa2, $a0, 432
	fld.s	$fa3, $a0, 436
	fmul.s	$fa1, $fa5, $fa1
	fmul.s	$fa2, $ft1, $fa2
	fmul.s	$fa3, $ft0, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a3, $fa2
	bstrins.d	$a1, $a3, 63, 32
	movfr2gr.s	$a3, $fa3
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 564
	st.d	$a3, $fp, 572
	fld.s	$fa4, $a2, 428
	fmul.s	$fa2, $ft1, $fa2
	fld.s	$ft1, $a2, 432
	fmadd.s	$fa1, $fa1, $fa5, $fa2
	fmadd.s	$fa1, $fa3, $ft0, $fa1
	fmul.s	$fa2, $fa6, $fa4
	fmul.s	$fa3, $fa7, $ft1
	fld.s	$fa4, $a2, 436
	fmul.s	$fa5, $fa7, $fa3
	fmadd.s	$fa5, $fa2, $fa6, $fa5
	movfr2gr.s	$a3, $fa2
	movfr2gr.s	$a4, $fa3
	fmul.s	$fa2, $fa0, $fa4
	fmadd.s	$fa0, $fa2, $fa0, $fa5
	movfr2gr.s	$a5, $fa2
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $fp, 596
	addi.d	$a1, $a0, 8
	addi.d	$a2, $a2, 8
	bstrins.d	$a3, $a4, 63, 32
	bstrpick.d	$a0, $a5, 31, 0
	st.d	$a3, $fp, 580
	st.d	$a0, $fp, 588
	st.w	$zero, $fp, 768
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 748
	fld.s	$fa2, $fp, 752
	fst.s	$fa0, $fp, 772
	st.d	$zero, $fp, 760
	fcmp.cult.s	$fcc0, $fa2, $fa1
	st.b	$zero, $fp, 782
	bcnez	$fcc0, .LBB5_18
# %bb.13:
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 748
	fcmp.cle.s	$fcc0, $fa0, $fa1
	fst.s	$fa0, $fp, 772
	bcnez	$fcc0, .LBB5_16
# %bb.14:
	fld.s	$fa1, $fp, 752
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_18
# %bb.15:
	vldi	$vr2, -1040
	b	.LBB5_17
.LBB5_16:
	vldi	$vr2, -1168
.LBB5_17:                               # %.sink.split.i
	fsub.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $fp, 764
	fst.s	$fa2, $fp, 760
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 782
.LBB5_18:                               # %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit
	ld.d	$a0, $fp, 24
	fld.s	$fa2, $fp, 608
	fld.s	$fa3, $fp, 624
	fld.s	$fa0, $a0, 12
	fld.s	$fa1, $a0, 8
	fld.s	$fa4, $fp, 640
	fld.s	$fa5, $a0, 16
	fmul.s	$fa0, $fa3, $fa0
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fld.s	$fa1, $a0, 28
	fmadd.s	$fa0, $fa5, $fa4, $fa0
	fld.s	$fa5, $a0, 24
	fld.s	$fa6, $a0, 32
	fmul.s	$fa1, $fa3, $fa1
	fld.s	$fa7, $a0, 44
	fmadd.s	$fa1, $fa5, $fa2, $fa1
	fmadd.s	$fa1, $fa6, $fa4, $fa1
	fld.s	$fa5, $a0, 40
	fmul.s	$fa3, $fa3, $fa7
	fld.s	$fa6, $a0, 48
	fld.s	$fa7, $a0, 296
	fmadd.s	$fa2, $fa5, $fa2, $fa3
	fld.s	$fa3, $a0, 280
	fmadd.s	$fa2, $fa6, $fa4, $fa2
	fmul.s	$fa4, $fa1, $fa7
	fld.s	$fa5, $a0, 312
	fmadd.s	$fa3, $fa3, $fa0, $fa4
	fld.s	$fa4, $a0, 300
	fld.s	$fa6, $a0, 284
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fld.s	$fa5, $a0, 316
	fmul.s	$fa4, $fa1, $fa4
	fmadd.s	$fa4, $fa6, $fa0, $fa4
	fld.s	$fa6, $a0, 304
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fld.s	$fa5, $a0, 288
	fld.s	$fa7, $a0, 320
	fmul.s	$fa6, $fa1, $fa6
	ld.d	$a0, $fp, 32
	fmadd.s	$fa5, $fa5, $fa0, $fa6
	fmadd.s	$fa5, $fa7, $fa2, $fa5
	fmul.s	$fa4, $fa1, $fa4
	fld.s	$fa6, $a0, 296
	fmadd.s	$fa3, $fa0, $fa3, $fa4
	fmadd.s	$fa3, $fa2, $fa5, $fa3
	fld.s	$fa4, $a0, 280
	fmul.s	$fa5, $fa1, $fa6
	fld.s	$fa6, $a0, 312
	fld.s	$fa7, $a0, 300
	fld.s	$ft0, $a0, 284
	fmadd.s	$fa4, $fa4, $fa0, $fa5
	fmadd.s	$fa4, $fa6, $fa2, $fa4
	fmul.s	$fa5, $fa1, $fa7
	fmadd.s	$fa5, $ft0, $fa0, $fa5
	fld.s	$fa6, $a0, 316
	fld.s	$fa7, $a0, 304
	fld.s	$ft0, $a0, 288
	fld.s	$ft1, $a0, 320
	fmadd.s	$fa5, $fa6, $fa2, $fa5
	fmul.s	$fa6, $fa1, $fa7
	fmadd.s	$fa6, $ft0, $fa0, $fa6
	fmadd.s	$fa6, $ft1, $fa2, $fa6
	fmul.s	$fa1, $fa1, $fa5
	fmadd.s	$fa0, $fa0, $fa4, $fa1
	fmadd.s	$fa0, $fa2, $fa6, $fa0
	fadd.s	$fa0, $fa3, $fa0
	frecip.s	$fa0, $fa0
	fst.s	$fa0, $fp, 756
.LBB5_19:
	fld.d	$fs7, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end5:
	.size	_ZN17btHingeConstraint13buildJacobianEv, .Lfunc_end5-_ZN17btHingeConstraint13buildJacobianEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN17btHingeConstraint9testLimitERK11btTransformS2_ # -- Begin function _ZN17btHingeConstraint9testLimitERK11btTransformS2_
	.p2align	5
	.type	_ZN17btHingeConstraint9testLimitERK11btTransformS2_,@function
_ZN17btHingeConstraint9testLimitERK11btTransformS2_: # @_ZN17btHingeConstraint9testLimitERK11btTransformS2_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 748
	fld.s	$fa2, $fp, 752
	fst.s	$fa0, $fp, 772
	st.d	$zero, $fp, 760
	fcmp.cult.s	$fcc0, $fa2, $fa1
	st.b	$zero, $fp, 782
	bcnez	$fcc0, .LBB6_6
# %bb.1:
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 748
	fcmp.cle.s	$fcc0, $fa0, $fa1
	fst.s	$fa0, $fp, 772
	bcnez	$fcc0, .LBB6_4
# %bb.2:
	fld.s	$fa1, $fp, 752
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB6_6
# %bb.3:
	vldi	$vr2, -1040
	b	.LBB6_5
.LBB6_4:
	vldi	$vr2, -1168
.LBB6_5:                                # %.sink.split
	fsub.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $fp, 764
	fst.s	$fa2, $fp, 760
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 782
.LBB6_6:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	_ZN17btHingeConstraint9testLimitERK11btTransformS2_, .Lfunc_end6-_ZN17btHingeConstraint9testLimitERK11btTransformS2_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
.LCPI7_0:
	.word	0xbe99999a                      # float -0.300000012
.LCPI7_1:
	.word	0x3727c5ac                      # float 9.99999974E-6
	.text
	.globl	_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.p2align	5
	.type	_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f,@function
_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f: # @_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
# %bb.0:
	ld.bu	$a3, $a0, 783
	beqz	$a3, .LBB7_25
# %bb.1:
	addi.d	$sp, $sp, -112
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 48                   # 8-byte Folded Spill
	ld.d	$a4, $a0, 24
	fld.s	$ft4, $a4, 8
	fld.s	$ft10, $a4, 12
	fld.s	$fa1, $a4, 16
	fld.s	$ft2, $a4, 24
	fld.s	$ft9, $a4, 28
	fld.s	$fa2, $a4, 32
	ld.d	$a3, $a0, 32
	fld.s	$ft5, $a4, 40
	fld.s	$ft8, $a4, 44
	fld.s	$fa3, $a4, 48
	fld.s	$ft3, $a3, 8
	fld.s	$ft7, $a3, 12
	fld.s	$fa6, $a3, 16
	fld.s	$ft1, $a3, 24
	fld.s	$ft6, $a3, 28
	fld.s	$fa5, $a3, 32
	fld.s	$fa7, $a3, 40
	fld.s	$ft0, $a3, 44
	ld.bu	$a5, $a0, 780
	fld.s	$fa4, $a3, 48
	bnez	$a5, .LBB7_9
# %bb.2:
	fld.s	$ft11, $a0, 652
	fld.s	$ft12, $a0, 648
	fld.s	$ft13, $a0, 656
	fmul.s	$ft10, $ft10, $ft11
	fmadd.s	$ft4, $ft4, $ft12, $ft10
	fmadd.s	$fa1, $fa1, $ft13, $ft4
	fld.s	$ft14, $a4, 56
	fmul.s	$ft4, $ft11, $ft9
	fld.s	$ft15, $a4, 60
	fmadd.s	$ft4, $ft2, $ft12, $ft4
	fadd.s	$ft2, $fa1, $ft14
	fmadd.s	$fa1, $fa2, $ft13, $ft4
	fadd.s	$ft4, $ft15, $fa1
	fld.s	$fs0, $a4, 64
	fmul.s	$fa1, $ft11, $ft8
	fmadd.s	$fa1, $ft5, $ft12, $fa1
	fmadd.s	$fa1, $fa3, $ft13, $fa1
	fadd.s	$ft5, $fs0, $fa1
	fld.s	$fa1, $a0, 716
	fld.s	$fa2, $a0, 712
	fld.s	$fa3, $a0, 720
	fld.s	$ft9, $a3, 56
	fmul.s	$ft7, $ft7, $fa1
	fmadd.s	$ft3, $ft3, $fa2, $ft7
	fmadd.s	$fa6, $fa6, $fa3, $ft3
	fadd.s	$ft3, $fa6, $ft9
	fld.s	$fa6, $a3, 60
	fmul.s	$ft6, $fa1, $ft6
	fmadd.s	$ft1, $ft1, $fa2, $ft6
	fmadd.s	$fa5, $fa5, $fa3, $ft1
	fadd.s	$ft6, $fa6, $fa5
	fld.s	$ft10, $a3, 64
	fmul.s	$fa1, $fa1, $ft0
	fmadd.s	$fa1, $fa7, $fa2, $fa1
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fadd.s	$ft7, $ft10, $fa1
	ld.d	$a5, $a1, 72
	fsub.s	$fa1, $ft2, $ft14
	fsub.s	$fa2, $ft4, $ft15
	movgr2fr.w	$ft1, $zero
	fsub.s	$fa3, $ft5, $fs0
	fmov.s	$ft8, $ft1
	fmov.s	$ft0, $ft1
	fmov.s	$fa7, $ft1
	beqz	$a5, .LBB7_4
# %bb.3:
	fld.s	$fa4, $a5, 328
	fld.s	$fa5, $a1, 0
	fld.s	$fa7, $a5, 332
	fld.s	$ft0, $a1, 4
	fadd.s	$fa4, $fa4, $fa5
	fadd.s	$fa5, $fa7, $ft0
	fld.s	$fa7, $a5, 336
	fld.s	$ft0, $a1, 8
	fld.s	$ft8, $a5, 344
	fld.s	$ft11, $a1, 16
	fld.s	$ft12, $a5, 348
	fld.s	$ft13, $a1, 20
	fld.s	$ft14, $a5, 352
	fld.s	$ft15, $a1, 24
	fadd.s	$fs0, $fa7, $ft0
	fadd.s	$fa7, $ft8, $ft11
	fadd.s	$ft0, $ft12, $ft13
	fadd.s	$ft8, $ft14, $ft15
	fneg.s	$ft11, $fa2
	fmul.s	$ft11, $ft8, $ft11
	fmadd.s	$ft11, $ft0, $fa3, $ft11
	fneg.s	$ft12, $fa3
	fmul.s	$ft12, $fa7, $ft12
	fmadd.s	$ft8, $ft8, $fa1, $ft12
	fneg.s	$ft12, $fa1
	fmul.s	$ft0, $ft0, $ft12
	fmadd.s	$ft12, $fa7, $fa2, $ft0
	fadd.s	$fa7, $fa4, $ft11
	fadd.s	$ft0, $fa5, $ft8
	fadd.s	$ft8, $fs0, $ft12
.LBB7_4:                                # %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit
	ld.d	$a5, $a2, 72
	fsub.s	$fa4, $ft3, $ft9
	fsub.s	$fa5, $ft6, $fa6
	fsub.s	$fa6, $ft7, $ft10
	fmov.s	$ft9, $ft1
	fmov.s	$ft10, $ft1
	beqz	$a5, .LBB7_6
# %bb.5:
	fld.s	$ft1, $a5, 328
	fld.s	$ft9, $a2, 0
	fld.s	$ft10, $a5, 332
	fld.s	$ft11, $a2, 4
	fadd.s	$ft1, $ft1, $ft9
	fadd.s	$ft9, $ft10, $ft11
	fld.s	$ft10, $a5, 336
	fld.s	$ft11, $a2, 8
	fld.s	$ft12, $a5, 344
	fld.s	$ft13, $a2, 16
	fld.s	$ft14, $a5, 348
	fld.s	$ft15, $a2, 20
	fld.s	$fs0, $a5, 352
	fld.s	$fs1, $a2, 24
	fadd.s	$ft11, $ft10, $ft11
	fadd.s	$ft10, $ft12, $ft13
	fadd.s	$ft12, $ft14, $ft15
	fadd.s	$ft13, $fs0, $fs1
	fneg.s	$ft14, $fa5
	fmul.s	$ft14, $ft13, $ft14
	fmadd.s	$ft14, $ft12, $fa6, $ft14
	fneg.s	$ft15, $fa6
	fmul.s	$ft15, $ft10, $ft15
	fmadd.s	$ft13, $ft13, $fa4, $ft15
	fneg.s	$ft15, $fa4
	fmul.s	$ft12, $ft12, $ft15
	fmadd.s	$ft12, $ft10, $fa5, $ft12
	fadd.s	$ft10, $ft1, $ft14
	fadd.s	$ft9, $ft9, $ft13
	fadd.s	$ft1, $ft11, $ft12
.LBB7_6:                                # %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit225
	move	$a5, $zero
	fsub.s	$fa7, $fa7, $ft10
	fsub.s	$ft0, $ft0, $ft9
	fsub.s	$ft1, $ft8, $ft1
	fsub.s	$ft2, $ft2, $ft3
	pcalau12i	$a6, %pc_hi20(.LCPI7_0)
	fld.s	$ft3, $a6, %pc_lo12(.LCPI7_0)
	fsub.s	$ft4, $ft4, $ft6
	fsub.s	$ft5, $ft5, $ft7
	ori	$a6, $zero, 252
	.p2align	4, , 16
.LBB7_7:                                # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a0, $a5
	fld.s	$ft6, $a7, 176
	fld.s	$ft7, $a7, 100
	fld.s	$ft12, $a7, 96
	fld.s	$ft11, $a7, 104
	frecip.s	$ft6, $ft6
	fmul.s	$ft8, $ft0, $ft7
	fmadd.s	$ft8, $ft12, $fa7, $ft8
	fmadd.s	$ft8, $ft11, $ft1, $ft8
	fmul.s	$ft9, $ft4, $ft7
	fmadd.s	$ft9, $ft2, $ft12, $ft9
	fmadd.s	$ft9, $ft5, $ft11, $ft9
	fmul.s	$ft9, $ft9, $ft3
	fdiv.s	$ft9, $ft9, $fa0
	fld.s	$ft10, $a0, 40
	fneg.s	$ft13, $ft6
	fmul.s	$ft8, $ft8, $ft13
	fmadd.s	$ft6, $ft9, $ft6, $ft8
	fadd.s	$ft8, $ft10, $ft6
	fst.s	$ft8, $a0, 40
	fneg.s	$ft8, $ft7
	fmul.s	$ft9, $fa3, $ft8
	fmadd.s	$ft13, $fa2, $ft11, $ft9
	fneg.s	$ft10, $ft11
	fmul.s	$ft9, $fa1, $ft10
	fmadd.s	$ft14, $fa3, $ft12, $ft9
	fneg.s	$ft9, $ft12
	fmul.s	$ft15, $fa2, $ft9
	fmadd.s	$ft15, $fa1, $ft7, $ft15
	fld.s	$fs0, $a4, 284
	fmul.s	$ft8, $fa6, $ft8
	fld.s	$fs1, $a4, 280
	fmadd.s	$ft8, $fa5, $ft11, $ft8
	fmul.s	$fs0, $ft14, $fs0
	fld.s	$fs2, $a4, 288
	fmadd.s	$fs0, $fs1, $ft13, $fs0
	fld.s	$fs1, $a4, 300
	fld.s	$fs3, $a4, 296
	fmadd.s	$fs0, $fs2, $ft15, $fs0
	fld.s	$fs2, $a4, 316
	fmul.s	$fs1, $ft14, $fs1
	fmadd.s	$fs1, $fs3, $ft13, $fs1
	fld.s	$fs3, $a4, 360
	fmul.s	$ft14, $ft14, $fs2
	fld.s	$fs2, $a4, 312
	fmul.s	$ft10, $fa4, $ft10
	fmadd.s	$ft10, $fa6, $ft12, $ft10
	fmul.s	$ft12, $ft12, $fs3
	fmadd.s	$ft13, $fs2, $ft13, $ft14
	fld.s	$ft14, $a4, 304
	fld.s	$fs2, $a4, 320
	fmul.s	$ft11, $ft11, $fs3
	fmul.s	$fs3, $ft7, $fs3
	fmadd.s	$ft14, $ft14, $ft15, $fs1
	fmadd.s	$ft13, $fs2, $ft15, $ft13
	fmul.s	$ft12, $ft12, $ft6
	fld.s	$ft15, $a1, 0
	fmul.s	$fs1, $fs3, $ft6
	fmul.s	$ft11, $ft11, $ft6
	fld.s	$fs2, $a1, 4
	fadd.s	$ft12, $ft12, $ft15
	fld.s	$ft15, $a1, 8
	fst.s	$ft12, $a1, 0
	fadd.s	$ft12, $fs1, $fs2
	fst.s	$ft12, $a1, 4
	fadd.s	$ft11, $ft11, $ft15
	fld.s	$ft12, $a1, 32
	fld.s	$ft15, $a1, 36
	fld.s	$fs1, $a1, 40
	fst.s	$ft11, $a1, 8
	fmul.s	$ft11, $ft6, $ft12
	fmul.s	$ft12, $ft6, $ft15
	fmul.s	$ft15, $ft6, $fs1
	fmul.s	$ft11, $fs0, $ft11
	fld.s	$fs0, $a1, 16
	fmul.s	$ft12, $ft14, $ft12
	fmul.s	$ft13, $ft13, $ft15
	fld.s	$ft14, $a1, 20
	fadd.s	$ft11, $ft11, $fs0
	fld.s	$ft15, $a1, 24
	fst.s	$ft11, $a1, 16
	fadd.s	$ft11, $ft12, $ft14
	fst.s	$ft11, $a1, 20
	fadd.s	$ft11, $ft13, $ft15
	fst.s	$ft11, $a1, 24
	fld.s	$ft11, $a3, 360
	fld.s	$ft12, $a7, 96
	fmul.s	$ft9, $fa5, $ft9
	fmadd.s	$ft7, $fa4, $ft7, $ft9
	fld.s	$ft9, $a7, 100
	fmul.s	$ft12, $ft11, $ft12
	fld.s	$ft13, $a7, 104
	fld.s	$ft14, $a3, 284
	fmul.s	$ft9, $ft11, $ft9
	fld.s	$ft15, $a3, 280
	fmul.s	$ft11, $ft11, $ft13
	fmul.s	$ft13, $ft10, $ft14
	fld.s	$ft14, $a3, 288
	fmadd.s	$ft13, $ft15, $ft8, $ft13
	fld.s	$ft15, $a3, 300
	fld.s	$fs0, $a3, 296
	fmadd.s	$ft13, $ft14, $ft7, $ft13
	fld.s	$ft14, $a3, 304
	fmul.s	$ft15, $ft10, $ft15
	fmadd.s	$ft15, $fs0, $ft8, $ft15
	fld.s	$fs0, $a3, 316
	fmadd.s	$ft14, $ft14, $ft7, $ft15
	fld.s	$ft15, $a3, 312
	fld.s	$fs1, $a3, 320
	fmul.s	$ft10, $ft10, $fs0
	fld.s	$fs0, $a2, 0
	fmadd.s	$ft8, $ft15, $ft8, $ft10
	fmadd.s	$ft7, $fs1, $ft7, $ft8
	fmul.s	$ft8, $ft6, $ft12
	fsub.s	$ft8, $fs0, $ft8
	fld.s	$ft10, $a2, 4
	fst.s	$ft8, $a2, 0
	fmul.s	$ft8, $ft6, $ft9
	fld.s	$ft9, $a2, 8
	fsub.s	$ft8, $ft10, $ft8
	fst.s	$ft8, $a2, 4
	fmul.s	$ft8, $ft6, $ft11
	fsub.s	$ft8, $ft9, $ft8
	fld.s	$ft9, $a2, 32
	fld.s	$ft10, $a2, 36
	fld.s	$ft11, $a2, 40
	fst.s	$ft8, $a2, 8
	fmul.s	$ft8, $ft9, $ft6
	fmul.s	$ft9, $ft10, $ft6
	fmul.s	$ft6, $ft11, $ft6
	fmul.s	$ft8, $ft13, $ft8
	fld.s	$ft10, $a2, 16
	fmul.s	$ft9, $ft14, $ft9
	fmul.s	$ft6, $ft7, $ft6
	fld.s	$ft7, $a2, 20
	fsub.s	$ft8, $ft10, $ft8
	fld.s	$ft10, $a2, 24
	fst.s	$ft8, $a2, 16
	fsub.s	$ft7, $ft7, $ft9
	fst.s	$ft7, $a2, 20
	fsub.s	$ft6, $ft10, $ft6
	addi.d	$a5, $a5, 84
	fst.s	$ft6, $a2, 24
	bne	$a5, $a6, .LBB7_7
# %bb.8:                                # %.loopexit.loopexit
	fld.s	$ft4, $a4, 8
	fld.s	$ft10, $a4, 12
	fld.s	$fa1, $a4, 16
	fld.s	$ft2, $a4, 24
	fld.s	$ft9, $a4, 28
	fld.s	$fa2, $a4, 32
	fld.s	$ft5, $a4, 40
	fld.s	$ft8, $a4, 44
	fld.s	$fa3, $a4, 48
	fld.s	$ft3, $a3, 8
	fld.s	$ft7, $a3, 12
	fld.s	$fa6, $a3, 16
	fld.s	$ft1, $a3, 24
	fld.s	$ft6, $a3, 28
	fld.s	$fa5, $a3, 32
	fld.s	$fa7, $a3, 40
	fld.s	$ft0, $a3, 44
	fld.s	$fa4, $a3, 48
.LBB7_9:                                # %.loopexit
	fld.s	$ft13, $a0, 624
	fld.s	$ft14, $a0, 608
	fld.s	$ft11, $a0, 640
	fmul.s	$ft10, $ft13, $ft10
	fmadd.s	$ft12, $ft4, $ft14, $ft10
	fmul.s	$ft4, $ft13, $ft9
	fmadd.s	$ft9, $ft2, $ft14, $ft4
	fmul.s	$ft2, $ft13, $ft8
	fld.s	$ft4, $a0, 688
	fld.s	$ft13, $a0, 672
	fmadd.s	$ft8, $ft5, $ft14, $ft2
	fld.s	$ft10, $a0, 704
	fmul.s	$ft2, $ft4, $ft7
	fmadd.s	$ft7, $ft3, $ft13, $ft2
	fmul.s	$ft2, $ft4, $ft6
	ld.d	$a5, $a1, 72
	fmadd.s	$ft1, $ft1, $ft13, $ft2
	fmul.s	$ft0, $ft4, $ft0
	movgr2fr.w	$ft2, $zero
	fmadd.s	$fa7, $fa7, $ft13, $ft0
	fmov.s	$ft3, $ft2
	fmov.s	$ft4, $ft2
	fmov.s	$ft5, $ft2
	beqz	$a5, .LBB7_11
# %bb.10:
	fld.s	$ft0, $a5, 344
	fld.s	$ft3, $a1, 16
	fld.s	$ft4, $a5, 348
	fld.s	$ft6, $a1, 20
	fld.s	$ft13, $a5, 352
	fld.s	$ft14, $a1, 24
	fadd.s	$ft5, $ft0, $ft3
	fadd.s	$ft4, $ft4, $ft6
	fadd.s	$ft3, $ft13, $ft14
.LBB7_11:                               # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit
	fmadd.s	$fa1, $fa1, $ft11, $ft12
	fmadd.s	$fa2, $fa2, $ft11, $ft9
	ld.d	$a5, $a2, 72
	fmadd.s	$fa3, $fa3, $ft11, $ft8
	fmadd.s	$ft9, $fa6, $ft10, $ft7
	fmadd.s	$ft8, $fa5, $ft10, $ft1
	fmadd.s	$ft10, $fa4, $ft10, $fa7
	fmov.s	$fa5, $ft2
	fmov.s	$ft6, $ft2
	beqz	$a5, .LBB7_13
# %bb.12:
	fld.s	$fa4, $a5, 344
	fld.s	$fa5, $a2, 16
	fld.s	$fa6, $a5, 348
	fld.s	$fa7, $a2, 20
	fld.s	$ft0, $a5, 352
	fld.s	$ft1, $a2, 24
	fadd.s	$ft6, $fa4, $fa5
	fadd.s	$fa5, $fa6, $fa7
	fadd.s	$ft2, $ft0, $ft1
.LBB7_13:                               # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit331
	fmul.s	$fa4, $fa2, $ft4
	fmadd.s	$fa4, $fa1, $ft5, $fa4
	fmadd.s	$fa6, $fa3, $ft3, $fa4
	fmul.s	$fs4, $fa1, $fa6
	fmul.s	$ft7, $fa2, $fa6
	fmul.s	$fs5, $fa3, $fa6
	fmul.s	$fa7, $ft8, $fa5
	fmadd.s	$fa7, $ft9, $ft6, $fa7
	fmadd.s	$ft1, $ft10, $ft2, $fa7
	fmul.s	$fs6, $ft9, $ft1
	fmul.s	$fs7, $ft8, $ft1
	fmul.s	$fa4, $ft10, $ft1
	fst.s	$ft5, $sp, 32                   # 4-byte Folded Spill
	fsub.s	$ft11, $ft5, $fs4
	fst.s	$ft4, $sp, 36                   # 4-byte Folded Spill
	fsub.s	$ft12, $ft4, $ft7
	fst.s	$ft3, $sp, 40                   # 4-byte Folded Spill
	fsub.s	$ft15, $ft3, $fs5
	fst.s	$ft6, $sp, 24                   # 4-byte Folded Spill
	fsub.s	$ft13, $ft6, $fs6
	fst.s	$fa5, $sp, 28                   # 4-byte Folded Spill
	fsub.s	$ft14, $fa5, $fs7
	fst.s	$fa4, $sp, 44                   # 4-byte Folded Spill
	fsub.s	$fs0, $ft2, $fa4
	fsub.s	$ft13, $ft11, $ft13
	fsub.s	$ft14, $ft12, $ft14
	fsub.s	$ft12, $ft15, $fs0
	fmul.s	$ft15, $ft14, $ft14
	pcalau12i	$a5, %pc_hi20(.LCPI7_1)
	fld.s	$fa7, $a5, %pc_lo12(.LCPI7_1)
	fmadd.s	$ft15, $ft13, $ft13, $ft15
	fmadd.s	$ft15, $ft12, $ft12, $ft15
	fsqrt.s	$ft15, $ft15
	fcmp.cule.s	$fcc0, $ft15, $fa7
	bcnez	$fcc0, .LBB7_15
# %bb.14:
	frecip.s	$fs0, $ft15
	fmul.s	$fs1, $ft13, $fs0
	fld.s	$ft15, $a4, 296
	fmul.s	$fs2, $ft14, $fs0
	fmul.s	$fs0, $ft12, $fs0
	fld.s	$fs3, $a4, 280
	fst.s	$ft7, $sp, 12                   # 4-byte Folded Spill
	fmov.s	$ft7, $fs4
	fmul.s	$fs4, $fs2, $ft15
	fst.s	$fs5, $sp, 20                   # 4-byte Folded Spill
	fld.s	$fs5, $a4, 312
	fst.s	$fs6, $sp, 16                   # 4-byte Folded Spill
	fld.s	$fs6, $a4, 300
	fmov.s	$ft11, $fs7
	fld.s	$fs7, $a4, 284
	fmadd.s	$fs4, $fs3, $fs1, $fs4
	fmadd.s	$fs4, $fs5, $fs0, $fs4
	fmul.s	$fa4, $fs2, $fs6
	fmadd.s	$fa4, $fs7, $fs1, $fa4
	fld.s	$fa5, $a4, 316
	fld.s	$fa6, $a4, 304
	fst.s	$fa7, $sp, 8                    # 4-byte Folded Spill
	fld.s	$fa7, $a4, 288
	fld.s	$ft0, $a4, 320
	fmadd.s	$fa4, $fa5, $fs0, $fa4
	fmul.s	$ft1, $fs2, $fa6
	fmadd.s	$ft1, $fa7, $fs1, $ft1
	fmadd.s	$ft1, $ft0, $fs0, $ft1
	fmul.s	$fa4, $fs2, $fa4
	fld.s	$ft3, $a3, 296
	fmadd.s	$fa4, $fs1, $fs4, $fa4
	fmadd.s	$fa4, $fs0, $ft1, $fa4
	fld.s	$ft1, $a3, 280
	fmul.s	$ft3, $fs2, $ft3
	fld.s	$fs4, $a3, 312
	fld.s	$ft4, $a3, 300
	fld.s	$ft5, $a3, 284
	fmadd.s	$ft1, $ft1, $fs1, $ft3
	fmadd.s	$ft1, $fs4, $fs0, $ft1
	fmul.s	$ft3, $fs2, $ft4
	fmadd.s	$ft3, $ft5, $fs1, $ft3
	fld.s	$ft4, $a3, 316
	fld.s	$ft5, $a3, 304
	fld.s	$fs4, $a3, 288
	fld.s	$ft6, $a3, 320
	fmadd.s	$ft3, $ft4, $fs0, $ft3
	fmul.s	$ft4, $fs2, $ft5
	fmadd.s	$ft4, $fs4, $fs1, $ft4
	fmov.s	$fs4, $ft7
	fld.s	$ft7, $sp, 12                   # 4-byte Folded Reload
	fmadd.s	$ft4, $ft6, $fs0, $ft4
	fmul.s	$ft3, $fs2, $ft3
	fmadd.s	$ft1, $fs1, $ft1, $ft3
	fmadd.s	$ft1, $fs0, $ft4, $ft1
	fadd.s	$fa4, $fa4, $ft1
	fmul.s	$ft1, $ft14, $fs7
	fmov.s	$fs7, $ft11
	fmadd.s	$ft1, $fs3, $ft13, $ft1
	fmadd.s	$fa7, $fa7, $ft12, $ft1
	fmul.s	$ft1, $ft14, $fs6
	fld.s	$fs6, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$ft1, $ft15, $ft13, $ft1
	fmadd.s	$fa6, $fa6, $ft12, $ft1
	fmul.s	$fa5, $ft14, $fa5
	fmadd.s	$fa5, $fs5, $ft13, $fa5
	fld.s	$fs5, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$fa5, $ft0, $ft12, $fa5
	frecip.s	$ft15, $fa4
	movgr2fr.w	$fs0, $zero
	fld.s	$fa4, $a1, 0
	fneg.s	$ft0, $fs0
	fmul.s	$ft0, $ft15, $ft0
	fld.s	$ft1, $a1, 4
	fadd.s	$fa4, $ft0, $fa4
	fld.s	$ft3, $a1, 8
	fst.s	$fa4, $a1, 0
	fadd.s	$fa4, $ft0, $ft1
	fst.s	$fa4, $a1, 4
	fadd.s	$fa4, $ft0, $ft3
	fld.s	$ft0, $a1, 32
	fld.s	$ft1, $a1, 36
	fld.s	$ft3, $a1, 40
	fst.s	$fa4, $a1, 8
	fmul.s	$fa4, $ft0, $ft15
	fmul.s	$ft0, $ft1, $ft15
	fmul.s	$ft1, $ft3, $ft15
	fmul.s	$fa4, $fa7, $fa4
	fld.s	$fa7, $a1, 16
	fmul.s	$fa6, $fa6, $ft0
	fmul.s	$fa5, $fa5, $ft1
	fld.s	$ft0, $a1, 20
	fsub.s	$fa4, $fa7, $fa4
	fld.s	$fa7, $a1, 24
	fst.s	$fa4, $a1, 16
	fsub.s	$fa4, $ft0, $fa6
	fst.s	$fa4, $a1, 20
	fsub.s	$fa4, $fa7, $fa5
	fst.s	$fa4, $a1, 24
	fld.s	$fa4, $a3, 284
	fld.s	$fa5, $a3, 280
	fmul.s	$fa4, $ft14, $fa4
	fld.s	$fa6, $a3, 288
	fld.s	$fa7, $a3, 300
	fmadd.s	$fa4, $fa5, $ft13, $fa4
	fld.s	$fa5, $a3, 296
	fmadd.s	$fa4, $fa6, $ft12, $fa4
	fmul.s	$fa6, $ft14, $fa7
	fld.s	$fa7, $a3, 304
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $a3, 316
	fld.s	$ft0, $a3, 312
	fmadd.s	$fa5, $fa7, $ft12, $fa5
	fld.s	$fa7, $a3, 320
	fmul.s	$fa6, $ft14, $fa6
	fmadd.s	$fa6, $ft0, $ft13, $fa6
	fld.s	$ft0, $a2, 0
	fmadd.s	$fa6, $fa7, $ft12, $fa6
	fmul.s	$fa7, $ft15, $fs0
	fld.s	$ft1, $a2, 4
	fadd.s	$ft0, $fa7, $ft0
	fld.s	$ft3, $a2, 8
	fst.s	$ft0, $a2, 0
	fadd.s	$ft0, $fa7, $ft1
	fst.s	$ft0, $a2, 4
	fadd.s	$fa7, $fa7, $ft3
	fld.s	$ft0, $a2, 32
	fld.s	$ft1, $a2, 36
	fld.s	$ft3, $a2, 40
	fst.s	$fa7, $a2, 8
	fmul.s	$fa7, $ft15, $ft0
	fmul.s	$ft0, $ft15, $ft1
	fmul.s	$ft1, $ft15, $ft3
	fmul.s	$fa4, $fa4, $fa7
	fld.s	$fa7, $a2, 16
	fmul.s	$fa5, $fa5, $ft0
	fmul.s	$fa6, $fa6, $ft1
	fld.s	$ft0, $a2, 20
	fadd.s	$fa4, $fa4, $fa7
	fld.s	$fa7, $a2, 24
	fst.s	$fa4, $a2, 16
	fadd.s	$fa4, $fa5, $ft0
	fst.s	$fa4, $a2, 20
	fadd.s	$fa4, $fa6, $fa7
	fld.s	$fa7, $sp, 8                    # 4-byte Folded Reload
	fst.s	$fa4, $a2, 24
.LBB7_15:
	fneg.s	$fa4, $ft8
	fmul.s	$fa4, $fa3, $fa4
	fmadd.s	$fa4, $fa2, $ft10, $fa4
	fneg.s	$fa5, $ft10
	fmul.s	$fa5, $fa1, $fa5
	fmadd.s	$fa5, $fa3, $ft9, $fa5
	fneg.s	$fa6, $ft9
	fmul.s	$fa6, $fa2, $fa6
	fmadd.s	$fa6, $fa1, $ft8, $fa6
	frecip.s	$fa0, $fa0
	fmul.s	$ft8, $fa0, $fa4
	fmul.s	$ft10, $fa0, $fa5
	fmul.s	$ft9, $fa0, $fa6
	fmul.s	$fa4, $ft10, $ft10
	fmadd.s	$fa4, $ft8, $ft8, $fa4
	fmadd.s	$fa4, $ft9, $ft9, $fa4
	fsqrt.s	$ft12, $fa4
	fcmp.cule.s	$fcc0, $ft12, $fa7
	bceqz	$fcc0, .LBB7_18
# %bb.16:
	ld.bu	$a5, $a0, 782
	bnez	$a5, .LBB7_19
.LBB7_17:
	ld.bu	$a5, $a0, 781
	bnez	$a5, .LBB7_20
	b	.LBB7_24
.LBB7_18:
	frecip.s	$fa4, $ft12
	fmul.s	$fa5, $ft8, $fa4
	fld.s	$ft11, $a4, 296
	fmul.s	$fa6, $ft10, $fa4
	fmul.s	$fa4, $ft9, $fa4
	fld.s	$fa7, $a4, 280
	fmul.s	$ft0, $fa6, $ft11
	fld.s	$ft1, $a4, 312
	fld.s	$ft3, $a4, 300
	fld.s	$ft4, $a4, 284
	fmadd.s	$ft0, $fa7, $fa5, $ft0
	fmadd.s	$ft0, $ft1, $fa4, $ft0
	fmul.s	$ft5, $fa6, $ft3
	fmadd.s	$ft5, $ft4, $fa5, $ft5
	fld.s	$ft6, $a4, 316
	fld.s	$ft12, $a4, 304
	fld.s	$ft13, $a4, 288
	fld.s	$ft14, $a4, 320
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft15, $fa6, $ft12
	fmadd.s	$ft15, $ft13, $fa5, $ft15
	fmadd.s	$ft15, $ft14, $fa4, $ft15
	fmul.s	$ft5, $fa6, $ft5
	fld.s	$fs0, $a3, 296
	fmadd.s	$ft0, $fa5, $ft0, $ft5
	fmadd.s	$ft0, $fa4, $ft15, $ft0
	fld.s	$ft5, $a3, 280
	fmul.s	$ft15, $fa6, $fs0
	fld.s	$fs0, $a3, 312
	fld.s	$fs1, $a3, 300
	fld.s	$fs2, $a3, 284
	fmadd.s	$ft5, $ft5, $fa5, $ft15
	fmadd.s	$ft5, $fs0, $fa4, $ft5
	fmul.s	$ft15, $fa6, $fs1
	fmadd.s	$ft15, $fs2, $fa5, $ft15
	fld.s	$fs0, $a3, 316
	fld.s	$fs1, $a3, 304
	fld.s	$fs2, $a3, 288
	fld.s	$fs3, $a3, 320
	fmadd.s	$ft15, $fs0, $fa4, $ft15
	fmul.s	$fs0, $fa6, $fs1
	fmadd.s	$fs0, $fs2, $fa5, $fs0
	fmadd.s	$fs0, $fs3, $fa4, $fs0
	fmul.s	$fa6, $fa6, $ft15
	fmadd.s	$fa5, $fa5, $ft5, $fa6
	fmadd.s	$fa4, $fa4, $fs0, $fa5
	fadd.s	$fa4, $ft0, $fa4
	fmul.s	$fa5, $ft10, $ft4
	fmadd.s	$fa5, $fa7, $ft8, $fa5
	fmadd.s	$fa5, $ft13, $ft9, $fa5
	fmul.s	$fa6, $ft10, $ft3
	fmadd.s	$fa6, $ft11, $ft8, $fa6
	fmadd.s	$fa6, $ft12, $ft9, $fa6
	fmul.s	$fa7, $ft10, $ft6
	fmadd.s	$fa7, $ft1, $ft8, $fa7
	fmadd.s	$fa7, $ft14, $ft9, $fa7
	frecip.s	$ft11, $fa4
	fld.s	$fa4, $a1, 0
	movgr2fr.w	$ft12, $zero
	fmul.s	$ft0, $ft11, $ft12
	fld.s	$ft1, $a1, 4
	fadd.s	$fa4, $ft0, $fa4
	fld.s	$ft3, $a1, 8
	fst.s	$fa4, $a1, 0
	fadd.s	$fa4, $ft0, $ft1
	fst.s	$fa4, $a1, 4
	fadd.s	$fa4, $ft0, $ft3
	fld.s	$ft0, $a1, 32
	fld.s	$ft1, $a1, 36
	fld.s	$ft3, $a1, 40
	fst.s	$fa4, $a1, 8
	fmul.s	$fa4, $ft11, $ft0
	fmul.s	$ft0, $ft11, $ft1
	fmul.s	$ft1, $ft11, $ft3
	fmul.s	$fa4, $fa5, $fa4
	fld.s	$fa5, $a1, 16
	fmul.s	$fa6, $fa6, $ft0
	fmul.s	$fa7, $fa7, $ft1
	fld.s	$ft0, $a1, 20
	fadd.s	$fa4, $fa4, $fa5
	fld.s	$fa5, $a1, 24
	fst.s	$fa4, $a1, 16
	fadd.s	$fa4, $fa6, $ft0
	fst.s	$fa4, $a1, 20
	fadd.s	$fa4, $fa7, $fa5
	fst.s	$fa4, $a1, 24
	fld.s	$fa4, $a3, 284
	fld.s	$fa5, $a3, 280
	fmul.s	$fa4, $ft10, $fa4
	fld.s	$fa6, $a3, 288
	fld.s	$fa7, $a3, 300
	fld.s	$ft0, $a3, 296
	fmadd.s	$fa4, $fa5, $ft8, $fa4
	fmadd.s	$fa4, $fa6, $ft9, $fa4
	fmul.s	$fa5, $ft10, $fa7
	fmadd.s	$fa5, $ft0, $ft8, $fa5
	fld.s	$fa6, $a3, 304
	fld.s	$fa7, $a3, 316
	fld.s	$ft0, $a3, 312
	fld.s	$ft1, $a3, 320
	fmadd.s	$fa5, $fa6, $ft9, $fa5
	fmul.s	$fa6, $ft10, $fa7
	fmadd.s	$fa6, $ft0, $ft8, $fa6
	fmadd.s	$fa6, $ft1, $ft9, $fa6
	fld.s	$fa7, $a2, 0
	fneg.s	$ft0, $ft12
	fmul.s	$ft0, $ft11, $ft0
	fld.s	$ft1, $a2, 4
	fadd.s	$fa7, $ft0, $fa7
	fld.s	$ft3, $a2, 8
	fst.s	$fa7, $a2, 0
	fadd.s	$fa7, $ft0, $ft1
	fst.s	$fa7, $a2, 4
	fadd.s	$fa7, $ft0, $ft3
	fld.s	$ft0, $a2, 32
	fld.s	$ft1, $a2, 36
	fld.s	$ft3, $a2, 40
	fst.s	$fa7, $a2, 8
	fmul.s	$fa7, $ft0, $ft11
	fmul.s	$ft0, $ft1, $ft11
	fmul.s	$ft1, $ft3, $ft11
	fmul.s	$fa4, $fa4, $fa7
	fld.s	$fa7, $a2, 16
	fmul.s	$fa5, $fa5, $ft0
	fmul.s	$fa6, $fa6, $ft1
	fld.s	$ft0, $a2, 20
	fsub.s	$fa4, $fa7, $fa4
	fld.s	$fa7, $a2, 24
	fst.s	$fa4, $a2, 16
	fsub.s	$fa4, $ft0, $fa5
	fst.s	$fa4, $a2, 20
	fsub.s	$fa4, $fa7, $fa6
	fst.s	$fa4, $a2, 24
	ld.bu	$a5, $a0, 782
	beqz	$a5, .LBB7_17
.LBB7_19:
	fld.s	$fa4, $sp, 32                   # 4-byte Folded Reload
	fld.s	$fa5, $sp, 24                   # 4-byte Folded Reload
	fsub.s	$fa4, $fa5, $fa4
	fld.s	$fa5, $sp, 36                   # 4-byte Folded Reload
	fld.s	$fa6, $sp, 28                   # 4-byte Folded Reload
	fsub.s	$fa5, $fa6, $fa5
	fld.s	$fa6, $sp, 40                   # 4-byte Folded Reload
	fsub.s	$fa6, $ft2, $fa6
	fmul.s	$fa5, $fa2, $fa5
	fmadd.s	$fa4, $fa4, $fa1, $fa5
	fld.s	$fa5, $a0, 764
	fld.s	$fa7, $a0, 740
	fmadd.s	$fa4, $fa6, $fa3, $fa4
	fld.s	$fa6, $a0, 744
	fmul.s	$fa0, $fa0, $fa5
	fmul.s	$fa0, $fa0, $fa7
	fld.s	$fa5, $a0, 760
	fld.s	$fa7, $a0, 756
	fld.s	$ft0, $a0, 768
	fmadd.s	$fa0, $fa4, $fa6, $fa0
	fmul.s	$fa0, $fa5, $fa0
	fmul.s	$fa0, $fa7, $fa0
	fadd.s	$fa4, $ft0, $fa0
	movgr2fr.w	$fa0, $zero
	fmax.s	$fa4, $fa4, $fa0
	fst.s	$fa4, $a0, 768
	fld.s	$fa6, $a4, 284
	fsub.s	$ft2, $fa4, $ft0
	fld.s	$fa4, $a4, 280
	fmul.s	$fa6, $fa2, $fa6
	fld.s	$fa7, $a4, 288
	fld.s	$ft0, $a4, 300
	fld.s	$ft1, $a4, 296
	fmadd.s	$fa4, $fa4, $fa1, $fa6
	fmadd.s	$fa4, $fa7, $fa3, $fa4
	fmul.s	$fa6, $fa2, $ft0
	fmadd.s	$fa6, $ft1, $fa1, $fa6
	fld.s	$fa7, $a4, 304
	fld.s	$ft0, $a4, 316
	fld.s	$ft1, $a4, 312
	fld.s	$ft3, $a4, 320
	fmadd.s	$fa6, $fa7, $fa3, $fa6
	fmul.s	$fa7, $fa2, $ft0
	fmadd.s	$fa7, $ft1, $fa1, $fa7
	fmadd.s	$fa7, $ft3, $fa3, $fa7
	fld.s	$ft0, $a1, 0
	fmul.s	$fa5, $fa5, $ft2
	fmul.s	$ft1, $fa5, $fa0
	fld.s	$ft3, $a1, 4
	fadd.s	$ft0, $ft1, $ft0
	fld.s	$ft4, $a1, 8
	fst.s	$ft0, $a1, 0
	fadd.s	$ft0, $ft1, $ft3
	fst.s	$ft0, $a1, 4
	fadd.s	$ft0, $ft1, $ft4
	fld.s	$ft1, $a1, 32
	fld.s	$ft3, $a1, 36
	fld.s	$ft4, $a1, 40
	fst.s	$ft0, $a1, 8
	fmul.s	$ft0, $fa5, $ft1
	fmul.s	$ft1, $fa5, $ft3
	fmul.s	$fa5, $fa5, $ft4
	fmul.s	$fa4, $fa4, $ft0
	fld.s	$ft0, $a1, 16
	fmul.s	$fa6, $fa6, $ft1
	fmul.s	$fa5, $fa7, $fa5
	fld.s	$fa7, $a1, 20
	fadd.s	$fa4, $fa4, $ft0
	fld.s	$ft0, $a1, 24
	fst.s	$fa4, $a1, 16
	fadd.s	$fa4, $fa6, $fa7
	fst.s	$fa4, $a1, 20
	fadd.s	$fa4, $fa5, $ft0
	fst.s	$fa4, $a1, 24
	fld.s	$fa4, $a3, 284
	fld.s	$fa5, $a3, 280
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fld.s	$fa5, $a3, 288
	fld.s	$fa6, $a3, 300
	fld.s	$fa7, $a3, 296
	fld.s	$ft0, $a3, 304
	fmadd.s	$fa4, $fa5, $fa3, $fa4
	fmul.s	$fa5, $fa2, $fa6
	fmadd.s	$fa5, $fa7, $fa1, $fa5
	fmadd.s	$fa5, $ft0, $fa3, $fa5
	fld.s	$fa6, $a3, 316
	fld.s	$fa7, $a3, 312
	fld.s	$ft0, $a3, 320
	fld.s	$ft1, $a0, 760
	fmul.s	$fa6, $fa2, $fa6
	fmadd.s	$fa6, $fa7, $fa1, $fa6
	fmadd.s	$fa6, $ft0, $fa3, $fa6
	fneg.s	$fa7, $ft1
	fld.s	$ft0, $a2, 0
	fmul.s	$fa7, $ft2, $fa7
	fmul.s	$fa0, $fa7, $fa0
	fld.s	$ft1, $a2, 4
	fadd.s	$ft0, $ft0, $fa0
	fld.s	$ft2, $a2, 8
	fst.s	$ft0, $a2, 0
	fadd.s	$ft0, $fa0, $ft1
	fst.s	$ft0, $a2, 4
	fadd.s	$fa0, $fa0, $ft2
	fld.s	$ft0, $a2, 32
	fld.s	$ft1, $a2, 36
	fld.s	$ft2, $a2, 40
	fst.s	$fa0, $a2, 8
	fmul.s	$fa0, $fa7, $ft0
	fmul.s	$ft0, $fa7, $ft1
	fmul.s	$fa7, $fa7, $ft2
	fmul.s	$fa0, $fa4, $fa0
	fld.s	$fa4, $a2, 16
	fmul.s	$fa5, $fa5, $ft0
	fmul.s	$fa6, $fa6, $fa7
	fld.s	$fa7, $a2, 20
	fadd.s	$fa0, $fa0, $fa4
	fld.s	$fa4, $a2, 24
	fst.s	$fa0, $a2, 16
	fadd.s	$fa0, $fa5, $fa7
	fst.s	$fa0, $a2, 20
	fadd.s	$fa0, $fa6, $fa4
	fst.s	$fa0, $a2, 24
	ld.bu	$a5, $a0, 781
	beqz	$a5, .LBB7_24
.LBB7_20:
	fsub.s	$fa0, $fs4, $fs6
	fsub.s	$fa4, $ft7, $fs7
	fld.s	$fa5, $sp, 44                   # 4-byte Folded Reload
	fsub.s	$fa5, $fs5, $fa5
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa0, $fa0, $fa1, $fa4
	fmadd.s	$fa0, $fa5, $fa3, $fa0
	fld.s	$fa6, $a0, 728
	fld.s	$fa7, $a0, 756
	fld.s	$fa4, $a0, 788
	fld.s	$fa5, $a0, 732
	fsub.s	$fa0, $fa6, $fa0
	fmul.s	$fa0, $fa7, $fa0
	fadd.s	$fa6, $fa0, $fa4
	fcmp.cule.s	$fcc0, $fa6, $fa5
	bceqz	$fcc0, .LBB7_22
# %bb.21:
	fneg.s	$fa5, $fa5
	fcmp.cule.s	$fcc0, $fa5, $fa6
	bcnez	$fcc0, .LBB7_23
.LBB7_22:
	fsub.s	$fa0, $fa5, $fa4
.LBB7_23:
	fadd.s	$fa4, $fa4, $fa0
	fst.s	$fa4, $a0, 788
	fld.s	$fa4, $a4, 284
	fld.s	$fa5, $a4, 280
	fmul.s	$fa4, $fa2, $fa4
	fld.s	$fa6, $a4, 288
	fld.s	$fa7, $a4, 300
	fld.s	$ft0, $a4, 296
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fmadd.s	$fa5, $fa6, $fa3, $fa4
	fmul.s	$fa4, $fa2, $fa7
	fmadd.s	$fa4, $ft0, $fa1, $fa4
	fld.s	$fa6, $a4, 304
	fld.s	$fa7, $a4, 316
	fld.s	$ft0, $a4, 312
	fld.s	$ft1, $a4, 320
	fmadd.s	$fa6, $fa6, $fa3, $fa4
	fmul.s	$fa4, $fa2, $fa7
	fmadd.s	$fa4, $ft0, $fa1, $fa4
	fmadd.s	$fa7, $ft1, $fa3, $fa4
	fld.s	$ft0, $a1, 0
	movgr2fr.w	$fa4, $zero
	fmul.s	$ft1, $fa0, $fa4
	fld.s	$ft2, $a1, 4
	fadd.s	$ft0, $ft1, $ft0
	fld.s	$ft3, $a1, 8
	fst.s	$ft0, $a1, 0
	fadd.s	$ft0, $ft1, $ft2
	fst.s	$ft0, $a1, 4
	fadd.s	$ft0, $ft1, $ft3
	fld.s	$ft1, $a1, 32
	fld.s	$ft2, $a1, 36
	fld.s	$ft3, $a1, 40
	fst.s	$ft0, $a1, 8
	fmul.s	$ft0, $fa0, $ft1
	fmul.s	$ft1, $fa0, $ft2
	fmul.s	$ft2, $fa0, $ft3
	fmul.s	$fa5, $fa5, $ft0
	fld.s	$ft0, $a1, 16
	fmul.s	$fa6, $fa6, $ft1
	fmul.s	$fa7, $fa7, $ft2
	fld.s	$ft1, $a1, 20
	fadd.s	$fa5, $fa5, $ft0
	fld.s	$ft0, $a1, 24
	fst.s	$fa5, $a1, 16
	fadd.s	$fa5, $fa6, $ft1
	fst.s	$fa5, $a1, 20
	fadd.s	$fa5, $fa7, $ft0
	fst.s	$fa5, $a1, 24
	fld.s	$fa5, $a3, 284
	fld.s	$fa6, $a3, 280
	fmul.s	$fa5, $fa2, $fa5
	fld.s	$fa7, $a3, 288
	fld.s	$ft0, $a3, 300
	fld.s	$ft1, $a3, 296
	fmadd.s	$fa5, $fa6, $fa1, $fa5
	fmadd.s	$fa5, $fa7, $fa3, $fa5
	fmul.s	$fa6, $fa2, $ft0
	fmadd.s	$fa6, $ft1, $fa1, $fa6
	fld.s	$fa7, $a3, 304
	fld.s	$ft0, $a3, 316
	fld.s	$ft1, $a3, 312
	fld.s	$ft2, $a3, 320
	fmadd.s	$fa6, $fa7, $fa3, $fa6
	fmul.s	$fa2, $fa2, $ft0
	fmadd.s	$fa1, $ft1, $fa1, $fa2
	fmadd.s	$fa1, $ft2, $fa3, $fa1
	fld.s	$fa2, $a2, 0
	fneg.s	$fa3, $fa4
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a2, 4
	fadd.s	$fa2, $fa3, $fa2
	fld.s	$fa7, $a2, 8
	fst.s	$fa2, $a2, 0
	fadd.s	$fa2, $fa3, $fa4
	fst.s	$fa2, $a2, 4
	fadd.s	$fa2, $fa3, $fa7
	fld.s	$fa3, $a2, 32
	fld.s	$fa4, $a2, 36
	fld.s	$fa7, $a2, 40
	fst.s	$fa2, $a2, 8
	fmul.s	$fa2, $fa3, $fa0
	fmul.s	$fa3, $fa4, $fa0
	fmul.s	$fa0, $fa7, $fa0
	fmul.s	$fa2, $fa5, $fa2
	fld.s	$fa4, $a2, 16
	fmul.s	$fa3, $fa6, $fa3
	fmul.s	$fa0, $fa1, $fa0
	fld.s	$fa1, $a2, 20
	fsub.s	$fa2, $fa4, $fa2
	fld.s	$fa4, $a2, 24
	fst.s	$fa2, $a2, 16
	fsub.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a2, 20
	fsub.s	$fa0, $fa4, $fa0
	fst.s	$fa0, $a2, 24
.LBB7_24:
	fld.d	$fs7, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
.LBB7_25:
	ret
.Lfunc_end7:
	.size	_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, .Lfunc_end7-_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
                                        # -- End function
	.globl	_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E # -- Begin function _ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.p2align	5
	.type	_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E,@function
_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E: # @_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a0
	ld.bu	$a0, $a0, 783
	move	$fp, $a1
	beqz	$a0, .LBB8_2
# %bb.1:
	move	$a0, $zero
	st.w	$zero, $fp, 0
	b	.LBB8_12
.LBB8_2:
	ori	$a0, $zero, 5
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 0
	ld.d	$a0, $s0, 24
	ld.d	$a2, $s0, 32
	addi.d	$a1, $a0, 8
	addi.d	$a2, $a2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s0, 748
	fld.s	$fa2, $s0, 752
	move	$a0, $zero
	fst.s	$fa0, $s0, 772
	st.d	$zero, $s0, 760
	fcmp.cult.s	$fcc0, $fa2, $fa1
	st.b	$zero, $s0, 782
	bceqz	$fcc0, .LBB8_5
# %bb.3:                                # %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit
	bnez	$a0, .LBB8_11
.LBB8_4:                                # %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit
	ld.b	$a0, $s0, 781
	andi	$a0, $a0, 1
	beqz	$a0, .LBB8_13
	b	.LBB8_11
.LBB8_5:
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s0, 748
	fcmp.cle.s	$fcc0, $fa0, $fa1
	fst.s	$fa0, $s0, 772
	bcnez	$fcc0, .LBB8_8
# %bb.6:
	fld.s	$fa1, $s0, 752
	fcmp.cle.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_9
# %bb.7:                                # %._ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit_crit_edge
	ld.bu	$a0, $s0, 782
	beqz	$a0, .LBB8_4
	b	.LBB8_11
.LBB8_8:
	vldi	$vr2, -1168
	b	.LBB8_10
.LBB8_9:
	vldi	$vr2, -1040
.LBB8_10:                               # %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread
	fsub.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s0, 764
	fst.s	$fa2, $s0, 760
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 782
.LBB8_11:
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a0, $a1, -1
.LBB8_12:                               # %.sink.split
	st.w	$a0, $fp, 4
.LBB8_13:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, .Lfunc_end8-_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.cfi_endproc
                                        # -- End function
	.globl	_ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E # -- Begin function _ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
	.p2align	5
	.type	_ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E,@function
_ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E: # @_ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
# %bb.0:
	ld.bu	$a0, $a0, 783
	ori	$a2, $zero, 6
	masknez	$a0, $a2, $a0
	st.w	$a0, $a1, 0
	st.w	$zero, $a1, 4
	ret
.Lfunc_end9:
	.size	_ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E, .Lfunc_end9-_ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
                                        # -- End function
	.globl	_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E # -- Begin function _ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.p2align	5
	.type	_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E,@function
_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E: # @_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 24
	ld.d	$a5, $a0, 32
	addi.d	$a2, $a4, 8
	addi.d	$a3, $a5, 8
	addi.d	$a4, $a4, 344
	addi.d	$a5, $a5, 344
	pcaddu18i	$t8, %call36(_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_)
	jr	$t8
.Lfunc_end10:
	.size	_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, .Lfunc_end10-_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_
.LCPI11_0:
	.word	0xff7fffff                      # float -3.40282347E+38
.LCPI11_1:
	.word	0x7f7fffff                      # float 3.40282347E+38
	.text
	.globl	_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_
	.p2align	5
	.type	_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_,@function
_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_: # @_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 56                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	.cfi_offset 57, -88
	.cfi_offset 58, -96
	.cfi_offset 59, -104
	.cfi_offset 60, -112
	.cfi_offset 61, -120
	.cfi_offset 62, -128
	.cfi_offset 63, -136
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a1
	move	$fp, $a0
	ld.w	$a0, $a1, 40
	fld.s	$ft9, $fp, 600
	fld.s	$fs1, $a2, 0
	fld.s	$ft12, $fp, 616
	fld.s	$fs3, $a2, 4
	fld.s	$ft7, $fp, 632
	fld.s	$ft8, $a2, 8
	fld.s	$fa0, $fp, 604
	fld.s	$ft14, $fp, 620
	fld.s	$ft11, $fp, 636
	fld.s	$ft10, $fp, 608
	fld.s	$ft13, $fp, 624
	fld.s	$fa1, $fp, 640
	fst.s	$fa1, $sp, 44                   # 4-byte Folded Spill
	fld.s	$fs2, $a2, 16
	fld.s	$fs4, $a2, 20
	fld.s	$ft4, $a2, 24
	fld.s	$ft15, $a2, 32
	fld.s	$fs0, $a2, 36
	fld.s	$ft6, $a2, 40
	fld.s	$fa3, $fp, 652
	fld.s	$fa7, $fp, 648
	fld.s	$ft0, $fp, 656
	fld.s	$fa6, $a2, 48
	fmul.s	$ft1, $fs3, $fa3
	fmadd.s	$ft1, $fs1, $fa7, $ft1
	fmadd.s	$ft1, $ft8, $ft0, $ft1
	fadd.s	$fa1, $fa6, $ft1
	fst.s	$fa1, $sp, 32                   # 4-byte Folded Spill
	fld.s	$fa6, $a2, 52
	fmul.s	$ft1, $fs4, $fa3
	fmadd.s	$ft1, $fs2, $fa7, $ft1
	fmadd.s	$ft1, $ft4, $ft0, $ft1
	fadd.s	$fa2, $fa6, $ft1
	fst.s	$fa2, $sp, 20                   # 4-byte Folded Spill
	fld.s	$ft1, $a2, 56
	fmul.s	$fa3, $fs0, $fa3
	fmadd.s	$fa3, $ft15, $fa7, $fa3
	fmadd.s	$fa3, $ft6, $ft0, $fa3
	fadd.s	$fa1, $fa3, $ft1
	fst.s	$fa1, $sp, 48                   # 4-byte Folded Spill
	fld.s	$ft3, $a3, 0
	fld.s	$ft2, $a3, 4
	fld.s	$fa1, $a3, 8
	fst.s	$fa1, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa3, $fp, 672
	fst.s	$fa3, $sp, 40                   # 4-byte Folded Spill
	fld.s	$fa3, $fp, 688
	fst.s	$fa3, $sp, 36                   # 4-byte Folded Spill
	fld.s	$ft1, $fp, 704
	fld.s	$fa6, $a3, 16
	fld.s	$fa7, $a3, 20
	fmul.s	$fa3, $ft12, $fs3
	fmadd.s	$fs6, $ft9, $fs1, $fa3
	fmul.s	$fa3, $fs3, $ft14
	fmadd.s	$fa3, $fa0, $fs1, $fa3
	fst.s	$fa3, $sp, 28                   # 4-byte Folded Spill
	fmul.s	$fa3, $fs3, $ft13
	fmadd.s	$fa3, $ft10, $fs1, $fa3
	fst.s	$fa3, $sp, 16                   # 4-byte Folded Spill
	fmul.s	$fa3, $ft12, $fs4
	fmadd.s	$fs5, $ft9, $fs2, $fa3
	fmul.s	$fs3, $ft14, $fs4
	fmadd.s	$fs7, $fa0, $fs2, $fs3
	fmul.s	$fs3, $ft13, $fs4
	fmadd.s	$fs1, $ft10, $fs2, $fs3
	fld.s	$fs3, $a3, 24
	fmul.s	$ft12, $ft12, $fs0
	fmadd.s	$ft12, $ft9, $ft15, $ft12
	fld.s	$fa4, $fp, 712
	fmul.s	$ft9, $ft14, $fs0
	fmadd.s	$fs2, $fa0, $ft15, $ft9
	fld.s	$ft14, $fp, 716
	fmul.s	$ft9, $ft13, $fs0
	fld.s	$fa3, $fp, 720
	fmadd.s	$ft15, $ft10, $ft15, $ft9
	fld.s	$ft9, $a3, 48
	fmul.s	$ft10, $ft2, $ft14
	fmadd.s	$ft10, $ft3, $fa4, $ft10
	fmadd.s	$ft10, $fa1, $fa3, $ft10
	fadd.s	$ft9, $ft9, $ft10
	fld.s	$fs0, $a3, 32
	ld.d	$a1, $a1, 8
	lu12i.w	$a4, 260096
	fld.s	$fs4, $a3, 36
	fld.s	$ft10, $a3, 40
	fld.s	$ft13, $a3, 52
	fld.s	$fa5, $a3, 56
	st.w	$a4, $a1, 0
	alsl.d	$a5, $a0, $a1, 2
	st.w	$a4, $a5, 4
	slli.w	$a5, $a0, 1
	alsl.d	$a1, $a5, $a1, 2
	st.w	$a4, $a1, 8
	fmul.s	$fa0, $fa7, $ft14
	fld.s	$fa1, $a2, 52
	fmadd.s	$fa0, $fa6, $fa4, $fa0
	fmadd.s	$fa0, $fs3, $fa3, $fa0
	fadd.s	$ft13, $ft13, $fa0
	fsub.s	$fa1, $fa2, $fa1
	ld.d	$a1, $s2, 16
	fld.s	$fa2, $a2, 48
	fld.s	$fa0, $a2, 56
	fneg.s	$ft5, $fa1
	fst.s	$ft5, $a1, 8
	slli.d	$a4, $a0, 2
	fld.s	$ft0, $sp, 48                   # 4-byte Folded Reload
	fsub.s	$fa0, $ft0, $fa0
	fst.s	$fa0, $a1, 4
	fneg.s	$fa0, $fa0
	st.w	$zero, $a1, 0
	st.w	$zero, $a1, 12
	fstx.s	$fa0, $a1, $a4
	slli.d	$a6, $a5, 2
	fld.s	$ft0, $sp, 32                   # 4-byte Folded Reload
	fsub.s	$fa0, $ft0, $fa2
	alsl.d	$a2, $a0, $a1, 2
	st.w	$zero, $a2, 4
	fst.s	$fa0, $a2, 8
	st.w	$zero, $a2, 12
	fstx.s	$fa1, $a1, $a6
	alsl.d	$a2, $a5, $a1, 2
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a2, 4
	fmul.s	$fa0, $fs4, $ft14
	st.d	$zero, $a2, 8
	fld.s	$fa1, $a3, 56
	fmadd.s	$fa0, $fs0, $fa4, $fa0
	fmadd.s	$fa0, $ft10, $fa3, $fa0
	fadd.s	$ft14, $fa0, $fa5
	fsub.s	$fa0, $ft14, $fa1
	ld.d	$a2, $s2, 32
	fld.s	$fa1, $a3, 52
	fld.s	$fa2, $a3, 48
	fneg.s	$fa3, $fa0
	fst.s	$fa3, $a2, 4
	fsub.s	$fa1, $ft13, $fa1
	st.w	$zero, $a2, 0
	fst.s	$fa1, $a2, 8
	st.w	$zero, $a2, 12
	fstx.s	$fa0, $a2, $a4
	fsub.s	$fa0, $ft9, $fa2
	alsl.d	$a3, $a0, $a2, 2
	fneg.s	$fa2, $fa0
	fst.s	$fa2, $a3, 8
	st.w	$zero, $a3, 4
	st.w	$zero, $a3, 12
	fneg.s	$fa1, $fa1
	fstx.s	$fa1, $a2, $a6
	alsl.d	$a3, $a5, $a2, 2
	fst.s	$fa0, $a3, 4
	fld.s	$fa2, $sp, 36                   # 4-byte Folded Reload
	fmul.s	$fa0, $ft2, $fa2
	fld.s	$fa1, $sp, 40                   # 4-byte Folded Reload
	fmadd.s	$fa5, $fa1, $ft3, $fa0
	fmul.s	$fa0, $fa2, $fa7
	fmadd.s	$fa3, $fa1, $fa6, $fa0
	st.d	$zero, $a3, 8
	fmul.s	$fa0, $fa2, $fs4
	fld.s	$fs4, $s2, 0
	fmadd.s	$fs0, $fa1, $fs0, $fa0
	fmadd.s	$ft3, $ft7, $ft8, $fs6
	fld.s	$fa0, $sp, 44                   # 4-byte Folded Reload
	fld.s	$fa1, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$fa2, $fa0, $ft8, $fa1
	fmadd.s	$ft5, $ft7, $ft4, $fs5
	fmadd.s	$fa7, $fa0, $ft4, $fs1
	fmadd.s	$fs1, $fa0, $ft6, $ft15
	fmadd.s	$ft2, $ft7, $ft6, $ft12
	fnmadd.s	$ft15, $ft7, $ft8, $fs6
	fnmadd.s	$fa6, $ft7, $ft4, $fs5
	fnmadd.s	$fs6, $ft7, $ft6, $ft12
	fld.s	$fa0, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$ft7, $ft11, $ft8, $fa0
	fnmadd.s	$fa1, $ft11, $ft8, $fa0
	fmadd.s	$ft8, $ft11, $ft4, $fs7
	fnmadd.s	$fa4, $ft11, $ft4, $fs7
	fmadd.s	$ft4, $ft11, $ft6, $fs2
	fnmadd.s	$fa0, $ft11, $ft6, $fs2
	fmov.s	$fs2, $fa7
	fld.s	$fa7, $s2, 4
	fmadd.s	$ft6, $ft1, $fs3, $fa3
	fnmadd.s	$fa3, $ft1, $fs3, $fa3
	fmadd.s	$ft11, $ft1, $ft10, $fs0
	fnmadd.s	$ft10, $ft1, $ft10, $fs0
	fmov.s	$fs0, $fa2
	fld.s	$fa2, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$ft12, $ft1, $fa2, $fa5
	fnmadd.s	$fa5, $ft1, $fa2, $fa5
	ld.d	$a3, $s2, 48
	fmul.s	$fa7, $fs4, $fa7
	fsub.s	$ft1, $ft9, $ft0
	fmul.s	$ft1, $fa7, $ft1
	fst.s	$ft1, $a3, 0
	fld.s	$fa2, $sp, 20                   # 4-byte Folded Reload
	fsub.s	$ft1, $ft13, $fa2
	fmul.s	$ft1, $fa7, $ft1
	fstx.s	$ft1, $a3, $a4
	fld.s	$fa2, $sp, 48                   # 4-byte Folded Reload
	fsub.s	$ft1, $ft14, $fa2
	fmul.s	$ft1, $fa7, $ft1
	slli.d	$a5, $a0, 3
	fstx.s	$ft1, $a3, $a5
	fmul.s	$fa3, $fs1, $fa3
	fmadd.s	$fa3, $fs2, $ft11, $fa3
	fmul.s	$ft1, $fs0, $ft10
	fmadd.s	$ft1, $fs1, $ft12, $ft1
	alsl.w	$a3, $a0, $a0, 1
	slli.d	$a5, $a3, 2
	fstx.s	$ft3, $a1, $a5
	addi.d	$a3, $a5, 4
	fstx.s	$ft5, $a1, $a3
	fmul.s	$ft5, $ft5, $ft1
	fmadd.s	$ft3, $fa3, $ft3, $ft5
	fmul.s	$ft1, $ft8, $ft1
	fmadd.s	$fa3, $fa3, $ft7, $ft1
	addi.d	$a6, $a5, 8
	fstx.s	$ft2, $a1, $a6
	addi.w	$a7, $a4, 0
	slli.d	$a7, $a7, 2
	fstx.s	$ft7, $a1, $a7
	addi.w	$t0, $a4, 1
	slli.d	$t0, $t0, 2
	fstx.s	$ft8, $a1, $t0
	fmul.s	$fa5, $fs2, $fa5
	fmadd.s	$fa5, $fs0, $ft6, $fa5
	fmadd.s	$ft1, $fa5, $ft2, $ft3
	fmadd.s	$fa3, $fa5, $ft4, $fa3
	addi.w	$a4, $a4, 2
	slli.d	$a4, $a4, 2
	fstx.s	$ft4, $a1, $a4
	fstx.s	$ft15, $a2, $a5
	fstx.s	$fa6, $a2, $a3
	fstx.s	$fs6, $a2, $a6
	fstx.s	$fa1, $a2, $a7
	fstx.s	$fa4, $a2, $t0
	ld.d	$a3, $s2, 48
	fstx.s	$fa0, $a2, $a4
	ld.bu	$s5, $fp, 782
	fmul.s	$fa0, $ft1, $fa7
	fstx.s	$fa0, $a3, $a5
	fmul.s	$fa0, $fa3, $fa7
	fstx.s	$fa0, $a3, $a7
	beqz	$s5, .LBB11_2
# %bb.1:                                # %.thread
	fld.s	$fa0, $fp, 764
	fld.s	$fa1, $fp, 776
	fmul.s	$fs3, $fa0, $fa1
	ld.bu	$a4, $fp, 781
	movgr2fr.w	$fa0, $zero
	fcmp.clt.s	$fcc0, $fa0, $fs3
	movcf2gr	$s3, $fcc0
	sltui	$a4, $a4, 1
	b	.LBB11_4
.LBB11_2:
	ld.bu	$a4, $fp, 781
	beqz	$a4, .LBB11_14
# %bb.3:
	move	$a4, $zero
	move	$s3, $zero
	movgr2fr.w	$fs3, $zero
.LBB11_4:
	alsl.w	$s4, $a0, $a0, 2
	slli.d	$s6, $s4, 2
	fstx.s	$fs0, $a1, $s6
	addi.d	$a0, $s6, 4
	fstx.s	$fs2, $a1, $a0
	addi.d	$a5, $s6, 8
	fstx.s	$fs1, $a1, $a5
	fneg.s	$fa0, $fs0
	fstx.s	$fa0, $a2, $s6
	fneg.s	$fa0, $fs2
	fstx.s	$fa0, $a2, $a0
	fneg.s	$fa0, $fs1
	fstx.s	$fa0, $a2, $a5
	fld.s	$fa1, $fp, 748
	fld.s	$fa2, $fp, 752
	fcmp.ceq.s	$fcc1, $fa1, $fa2
	stx.w	$zero, $a3, $s6
	bnez	$a4, .LBB11_7
# %bb.5:
	movcf2gr	$a0, $fcc1
	and	$a0, $s5, $a0
	bnez	$a0, .LBB11_7
# %bb.6:
	ld.d	$a0, $s2, 56
	stx.w	$zero, $a0, $s6
	fld.s	$fa0, $fp, 772
	fld.s	$fa4, $s2, 0
	fld.s	$fa5, $s2, 4
	fld.s	$fa3, $fp, 728
	fmul.s	$fa4, $fa4, $fa5
	move	$a0, $fp
	movcf2gr	$a1, $fcc1
	st.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraint14getMotorFactorEfffff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	movgr2cf	$fcc1, $a0
	ld.d	$a3, $s2, 48
	fld.s	$fa1, $fp, 728
	fld.s	$fa2, $fp, 776
	fldx.s	$fa3, $a3, $s6
	fmul.s	$fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa0, $fa2, $fa3
	fstx.s	$fa0, $a3, $s6
	fld.s	$fa0, $fp, 732
	ld.d	$a0, $s2, 64
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a0, $s6
	fld.s	$fa0, $fp, 732
	ld.d	$a0, $s2, 72
	fstx.s	$fa0, $a0, $s6
.LBB11_7:
	beqz	$s5, .LBB11_14
# %bb.8:
	fld.s	$fa0, $s2, 0
	fld.s	$fa1, $s2, 4
	fldx.s	$fa2, $a3, $s6
	ld.d	$a0, $s2, 56
	fmul.s	$fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa0, $fs3, $fa2
	fstx.s	$fa0, $a3, $s6
	stx.w	$zero, $a0, $s6
	ld.d	$a0, $s2, 64
	pcalau12i	$a1, %pc_hi20(.LCPI11_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI11_0)
	andi	$a1, $s3, 1
	movgr2fr.w	$fa0, $zero
	movgr2cf	$fcc0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI11_1)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI11_1)
	fsel	$fa3, $fa1, $fa0, $fcc0
	fsel	$fa1, $fa3, $fa1, $fcc1
	ld.d	$a1, $s2, 72
	fsel	$fa3, $fa0, $fa2, $fcc0
	fsel	$fa2, $fa3, $fa2, $fcc1
	fstx.s	$fa1, $a0, $s6
	fstx.s	$fa2, $a1, $s6
	fld.s	$fa2, $fp, 744
	fcmp.clt.s	$fcc0, $fa0, $fa2
	alsl.d	$a0, $s4, $a3, 2
	bceqz	$fcc0, .LBB11_12
# %bb.9:
	fld.s	$fa1, $s1, 4
	fld.s	$fa3, $s1, 0
	fld.s	$fa4, $s1, 8
	fmul.s	$fa1, $fs2, $fa1
	fmadd.s	$fa1, $fa3, $fs0, $fa1
	fld.s	$fa3, $s0, 4
	fmadd.s	$fa4, $fa4, $fs1, $fa1
	fld.s	$fa5, $s0, 0
	fld.s	$fa6, $s0, 8
	fmul.s	$fa3, $fs2, $fa3
	fld.s	$fa1, $a0, 0
	fmadd.s	$fa3, $fa5, $fs0, $fa3
	fmadd.s	$fa3, $fa6, $fs1, $fa3
	fsub.s	$fa3, $fa4, $fa3
	beqz	$s3, .LBB11_15
# %bb.10:
	fcmp.cule.s	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB11_13
# %bb.11:
	fneg.s	$fa0, $fa2
	fmul.s	$fa0, $fa3, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB11_13
	b	.LBB11_17
.LBB11_12:                              # %._crit_edge
	fld.s	$fa1, $a0, 0
.LBB11_13:
	fld.s	$fa0, $fp, 740
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 0
.LBB11_14:
	fld.d	$fs7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB11_15:
	fcmp.cule.s	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB11_13
# %bb.16:
	fneg.s	$fa0, $fa2
	fmul.s	$fa0, $fa3, $fa0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_13
.LBB11_17:
	fst.s	$fa0, $a0, 0
	fmov.s	$fa1, $fa0
	b	.LBB11_13
.Lfunc_end11:
	.size	_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_, .Lfunc_end11-_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN17btHingeConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ # -- Begin function _ZN17btHingeConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_
	.p2align	5
	.type	_ZN17btHingeConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_,@function
_ZN17btHingeConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_: # @_ZN17btHingeConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s4, 748
	fld.s	$fa2, $s4, 752
	fst.s	$fa0, $s4, 772
	st.d	$zero, $s4, 760
	fcmp.cult.s	$fcc0, $fa2, $fa1
	st.b	$zero, $s4, 782
	bcnez	$fcc0, .LBB12_6
# %bb.1:
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s4, 748
	fcmp.cle.s	$fcc0, $fa0, $fa1
	fst.s	$fa0, $s4, 772
	bcnez	$fcc0, .LBB12_4
# %bb.2:
	fld.s	$fa1, $s4, 752
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_6
# %bb.3:
	vldi	$vr2, -1040
	b	.LBB12_5
.LBB12_4:
	vldi	$vr2, -1168
.LBB12_5:                               # %.sink.split.i
	fsub.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s4, 764
	fst.s	$fa2, $s4, 760
	ori	$a0, $zero, 1
	st.b	$a0, $s4, 782
.LBB12_6:                               # %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_)
	jr	$t8
.Lfunc_end12:
	.size	_ZN17btHingeConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_, .Lfunc_end12-_ZN17btHingeConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN17btHingeConstraint9updateRHSEf # -- Begin function _ZN17btHingeConstraint9updateRHSEf
	.p2align	5
	.type	_ZN17btHingeConstraint9updateRHSEf,@function
_ZN17btHingeConstraint9updateRHSEf:     # @_ZN17btHingeConstraint9updateRHSEf
# %bb.0:
	ret
.Lfunc_end13:
	.size	_ZN17btHingeConstraint9updateRHSEf, .Lfunc_end13-_ZN17btHingeConstraint9updateRHSEf
                                        # -- End function
	.globl	_ZN17btHingeConstraint13getHingeAngleEv # -- Begin function _ZN17btHingeConstraint13getHingeAngleEv
	.p2align	5
	.type	_ZN17btHingeConstraint13getHingeAngleEv,@function
_ZN17btHingeConstraint13getHingeAngleEv: # @_ZN17btHingeConstraint13getHingeAngleEv
# %bb.0:
	ld.d	$a1, $a0, 24
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	pcaddu18i	$t8, %call36(_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_)
	jr	$t8
.Lfunc_end14:
	.size	_ZN17btHingeConstraint13getHingeAngleEv, .Lfunc_end14-_ZN17btHingeConstraint13getHingeAngleEv
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_
.LCPI15_0:
	.word	0x3f490fdb                      # float 0.785398185
.LCPI15_1:
	.word	0xbf490fdb                      # float -0.785398185
.LCPI15_2:
	.word	0x4016cbe4                      # float 2.3561945
	.text
	.globl	_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_
	.p2align	5
	.type	_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_,@function
_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_: # @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_
# %bb.0:
	fld.s	$fa0, $a0, 600
	fld.s	$fa1, $a0, 616
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a0, 632
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a1, 8
	fmul.s	$fa6, $fa1, $fa2
	fld.s	$fa7, $a1, 20
	fmadd.s	$fa6, $fa4, $fa0, $fa6
	fmadd.s	$fa6, $fa5, $fa3, $fa6
	fld.s	$ft0, $a1, 16
	fmul.s	$ft1, $fa1, $fa7
	fld.s	$ft2, $a1, 24
	fld.s	$ft3, $a1, 36
	fld.s	$ft4, $a1, 32
	fmadd.s	$ft1, $ft0, $fa0, $ft1
	fmadd.s	$ft1, $ft2, $fa3, $ft1
	fmul.s	$fa1, $fa1, $ft3
	fmadd.s	$fa0, $ft4, $fa0, $fa1
	fld.s	$fa1, $a1, 40
	fld.s	$ft5, $a0, 620
	fld.s	$ft6, $a0, 604
	fld.s	$ft7, $a0, 636
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	fmul.s	$fa2, $fa2, $ft5
	fmadd.s	$fa2, $fa4, $ft6, $fa2
	fmadd.s	$fa2, $fa5, $ft7, $fa2
	fmul.s	$fa3, $fa7, $ft5
	fmadd.s	$fa3, $ft0, $ft6, $fa3
	fmadd.s	$fa3, $ft2, $ft7, $fa3
	fmul.s	$fa4, $ft3, $ft5
	fmadd.s	$fa4, $ft4, $ft6, $fa4
	fmadd.s	$fa1, $fa1, $ft7, $fa4
	fld.s	$fa4, $a0, 684
	fld.s	$fa5, $a2, 4
	fld.s	$fa7, $a0, 668
	fld.s	$ft0, $a0, 700
	fld.s	$ft2, $a2, 0
	fmul.s	$fa5, $fa4, $fa5
	fld.s	$ft3, $a2, 8
	fld.s	$ft4, $a2, 20
	fld.s	$ft5, $a2, 16
	fmadd.s	$fa5, $ft2, $fa7, $fa5
	fmadd.s	$fa5, $ft3, $ft0, $fa5
	fmul.s	$ft2, $fa4, $ft4
	fmadd.s	$ft2, $ft5, $fa7, $ft2
	fld.s	$ft3, $a2, 24
	fld.s	$ft4, $a2, 36
	fld.s	$ft5, $a2, 32
	fld.s	$ft6, $a2, 40
	fmadd.s	$ft2, $ft3, $ft0, $ft2
	fmul.s	$fa4, $fa4, $ft4
	fmadd.s	$fa4, $ft5, $fa7, $fa4
	fmadd.s	$fa4, $ft6, $ft0, $fa4
	fmul.s	$fa7, $ft1, $ft2
	fmadd.s	$fa6, $fa5, $fa6, $fa7
	fmadd.s	$fa0, $fa4, $fa0, $fa6
	fmul.s	$fa3, $fa3, $ft2
	fmadd.s	$fa2, $fa5, $fa2, $fa3
	fmadd.s	$fa2, $fa4, $fa1, $fa2
	movgr2fr.w	$fa1, $zero
	fcmp.cult.s	$fcc0, $fa2, $fa1
	fabs.s	$fa3, $fa0
	bceqz	$fcc0, .LBB15_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(.LCPI15_2)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI15_2)
	pcalau12i	$a1, %pc_hi20(.LCPI15_1)
	fld.s	$fa5, $a1, %pc_lo12(.LCPI15_1)
	fadd.s	$fa6, $fa2, $fa3
	fsub.s	$fa2, $fa3, $fa2
	b	.LBB15_3
.LBB15_2:
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI15_0)
	pcalau12i	$a1, %pc_hi20(.LCPI15_1)
	fld.s	$fa5, $a1, %pc_lo12(.LCPI15_1)
	fsub.s	$fa6, $fa2, $fa3
	fadd.s	$fa2, $fa2, $fa3
.LBB15_3:                               # %_Z11btAtan2Fastff.exit
	fdiv.s	$fa2, $fa6, $fa2
	fmadd.s	$fa2, $fa2, $fa5, $fa4
	fld.s	$fa3, $a0, 776
	fneg.s	$fa4, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa2, $fa4, $fcc0
	fmul.s	$fa0, $fa3, $fa0
	ret
.Lfunc_end15:
	.size	_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_, .Lfunc_end15-_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z21btAdjustAngleToLimitsfff
.LCPI16_0:
	.word	0x40c90fdb                      # float 6.28318548
.LCPI16_1:
	.word	0xc0490fdb                      # float -3.14159274
.LCPI16_2:
	.word	0x40490fdb                      # float 3.14159274
.LCPI16_3:
	.word	0xc0c90fdb                      # float -6.28318548
	.section	.text._Z21btAdjustAngleToLimitsfff,"axG",@progbits,_Z21btAdjustAngleToLimitsfff,comdat
	.weak	_Z21btAdjustAngleToLimitsfff
	.p2align	5
	.type	_Z21btAdjustAngleToLimitsfff,@function
_Z21btAdjustAngleToLimitsfff:           # @_Z21btAdjustAngleToLimitsfff
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	fcmp.cle.s	$fcc0, $fa2, $fa1
	fmov.s	$fs0, $fa0
	bcnez	$fcc0, .LBB16_21
# %bb.1:
	fcmp.cule.s	$fcc0, $fa1, $fs0
	bcnez	$fcc0, .LBB16_4
# %bb.2:
	fmov.s	$fs4, $fa2
	fsub.s	$fa0, $fa1, $fs0
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI16_0)
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	fld.s	$fs3, $a0, %pc_lo12(.LCPI16_1)
	fmov.s	$fs2, $fa0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB16_7
# %bb.3:
	fadd.s	$fs2, $fs2, $fs1
	b	.LBB16_9
.LBB16_4:
	fcmp.cule.s	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB16_21
# %bb.5:
	fmov.s	$fs4, $fa1
	fsub.s	$fa0, $fs0, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.s	$fs2, $a0, %pc_lo12(.LCPI16_0)
	fmov.s	$fa1, $fs2
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	fld.s	$fs3, $a0, %pc_lo12(.LCPI16_1)
	fmov.s	$fs1, $fa0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	pcalau12i	$s0, %pc_hi20(.LCPI16_2)
	pcalau12i	$fp, %pc_hi20(.LCPI16_3)
	bcnez	$fcc0, .LBB16_14
# %bb.6:
	fadd.s	$fs1, $fs1, $fs2
	b	.LBB16_16
.LBB16_7:
	pcalau12i	$a0, %pc_hi20(.LCPI16_2)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI16_2)
	fcmp.cule.s	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB16_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.LCPI16_3)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI16_3)
	fadd.s	$fs2, $fs2, $fa0
.LBB16_9:                               # %_Z16btNormalizeAnglef.exit
	fsub.s	$fa0, $fs4, $fs0
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB16_11
# %bb.10:
	fadd.s	$fa0, $fa0, $fs1
	b	.LBB16_13
.LBB16_11:
	pcalau12i	$a0, %pc_hi20(.LCPI16_2)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI16_2)
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.LCPI16_3)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI16_3)
	fadd.s	$fa0, $fa0, $fa1
.LBB16_13:                              # %_Z16btNormalizeAnglef.exit29
	fabs.s	$fa0, $fa0
	fadd.s	$fa1, $fs0, $fs1
	fcmp.clt.s	$fcc0, $fs2, $fa0
	fsel	$fs0, $fa1, $fs0, $fcc0
	b	.LBB16_21
.LBB16_14:
	fld.s	$fa0, $s0, %pc_lo12(.LCPI16_2)
	fcmp.cule.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB16_16
# %bb.15:
	fld.s	$fa0, $fp, %pc_lo12(.LCPI16_3)
	fadd.s	$fs1, $fs1, $fa0
.LBB16_16:                              # %_Z16btNormalizeAnglef.exit31
	fsub.s	$fa0, $fs0, $fs4
	fmov.s	$fa1, $fs2
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB16_18
# %bb.17:
	fadd.s	$fa0, $fa0, $fs2
	b	.LBB16_20
.LBB16_18:
	fld.s	$fa1, $s0, %pc_lo12(.LCPI16_2)
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_20
# %bb.19:
	fld.s	$fa1, $fp, %pc_lo12(.LCPI16_3)
	fadd.s	$fa0, $fa0, $fa1
.LBB16_20:                              # %_Z16btNormalizeAnglef.exit33
	fld.s	$fa1, $fp, %pc_lo12(.LCPI16_3)
	fabs.s	$fa0, $fa0
	fadd.s	$fa1, $fs0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fs1
	fsel	$fs0, $fs0, $fa1, $fcc0
.LBB16_21:
	fmov.s	$fa0, $fs0
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end16:
	.size	_Z21btAdjustAngleToLimitsfff, .Lfunc_end16-_Z21btAdjustAngleToLimitsfff
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf
.LCPI17_0:
	.word	0xbf7ffffe                      # float -0.99999988
.LCPI17_1:
	.word	0x40490fdb                      # float 3.14159274
	.text
	.globl	_ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf
	.p2align	5
	.type	_ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf,@function
_ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf: # @_ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf
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
	fst.d	$fs6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 56                   # 8-byte Folded Spill
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$a0, $a0, 664
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	ld.d	$a1, $sp, 48
	movgr2fr.w	$fs1, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fs2, $a0
	movgr2fr.w	$fs3, $a1
	srli.d	$a0, $a1, 32
	fneg.s	$fa0, $fs1
	fneg.s	$fa1, $fs2
	fneg.s	$fa2, $fs3
	movgr2fr.w	$fa3, $a0
	fld.s	$fa4, $s0, 12
	fld.s	$fs4, $s0, 0
	fld.s	$fs5, $s0, 8
	fld.s	$fs6, $s0, 4
	fmul.s	$fa5, $fa4, $fa0
	fmadd.s	$fa5, $fa3, $fs4, $fa5
	fmadd.s	$fa5, $fa1, $fs5, $fa5
	fst.s	$fa5, $sp, 28                   # 4-byte Folded Spill
	fmadd.s	$fa5, $fs3, $fs6, $fa5
	fst.s	$fa5, $sp, 24                   # 4-byte Folded Spill
	fmul.s	$fa1, $fa4, $fa1
	fmadd.s	$fa1, $fa3, $fs6, $fa1
	fmadd.s	$fa1, $fa2, $fs4, $fa1
	fst.s	$fa1, $sp, 32                   # 4-byte Folded Spill
	fmadd.s	$fa1, $fs1, $fs5, $fa1
	fst.s	$fa1, $sp, 16                   # 4-byte Folded Spill
	fmul.s	$fa1, $fa4, $fa2
	fmadd.s	$fa1, $fa3, $fs5, $fa1
	fmadd.s	$fs7, $fa0, $fs6, $fa1
	fmadd.s	$fa0, $fs2, $fs4, $fs7
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fmul.s	$fa0, $fs4, $fs1
	fmadd.s	$fa0, $fa3, $fa4, $fa0
	fmadd.s	$fa0, $fs2, $fs6, $fa0
	fmadd.s	$fs0, $fs3, $fs5, $fa0
	addi.d	$a0, $fp, 600
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	ld.d	$a1, $sp, 48
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	srli.d	$a0, $a1, 32
	movgr2fr.w	$fa3, $a0
	fld.s	$ft0, $sp, 24                   # 4-byte Folded Reload
	fmul.s	$fa4, $ft0, $fa3
	fmadd.s	$fa4, $fs0, $fa0, $fa4
	fld.s	$fa6, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fa6, $fa2, $fa4
	fnmadd.s	$fa5, $fs2, $fs4, $fs7
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fmul.s	$fa6, $fa6, $fa3
	fmadd.s	$fa6, $fs0, $fa1, $fa6
	fld.s	$ft1, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$fa6, $ft1, $fa0, $fa6
	fld.s	$fa7, $sp, 28                   # 4-byte Folded Reload
	fnmadd.s	$fa7, $fs3, $fs6, $fa7
	fmadd.s	$fa6, $fa7, $fa2, $fa6
	fmul.s	$fa7, $ft1, $fa3
	fmadd.s	$fa7, $fs0, $fa2, $fa7
	fmadd.s	$fa7, $ft0, $fa1, $fa7
	fmov.s	$ft1, $ft0
	fld.s	$ft0, $sp, 32                   # 4-byte Folded Reload
	fnmadd.s	$ft0, $fs1, $fs5, $ft0
	fmadd.s	$fa7, $ft0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $ft1, $fa0
	fmadd.s	$fa0, $fs0, $fa3, $fa0
	fmadd.s	$fa0, $ft0, $fa1, $fa0
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmul.s	$fa1, $fa6, $fa6
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fmadd.s	$fa1, $fa7, $fa7, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fs3, $fa4, $fa1
	fmul.s	$fs1, $fa6, $fa1
	fmul.s	$fs2, $fa7, $fa1
	fmul.s	$fs4, $fa0, $fa1
	movgr2fr.w	$fa1, $zero
	fmadd.s	$fa0, $fs4, $fa1, $fs1
	fneg.s	$fa2, $fs2
	fneg.s	$fa3, $fa1
	fmadd.s	$fa0, $fs2, $fa3, $fa0
	fmul.s	$fa4, $fs2, $fa1
	fmadd.s	$fa4, $fs4, $fa1, $fa4
	fneg.s	$fa5, $fs3
	fsub.s	$fa4, $fa4, $fs3
	fmul.s	$fa6, $fs3, $fa1
	fadd.s	$fa6, $fs4, $fa6
	fneg.s	$fa7, $fs1
	fmadd.s	$fa6, $fs1, $fa3, $fa6
	fmul.s	$ft0, $fs1, $fa3
	fmadd.s	$fa3, $fs3, $fa3, $ft0
	fsub.s	$fa3, $fa3, $fs2
	fmul.s	$ft0, $fs4, $fa0
	fmadd.s	$ft0, $fa3, $fa5, $ft0
	fmadd.s	$ft0, $fa4, $fa2, $ft0
	fmadd.s	$ft0, $fa6, $fs1, $ft0
	fmul.s	$ft1, $fs4, $fa4
	fmadd.s	$ft1, $fa3, $fa7, $ft1
	fmadd.s	$fa5, $fa6, $fa5, $ft1
	fmadd.s	$fa5, $fa0, $fs2, $fa5
	fmul.s	$fa6, $fs4, $fa6
	fmadd.s	$fa2, $fa3, $fa2, $fa6
	fmadd.s	$fa0, $fa0, $fa7, $fa2
	fmadd.s	$fa3, $fa4, $fs3, $fa0
	fmul.s	$fa0, $fa5, $fa5
	fmadd.s	$fa0, $ft0, $ft0, $fa0
	fmadd.s	$fa0, $fa3, $fa3, $fa0
	frsqrt.s	$fa4, $fa0
	fmul.s	$fa0, $ft0, $fa4
	fmul.s	$fa2, $fa5, $fa4
	fmul.s	$fa3, $fa3, $fa4
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	fld.s	$fa5, $a0, %pc_lo12(.LCPI17_0)
	fmul.s	$fa4, $fa2, $fa1
	fmadd.s	$fa4, $fa0, $fa1, $fa4
	fadd.s	$fa4, $fa3, $fa4
	fcmp.clt.s	$fcc0, $fa4, $fa5
	bceqz	$fcc0, .LBB17_2
# %bb.1:
	vldi	$vr2, -1040
	fmov.s	$fa3, $fa1
	fmov.s	$fa0, $fa1
	b	.LBB17_4
.LBB17_2:
	movgr2fr.w	$fa5, $zero
	fmsub.s	$fs5, $fa3, $fa5, $fa2
	fneg.s	$fa1, $fa5
	fmul.s	$fa3, $fa3, $fa1
	fadd.s	$fs6, $fa0, $fa3
	fmul.s	$fa3, $fa0, $fa1
	vldi	$vr0, -1168
	fadd.s	$fa0, $fa4, $fa0
	fadd.s	$fa1, $fa0, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fmadd.s	$fs7, $fa2, $fa5, $fa3
	bceqz	$fcc0, .LBB17_12
.LBB17_3:                               # %.split
	frecip.s	$fa3, $fa0
	fmul.s	$fa1, $fs5, $fa3
	fmul.s	$fa2, $fs6, $fa3
	fmul.s	$fa3, $fs7, $fa3
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa0, $fa4
.LBB17_4:                               # %_Z15shortestArcQuatRK9btVector3S1_.exit
	fneg.s	$fa4, $fa1
	fneg.s	$fa5, $fa2
	fneg.s	$fa6, $fa3
	fmul.s	$fa7, $fs4, $fa4
	fmadd.s	$fa7, $fa0, $fs3, $fa7
	fmadd.s	$fa7, $fa5, $fs2, $fa7
	fmadd.s	$fa7, $fa3, $fs1, $fa7
	fmul.s	$fa5, $fs4, $fa5
	fmadd.s	$fa5, $fa0, $fs1, $fa5
	fmadd.s	$fa5, $fa6, $fs3, $fa5
	fmadd.s	$fa5, $fa1, $fs2, $fa5
	fmul.s	$fa6, $fs4, $fa6
	fmadd.s	$fa6, $fa0, $fs2, $fa6
	fmadd.s	$fa4, $fa4, $fs1, $fa6
	fmadd.s	$fa4, $fa2, $fs3, $fa4
	fmul.s	$fa1, $fs3, $fa1
	fmadd.s	$fa0, $fa0, $fs4, $fa1
	fmadd.s	$fa0, $fa2, $fs1, $fa0
	fmadd.s	$fa0, $fa3, $fs2, $fa0
	fmul.s	$fa1, $fa5, $fa5
	fmadd.s	$fa1, $fa7, $fa7, $fa1
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fs2, $fa4, $fa1
	fmul.s	$fs1, $fa0, $fa1
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI17_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI17_1)
	fadd.s	$fa0, $fa0, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_6
# %bb.5:
	fneg.s	$fs2, $fs2
	fneg.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fa0, $fa0
.LBB17_6:
	fld.s	$fs1, $fp, 748
	fld.s	$fa1, $fp, 752
	fneg.s	$fa2, $fa0
	movgr2fr.w	$fa3, $zero
	fcmp.clt.s	$fcc0, $fs2, $fa3
	fcmp.cule.s	$fcc1, $fa1, $fs1
	fsel	$fa0, $fa0, $fa2, $fcc0
	bcnez	$fcc1, .LBB17_10
# %bb.7:
	fcmp.clt.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB17_11
# %bb.8:
	fcmp.cule.s	$fcc0, $fa0, $fa1
	fmov.s	$fs1, $fa0
	bcnez	$fcc0, .LBB17_11
# %bb.9:
	fmov.s	$fs1, $fa1
	b	.LBB17_11
.LBB17_10:
	fmov.s	$fs1, $fa0
.LBB17_11:                              # %_ZN17btHingeConstraint14setMotorTargetEff.exit
	ld.d	$a0, $fp, 24
	ld.d	$a2, $fp, 32
	addi.d	$a1, $a0, 8
	addi.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_)
	jirl	$ra, $ra, 0
	fsub.s	$fa0, $fs1, $fa0
	fld.s	$fa1, $sp, 36                   # 4-byte Folded Reload
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 728
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
.LBB17_12:                              # %call.sqrt
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	b	.LBB17_3
.Lfunc_end17:
	.size	_ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf, .Lfunc_end17-_ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf
                                        # -- End function
	.globl	_ZN17btHingeConstraint14setMotorTargetEff # -- Begin function _ZN17btHingeConstraint14setMotorTargetEff
	.p2align	5
	.type	_ZN17btHingeConstraint14setMotorTargetEff,@function
_ZN17btHingeConstraint14setMotorTargetEff: # @_ZN17btHingeConstraint14setMotorTargetEff
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	fld.s	$fs1, $a0, 748
	fld.s	$fa2, $a0, 752
	fcmp.cule.s	$fcc0, $fa2, $fs1
	fmov.s	$fs0, $fa1
	bcnez	$fcc0, .LBB18_4
# %bb.1:
	fcmp.clt.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB18_5
# %bb.2:
	fcmp.cule.s	$fcc0, $fa0, $fa2
	fmov.s	$fs1, $fa0
	bcnez	$fcc0, .LBB18_5
# %bb.3:
	fmov.s	$fs1, $fa2
	b	.LBB18_5
.LBB18_4:
	fmov.s	$fs1, $fa0
.LBB18_5:
	ld.d	$a0, $fp, 24
	ld.d	$a2, $fp, 32
	addi.d	$a1, $a0, 8
	addi.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_)
	jirl	$ra, $ra, 0
	fsub.s	$fa0, $fs1, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fst.s	$fa0, $fp, 728
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end18:
	.size	_ZN17btHingeConstraint14setMotorTargetEff, .Lfunc_end18-_ZN17btHingeConstraint14setMotorTargetEff
                                        # -- End function
	.section	.text._ZN17btTypedConstraintD2Ev,"axG",@progbits,_ZN17btTypedConstraintD2Ev,comdat
	.weak	_ZN17btTypedConstraintD2Ev      # -- Begin function _ZN17btTypedConstraintD2Ev
	.p2align	5
	.type	_ZN17btTypedConstraintD2Ev,@function
_ZN17btTypedConstraintD2Ev:             # @_ZN17btTypedConstraintD2Ev
# %bb.0:
	ret
.Lfunc_end19:
	.size	_ZN17btTypedConstraintD2Ev, .Lfunc_end19-_ZN17btTypedConstraintD2Ev
                                        # -- End function
	.section	.text._ZN17btHingeConstraintD0Ev,"axG",@progbits,_ZN17btHingeConstraintD0Ev,comdat
	.weak	_ZN17btHingeConstraintD0Ev      # -- Begin function _ZN17btHingeConstraintD0Ev
	.p2align	5
	.type	_ZN17btHingeConstraintD0Ev,@function
_ZN17btHingeConstraintD0Ev:             # @_ZN17btHingeConstraintD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end20:
	.size	_ZN17btHingeConstraintD0Ev, .Lfunc_end20-_ZN17btHingeConstraintD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,"axG",@progbits,_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,comdat
	.weak	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif # -- Begin function _ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.p2align	5
	.type	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,@function
_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif: # @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
# %bb.0:
	ret
.Lfunc_end21:
	.size	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, .Lfunc_end21-_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
                                        # -- End function
	.section	.text._ZNK11btMatrix3x311getRotationER12btQuaternion,"axG",@progbits,_ZNK11btMatrix3x311getRotationER12btQuaternion,comdat
	.weak	_ZNK11btMatrix3x311getRotationER12btQuaternion # -- Begin function _ZNK11btMatrix3x311getRotationER12btQuaternion
	.p2align	5
	.type	_ZNK11btMatrix3x311getRotationER12btQuaternion,@function
_ZNK11btMatrix3x311getRotationER12btQuaternion: # @_ZNK11btMatrix3x311getRotationER12btQuaternion
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
	fld.s	$fa0, $a0, 0
	fld.s	$fa2, $a0, 20
	fld.s	$fa1, $a0, 40
	fadd.s	$fa3, $fa0, $fa2
	fadd.s	$fa3, $fa3, $fa1
	movgr2fr.w	$fa4, $zero
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB22_3
# %bb.1:
	vldi	$vr0, -1168
	fadd.s	$fa1, $fa3, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB22_6
.LBB22_2:                               # %.split
	fld.s	$fa1, $a0, 36
	fld.s	$fa2, $a0, 24
	fld.s	$fa3, $a0, 8
	fld.s	$fa4, $a0, 32
	fsub.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $a0, 16
	fld.s	$fa5, $a0, 4
	fsub.s	$fa3, $fa3, $fa4
	vldi	$vr4, -1184
	fdiv.s	$fa4, $fa4, $fa0
	fsub.s	$fa2, $fa2, $fa5
	vextrins.w	$vr4, $vr0, 16
	vshuf4i.w	$vr0, $vr4, 64
	vldi	$vr4, -3265
	vextrins.w	$vr4, $vr1, 0
	vextrins.w	$vr4, $vr3, 16
	vextrins.w	$vr4, $vr2, 32
	vfmul.s	$vr0, $vr0, $vr4
	b	.LBB22_5
.LBB22_3:
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fcmp.clt.s	$fcc1, $fa0, $fa2
	movcf2gr	$a2, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a2, $a2, 1
	movcf2gr	$a3, $fcc0
	slli.d	$a3, $a3, 1
	movcf2gr	$a4, $fcc1
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	addi.d	$a3, $a2, 1
	addi.d	$a4, $a3, -3
	sltui	$a4, $a4, 1
	masknez	$a3, $a3, $a4
	addi.d	$a4, $a2, -1
	sltui	$a5, $a2, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 2
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	alsl.d	$fp, $a2, $a0, 4
	slli.d	$s1, $a2, 2
	fldx.s	$fa0, $fp, $s1
	alsl.d	$s4, $a3, $a0, 4
	slli.d	$s0, $a3, 2
	fldx.s	$fa1, $s4, $s0
	alsl.d	$s3, $a4, $a0, 4
	slli.d	$s2, $a4, 2
	fldx.s	$fa2, $s3, $s2
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa0, $fa0, $fa2
	vldi	$vr1, -1168
	fadd.s	$fa1, $fa0, $fa1
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB22_7
.LBB22_4:                               # %.split47
	vldi	$vr1, -1184
	fmul.s	$fa2, $fa0, $fa1
	addi.d	$a0, $sp, 16
	fldx.s	$fa3, $s3, $s0
	fldx.s	$fa4, $s4, $s2
	or	$a2, $a0, $s1
	fst.s	$fa2, $a2, 0
	fdiv.s	$fa0, $fa1, $fa0
	fsub.s	$fa1, $fa3, $fa4
	fmul.s	$fa1, $fa0, $fa1
	fldx.s	$fa2, $s4, $s1
	fldx.s	$fa3, $fp, $s0
	fst.s	$fa1, $sp, 28
	fldx.s	$fa1, $s3, $s1
	fldx.s	$fa4, $fp, $s2
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s0, $a0
	fadd.s	$fa1, $fa1, $fa4
	fmul.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $s2, $a0
	vld	$vr0, $sp, 16
.LBB22_5:
	vst	$vr0, $a1, 0
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
.LBB22_6:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB22_2
.LBB22_7:                               # %call.sqrt48
	fmov.s	$fa0, $fa1
	move	$s5, $a1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	b	.LBB22_4
.Lfunc_end22:
	.size	_ZNK11btMatrix3x311getRotationER12btQuaternion, .Lfunc_end22-_ZNK11btMatrix3x311getRotationER12btQuaternion
                                        # -- End function
	.type	_ZTV17btHingeConstraint,@object # @_ZTV17btHingeConstraint
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV17btHingeConstraint
	.p2align	3, 0x0
_ZTV17btHingeConstraint:
	.dword	0
	.dword	_ZTI17btHingeConstraint
	.dword	_ZN17btTypedConstraintD2Ev
	.dword	_ZN17btHingeConstraintD0Ev
	.dword	_ZN17btHingeConstraint13buildJacobianEv
	.dword	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.dword	_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.dword	_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.dword	_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.size	_ZTV17btHingeConstraint, 72

	.type	_ZTI17btHingeConstraint,@object # @_ZTI17btHingeConstraint
	.globl	_ZTI17btHingeConstraint
	.p2align	3, 0x0
_ZTI17btHingeConstraint:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS17btHingeConstraint
	.dword	_ZTI17btTypedConstraint
	.size	_ZTI17btHingeConstraint, 24

	.type	_ZTS17btHingeConstraint,@object # @_ZTS17btHingeConstraint
	.section	.rodata,"a",@progbits
	.globl	_ZTS17btHingeConstraint
_ZTS17btHingeConstraint:
	.asciz	"17btHingeConstraint"
	.size	_ZTS17btHingeConstraint, 20

	.type	_ZTI17btTypedConstraint,@object # @_ZTI17btTypedConstraint
	.section	.data.rel.ro._ZTI17btTypedConstraint,"awG",@progbits,_ZTI17btTypedConstraint,comdat
	.weak	_ZTI17btTypedConstraint
	.p2align	3, 0x0
_ZTI17btTypedConstraint:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS17btTypedConstraint
	.word	0                               # 0x0
	.word	1                               # 0x1
	.dword	_ZTI13btTypedObject
	.dword	2050                            # 0x802
	.size	_ZTI17btTypedConstraint, 40

	.type	_ZTS17btTypedConstraint,@object # @_ZTS17btTypedConstraint
	.section	.rodata._ZTS17btTypedConstraint,"aG",@progbits,_ZTS17btTypedConstraint,comdat
	.weak	_ZTS17btTypedConstraint
_ZTS17btTypedConstraint:
	.asciz	"17btTypedConstraint"
	.size	_ZTS17btTypedConstraint, 20

	.type	_ZTI13btTypedObject,@object     # @_ZTI13btTypedObject
	.section	.data.rel.ro._ZTI13btTypedObject,"awG",@progbits,_ZTI13btTypedObject,comdat
	.weak	_ZTI13btTypedObject
	.p2align	3, 0x0
_ZTI13btTypedObject:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS13btTypedObject
	.size	_ZTI13btTypedObject, 16

	.type	_ZTS13btTypedObject,@object     # @_ZTS13btTypedObject
	.section	.rodata._ZTS13btTypedObject,"aG",@progbits,_ZTS13btTypedObject,comdat
	.weak	_ZTS13btTypedObject
_ZTS13btTypedObject:
	.asciz	"13btTypedObject"
	.size	_ZTS13btTypedObject, 16

	.globl	_ZN17btHingeConstraintC1Ev
	.type	_ZN17btHingeConstraintC1Ev,@function
_ZN17btHingeConstraintC1Ev = _ZN17btHingeConstraintC2Ev
	.globl	_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b
	.type	_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b,@function
_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b = _ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b
	.globl	_ZN17btHingeConstraintC1ER11btRigidBodyRK9btVector3RS2_b
	.type	_ZN17btHingeConstraintC1ER11btRigidBodyRK9btVector3RS2_b,@function
_ZN17btHingeConstraintC1ER11btRigidBodyRK9btVector3RS2_b = _ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b
	.globl	_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b
	.type	_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b,@function
_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b = _ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.globl	_ZN17btHingeConstraintC1ER11btRigidBodyRK11btTransformb
	.type	_ZN17btHingeConstraintC1ER11btRigidBodyRK11btTransformb,@function
_ZN17btHingeConstraintC1ER11btRigidBodyRK11btTransformb = _ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZTI17btHingeConstraint
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS17btHingeConstraint
	.addrsig_sym _ZTI17btTypedConstraint
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS17btTypedConstraint
	.addrsig_sym _ZTI13btTypedObject
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS13btTypedObject
