	.file	"btGeneric6DofSpringConstraint.cpp"
	.text
	.globl	_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b # -- Begin function _ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.p2align	5
	.type	_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b,@function
_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b: # @_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV29btGeneric6DofSpringConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV29btGeneric6DofSpringConstraint+16)
	st.d	$a0, $fp, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 1266
	xvrepli.b	$xr0, 0
	xvst	$xr0, $fp, 1282
	st.d	$zero, $fp, 1312
	lu12i.w	$a0, 260096
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $fp, 1320
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $fp, 1336
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b, .Lfunc_end0-_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.cfi_endproc
                                        # -- End function
	.globl	_ZN29btGeneric6DofSpringConstraint12enableSpringEib # -- Begin function _ZN29btGeneric6DofSpringConstraint12enableSpringEib
	.p2align	5
	.type	_ZN29btGeneric6DofSpringConstraint12enableSpringEib,@function
_ZN29btGeneric6DofSpringConstraint12enableSpringEib: # @_ZN29btGeneric6DofSpringConstraint12enableSpringEib
# %bb.0:
	add.d	$a3, $a0, $a1
	ori	$a4, $zero, 2
	st.b	$a2, $a3, 1266
	blt	$a4, $a1, .LBB1_2
# %bb.1:
	st.b	$a2, $a3, 788
	ret
.LBB1_2:
	ori	$a3, $zero, 56
	mul.d	$a1, $a1, $a3
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, 736
	ret
.Lfunc_end1:
	.size	_ZN29btGeneric6DofSpringConstraint12enableSpringEib, .Lfunc_end1-_ZN29btGeneric6DofSpringConstraint12enableSpringEib
                                        # -- End function
	.globl	_ZN29btGeneric6DofSpringConstraint12setStiffnessEif # -- Begin function _ZN29btGeneric6DofSpringConstraint12setStiffnessEif
	.p2align	5
	.type	_ZN29btGeneric6DofSpringConstraint12setStiffnessEif,@function
_ZN29btGeneric6DofSpringConstraint12setStiffnessEif: # @_ZN29btGeneric6DofSpringConstraint12setStiffnessEif
# %bb.0:
	alsl.d	$a0, $a1, $a0, 2
	fst.s	$fa0, $a0, 1296
	ret
.Lfunc_end2:
	.size	_ZN29btGeneric6DofSpringConstraint12setStiffnessEif, .Lfunc_end2-_ZN29btGeneric6DofSpringConstraint12setStiffnessEif
                                        # -- End function
	.globl	_ZN29btGeneric6DofSpringConstraint10setDampingEif # -- Begin function _ZN29btGeneric6DofSpringConstraint10setDampingEif
	.p2align	5
	.type	_ZN29btGeneric6DofSpringConstraint10setDampingEif,@function
_ZN29btGeneric6DofSpringConstraint10setDampingEif: # @_ZN29btGeneric6DofSpringConstraint10setDampingEif
# %bb.0:
	alsl.d	$a0, $a1, $a0, 2
	fst.s	$fa0, $a0, 1320
	ret
.Lfunc_end3:
	.size	_ZN29btGeneric6DofSpringConstraint10setDampingEif, .Lfunc_end3-_ZN29btGeneric6DofSpringConstraint10setDampingEif
                                        # -- End function
	.globl	_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv # -- Begin function _ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv
	.p2align	5
	.type	_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv,@function
_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv: # @_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv
	.cfi_startproc
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint19calculateTransformsEv)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1232
	ld.d	$a0, $fp, 1236
	fld.s	$fa1, $fp, 1168
	ld.d	$a1, $fp, 1172
	fst.s	$fa0, $fp, 1272
	st.d	$a0, $fp, 1276
	fst.s	$fa1, $fp, 1284
	st.d	$a1, $fp, 1288
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv, .Lfunc_end4-_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEi # -- Begin function _ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEi
	.p2align	5
	.type	_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEi,@function
_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEi: # @_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEi
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
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN23btGeneric6DofConstraint19calculateTransformsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	blt	$a0, $fp, .LBB5_2
# %bb.1:
	alsl.d	$a0, $fp, $s0, 2
	fld.s	$fa0, $a0, 1232
	fst.s	$fa0, $a0, 1272
	b	.LBB5_3
.LBB5_2:
	alsl.d	$a0, $fp, $s0, 2
	fld.s	$fa0, $a0, 1168
	fst.s	$fa0, $a0, 1284
.LBB5_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEi, .Lfunc_end5-_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN29btGeneric6DofSpringConstraint21internalUpdateSpringsEPN17btTypedConstraint17btConstraintInfo2E # -- Begin function _ZN29btGeneric6DofSpringConstraint21internalUpdateSpringsEPN17btTypedConstraint17btConstraintInfo2E
	.p2align	5
	.type	_ZN29btGeneric6DofSpringConstraint21internalUpdateSpringsEPN17btTypedConstraint17btConstraintInfo2E,@function
_ZN29btGeneric6DofSpringConstraint21internalUpdateSpringsEPN17btTypedConstraint17btConstraintInfo2E: # @_ZN29btGeneric6DofSpringConstraint21internalUpdateSpringsEPN17btTypedConstraint17btConstraintInfo2E
# %bb.0:
	ld.bu	$a2, $a0, 1266
	bnez	$a2, .LBB6_7
# %bb.1:
	ld.bu	$a2, $a0, 1267
	bnez	$a2, .LBB6_8
.LBB6_2:
	ld.bu	$a2, $a0, 1268
	bnez	$a2, .LBB6_9
.LBB6_3:                                # %.preheader
	ld.bu	$a2, $a0, 1269
	bnez	$a2, .LBB6_10
.LBB6_4:
	ld.bu	$a2, $a0, 1270
	bnez	$a2, .LBB6_11
.LBB6_5:
	ld.bu	$a2, $a0, 1271
	bnez	$a2, .LBB6_12
.LBB6_6:
	ret
.LBB6_7:
	fld.s	$fa0, $a0, 1232
	fld.s	$fa1, $a0, 1272
	fld.s	$fa2, $a0, 1296
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a0, 1320
	ld.w	$a2, $a1, 88
	fsub.s	$fa0, $fa0, $fa1
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa1, $fa3, $fa4
	movgr2fr.w	$fa2, $a2
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a0, 792
	fld.s	$fa1, $a1, 0
	fabs.s	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 808
	ld.bu	$a2, $a0, 1267
	beqz	$a2, .LBB6_2
.LBB6_8:
	fld.s	$fa0, $a0, 1236
	fld.s	$fa1, $a0, 1276
	fld.s	$fa2, $a0, 1300
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a0, 1324
	ld.w	$a2, $a1, 88
	fsub.s	$fa0, $fa0, $fa1
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa1, $fa3, $fa4
	movgr2fr.w	$fa2, $a2
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a0, 796
	fld.s	$fa1, $a1, 0
	fabs.s	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 812
	ld.bu	$a2, $a0, 1268
	beqz	$a2, .LBB6_3
.LBB6_9:
	fld.s	$fa0, $a0, 1240
	fld.s	$fa1, $a0, 1280
	fld.s	$fa2, $a0, 1304
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a0, 1328
	ld.w	$a2, $a1, 88
	fsub.s	$fa0, $fa0, $fa1
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa1, $fa3, $fa4
	movgr2fr.w	$fa2, $a2
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a0, 800
	fld.s	$fa1, $a1, 0
	fabs.s	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 816
	ld.bu	$a2, $a0, 1269
	beqz	$a2, .LBB6_4
.LBB6_10:
	fld.s	$fa0, $a0, 1168
	fld.s	$fa1, $a0, 1284
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a0, 1308
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a0, 1332
	ld.w	$a2, $a1, 88
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa1, $fa2, $fa3
	movgr2fr.w	$fa3, $a2
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa1, $fa1, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a0, 876
	fabs.s	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a0, 880
	ld.bu	$a2, $a0, 1270
	beqz	$a2, .LBB6_5
.LBB6_11:
	fld.s	$fa0, $a0, 1172
	fld.s	$fa1, $a0, 1288
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a0, 1312
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a0, 1336
	ld.w	$a2, $a1, 88
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa1, $fa2, $fa3
	movgr2fr.w	$fa3, $a2
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa1, $fa1, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a0, 932
	fabs.s	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a0, 936
	ld.bu	$a2, $a0, 1271
	beqz	$a2, .LBB6_6
.LBB6_12:
	fld.s	$fa0, $a0, 1176
	fld.s	$fa1, $a0, 1292
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a0, 1316
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a0, 1340
	ld.w	$a1, $a1, 88
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa1, $fa2, $fa3
	movgr2fr.w	$fa3, $a1
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa1, $fa1, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a0, 988
	fabs.s	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a0, 992
	ret
.Lfunc_end6:
	.size	_ZN29btGeneric6DofSpringConstraint21internalUpdateSpringsEPN17btTypedConstraint17btConstraintInfo2E, .Lfunc_end6-_ZN29btGeneric6DofSpringConstraint21internalUpdateSpringsEPN17btTypedConstraint17btConstraintInfo2E
                                        # -- End function
	.globl	_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E # -- Begin function _ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.p2align	5
	.type	_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E,@function
_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E: # @_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
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
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN29btGeneric6DofSpringConstraint21internalUpdateSpringsEPN17btTypedConstraint17btConstraintInfo2E)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E)
	jr	$t8
.Lfunc_end7:
	.size	_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, .Lfunc_end7-_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17btTypedConstraintD2Ev,"axG",@progbits,_ZN17btTypedConstraintD2Ev,comdat
	.weak	_ZN17btTypedConstraintD2Ev      # -- Begin function _ZN17btTypedConstraintD2Ev
	.p2align	5
	.type	_ZN17btTypedConstraintD2Ev,@function
_ZN17btTypedConstraintD2Ev:             # @_ZN17btTypedConstraintD2Ev
# %bb.0:
	ret
.Lfunc_end8:
	.size	_ZN17btTypedConstraintD2Ev, .Lfunc_end8-_ZN17btTypedConstraintD2Ev
                                        # -- End function
	.section	.text._ZN29btGeneric6DofSpringConstraintD0Ev,"axG",@progbits,_ZN29btGeneric6DofSpringConstraintD0Ev,comdat
	.weak	_ZN29btGeneric6DofSpringConstraintD0Ev # -- Begin function _ZN29btGeneric6DofSpringConstraintD0Ev
	.p2align	5
	.type	_ZN29btGeneric6DofSpringConstraintD0Ev,@function
_ZN29btGeneric6DofSpringConstraintD0Ev: # @_ZN29btGeneric6DofSpringConstraintD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end9:
	.size	_ZN29btGeneric6DofSpringConstraintD0Ev, .Lfunc_end9-_ZN29btGeneric6DofSpringConstraintD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,"axG",@progbits,_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,comdat
	.weak	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif # -- Begin function _ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.p2align	5
	.type	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,@function
_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif: # @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
# %bb.0:
	ret
.Lfunc_end10:
	.size	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, .Lfunc_end10-_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
                                        # -- End function
	.type	_ZTV29btGeneric6DofSpringConstraint,@object # @_ZTV29btGeneric6DofSpringConstraint
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV29btGeneric6DofSpringConstraint
	.p2align	3, 0x0
_ZTV29btGeneric6DofSpringConstraint:
	.dword	0
	.dword	_ZTI29btGeneric6DofSpringConstraint
	.dword	_ZN17btTypedConstraintD2Ev
	.dword	_ZN29btGeneric6DofSpringConstraintD0Ev
	.dword	_ZN23btGeneric6DofConstraint13buildJacobianEv
	.dword	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.dword	_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.dword	_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.dword	_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.dword	_ZN23btGeneric6DofConstraint13calcAnchorPosEv
	.size	_ZTV29btGeneric6DofSpringConstraint, 80

	.type	_ZTI29btGeneric6DofSpringConstraint,@object # @_ZTI29btGeneric6DofSpringConstraint
	.globl	_ZTI29btGeneric6DofSpringConstraint
	.p2align	3, 0x0
_ZTI29btGeneric6DofSpringConstraint:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS29btGeneric6DofSpringConstraint
	.dword	_ZTI23btGeneric6DofConstraint
	.size	_ZTI29btGeneric6DofSpringConstraint, 24

	.type	_ZTS29btGeneric6DofSpringConstraint,@object # @_ZTS29btGeneric6DofSpringConstraint
	.section	.rodata,"a",@progbits
	.globl	_ZTS29btGeneric6DofSpringConstraint
_ZTS29btGeneric6DofSpringConstraint:
	.asciz	"29btGeneric6DofSpringConstraint"
	.size	_ZTS29btGeneric6DofSpringConstraint, 32

	.globl	_ZN29btGeneric6DofSpringConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b
	.type	_ZN29btGeneric6DofSpringConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b,@function
_ZN29btGeneric6DofSpringConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b = _ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZTI29btGeneric6DofSpringConstraint
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS29btGeneric6DofSpringConstraint
	.addrsig_sym _ZTI23btGeneric6DofConstraint
