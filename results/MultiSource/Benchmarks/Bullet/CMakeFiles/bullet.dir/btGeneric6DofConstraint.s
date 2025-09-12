	.file	"btGeneric6DofConstraint.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN23btGeneric6DofConstraintC2Ev
.LCPI0_0:
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x3dcccccd                      # float 0.100000001
.LCPI0_1:
	.word	0x43960000                      # float 300
	.word	0x3f800000                      # float 1
	.word	0x3f000000                      # float 0.5
	.word	0x3f000000                      # float 0.5
.LCPI0_2:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
.LCPI0_3:
	.word	0x3dcccccd                      # float 0.100000001
	.word	0x43960000                      # float 300
	.word	0x3f800000                      # float 1
	.word	0x3f000000                      # float 0.5
	.text
	.globl	_ZN23btGeneric6DofConstraintC2Ev
	.p2align	5
	.type	_ZN23btGeneric6DofConstraintC2Ev,@function
_ZN23btGeneric6DofConstraintC2Ev:       # @_ZN23btGeneric6DofConstraintC2Ev
	.cfi_startproc
# %bb.0:                                # %.preheader20.preheader
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintType)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV23btGeneric6DofConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV23btGeneric6DofConstraint+16)
	st.d	$a0, $fp, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 728
	vst	$vr0, $fp, 744
	vst	$vr0, $fp, 760
	lu12i.w	$a0, 258867
	ori	$a0, $a0, 819
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $fp, 776
	lu12i.w	$a0, 258048
	st.w	$a0, $fp, 784
	st.h	$zero, $fp, 788
	st.b	$zero, $fp, 790
	st.d	$zero, $fp, 792
	st.w	$zero, $fp, 800
	st.d	$zero, $fp, 808
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	st.w	$zero, $fp, 816
	vst	$vr0, $fp, 868
	st.w	$zero, $fp, 900
	vst	$vr1, $fp, 884
	st.w	$zero, $fp, 916
	st.w	$zero, $fp, 908
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_2)
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_3)
	st.b	$zero, $fp, 904
	vst	$vr0, $fp, 920
	st.d	$a0, $fp, 952
	vst	$vr1, $fp, 936
	st.w	$zero, $fp, 972
	st.w	$zero, $fp, 964
	st.b	$zero, $fp, 960
	vst	$vr0, $fp, 976
	st.d	$a0, $fp, 1008
	vst	$vr1, $fp, 992
	st.d	$zero, $fp, 1028
	st.w	$zero, $fp, 1020
	st.b	$zero, $fp, 1016
	ori	$a0, $zero, 1
	st.h	$a0, $fp, 1264
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN23btGeneric6DofConstraintC2Ev, .Lfunc_end0-_ZN23btGeneric6DofConstraintC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
.LCPI1_0:
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x3dcccccd                      # float 0.100000001
.LCPI1_1:
	.word	0x43960000                      # float 300
	.word	0x3f800000                      # float 1
	.word	0x3f000000                      # float 0.5
	.word	0x3f000000                      # float 0.5
.LCPI1_2:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
.LCPI1_3:
	.word	0x3dcccccd                      # float 0.100000001
	.word	0x43960000                      # float 300
	.word	0x3f800000                      # float 1
	.word	0x3f000000                      # float 0.5
	.text
	.globl	_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.p2align	5
	.type	_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b,@function
_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b: # @_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.cfi_startproc
# %bb.0:                                # %.preheader25.preheader
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
	move	$s1, $a4
	move	$s2, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$s0, $a0
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV23btGeneric6DofConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV23btGeneric6DofConstraint+16)
	st.d	$a0, $s0, 0
	vld	$vr0, $s2, 0
	vst	$vr0, $s0, 96
	vld	$vr0, $s2, 16
	vst	$vr0, $s0, 112
	vld	$vr0, $s2, 32
	vst	$vr0, $s0, 128
	vld	$vr0, $s2, 48
	vst	$vr0, $s0, 144
	vld	$vr0, $s1, 0
	vst	$vr0, $s0, 160
	vld	$vr0, $s1, 16
	vst	$vr0, $s0, 176
	vld	$vr0, $s1, 32
	vst	$vr0, $s0, 192
	vld	$vr0, $s1, 48
	vst	$vr0, $s0, 208
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 728
	vst	$vr0, $s0, 744
	vst	$vr0, $s0, 760
	lu12i.w	$a0, 258867
	ori	$a0, $a0, 819
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $s0, 776
	lu12i.w	$a0, 258048
	st.w	$a0, $s0, 784
	st.b	$zero, $s0, 790
	st.h	$zero, $s0, 788
	st.d	$zero, $s0, 792
	st.w	$zero, $s0, 800
	st.d	$zero, $s0, 808
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_1)
	st.w	$zero, $s0, 816
	vst	$vr0, $s0, 868
	st.w	$zero, $s0, 900
	vst	$vr1, $s0, 884
	st.w	$zero, $s0, 916
	st.w	$zero, $s0, 908
	pcalau12i	$a1, %pc_hi20(.LCPI1_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_2)
	pcalau12i	$a1, %pc_hi20(.LCPI1_3)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_3)
	st.b	$zero, $s0, 904
	vst	$vr0, $s0, 920
	st.d	$a0, $s0, 952
	vst	$vr1, $s0, 936
	st.w	$zero, $s0, 972
	st.w	$zero, $s0, 964
	st.b	$zero, $s0, 960
	vst	$vr0, $s0, 976
	st.d	$a0, $s0, 1008
	vst	$vr1, $s0, 992
	st.d	$zero, $s0, 1028
	st.w	$zero, $s0, 1020
	st.b	$zero, $s0, 1016
	st.b	$fp, $s0, 1264
	st.b	$zero, $s0, 1265
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b, .Lfunc_end1-_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.cfi_endproc
                                        # -- End function
	.globl	_Z15btGetMatrixElemRK11btMatrix3x3i # -- Begin function _Z15btGetMatrixElemRK11btMatrix3x3i
	.p2align	5
	.type	_Z15btGetMatrixElemRK11btMatrix3x3i,@function
_Z15btGetMatrixElemRK11btMatrix3x3i:    # @_Z15btGetMatrixElemRK11btMatrix3x3i
# %bb.0:
	lu12i.w	$a2, 349525
	ori	$a2, $a2, 1366
	mul.d	$a2, $a1, $a2
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a2, $a2, $a3
	addi.w	$a3, $a2, 0
	alsl.d	$a2, $a2, $a2, 1
	sub.w	$a1, $a1, $a2
	alsl.d	$a0, $a1, $a0, 4
	slli.d	$a1, $a3, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end2:
	.size	_Z15btGetMatrixElemRK11btMatrix3x3i, .Lfunc_end2-_Z15btGetMatrixElemRK11btMatrix3x3i
                                        # -- End function
	.globl	_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3 # -- Begin function _Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3
	.p2align	5
	.type	_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3,@function
_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3: # @_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fld.s	$fa0, $a0, 32
	vldi	$vr1, -1168
	fcmp.cule.s	$fcc0, $fa1, $fa0
	move	$fp, $a1
	bcnez	$fcc0, .LBB3_3
# %bb.1:
	vldi	$vr1, -1040
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_4
# %bb.2:
	fld.s	$fa0, $a0, 36
	fld.s	$fa1, $a0, 40
	fneg.s	$fa0, $fa0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	fst.s	$fa0, $fp, 0
	fld.s	$fa0, $s0, 32
	pcaddu18i	$ra, %call36(asinf)
	jirl	$ra, $ra, 0
	fst.s	$fa0, $fp, 4
	fld.s	$fa0, $s0, 16
	fld.s	$fa1, $s0, 0
	fneg.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB3_6
.LBB3_3:
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a0, 20
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fst.s	$fa0, $fp, 0
	lu12i.w	$a1, 261264
	ori	$a1, $a1, 4059
	b	.LBB3_5
.LBB3_4:
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a0, 20
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $fp, 0
	lu12i.w	$a1, -263024
	ori	$a1, $a1, 4059
	lu32i.d	$a1, 0
.LBB3_5:
	st.w	$a1, $fp, 4
	movgr2fr.w	$fa0, $zero
.LBB3_6:
	fst.s	$fa0, $fp, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3, .Lfunc_end3-_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3
                                        # -- End function
	.globl	_ZN22btRotationalLimitMotor14testLimitValueEf # -- Begin function _ZN22btRotationalLimitMotor14testLimitValueEf
	.p2align	5
	.type	_ZN22btRotationalLimitMotor14testLimitValueEf,@function
_ZN22btRotationalLimitMotor14testLimitValueEf: # @_ZN22btRotationalLimitMotor14testLimitValueEf
# %bb.0:
	fld.s	$fa2, $a0, 0
	fld.s	$fa1, $a0, 4
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB4_2
.LBB4_1:
	st.w	$zero, $a0, 48
	move	$a0, $zero
	ret
.LBB4_2:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB4_4
# %bb.3:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 48
	fsub.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a0, 40
	move	$a0, $a1
	ret
.LBB4_4:
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_1
# %bb.5:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 48
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 40
	move	$a0, $a1
	ret
.Lfunc_end4:
	.size	_ZN22btRotationalLimitMotor14testLimitValueEf, .Lfunc_end4-_ZN22btRotationalLimitMotor14testLimitValueEf
                                        # -- End function
	.globl	_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_ # -- Begin function _ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_
	.p2align	5
	.type	_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_,@function
_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_: # @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_
# %bb.0:
	ld.w	$a6, $a0, 48
	fmov.s	$fa2, $fa0
	bnez	$a6, .LBB5_3
# %bb.1:
	ld.bu	$a7, $a0, 36
	bnez	$a7, .LBB5_3
# %bb.2:
	movgr2fr.w	$fa0, $zero
	ret
.LBB5_3:
	beqz	$a6, .LBB5_5
# %bb.4:
	fld.s	$fa0, $a0, 28
	fld.s	$fa3, $a0, 40
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa3, $fa0
	fdiv.s	$fa3, $fa0, $fa2
	addi.d	$a6, $a0, 16
	b	.LBB5_6
.LBB5_5:
	fld.s	$fa3, $a0, 8
	addi.d	$a6, $a0, 12
.LBB5_6:
	ld.d	$a7, $a3, 72
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa4, $fa0
	fmov.s	$fa5, $fa0
	fmov.s	$fa6, $fa0
	beqz	$a7, .LBB5_8
# %bb.7:
	fld.s	$fa4, $a7, 344
	fld.s	$fa5, $a3, 16
	fld.s	$fa7, $a7, 348
	fld.s	$ft0, $a3, 20
	fld.s	$ft1, $a7, 352
	fld.s	$ft2, $a3, 24
	fadd.s	$fa6, $fa4, $fa5
	fadd.s	$fa5, $fa7, $ft0
	fadd.s	$fa4, $ft1, $ft2
.LBB5_8:                                # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit
	ld.d	$a7, $a5, 72
	fmov.s	$fa7, $fa0
	fmov.s	$ft0, $fa0
	fmov.s	$ft1, $fa0
	beqz	$a7, .LBB5_10
# %bb.9:
	fld.s	$fa7, $a7, 344
	fld.s	$ft0, $a5, 16
	fld.s	$ft2, $a7, 348
	fld.s	$ft3, $a5, 20
	fld.s	$ft4, $a7, 352
	fld.s	$ft5, $a5, 24
	fadd.s	$ft1, $fa7, $ft0
	fadd.s	$ft0, $ft2, $ft3
	fadd.s	$fa7, $ft4, $ft5
.LBB5_10:                               # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit63
	fsub.s	$fa6, $fa6, $ft1
	fld.s	$ft1, $a1, 4
	fsub.s	$fa5, $fa5, $ft0
	fsub.s	$fa4, $fa4, $fa7
	fld.s	$fa7, $a1, 0
	fmul.s	$fa5, $fa5, $ft1
	fld.s	$ft0, $a1, 8
	fld.s	$ft1, $a0, 20
	fmadd.s	$fa5, $fa7, $fa6, $fa5
	fld.s	$fa6, $a0, 24
	fmadd.s	$fa4, $ft0, $fa4, $fa5
	fneg.s	$fa5, $ft1
	fmadd.s	$fa3, $fa5, $fa4, $fa3
	fmul.s	$fa3, $fa6, $fa3
	fabs.s	$fa4, $fa3
	lu12i.w	$a7, 212992
	movgr2fr.w	$fa5, $a7
	fcmp.clt.s	$fcc0, $fa4, $fa5
	bceqz	$fcc0, .LBB5_12
# %bb.11:
	ret
.LBB5_12:
	fld.s	$fa0, $a0, 32
	fld.s	$fa4, $a6, 0
	vldi	$vr5, -1168
	fadd.s	$fa0, $fa0, $fa5
	fmul.s	$fa0, $fa3, $fa0
	fmul.s	$fa0, $fa1, $fa0
	movgr2fr.w	$fa1, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa1
	fmul.s	$fa2, $fa2, $fa4
	bcnez	$fcc0, .LBB5_14
# %bb.13:
	fcmp.clt.s	$fcc0, $fa2, $fa0
	b	.LBB5_15
.LBB5_14:
	fneg.s	$fa2, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa2
.LBB5_15:
	fsel	$fa0, $fa0, $fa2, $fcc0
	fld.s	$fa2, $a0, 52
	fadd.s	$fa0, $fa0, $fa2
	fabs.s	$fa3, $fa0
	lu12i.w	$a6, 382432
	ori	$a6, $a6, 2923
	movgr2fr.w	$fa4, $a6
	fcmp.clt.s	$fcc0, $fa4, $fa3
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.s	$fa0, $a0, 52
	fsub.s	$fa0, $fa0, $fa2
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a2, 284
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a1, 8
	fld.s	$fa6, $a2, 280
	fmul.s	$fa3, $fa2, $fa3
	fld.s	$fa7, $a2, 288
	fld.s	$ft0, $a2, 300
	fmadd.s	$fa3, $fa6, $fa4, $fa3
	fld.s	$fa6, $a2, 296
	fmadd.s	$fa3, $fa7, $fa5, $fa3
	fmul.s	$fa7, $fa2, $ft0
	fld.s	$ft0, $a2, 304
	fmadd.s	$fa6, $fa6, $fa4, $fa7
	fld.s	$fa7, $a2, 316
	fld.s	$ft1, $a2, 312
	fmadd.s	$fa6, $ft0, $fa5, $fa6
	fld.s	$ft0, $a2, 320
	fmul.s	$fa2, $fa2, $fa7
	fmadd.s	$fa2, $ft1, $fa4, $fa2
	fld.s	$fa4, $a3, 0
	fmadd.s	$fa2, $ft0, $fa5, $fa2
	fmul.s	$fa5, $fa0, $fa1
	fld.s	$fa7, $a3, 4
	fadd.s	$fa4, $fa5, $fa4
	fld.s	$ft0, $a3, 8
	fst.s	$fa4, $a3, 0
	fadd.s	$fa4, $fa5, $fa7
	fst.s	$fa4, $a3, 4
	fadd.s	$fa4, $fa5, $ft0
	fld.s	$fa5, $a3, 32
	fld.s	$fa7, $a3, 36
	fld.s	$ft0, $a3, 40
	fst.s	$fa4, $a3, 8
	fmul.s	$fa4, $fa0, $fa5
	fmul.s	$fa5, $fa0, $fa7
	fmul.s	$fa7, $fa0, $ft0
	fmul.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a3, 16
	fmul.s	$fa5, $fa6, $fa5
	fmul.s	$fa2, $fa2, $fa7
	fld.s	$fa6, $a3, 20
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a3, 24
	fst.s	$fa3, $a3, 16
	fadd.s	$fa3, $fa5, $fa6
	fst.s	$fa3, $a3, 20
	fadd.s	$fa2, $fa2, $fa4
	fst.s	$fa2, $a3, 24
	fld.s	$fa2, $a4, 284
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a4, 280
	fld.s	$fa5, $a1, 0
	fmul.s	$fa2, $fa2, $fa3
	fld.s	$fa6, $a4, 288
	fld.s	$fa7, $a1, 8
	fld.s	$ft0, $a4, 300
	fld.s	$ft1, $a4, 296
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	fmadd.s	$fa2, $fa6, $fa7, $fa2
	fmul.s	$fa4, $fa3, $ft0
	fmadd.s	$fa4, $ft1, $fa5, $fa4
	fld.s	$fa6, $a4, 304
	fld.s	$ft0, $a4, 316
	fld.s	$ft1, $a4, 312
	fld.s	$ft2, $a4, 320
	fmadd.s	$fa4, $fa6, $fa7, $fa4
	fmul.s	$fa3, $fa3, $ft0
	fmadd.s	$fa3, $ft1, $fa5, $fa3
	fmadd.s	$fa3, $ft2, $fa7, $fa3
	fld.s	$fa5, $a5, 0
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa6, $a5, 4
	fadd.s	$fa5, $fa1, $fa5
	fld.s	$fa7, $a5, 8
	fst.s	$fa5, $a5, 0
	fadd.s	$fa5, $fa1, $fa6
	fst.s	$fa5, $a5, 4
	fadd.s	$fa1, $fa1, $fa7
	fld.s	$fa5, $a5, 32
	fld.s	$fa6, $a5, 36
	fld.s	$fa7, $a5, 40
	fst.s	$fa1, $a5, 8
	fmul.s	$fa1, $fa5, $fa0
	fmul.s	$fa5, $fa6, $fa0
	fmul.s	$fa6, $fa7, $fa0
	fmul.s	$fa1, $fa2, $fa1
	fld.s	$fa2, $a5, 16
	fmul.s	$fa4, $fa4, $fa5
	fmul.s	$fa3, $fa3, $fa6
	fld.s	$fa5, $a5, 20
	fsub.s	$fa1, $fa2, $fa1
	fld.s	$fa2, $a5, 24
	fst.s	$fa1, $a5, 16
	fsub.s	$fa1, $fa5, $fa4
	fst.s	$fa1, $a5, 20
	fsub.s	$fa1, $fa2, $fa3
	fst.s	$fa1, $a5, 24
	ret
.Lfunc_end5:
	.size	_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_, .Lfunc_end5-_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_
                                        # -- End function
	.globl	_ZN25btTranslationalLimitMotor14testLimitValueEif # -- Begin function _ZN25btTranslationalLimitMotor14testLimitValueEif
	.p2align	5
	.type	_ZN25btTranslationalLimitMotor14testLimitValueEif,@function
_ZN25btTranslationalLimitMotor14testLimitValueEif: # @_ZN25btTranslationalLimitMotor14testLimitValueEif
# %bb.0:
	alsl.d	$a2, $a1, $a0, 2
	slli.d	$a1, $a1, 2
	fldx.s	$fa2, $a0, $a1
	fld.s	$fa1, $a2, 16
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB6_2
# %bb.1:
	move	$a0, $zero
	st.w	$zero, $a2, 128
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $a2, 96
	ret
.LBB6_2:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB6_4
# %bb.3:
	ori	$a0, $zero, 2
	st.w	$a0, $a2, 128
	fsub.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a2, 96
	ret
.LBB6_4:
	fcmp.cule.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a2, 128
	bcnez	$fcc0, .LBB6_6
# %bb.5:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 96
	ret
.LBB6_6:
	move	$a0, $zero
	st.w	$zero, $a1, 0
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $a2, 96
	ret
.Lfunc_end6:
	.size	_ZN25btTranslationalLimitMotor14testLimitValueEif, .Lfunc_end6-_ZN25btTranslationalLimitMotor14testLimitValueEif
                                        # -- End function
	.globl	_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_ # -- Begin function _ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_
	.p2align	5
	.type	_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_,@function
_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_: # @_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_
# %bb.0:
	ld.d	$t0, $sp, 8
	fld.s	$fa2, $t0, 0
	fld.s	$fa3, $a1, 56
	fsub.s	$fa4, $fa2, $fa3
	fld.s	$fa3, $t0, 4
	fld.s	$fa5, $a1, 60
	fld.s	$fa7, $t0, 8
	fld.s	$fa6, $a1, 64
	fld.s	$ft4, $a4, 56
	fld.s	$ft5, $a4, 60
	ld.d	$t0, $a2, 72
	fld.s	$ft6, $a4, 64
	fsub.s	$fa5, $fa3, $fa5
	movgr2fr.w	$ft0, $zero
	fsub.s	$fa6, $fa7, $fa6
	fmov.s	$ft1, $ft0
	fmov.s	$ft2, $ft0
	fmov.s	$ft3, $ft0
	beqz	$t0, .LBB7_2
# %bb.1:
	fld.s	$ft1, $t0, 328
	fld.s	$ft2, $a2, 0
	fld.s	$ft3, $t0, 332
	fld.s	$ft7, $a2, 4
	fadd.s	$ft1, $ft1, $ft2
	fadd.s	$ft2, $ft3, $ft7
	fld.s	$ft3, $t0, 336
	fld.s	$ft7, $a2, 8
	fld.s	$ft8, $t0, 344
	fld.s	$ft9, $a2, 16
	fld.s	$ft10, $t0, 348
	fld.s	$ft11, $a2, 20
	fld.s	$ft12, $t0, 352
	fld.s	$ft13, $a2, 24
	fadd.s	$ft7, $ft3, $ft7
	fadd.s	$ft3, $ft8, $ft9
	fadd.s	$ft8, $ft10, $ft11
	fadd.s	$ft9, $ft12, $ft13
	fneg.s	$ft10, $fa5
	fmul.s	$ft10, $ft9, $ft10
	fmadd.s	$ft10, $ft8, $fa6, $ft10
	fneg.s	$ft11, $fa6
	fmul.s	$ft11, $ft3, $ft11
	fmadd.s	$ft9, $ft9, $fa4, $ft11
	fneg.s	$ft11, $fa4
	fmul.s	$ft8, $ft8, $ft11
	fmadd.s	$ft8, $ft3, $fa5, $ft8
	fadd.s	$ft3, $ft1, $ft10
	fadd.s	$ft2, $ft2, $ft9
	fadd.s	$ft1, $ft7, $ft8
.LBB7_2:                                # %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit
	ld.d	$t1, $a5, 72
	ld.d	$t0, $sp, 0
	fsub.s	$fa2, $fa2, $ft4
	fsub.s	$fa3, $fa3, $ft5
	fsub.s	$fa7, $fa7, $ft6
	fmov.s	$ft4, $ft0
	fmov.s	$ft5, $ft0
	beqz	$t1, .LBB7_4
# %bb.3:
	fld.s	$ft0, $t1, 328
	fld.s	$ft4, $a5, 0
	fld.s	$ft5, $t1, 332
	fld.s	$ft6, $a5, 4
	fadd.s	$ft0, $ft0, $ft4
	fadd.s	$ft4, $ft5, $ft6
	fld.s	$ft5, $t1, 336
	fld.s	$ft6, $a5, 8
	fld.s	$ft7, $t1, 344
	fld.s	$ft8, $a5, 16
	fld.s	$ft9, $t1, 348
	fld.s	$ft10, $a5, 20
	fld.s	$ft11, $t1, 352
	fld.s	$ft12, $a5, 24
	fadd.s	$ft6, $ft5, $ft6
	fadd.s	$ft5, $ft7, $ft8
	fadd.s	$ft7, $ft9, $ft10
	fadd.s	$ft8, $ft11, $ft12
	fneg.s	$ft9, $fa3
	fmul.s	$ft9, $ft8, $ft9
	fmadd.s	$ft9, $ft7, $fa7, $ft9
	fneg.s	$ft10, $fa7
	fmul.s	$ft10, $ft5, $ft10
	fmadd.s	$ft8, $ft8, $fa2, $ft10
	fneg.s	$ft10, $fa2
	fmul.s	$ft7, $ft7, $ft10
	fmadd.s	$ft7, $ft5, $fa3, $ft7
	fadd.s	$ft5, $ft0, $ft9
	fadd.s	$ft4, $ft4, $ft8
	fadd.s	$ft0, $ft6, $ft7
.LBB7_4:                                # %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit109
	fld.s	$ft6, $t0, 0
	fld.s	$ft7, $t0, 4
	fld.s	$ft8, $a3, 0
	fld.s	$ft9, $a6, 0
	fld.s	$ft10, $a3, 4
	fld.s	$ft11, $a6, 4
	fld.s	$ft12, $a3, 8
	fld.s	$ft13, $a6, 8
	fsub.s	$ft8, $ft8, $ft9
	fld.s	$ft9, $t0, 8
	fsub.s	$ft10, $ft10, $ft11
	fsub.s	$ft11, $ft12, $ft13
	fmul.s	$ft10, $ft7, $ft10
	fmadd.s	$ft8, $ft8, $ft6, $ft10
	fnmadd.s	$ft10, $ft11, $ft9, $ft8
	alsl.d	$a3, $a7, $a0, 2
	slli.d	$a6, $a7, 2
	fldx.s	$ft12, $a0, $a6
	fld.s	$ft13, $a3, 16
	lu12i.w	$a3, 382432
	ori	$a3, $a3, 2923
	movgr2fr.w	$ft8, $a3
	lu12i.w	$a3, -141856
	ori	$a3, $a3, 2923
	lu32i.d	$a3, 0
	fcmp.cule.s	$fcc0, $ft13, $ft12
	movgr2fr.w	$ft11, $a3
	bcnez	$fcc0, .LBB7_9
# %bb.5:
	fcmp.cule.s	$fcc0, $ft10, $ft13
	bcnez	$fcc0, .LBB7_7
# %bb.6:
	fsub.s	$ft10, $ft10, $ft13
	movgr2fr.w	$ft11, $zero
	b	.LBB7_9
.LBB7_7:
	fcmp.cule.s	$fcc0, $ft12, $ft10
	bcnez	$fcc0, .LBB7_10
# %bb.8:
	fsub.s	$ft10, $ft10, $ft12
	movgr2fr.w	$ft8, $zero
.LBB7_9:
	fsub.s	$ft3, $ft3, $ft5
	fsub.s	$ft2, $ft2, $ft4
	fsub.s	$ft0, $ft1, $ft0
	fmul.s	$ft1, $ft2, $ft7
	fmadd.s	$ft1, $ft6, $ft3, $ft1
	fld.s	$ft2, $a0, 56
	fmadd.s	$ft0, $ft9, $ft0, $ft1
	fld.s	$ft1, $a0, 52
	fld.s	$ft3, $a0, 48
	fmul.s	$ft2, $ft10, $ft2
	fdiv.s	$fa0, $ft2, $fa0
	fneg.s	$ft1, $ft1
	alsl.d	$a0, $a7, $a0, 2
	fld.s	$ft2, $a0, 32
	fmadd.s	$fa0, $ft1, $ft0, $fa0
	fmul.s	$fa0, $ft3, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fadd.s	$fa0, $ft2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $ft11
	movgr2fr.w	$fa1, $zero
	fsel	$ft0, $fa0, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $ft8, $fa0
	fsel	$fa0, $ft0, $fa1, $fcc0
	fst.s	$fa0, $a0, 32
	fld.s	$ft0, $t0, 4
	fsub.s	$fa0, $fa0, $ft2
	fld.s	$ft1, $t0, 8
	fld.s	$ft2, $t0, 0
	fneg.s	$fa1, $ft0
	fmul.s	$ft3, $fa6, $fa1
	fmadd.s	$ft3, $fa5, $ft1, $ft3
	fneg.s	$ft4, $ft1
	fmul.s	$ft5, $fa4, $ft4
	fmadd.s	$ft5, $fa6, $ft2, $ft5
	fneg.s	$fa6, $ft2
	fmul.s	$fa5, $fa5, $fa6
	fmadd.s	$fa5, $fa4, $ft0, $fa5
	fmul.s	$fa1, $fa7, $fa1
	fld.s	$ft6, $a1, 360
	fmadd.s	$fa1, $fa3, $ft1, $fa1
	fmul.s	$fa4, $fa2, $ft4
	fmadd.s	$fa4, $fa7, $ft2, $fa4
	fmul.s	$fa7, $ft2, $ft6
	fld.s	$ft2, $a1, 284
	fmul.s	$ft4, $ft0, $ft6
	fmul.s	$ft1, $ft1, $ft6
	fld.s	$ft6, $a1, 280
	fmul.s	$ft2, $ft5, $ft2
	fld.s	$ft7, $a1, 288
	fld.s	$ft8, $a1, 300
	fld.s	$ft9, $a1, 296
	fmadd.s	$ft2, $ft6, $ft3, $ft2
	fmadd.s	$ft2, $ft7, $fa5, $ft2
	fmul.s	$ft6, $ft5, $ft8
	fmadd.s	$ft6, $ft9, $ft3, $ft6
	fld.s	$ft7, $a1, 304
	fld.s	$ft8, $a1, 316
	fld.s	$ft9, $a1, 312
	fld.s	$ft10, $a1, 320
	fmadd.s	$ft6, $ft7, $fa5, $ft6
	fmul.s	$ft5, $ft5, $ft8
	fmadd.s	$ft3, $ft9, $ft3, $ft5
	fmadd.s	$fa5, $ft10, $fa5, $ft3
	fmul.s	$fa7, $fa7, $fa0
	fld.s	$ft3, $a2, 0
	fmul.s	$ft4, $ft4, $fa0
	fmul.s	$ft1, $ft1, $fa0
	fld.s	$ft5, $a2, 4
	fadd.s	$fa7, $fa7, $ft3
	fld.s	$ft3, $a2, 8
	fst.s	$fa7, $a2, 0
	fadd.s	$fa7, $ft4, $ft5
	fst.s	$fa7, $a2, 4
	fadd.s	$fa7, $ft1, $ft3
	fld.s	$ft1, $a2, 32
	fld.s	$ft3, $a2, 36
	fld.s	$ft4, $a2, 40
	fst.s	$fa7, $a2, 8
	fmul.s	$fa7, $fa0, $ft1
	fmul.s	$ft1, $fa0, $ft3
	fmul.s	$ft3, $fa0, $ft4
	fmul.s	$fa7, $ft2, $fa7
	fld.s	$ft2, $a2, 16
	fmul.s	$ft1, $ft6, $ft1
	fmul.s	$fa5, $fa5, $ft3
	fld.s	$ft3, $a2, 20
	fadd.s	$fa7, $fa7, $ft2
	fld.s	$ft2, $a2, 24
	fst.s	$fa7, $a2, 16
	fadd.s	$fa7, $ft1, $ft3
	fst.s	$fa7, $a2, 20
	fadd.s	$fa5, $fa5, $ft2
	fst.s	$fa5, $a2, 24
	fld.s	$fa5, $a4, 360
	fld.s	$fa7, $t0, 0
	fmul.s	$fa3, $fa3, $fa6
	fmadd.s	$fa2, $fa2, $ft0, $fa3
	fld.s	$fa3, $t0, 4
	fmul.s	$fa6, $fa5, $fa7
	fld.s	$fa7, $t0, 8
	fld.s	$ft0, $a4, 284
	fmul.s	$fa3, $fa5, $fa3
	fld.s	$ft1, $a4, 280
	fmul.s	$fa5, $fa5, $fa7
	fmul.s	$fa7, $fa4, $ft0
	fld.s	$ft0, $a4, 288
	fmadd.s	$fa7, $ft1, $fa1, $fa7
	fld.s	$ft1, $a4, 300
	fld.s	$ft2, $a4, 296
	fmadd.s	$fa7, $ft0, $fa2, $fa7
	fld.s	$ft0, $a4, 304
	fmul.s	$ft1, $fa4, $ft1
	fmadd.s	$ft1, $ft2, $fa1, $ft1
	fld.s	$ft2, $a4, 316
	fmadd.s	$ft0, $ft0, $fa2, $ft1
	fld.s	$ft1, $a4, 312
	fld.s	$ft3, $a4, 320
	fmul.s	$fa4, $fa4, $ft2
	fld.s	$ft2, $a5, 0
	fmadd.s	$fa1, $ft1, $fa1, $fa4
	fmadd.s	$fa1, $ft3, $fa2, $fa1
	fmul.s	$fa2, $fa0, $fa6
	fsub.s	$fa2, $ft2, $fa2
	fld.s	$fa4, $a5, 4
	fst.s	$fa2, $a5, 0
	fmul.s	$fa2, $fa0, $fa3
	fld.s	$fa3, $a5, 8
	fsub.s	$fa2, $fa4, $fa2
	fst.s	$fa2, $a5, 4
	fmul.s	$fa2, $fa0, $fa5
	fsub.s	$fa2, $fa3, $fa2
	fld.s	$fa3, $a5, 32
	fld.s	$fa4, $a5, 36
	fld.s	$fa5, $a5, 40
	fst.s	$fa2, $a5, 8
	fmul.s	$fa2, $fa3, $fa0
	fmul.s	$fa3, $fa4, $fa0
	fmul.s	$fa4, $fa5, $fa0
	fmul.s	$fa2, $fa7, $fa2
	fld.s	$fa5, $a5, 16
	fmul.s	$fa3, $ft0, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a5, 20
	fsub.s	$fa2, $fa5, $fa2
	fld.s	$fa5, $a5, 24
	fst.s	$fa2, $a5, 16
	fsub.s	$fa2, $fa4, $fa3
	fst.s	$fa2, $a5, 20
	fsub.s	$fa1, $fa5, $fa1
	fst.s	$fa1, $a5, 24
	ret
.LBB7_10:
	movgr2fr.w	$fa0, $zero
	ret
.Lfunc_end7:
	.size	_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_, .Lfunc_end7-_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint18calculateAngleInfoEv # -- Begin function _ZN23btGeneric6DofConstraint18calculateAngleInfoEv
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint18calculateAngleInfoEv,@function
_ZN23btGeneric6DofConstraint18calculateAngleInfoEv: # @_ZN23btGeneric6DofConstraint18calculateAngleInfoEv
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a0
	fld.s	$fa0, $a0, 1076
	fld.s	$fs2, $a0, 1064
	fld.s	$fa1, $a0, 1060
	fld.s	$fs3, $a0, 1080
	fneg.s	$ft1, $fa0
	fmul.s	$fa2, $fs2, $ft1
	fld.s	$ft2, $a0, 1056
	fld.s	$ft3, $a0, 1072
	fmadd.s	$fa2, $fa1, $fs3, $fa2
	fneg.s	$fs4, $fs3
	fmul.s	$fa3, $ft2, $fs4
	fmadd.s	$fa3, $fs2, $ft3, $fa3
	fneg.s	$fa5, $ft3
	fmul.s	$fa4, $fa1, $fa5
	fld.s	$ft4, $a0, 1044
	fld.s	$ft5, $a0, 1040
	fld.s	$fs5, $a0, 1048
	fmadd.s	$ft6, $ft2, $fa0, $fa4
	fmul.s	$fa4, $ft4, $fa3
	fmadd.s	$fa4, $ft5, $fa2, $fa4
	fmadd.s	$fa4, $fs5, $ft6, $fa4
	frecip.s	$ft7, $fa4
	fmul.s	$fa2, $fa2, $ft7
	fmul.s	$fa4, $ft4, $fs4
	fmadd.s	$fa0, $fs5, $fa0, $fa4
	fmul.s	$fa4, $fa0, $ft7
	fneg.s	$fa0, $fa1
	fmul.s	$fa0, $fs5, $fa0
	fmadd.s	$fa0, $ft4, $fs2, $fa0
	fmul.s	$fa6, $fa0, $ft7
	fmul.s	$fa3, $fa3, $ft7
	fmul.s	$fa0, $fs5, $fa5
	fmadd.s	$fa0, $ft5, $fs3, $fa0
	fmul.s	$fa7, $fa0, $ft7
	fneg.s	$fa0, $fs2
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fmul.s	$fa0, $ft5, $fa0
	fmadd.s	$fa0, $fs5, $ft2, $fa0
	fmul.s	$ft0, $fa0, $ft7
	fmul.s	$fa5, $ft6, $ft7
	fmul.s	$fa0, $ft5, $ft1
	fmadd.s	$fa0, $ft4, $ft3, $fa0
	fmul.s	$ft1, $fa0, $ft7
	fneg.s	$fa0, $ft2
	fmul.s	$fa0, $ft4, $fa0
	fmadd.s	$fa0, $ft5, $fa1, $fa0
	fmul.s	$ft2, $fa0, $ft7
	fld.s	$fs6, $a0, 1104
	fld.s	$fs7, $a0, 1120
	fld.s	$ft4, $a0, 1124
	fld.s	$ft3, $a0, 1108
	fld.s	$ft5, $a0, 1140
	fld.s	$fs1, $a0, 1136
	fmul.s	$fa0, $fa4, $ft4
	fmadd.s	$fa0, $ft3, $fa2, $fa0
	fmadd.s	$fa0, $ft5, $fa6, $fa0
	fmul.s	$fa1, $fa7, $ft4
	fmadd.s	$fa1, $ft3, $fa3, $fa1
	fmul.s	$ft6, $fs7, $ft1
	fmadd.s	$ft6, $fs6, $fa5, $ft6
	fmadd.s	$fs0, $fs1, $ft2, $ft6
	vldi	$vr14, -1168
	fcmp.cule.s	$fcc0, $ft6, $fs0
	fmadd.s	$fa1, $ft5, $ft0, $fa1
	bcnez	$fcc0, .LBB8_3
# %bb.1:
	vldi	$vr14, -1040
	fcmp.cule.s	$fcc0, $fs0, $ft6
	bcnez	$fcc0, .LBB8_4
# %bb.2:
	fmul.s	$fa0, $fs7, $fa4
	fmadd.s	$fa0, $fs6, $fa2, $fa0
	fmadd.s	$fa0, $fs1, $fa6, $fa0
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa0, $fp, 1112
	fld.s	$fa1, $fp, 1128
	fld.s	$fa2, $fp, 1144
	fmul.s	$fa4, $fs7, $fa7
	fmadd.s	$fa3, $fs6, $fa3, $fa4
	fmadd.s	$fa3, $fs1, $ft0, $fa3
	fst.s	$fa3, $sp, 20                   # 4-byte Folded Spill
	fmul.s	$fa3, $ft1, $ft4
	fmadd.s	$fa3, $ft3, $fa5, $fa3
	fmadd.s	$fa3, $ft5, $ft2, $fa3
	fmul.s	$fa1, $ft1, $fa1
	fmadd.s	$fa0, $fa0, $fa5, $fa1
	fmadd.s	$fa1, $fa2, $ft2, $fa0
	fneg.s	$fa0, $fa3
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	fst.s	$fa0, $fp, 1168
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(asinf)
	jirl	$ra, $ra, 0
	fst.s	$fa0, $fp, 1172
	fld.s	$fa0, $sp, 20                   # 4-byte Folded Reload
	fneg.s	$fa0, $fa0
	fld.s	$fa1, $sp, 24                   # 4-byte Folded Reload
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	b	.LBB8_6
.LBB8_3:
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	fst.s	$fa0, $fp, 1168
	lu12i.w	$a0, 261264
	ori	$a0, $a0, 4059
	b	.LBB8_5
.LBB8_4:
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $fp, 1168
	lu12i.w	$a0, -263024
	ori	$a0, $a0, 4059
	lu32i.d	$a0, 0
.LBB8_5:                                # %_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3.exit
	st.w	$a0, $fp, 1172
	movgr2fr.w	$fa0, $zero
.LBB8_6:                                # %_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3.exit
	fst.s	$fa0, $fp, 1176
	fneg.s	$fa0, $fs7
	fmul.s	$fa0, $fs3, $fa0
	fmadd.s	$fa1, $fs2, $fs1, $fa0
	fneg.s	$fa2, $fs1
	fmul.s	$fa2, $fs5, $fa2
	fmadd.s	$fa3, $fs3, $fs6, $fa2
	fneg.s	$fa4, $fs6
	fmul.s	$fa4, $fs2, $fa4
	fmadd.s	$fa5, $fs5, $fs7, $fa4
	movfr2gr.s	$a0, $fa5
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $fp, 1208
	fld.s	$fa6, $sp, 28                   # 4-byte Folded Reload
	fmul.s	$fa6, $fa5, $fa6
	fmadd.s	$fa6, $fa3, $fs3, $fa6
	fmul.s	$fa7, $fa1, $fs4
	fmadd.s	$fa7, $fa5, $fs5, $fa7
	fneg.s	$ft0, $fs5
	fmul.s	$ft0, $fa3, $ft0
	fmadd.s	$ft0, $fa1, $fs2, $ft0
	movfr2gr.s	$a0, $ft0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $fp, 1192
	fnmadd.s	$fa2, $fs3, $fs6, $fa2
	fmul.s	$fa2, $fs1, $fa2
	fmadd.s	$fa2, $fs7, $fa5, $fa2
	fnmadd.s	$fa4, $fs5, $fs7, $fa4
	fmul.s	$fa4, $fs6, $fa4
	fmadd.s	$fa4, $fs1, $fa1, $fa4
	fnmadd.s	$fa0, $fs2, $fs1, $fa0
	fmul.s	$fa0, $fs7, $fa0
	fmadd.s	$fa0, $fs6, $fa3, $fa0
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $fp, 1224
	fmul.s	$ft1, $fa7, $fa7
	fmadd.s	$ft1, $fa6, $fa6, $ft1
	fmadd.s	$ft1, $ft0, $ft0, $ft1
	frsqrt.s	$ft1, $ft1
	fmul.s	$fa6, $fa6, $ft1
	fst.s	$fa6, $fp, 1184
	fmul.s	$fa6, $fa7, $ft1
	fst.s	$fa6, $fp, 1188
	fmul.s	$fa6, $ft0, $ft1
	fst.s	$fa6, $fp, 1192
	fmul.s	$fa6, $fa3, $fa3
	fmadd.s	$fa6, $fa1, $fa1, $fa6
	fmadd.s	$fa6, $fa5, $fa5, $fa6
	frsqrt.s	$fa6, $fa6
	fmul.s	$fa1, $fa1, $fa6
	fst.s	$fa1, $fp, 1200
	fmul.s	$fa1, $fa3, $fa6
	fst.s	$fa1, $fp, 1204
	fmul.s	$fa1, $fa5, $fa6
	fst.s	$fa1, $fp, 1208
	fmul.s	$fa1, $fa4, $fa4
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fa2, $fa1
	fst.s	$fa2, $fp, 1216
	fmul.s	$fa2, $fa4, $fa1
	fst.s	$fa2, $fp, 1220
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 1224
	fld.d	$fs7, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end8:
	.size	_ZN23btGeneric6DofConstraint18calculateAngleInfoEv, .Lfunc_end8-_ZN23btGeneric6DofConstraint18calculateAngleInfoEv
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint19calculateTransformsEv # -- Begin function _ZN23btGeneric6DofConstraint19calculateTransformsEv
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint19calculateTransformsEv,@function
_ZN23btGeneric6DofConstraint19calculateTransformsEv: # @_ZN23btGeneric6DofConstraint19calculateTransformsEv
# %bb.0:
	ld.d	$a1, $a0, 24
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	pcaddu18i	$t8, %call36(_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_)
	jr	$t8
.Lfunc_end9:
	.size	_ZN23btGeneric6DofConstraint19calculateTransformsEv, .Lfunc_end9-_ZN23btGeneric6DofConstraint19calculateTransformsEv
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_ # -- Begin function _ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_,@function
_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_: # @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	fld.s	$fa5, $a0, 96
	fld.s	$fa6, $a0, 112
	fld.s	$fa3, $a1, 4
	fld.s	$fa2, $a1, 0
	fld.s	$fa7, $a0, 128
	fld.s	$fa4, $a1, 8
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $a0, 116
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $a0, 100
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $a0, 132
	fld.s	$ft3, $a0, 120
	fld.s	$ft4, $a0, 104
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $a0, 136
	fld.s	$ft7, $a1, 20
	fld.s	$ft8, $a1, 16
	fld.s	$ft9, $a1, 24
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $a1, 36
	fld.s	$ft13, $a1, 32
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $a1, 40
	fmul.s	$ft14, $ft3, $ft7
	fmadd.s	$ft14, $ft4, $ft8, $ft14
	fmadd.s	$ft14, $ft6, $ft9, $ft14
	fmadd.s	$fa5, $fa7, $fa6, $fa5
	fmul.s	$fa7, $ft0, $ft12
	fmadd.s	$fa7, $ft1, $ft13, $fa7
	fmadd.s	$fa7, $ft2, $fa6, $fa7
	fmul.s	$ft0, $ft3, $ft12
	fmadd.s	$ft0, $ft4, $ft13, $ft0
	fmadd.s	$ft0, $ft6, $fa6, $ft0
	fld.s	$ft1, $a0, 148
	fld.s	$ft2, $a0, 144
	fld.s	$ft3, $a0, 152
	fld.s	$ft4, $a1, 48
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $a1, 52
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a1, 56
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $fp, 1040
	fst.s	$fa1, $fp, 1044
	fst.s	$ft5, $fp, 1048
	st.w	$zero, $fp, 1052
	fst.s	$ft10, $fp, 1056
	fst.s	$ft11, $fp, 1060
	fst.s	$ft14, $fp, 1064
	st.w	$zero, $fp, 1068
	fst.s	$fa5, $fp, 1072
	fst.s	$fa7, $fp, 1076
	fst.s	$ft0, $fp, 1080
	st.w	$zero, $fp, 1084
	st.d	$a0, $fp, 1088
	st.d	$a1, $fp, 1096
	fld.s	$fa5, $fp, 160
	fld.s	$fa6, $fp, 176
	fld.s	$fa3, $a2, 4
	fld.s	$fa2, $a2, 0
	fld.s	$fa7, $fp, 192
	fld.s	$fa4, $a2, 8
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $fp, 180
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $fp, 164
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $fp, 196
	fld.s	$ft3, $fp, 184
	fld.s	$ft4, $fp, 168
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $fp, 200
	fld.s	$ft7, $a2, 20
	fld.s	$ft8, $a2, 16
	fld.s	$ft9, $a2, 24
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $a2, 36
	fld.s	$ft13, $a2, 32
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $a2, 40
	fmul.s	$ft14, $ft3, $ft7
	fmadd.s	$ft14, $ft4, $ft8, $ft14
	fmadd.s	$ft14, $ft6, $ft9, $ft14
	fmadd.s	$fa5, $fa7, $fa6, $fa5
	fmul.s	$fa7, $ft0, $ft12
	fmadd.s	$fa7, $ft1, $ft13, $fa7
	fmadd.s	$fa7, $ft2, $fa6, $fa7
	fmul.s	$ft0, $ft3, $ft12
	fmadd.s	$ft0, $ft4, $ft13, $ft0
	fmadd.s	$ft0, $ft6, $fa6, $ft0
	fld.s	$ft1, $fp, 212
	fld.s	$ft2, $fp, 208
	fld.s	$ft3, $fp, 216
	fld.s	$ft4, $a2, 48
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $a2, 52
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a2, 56
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $fp, 1104
	fst.s	$fa1, $fp, 1108
	fst.s	$ft5, $fp, 1112
	st.w	$zero, $fp, 1116
	fst.s	$ft10, $fp, 1120
	fst.s	$ft11, $fp, 1124
	fst.s	$ft14, $fp, 1128
	st.w	$zero, $fp, 1132
	fst.s	$fa5, $fp, 1136
	fst.s	$fa7, $fp, 1140
	fst.s	$ft0, $fp, 1144
	st.w	$zero, $fp, 1148
	st.d	$a0, $fp, 1152
	st.d	$a1, $fp, 1160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint19calculateLinearInfoEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN23btGeneric6DofConstraint18calculateAngleInfoEv)
	jr	$t8
.Lfunc_end10:
	.size	_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_, .Lfunc_end10-_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint19calculateLinearInfoEv # -- Begin function _ZN23btGeneric6DofConstraint19calculateLinearInfoEv
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint19calculateLinearInfoEv,@function
_ZN23btGeneric6DofConstraint19calculateLinearInfoEv: # @_ZN23btGeneric6DofConstraint19calculateLinearInfoEv
# %bb.0:
	fld.s	$fa0, $a0, 1152
	fld.s	$fa1, $a0, 1088
	fld.s	$fa2, $a0, 1156
	fld.s	$fa3, $a0, 1092
	fld.s	$fa4, $a0, 1160
	fld.s	$fa5, $a0, 1096
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa3, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fld.s	$fa1, $a0, 1076
	fld.s	$fa2, $a0, 1064
	fld.s	$fa5, $a0, 1060
	fld.s	$fa6, $a0, 1080
	fneg.s	$fa7, $fa1
	fmul.s	$ft0, $fa2, $fa7
	fld.s	$ft1, $a0, 1056
	fld.s	$ft2, $a0, 1072
	fmadd.s	$ft0, $fa5, $fa6, $ft0
	fneg.s	$ft3, $fa6
	fmul.s	$ft4, $ft1, $ft3
	fmadd.s	$ft4, $fa2, $ft2, $ft4
	fneg.s	$ft5, $ft2
	fmul.s	$ft6, $fa5, $ft5
	fld.s	$ft7, $a0, 1044
	fld.s	$ft8, $a0, 1040
	fld.s	$ft9, $a0, 1048
	fmadd.s	$ft6, $ft1, $fa1, $ft6
	fmul.s	$ft10, $ft7, $ft4
	fmadd.s	$ft10, $ft8, $ft0, $ft10
	fmadd.s	$ft10, $ft9, $ft6, $ft10
	frecip.s	$ft10, $ft10
	fmul.s	$ft0, $ft0, $ft10
	fmul.s	$ft3, $ft7, $ft3
	fmadd.s	$fa1, $ft9, $fa1, $ft3
	fmul.s	$fa1, $fa1, $ft10
	fneg.s	$ft3, $fa5
	fmul.s	$ft3, $ft9, $ft3
	fmadd.s	$ft3, $ft7, $fa2, $ft3
	fmul.s	$ft3, $ft3, $ft10
	fmul.s	$ft4, $ft4, $ft10
	fmul.s	$ft5, $ft9, $ft5
	fmadd.s	$fa6, $ft8, $fa6, $ft5
	fmul.s	$fa6, $fa6, $ft10
	fneg.s	$fa2, $fa2
	fmul.s	$fa2, $ft8, $fa2
	fmadd.s	$fa2, $ft9, $ft1, $fa2
	fmul.s	$ft5, $fa2, $ft10
	fmul.s	$ft6, $ft6, $ft10
	fmul.s	$fa2, $ft8, $fa7
	fmadd.s	$fa2, $ft7, $ft2, $fa2
	fmul.s	$fa7, $fa2, $ft10
	fneg.s	$fa2, $ft1
	fmul.s	$fa2, $ft7, $fa2
	fmadd.s	$fa2, $ft8, $fa5, $fa2
	fmul.s	$fa5, $fa2, $ft10
	fmul.s	$fa1, $fa3, $fa1
	fmadd.s	$fa1, $ft0, $fa0, $fa1
	fmadd.s	$fa2, $ft3, $fa4, $fa1
	fmul.s	$fa1, $fa3, $fa6
	fmadd.s	$fa1, $ft4, $fa0, $fa1
	fmadd.s	$fa1, $ft5, $fa4, $fa1
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa0, $ft6, $fa0, $fa3
	fmadd.s	$fa0, $fa5, $fa4, $fa0
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	fld.s	$fa4, $a0, 728
	fld.s	$fa3, $a0, 744
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 1232
	st.d	$a2, $a0, 1240
	fcmp.cule.s	$fcc0, $fa4, $fa3
	fst.s	$fa2, $a0, 840
	bcnez	$fcc0, .LBB11_2
.LBB11_1:
	st.w	$zero, $a0, 856
	movgr2fr.w	$fa3, $zero
	b	.LBB11_6
.LBB11_2:
	fcmp.cule.s	$fcc0, $fa4, $fa2
	bcnez	$fcc0, .LBB11_4
# %bb.3:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 856
	fsub.s	$fa3, $fa2, $fa4
	b	.LBB11_6
.LBB11_4:
	fcmp.cule.s	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB11_1
# %bb.5:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 856
	fsub.s	$fa3, $fa2, $fa3
.LBB11_6:                               # %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit
	fld.s	$fa4, $a0, 732
	fld.s	$fa2, $a0, 748
	fst.s	$fa3, $a0, 824
	fcmp.clt.s	$fcc0, $fa2, $fa4
	fst.s	$fa1, $a0, 844
	bceqz	$fcc0, .LBB11_8
.LBB11_7:
	st.w	$zero, $a0, 860
	movgr2fr.w	$fa2, $zero
	b	.LBB11_12
.LBB11_8:
	fcmp.clt.s	$fcc0, $fa1, $fa4
	bceqz	$fcc0, .LBB11_10
# %bb.9:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 860
	fsub.s	$fa2, $fa1, $fa4
	b	.LBB11_12
.LBB11_10:
	fcmp.clt.s	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB11_7
# %bb.11:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 860
	fsub.s	$fa2, $fa1, $fa2
.LBB11_12:                              # %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.1
	fld.s	$fa3, $a0, 736
	fld.s	$fa1, $a0, 752
	fst.s	$fa2, $a0, 828
	fcmp.clt.s	$fcc0, $fa1, $fa3
	fst.s	$fa0, $a0, 848
	bceqz	$fcc0, .LBB11_14
.LBB11_13:
	st.w	$zero, $a0, 864
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $a0, 832
	ret
.LBB11_14:
	fcmp.clt.s	$fcc0, $fa0, $fa3
	bceqz	$fcc0, .LBB11_16
# %bb.15:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 864
	fsub.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $a0, 832
	ret
.LBB11_16:
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB11_13
# %bb.17:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 864
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 832
	ret
.Lfunc_end11:
	.size	_ZN23btGeneric6DofConstraint19calculateLinearInfoEv, .Lfunc_end11-_ZN23btGeneric6DofConstraint19calculateLinearInfoEv
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_ # -- Begin function _ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_,@function
_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_: # @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_
# %bb.0:
	addi.d	$sp, $sp, -96
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 32                   # 8-byte Folded Spill
	ld.d	$a5, $a0, 24
	fld.s	$ft5, $a5, 8
	fld.s	$ft8, $a5, 24
	fld.s	$ft3, $a5, 40
	fld.s	$ft6, $a5, 12
	fld.s	$ft9, $a5, 28
	fld.s	$ft4, $a5, 44
	ld.d	$a0, $a0, 32
	fld.s	$ft10, $a5, 16
	fld.s	$ft11, $a5, 32
	fld.s	$ft7, $a5, 48
	fld.s	$fa3, $a0, 8
	fld.s	$ft0, $a0, 24
	fld.s	$fa5, $a0, 40
	fld.s	$fa4, $a0, 12
	fld.s	$ft1, $a0, 28
	fld.s	$fa6, $a0, 44
	fld.s	$fa0, $a0, 16
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a5, 56
	fld.s	$ft12, $a3, 4
	fld.s	$ft13, $a5, 60
	fld.s	$ft2, $a0, 32
	fld.s	$fa7, $a0, 48
	fsub.s	$ft14, $fa0, $fa1
	fsub.s	$ft12, $ft12, $ft13
	fld.s	$ft13, $a3, 8
	fld.s	$ft15, $a5, 64
	fld.s	$fs0, $a4, 0
	fld.s	$fs1, $a0, 56
	fld.s	$fs2, $a4, 4
	fld.s	$fs3, $a0, 60
	fld.s	$fs4, $a4, 8
	vld	$vr29, $a2, 0
	fld.s	$fs6, $a0, 64
	fld.s	$fa0, $a5, 360
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa0, $a0, 360
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	vst	$vr29, $a1, 0
	fld.s	$fs5, $a1, 8
	fsub.s	$ft13, $ft13, $ft15
	fld.s	$ft15, $a1, 0
	fld.s	$fs7, $a1, 4
	fneg.s	$fa2, $fs5
	fmul.s	$fa1, $ft14, $fa2
	fmadd.s	$fa1, $ft13, $ft15, $fa1
	fneg.s	$fa0, $fs7
	fmul.s	$ft13, $ft13, $fa0
	fmadd.s	$ft13, $ft12, $fs5, $ft13
	fmul.s	$ft8, $ft8, $fa1
	fmadd.s	$ft5, $ft5, $ft13, $ft8
	fmul.s	$ft8, $ft9, $fa1
	fmadd.s	$ft6, $ft6, $ft13, $ft8
	fmul.s	$fa1, $ft11, $fa1
	fmadd.s	$fa1, $ft10, $ft13, $fa1
	fneg.s	$ft8, $ft15
	fmul.s	$ft9, $ft12, $ft8
	fmadd.s	$ft9, $ft14, $fs7, $ft9
	fmadd.s	$ft3, $ft3, $ft9, $ft5
	fmadd.s	$ft5, $ft4, $ft9, $ft6
	fmadd.s	$ft4, $ft7, $ft9, $fa1
	fsub.s	$fa1, $fs0, $fs1
	fsub.s	$ft6, $fs2, $fs3
	fsub.s	$ft7, $fs4, $fs6
	fmul.s	$ft9, $fa1, $fs5
	fmadd.s	$ft8, $ft7, $ft8, $ft9
	fmul.s	$ft7, $ft7, $fs7
	fmadd.s	$fa2, $ft6, $fa2, $ft7
	fmul.s	$ft6, $ft6, $ft15
	fmadd.s	$fa0, $fa1, $fa0, $ft6
	fmul.s	$fa1, $ft0, $ft8
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	fmadd.s	$fa1, $fa5, $fa0, $fa1
	fmul.s	$fa3, $ft1, $ft8
	fmadd.s	$fa3, $fa4, $fa2, $fa3
	fmadd.s	$fa3, $fa6, $fa0, $fa3
	fmul.s	$fa4, $ft2, $ft8
	movfr2gr.s	$a2, $ft3
	movfr2gr.s	$a3, $ft5
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $ft4
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a2, $a1, 16
	st.d	$a3, $a1, 24
	fld.s	$fa5, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$fa2, $fa5, $fa2, $fa4
	fmadd.s	$fa0, $fa7, $fa0, $fa2
	movfr2gr.s	$a2, $fa1
	movfr2gr.s	$a3, $fa3
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $fa0
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a2, $a1, 32
	st.d	$a3, $a1, 40
	fld.s	$fa2, $a5, 428
	fld.s	$fa4, $a5, 432
	fld.s	$fa5, $a5, 436
	fmul.s	$fa2, $ft3, $fa2
	fmul.s	$fa4, $ft5, $fa4
	fmul.s	$fa5, $ft4, $fa5
	movfr2gr.s	$a2, $fa2
	movfr2gr.s	$a3, $fa4
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $fa5
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a2, $a1, 48
	st.d	$a3, $a1, 56
	fld.s	$fa6, $a0, 428
	fmul.s	$fa4, $ft5, $fa4
	fld.s	$fa7, $a0, 432
	fmadd.s	$fa2, $fa2, $ft3, $fa4
	fmadd.s	$fa2, $fa5, $ft4, $fa2
	fmul.s	$fa4, $fa1, $fa6
	fmul.s	$fa5, $fa3, $fa7
	fld.s	$fa6, $a0, 436
	fmul.s	$fa3, $fa3, $fa5
	fmadd.s	$fa1, $fa4, $fa1, $fa3
	movfr2gr.s	$a0, $fa4
	movfr2gr.s	$a2, $fa5
	fmul.s	$fa3, $fa0, $fa6
	fmadd.s	$fa0, $fa3, $fa0, $fa1
	movfr2gr.s	$a3, $fa3
	fld.s	$fa1, $sp, 28                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $sp, 24                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa2, $fa1
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a1, 80
	bstrins.d	$a0, $a2, 63, 32
	bstrpick.d	$a2, $a3, 31, 0
	st.d	$a0, $a1, 64
	st.d	$a2, $a1, 72
	fld.d	$fs7, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end12:
	.size	_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_, .Lfunc_end12-_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3 # -- Begin function _ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3,@function
_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3: # @_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3
# %bb.0:
	ld.d	$a3, $a0, 24
	fld.s	$fa0, $a3, 8
	fld.s	$fa1, $a3, 24
	fld.s	$fa2, $a3, 40
	fld.s	$fa3, $a3, 12
	fld.s	$fa4, $a3, 28
	fld.s	$fa5, $a3, 44
	ld.d	$a0, $a0, 32
	fld.s	$fa6, $a3, 16
	fld.s	$fa7, $a3, 32
	fld.s	$ft0, $a3, 48
	fld.s	$ft1, $a0, 8
	fld.s	$ft2, $a0, 24
	fld.s	$ft3, $a0, 40
	fld.s	$ft4, $a0, 12
	fld.s	$ft5, $a0, 28
	fld.s	$ft6, $a0, 44
	fld.s	$ft7, $a0, 16
	fld.s	$ft8, $a0, 32
	fld.s	$ft9, $a0, 48
	vrepli.b	$vr18, 0
	vst	$vr18, $a1, 0
	fld.s	$ft10, $a2, 4
	fld.s	$ft11, $a2, 0
	fld.s	$ft12, $a2, 8
	fmul.s	$fa1, $fa1, $ft10
	fmadd.s	$fa0, $fa0, $ft11, $fa1
	fmadd.s	$fa0, $fa2, $ft12, $fa0
	fmul.s	$fa1, $fa4, $ft10
	fmadd.s	$fa1, $fa3, $ft11, $fa1
	fmadd.s	$fa1, $fa5, $ft12, $fa1
	fmul.s	$fa2, $fa7, $ft10
	fmadd.s	$fa2, $fa6, $ft11, $fa2
	fmadd.s	$fa2, $ft0, $ft12, $fa2
	movfr2gr.s	$a4, $fa0
	movfr2gr.s	$a5, $fa1
	bstrins.d	$a4, $a5, 63, 32
	movfr2gr.s	$a5, $fa2
	bstrpick.d	$a5, $a5, 31, 0
	st.d	$a4, $a1, 16
	st.d	$a5, $a1, 24
	fld.s	$fa3, $a2, 0
	fld.s	$fa4, $a2, 4
	fld.s	$fa5, $a2, 8
	fneg.s	$fa3, $fa3
	fneg.s	$fa4, $fa4
	fneg.s	$fa5, $fa5
	fmul.s	$fa6, $ft2, $fa4
	fmadd.s	$fa6, $ft1, $fa3, $fa6
	fmadd.s	$fa6, $ft3, $fa5, $fa6
	fmul.s	$fa7, $ft5, $fa4
	fmadd.s	$fa7, $ft4, $fa3, $fa7
	fmadd.s	$fa7, $ft6, $fa5, $fa7
	fmul.s	$fa4, $ft8, $fa4
	fmadd.s	$fa3, $ft7, $fa3, $fa4
	fmadd.s	$fa3, $ft9, $fa5, $fa3
	movfr2gr.s	$a2, $fa6
	movfr2gr.s	$a4, $fa7
	bstrins.d	$a2, $a4, 63, 32
	movfr2gr.s	$a4, $fa3
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a2, $a1, 32
	st.d	$a4, $a1, 40
	fld.s	$fa4, $a3, 428
	fld.s	$fa5, $a3, 432
	fld.s	$ft0, $a3, 436
	fmul.s	$fa4, $fa0, $fa4
	fmul.s	$fa5, $fa1, $fa5
	fmul.s	$ft0, $fa2, $ft0
	movfr2gr.s	$a2, $fa4
	movfr2gr.s	$a3, $fa5
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $ft0
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a2, $a1, 48
	st.d	$a3, $a1, 56
	fld.s	$ft1, $a0, 428
	fld.s	$ft2, $a0, 432
	fld.s	$ft3, $a0, 436
	fmul.s	$ft1, $fa6, $ft1
	fmul.s	$ft2, $fa7, $ft2
	fmul.s	$ft3, $fa3, $ft3
	movfr2gr.s	$a0, $ft1
	movfr2gr.s	$a2, $ft2
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $ft3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $a1, 64
	st.d	$a2, $a1, 72
	fmul.s	$fa1, $fa1, $fa5
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	fmul.s	$fa1, $fa7, $ft2
	fmadd.s	$fa1, $ft1, $fa6, $fa1
	fmadd.s	$fa1, $ft3, $fa3, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 80
	ret
.Lfunc_end13:
	.size	_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3, .Lfunc_end13-_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi # -- Begin function _ZN23btGeneric6DofConstraint21testAngularLimitMotorEi
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi,@function
_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi: # @_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi
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
	alsl.d	$a2, $a1, $a0, 2
	fld.s	$fa0, $a2, 1168
	ori	$a2, $zero, 56
	mul.d	$a1, $a1, $a2
	add.d	$s0, $a0, $a1
	fld.s	$fa1, $s0, 868
	fld.s	$fa2, $s0, 872
	addi.d	$fp, $s0, 868
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $s0, 868
	fld.s	$fa1, $s0, 872
	fcmp.cule.s	$fcc0, $fa2, $fa1
	fst.s	$fa0, $s0, 912
	bcnez	$fcc0, .LBB14_2
.LBB14_1:
	move	$a0, $zero
	st.w	$zero, $fp, 48
	b	.LBB14_6
.LBB14_2:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB14_4
# %bb.3:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 48
	fsub.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $fp, 40
	b	.LBB14_6
.LBB14_4:
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_1
# %bb.5:
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 48
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 40
	ori	$a0, $zero, 1
.LBB14_6:                               # %_ZN22btRotationalLimitMotor14testLimitValueEf.exit
	ld.b	$a1, $fp, 36
	andi	$a1, $a1, 255
	sltu	$a1, $zero, $a1
	or	$a0, $a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi, .Lfunc_end14-_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi
	.cfi_endproc
                                        # -- End function
	.section	.text._Z21btAdjustAngleToLimitsfff,"axG",@progbits,_Z21btAdjustAngleToLimitsfff,comdat
	.weak	_Z21btAdjustAngleToLimitsfff    # -- Begin function _Z21btAdjustAngleToLimitsfff
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
	bcnez	$fcc0, .LBB15_21
# %bb.1:
	fcmp.cule.s	$fcc0, $fa1, $fs0
	bcnez	$fcc0, .LBB15_4
# %bb.2:
	fmov.s	$fs4, $fa2
	fsub.s	$fa0, $fa1, $fs0
	lu12i.w	$a0, 265360
	ori	$a0, $a0, 4059
	movgr2fr.w	$fs1, $a0
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	fmov.s	$fs2, $fa0
	lu12i.w	$a0, -260976
	ori	$a0, $a0, 4059
	lu32i.d	$a0, 0
	movgr2fr.w	$fs3, $a0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB15_7
# %bb.3:
	fadd.s	$fs2, $fs2, $fs1
	b	.LBB15_9
.LBB15_4:
	fcmp.cule.s	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB15_21
# %bb.5:
	fmov.s	$fs4, $fa1
	fsub.s	$fa0, $fs0, $fa2
	lu12i.w	$a0, 265360
	ori	$a0, $a0, 4059
	movgr2fr.w	$fs2, $a0
	fmov.s	$fa1, $fs2
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	fmov.s	$fs1, $fa0
	lu12i.w	$a0, -260976
	ori	$a0, $a0, 4059
	lu32i.d	$a0, 0
	movgr2fr.w	$fs3, $a0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	lu12i.w	$s0, 263312
	lu12i.w	$fp, -258928
	bcnez	$fcc0, .LBB15_14
# %bb.6:
	fadd.s	$fs1, $fs1, $fs2
	b	.LBB15_16
.LBB15_7:
	lu12i.w	$a0, 263312
	ori	$a0, $a0, 4059
	movgr2fr.w	$fa0, $a0
	fcmp.cule.s	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB15_9
# %bb.8:
	lu12i.w	$a0, -258928
	ori	$a0, $a0, 4059
	lu32i.d	$a0, 0
	movgr2fr.w	$fa0, $a0
	fadd.s	$fs2, $fs2, $fa0
.LBB15_9:                               # %_Z16btNormalizeAnglef.exit
	fsub.s	$fa0, $fs4, $fs0
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB15_11
# %bb.10:
	fadd.s	$fa0, $fa0, $fs1
	b	.LBB15_13
.LBB15_11:
	lu12i.w	$a0, 263312
	ori	$a0, $a0, 4059
	movgr2fr.w	$fa1, $a0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_13
# %bb.12:
	lu12i.w	$a0, -258928
	ori	$a0, $a0, 4059
	lu32i.d	$a0, 0
	movgr2fr.w	$fa1, $a0
	fadd.s	$fa0, $fa0, $fa1
.LBB15_13:                              # %_Z16btNormalizeAnglef.exit29
	fabs.s	$fa0, $fa0
	fadd.s	$fa1, $fs0, $fs1
	fcmp.clt.s	$fcc0, $fs2, $fa0
	fsel	$fs0, $fa1, $fs0, $fcc0
	b	.LBB15_21
.LBB15_14:
	ori	$a0, $s0, 4059
	movgr2fr.w	$fa0, $a0
	fcmp.cule.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB15_16
# %bb.15:
	ori	$a0, $fp, 4059
	lu32i.d	$a0, 0
	movgr2fr.w	$fa0, $a0
	fadd.s	$fs1, $fs1, $fa0
.LBB15_16:                              # %_Z16btNormalizeAnglef.exit31
	fsub.s	$fa0, $fs0, $fs4
	fmov.s	$fa1, $fs2
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB15_18
# %bb.17:
	fadd.s	$fa0, $fa0, $fs2
	b	.LBB15_20
.LBB15_18:
	ori	$a0, $s0, 4059
	movgr2fr.w	$fa1, $a0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_20
# %bb.19:
	ori	$a0, $fp, 4059
	lu32i.d	$a0, 0
	movgr2fr.w	$fa1, $a0
	fadd.s	$fa0, $fa0, $fa1
.LBB15_20:                              # %_Z16btNormalizeAnglef.exit33
	fabs.s	$fa0, $fa0
	ori	$a0, $fp, 4059
	lu32i.d	$a0, 0
	movgr2fr.w	$fa1, $a0
	fadd.s	$fa1, $fs0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fs1
	fsel	$fs0, $fs0, $fa1, $fcc0
.LBB15_21:
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
.Lfunc_end15:
	.size	_Z21btAdjustAngleToLimitsfff, .Lfunc_end15-_Z21btAdjustAngleToLimitsfff
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN23btGeneric6DofConstraint13buildJacobianEv # -- Begin function _ZN23btGeneric6DofConstraint13buildJacobianEv
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint13buildJacobianEv,@function
_ZN23btGeneric6DofConstraint13buildJacobianEv: # @_ZN23btGeneric6DofConstraint13buildJacobianEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.bu	$a0, $a0, 1265
	beqz	$a0, .LBB16_25
# %bb.1:
	st.w	$zero, $fp, 920
	st.w	$zero, $fp, 976
	st.w	$zero, $fp, 1032
	ld.d	$a0, $fp, 24
	ld.d	$a2, $fp, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 760
	addi.d	$a1, $a0, 8
	addi.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 56
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr0, $fp, 1248
	fld.s	$fa1, $fp, 744
	fld.s	$fa2, $fp, 728
	vld	$vr3, $fp, 1248
	vst	$vr0, $sp, 48
	fcmp.cult.s	$fcc0, $fa1, $fa2
	vst	$vr3, $sp, 32
	bceqz	$fcc0, .LBB16_7
# %bb.2:
	fld.s	$fa0, $fp, 748
	fld.s	$fa1, $fp, 732
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB16_8
.LBB16_3:
	fld.s	$fa0, $fp, 752
	fld.s	$fa1, $fp, 736
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_5
.LBB16_4:
	ld.bu	$a0, $fp, 1264
	ori	$a1, $zero, 1112
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1048
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1128
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1064
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1144
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 1080
	maskeqz	$a0, $a4, $a0
	ldx.w	$a2, $fp, $a2
	ldx.wu	$a1, $fp, $a1
	or	$a0, $a0, $a3
	ldx.wu	$a0, $fp, $a0
	slli.d	$a2, $a2, 32
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	addi.d	$a1, $fp, 392
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_)
	jirl	$ra, $ra, 0
.LBB16_5:                               # %.preheader
	fld.s	$fa0, $fp, 1168
	fld.s	$fa1, $fp, 868
	fld.s	$fa2, $fp, 872
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 868
	fld.s	$fa2, $fp, 872
	fcmp.cule.s	$fcc0, $fa1, $fa2
	fst.s	$fa0, $fp, 912
	bcnez	$fcc0, .LBB16_9
.LBB16_6:
	st.w	$zero, $fp, 916
	ld.bu	$a0, $fp, 904
	bnez	$a0, .LBB16_14
	b	.LBB16_15
.LBB16_7:
	ld.bu	$a0, $fp, 1264
	addi.d	$a1, $fp, 224
	ori	$a2, $zero, 1120
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1056
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1104
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 1040
	maskeqz	$a4, $a4, $a0
	or	$a3, $a4, $a3
	ori	$a4, $zero, 1136
	masknez	$a4, $a4, $a0
	ori	$a5, $zero, 1072
	maskeqz	$a0, $a5, $a0
	ldx.w	$a2, $fp, $a2
	ldx.wu	$a3, $fp, $a3
	or	$a0, $a0, $a4
	ldx.wu	$a0, $fp, $a0
	slli.d	$a2, $a2, 32
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 16
	st.d	$a0, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 748
	fld.s	$fa1, $fp, 732
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_3
.LBB16_8:
	ld.bu	$a0, $fp, 1264
	ori	$a1, $zero, 1108
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1044
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1124
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1060
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1140
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 1076
	maskeqz	$a0, $a4, $a0
	ldx.w	$a2, $fp, $a2
	ldx.wu	$a1, $fp, $a1
	or	$a0, $a0, $a3
	ldx.wu	$a0, $fp, $a0
	slli.d	$a2, $a2, 32
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	addi.d	$a1, $fp, 308
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 752
	fld.s	$fa1, $fp, 736
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB16_4
	b	.LBB16_5
.LBB16_9:
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB16_11
# %bb.10:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 916
	b	.LBB16_13
.LBB16_11:
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB16_6
# %bb.12:
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 916
	fmov.s	$fa1, $fa2
.LBB16_13:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 908
.LBB16_14:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread
	vld	$vr0, $fp, 1184
	addi.d	$a1, $fp, 476
	vst	$vr0, $sp, 16
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3)
	jirl	$ra, $ra, 0
.LBB16_15:
	fld.s	$fa0, $fp, 1172
	fld.s	$fa1, $fp, 924
	fld.s	$fa2, $fp, 928
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $fp, 924
	fld.s	$fa1, $fp, 928
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fst.s	$fa0, $fp, 968
	bceqz	$fcc0, .LBB16_17
.LBB16_16:
	st.w	$zero, $fp, 972
	ld.bu	$a0, $fp, 960
	bnez	$a0, .LBB16_22
	b	.LBB16_23
.LBB16_17:
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB16_19
# %bb.18:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 972
	fmov.s	$fa1, $fa2
	b	.LBB16_21
.LBB16_19:
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB16_16
# %bb.20:
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 972
.LBB16_21:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1.sink.split
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 964
.LBB16_22:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1
	vld	$vr0, $fp, 1200
	vst	$vr0, $sp, 16
	addi.d	$a1, $fp, 560
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3)
	jirl	$ra, $ra, 0
.LBB16_23:
	fld.s	$fa0, $fp, 1176
	fld.s	$fa1, $fp, 980
	fld.s	$fa2, $fp, 984
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $fp, 980
	fld.s	$fa1, $fp, 984
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fst.s	$fa0, $fp, 1024
	bceqz	$fcc0, .LBB16_26
.LBB16_24:
	st.w	$zero, $fp, 1028
	ld.bu	$a0, $fp, 1016
	bnez	$a0, .LBB16_31
.LBB16_25:
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB16_26:
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB16_28
# %bb.27:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 1028
	fmov.s	$fa1, $fa2
	b	.LBB16_30
.LBB16_28:
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB16_24
# %bb.29:
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 1028
.LBB16_30:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2.sink.split
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 1020
.LBB16_31:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2
	vld	$vr0, $fp, 1216
	vst	$vr0, $sp, 16
	addi.d	$a1, $fp, 644
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end16:
	.size	_ZN23btGeneric6DofConstraint13buildJacobianEv, .Lfunc_end16-_ZN23btGeneric6DofConstraint13buildJacobianEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK23btGeneric6DofConstraint7getAxisEi # -- Begin function _ZNK23btGeneric6DofConstraint7getAxisEi
	.p2align	5
	.type	_ZNK23btGeneric6DofConstraint7getAxisEi,@function
_ZNK23btGeneric6DofConstraint7getAxisEi: # @_ZNK23btGeneric6DofConstraint7getAxisEi
# %bb.0:
	alsl.d	$a1, $a1, $a0, 4
	ld.d	$a0, $a1, 1184
	ld.d	$a1, $a1, 1192
	ret
.Lfunc_end17:
	.size	_ZNK23btGeneric6DofConstraint7getAxisEi, .Lfunc_end17-_ZNK23btGeneric6DofConstraint7getAxisEi
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E # -- Begin function _ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E,@function
_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E: # @_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
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
	ld.bu	$a0, $a0, 1265
	move	$fp, $a1
	beqz	$a0, .LBB18_2
# %bb.1:
	st.d	$zero, $fp, 0
	b	.LBB18_35
.LBB18_2:
	ld.d	$a0, $s0, 24
	ld.d	$a2, $s0, 32
	addi.d	$a1, $a0, 8
	addi.d	$a2, $a2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 6
	st.d	$a0, $fp, 0
	ld.w	$a0, $s0, 856
	bnez	$a0, .LBB18_5
# %bb.3:
	ld.bu	$a0, $s0, 788
	bnez	$a0, .LBB18_5
# %bb.4:
	move	$a0, $zero
	ori	$a1, $zero, 6
	ld.w	$a2, $s0, 860
	beqz	$a2, .LBB18_6
	b	.LBB18_7
.LBB18_5:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 5
	st.d	$a1, $fp, 0
	ori	$a1, $zero, 5
	ld.w	$a2, $s0, 860
	bnez	$a2, .LBB18_7
.LBB18_6:                               # %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit
	ld.bu	$a2, $s0, 789
	beqz	$a2, .LBB18_8
.LBB18_7:
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a1, $a1, -1
	st.w	$a1, $fp, 4
.LBB18_8:                               # %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1
	ld.w	$a2, $s0, 864
	bnez	$a2, .LBB18_10
# %bb.9:                                # %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1
	ld.bu	$a2, $s0, 790
	beqz	$a2, .LBB18_11
.LBB18_10:
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a0, $a1, -1
	st.w	$a0, $fp, 4
.LBB18_11:                              # %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2
	fld.s	$fa0, $s0, 1168
	fld.s	$fa1, $s0, 868
	fld.s	$fa2, $s0, 872
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s0, 868
	fld.s	$fa2, $s0, 872
	fcmp.cule.s	$fcc0, $fa1, $fa2
	fst.s	$fa0, $s0, 912
	bcnez	$fcc0, .LBB18_13
.LBB18_12:
	st.w	$zero, $s0, 916
	ld.bu	$a0, $s0, 904
	bnez	$a0, .LBB18_18
	b	.LBB18_19
.LBB18_13:
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB18_15
# %bb.14:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 916
	b	.LBB18_17
.LBB18_15:
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB18_12
# %bb.16:
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 916
	fmov.s	$fa1, $fa2
.LBB18_17:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s0, 908
.LBB18_18:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a0, $a1, -1
	st.w	$a0, $fp, 4
.LBB18_19:
	fld.s	$fa0, $s0, 1172
	fld.s	$fa1, $s0, 924
	fld.s	$fa2, $s0, 928
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $s0, 924
	fld.s	$fa1, $s0, 928
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fst.s	$fa0, $s0, 968
	bceqz	$fcc0, .LBB18_21
.LBB18_20:
	st.w	$zero, $s0, 972
	ld.bu	$a0, $s0, 960
	bnez	$a0, .LBB18_26
	b	.LBB18_27
.LBB18_21:
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB18_23
# %bb.22:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 972
	fmov.s	$fa1, $fa2
	b	.LBB18_25
.LBB18_23:
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB18_20
# %bb.24:
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 972
.LBB18_25:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1.sink.split
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s0, 964
.LBB18_26:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a0, $a1, -1
	st.w	$a0, $fp, 4
.LBB18_27:
	fld.s	$fa0, $s0, 1176
	fld.s	$fa1, $s0, 980
	fld.s	$fa2, $s0, 984
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $s0, 980
	fld.s	$fa1, $s0, 984
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fst.s	$fa0, $s0, 1024
	bceqz	$fcc0, .LBB18_29
.LBB18_28:
	st.w	$zero, $s0, 1028
	ld.bu	$a0, $s0, 1016
	bnez	$a0, .LBB18_34
	b	.LBB18_35
.LBB18_29:
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB18_31
# %bb.30:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 1028
	fmov.s	$fa1, $fa2
	b	.LBB18_33
.LBB18_31:
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB18_28
# %bb.32:
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 1028
.LBB18_33:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2.sink.split
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s0, 1020
.LBB18_34:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a0, $a1, -1
	st.w	$a0, $fp, 4
.LBB18_35:                              # %.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end18:
	.size	_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, .Lfunc_end18-_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E # -- Begin function _ZN23btGeneric6DofConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E,@function
_ZN23btGeneric6DofConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E: # @_ZN23btGeneric6DofConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
# %bb.0:
	ld.bu	$a0, $a0, 1265
	ori	$a2, $zero, 6
	masknez	$a0, $a2, $a0
	st.w	$a0, $a1, 0
	st.w	$zero, $a1, 4
	ret
.Lfunc_end19:
	.size	_ZN23btGeneric6DofConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E, .Lfunc_end19-_ZN23btGeneric6DofConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E # -- Begin function _ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E,@function
_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E: # @_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.cfi_startproc
# %bb.0:
	ld.d	$a6, $a0, 24
	ld.d	$a7, $a0, 32
	addi.d	$a2, $a6, 8
	addi.d	$a3, $a7, 8
	addi.d	$a4, $a6, 328
	addi.d	$a5, $a7, 328
	addi.d	$a6, $a6, 344
	addi.d	$a7, $a7, 344
	pcaddu18i	$t8, %call36(_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_)
	jr	$t8
.Lfunc_end20:
	.size	_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, .Lfunc_end20-_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_ # -- Begin function _ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_,@function
_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_: # @_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_
	.cfi_startproc
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s3, $a7
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$s6, $a0
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s6, 1168
	fld.s	$fa1, $s6, 868
	fld.s	$fa2, $s6, 872
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $s6, 868
	fld.s	$fa1, $s6, 872
	fcmp.cule.s	$fcc0, $fa2, $fa1
	fst.s	$fa0, $s6, 912
	bcnez	$fcc0, .LBB21_2
.LBB21_1:
	st.w	$zero, $s6, 916
	b	.LBB21_7
.LBB21_2:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB21_4
# %bb.3:
	ori	$a0, $zero, 1
	st.w	$a0, $s6, 916
	fsub.s	$fa0, $fa0, $fa2
	b	.LBB21_6
.LBB21_4:
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_1
# %bb.5:
	ori	$a0, $zero, 2
	st.w	$a0, $s6, 916
	fsub.s	$fa0, $fa0, $fa1
.LBB21_6:                               # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
	fst.s	$fa0, $s6, 908
.LBB21_7:                               # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
	fld.s	$fa0, $s6, 1172
	fld.s	$fa1, $s6, 924
	fld.s	$fa2, $s6, 928
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $s6, 924
	fld.s	$fa1, $s6, 928
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fst.s	$fa0, $s6, 968
	bceqz	$fcc0, .LBB21_9
.LBB21_8:
	st.w	$zero, $s6, 972
	b	.LBB21_14
.LBB21_9:
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB21_11
# %bb.10:
	ori	$a0, $zero, 1
	st.w	$a0, $s6, 972
	fsub.s	$fa0, $fa0, $fa2
	b	.LBB21_13
.LBB21_11:
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB21_8
# %bb.12:
	ori	$a0, $zero, 2
	st.w	$a0, $s6, 972
	fsub.s	$fa0, $fa0, $fa1
.LBB21_13:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
	fst.s	$fa0, $s6, 964
.LBB21_14:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
	fld.s	$fa0, $s6, 1176
	fld.s	$fa1, $s6, 980
	fld.s	$fa2, $s6, 984
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $s6, 980
	fld.s	$fa1, $s6, 984
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fst.s	$fa0, $s6, 1024
	bceqz	$fcc0, .LBB21_16
.LBB21_15:
	st.w	$zero, $s6, 1028
	b	.LBB21_21
.LBB21_16:
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB21_18
# %bb.17:
	ori	$a0, $zero, 1
	st.w	$a0, $s6, 1028
	fsub.s	$fa0, $fa0, $fa2
	b	.LBB21_20
.LBB21_18:
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB21_15
# %bb.19:
	ori	$a0, $zero, 2
	st.w	$a0, $s6, 1028
	fsub.s	$fa0, $fa0, $fa1
.LBB21_20:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2
	fst.s	$fa0, $s6, 1020
.LBB21_21:                              # %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s2
	move	$a4, $s1
	move	$a5, $s0
	move	$a6, $fp
	move	$a7, $s3
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s3, $sp, 0
	move	$a0, $s6
	move	$a1, $s5
	move	$a3, $s4
	move	$a4, $s2
	move	$a5, $s1
	move	$a6, $s0
	move	$a7, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_)
	jirl	$ra, $ra, 0
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
.Lfunc_end21:
	.size	_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_, .Lfunc_end21-_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_ # -- Begin function _ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_,@function
_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_: # @_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_
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
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.w	$a0, $a0, 856
	ld.bu	$t0, $s0, 788
	move	$fp, $a7
	move	$s1, $a6
	move	$s2, $a5
	move	$s3, $a4
	move	$s4, $a3
	move	$s5, $a2
	move	$s6, $a1
	st.w	$zero, $sp, 108
	bnez	$a0, .LBB22_4
# %bb.1:
	move	$s7, $zero
	bnez	$t0, .LBB22_4
# %bb.2:                                # %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit
	ld.w	$a0, $s0, 860
	ld.bu	$a2, $s0, 789
	beqz	$a0, .LBB22_5
.LBB22_3:
	move	$a1, $a2
	b	.LBB22_6
.LBB22_4:
	fld.s	$fa0, $s0, 840
	fld.s	$fa1, $s0, 824
	fld.s	$fa2, $s0, 780
	fst.s	$fa0, $sp, 100
	fst.s	$fa1, $sp, 96
	fst.s	$fa2, $sp, 76
	fld.s	$fa0, $s0, 784
	fld.s	$fa1, $s0, 744
	fld.s	$fa2, $s0, 776
	fld.s	$fa3, $s0, 728
	fst.s	$fa0, $sp, 84
	fst.s	$fa1, $sp, 60
	fst.s	$fa2, $sp, 80
	fst.s	$fa3, $sp, 56
	fld.s	$fa0, $s0, 808
	st.w	$zero, $sp, 88
	st.w	$a0, $sp, 104
	st.b	$t0, $sp, 92
	fst.s	$fa0, $sp, 68
	fld.s	$fa0, $s0, 792
	st.w	$zero, $sp, 72
	ld.w	$a0, $s0, 1056
	ld.wu	$a1, $s0, 1040
	fst.s	$fa0, $sp, 64
	ld.wu	$a2, $s0, 1072
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 40
	st.d	$a2, $sp, 48
	st.d	$zero, $sp, 24
	addi.d	$a0, $sp, 40
	st.d	$a0, $sp, 16
	st.d	$zero, $sp, 8
	addi.d	$a1, $sp, 56
	st.d	$s6, $sp, 0
	move	$a0, $s0
	move	$a2, $s5
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $s2
	move	$a6, $s1
	move	$a7, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.w	$a0, $s0, 860
	ld.bu	$a2, $s0, 789
	bnez	$a0, .LBB22_3
.LBB22_5:
	ori	$a1, $zero, 1
	beqz	$a2, .LBB22_7
.LBB22_6:                               # %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge
	fld.s	$fa0, $s0, 844
	fld.s	$fa1, $s0, 828
	fld.s	$fa2, $s0, 780
	fst.s	$fa0, $sp, 100
	fst.s	$fa1, $sp, 96
	fst.s	$fa2, $sp, 76
	fld.s	$fa0, $s0, 784
	fld.s	$fa1, $s0, 748
	fld.s	$fa2, $s0, 776
	fld.s	$fa3, $s0, 732
	fst.s	$fa0, $sp, 84
	fst.s	$fa1, $sp, 60
	fst.s	$fa2, $sp, 80
	fst.s	$fa3, $sp, 56
	fld.s	$fa0, $s0, 812
	st.w	$zero, $sp, 88
	st.w	$a0, $sp, 104
	st.b	$a1, $sp, 92
	fst.s	$fa0, $sp, 68
	fld.s	$fa0, $s0, 796
	st.w	$zero, $sp, 72
	ld.w	$a0, $s0, 1060
	ld.wu	$a1, $s0, 1044
	fst.s	$fa0, $sp, 64
	ld.wu	$a2, $s0, 1076
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 40
	st.d	$a2, $sp, 48
	st.d	$zero, $sp, 24
	addi.d	$a0, $sp, 40
	st.d	$a0, $sp, 16
	st.d	$s7, $sp, 8
	addi.d	$a1, $sp, 56
	st.d	$s6, $sp, 0
	move	$a0, $s0
	move	$a2, $s5
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $s2
	move	$a6, $s1
	move	$a7, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i)
	jirl	$ra, $ra, 0
	add.d	$s7, $a0, $s7
.LBB22_7:                               # %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1
	ld.w	$a0, $s0, 864
	ld.bu	$a2, $s0, 790
	beqz	$a0, .LBB22_9
# %bb.8:
	move	$a1, $a2
	b	.LBB22_10
.LBB22_9:
	ori	$a1, $zero, 1
	beqz	$a2, .LBB22_11
.LBB22_10:                              # %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge
	fld.s	$fa0, $s0, 848
	fld.s	$fa1, $s0, 832
	fld.s	$fa2, $s0, 780
	fst.s	$fa0, $sp, 100
	fst.s	$fa1, $sp, 96
	fst.s	$fa2, $sp, 76
	fld.s	$fa0, $s0, 784
	fld.s	$fa1, $s0, 752
	fld.s	$fa2, $s0, 776
	fld.s	$fa3, $s0, 736
	fst.s	$fa0, $sp, 84
	fst.s	$fa1, $sp, 60
	fst.s	$fa2, $sp, 80
	fst.s	$fa3, $sp, 56
	fld.s	$fa0, $s0, 816
	st.w	$zero, $sp, 88
	st.w	$a0, $sp, 104
	st.b	$a1, $sp, 92
	fst.s	$fa0, $sp, 68
	fld.s	$fa0, $s0, 800
	st.w	$zero, $sp, 72
	ld.w	$a0, $s0, 1064
	ld.wu	$a1, $s0, 1048
	fst.s	$fa0, $sp, 64
	ld.wu	$a2, $s0, 1080
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 40
	st.d	$a2, $sp, 48
	st.d	$zero, $sp, 24
	addi.d	$a0, $sp, 40
	st.d	$a0, $sp, 16
	st.d	$s7, $sp, 8
	addi.d	$a1, $sp, 56
	st.d	$s6, $sp, 0
	move	$a0, $s0
	move	$a2, $s5
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $s2
	move	$a6, $s1
	move	$a7, $fp
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i)
	jirl	$ra, $ra, 0
	add.d	$s7, $a0, $s7
.LBB22_11:                              # %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2
	move	$a0, $s7
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
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
.Lfunc_end22:
	.size	_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_, .Lfunc_end22-_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_ # -- Begin function _ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_,@function
_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_: # @_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_
	.cfi_startproc
# %bb.0:
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
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
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
	move	$s2, $a0
	ld.w	$a0, $a0, 916
	ld.d	$s0, $sp, 144
	move	$s1, $a7
	move	$s3, $a6
	move	$s4, $a5
	move	$s5, $a4
	move	$s6, $a3
	move	$fp, $a2
	move	$s7, $a1
	bnez	$a0, .LBB23_2
# %bb.1:
	ld.bu	$a0, $s2, 904
	beqz	$a0, .LBB23_3
.LBB23_2:
	vld	$vr0, $s2, 1184
	addi.d	$a1, $s2, 868
	vst	$vr0, $sp, 48
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$fp, $sp, 8
	st.d	$s7, $sp, 0
	move	$a0, $s2
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
.LBB23_3:
	ld.w	$a0, $s2, 972
	bnez	$a0, .LBB23_5
# %bb.4:
	ld.bu	$a0, $s2, 960
	beqz	$a0, .LBB23_6
.LBB23_5:
	vld	$vr0, $s2, 1200
	addi.d	$a1, $s2, 924
	vst	$vr0, $sp, 48
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$fp, $sp, 8
	st.d	$s7, $sp, 0
	move	$a0, $s2
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
.LBB23_6:
	ld.w	$a0, $s2, 1028
	bnez	$a0, .LBB23_8
# %bb.7:
	ld.bu	$a0, $s2, 1016
	beqz	$a0, .LBB23_9
.LBB23_8:
	vld	$vr0, $s2, 1216
	addi.d	$a1, $s2, 980
	vst	$vr0, $sp, 48
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$fp, $sp, 8
	st.d	$s7, $sp, 0
	move	$a0, $s2
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
.LBB23_9:
	move	$a0, $fp
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
.Lfunc_end23:
	.size	_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_, .Lfunc_end23-_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i # -- Begin function _ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i,@function
_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i: # @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i
	.cfi_startproc
# %bb.0:
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
	ld.d	$s0, $sp, 32
	ld.w	$t0, $s0, 40
	ld.bu	$t4, $a1, 36
	ld.w	$t1, $a1, 48
	bnez	$t4, .LBB24_3
# %bb.1:
	bnez	$t1, .LBB24_3
# %bb.2:
	move	$a0, $zero
	b	.LBB24_17
.LBB24_3:
	ld.d	$t8, $sp, 56
	ld.d	$t3, $sp, 48
	ld.d	$t5, $sp, 40
	sltui	$t2, $t8, 1
	ori	$t6, $zero, 16
	masknez	$t6, $t6, $t2
	ori	$t7, $zero, 8
	maskeqz	$t7, $t7, $t2
	or	$t6, $t7, $t6
	ldx.d	$s1, $s0, $t6
	mul.w	$t0, $t0, $t5
	beqz	$t8, .LBB24_5
# %bb.4:
	ld.d	$t7, $s0, 32
	b	.LBB24_6
.LBB24_5:
	move	$t7, $zero
.LBB24_6:
	fld.s	$fa0, $t3, 0
	slli.d	$fp, $t0, 2
	fstx.s	$fa0, $s1, $fp
	fld.s	$fa0, $t3, 4
	addi.w	$t5, $t0, 1
	slli.d	$t6, $t5, 2
	fstx.s	$fa0, $s1, $t6
	fld.s	$fa0, $t3, 8
	addi.w	$t5, $t0, 2
	slli.d	$t5, $t5, 2
	fstx.s	$fa0, $s1, $t5
	beqz	$t8, .LBB24_13
# %bb.7:
	fld.s	$fa0, $t3, 0
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $t7, $fp
	fld.s	$fa0, $t3, 4
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $t7, $t6
	fld.s	$fa0, $t3, 8
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $t7, $t5
	beqz	$t1, .LBB24_14
.LBB24_8:
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 4
	ld.d	$a2, $s0, 48
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	stx.w	$zero, $a2, $fp
	bcnez	$fcc0, .LBB24_11
# %bb.9:
	beqz	$t4, .LBB24_11
# %bb.10:
	ld.d	$a0, $s0, 56
	stx.w	$zero, $a0, $fp
.LBB24_11:                              # %.critedge164
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $a1, 28
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a1, 40
	fldx.s	$fa2, $a2, $fp
	fneg.s	$fa3, $fa0
	movgr2cf	$fcc0, $t2
	ld.d	$a0, $s0, 56
	fsel	$fa0, $fa3, $fa0, $fcc0
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fstx.s	$fa0, $a2, $fp
	stx.w	$zero, $a0, $fp
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 4
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_18
# %bb.12:
	ld.d	$a0, $s0, 64
	lu12i.w	$a1, -2049
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	ld.d	$a2, $s0, 72
	stx.w	$a1, $a0, $fp
	lu12i.w	$a0, 522239
	ori	$a0, $a0, 4095
	stx.w	$a0, $a2, $fp
	b	.LBB24_16
.LBB24_13:                              # %.critedge
	fld.s	$fa1, $a0, 1152
	fld.s	$fa2, $a2, 48
	fld.s	$fa3, $a0, 1156
	fld.s	$fa4, $a2, 52
	fld.s	$fa5, $a0, 1160
	fld.s	$fa6, $a2, 56
	fld.s	$fa7, $t3, 4
	fsub.s	$fa1, $fa1, $fa2
	fsub.s	$fa2, $fa3, $fa4
	fsub.s	$fa3, $fa5, $fa6
	fneg.s	$fa4, $fa7
	fmul.s	$fa4, $fa3, $fa4
	fld.s	$fa5, $t3, 0
	fmadd.s	$fa4, $fa2, $fa0, $fa4
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fmadd.s	$fa0, $fa3, $fa5, $fa0
	ld.d	$a2, $s0, 16
	fneg.s	$fa3, $fa5
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa1, $fa1, $fa7, $fa2
	fstx.s	$fa4, $a2, $fp
	fstx.s	$fa0, $a2, $t6
	fstx.s	$fa1, $a2, $t5
	fld.s	$fa0, $a0, 1152
	fld.s	$fa1, $a3, 48
	fld.s	$fa2, $a0, 1156
	fld.s	$fa3, $a3, 52
	fld.s	$fa4, $a0, 1160
	fld.s	$fa5, $a3, 56
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $t3, 4
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa4, $fa5
	fld.s	$fa4, $t3, 8
	fneg.s	$fa5, $fa1
	fld.s	$fa6, $t3, 0
	fmul.s	$fa5, $fa3, $fa5
	fneg.s	$fa7, $fa4
	fmul.s	$fa7, $fa0, $fa7
	fneg.s	$ft0, $fa6
	fmul.s	$ft0, $fa2, $ft0
	ld.d	$t7, $s0, 32
	fnmadd.s	$fa2, $fa2, $fa4, $fa5
	fnmadd.s	$fa3, $fa3, $fa6, $fa7
	fnmadd.s	$fa0, $fa0, $fa1, $ft0
	fstx.s	$fa2, $t7, $fp
	fstx.s	$fa3, $t7, $t6
	fstx.s	$fa0, $t7, $t5
	bnez	$t1, .LBB24_8
.LBB24_14:                              # %.thread222
	ld.d	$a2, $s0, 48
	stx.w	$zero, $a2, $fp
	beqz	$t4, .LBB24_16
# %bb.15:                               # %.thread221
	ld.d	$a2, $s0, 56
	stx.w	$zero, $a2, $fp
	fld.s	$fa3, $a1, 8
	fld.s	$fa0, $a1, 44
	fld.s	$fa1, $a1, 0
	fld.s	$fa4, $s0, 0
	fld.s	$fa5, $s0, 4
	fld.s	$fa2, $a1, 4
	fneg.s	$fa6, $fa3
	movgr2cf	$fcc0, $t2
	fsel	$fa3, $fa3, $fa6, $fcc0
	fmul.s	$fa4, $fa4, $fa5
	move	$s1, $a1
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraint14getMotorFactorEfffff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	fld.s	$fa1, $s1, 8
	fldx.s	$fa2, $a0, $fp
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fstx.s	$fa0, $a0, $fp
	fld.s	$fa0, $s1, 12
	ld.d	$a0, $s0, 64
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a0, $fp
	fld.s	$fa0, $s1, 12
	ld.d	$a0, $s0, 72
	fstx.s	$fa0, $a0, $fp
.LBB24_16:
	ori	$a0, $zero, 1
.LBB24_17:                              # %.thread225
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB24_18:
	addi.d	$a0, $t1, -1
	sltui	$a0, $a0, 1
	ld.d	$a3, $s0, 64
	lu12i.w	$t4, -2049
	ori	$t4, $t4, 4095
	lu32i.d	$t4, 0
	movgr2fr.w	$fa1, $t4
	movgr2fr.w	$fa0, $zero
	movgr2cf	$fcc0, $a0
	fsel	$fa1, $fa1, $fa0, $fcc0
	lu12i.w	$a0, 522239
	ori	$a0, $a0, 4095
	ld.d	$t4, $s0, 72
	movgr2fr.w	$fa2, $a0
	fsel	$fa2, $fa0, $fa2, $fcc0
	fstx.s	$fa1, $a3, $fp
	fstx.s	$fa2, $t4, $fp
	fld.s	$fa1, $a1, 32
	fcmp.cule.s	$fcc0, $fa1, $fa0
	ori	$a0, $zero, 1
	bcnez	$fcc0, .LBB24_17
# %bb.19:
	fld.s	$fa2, $t3, 0
	fld.s	$fa3, $t3, 4
	fld.s	$fa4, $t3, 8
	masknez	$a0, $a6, $t2
	maskeqz	$a1, $a4, $t2
	or	$a0, $a1, $a0
	masknez	$a1, $a7, $t2
	fld.s	$fa5, $a0, 4
	fld.s	$fa6, $a0, 0
	maskeqz	$a3, $a5, $t2
	or	$a1, $a3, $a1
	fmul.s	$fa5, $fa5, $fa3
	fmadd.s	$fa5, $fa6, $fa2, $fa5
	fld.s	$fa6, $a0, 8
	fld.s	$fa7, $a1, 4
	fld.s	$ft0, $a1, 0
	fld.s	$ft1, $a1, 8
	fmadd.s	$fa5, $fa6, $fa4, $fa5
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa2, $ft0, $fa2, $fa3
	fmadd.s	$fa2, $ft1, $fa4, $fa2
	ori	$a0, $zero, 1
	fsub.s	$fa2, $fa5, $fa2
	bne	$t1, $a0, .LBB24_22
# %bb.20:
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB24_17
# %bb.21:
	fldx.s	$fa3, $a2, $fp
	fneg.s	$fa0, $fa1
	fmul.s	$fa0, $fa2, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa3
	bceqz	$fcc0, .LBB24_24
	b	.LBB24_17
.LBB24_22:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB24_17
# %bb.23:
	fldx.s	$fa3, $a2, $fp
	fneg.s	$fa0, $fa1
	fmul.s	$fa0, $fa2, $fa0
	fcmp.cule.s	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB24_17
.LBB24_24:
	alsl.d	$a1, $t0, $a2, 2
	fst.s	$fa0, $a1, 0
	b	.LBB24_17
.Lfunc_end24:
	.size	_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i, .Lfunc_end24-_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f # -- Begin function _ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f,@function
_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f: # @_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	move	$s1, $a0
	ld.bu	$a0, $a0, 1265
	beqz	$a0, .LBB25_16
# %bb.1:
	move	$fp, $a2
	move	$s0, $a1
	fst.s	$fa0, $s1, 1036
	vld	$vr1, $s1, 1088
	vld	$vr2, $s1, 1152
	fld.s	$fa3, $s1, 744
	fld.s	$fa4, $s1, 728
	vst	$vr1, $sp, 80
	vst	$vr2, $sp, 64
	addi.d	$s2, $s1, 728
	fcmp.cult.s	$fcc0, $fa3, $fa4
	addi.d	$s3, $s1, 1248
	bceqz	$fcc0, .LBB25_5
# %bb.2:
	fld.s	$fa0, $s1, 748
	fld.s	$fa1, $s1, 732
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB25_6
.LBB25_3:
	fld.s	$fa0, $s1, 752
	fld.s	$fa1, $s1, 736
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB25_7
.LBB25_4:
	ld.w	$a0, $s1, 916
	beqz	$a0, .LBB25_8
	b	.LBB25_9
.LBB25_5:
	fld.s	$fa1, $s1, 304
	ld.bu	$a0, $s1, 1264
	frecip.s	$fa1, $fa1
	ori	$a1, $zero, 1120
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1056
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1104
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1040
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1136
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 1072
	maskeqz	$a0, $a4, $a0
	ldx.w	$a1, $s1, $a1
	or	$a0, $a0, $a3
	ldx.wu	$a0, $s1, $a0
	ldx.wu	$a2, $s1, $a2
	slli.d	$a3, $a1, 32
	ld.d	$a1, $s1, 24
	ld.d	$a4, $s1, 32
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 48
	st.d	$a0, $sp, 56
	st.d	$s3, $sp, 8
	addi.d	$a0, $sp, 48
	addi.d	$a3, $sp, 80
	addi.d	$a6, $sp, 64
	st.d	$a0, $sp, 0
	move	$a0, $s2
	move	$a2, $s0
	move	$a5, $fp
	move	$a7, $zero
	pcaddu18i	$ra, %call36(_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s1, 748
	fld.s	$fa1, $s1, 732
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB25_3
.LBB25_6:
	fld.s	$fa0, $s1, 388
	ld.bu	$a0, $s1, 1264
	frecip.s	$fa1, $fa0
	ori	$a1, $zero, 1108
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1044
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1124
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1060
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1140
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 1076
	maskeqz	$a0, $a4, $a0
	ldx.w	$a2, $s1, $a2
	or	$a0, $a0, $a3
	ldx.wu	$a3, $s1, $a1
	ldx.wu	$a0, $s1, $a0
	slli.d	$a2, $a2, 32
	fld.s	$fa0, $s1, 1036
	ld.d	$a1, $s1, 24
	ld.d	$a4, $s1, 32
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 48
	st.d	$a0, $sp, 56
	st.d	$s3, $sp, 8
	addi.d	$a0, $sp, 48
	addi.d	$a3, $sp, 80
	addi.d	$a6, $sp, 64
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 0
	move	$a0, $s2
	move	$a2, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s1, 752
	fld.s	$fa1, $s1, 736
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB25_4
.LBB25_7:
	fld.s	$fa0, $s1, 472
	ld.bu	$a0, $s1, 1264
	frecip.s	$fa1, $fa0
	ori	$a1, $zero, 1112
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1048
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1128
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1064
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1144
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 1080
	maskeqz	$a0, $a4, $a0
	ldx.w	$a2, $s1, $a2
	or	$a0, $a0, $a3
	ldx.wu	$a3, $s1, $a1
	ldx.wu	$a0, $s1, $a0
	slli.d	$a2, $a2, 32
	fld.s	$fa0, $s1, 1036
	ld.d	$a1, $s1, 24
	ld.d	$a4, $s1, 32
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 48
	st.d	$a0, $sp, 56
	st.d	$s3, $sp, 8
	addi.d	$a0, $sp, 48
	addi.d	$a3, $sp, 80
	addi.d	$a6, $sp, 64
	ori	$a7, $zero, 2
	st.d	$a0, $sp, 0
	move	$a0, $s2
	move	$a2, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 916
	bnez	$a0, .LBB25_9
.LBB25_8:
	ld.bu	$a0, $s1, 904
	beqz	$a0, .LBB25_10
.LBB25_9:
	vld	$vr1, $s1, 1184
	fld.s	$fa2, $s1, 556
	fld.s	$fa0, $s1, 1036
	ld.d	$a2, $s1, 24
	ld.d	$a4, $s1, 32
	addi.d	$a0, $s1, 868
	vst	$vr1, $sp, 32
	frecip.s	$fa1, $fa2
	addi.d	$a1, $sp, 32
	move	$a3, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_)
	jirl	$ra, $ra, 0
.LBB25_10:
	ld.w	$a0, $s1, 972
	bnez	$a0, .LBB25_12
# %bb.11:
	ld.bu	$a0, $s1, 960
	beqz	$a0, .LBB25_13
.LBB25_12:
	vld	$vr1, $s1, 1200
	fld.s	$fa2, $s1, 640
	fld.s	$fa0, $s1, 1036
	ld.d	$a2, $s1, 24
	ld.d	$a4, $s1, 32
	addi.d	$a0, $s1, 924
	vst	$vr1, $sp, 32
	frecip.s	$fa1, $fa2
	addi.d	$a1, $sp, 32
	move	$a3, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_)
	jirl	$ra, $ra, 0
.LBB25_13:
	ld.w	$a0, $s1, 1028
	bnez	$a0, .LBB25_15
# %bb.14:
	ld.bu	$a0, $s1, 1016
	beqz	$a0, .LBB25_16
.LBB25_15:
	vld	$vr1, $s1, 1216
	fld.s	$fa2, $s1, 724
	fld.s	$fa0, $s1, 1036
	ld.d	$a2, $s1, 24
	ld.d	$a4, $s1, 32
	addi.d	$a0, $s1, 980
	vst	$vr1, $sp, 32
	frecip.s	$fa1, $fa2
	addi.d	$a1, $sp, 32
	move	$a3, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_)
	jirl	$ra, $ra, 0
.LBB25_16:
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end25:
	.size	_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, .Lfunc_end25-_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint9updateRHSEf # -- Begin function _ZN23btGeneric6DofConstraint9updateRHSEf
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint9updateRHSEf,@function
_ZN23btGeneric6DofConstraint9updateRHSEf: # @_ZN23btGeneric6DofConstraint9updateRHSEf
# %bb.0:
	ret
.Lfunc_end26:
	.size	_ZN23btGeneric6DofConstraint9updateRHSEf, .Lfunc_end26-_ZN23btGeneric6DofConstraint9updateRHSEf
                                        # -- End function
	.globl	_ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi # -- Begin function _ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi
	.p2align	5
	.type	_ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi,@function
_ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi: # @_ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi
# %bb.0:
	alsl.d	$a0, $a1, $a0, 2
	fld.s	$fa0, $a0, 1232
	ret
.Lfunc_end27:
	.size	_ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi, .Lfunc_end27-_ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi
                                        # -- End function
	.globl	_ZNK23btGeneric6DofConstraint8getAngleEi # -- Begin function _ZNK23btGeneric6DofConstraint8getAngleEi
	.p2align	5
	.type	_ZNK23btGeneric6DofConstraint8getAngleEi,@function
_ZNK23btGeneric6DofConstraint8getAngleEi: # @_ZNK23btGeneric6DofConstraint8getAngleEi
# %bb.0:
	alsl.d	$a0, $a1, $a0, 2
	fld.s	$fa0, $a0, 1168
	ret
.Lfunc_end28:
	.size	_ZNK23btGeneric6DofConstraint8getAngleEi, .Lfunc_end28-_ZNK23btGeneric6DofConstraint8getAngleEi
                                        # -- End function
	.globl	_ZN23btGeneric6DofConstraint13calcAnchorPosEv # -- Begin function _ZN23btGeneric6DofConstraint13calcAnchorPosEv
	.p2align	5
	.type	_ZN23btGeneric6DofConstraint13calcAnchorPosEv,@function
_ZN23btGeneric6DofConstraint13calcAnchorPosEv: # @_ZN23btGeneric6DofConstraint13calcAnchorPosEv
# %bb.0:
	ld.d	$a1, $a0, 32
	fld.s	$fa0, $a1, 360
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB29_2
# %bb.1:
	vldi	$vr0, -1168
	b	.LBB29_3
.LBB29_2:
	ld.d	$a1, $a0, 24
	fld.s	$fa1, $a1, 360
	fadd.s	$fa0, $fa0, $fa1
	fdiv.s	$fa0, $fa1, $fa0
.LBB29_3:
	fld.s	$fa1, $a0, 1088
	fld.s	$fa2, $a0, 1092
	fld.s	$fa3, $a0, 1096
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	vldi	$vr4, -1168
	fld.s	$fa5, $a0, 1152
	fld.s	$fa6, $a0, 1156
	fld.s	$fa7, $a0, 1160
	fsub.s	$fa0, $fa4, $fa0
	fmul.s	$fa4, $fa0, $fa5
	fmul.s	$fa5, $fa0, $fa6
	fmul.s	$fa0, $fa0, $fa7
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa3, $fa0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 1248
	st.d	$a2, $a0, 1256
	ret
.Lfunc_end29:
	.size	_ZN23btGeneric6DofConstraint13calcAnchorPosEv, .Lfunc_end29-_ZN23btGeneric6DofConstraint13calcAnchorPosEv
                                        # -- End function
	.section	.text._ZN17btTypedConstraintD2Ev,"axG",@progbits,_ZN17btTypedConstraintD2Ev,comdat
	.weak	_ZN17btTypedConstraintD2Ev      # -- Begin function _ZN17btTypedConstraintD2Ev
	.p2align	5
	.type	_ZN17btTypedConstraintD2Ev,@function
_ZN17btTypedConstraintD2Ev:             # @_ZN17btTypedConstraintD2Ev
# %bb.0:
	ret
.Lfunc_end30:
	.size	_ZN17btTypedConstraintD2Ev, .Lfunc_end30-_ZN17btTypedConstraintD2Ev
                                        # -- End function
	.section	.text._ZN23btGeneric6DofConstraintD0Ev,"axG",@progbits,_ZN23btGeneric6DofConstraintD0Ev,comdat
	.weak	_ZN23btGeneric6DofConstraintD0Ev # -- Begin function _ZN23btGeneric6DofConstraintD0Ev
	.p2align	5
	.type	_ZN23btGeneric6DofConstraintD0Ev,@function
_ZN23btGeneric6DofConstraintD0Ev:       # @_ZN23btGeneric6DofConstraintD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end31:
	.size	_ZN23btGeneric6DofConstraintD0Ev, .Lfunc_end31-_ZN23btGeneric6DofConstraintD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,"axG",@progbits,_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,comdat
	.weak	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif # -- Begin function _ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.p2align	5
	.type	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,@function
_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif: # @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
# %bb.0:
	ret
.Lfunc_end32:
	.size	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, .Lfunc_end32-_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
                                        # -- End function
	.type	_ZTV23btGeneric6DofConstraint,@object # @_ZTV23btGeneric6DofConstraint
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV23btGeneric6DofConstraint
	.p2align	3, 0x0
_ZTV23btGeneric6DofConstraint:
	.dword	0
	.dword	_ZTI23btGeneric6DofConstraint
	.dword	_ZN17btTypedConstraintD2Ev
	.dword	_ZN23btGeneric6DofConstraintD0Ev
	.dword	_ZN23btGeneric6DofConstraint13buildJacobianEv
	.dword	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.dword	_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.dword	_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.dword	_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.dword	_ZN23btGeneric6DofConstraint13calcAnchorPosEv
	.size	_ZTV23btGeneric6DofConstraint, 80

	.type	_ZTI23btGeneric6DofConstraint,@object # @_ZTI23btGeneric6DofConstraint
	.globl	_ZTI23btGeneric6DofConstraint
	.p2align	3, 0x0
_ZTI23btGeneric6DofConstraint:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS23btGeneric6DofConstraint
	.dword	_ZTI17btTypedConstraint
	.size	_ZTI23btGeneric6DofConstraint, 24

	.type	_ZTS23btGeneric6DofConstraint,@object # @_ZTS23btGeneric6DofConstraint
	.section	.rodata,"a",@progbits
	.globl	_ZTS23btGeneric6DofConstraint
_ZTS23btGeneric6DofConstraint:
	.asciz	"23btGeneric6DofConstraint"
	.size	_ZTS23btGeneric6DofConstraint, 26

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

	.globl	_ZN23btGeneric6DofConstraintC1Ev
	.type	_ZN23btGeneric6DofConstraintC1Ev,@function
_ZN23btGeneric6DofConstraintC1Ev = _ZN23btGeneric6DofConstraintC2Ev
	.globl	_ZN23btGeneric6DofConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b
	.type	_ZN23btGeneric6DofConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b,@function
_ZN23btGeneric6DofConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b = _ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZTI23btGeneric6DofConstraint
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS23btGeneric6DofConstraint
	.addrsig_sym _ZTI17btTypedConstraint
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS17btTypedConstraint
	.addrsig_sym _ZTI13btTypedObject
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS13btTypedObject
