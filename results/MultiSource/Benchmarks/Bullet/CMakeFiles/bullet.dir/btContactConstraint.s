	.file	"btContactConstraint.cpp"
	.text
	.globl	_ZN19btContactConstraintC2Ev    # -- Begin function _ZN19btContactConstraintC2Ev
	.p2align	5
	.type	_ZN19btContactConstraintC2Ev,@function
_ZN19btContactConstraintC2Ev:           # @_ZN19btContactConstraintC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintType)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV19btContactConstraint+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV19btContactConstraint+16)
	addi.d	$a0, $fp, 96
	st.d	$a1, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN20btPersistentManifoldC1Ev)
	jr	$t8
.Lfunc_end0:
	.size	_ZN19btContactConstraintC2Ev, .Lfunc_end0-_ZN19btContactConstraintC2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN19btContactConstraintC2EP20btPersistentManifoldR11btRigidBodyS3_ # -- Begin function _ZN19btContactConstraintC2EP20btPersistentManifoldR11btRigidBodyS3_
	.p2align	5
	.type	_ZN19btContactConstraintC2EP20btPersistentManifoldR11btRigidBodyS3_,@function
_ZN19btContactConstraintC2EP20btPersistentManifoldR11btRigidBodyS3_: # @_ZN19btContactConstraintC2EP20btPersistentManifoldR11btRigidBodyS3_
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
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV19btContactConstraint+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV19btContactConstraint+16)
	addi.d	$a0, $s0, 96
	ori	$a2, $zero, 744
	st.d	$a1, $s0, 0
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end1:
	.size	_ZN19btContactConstraintC2EP20btPersistentManifoldR11btRigidBodyS3_, .Lfunc_end1-_ZN19btContactConstraintC2EP20btPersistentManifoldR11btRigidBodyS3_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN19btContactConstraintD2Ev    # -- Begin function _ZN19btContactConstraintD2Ev
	.p2align	5
	.type	_ZN19btContactConstraintD2Ev,@function
_ZN19btContactConstraintD2Ev:           # @_ZN19btContactConstraintD2Ev
# %bb.0:
	ret
.Lfunc_end2:
	.size	_ZN19btContactConstraintD2Ev, .Lfunc_end2-_ZN19btContactConstraintD2Ev
                                        # -- End function
	.globl	_ZN19btContactConstraintD0Ev    # -- Begin function _ZN19btContactConstraintD0Ev
	.p2align	5
	.type	_ZN19btContactConstraintD0Ev,@function
_ZN19btContactConstraintD0Ev:           # @_ZN19btContactConstraintD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end3:
	.size	_ZN19btContactConstraintD0Ev, .Lfunc_end3-_ZN19btContactConstraintD0Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN19btContactConstraint18setContactManifoldEP20btPersistentManifold # -- Begin function _ZN19btContactConstraint18setContactManifoldEP20btPersistentManifold
	.p2align	5
	.type	_ZN19btContactConstraint18setContactManifoldEP20btPersistentManifold,@function
_ZN19btContactConstraint18setContactManifoldEP20btPersistentManifold: # @_ZN19btContactConstraint18setContactManifoldEP20btPersistentManifold
# %bb.0:
	addi.d	$a0, $a0, 96
	ori	$a2, $zero, 744
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end4:
	.size	_ZN19btContactConstraint18setContactManifoldEP20btPersistentManifold, .Lfunc_end4-_ZN19btContactConstraint18setContactManifoldEP20btPersistentManifold
                                        # -- End function
	.globl	_ZN19btContactConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E # -- Begin function _ZN19btContactConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.p2align	5
	.type	_ZN19btContactConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E,@function
_ZN19btContactConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E: # @_ZN19btContactConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
# %bb.0:
	ret
.Lfunc_end5:
	.size	_ZN19btContactConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, .Lfunc_end5-_ZN19btContactConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
                                        # -- End function
	.globl	_ZN19btContactConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E # -- Begin function _ZN19btContactConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.p2align	5
	.type	_ZN19btContactConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E,@function
_ZN19btContactConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E: # @_ZN19btContactConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
# %bb.0:
	ret
.Lfunc_end6:
	.size	_ZN19btContactConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, .Lfunc_end6-_ZN19btContactConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
                                        # -- End function
	.globl	_ZN19btContactConstraint13buildJacobianEv # -- Begin function _ZN19btContactConstraint13buildJacobianEv
	.p2align	5
	.type	_ZN19btContactConstraint13buildJacobianEv,@function
_ZN19btContactConstraint13buildJacobianEv: # @_ZN19btContactConstraint13buildJacobianEv
# %bb.0:
	ret
.Lfunc_end7:
	.size	_ZN19btContactConstraint13buildJacobianEv, .Lfunc_end7-_ZN19btContactConstraint13buildJacobianEv
                                        # -- End function
	.globl	_ZN19btContactConstraint23solveConstraintObsoleteER12btSolverBodyS1_f # -- Begin function _ZN19btContactConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.p2align	5
	.type	_ZN19btContactConstraint23solveConstraintObsoleteER12btSolverBodyS1_f,@function
_ZN19btContactConstraint23solveConstraintObsoleteER12btSolverBodyS1_f: # @_ZN19btContactConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
# %bb.0:
	ret
.Lfunc_end8:
	.size	_ZN19btContactConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, .Lfunc_end8-_ZN19btContactConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff
.LCPI9_0:
	.word	0x3f8ccccd                      # float 1.10000002
.LCPI9_1:
	.word	0xbe4ccccd                      # float -0.200000003
	.text
	.globl	_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff
	.p2align	5
	.type	_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff,@function
_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff: # @_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff
# %bb.0:
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a4, 4
	fld.s	$fa0, $a4, 8
	pcalau12i	$a4, %pc_hi20(.LCPI9_0)
	fld.s	$fa3, $a4, %pc_lo12(.LCPI9_0)
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa3, $fa4
	bceqz	$fcc0, .LBB9_2
# %bb.1:
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $a5, 0
	ret
.LBB9_2:
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a0, 56
	fld.s	$fa5, $a1, 4
	fld.s	$fa6, $a0, 60
	fsub.s	$ft1, $fa3, $fa4
	fsub.s	$ft3, $fa5, $fa6
	fld.s	$fa3, $a1, 8
	fld.s	$fa4, $a0, 64
	fld.s	$fa5, $a3, 0
	fld.s	$fa6, $a2, 56
	fld.s	$fa7, $a3, 4
	fld.s	$ft0, $a2, 60
	fld.s	$ft5, $a3, 8
	fld.s	$ft7, $a2, 64
	fsub.s	$ft6, $fa3, $fa4
	fsub.s	$ft2, $fa5, $fa6
	fsub.s	$ft4, $fa7, $ft0
	fsub.s	$ft5, $ft5, $ft7
	fld.s	$fa3, $a0, 352
	fld.s	$fa6, $a0, 348
	fneg.s	$fa4, $ft3
	fld.s	$fa7, $a0, 344
	fmul.s	$fa4, $fa3, $fa4
	fmadd.s	$fa4, $fa6, $ft6, $fa4
	fneg.s	$fa5, $ft6
	fmul.s	$fa5, $fa7, $fa5
	fmadd.s	$fa5, $fa3, $ft1, $fa5
	fneg.s	$fa3, $ft1
	fmul.s	$fa3, $fa6, $fa3
	fmadd.s	$fa3, $fa7, $ft3, $fa3
	fld.s	$fa6, $a2, 352
	fld.s	$ft7, $a2, 348
	fneg.s	$fa7, $ft4
	fld.s	$ft8, $a2, 344
	fmul.s	$fa7, $fa6, $fa7
	fmadd.s	$fa7, $ft7, $ft5, $fa7
	fneg.s	$ft0, $ft5
	fmul.s	$ft0, $ft8, $ft0
	fmadd.s	$ft0, $fa6, $ft2, $ft0
	fneg.s	$fa6, $ft2
	fmul.s	$fa6, $ft7, $fa6
	fmadd.s	$fa6, $ft8, $ft4, $fa6
	fld.s	$ft7, $a0, 8
	fld.s	$ft8, $a0, 24
	fld.s	$ft9, $a0, 12
	fld.s	$ft10, $a0, 28
	fld.s	$ft11, $a0, 16
	fneg.s	$ft12, $fa2
	fneg.s	$ft13, $fa0
	fmul.s	$ft14, $ft1, $ft13
	fmadd.s	$ft14, $ft6, $fa1, $ft14
	fmul.s	$ft6, $ft6, $ft12
	fmadd.s	$ft6, $ft3, $fa0, $ft6
	fmul.s	$ft8, $ft14, $ft8
	fmadd.s	$ft7, $ft7, $ft6, $ft8
	fld.s	$ft8, $a0, 32
	fmul.s	$ft10, $ft14, $ft10
	fmadd.s	$ft9, $ft9, $ft6, $ft10
	fld.s	$ft10, $a0, 40
	fmul.s	$ft8, $ft14, $ft8
	fld.s	$ft14, $a0, 44
	fmadd.s	$ft6, $ft11, $ft6, $ft8
	fld.s	$ft8, $a0, 48
	fneg.s	$ft11, $fa1
	fmul.s	$ft3, $ft3, $ft11
	fmadd.s	$ft1, $ft1, $fa2, $ft3
	fmadd.s	$ft3, $ft10, $ft1, $ft7
	fmadd.s	$ft7, $ft14, $ft1, $ft9
	fmadd.s	$ft1, $ft8, $ft1, $ft6
	fld.s	$ft6, $a2, 8
	fmul.s	$ft8, $fa0, $ft2
	fmadd.s	$ft8, $ft5, $ft11, $ft8
	fld.s	$ft9, $a2, 24
	fmul.s	$ft5, $fa2, $ft5
	fmadd.s	$ft5, $ft4, $ft13, $ft5
	fld.s	$ft10, $a2, 40
	fmul.s	$ft4, $fa1, $ft4
	fmadd.s	$ft2, $ft2, $ft12, $ft4
	fld.s	$ft4, $a2, 12
	fld.s	$ft11, $a2, 28
	fmul.s	$ft9, $ft8, $ft9
	fmadd.s	$ft6, $ft6, $ft5, $ft9
	fld.s	$ft9, $a2, 16
	fmadd.s	$ft6, $ft10, $ft2, $ft6
	fld.s	$ft10, $a2, 32
	fmul.s	$ft11, $ft8, $ft11
	fmadd.s	$ft4, $ft4, $ft5, $ft11
	fld.s	$ft11, $a2, 44
	fmul.s	$ft8, $ft8, $ft10
	fld.s	$ft10, $a2, 48
	fmadd.s	$ft5, $ft9, $ft5, $ft8
	fld.s	$ft8, $a0, 428
	fld.s	$ft9, $a0, 432
	fmadd.s	$ft4, $ft11, $ft2, $ft4
	fmadd.s	$ft2, $ft10, $ft2, $ft5
	fmul.s	$ft5, $ft3, $ft8
	fmul.s	$ft8, $ft7, $ft9
	fmul.s	$ft7, $ft7, $ft8
	fld.s	$ft8, $a0, 436
	fmadd.s	$ft3, $ft5, $ft3, $ft7
	fld.s	$ft5, $a2, 428
	fld.s	$ft7, $a2, 432
	fmul.s	$ft8, $ft1, $ft8
	fmadd.s	$ft1, $ft8, $ft1, $ft3
	fmul.s	$ft3, $ft6, $ft5
	fmul.s	$ft5, $ft4, $ft7
	fmul.s	$ft4, $ft4, $ft5
	fld.s	$ft5, $a2, 436
	fmadd.s	$ft3, $ft3, $ft6, $ft4
	fld.s	$ft4, $a0, 328
	fld.s	$ft6, $a0, 332
	fmul.s	$ft5, $ft2, $ft5
	fmadd.s	$ft2, $ft5, $ft2, $ft3
	fld.s	$ft3, $a2, 328
	fld.s	$ft5, $a2, 332
	fadd.s	$fa4, $fa4, $ft4
	fadd.s	$fa5, $ft6, $fa5
	fadd.s	$fa7, $fa7, $ft3
	fadd.s	$ft0, $ft5, $ft0
	fsub.s	$fa4, $fa4, $fa7
	fld.s	$fa7, $a0, 336
	fsub.s	$fa5, $fa5, $ft0
	fld.s	$ft0, $a2, 336
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa1, $fa1, $fa4, $fa2
	fadd.s	$fa2, $fa3, $fa7
	fadd.s	$fa3, $fa6, $ft0
	fsub.s	$fa2, $fa2, $fa3
	fld.s	$fa3, $a0, 360
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	fld.s	$fa1, $a2, 360
	pcalau12i	$a0, %pc_hi20(.LCPI9_1)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI9_1)
	fadd.s	$fa3, $fa3, $ft1
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa1, $fa1, $ft2
	fmul.s	$fa0, $fa0, $fa2
	frecip.s	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	ret
.Lfunc_end9:
	.size	_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff, .Lfunc_end9-_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff
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
	.type	_ZTV19btContactConstraint,@object # @_ZTV19btContactConstraint
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV19btContactConstraint
	.p2align	3, 0x0
_ZTV19btContactConstraint:
	.dword	0
	.dword	_ZTI19btContactConstraint
	.dword	_ZN19btContactConstraintD2Ev
	.dword	_ZN19btContactConstraintD0Ev
	.dword	_ZN19btContactConstraint13buildJacobianEv
	.dword	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.dword	_ZN19btContactConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.dword	_ZN19btContactConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.dword	_ZN19btContactConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.size	_ZTV19btContactConstraint, 72

	.type	_ZTI19btContactConstraint,@object # @_ZTI19btContactConstraint
	.globl	_ZTI19btContactConstraint
	.p2align	3, 0x0
_ZTI19btContactConstraint:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19btContactConstraint
	.dword	_ZTI17btTypedConstraint
	.size	_ZTI19btContactConstraint, 24

	.type	_ZTS19btContactConstraint,@object # @_ZTS19btContactConstraint
	.section	.rodata,"a",@progbits
	.globl	_ZTS19btContactConstraint
_ZTS19btContactConstraint:
	.asciz	"19btContactConstraint"
	.size	_ZTS19btContactConstraint, 22

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

	.globl	_ZN19btContactConstraintC1Ev
	.type	_ZN19btContactConstraintC1Ev,@function
_ZN19btContactConstraintC1Ev = _ZN19btContactConstraintC2Ev
	.globl	_ZN19btContactConstraintC1EP20btPersistentManifoldR11btRigidBodyS3_
	.type	_ZN19btContactConstraintC1EP20btPersistentManifoldR11btRigidBodyS3_,@function
_ZN19btContactConstraintC1EP20btPersistentManifoldR11btRigidBodyS3_ = _ZN19btContactConstraintC2EP20btPersistentManifoldR11btRigidBodyS3_
	.globl	_ZN19btContactConstraintD1Ev
	.type	_ZN19btContactConstraintD1Ev,@function
_ZN19btContactConstraintD1Ev = _ZN19btContactConstraintD2Ev
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZTI19btContactConstraint
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS19btContactConstraint
	.addrsig_sym _ZTI17btTypedConstraint
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS17btTypedConstraint
	.addrsig_sym _ZTI13btTypedObject
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS13btTypedObject
