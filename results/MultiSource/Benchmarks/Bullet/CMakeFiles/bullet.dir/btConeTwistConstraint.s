	.file	"btConeTwistConstraint.cpp"
	.text
	.globl	_ZN21btConeTwistConstraintC2Ev  # -- Begin function _ZN21btConeTwistConstraintC2Ev
	.p2align	5
	.type	_ZN21btConeTwistConstraintC2Ev,@function
_ZN21btConeTwistConstraintC2Ev:         # @_ZN21btConeTwistConstraintC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintType)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV21btConeTwistConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV21btConeTwistConstraint+16)
	st.d	$a0, $fp, 0
	st.b	$zero, $fp, 575
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN21btConeTwistConstraintC2Ev, .Lfunc_end0-_ZN21btConeTwistConstraintC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN21btConeTwistConstraintC2ER11btRigidBodyS1_RK11btTransformS4_
.LCPI1_0:
	.word	0x3f800000                      # float 1
	.word	0x3e99999a                      # float 0.300000012
	.word	0x3f800000                      # float 1
	.word	0x3c23d70a                      # float 0.00999999977
.LCPI1_1:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x3d4ccccd                      # float 0.0500000007
	.text
	.globl	_ZN21btConeTwistConstraintC2ER11btRigidBodyS1_RK11btTransformS4_
	.p2align	5
	.type	_ZN21btConeTwistConstraintC2ER11btRigidBodyS1_RK11btTransformS4_,@function
_ZN21btConeTwistConstraintC2ER11btRigidBodyS1_RK11btTransformS4_: # @_ZN21btConeTwistConstraintC2ER11btRigidBodyS1_RK11btTransformS4_
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
	move	$fp, $a4
	move	$s0, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$s1, $a0
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV21btConeTwistConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV21btConeTwistConstraint+16)
	st.d	$a0, $s1, 0
	vld	$vr0, $s0, 0
	vst	$vr0, $s1, 348
	vld	$vr0, $s0, 16
	vst	$vr0, $s1, 364
	vld	$vr0, $s0, 32
	vst	$vr0, $s1, 380
	vld	$vr0, $s0, 48
	vst	$vr0, $s1, 396
	vld	$vr0, $fp, 0
	vst	$vr0, $s1, 412
	vld	$vr0, $fp, 16
	vst	$vr0, $s1, 428
	vld	$vr0, $fp, 32
	vst	$vr0, $s1, 444
	vld	$vr0, $fp, 48
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_0)
	vst	$vr0, $s1, 460
	st.b	$zero, $s1, 600
	st.w	$zero, $s1, 572
	vst	$vr1, $s1, 476
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_1)
	lu12i.w	$a0, -264192
	lu32i.d	$a0, 0
	st.w	$a0, $s1, 620
	vst	$vr0, $s1, 492
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	_ZN21btConeTwistConstraintC2ER11btRigidBodyS1_RK11btTransformS4_, .Lfunc_end1-_ZN21btConeTwistConstraintC2ER11btRigidBodyS1_RK11btTransformS4_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN21btConeTwistConstraint4initEv
.LCPI2_0:
	.word	0x3f800000                      # float 1
	.word	0x3e99999a                      # float 0.300000012
	.word	0x3f800000                      # float 1
	.word	0x3c23d70a                      # float 0.00999999977
.LCPI2_1:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x3d4ccccd                      # float 0.0500000007
	.text
	.globl	_ZN21btConeTwistConstraint4initEv
	.p2align	5
	.type	_ZN21btConeTwistConstraint4initEv,@function
_ZN21btConeTwistConstraint4initEv:      # @_ZN21btConeTwistConstraint4initEv
# %bb.0:
	st.h	$zero, $a0, 572
	st.b	$zero, $a0, 574
	st.b	$zero, $a0, 600
	lu12i.w	$a1, -264192
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_0)
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI2_1)
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 620
	vst	$vr0, $a0, 476
	vst	$vr1, $a0, 492
	ret
.Lfunc_end2:
	.size	_ZN21btConeTwistConstraint4initEv, .Lfunc_end2-_ZN21btConeTwistConstraint4initEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN21btConeTwistConstraintC2ER11btRigidBodyRK11btTransform
.LCPI3_0:
	.word	0x3f800000                      # float 1
	.word	0x3e99999a                      # float 0.300000012
	.word	0x3f800000                      # float 1
	.word	0x3c23d70a                      # float 0.00999999977
.LCPI3_1:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x3d4ccccd                      # float 0.0500000007
	.text
	.globl	_ZN21btConeTwistConstraintC2ER11btRigidBodyRK11btTransform
	.p2align	5
	.type	_ZN21btConeTwistConstraintC2ER11btRigidBodyRK11btTransform,@function
_ZN21btConeTwistConstraintC2ER11btRigidBodyRK11btTransform: # @_ZN21btConeTwistConstraintC2ER11btRigidBodyRK11btTransform
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
	move	$fp, $a2
	move	$a2, $a1
	move	$s0, $a0
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV21btConeTwistConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV21btConeTwistConstraint+16)
	st.d	$a0, $s0, 0
	vld	$vr0, $fp, 0
	vst	$vr0, $s0, 348
	vld	$vr1, $fp, 16
	vst	$vr1, $s0, 364
	vld	$vr1, $fp, 32
	vst	$vr1, $s0, 380
	vld	$vr1, $fp, 48
	vst	$vr1, $s0, 396
	vld	$vr1, $s0, 364
	vst	$vr0, $s0, 412
	vld	$vr0, $s0, 380
	vld	$vr2, $s0, 396
	vst	$vr1, $s0, 428
	st.w	$zero, $s0, 572
	vst	$vr0, $s0, 444
	vst	$vr2, $s0, 460
	st.b	$zero, $s0, 600
	lu12i.w	$a0, -264192
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_0)
	pcalau12i	$a1, %pc_hi20(.LCPI3_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI3_1)
	lu32i.d	$a0, 0
	st.w	$a0, $s0, 620
	vst	$vr0, $s0, 476
	vst	$vr1, $s0, 492
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_ZN21btConeTwistConstraintC2ER11btRigidBodyRK11btTransform, .Lfunc_end3-_ZN21btConeTwistConstraintC2ER11btRigidBodyRK11btTransform
	.cfi_endproc
                                        # -- End function
	.globl	_ZN21btConeTwistConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E # -- Begin function _ZN21btConeTwistConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.p2align	5
	.type	_ZN21btConeTwistConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E,@function
_ZN21btConeTwistConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E: # @_ZN21btConeTwistConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
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
	ld.bu	$a0, $a0, 575
	move	$fp, $a1
	beqz	$a0, .LBB4_2
# %bb.1:
	move	$a0, $zero
	st.w	$zero, $fp, 0
	b	.LBB4_8
.LBB4_2:
	ori	$a0, $zero, 3
	lu32i.d	$a0, 3
	st.d	$a0, $fp, 0
	ld.d	$a0, $s0, 24
	ld.d	$a4, $s0, 32
	addi.d	$a1, $a0, 8
	addi.d	$a2, $a4, 8
	addi.d	$a3, $a0, 280
	addi.d	$a4, $a4, 280
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 574
	beqz	$a0, .LBB4_6
# %bb.3:
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	fld.s	$fa1, $s0, 492
	fld.s	$fa0, $s0, 504
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 0
	addi.d	$a2, $a1, -1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	st.w	$a2, $fp, 4
	bcnez	$fcc0, .LBB4_6
# %bb.4:
	fld.s	$fa1, $s0, 496
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_6
# %bb.5:
	addi.d	$a0, $a0, 2
	st.w	$a0, $fp, 0
	addi.d	$a0, $a1, -2
	st.w	$a0, $fp, 4
.LBB4_6:
	ld.bu	$a0, $s0, 573
	beqz	$a0, .LBB4_9
# %bb.7:
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a0, $a1, -1
.LBB4_8:                                # %.sink.split
	st.w	$a0, $fp, 4
.LBB4_9:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_ZN21btConeTwistConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, .Lfunc_end4-_ZN21btConeTwistConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_
.LCPI5_0:
	.word	0x34000000                      # float 1.1920929E-7
.LCPI5_1:
	.word	0xbf7ffffe                      # float -0.99999988
.LCPI5_2:
	.word	0x3f7ffffe                      # float 0.99999988
.LCPI5_3:
	.word	0x40490fdb                      # float 3.14159274
	.text
	.globl	_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_
	.p2align	5
	.type	_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_,@function
_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_: # @_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -416
	.cfi_def_cfa_offset 416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 344                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 328                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 320                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 312                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 304                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 296                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	.cfi_offset 58, -80
	.cfi_offset 59, -88
	.cfi_offset 60, -96
	.cfi_offset 61, -104
	.cfi_offset 62, -112
	.cfi_offset 63, -120
	move	$fp, $a0
	ld.bu	$a0, $a0, 600
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	st.d	$zero, $fp, 548
	st.h	$zero, $fp, 573
	beqz	$a0, .LBB5_4
# %bb.1:
	ld.b	$a0, $fp, 575
	andi	$a0, $a0, 1
	bnez	$a0, .LBB5_4
# %bb.2:
	fld.s	$ft1, $fp, 608
	fld.s	$ft2, $fp, 604
	fld.s	$ft3, $fp, 612
	fld.s	$ft4, $fp, 616
	fmul.s	$fa0, $ft1, $ft1
	fmadd.s	$fa0, $ft2, $ft2, $fa0
	fmadd.s	$fa0, $ft3, $ft3, $fa0
	fmadd.s	$fa0, $ft4, $ft4, $fa0
	vldi	$vr1, -1280
	fdiv.s	$ft5, $fa1, $fa0
	fld.s	$fa4, $fp, 348
	fld.s	$fa7, $fp, 364
	fld.s	$ft7, $s3, 4
	fld.s	$ft6, $s3, 0
	fld.s	$ft0, $fp, 380
	fld.s	$ft8, $s3, 8
	fmul.s	$fa0, $fa7, $ft7
	fld.s	$ft9, $fp, 368
	fmadd.s	$fa0, $fa4, $ft6, $fa0
	fmadd.s	$fa0, $ft0, $ft8, $fa0
	fst.s	$fa0, $sp, 160                  # 4-byte Folded Spill
	fld.s	$ft10, $fp, 352
	fmul.s	$fa0, $ft7, $ft9
	fld.s	$ft11, $fp, 384
	fld.s	$ft12, $fp, 372
	fld.s	$ft13, $fp, 356
	fmadd.s	$fa0, $ft10, $ft6, $fa0
	fmadd.s	$fa0, $ft11, $ft8, $fa0
	fst.s	$fa0, $sp, 128                  # 4-byte Folded Spill
	fmul.s	$fa0, $ft7, $ft12
	fmadd.s	$fa0, $ft13, $ft6, $fa0
	fld.s	$ft14, $fp, 388
	fld.s	$ft15, $s3, 20
	fld.s	$fs0, $s3, 16
	fld.s	$fs1, $s3, 24
	fmadd.s	$fa0, $ft14, $ft8, $fa0
	fst.s	$fa0, $sp, 192                  # 4-byte Folded Spill
	fmul.s	$fa2, $fa7, $ft15
	fmadd.s	$fa2, $fa4, $fs0, $fa2
	fmadd.s	$fa0, $ft0, $fs1, $fa2
	fst.s	$fa0, $sp, 112                  # 4-byte Folded Spill
	fmul.s	$fa2, $ft9, $ft15
	fmadd.s	$fa2, $ft10, $fs0, $fa2
	fmadd.s	$fa0, $ft11, $fs1, $fa2
	fst.s	$fa0, $sp, 108                  # 4-byte Folded Spill
	fmul.s	$fa2, $ft12, $ft15
	fmadd.s	$fa2, $ft13, $fs0, $fa2
	fld.s	$fs2, $s3, 36
	fld.s	$fs3, $s3, 32
	fld.s	$fs4, $s3, 40
	fmadd.s	$fa0, $ft14, $fs1, $fa2
	fst.s	$fa0, $sp, 176                  # 4-byte Folded Spill
	fmul.s	$fa7, $fa7, $fs2
	fmadd.s	$fa4, $fa4, $fs3, $fa7
	fmadd.s	$fa0, $ft0, $fs4, $fa4
	fst.s	$fa0, $sp, 104                  # 4-byte Folded Spill
	fmul.s	$fa4, $ft9, $fs2
	fmadd.s	$fa4, $ft10, $fs3, $fa4
	fmadd.s	$fa0, $ft11, $fs4, $fa4
	fst.s	$fa0, $sp, 100                  # 4-byte Folded Spill
	fmul.s	$fa4, $ft12, $fs2
	fmadd.s	$fa4, $ft13, $fs3, $fa4
	fld.s	$ft11, $fp, 400
	fld.s	$ft12, $fp, 396
	fld.s	$ft13, $fp, 404
	fmadd.s	$fa0, $ft14, $fs4, $fa4
	fst.s	$fa0, $sp, 144                  # 4-byte Folded Spill
	fmul.s	$ft7, $ft7, $ft11
	fmadd.s	$ft6, $ft6, $ft12, $ft7
	fmadd.s	$ft9, $ft8, $ft13, $ft6
	fmul.s	$ft6, $ft15, $ft11
	fmadd.s	$ft6, $fs0, $ft12, $ft6
	fmadd.s	$ft10, $fs1, $ft13, $ft6
	fmul.s	$ft6, $fs2, $ft11
	fmadd.s	$ft6, $fs3, $ft12, $ft6
	fmadd.s	$ft11, $fs4, $ft13, $ft6
	fld.s	$ft8, $fp, 412
	fld.s	$ft12, $fp, 428
	fld.s	$ft13, $s2, 4
	fld.s	$ft14, $s2, 0
	fld.s	$ft15, $fp, 432
	fld.s	$fs0, $fp, 416
	fmul.s	$ft6, $ft12, $ft13
	fmadd.s	$ft7, $ft8, $ft14, $ft6
	fmul.s	$ft6, $ft13, $ft15
	fmadd.s	$ft6, $fs0, $ft14, $ft6
	fld.s	$fs1, $fp, 420
	fld.s	$fs2, $fp, 436
	fld.s	$fs3, $s2, 20
	fld.s	$fs4, $s2, 16
	fld.s	$fs5, $s2, 36
	fld.s	$fs6, $s2, 32
	fmul.s	$fs7, $ft12, $fs3
	fmadd.s	$fs7, $ft8, $fs4, $fs7
	fmul.s	$ft12, $ft12, $fs5
	fmadd.s	$ft8, $ft8, $fs6, $ft12
	fmul.s	$ft12, $ft15, $fs3
	fmadd.s	$fa7, $fs0, $fs4, $ft12
	fmul.s	$ft12, $ft15, $fs5
	fmadd.s	$fs0, $fs0, $fs6, $ft12
	fmul.s	$ft12, $ft13, $fs2
	fmadd.s	$fa6, $fs1, $ft14, $ft12
	fmul.s	$ft12, $fs2, $fs3
	fmadd.s	$fa5, $fs1, $fs4, $ft12
	fld.s	$ft12, $fp, 464
	fld.s	$ft15, $fp, 460
	fmul.s	$fs2, $fs2, $fs5
	fmadd.s	$fa4, $fs1, $fs6, $fs2
	fmul.s	$ft13, $ft13, $ft12
	fmadd.s	$fa3, $ft14, $ft15, $ft13
	fmul.s	$ft13, $fs3, $ft12
	fmadd.s	$fa2, $fs4, $ft15, $ft13
	fmul.s	$ft12, $fs5, $ft12
	fld.s	$ft14, $fp, 444
	fmadd.s	$fs5, $fs6, $ft15, $ft12
	fld.s	$fs6, $s2, 8
	fld.s	$fa0, $s2, 24
	fld.s	$fa1, $s2, 40
	fld.s	$fs3, $fp, 448
	fmadd.s	$ft15, $ft14, $fs6, $ft7
	fmadd.s	$ft13, $ft14, $fa0, $fs7
	fmadd.s	$ft12, $ft14, $fa1, $ft8
	fmadd.s	$fs2, $fs3, $fs6, $ft6
	fld.s	$ft6, $fp, 452
	fmadd.s	$fs1, $fs3, $fa0, $fa7
	fmadd.s	$ft14, $fs3, $fa1, $fs0
	fld.s	$fa7, $fp, 468
	fmadd.s	$fs4, $ft6, $fs6, $fa6
	fmadd.s	$fs3, $ft6, $fa0, $fa5
	fmadd.s	$fs0, $ft6, $fa1, $fa4
	fmadd.s	$ft6, $fs6, $fa7, $fa3
	fmadd.s	$ft7, $fa0, $fa7, $fa2
	fmul.s	$fa0, $ft2, $ft5
	fmadd.s	$ft8, $fa1, $fa7, $fs5
	fmul.s	$fa1, $ft1, $ft5
	fmul.s	$fa2, $ft3, $ft5
	fmul.s	$fa3, $ft4, $fa0
	fmul.s	$fa4, $ft4, $fa1
	fmul.s	$fa5, $ft4, $fa2
	fmul.s	$fa0, $ft2, $fa0
	fmul.s	$fa6, $ft2, $fa1
	fmul.s	$fa7, $ft2, $fa2
	fmul.s	$fa1, $ft1, $fa1
	fmul.s	$ft1, $ft1, $fa2
	fmul.s	$fa2, $ft3, $fa2
	fsub.s	$ft2, $fa6, $fa5
	fadd.s	$fa5, $fa6, $fa5
	fadd.s	$fa6, $fa7, $fa4
	fsub.s	$fa4, $fa7, $fa4
	fsub.s	$fa7, $ft1, $fa3
	fadd.s	$fa3, $ft1, $fa3
	fadd.s	$ft1, $fa1, $fa2
	fadd.s	$fa2, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1168
	fsub.s	$ft1, $fa1, $ft1
	fsub.s	$fa2, $fa1, $fa2
	fld.s	$ft3, $s3, 48
	fld.s	$ft4, $s3, 52
	fld.s	$ft5, $s3, 56
	fsub.s	$fa0, $fa1, $fa0
	fadd.s	$fa1, $ft3, $ft9
	fadd.s	$ft3, $ft4, $ft10
	fadd.s	$ft0, $ft11, $ft5
	fmul.s	$ft4, $fa5, $fs2
	fmadd.s	$ft4, $ft1, $ft15, $ft4
	fmul.s	$ft5, $fa5, $fs1
	fmadd.s	$ft5, $ft1, $ft13, $ft5
	fmul.s	$fa5, $fa5, $ft14
	fmadd.s	$fa5, $ft1, $ft12, $fa5
	fmadd.s	$ft11, $fa4, $fs4, $ft4
	fmadd.s	$ft9, $fa4, $fs3, $ft5
	fmadd.s	$ft1, $fa4, $fs0, $fa5
	fmul.s	$fa4, $fa2, $fs2
	fmadd.s	$fa4, $ft2, $ft15, $fa4
	fmul.s	$fa5, $fa2, $fs1
	fmadd.s	$fa5, $ft2, $ft13, $fa5
	fmul.s	$fa2, $fa2, $ft14
	fmadd.s	$fa2, $ft2, $ft12, $fa2
	fmadd.s	$fs7, $fa3, $fs4, $fa4
	fmadd.s	$fs6, $fa3, $fs3, $fa5
	fmadd.s	$fs5, $fa3, $fs0, $fa2
	fmul.s	$fa2, $fa7, $fs2
	fmadd.s	$fa2, $fa6, $ft15, $fa2
	fmul.s	$fa3, $fa7, $fs1
	fmadd.s	$fa3, $fa6, $ft13, $fa3
	fmul.s	$fa4, $fa7, $ft14
	fmadd.s	$fa4, $fa6, $ft12, $fa4
	fmadd.s	$ft5, $fa0, $fs4, $fa2
	fmadd.s	$ft4, $fa0, $fs3, $fa3
	fmadd.s	$ft2, $fa0, $fs0, $fa4
	movgr2fr.w	$fa2, $zero
	fmul.s	$fa0, $fs2, $fa2
	fmadd.s	$fa0, $ft15, $fa2, $fa0
	fmadd.s	$fa0, $fs4, $fa2, $fa0
	fmul.s	$fa3, $fs1, $fa2
	fmadd.s	$fa3, $ft13, $fa2, $fa3
	fmadd.s	$ft10, $fs3, $fa2, $fa3
	fmul.s	$fa3, $ft14, $fa2
	fmadd.s	$fa3, $ft12, $fa2, $fa3
	fmadd.s	$ft12, $fs0, $fa2, $fa3
	fneg.s	$fa1, $fa1
	fneg.s	$fa2, $ft3
	fneg.s	$fa3, $ft0
	fld.s	$ft15, $sp, 112                 # 4-byte Folded Reload
	fmul.s	$fa4, $ft15, $fa2
	fld.s	$ft13, $sp, 160                 # 4-byte Folded Reload
	fmadd.s	$fa4, $ft13, $fa1, $fa4
	fld.s	$fs2, $sp, 104                  # 4-byte Folded Reload
	fmadd.s	$fa4, $fs2, $fa3, $fa4
	fld.s	$fs0, $sp, 108                  # 4-byte Folded Reload
	fmul.s	$fa5, $fs0, $fa2
	fld.s	$ft14, $sp, 128                 # 4-byte Folded Reload
	fmadd.s	$fa5, $ft14, $fa1, $fa5
	fld.s	$fs3, $sp, 100                  # 4-byte Folded Reload
	fmadd.s	$fa5, $fs3, $fa3, $fa5
	fmul.s	$fa6, $ft14, $fs7
	fmadd.s	$fa6, $ft13, $ft11, $fa6
	fmul.s	$fa7, $fs0, $fs7
	fmadd.s	$fa7, $ft15, $ft11, $fa7
	fmul.s	$ft0, $ft14, $fs6
	fmadd.s	$ft0, $ft13, $ft9, $ft0
	fmul.s	$ft3, $ft14, $fs5
	fmadd.s	$ft3, $ft13, $ft1, $ft3
	fmul.s	$ft13, $fs0, $fs6
	fmadd.s	$ft13, $ft15, $ft9, $ft13
	fmul.s	$ft14, $fs0, $fs5
	fmadd.s	$ft14, $ft15, $ft1, $ft14
	fmul.s	$ft15, $fs3, $fs7
	fmadd.s	$ft15, $fs2, $ft11, $ft15
	fmul.s	$fs0, $fs3, $fs6
	fmadd.s	$fs0, $fs2, $ft9, $fs0
	fmul.s	$fs1, $fs3, $fs5
	fmadd.s	$fs1, $fs2, $ft1, $fs1
	fmul.s	$fs2, $fa5, $fs7
	fmadd.s	$ft11, $ft11, $fa4, $fs2
	fmul.s	$fs2, $fa5, $fs6
	fmadd.s	$ft9, $ft9, $fa4, $fs2
	fmul.s	$fa5, $fa5, $fs5
	fmadd.s	$fa4, $ft1, $fa4, $fa5
	fld.s	$ft1, $sp, 176                  # 4-byte Folded Reload
	fmul.s	$fa2, $ft1, $fa2
	fld.s	$fa5, $sp, 192                  # 4-byte Folded Reload
	fmadd.s	$fa1, $fa5, $fa1, $fa2
	fld.s	$fs2, $sp, 144                  # 4-byte Folded Reload
	fmadd.s	$fa1, $fs2, $fa3, $fa1
	fmadd.s	$fa2, $fa5, $ft5, $fa6
	fmadd.s	$fa3, $fa5, $ft4, $ft0
	fmadd.s	$fa5, $fa5, $ft2, $ft3
	fmadd.s	$fa6, $ft1, $ft5, $fa7
	fmadd.s	$fa7, $ft1, $ft4, $ft13
	fmadd.s	$ft0, $ft1, $ft2, $ft14
	fmadd.s	$ft1, $fs2, $ft5, $ft15
	fmadd.s	$ft3, $fs2, $ft4, $fs0
	fmadd.s	$ft13, $fs2, $ft2, $fs1
	fld.s	$ft14, $s2, 48
	fmadd.s	$ft5, $ft5, $fa1, $ft11
	fld.s	$ft11, $s2, 52
	fmadd.s	$ft4, $ft4, $fa1, $ft9
	fld.s	$ft9, $s2, 56
	fmadd.s	$fa1, $ft2, $fa1, $fa4
	fadd.s	$fa4, $ft14, $ft6
	fadd.s	$ft2, $ft11, $ft7
	fadd.s	$ft6, $ft8, $ft9
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa4, $ft10, $ft2
	fadd.s	$ft2, $ft12, $ft6
	fadd.s	$fa0, $ft5, $fa0
	fadd.s	$fa4, $ft4, $fa4
	fadd.s	$fa1, $fa1, $ft2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa4
	movfr2gr.s	$a2, $fa1
	fst.s	$fa2, $sp, 208
	fst.s	$fa6, $sp, 212
	fst.s	$ft1, $sp, 216
	fst.s	$fa3, $sp, 224
	fst.s	$fa7, $sp, 228
	fst.s	$ft3, $sp, 232
	fst.s	$fa5, $sp, 240
	fst.s	$ft0, $sp, 244
	fst.s	$ft13, $sp, 248
	bstrins.d	$a0, $a1, 63, 32
	bstrpick.d	$a1, $a2, 31, 0
	st.w	$zero, $sp, 220
	st.w	$zero, $sp, 236
	st.w	$zero, $sp, 252
	st.d	$a0, $sp, 256
	st.d	$a1, $sp, 264
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 280
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	ld.d	$a1, $sp, 288
	movgr2fr.w	$fa1, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa2, $a0
	movgr2fr.w	$fa3, $a1
	srli.d	$a0, $a1, 32
	movgr2fr.w	$fa0, $a0
	st.w	$zero, $fp, 520
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fa1, $fa4, $fa1
	fst.s	$fa1, $fp, 508
	fmul.s	$fa1, $fa4, $fa2
	fst.s	$fa1, $fp, 512
	fmul.s	$fa1, $fa4, $fa3
	fst.s	$fa1, $fp, 516
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI5_0)
	fadd.s	$fa0, $fa0, $fa0
	fabs.s	$fa2, $fa0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fst.s	$fa0, $fp, 552
	bcnez	$fcc0, .LBB5_59
# %bb.3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 574
	b	.LBB5_59
.LBB5_4:
	addi.d	$a1, $sp, 208
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 208
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	addi.d	$a0, $fp, 348
	addi.d	$s4, $fp, 412
	addi.d	$a1, $sp, 208
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 208
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	addi.d	$a1, $sp, 208
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 208
	vst	$vr1, $sp, 128                  # 16-byte Folded Spill
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	vsrli.d	$vr0, $vr0, 32
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vshuf4i.w	$vr0, $vr0, 8
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	addi.d	$a1, $sp, 208
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 208
	vld	$vr12, $sp, 144                 # 16-byte Folded Reload
	vpackod.d	$vr1, $vr0, $vr12
	vsrli.d	$vr2, $vr1, 32
	vshuf4i.w	$vr2, $vr2, 8
	vld	$vr3, $sp, 112                  # 16-byte Folded Reload
	vreplvei.w	$vr3, $vr3, 0
	vreplvei.w	$vr4, $vr2, 0
	fmul.s	$fa5, $fa3, $fa4
	vld	$vr14, $sp, 192                 # 16-byte Folded Reload
	vld	$vr6, $sp, 128                  # 16-byte Folded Reload
	vpackod.d	$vr6, $vr6, $vr14
	vsrli.d	$vr7, $vr6, 32
	vshuf4i.w	$vr7, $vr7, 8
	vpackev.d	$vr0, $vr0, $vr12
	vsrli.d	$vr8, $vr0, 32
	vshuf4i.w	$vr8, $vr8, 8
	vreplvei.w	$vr9, $vr8, 0
	vreplvei.w	$vr10, $vr7, 0
	fmadd.s	$fa5, $ft2, $ft1, $fa5
	vshuf4i.w	$vr6, $vr6, 8
	vshuf4i.w	$vr0, $vr0, 8
	vreplvei.w	$vr11, $vr6, 0
	vreplvei.w	$vr12, $vr12, 0
	fmadd.s	$fa5, $ft3, $ft4, $fa5
	vld	$vr13, $sp, 160                 # 16-byte Folded Reload
	vshuf4i.w	$vr13, $vr13, 8
	vreplvei.w	$vr14, $vr14, 0
	fneg.s	$ft7, $ft6
	vshuf4i.w	$vr1, $vr1, 8
	vreplvei.w	$vr16, $vr1, 0
	fmadd.s	$fs5, $ft7, $ft8, $fa5
	fmul.s	$fa5, $ft3, $fa4
	fmadd.s	$fa5, $ft2, $ft8, $fa5
	fmadd.s	$fa5, $ft6, $ft1, $fa5
	fneg.s	$fa3, $fa3
	fmadd.s	$ft7, $fa3, $ft4, $fa5
	fneg.s	$fa5, $ft4
	fmul.s	$fa5, $ft6, $fa5
	fmadd.s	$fa4, $ft2, $fa4, $fa5
	fmadd.s	$fa3, $fa3, $ft1, $fa4
	vbitrevi.w	$vr4, $vr6, 31
	vreplvei.w	$vr5, $vr4, 0
	fmadd.s	$ft6, $fa5, $ft8, $fa3
	vfmul.s	$vr3, $vr13, $vr2
	vfmadd.s	$vr3, $vr7, $vr0, $vr3
	vld	$vr5, $sp, 176                  # 16-byte Folded Reload
	vfmadd.s	$vr3, $vr5, $vr1, $vr3
	vfmadd.s	$vr3, $vr4, $vr8, $vr3
	vreplvei.w	$vr5, $vr5, 1
	vreplvei.w	$vr2, $vr2, 1
	fmul.s	$ft1, $fa5, $fa2
	vreplvei.w	$vr8, $vr8, 1
	vreplvei.w	$vr7, $vr7, 1
	fmadd.s	$ft1, $fa7, $ft0, $ft1
	vreplvei.w	$vr6, $vr6, 1
	vreplvei.w	$vr0, $vr0, 1
	fmadd.s	$ft1, $fa6, $fa0, $ft1
	vreplvei.w	$vr10, $vr13, 1
	fneg.s	$ft3, $ft2
	vreplvei.w	$vr1, $vr1, 1
	fmadd.s	$ft5, $ft3, $fa1, $ft1
	fmul.s	$fa6, $fa6, $fa2
	fmadd.s	$fa6, $fa7, $fa1, $fa6
	fmadd.s	$fa6, $ft2, $ft0, $fa6
	fneg.s	$fa5, $fa5
	fmadd.s	$ft8, $fa5, $fa0, $fa6
	fneg.s	$ft4, $fa0
	fmul.s	$ft2, $ft2, $ft4
	fmadd.s	$fa2, $fa7, $fa2, $ft2
	fmadd.s	$fa2, $fa5, $ft0, $fa2
	vreplvei.w	$vr4, $vr4, 1
	fmadd.s	$fa4, $fa4, $fa1, $fa2
	vreplvei.w	$vr8, $vr3, 1
	fneg.s	$fa7, $ft0
	fnmadd.s	$fa1, $ft3, $fa1, $ft1
	fnmadd.s	$fa2, $fa5, $fa0, $fa6
	fmul.s	$fa0, $ft6, $fa7
	vreplvei.w	$vr5, $vr3, 0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmadd.s	$fa0, $fa1, $ft7, $fa0
	fmadd.s	$ft9, $ft8, $fs5, $fa0
	fst.s	$fa1, $sp, 112                  # 4-byte Folded Spill
	fmul.s	$fa1, $ft6, $fa1
	fmadd.s	$fa1, $fa4, $fs5, $fa1
	fmadd.s	$fa3, $fa2, $fa5, $fa1
	fmadd.s	$ft10, $ft0, $ft7, $fa3
	fst.s	$fa2, $sp, 108                  # 4-byte Folded Spill
	fmul.s	$fa1, $ft6, $fa2
	fmadd.s	$fa1, $fa4, $ft7, $fa1
	fst.s	$fa7, $sp, 104                  # 4-byte Folded Spill
	fmadd.s	$fa2, $fa7, $fs5, $fa1
	fmadd.s	$fs7, $ft5, $fa5, $fa2
	fmul.s	$fa1, $fa5, $ft0
	fst.s	$ft6, $sp, 96                   # 4-byte Folded Spill
	fst.s	$fa4, $sp, 128                  # 4-byte Folded Spill
	fmadd.s	$fa1, $fa4, $ft6, $fa1
	fmadd.s	$fa1, $ft5, $fs5, $fa1
	fmadd.s	$fs2, $ft8, $ft7, $fa1
	movgr2fr.w	$fa1, $zero
	fmul.s	$fa4, $ft10, $fa1
	fadd.s	$fa4, $fs2, $fa4
	vst	$vr5, $sp, 80                   # 16-byte Folded Spill
	fst.s	$ft5, $sp, 176                  # 4-byte Folded Spill
	fnmadd.s	$fa5, $ft5, $fa5, $fa2
	fneg.s	$fa2, $fa1
	fmadd.s	$fa4, $fs7, $fa2, $fa4
	fmadd.s	$fa6, $fs2, $fa1, $fs7
	fst.s	$ft8, $sp, 160                  # 4-byte Folded Spill
	fnmadd.s	$fa0, $ft8, $fs5, $fa0
	fmadd.s	$fa6, $ft9, $fa2, $fa6
	fmul.s	$fa7, $ft9, $fa1
	fmadd.s	$fa7, $fs2, $fa1, $fa7
	fst.s	$ft7, $sp, 100                  # 4-byte Folded Spill
	vst	$vr8, $sp, 144                  # 16-byte Folded Spill
	fnmadd.s	$fa3, $ft0, $ft7, $fa3
	fsub.s	$fa7, $fa7, $ft10
	fmul.s	$ft0, $ft10, $fa2
	fsub.s	$ft0, $ft0, $ft9
	fmadd.s	$ft0, $fs7, $fa2, $ft0
	fmul.s	$ft1, $fs2, $fa4
	fmadd.s	$ft1, $ft0, $fa0, $ft1
	fmadd.s	$ft1, $fa6, $fa5, $ft1
	fmadd.s	$ft1, $fa7, $ft10, $ft1
	fmul.s	$ft2, $fs2, $fa6
	fmadd.s	$ft2, $ft0, $fa3, $ft2
	fmadd.s	$fa0, $fa7, $fa0, $ft2
	fmadd.s	$ft2, $fa4, $fs7, $fa0
	fmul.s	$fa0, $fs2, $fa7
	fmadd.s	$fa0, $ft0, $fa5, $fa0
	fmadd.s	$fa0, $fa4, $fa3, $fa0
	fmadd.s	$fa4, $fa6, $ft9, $fa0
	fmul.s	$fa0, $ft2, $ft2
	fmadd.s	$fa0, $ft1, $ft1, $fa0
	fmadd.s	$fa0, $fa4, $fa4, $fa0
	frsqrt.s	$fa5, $fa0
	fmul.s	$fa0, $ft1, $fa5
	fmul.s	$fa3, $ft2, $fa5
	fmul.s	$fa4, $fa4, $fa5
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI5_1)
	fmul.s	$fa5, $fa3, $fa1
	fadd.s	$fa5, $fa0, $fa5
	fmadd.s	$fa5, $fa4, $fa1, $fa5
	fcmp.clt.s	$fcc0, $fa5, $fa6
	bceqz	$fcc0, .LBB5_6
# %bb.5:
	vldi	$vr3, -1168
	fmov.s	$fa4, $fa1
	b	.LBB5_8
.LBB5_6:
	movgr2fr.w	$fa1, $zero
	fneg.s	$fa2, $fa1
	fmul.s	$fa6, $fa3, $fa2
	fmadd.s	$fs0, $fa4, $fa1, $fa6
	fmsub.s	$fs1, $fa0, $fa1, $fa4
	fmul.s	$fa2, $fa0, $fa2
	vldi	$vr0, -1168
	fadd.s	$fa0, $fa5, $fa0
	fadd.s	$fa1, $fa0, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fadd.s	$fs3, $fa3, $fa2
	bceqz	$fcc0, .LBB5_60
.LBB5_7:                                # %.split
	frecip.s	$fa1, $fa0
	fmul.s	$fa2, $fs0, $fa1
	fmul.s	$fa3, $fs1, $fa1
	fmul.s	$fa1, $fs3, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa4, $fa0, $fa4
.LBB5_8:                                # %_Z15shortestArcQuatRK9btVector3S1_.exit
	fmul.s	$fa0, $fa3, $fa3
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fa0, $fa4, $fa4, $fa0
	frsqrt.s	$fa5, $fa0
	fmul.s	$ft7, $fa2, $fa5
	fld.s	$fs1, $fp, 492
	fld.s	$fa0, $fp, 504
	fmul.s	$ft8, $fa3, $fa5
	fld.s	$ft15, $fp, 496
	fmul.s	$ft11, $fa1, $fa5
	fcmp.cult.s	$fcc0, $fs1, $fa0
	fmul.s	$ft12, $fa4, $fa5
	fst.s	$fs5, $sp, 192                  # 4-byte Folded Spill
	bcnez	$fcc0, .LBB5_13
# %bb.9:                                # %_Z15shortestArcQuatRK9btVector3S1_.exit
	fcmp.cult.s	$fcc1, $ft15, $fa0
	bcnez	$fcc1, .LBB5_13
# %bb.10:
	fst.s	$fs1, $sp, 72                   # 4-byte Folded Spill
	fst.s	$fs2, $sp, 76                   # 4-byte Folded Spill
	fmov.s	$fs2, $ft15
	fmov.s	$fs1, $fs7
	fmov.s	$fs7, $ft11
	fmov.s	$fs6, $ft8
	fmov.s	$fs4, $ft7
	fmov.s	$fs3, $ft10
	fmov.s	$fs0, $ft9
	fmov.s	$fs5, $ft12
	fmov.s	$fa0, $ft12
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI5_0)
	fadd.s	$fa4, $fa0, $fa0
	fcmp.cule.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB5_23
# %bb.11:
	fmov.s	$ft8, $fs6
	fmul.s	$fa0, $fs6, $fs6
	fmov.s	$ft7, $fs4
	fmadd.s	$fa0, $fs4, $fs4, $fa0
	fmov.s	$ft11, $fs7
	fmadd.s	$fa0, $fs7, $fs7, $fa0
	frsqrt.s	$fa2, $fa0
	fmul.s	$fa0, $fs4, $fa2
	fmul.s	$fa1, $fs6, $fa2
	fabs.s	$fa5, $fa1
	fcmp.cule.s	$fcc0, $fa5, $fa3
	fmul.s	$fa2, $fs7, $fa2
	fmov.s	$ft2, $fs2
	bcnez	$fcc0, .LBB5_28
# %bb.12:
	fmul.s	$fa5, $fa2, $fa2
	fmul.s	$fa6, $fa1, $fa1
	fdiv.s	$fa5, $fa5, $fa6
	fmul.s	$fa6, $ft2, $ft2
	frecip.s	$fa6, $fa6
	fld.s	$fa7, $sp, 72                   # 4-byte Folded Reload
	fmul.s	$fa7, $fa7, $fa7
	fdiv.s	$fa7, $fa5, $fa7
	fadd.s	$fa6, $fa6, $fa7
	vldi	$vr7, -1168
	fadd.s	$fa5, $fa5, $fa7
	fdiv.s	$fa5, $fa5, $fa6
	fsqrt.s	$fa5, $fa5
	b	.LBB5_29
.LBB5_13:
	fld.s	$fa1, $fp, 348
	fld.s	$fa2, $fp, 364
	fld.s	$fa3, $s3, 4
	fld.s	$fa4, $fp, 380
	fld.s	$fa5, $s3, 0
	fld.s	$fa6, $s3, 8
	fmul.s	$fa7, $fa2, $fa3
	fld.s	$ft0, $s3, 20
	fmadd.s	$fa7, $fa5, $fa1, $fa7
	fmadd.s	$ft13, $fa6, $fa4, $fa7
	fld.s	$fa7, $s3, 16
	fmul.s	$ft1, $fa2, $ft0
	fld.s	$ft2, $s3, 24
	fld.s	$ft3, $s3, 36
	fld.s	$ft4, $s3, 32
	fmadd.s	$ft1, $fa7, $fa1, $ft1
	fmadd.s	$ft14, $ft2, $fa4, $ft1
	fmul.s	$fa2, $fa2, $ft3
	fmadd.s	$fa1, $ft4, $fa1, $fa2
	fld.s	$fa2, $s3, 40
	fld.s	$ft1, $fp, 368
	fld.s	$ft5, $fp, 352
	fld.s	$ft6, $fp, 384
	fmadd.s	$fa1, $fa2, $fa4, $fa1
	fst.s	$fa1, $sp, 76                   # 4-byte Folded Spill
	fmul.s	$fa1, $fa3, $ft1
	fmadd.s	$fa1, $fa5, $ft5, $fa1
	fmadd.s	$fs4, $fa6, $ft6, $fa1
	fmul.s	$fa1, $ft0, $ft1
	fmadd.s	$fa1, $fa7, $ft5, $fa1
	fmadd.s	$fs5, $ft2, $ft6, $fa1
	fmul.s	$fa1, $ft3, $ft1
	fmadd.s	$fa1, $ft4, $ft5, $fa1
	fld.s	$fa4, $fp, 372
	fld.s	$ft1, $fp, 356
	fld.s	$ft5, $fp, 388
	fmadd.s	$ft6, $fa2, $ft6, $fa1
	fmul.s	$fa1, $fa3, $fa4
	fmadd.s	$fa1, $fa5, $ft1, $fa1
	fmadd.s	$fs6, $fa6, $ft5, $fa1
	fmul.s	$fa1, $ft0, $fa4
	fmadd.s	$fa1, $fa7, $ft1, $fa1
	fmadd.s	$ft2, $ft2, $ft5, $fa1
	fmul.s	$fa1, $ft3, $fa4
	fmadd.s	$fa1, $ft4, $ft1, $fa1
	fmadd.s	$ft1, $fa2, $ft5, $fa1
	fld.s	$fa1, $fp, 428
	fld.s	$fa2, $s2, 4
	fld.s	$fa3, $fp, 412
	fld.s	$fa4, $fp, 444
	fld.s	$fa5, $s2, 0
	fmul.s	$fa2, $fa1, $fa2
	fld.s	$fa6, $s2, 8
	fld.s	$fa7, $s2, 20
	fld.s	$ft0, $s2, 16
	fmadd.s	$fa2, $fa5, $fa3, $fa2
	fmadd.s	$fs3, $fa6, $fa4, $fa2
	fmul.s	$fa2, $fa1, $fa7
	fmadd.s	$fa2, $ft0, $fa3, $fa2
	fld.s	$fa5, $s2, 24
	fld.s	$fa6, $s2, 36
	fld.s	$fa7, $s2, 32
	fld.s	$ft0, $s2, 40
	fmadd.s	$fs0, $fa5, $fa4, $fa2
	fmov.s	$fa5, $fs5
	fmul.s	$fa1, $fa1, $fa6
	fmov.s	$fa6, $fs6
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fs6, $ft0, $fa4, $fa1
	fmov.s	$fa4, $fs4
	fmul.s	$fa1, $fs5, $fs0
	fmadd.s	$fa1, $fs3, $fs4, $fa1
	fmadd.s	$fs5, $fs6, $ft6, $fa1
	fmul.s	$fa1, $ft2, $fs0
	fmadd.s	$fa1, $fs3, $fa6, $fa1
	fcmp.cule.s	$fcc1, $fa0, $fs1
	fmadd.s	$fs4, $fs6, $ft1, $fa1
	bcnez	$fcc1, .LBB5_18
# %bb.14:
	fcmp.cule.s	$fcc2, $fa0, $ft15
	bcnez	$fcc2, .LBB5_18
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI5_0)
	fabs.s	$fa1, $fs5
	fcmp.cule.s	$fcc0, $fa0, $fa1
	fld.s	$fs5, $sp, 192                  # 4-byte Folded Reload
	bcnez	$fcc0, .LBB5_17
# %bb.16:
	fabs.s	$fa1, $fs4
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_38
.LBB5_17:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 574
	fneg.s	$fa0, $ft14
	fmul.s	$fa0, $fs6, $fa0
	fld.s	$fa1, $sp, 76                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fs0, $fa1, $fa0
	movfr2gr.s	$a0, $fa0
	fneg.s	$fa0, $fa1
	fmul.s	$fa0, $fs3, $fa0
	fmadd.s	$fa0, $fs6, $ft13, $fa0
	movfr2gr.s	$a1, $fa0
	fneg.s	$fa0, $ft13
	fmul.s	$fa0, $fs0, $fa0
	fmadd.s	$fa0, $fs3, $ft14, $fa0
	movfr2gr.s	$a2, $fa0
	lu12i.w	$a3, -524288
	lu32i.d	$a3, 0
	xor	$a0, $a0, $a3
	xor	$a1, $a1, $a3
	bstrins.d	$a0, $a1, 63, 32
	xor	$a1, $a2, $a3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 508
	st.d	$a1, $fp, 516
	fld.s	$fs4, $fp, 500
	movgr2fr.w	$fa0, $zero
	fcmp.cult.s	$fcc0, $fs4, $fa0
	bcnez	$fcc0, .LBB5_39
	b	.LBB5_48
.LBB5_18:
	fmul.s	$fa1, $ft14, $fs0
	fmadd.s	$fa1, $fs3, $ft13, $fa1
	fld.s	$fa3, $sp, 76                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fs6, $fa3, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	bcnez	$fcc1, .LBB5_24
# %bb.19:
	fld.s	$fa7, $a0, %pc_lo12(.LCPI5_0)
	fabs.s	$fa2, $fs5
	fcmp.clt.s	$fcc0, $fa2, $fa7
	bcnez	$fcc0, .LBB5_47
# %bb.20:
	ori	$a0, $zero, 1
	fcmp.cult.s	$fcc0, $ft15, $fa0
	st.b	$a0, $fp, 574
	bcnez	$fcc0, .LBB5_47
# %bb.21:
	fst.s	$ft1, $sp, 20                   # 4-byte Folded Spill
	fst.s	$ft2, $sp, 24                   # 4-byte Folded Spill
	fst.s	$fa6, $sp, 28                   # 4-byte Folded Spill
	fst.s	$ft6, $sp, 32                   # 4-byte Folded Spill
	fst.s	$fa5, $sp, 36                   # 4-byte Folded Spill
	fst.s	$fa4, $sp, 40                   # 4-byte Folded Spill
	fmov.s	$fs1, $fs2
	fst.s	$ft14, $sp, 44                  # 4-byte Folded Spill
	fst.s	$ft13, $sp, 48                  # 4-byte Folded Spill
	fst.s	$ft12, $sp, 52                  # 4-byte Folded Spill
	fst.s	$ft11, $sp, 56                  # 4-byte Folded Spill
	fst.s	$ft8, $sp, 60                   # 4-byte Folded Spill
	fst.s	$ft7, $sp, 64                   # 4-byte Folded Spill
	fst.s	$ft10, $sp, 68                  # 4-byte Folded Spill
	fst.s	$ft9, $sp, 72                   # 4-byte Folded Spill
	fmov.s	$fa0, $fs4
	fst.s	$fa1, $sp, 16                   # 4-byte Folded Spill
	fmov.s	$fs2, $ft15
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	fmov.s	$fa2, $fs2
	fcmp.cule.s	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB5_40
# %bb.22:
	fmov.s	$fa0, $fa2
	fmov.s	$fs4, $fa2
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs2, $fa0
	fmov.s	$fa0, $fs4
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fa1, $fs2
	fmov.s	$fs4, $fa0
	movgr2fr.w	$fs5, $zero
	fld.s	$ft9, $sp, 72                   # 4-byte Folded Reload
	fld.s	$ft10, $sp, 68                  # 4-byte Folded Reload
	fld.s	$ft7, $sp, 64                   # 4-byte Folded Reload
	fld.s	$ft8, $sp, 60                   # 4-byte Folded Reload
	fld.s	$ft11, $sp, 56                  # 4-byte Folded Reload
	fld.s	$ft12, $sp, 52                  # 4-byte Folded Reload
	fld.s	$ft13, $sp, 48                  # 4-byte Folded Reload
	fld.s	$ft14, $sp, 44                  # 4-byte Folded Reload
	fmov.s	$fs2, $fs1
	b	.LBB5_45
.LBB5_23:
	movgr2fr.w	$fa5, $zero
                                        # implicit-def: $f0
                                        # implicit-def: $f1
                                        # implicit-def: $f2
	fmov.s	$ft9, $fs0
	fmov.s	$ft10, $fs3
	fmov.s	$ft7, $fs4
	fmov.s	$ft8, $fs6
	fmov.s	$ft11, $fs7
	fmov.s	$fs7, $fs1
	fmov.s	$ft12, $fs5
	fmov.s	$ft2, $fs2
	b	.LBB5_30
.LBB5_24:
	fld.s	$fa0, $a0, %pc_lo12(.LCPI5_0)
	fabs.s	$fa2, $fs4
	fcmp.clt.s	$fcc1, $fa2, $fa0
	bcnez	$fcc1, .LBB5_47
# %bb.25:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 574
	bcnez	$fcc0, .LBB5_47
# %bb.26:
	fst.s	$ft1, $sp, 20                   # 4-byte Folded Spill
	fst.s	$ft2, $sp, 24                   # 4-byte Folded Spill
	fst.s	$fa6, $sp, 28                   # 4-byte Folded Spill
	fst.s	$ft6, $sp, 32                   # 4-byte Folded Spill
	fst.s	$fa5, $sp, 36                   # 4-byte Folded Spill
	fst.s	$fa4, $sp, 40                   # 4-byte Folded Spill
	fst.s	$ft14, $sp, 44                  # 4-byte Folded Spill
	fst.s	$ft13, $sp, 48                  # 4-byte Folded Spill
	fst.s	$ft12, $sp, 52                  # 4-byte Folded Spill
	fst.s	$ft11, $sp, 56                  # 4-byte Folded Spill
	fst.s	$ft8, $sp, 60                   # 4-byte Folded Spill
	fst.s	$ft7, $sp, 64                   # 4-byte Folded Spill
	fst.s	$ft10, $sp, 68                  # 4-byte Folded Spill
	fst.s	$ft9, $sp, 72                   # 4-byte Folded Spill
	fmov.s	$fa0, $fs5
	fst.s	$fa1, $sp, 16                   # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB5_42
# %bb.27:
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs4, $fa0
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fa1, $fs4
	fmov.s	$fs5, $fa0
	movgr2fr.w	$fs4, $zero
	b	.LBB5_44
.LBB5_28:
	fld.s	$fa5, $sp, 72                   # 4-byte Folded Reload
.LBB5_29:                               # %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit
	fmov.s	$ft9, $fs0
	fmov.s	$ft10, $fs3
	fmov.s	$fs7, $fs1
	fmov.s	$ft12, $fs5
.LBB5_30:                               # %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit
	fld.s	$fs2, $sp, 76                   # 4-byte Folded Reload
	fld.s	$fa7, $fp, 476
	fmul.s	$fa6, $fa5, $fa7
	fcmp.cule.s	$fcc0, $fa4, $fa6
	fld.s	$fs5, $sp, 192                  # 4-byte Folded Reload
	bcnez	$fcc0, .LBB5_38
# %bb.31:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 574
	fneg.s	$ft0, $fa5
	fmadd.s	$fa6, $ft0, $fa7, $fa4
	fcmp.cule.s	$fcc0, $fa5, $fa4
	vldi	$vr4, -1168
	bcnez	$fcc0, .LBB5_34
# %bb.32:
	pcalau12i	$a0, %pc_hi20(.LCPI5_2)
	fld.s	$ft1, $a0, %pc_lo12(.LCPI5_2)
	fcmp.cule.s	$fcc0, $ft1, $fa7
	fld.s	$ft1, $sp, 72                   # 4-byte Folded Reload
	bcnez	$fcc0, .LBB5_35
# %bb.33:
	fmadd.s	$fa4, $ft0, $fa7, $fa5
	fdiv.s	$fa4, $fa6, $fa4
	b	.LBB5_35
.LBB5_34:
	fld.s	$ft1, $sp, 72                   # 4-byte Folded Reload
.LBB5_35:                               # %._crit_edge
	fst.s	$fa4, $fp, 576
	fabs.s	$fa4, $fa1
	fcmp.cule.s	$fcc0, $fa4, $fa3
	fst.s	$fa6, $fp, 552
	bcnez	$fcc0, .LBB5_37
# %bb.36:
	fneg.s	$fa3, $fa2
	fdiv.s	$fa3, $fa3, $fa1
	fdiv.s	$fa4, $ft2, $ft1
	fmul.s	$fa3, $fa4, $fa3
	fmul.s	$fa3, $fa1, $fa3
	fabs.s	$fa3, $fa3
	fneg.s	$fa4, $fa3
	movgr2fr.w	$fa5, $zero
	fcmp.clt.s	$fcc0, $fa2, $fa5
	fsel	$fa2, $fa4, $fa3, $fcc0
	fneg.s	$fa3, $fa2
	fmul.s	$fa4, $fa1, $fa1
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	fmadd.s	$fa2, $fa2, $fa2, $fa4
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa2, $fa3
.LBB5_37:                               # %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit
	fneg.s	$fa3, $fa0
	fneg.s	$fa4, $fa1
	fneg.s	$fa5, $fa2
	fld.s	$fa7, $sp, 176                  # 4-byte Folded Reload
	fmul.s	$fa6, $fa7, $fa5
	fld.s	$ft2, $sp, 128                  # 4-byte Folded Reload
	fmadd.s	$fa6, $ft2, $fa3, $fa6
	fld.s	$ft0, $sp, 160                  # 4-byte Folded Reload
	fmadd.s	$fa6, $ft0, $fa1, $fa6
	fmul.s	$fa3, $ft0, $fa3
	fmadd.s	$fa3, $ft2, $fa4, $fa3
	vld	$vr9, $sp, 144                  # 16-byte Folded Reload
	fmadd.s	$fa3, $ft1, $fa2, $fa3
	fmul.s	$fa4, $ft1, $fa4
	fmadd.s	$fa4, $ft2, $fa5, $fa4
	fmadd.s	$fa4, $fa7, $fa0, $fa4
	fmul.s	$fa1, $fa7, $fa1
	fmadd.s	$fa0, $ft1, $fa0, $fa1
	fmadd.s	$fa2, $ft0, $fa2, $fa0
	fmul.s	$fa0, $ft2, $fa6
	fld.s	$ft4, $sp, 104                  # 4-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft4, $fa0
	fld.s	$ft3, $sp, 108                  # 4-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmadd.s	$fa0, $fa4, $fa7, $fa0
	fmul.s	$fa1, $ft2, $fa3
	fld.s	$fa5, $sp, 112                  # 4-byte Folded Reload
	fmadd.s	$fa1, $fa2, $fa5, $fa1
	fmadd.s	$fa1, $fa4, $ft4, $fa1
	fmadd.s	$fa1, $fa6, $ft0, $fa1
	fmul.s	$fa4, $ft2, $fa4
	fmadd.s	$fa2, $fa2, $ft3, $fa4
	fmadd.s	$fa2, $fa6, $fa5, $fa2
	fmadd.s	$fa2, $fa3, $ft1, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 508
	st.d	$a1, $fp, 516
	vrepli.b	$vr3, 0
	vst	$vr3, $fp, 584
	fld.s	$fa3, $s1, 16
	fld.s	$fa4, $s1, 0
	fmul.s	$fa3, $fa3, $fa1
	fld.s	$fa5, $s1, 32
	fld.s	$fa6, $s1, 20
	fld.s	$fa7, $s1, 4
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmul.s	$fa4, $fa1, $fa6
	fmadd.s	$fa4, $fa7, $fa0, $fa4
	fld.s	$fa5, $s1, 36
	fld.s	$fa6, $s1, 24
	fld.s	$fa7, $s1, 8
	fld.s	$ft0, $s1, 40
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmul.s	$fa5, $fa1, $fa6
	fmadd.s	$fa5, $fa7, $fa0, $fa5
	fmadd.s	$fa5, $ft0, $fa2, $fa5
	fmul.s	$fa4, $fa1, $fa4
	fld.s	$fa6, $s0, 16
	fmadd.s	$fa3, $fa0, $fa3, $fa4
	fmadd.s	$fa3, $fa2, $fa5, $fa3
	fld.s	$fa4, $s0, 0
	fmul.s	$fa5, $fa1, $fa6
	fld.s	$fa6, $s0, 32
	fld.s	$fa7, $s0, 20
	fld.s	$ft0, $s0, 4
	fmadd.s	$fa4, $fa4, $fa0, $fa5
	fmadd.s	$fa4, $fa6, $fa2, $fa4
	fmul.s	$fa5, $fa1, $fa7
	fmadd.s	$fa5, $ft0, $fa0, $fa5
	fld.s	$fa6, $s0, 36
	fld.s	$fa7, $s0, 24
	fld.s	$ft0, $s0, 8
	fld.s	$ft1, $s0, 40
	fmadd.s	$fa5, $fa6, $fa2, $fa5
	fmul.s	$fa6, $fa1, $fa7
	fmadd.s	$fa6, $ft0, $fa0, $fa6
	fmadd.s	$fa6, $ft1, $fa2, $fa6
	fmul.s	$fa1, $fa1, $fa5
	fmadd.s	$fa0, $fa0, $fa4, $fa1
	fmadd.s	$fa0, $fa2, $fa6, $fa0
	fadd.s	$fa0, $fa3, $fa0
	frecip.s	$fa0, $fa0
	fst.s	$fa0, $fp, 540
.LBB5_38:
	fld.s	$fs4, $fp, 500
	movgr2fr.w	$fa0, $zero
	fcmp.cult.s	$fcc0, $fs4, $fa0
	bceqz	$fcc0, .LBB5_48
.LBB5_39:
	st.w	$zero, $fp, 560
	b	.LBB5_59
.LBB5_40:
	fneg.s	$fa1, $fa2
	fcmp.cule.s	$fcc0, $fa1, $fa0
	movgr2fr.w	$fs5, $zero
	fmov.s	$fs2, $fs1
	bcnez	$fcc0, .LBB5_46
# %bb.41:
	fmov.s	$fa0, $fa2
	fmov.s	$fs4, $fa2
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs1, $fa0
	fmov.s	$fa0, $fs4
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fa1, $fs1
	fneg.s	$fs4, $fa0
	b	.LBB5_44
.LBB5_42:
	fneg.s	$fa1, $fs1
	fcmp.cule.s	$fcc0, $fa1, $fa0
	movgr2fr.w	$fs4, $zero
	bcnez	$fcc0, .LBB5_46
# %bb.43:
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs5, $fa0
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fa1, $fs5
	fneg.s	$fs5, $fa0
.LBB5_44:
	fld.s	$ft9, $sp, 72                   # 4-byte Folded Reload
	fld.s	$ft10, $sp, 68                  # 4-byte Folded Reload
	fld.s	$ft7, $sp, 64                   # 4-byte Folded Reload
	fld.s	$ft8, $sp, 60                   # 4-byte Folded Reload
	fld.s	$ft11, $sp, 56                  # 4-byte Folded Reload
	fld.s	$ft12, $sp, 52                  # 4-byte Folded Reload
	fld.s	$ft13, $sp, 48                  # 4-byte Folded Reload
	fld.s	$ft14, $sp, 44                  # 4-byte Folded Reload
.LBB5_45:
	fld.s	$fa3, $sp, 76                   # 4-byte Folded Reload
	fld.s	$fa4, $sp, 40                   # 4-byte Folded Reload
	fld.s	$fa5, $sp, 36                   # 4-byte Folded Reload
	fld.s	$ft6, $sp, 32                   # 4-byte Folded Reload
	fld.s	$fa6, $sp, 28                   # 4-byte Folded Reload
	fld.s	$ft2, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft1, $sp, 20                   # 4-byte Folded Reload
	b	.LBB5_47
.LBB5_46:
	fld.s	$ft9, $sp, 72                   # 4-byte Folded Reload
	fld.s	$ft10, $sp, 68                  # 4-byte Folded Reload
	fld.s	$ft7, $sp, 64                   # 4-byte Folded Reload
	fld.s	$ft8, $sp, 60                   # 4-byte Folded Reload
	fld.s	$ft11, $sp, 56                  # 4-byte Folded Reload
	fld.s	$ft12, $sp, 52                  # 4-byte Folded Reload
	fld.s	$ft13, $sp, 48                  # 4-byte Folded Reload
	fld.s	$ft14, $sp, 44                  # 4-byte Folded Reload
	fld.s	$fa3, $sp, 76                   # 4-byte Folded Reload
	fld.s	$fa4, $sp, 40                   # 4-byte Folded Reload
	fld.s	$fa5, $sp, 36                   # 4-byte Folded Reload
	fld.s	$ft6, $sp, 32                   # 4-byte Folded Reload
	fld.s	$fa6, $sp, 28                   # 4-byte Folded Reload
	fld.s	$ft2, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft1, $sp, 20                   # 4-byte Folded Reload
	fld.s	$fa1, $sp, 16                   # 4-byte Folded Reload
.LBB5_47:
	fmul.s	$fa0, $fa4, $fs5
	fmadd.s	$fa0, $fa1, $ft13, $fa0
	fmadd.s	$fa0, $fs4, $fa6, $fa0
	fmul.s	$fa2, $fa5, $fs5
	fmadd.s	$fa2, $fa1, $ft14, $fa2
	fmadd.s	$fa4, $fs4, $ft2, $fa2
	fmul.s	$fa2, $ft6, $fs5
	fmadd.s	$fa2, $fa1, $fa3, $fa2
	fmadd.s	$fa2, $fs4, $ft1, $fa2
	fmul.s	$fa3, $fa4, $fa4
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa4, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fneg.s	$fa3, $fa1
	fmul.s	$fa3, $fs6, $fa3
	fmadd.s	$fa4, $fs0, $fa2, $fa3
	fneg.s	$fa5, $fa2
	fmul.s	$fa5, $fs3, $fa5
	fmadd.s	$fa6, $fs6, $fa0, $fa5
	fneg.s	$fa7, $fa0
	fmul.s	$fa7, $fs0, $fa7
	fmadd.s	$ft0, $fs3, $fa1, $fa7
	fnmadd.s	$fa2, $fs0, $fa2, $fa3
	fnmadd.s	$fa0, $fs6, $fa0, $fa5
	fnmadd.s	$fa1, $fs3, $fa1, $fa7
	movfr2gr.s	$a0, $fa1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $fp, 516
	fmul.s	$fa3, $fa6, $fa6
	fmadd.s	$fa3, $fa4, $fa4, $fa3
	fmadd.s	$fa3, $ft0, $ft0, $fa3
	fsqrt.s	$fa4, $fa3
	fst.s	$fa4, $fp, 552
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa2, $fa3, $fa2
	fst.s	$fa2, $fp, 508
	fmul.s	$fa0, $fa3, $fa0
	fst.s	$fa0, $fp, 512
	fmul.s	$fa0, $fa3, $fa1
	fst.s	$fa0, $fp, 516
	fld.s	$fs5, $sp, 192                  # 4-byte Folded Reload
	fld.s	$fs4, $fp, 500
	movgr2fr.w	$fa0, $zero
	fcmp.cult.s	$fcc0, $fs4, $fa0
	bcnez	$fcc0, .LBB5_39
.LBB5_48:
	fneg.s	$fa0, $ft8
	fneg.s	$fa1, $ft7
	fmul.s	$fa2, $fs2, $fa0
	fneg.s	$fa3, $ft11
	fmul.s	$fa4, $fs2, $fa1
	fmadd.s	$fa2, $ft12, $ft10, $fa2
	fmadd.s	$fa4, $ft12, $ft9, $fa4
	fmadd.s	$fa2, $fa3, $ft9, $fa2
	fmul.s	$fa3, $fs2, $fa3
	fmadd.s	$fa0, $fa0, $fs7, $fa4
	fmadd.s	$fa2, $ft7, $fs7, $fa2
	fmadd.s	$fa3, $ft12, $fs7, $fa3
	fmul.s	$fa4, $ft9, $ft7
	fmadd.s	$fa0, $ft11, $ft10, $fa0
	fmadd.s	$fa1, $fa1, $ft10, $fa3
	fmadd.s	$fa3, $ft12, $fs2, $fa4
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa1, $ft8, $ft9, $fa1
	fmadd.s	$fa3, $ft8, $ft10, $fa3
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	fmadd.s	$fa3, $ft11, $fs7, $fa3
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fs1, $fa0, $fa4
	fmul.s	$fs3, $fa2, $fa4
	fmul.s	$fs2, $fa1, $fa4
	fmul.s	$fs0, $fa3, $fa4
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI5_3)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI5_3)
	fadd.s	$fa3, $fa0, $fa0
	fcmp.cule.s	$fcc0, $fa3, $fa1
	fst.s	$fa3, $fp, 560
	bcnez	$fcc0, .LBB5_50
# %bb.49:
	fneg.s	$fs1, $fs1
	fneg.s	$fs3, $fs3
	fneg.s	$fs2, $fs2
	fneg.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa3, $fa0, $fa0
	fst.s	$fa3, $fp, 560
.LBB5_50:
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI5_0)
	fcmp.cule.s	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB5_52
# %bb.51:
	fmul.s	$fa0, $fs3, $fs3
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	frsqrt.s	$fa0, $fa0
	fmul.s	$fs1, $fs1, $fa0
	fmul.s	$fs3, $fs3, $fa0
	fmul.s	$fs2, $fs2, $fa0
.LBB5_52:                               # %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit
	fld.s	$fa4, $fp, 476
	fmul.s	$fa0, $fs4, $fa4
	fcmp.cule.s	$fcc0, $fa3, $fa0
	fneg.s	$fa2, $fs1
	fneg.s	$fa0, $fs3
	fneg.s	$fa1, $fs2
	bcnez	$fcc0, .LBB5_57
# %bb.53:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 573
	fneg.s	$fa6, $fs4
	fmadd.s	$fa5, $fa6, $fa4, $fa3
	fcmp.cule.s	$fcc0, $fs4, $fa3
	vldi	$vr3, -1168
	bcnez	$fcc0, .LBB5_56
# %bb.54:
	pcalau12i	$a0, %pc_hi20(.LCPI5_2)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI5_2)
	fcmp.cule.s	$fcc0, $fa7, $fa4
	bcnez	$fcc0, .LBB5_56
# %bb.55:
	fmadd.s	$fa3, $fa6, $fa4, $fs4
	fdiv.s	$fa3, $fa5, $fa3
.LBB5_56:                               # %._crit_edge712
	fst.s	$fa3, $fp, 580
	fst.s	$fa5, $fp, 556
	fld.s	$fa4, $sp, 176                  # 4-byte Folded Reload
	fmul.s	$fa3, $fa4, $fa1
	fld.s	$ft3, $sp, 128                  # 4-byte Folded Reload
	fmadd.s	$fa3, $ft3, $fa2, $fa3
	fld.s	$ft1, $sp, 160                  # 4-byte Folded Reload
	fmadd.s	$fa5, $ft1, $fs3, $fa3
	fmul.s	$fa3, $ft1, $fa2
	fmadd.s	$fa3, $ft3, $fa0, $fa3
	vld	$vr10, $sp, 144                 # 16-byte Folded Reload
	fmadd.s	$fa6, $ft2, $fs2, $fa3
	fmul.s	$fa3, $ft2, $fa0
	fmadd.s	$fa3, $ft3, $fa1, $fa3
	fmadd.s	$fa7, $fa4, $fs1, $fa3
	fmul.s	$fa3, $fa4, $fs3
	fmadd.s	$fa3, $ft2, $fs1, $fa3
	fmadd.s	$ft0, $ft1, $fs2, $fa3
	fmul.s	$fa3, $ft3, $fa5
	fld.s	$ft6, $sp, 104                  # 4-byte Folded Reload
	fmadd.s	$fa3, $ft0, $ft6, $fa3
	fld.s	$ft5, $sp, 108                  # 4-byte Folded Reload
	fmadd.s	$fa3, $fa6, $ft5, $fa3
	fmadd.s	$fa3, $fa7, $fa4, $fa3
	fmul.s	$fa4, $ft3, $fa6
	fld.s	$ft4, $sp, 112                  # 4-byte Folded Reload
	fmadd.s	$fa4, $ft0, $ft4, $fa4
	fmadd.s	$fa4, $fa7, $ft6, $fa4
	fmadd.s	$fa4, $fa5, $ft1, $fa4
	fmul.s	$fa7, $ft3, $fa7
	fmadd.s	$fa7, $ft0, $ft5, $fa7
	fmadd.s	$fa5, $fa5, $ft4, $fa7
	fmadd.s	$fa5, $fa6, $ft2, $fa5
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 524
	st.d	$a1, $fp, 532
	fld.s	$fa6, $s1, 16
	fld.s	$fa7, $s1, 0
	fmul.s	$fa6, $fa6, $fa4
	fld.s	$ft0, $s1, 32
	fld.s	$ft1, $s1, 20
	fld.s	$ft2, $s1, 4
	fmadd.s	$fa6, $fa7, $fa3, $fa6
	fmadd.s	$fa6, $ft0, $fa5, $fa6
	fmul.s	$fa7, $fa4, $ft1
	fmadd.s	$fa7, $ft2, $fa3, $fa7
	fld.s	$ft0, $s1, 36
	fld.s	$ft1, $s1, 24
	fld.s	$ft2, $s1, 8
	fld.s	$ft3, $s1, 40
	fmadd.s	$fa7, $ft0, $fa5, $fa7
	fmul.s	$ft0, $fa4, $ft1
	fmadd.s	$ft0, $ft2, $fa3, $ft0
	fmadd.s	$ft0, $ft3, $fa5, $ft0
	fmul.s	$fa7, $fa4, $fa7
	fld.s	$ft1, $s0, 16
	fmadd.s	$fa6, $fa3, $fa6, $fa7
	fmadd.s	$fa6, $fa5, $ft0, $fa6
	fld.s	$fa7, $s0, 0
	fmul.s	$ft0, $fa4, $ft1
	fld.s	$ft1, $s0, 32
	fld.s	$ft2, $s0, 20
	fld.s	$ft3, $s0, 4
	fmadd.s	$fa7, $fa7, $fa3, $ft0
	fmadd.s	$fa7, $ft1, $fa5, $fa7
	fmul.s	$ft0, $fa4, $ft2
	fmadd.s	$ft0, $ft3, $fa3, $ft0
	fld.s	$ft1, $s0, 36
	fld.s	$ft2, $s0, 24
	fld.s	$ft3, $s0, 8
	fld.s	$ft4, $s0, 40
	fmadd.s	$ft0, $ft1, $fa5, $ft0
	fmul.s	$ft1, $fa4, $ft2
	fmadd.s	$ft1, $ft3, $fa3, $ft1
	fmadd.s	$ft1, $ft4, $fa5, $ft1
	fmul.s	$fa4, $fa4, $ft0
	fmadd.s	$fa3, $fa3, $fa7, $fa4
	fmadd.s	$fa3, $fa5, $ft1, $fa3
	fadd.s	$fa3, $fa6, $fa3
	frecip.s	$fa3, $fa3
	fst.s	$fa3, $fp, 544
.LBB5_57:
	ld.bu	$a0, $fp, 574
	beqz	$a0, .LBB5_59
# %bb.58:
	vld	$vr11, $sp, 80                  # 16-byte Folded Reload
	fneg.s	$fa3, $ft3
	fmul.s	$fa4, $fs5, $fa1
	fld.s	$ft2, $sp, 96                   # 4-byte Folded Reload
	fmadd.s	$fa4, $ft2, $fa2, $fa4
	fld.s	$ft1, $sp, 100                  # 4-byte Folded Reload
	fneg.s	$fa5, $ft1
	fmadd.s	$fa4, $ft1, $fs3, $fa4
	fmul.s	$fa2, $ft1, $fa2
	fmadd.s	$fa2, $ft2, $fa0, $fa2
	fmadd.s	$fa2, $ft3, $fs2, $fa2
	fmul.s	$fa0, $ft3, $fa0
	fmadd.s	$fa0, $ft2, $fa1, $fa0
	fneg.s	$fa1, $fs5
	fmadd.s	$fa0, $fs5, $fs1, $fa0
	fmul.s	$fa6, $fs5, $fs3
	fmadd.s	$fa6, $ft3, $fs1, $fa6
	fmadd.s	$fa6, $ft1, $fs2, $fa6
	fmul.s	$fa7, $ft2, $fa4
	fmadd.s	$fa7, $fa6, $fa3, $fa7
	fmadd.s	$fa7, $fa2, $fa5, $fa7
	fmadd.s	$fa7, $fa0, $fs5, $fa7
	fmul.s	$ft0, $ft2, $fa2
	fmadd.s	$ft0, $fa6, $fa1, $ft0
	fmadd.s	$fa3, $fa0, $fa3, $ft0
	fmadd.s	$fa3, $fa4, $ft1, $fa3
	fmul.s	$fa0, $ft2, $fa0
	fmadd.s	$fa0, $fa6, $fa5, $fa0
	fmadd.s	$fa0, $fa4, $fa1, $fa0
	fmadd.s	$fa0, $fa2, $ft3, $fa0
	movfr2gr.s	$a0, $fa7
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 584
	st.d	$a1, $fp, 592
.LBB5_59:
	fld.d	$fs7, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 304                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 312                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 320                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 328                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 336                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 352                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB5_60:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	fmov.s	$fs4, $ft9
	fmov.s	$fs6, $ft10
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	fmov.s	$ft10, $fs6
	fmov.s	$ft9, $fs4
	b	.LBB5_7
.Lfunc_end5:
	.size	_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_, .Lfunc_end5-_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E # -- Begin function _ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
	.p2align	5
	.type	_ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E,@function
_ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E: # @_ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
# %bb.0:
	ori	$a0, $zero, 6
	st.d	$a0, $a1, 0
	ret
.Lfunc_end6:
	.size	_ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E, .Lfunc_end6-_ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
                                        # -- End function
	.globl	_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E # -- Begin function _ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.p2align	5
	.type	_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E,@function
_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E: # @_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 24
	ld.d	$a5, $a0, 32
	addi.d	$a2, $a4, 8
	addi.d	$a3, $a5, 8
	addi.d	$a4, $a4, 280
	addi.d	$a5, $a5, 280
	pcaddu18i	$t8, %call36(_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_)
	jr	$t8
.Lfunc_end7:
	.size	_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, .Lfunc_end7-_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.cfi_endproc
                                        # -- End function
	.globl	_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_ # -- Begin function _ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_
	.p2align	5
	.type	_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_,@function
_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_: # @_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_
	.cfi_startproc
# %bb.0:
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
	move	$s2, $a3
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a4
	move	$a4, $a5
	pcaddu18i	$ra, %call36(_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	ld.w	$a1, $s0, 40
	lu12i.w	$a2, 260096
	st.w	$a2, $a0, 0
	alsl.d	$a3, $a1, $a0, 2
	st.w	$a2, $a3, 4
	slli.w	$a4, $a1, 1
	alsl.d	$a0, $a4, $a0, 2
	st.w	$a2, $a0, 8
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s1, 4
	fld.s	$fa3, $fp, 400
	fld.s	$fa4, $fp, 396
	slli.d	$a5, $a1, 2
	slli.d	$a3, $a4, 2
	fmul.s	$fa1, $fa1, $fa3
	fmadd.s	$fa5, $fa0, $fa4, $fa1
	fld.s	$fa6, $s1, 8
	fld.s	$fa7, $fp, 404
	fld.s	$fa0, $s1, 20
	fld.s	$fa1, $s1, 16
	fld.s	$ft0, $s1, 24
	fmadd.s	$fa2, $fa6, $fa7, $fa5
	fmul.s	$fa0, $fa3, $fa0
	fmadd.s	$ft1, $fa1, $fa4, $fa0
	fmadd.s	$fa0, $ft0, $fa7, $ft1
	fld.s	$fa1, $s1, 36
	fld.s	$ft2, $s1, 32
	fld.s	$ft3, $s1, 40
	ld.d	$a0, $s0, 16
	fmul.s	$fa1, $fa3, $fa1
	fmadd.s	$fa3, $ft2, $fa4, $fa1
	fmadd.s	$fa1, $ft3, $fa7, $fa3
	alsl.d	$a2, $a1, $a0, 2
	alsl.d	$a6, $a4, $a0, 2
	fnmadd.s	$fa4, $fa6, $fa7, $fa5
	fnmadd.s	$fa5, $ft0, $fa7, $ft1
	fnmadd.s	$fa3, $ft3, $fa7, $fa3
	st.w	$zero, $a0, 0
	fst.s	$fa1, $a0, 4
	fst.s	$fa5, $a0, 8
	st.w	$zero, $a0, 12
	fstx.s	$fa3, $a0, $a5
	st.w	$zero, $a2, 4
	fst.s	$fa2, $a2, 8
	st.w	$zero, $a2, 12
	fstx.s	$fa0, $a0, $a3
	fst.s	$fa4, $a6, 4
	st.d	$zero, $a6, 8
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $fp, 464
	fld.s	$fa5, $s2, 0
	fld.s	$fa6, $fp, 460
	fmul.s	$fa3, $fa3, $fa4
	fld.s	$fa7, $s2, 8
	fld.s	$ft0, $fp, 468
	fld.s	$ft1, $s2, 20
	fmadd.s	$fa3, $fa5, $fa6, $fa3
	fld.s	$fa5, $s2, 16
	fmadd.s	$ft2, $fa7, $ft0, $fa3
	fmul.s	$ft1, $fa4, $ft1
	fld.s	$ft3, $s2, 36
	fmadd.s	$fa5, $fa5, $fa6, $ft1
	fld.s	$ft1, $s2, 24
	fld.s	$ft4, $s2, 32
	fmul.s	$fa4, $fa4, $ft3
	fld.s	$ft3, $s2, 40
	ld.d	$a2, $s0, 32
	fmadd.s	$ft5, $ft1, $ft0, $fa5
	fmadd.s	$fa4, $ft4, $fa6, $fa4
	fmadd.s	$fa6, $ft3, $ft0, $fa4
	alsl.d	$a6, $a1, $a2, 2
	alsl.d	$a4, $a4, $a2, 2
	fnmadd.s	$fa4, $ft3, $ft0, $fa4
	st.w	$zero, $a2, 0
	fst.s	$fa4, $a2, 4
	fst.s	$ft5, $a2, 8
	st.w	$zero, $a2, 12
	fnmadd.s	$fa3, $fa7, $ft0, $fa3
	fstx.s	$fa6, $a2, $a5
	st.w	$zero, $a6, 4
	fst.s	$fa3, $a6, 8
	st.w	$zero, $a6, 12
	fnmadd.s	$fa3, $ft1, $ft0, $fa5
	fstx.s	$fa3, $a2, $a3
	fst.s	$ft2, $a4, 4
	st.d	$zero, $a4, 8
	fld.s	$fa3, $s0, 0
	fld.s	$fa4, $s0, 4
	fmul.s	$fa3, $fa3, $fa4
	ld.d	$a6, $s0, 48
	fld.s	$fa4, $s2, 48
	ld.d	$a7, $s0, 64
	fld.s	$fa5, $s1, 48
	ld.d	$t0, $s0, 72
	fadd.s	$fa4, $ft2, $fa4
	fsub.s	$fa2, $fa4, $fa2
	fsub.s	$fa2, $fa2, $fa5
	fmul.s	$fa2, $fa3, $fa2
	fst.s	$fa2, $a6, 0
	lu12i.w	$a3, -2049
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	st.w	$a3, $a7, 0
	lu12i.w	$a4, 522239
	ori	$a4, $a4, 4095
	st.w	$a4, $t0, 0
	fld.s	$fa2, $s2, 52
	fld.s	$fa4, $s1, 52
	fadd.s	$fa2, $ft5, $fa2
	fsub.s	$fa0, $fa2, $fa0
	fsub.s	$fa0, $fa0, $fa4
	fmul.s	$fa0, $fa3, $fa0
	fstx.s	$fa0, $a6, $a5
	stx.w	$a3, $a7, $a5
	stx.w	$a4, $t0, $a5
	fld.s	$fa0, $s2, 56
	fld.s	$fa2, $s1, 56
	fadd.s	$fa0, $fa6, $fa0
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa0, $fa0, $fa2
	fmul.s	$fa0, $fa3, $fa0
	slli.d	$t1, $a1, 3
	ld.bu	$t2, $fp, 574
	fstx.s	$fa0, $a6, $t1
	stx.w	$a3, $a7, $t1
	stx.w	$a4, $t0, $t1
	alsl.w	$t1, $a1, $a1, 1
	beqz	$t2, .LBB8_4
# %bb.1:
	fld.s	$fa1, $fp, 492
	fld.s	$fa0, $fp, 504
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_5
# %bb.2:
	fld.s	$fa1, $fp, 496
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_5
# %bb.3:
	fld.s	$fa0, $s1, 4
	fld.s	$fa2, $fp, 368
	fld.s	$fa3, $s1, 0
	fld.s	$fa4, $s1, 8
	fld.s	$fa5, $fp, 352
	fmul.s	$fa1, $fa0, $fa2
	fld.s	$fa6, $fp, 384
	fld.s	$fa7, $fp, 372
	fld.s	$ft0, $fp, 356
	fmadd.s	$ft1, $fa5, $fa3, $fa1
	fmadd.s	$fa1, $fa6, $fa4, $ft1
	fmul.s	$fa0, $fa0, $fa7
	fmadd.s	$fa3, $ft0, $fa3, $fa0
	fld.s	$ft2, $fp, 388
	fld.s	$ft3, $s1, 20
	fld.s	$ft4, $s1, 16
	fld.s	$ft5, $s1, 24
	fmadd.s	$fa0, $ft2, $fa4, $fa3
	fmul.s	$ft6, $fa2, $ft3
	fmadd.s	$ft6, $fa5, $ft4, $ft6
	fmadd.s	$ft7, $fa6, $ft5, $ft6
	fmul.s	$ft3, $fa7, $ft3
	fmadd.s	$ft3, $ft0, $ft4, $ft3
	fld.s	$ft4, $s1, 36
	fld.s	$ft8, $s1, 32
	fld.s	$ft9, $s1, 40
	fmadd.s	$ft10, $ft2, $ft5, $ft3
	fmul.s	$fa2, $fa2, $ft4
	fmadd.s	$fa2, $fa5, $ft8, $fa2
	fmadd.s	$fa5, $fa6, $ft9, $fa2
	fmul.s	$fa7, $fa7, $ft4
	fmadd.s	$fa7, $ft0, $ft8, $fa7
	fmadd.s	$ft0, $ft2, $ft9, $fa7
	slli.w	$a7, $a1, 2
	slli.d	$a5, $t1, 2
	fstx.s	$fa1, $a0, $a5
	addi.d	$t0, $a5, 4
	fstx.s	$ft7, $a0, $t0
	addi.d	$t1, $a5, 8
	fstx.s	$fa5, $a0, $t1
	slli.d	$t2, $a7, 2
	fstx.s	$fa0, $a0, $t2
	addi.w	$t3, $a7, 1
	slli.d	$t3, $t3, 2
	fstx.s	$ft10, $a0, $t3
	addi.w	$a7, $a7, 2
	slli.d	$a7, $a7, 2
	fstx.s	$ft0, $a0, $a7
	fnmadd.s	$ft1, $fa6, $fa4, $ft1
	fstx.s	$ft1, $a2, $a5
	fnmadd.s	$ft1, $fa6, $ft5, $ft6
	fstx.s	$ft1, $a2, $t0
	fnmadd.s	$fa2, $fa6, $ft9, $fa2
	fstx.s	$fa2, $a2, $t1
	fnmadd.s	$fa2, $ft2, $fa4, $fa3
	fstx.s	$fa2, $a2, $t2
	fnmadd.s	$fa2, $ft2, $ft5, $ft3
	fstx.s	$fa2, $a2, $t3
	fnmadd.s	$fa2, $ft2, $ft9, $fa7
	fstx.s	$fa2, $a2, $a7
	fld.s	$fa2, $s0, 0
	fld.s	$fa3, $fp, 484
	fld.s	$fa4, $fp, 512
	fld.s	$fa6, $fp, 508
	fld.s	$fa7, $fp, 516
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa3, $ft7, $fa4
	fmadd.s	$fa1, $fa6, $fa1, $fa3
	fmadd.s	$fa1, $fa7, $fa5, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fstx.s	$fa1, $a6, $a5
	fld.s	$fa1, $fp, 512
	fld.s	$fa3, $fp, 508
	fld.s	$fa4, $fp, 516
	fmul.s	$fa1, $ft10, $fa1
	fmadd.s	$fa0, $fa3, $fa0, $fa1
	fmadd.s	$fa0, $fa4, $ft0, $fa0
	ld.d	$a7, $s0, 64
	ld.d	$t0, $s0, 72
	fmul.s	$fa0, $fa2, $fa0
	fstx.s	$fa0, $a6, $t2
	stx.w	$a3, $a7, $a5
	stx.w	$a4, $t0, $a5
	stx.w	$a3, $a7, $t2
	stx.w	$a4, $t0, $t2
	alsl.w	$a5, $a1, $a1, 2
	ld.bu	$a1, $fp, 573
	bnez	$a1, .LBB8_6
	b	.LBB8_11
.LBB8_4:
	move	$a5, $t1
	ld.bu	$a1, $fp, 573
	bnez	$a1, .LBB8_6
	b	.LBB8_11
.LBB8_5:
	fld.s	$fa0, $fp, 508
	fld.s	$fa1, $fp, 484
	fld.s	$fa2, $fp, 512
	fld.s	$fa3, $fp, 516
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa3, $fa1, $fa3
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
	slli.d	$a1, $t1, 2
	fstx.s	$fa0, $a0, $a1
	addi.d	$t1, $a1, 4
	fstx.s	$fa2, $a0, $t1
	addi.d	$t2, $a1, 8
	fstx.s	$fa1, $a0, $t2
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a2, $a1
	fneg.s	$fa0, $fa2
	fstx.s	$fa0, $a2, $t1
	fneg.s	$fa0, $fa1
	fstx.s	$fa0, $a2, $t2
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $fp, 480
	fld.s	$fa2, $fp, 552
	ld.d	$t1, $s0, 56
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $a6, $a1
	stx.w	$zero, $t1, $a1
	stx.w	$zero, $a7, $a1
	stx.w	$a4, $t0, $a1
	ld.bu	$a1, $fp, 573
	beqz	$a1, .LBB8_11
.LBB8_6:
	fld.s	$fa0, $fp, 524
	fld.s	$fa1, $fp, 484
	fld.s	$fa2, $fp, 528
	fld.s	$fa3, $fp, 532
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa3, $fa1, $fa3
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
	addi.w	$a1, $a5, 0
	slli.d	$a5, $a1, 2
	fstx.s	$fa0, $a0, $a5
	addi.d	$a6, $a5, 4
	fstx.s	$fa2, $a0, $a6
	addi.d	$t1, $a5, 8
	fstx.s	$fa1, $a0, $t1
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a2, $a5
	fneg.s	$fa0, $fa2
	fstx.s	$fa0, $a2, $a6
	fneg.s	$fa0, $fa1
	fstx.s	$fa0, $a2, $t1
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $fp, 480
	fld.s	$fa2, $fp, 556
	ld.d	$a0, $s0, 48
	ld.d	$a2, $s0, 56
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $a0, $a5
	stx.w	$zero, $a2, $a5
	fld.s	$fa1, $fp, 500
	movgr2fr.w	$fa0, $zero
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_9
# %bb.7:
	fld.s	$fa1, $fp, 556
	alsl.d	$a0, $a1, $a7, 2
	fcmp.cule.s	$fcc0, $fa1, $fa0
	alsl.d	$a1, $a1, $t0, 2
	bcnez	$fcc0, .LBB8_10
# %bb.8:
	st.w	$zero, $a0, 0
	st.w	$a4, $a1, 0
	b	.LBB8_11
.LBB8_9:
	stx.w	$a3, $a7, $a5
	stx.w	$a4, $t0, $a5
	b	.LBB8_11
.LBB8_10:
	st.w	$a3, $a0, 0
	st.w	$zero, $a1, 0
.LBB8_11:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_, .Lfunc_end8-_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN21btConeTwistConstraint13buildJacobianEv
.LCPI9_0:
	.word	0x34000000                      # float 1.1920929E-7
.LCPI9_2:
	.word	0x3f3504f3                      # float 0.707106769
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI9_1:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN21btConeTwistConstraint13buildJacobianEv
	.p2align	5
	.type	_ZN21btConeTwistConstraint13buildJacobianEv,@function
_ZN21btConeTwistConstraint13buildJacobianEv: # @_ZN21btConeTwistConstraint13buildJacobianEv
	.cfi_startproc
# %bb.0:
	ld.bu	$a1, $a0, 575
	beqz	$a1, .LBB9_4
# %bb.1:
	ld.bu	$a1, $a0, 572
	st.w	$zero, $a0, 40
	st.d	$zero, $a0, 564
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 624
	bnez	$a1, .LBB9_12
# %bb.2:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	fst.d	$fs0, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 80                   # 8-byte Folded Spill
	.cfi_offset 56, -8
	.cfi_offset 57, -16
	.cfi_offset 58, -24
	.cfi_offset 59, -32
	.cfi_offset 60, -40
	.cfi_offset 61, -48
	.cfi_offset 62, -56
	.cfi_offset 63, -64
	ld.d	$a1, $a0, 24
	fld.s	$fa0, $a1, 8
	fld.s	$fa2, $a0, 396
	fld.s	$fa1, $a1, 12
	fld.s	$fa3, $a0, 400
	fld.s	$fa4, $a1, 16
	fld.s	$fa5, $a0, 404
	fld.s	$fa6, $a1, 56
	fld.s	$fa7, $a1, 24
	fld.s	$ft0, $a1, 28
	fld.s	$ft1, $a1, 32
	fld.s	$ft2, $a1, 60
	fld.s	$ft3, $a1, 40
	ld.d	$a2, $a0, 32
	fld.s	$ft4, $a1, 44
	fld.s	$ft5, $a1, 48
	fld.s	$ft6, $a1, 64
	fld.s	$ft7, $a2, 8
	fld.s	$ft8, $a0, 460
	fld.s	$ft9, $a2, 12
	fld.s	$ft10, $a0, 464
	fld.s	$ft11, $a2, 16
	fld.s	$ft12, $a0, 468
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
	fsub.s	$ft0, $ft14, $fa1
	fsub.s	$ft1, $ft15, $fa2
	pcalau12i	$a3, %pc_hi20(.LCPI9_0)
	fld.s	$ft2, $a3, %pc_lo12(.LCPI9_0)
	fmul.s	$fa7, $ft0, $ft0
	fmadd.s	$fa7, $fa6, $fa6, $fa7
	fmadd.s	$fa7, $ft1, $ft1, $fa7
	fcmp.cule.s	$fcc0, $fa7, $ft2
	bcnez	$fcc0, .LBB9_5
# %bb.3:
	frsqrt.s	$ft2, $fa7
	fmul.s	$fa7, $fa6, $ft2
	fmul.s	$ft0, $ft0, $ft2
	fmul.s	$ft1, $ft1, $ft2
	movfr2gr.s	$a3, $fa7
	movfr2gr.s	$a4, $ft0
	bstrins.d	$a3, $a4, 63, 32
	movfr2gr.s	$a4, $ft1
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a3, $sp, 32
	st.d	$a4, $sp, 40
	b	.LBB9_6
.LBB9_4:
	ret
.LBB9_5:
	pcalau12i	$a3, %pc_hi20(.LCPI9_1)
	vld	$vr6, $a3, %pc_lo12(.LCPI9_1)
	vst	$vr6, $sp, 32
	movgr2fr.w	$ft0, $zero
	vldi	$vr7, -1168
	fmov.s	$ft1, $ft0
.LBB9_6:
	pcalau12i	$a3, %pc_hi20(.LCPI9_2)
	fld.s	$fa6, $a3, %pc_lo12(.LCPI9_2)
	fabs.s	$ft2, $ft1
	fcmp.cule.s	$fcc0, $ft2, $fa6
	bcnez	$fcc0, .LBB9_8
# %bb.7:
	fmul.s	$fa6, $ft1, $ft1
	fmadd.s	$ft3, $ft0, $ft0, $fa6
	frsqrt.s	$ft4, $ft3
	fneg.s	$fa6, $ft1
	fmul.s	$fa6, $ft4, $fa6
	fmul.s	$ft2, $ft0, $ft4
	fmul.s	$ft0, $ft3, $ft4
	fneg.s	$ft1, $fa7
	fmul.s	$ft1, $ft2, $ft1
	fmul.s	$fa7, $fa6, $fa7
	movgr2fr.w	$ft3, $zero
	b	.LBB9_9
.LBB9_8:
	fmul.s	$fa6, $ft0, $ft0
	fmadd.s	$ft2, $fa7, $fa7, $fa6
	frsqrt.s	$ft4, $ft2
	fneg.s	$fa6, $ft0
	fmul.s	$ft3, $ft4, $fa6
	fmul.s	$fa6, $fa7, $ft4
	fneg.s	$fa7, $ft1
	fmul.s	$ft0, $fa6, $fa7
	fmul.s	$ft1, $ft1, $ft3
	fmul.s	$fa7, $ft2, $ft4
	movgr2fr.w	$ft2, $zero
.LBB9_9:                                # %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
	move	$a3, $zero
	fst.s	$ft3, $sp, 48
	fst.s	$fa6, $sp, 52
	fst.s	$ft2, $sp, 56
	st.w	$zero, $sp, 60
	fst.s	$ft0, $sp, 64
	fst.s	$ft1, $sp, 68
	fst.s	$fa7, $sp, 72
	st.w	$zero, $sp, 76
	addi.d	$a4, $sp, 32
	ori	$a5, $zero, 252
	fst.s	$fa0, $sp, 8                    # 4-byte Folded Spill
	.p2align	4, , 16
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a0, $a3
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
	bne	$a3, $a5, .LBB9_10
# %bb.11:
	fld.d	$fs7, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
.LBB9_12:
	ld.d	$a3, $a0, 24
	ld.d	$a4, $a0, 32
	addi.d	$a1, $a3, 8
	addi.d	$a2, $a4, 8
	addi.d	$a3, $a3, 280
	addi.d	$a4, $a4, 280
	pcaddu18i	$t8, %call36(_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_)
	jr	$t8
.Lfunc_end9:
	.size	_ZN21btConeTwistConstraint13buildJacobianEv, .Lfunc_end9-_ZN21btConeTwistConstraint13buildJacobianEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
.LCPI10_0:
	.word	0xbe99999a                      # float -0.300000012
.LCPI10_1:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.p2align	5
	.type	_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f,@function
_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f: # @_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -592
	.cfi_def_cfa_offset 592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 528                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 520                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 512                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 504                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 496                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 488                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	.cfi_offset 58, -64
	.cfi_offset 59, -72
	.cfi_offset 60, -80
	.cfi_offset 61, -88
	.cfi_offset 62, -96
	.cfi_offset 63, -104
	move	$fp, $a0
	ld.bu	$a0, $a0, 575
	beqz	$a0, .LBB10_40
# %bb.1:
	fmov.s	$fs0, $fa0
	ld.d	$a3, $fp, 24
	ld.bu	$a4, $fp, 572
	ld.d	$a0, $fp, 32
	bnez	$a4, .LBB10_8
# %bb.2:
	fld.s	$fa1, $a3, 8
	fld.s	$fa2, $fp, 396
	fld.s	$fa3, $a3, 12
	fld.s	$fa4, $fp, 400
	fld.s	$fa5, $a3, 16
	fld.s	$fa6, $fp, 404
	fld.s	$fa0, $a3, 56
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa2, $fa3
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fadd.s	$ft1, $fa1, $fa0
	fld.s	$fa1, $a3, 28
	fld.s	$fa3, $a3, 24
	fld.s	$fa5, $a3, 32
	fld.s	$fa7, $a3, 60
	fmul.s	$fa1, $fa4, $fa1
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fadd.s	$ft3, $fa7, $fa1
	fld.s	$fa1, $a3, 44
	fld.s	$fa3, $a3, 40
	fld.s	$fa5, $a3, 48
	fld.s	$ft7, $a3, 64
	fmul.s	$fa1, $fa4, $fa1
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fadd.s	$ft4, $ft7, $fa1
	fld.s	$fa1, $a0, 8
	fld.s	$fa2, $a0, 12
	fld.s	$fa5, $fp, 464
	fld.s	$fa6, $fp, 460
	fld.s	$fa4, $a0, 16
	fld.s	$ft0, $fp, 468
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa1, $fa1, $fa6, $fa2
	fld.s	$fa3, $a0, 56
	fmadd.s	$fa1, $fa4, $ft0, $fa1
	fld.s	$fa2, $a0, 28
	fld.s	$fa4, $a0, 24
	fadd.s	$ft2, $fa1, $fa3
	fld.s	$fa1, $a0, 32
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa4, $fa6, $fa2
	fld.s	$ft5, $a0, 44
	fmadd.s	$fa1, $fa1, $ft0, $fa2
	fld.s	$fa4, $a0, 60
	fld.s	$fa2, $a0, 40
	fmul.s	$ft6, $fa5, $ft5
	fld.s	$ft8, $a0, 48
	fld.s	$fa5, $a0, 64
	fadd.s	$ft5, $fa4, $fa1
	fmadd.s	$fa1, $fa2, $fa6, $ft6
	fmadd.s	$fa1, $ft8, $ft0, $fa1
	fadd.s	$ft6, $fa5, $fa1
	ld.d	$a4, $a1, 72
	fsub.s	$fa0, $ft1, $fa0
	fsub.s	$fa1, $ft3, $fa7
	movgr2fr.w	$ft0, $zero
	fsub.s	$fa2, $ft4, $ft7
	fmov.s	$ft7, $ft0
	fmov.s	$fa7, $ft0
	fmov.s	$fa6, $ft0
	beqz	$a4, .LBB10_4
# %bb.3:
	fld.s	$fa6, $a4, 328
	fld.s	$fa7, $a1, 0
	fld.s	$ft7, $a4, 332
	fld.s	$ft8, $a1, 4
	fadd.s	$fa6, $fa6, $fa7
	fadd.s	$fa7, $ft7, $ft8
	fld.s	$ft7, $a4, 336
	fld.s	$ft8, $a1, 8
	fld.s	$ft9, $a4, 344
	fld.s	$ft10, $a1, 16
	fld.s	$ft11, $a4, 348
	fld.s	$ft12, $a1, 20
	fld.s	$ft13, $a4, 352
	fld.s	$ft14, $a1, 24
	fadd.s	$ft7, $ft7, $ft8
	fadd.s	$ft8, $ft9, $ft10
	fadd.s	$ft9, $ft11, $ft12
	fadd.s	$ft10, $ft13, $ft14
	fneg.s	$ft11, $fa1
	fmul.s	$ft11, $ft10, $ft11
	fmadd.s	$ft11, $ft9, $fa2, $ft11
	fneg.s	$ft12, $fa2
	fmul.s	$ft12, $ft8, $ft12
	fmadd.s	$ft10, $ft10, $fa0, $ft12
	fneg.s	$ft12, $fa0
	fmul.s	$ft9, $ft9, $ft12
	fmadd.s	$ft8, $ft8, $fa1, $ft9
	fadd.s	$fa6, $fa6, $ft11
	fadd.s	$fa7, $fa7, $ft10
	fadd.s	$ft7, $ft7, $ft8
.LBB10_4:                               # %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit
	ld.d	$a4, $a2, 72
	fsub.s	$fa3, $ft2, $fa3
	fsub.s	$fa4, $ft5, $fa4
	fsub.s	$fa5, $ft6, $fa5
	fmov.s	$ft8, $ft0
	fmov.s	$ft9, $ft0
	beqz	$a4, .LBB10_6
# %bb.5:
	fld.s	$ft0, $a4, 328
	fld.s	$ft8, $a2, 0
	fld.s	$ft9, $a4, 332
	fld.s	$ft10, $a2, 4
	fadd.s	$ft0, $ft0, $ft8
	fadd.s	$ft8, $ft9, $ft10
	fld.s	$ft9, $a4, 336
	fld.s	$ft10, $a2, 8
	fld.s	$ft11, $a4, 344
	fld.s	$ft12, $a2, 16
	fld.s	$ft13, $a4, 348
	fld.s	$ft14, $a2, 20
	fld.s	$ft15, $a4, 352
	fld.s	$fs1, $a2, 24
	fadd.s	$ft10, $ft9, $ft10
	fadd.s	$ft9, $ft11, $ft12
	fadd.s	$ft11, $ft13, $ft14
	fadd.s	$ft12, $ft15, $fs1
	fneg.s	$ft13, $fa4
	fmul.s	$ft13, $ft12, $ft13
	fmadd.s	$ft13, $ft11, $fa5, $ft13
	fneg.s	$ft14, $fa5
	fmul.s	$ft14, $ft9, $ft14
	fmadd.s	$ft12, $ft12, $fa3, $ft14
	fneg.s	$ft14, $fa3
	fmul.s	$ft11, $ft11, $ft14
	fmadd.s	$ft11, $ft9, $fa4, $ft11
	fadd.s	$ft9, $ft0, $ft13
	fadd.s	$ft8, $ft8, $ft12
	fadd.s	$ft0, $ft10, $ft11
.LBB10_6:                               # %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit265
	move	$a4, $zero
	fsub.s	$fa6, $fa6, $ft9
	fsub.s	$fa7, $fa7, $ft8
	fsub.s	$ft0, $ft7, $ft0
	fsub.s	$ft1, $ft1, $ft2
	pcalau12i	$a5, %pc_hi20(.LCPI10_0)
	fld.s	$ft2, $a5, %pc_lo12(.LCPI10_0)
	fsub.s	$ft3, $ft3, $ft5
	fsub.s	$ft4, $ft4, $ft6
	ori	$a5, $zero, 252
	.p2align	4, , 16
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	add.d	$a6, $fp, $a4
	fld.s	$ft5, $a6, 176
	fld.s	$ft6, $a6, 100
	fld.s	$ft11, $a6, 96
	fld.s	$ft10, $a6, 104
	frecip.s	$ft5, $ft5
	fmul.s	$ft7, $fa7, $ft6
	fmadd.s	$ft7, $ft11, $fa6, $ft7
	fmadd.s	$ft7, $ft10, $ft0, $ft7
	fmul.s	$ft8, $ft3, $ft6
	fmadd.s	$ft8, $ft1, $ft11, $ft8
	fmadd.s	$ft8, $ft4, $ft10, $ft8
	fmul.s	$ft8, $ft8, $ft2
	fdiv.s	$ft8, $ft8, $fs0
	fld.s	$ft9, $fp, 40
	fneg.s	$ft12, $ft5
	fmul.s	$ft7, $ft7, $ft12
	fmadd.s	$ft5, $ft8, $ft5, $ft7
	fadd.s	$ft7, $ft9, $ft5
	fst.s	$ft7, $fp, 40
	fneg.s	$ft7, $ft6
	fmul.s	$ft8, $fa2, $ft7
	fmadd.s	$ft12, $fa1, $ft10, $ft8
	fneg.s	$ft9, $ft10
	fmul.s	$ft8, $fa0, $ft9
	fmadd.s	$ft13, $fa2, $ft11, $ft8
	fneg.s	$ft8, $ft11
	fmul.s	$ft14, $fa1, $ft8
	fmadd.s	$ft14, $fa0, $ft6, $ft14
	fld.s	$ft15, $a3, 284
	fmul.s	$ft7, $fa5, $ft7
	fld.s	$fs1, $a3, 280
	fmadd.s	$ft7, $fa4, $ft10, $ft7
	fmul.s	$ft15, $ft13, $ft15
	fld.s	$fs2, $a3, 288
	fmadd.s	$ft15, $fs1, $ft12, $ft15
	fld.s	$fs1, $a3, 300
	fld.s	$fs3, $a3, 296
	fmadd.s	$ft15, $fs2, $ft14, $ft15
	fld.s	$fs2, $a3, 316
	fmul.s	$fs1, $ft13, $fs1
	fmadd.s	$fs1, $fs3, $ft12, $fs1
	fld.s	$fs3, $a3, 360
	fmul.s	$ft13, $ft13, $fs2
	fld.s	$fs2, $a3, 312
	fmul.s	$ft9, $fa3, $ft9
	fmadd.s	$ft9, $fa5, $ft11, $ft9
	fmul.s	$ft11, $ft11, $fs3
	fmadd.s	$ft12, $fs2, $ft12, $ft13
	fld.s	$ft13, $a3, 304
	fld.s	$fs2, $a3, 320
	fmul.s	$ft10, $ft10, $fs3
	fmul.s	$fs3, $ft6, $fs3
	fmadd.s	$ft13, $ft13, $ft14, $fs1
	fmadd.s	$ft12, $fs2, $ft14, $ft12
	fmul.s	$ft11, $ft11, $ft5
	fld.s	$ft14, $a1, 0
	fmul.s	$fs1, $fs3, $ft5
	fmul.s	$ft10, $ft10, $ft5
	fld.s	$fs2, $a1, 4
	fadd.s	$ft11, $ft11, $ft14
	fld.s	$ft14, $a1, 8
	fst.s	$ft11, $a1, 0
	fadd.s	$ft11, $fs1, $fs2
	fst.s	$ft11, $a1, 4
	fadd.s	$ft10, $ft10, $ft14
	fld.s	$ft11, $a1, 32
	fld.s	$ft14, $a1, 36
	fld.s	$fs1, $a1, 40
	fst.s	$ft10, $a1, 8
	fmul.s	$ft10, $ft5, $ft11
	fmul.s	$ft11, $ft5, $ft14
	fmul.s	$ft14, $ft5, $fs1
	fmul.s	$ft10, $ft15, $ft10
	fld.s	$ft15, $a1, 16
	fmul.s	$ft11, $ft13, $ft11
	fmul.s	$ft12, $ft12, $ft14
	fld.s	$ft13, $a1, 20
	fadd.s	$ft10, $ft10, $ft15
	fld.s	$ft14, $a1, 24
	fst.s	$ft10, $a1, 16
	fadd.s	$ft10, $ft11, $ft13
	fst.s	$ft10, $a1, 20
	fadd.s	$ft10, $ft12, $ft14
	fst.s	$ft10, $a1, 24
	fld.s	$ft10, $a0, 360
	fld.s	$ft11, $a6, 96
	fmul.s	$ft8, $fa4, $ft8
	fmadd.s	$ft6, $fa3, $ft6, $ft8
	fld.s	$ft8, $a6, 100
	fmul.s	$ft11, $ft10, $ft11
	fld.s	$ft12, $a6, 104
	fld.s	$ft13, $a0, 284
	fmul.s	$ft8, $ft10, $ft8
	fld.s	$ft14, $a0, 280
	fmul.s	$ft10, $ft10, $ft12
	fmul.s	$ft12, $ft9, $ft13
	fld.s	$ft13, $a0, 288
	fmadd.s	$ft12, $ft14, $ft7, $ft12
	fld.s	$ft14, $a0, 300
	fld.s	$ft15, $a0, 296
	fmadd.s	$ft12, $ft13, $ft6, $ft12
	fld.s	$ft13, $a0, 304
	fmul.s	$ft14, $ft9, $ft14
	fmadd.s	$ft14, $ft15, $ft7, $ft14
	fld.s	$ft15, $a0, 316
	fmadd.s	$ft13, $ft13, $ft6, $ft14
	fld.s	$ft14, $a0, 312
	fld.s	$fs1, $a0, 320
	fmul.s	$ft9, $ft9, $ft15
	fld.s	$ft15, $a2, 0
	fmadd.s	$ft7, $ft14, $ft7, $ft9
	fmadd.s	$ft6, $fs1, $ft6, $ft7
	fmul.s	$ft7, $ft5, $ft11
	fsub.s	$ft7, $ft15, $ft7
	fld.s	$ft9, $a2, 4
	fst.s	$ft7, $a2, 0
	fmul.s	$ft7, $ft5, $ft8
	fld.s	$ft8, $a2, 8
	fsub.s	$ft7, $ft9, $ft7
	fst.s	$ft7, $a2, 4
	fmul.s	$ft7, $ft5, $ft10
	fsub.s	$ft7, $ft8, $ft7
	fld.s	$ft8, $a2, 32
	fld.s	$ft9, $a2, 36
	fld.s	$ft10, $a2, 40
	fst.s	$ft7, $a2, 8
	fmul.s	$ft7, $ft8, $ft5
	fmul.s	$ft8, $ft9, $ft5
	fmul.s	$ft5, $ft10, $ft5
	fmul.s	$ft7, $ft12, $ft7
	fld.s	$ft9, $a2, 16
	fmul.s	$ft8, $ft13, $ft8
	fmul.s	$ft5, $ft6, $ft5
	fld.s	$ft6, $a2, 20
	fsub.s	$ft7, $ft9, $ft7
	fld.s	$ft9, $a2, 24
	fst.s	$ft7, $a2, 16
	fsub.s	$ft6, $ft6, $ft8
	fst.s	$ft6, $a2, 20
	fsub.s	$ft5, $ft9, $ft5
	addi.d	$a4, $a4, 84
	fst.s	$ft5, $a2, 24
	bne	$a4, $a5, .LBB10_7
.LBB10_8:                               # %.loopexit
	ld.bu	$a4, $fp, 600
	beqz	$a4, .LBB10_12
# %bb.9:
	addi.d	$a4, $a3, 8
	vld	$vr0, $a4, 0
	addi.d	$a4, $a3, 56
	addi.d	$a5, $a3, 24
	addi.d	$a3, $a3, 40
	vst	$vr0, $sp, 400
	vld	$vr0, $a5, 0
	vld	$vr1, $a3, 0
	vld	$vr2, $a4, 0
	addi.d	$a3, $a0, 8
	vst	$vr0, $sp, 416
	vst	$vr1, $sp, 432
	vst	$vr2, $sp, 448
	vld	$vr0, $a3, 0
	addi.d	$a3, $a0, 56
	addi.d	$a4, $a0, 24
	addi.d	$a0, $a0, 40
	vst	$vr0, $sp, 336
	vld	$vr0, $a4, 0
	vld	$vr1, $a0, 0
	vld	$vr2, $a3, 0
	ld.d	$a0, $a1, 72
	vst	$vr0, $sp, 352
	vst	$vr1, $sp, 368
	vst	$vr2, $sp, 384
	vrepli.b	$vr6, 0
	beqz	$a0, .LBB10_19
# %bb.10:
	fld.s	$fa0, $a0, 344
	fld.s	$fa1, $a1, 16
	fld.s	$fa2, $a0, 348
	fld.s	$fa3, $a1, 20
	fld.s	$fa4, $a0, 352
	fld.s	$fa5, $a1, 24
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a3, $fa1
	bstrins.d	$a0, $a3, 63, 32
	movfr2gr.s	$a3, $fa2
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a0, $sp, 320
	st.d	$a3, $sp, 328
	ld.d	$a0, $a2, 72
	beqz	$a0, .LBB10_20
.LBB10_11:
	move	$s1, $a1
	fld.s	$fa0, $a0, 344
	fld.s	$fa1, $a2, 16
	fld.s	$fa2, $a0, 348
	fld.s	$fa3, $a2, 20
	fld.s	$fa4, $a0, 352
	move	$s0, $a2
	fld.s	$fa5, $a2, 24
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 304
	st.d	$a1, $sp, 312
	b	.LBB10_21
.LBB10_12:
	fld.s	$fa0, $fp, 488
	pcalau12i	$a4, %pc_hi20(.LCPI10_1)
	fld.s	$fa4, $a4, %pc_lo12(.LCPI10_1)
	fcmp.cule.s	$fcc0, $fa0, $fa4
	bcnez	$fcc0, .LBB10_32
# %bb.13:
	ld.d	$a4, $a1, 72
	movgr2fr.w	$fa3, $zero
	fmov.s	$fa5, $fa3
	fmov.s	$fa2, $fa3
	fmov.s	$fa1, $fa3
	beqz	$a4, .LBB10_15
# %bb.14:
	fld.s	$fa1, $a4, 344
	fld.s	$fa2, $a1, 16
	fld.s	$fa5, $a4, 348
	fld.s	$fa6, $a1, 20
	fld.s	$fa7, $a4, 352
	fld.s	$ft0, $a1, 24
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa2, $fa5, $fa6
	fadd.s	$fa5, $fa7, $ft0
.LBB10_15:                              # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit539
	ld.d	$a4, $a2, 72
	fmov.s	$fa6, $fa3
	fmov.s	$fa7, $fa3
	beqz	$a4, .LBB10_17
# %bb.16:
	fld.s	$fa3, $a4, 344
	fld.s	$fa6, $a2, 16
	fld.s	$ft0, $a4, 348
	fld.s	$ft1, $a2, 20
	fld.s	$ft2, $a4, 352
	fld.s	$ft3, $a2, 24
	fadd.s	$fa7, $fa3, $fa6
	fadd.s	$fa6, $ft0, $ft1
	fadd.s	$fa3, $ft2, $ft3
.LBB10_17:                              # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit547
	fsub.s	$fa1, $fa7, $fa1
	fsub.s	$fa2, $fa6, $fa2
	fsub.s	$fa3, $fa3, $fa5
	fmul.s	$fa5, $fa2, $fa2
	fmadd.s	$fa5, $fa1, $fa1, $fa5
	fmadd.s	$fa5, $fa3, $fa3, $fa5
	fcmp.cule.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB10_32
# %bb.18:
	frsqrt.s	$fa5, $fa5
	fmul.s	$ft2, $fa1, $fa5
	fld.s	$fa4, $a3, 296
	fmul.s	$ft3, $fa2, $fa5
	fmul.s	$ft4, $fa3, $fa5
	fld.s	$fa6, $a3, 280
	fmul.s	$ft0, $ft3, $fa4
	fld.s	$fa5, $a3, 312
	fld.s	$fa7, $a3, 300
	fld.s	$ft1, $a3, 284
	fmadd.s	$ft0, $fa6, $ft2, $ft0
	fmadd.s	$ft5, $fa5, $ft4, $ft0
	fmul.s	$ft0, $ft3, $fa7
	fmadd.s	$ft6, $ft1, $ft2, $ft0
	fld.s	$ft0, $a3, 316
	fld.s	$ft7, $a3, 304
	fld.s	$ft8, $a3, 288
	fld.s	$ft9, $a3, 320
	fmadd.s	$ft6, $ft0, $ft4, $ft6
	fmul.s	$ft10, $ft3, $ft7
	fmadd.s	$ft10, $ft8, $ft2, $ft10
	fmadd.s	$ft10, $ft9, $ft4, $ft10
	fmul.s	$ft6, $ft3, $ft6
	fld.s	$ft11, $a0, 296
	fmadd.s	$ft5, $ft2, $ft5, $ft6
	fmadd.s	$ft5, $ft4, $ft10, $ft5
	fld.s	$ft6, $a0, 280
	fmul.s	$ft10, $ft3, $ft11
	fld.s	$ft11, $a0, 312
	fld.s	$ft12, $a0, 300
	fld.s	$ft13, $a0, 284
	fmadd.s	$ft6, $ft6, $ft2, $ft10
	fmadd.s	$ft6, $ft11, $ft4, $ft6
	fmul.s	$ft10, $ft3, $ft12
	fmadd.s	$ft10, $ft13, $ft2, $ft10
	fld.s	$ft11, $a0, 316
	fld.s	$ft12, $a0, 304
	fld.s	$ft13, $a0, 288
	fld.s	$ft14, $a0, 320
	fmadd.s	$ft10, $ft11, $ft4, $ft10
	fmul.s	$ft11, $ft3, $ft12
	fmadd.s	$ft11, $ft13, $ft2, $ft11
	fmadd.s	$ft11, $ft14, $ft4, $ft11
	fmul.s	$ft3, $ft3, $ft10
	fmadd.s	$ft2, $ft2, $ft6, $ft3
	fmadd.s	$ft2, $ft4, $ft11, $ft2
	fadd.s	$ft2, $ft5, $ft2
	frecip.s	$ft2, $ft2
	fmul.s	$fa0, $fa0, $ft2
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$ft2, $fa3, $fa0
	fmul.s	$fa0, $fa2, $fa2
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fa3, $ft2, $ft2, $fa0
	fsqrt.s	$fa0, $fa3
	frsqrt.s	$ft3, $fa3
	fmul.s	$fa1, $fa1, $ft3
	fmul.s	$fa3, $fa2, $ft3
	fmul.s	$fa2, $ft2, $ft3
	fmul.s	$ft1, $ft1, $fa3
	fmadd.s	$fa6, $fa6, $fa1, $ft1
	fmadd.s	$fa6, $ft8, $fa2, $fa6
	fmul.s	$fa7, $fa7, $fa3
	fmadd.s	$fa4, $fa4, $fa1, $fa7
	fmadd.s	$fa7, $ft7, $fa2, $fa4
	fmul.s	$fa4, $ft0, $fa3
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fmadd.s	$fa5, $ft9, $fa2, $fa4
	fld.s	$ft0, $a1, 0
	movgr2fr.w	$fa4, $zero
	fmul.s	$ft1, $fa0, $fa4
	fld.s	$ft2, $a1, 4
	fadd.s	$ft0, $ft0, $ft1
	fld.s	$ft3, $a1, 8
	fst.s	$ft0, $a1, 0
	fadd.s	$ft0, $ft2, $ft1
	fst.s	$ft0, $a1, 4
	fadd.s	$ft0, $ft1, $ft3
	fld.s	$ft1, $a1, 32
	fld.s	$ft2, $a1, 36
	fld.s	$ft3, $a1, 40
	fst.s	$ft0, $a1, 8
	fmul.s	$ft0, $fa0, $ft1
	fmul.s	$ft1, $fa0, $ft2
	fmul.s	$ft2, $fa0, $ft3
	fmul.s	$fa6, $ft0, $fa6
	fld.s	$ft0, $a1, 16
	fmul.s	$fa7, $fa7, $ft1
	fmul.s	$fa5, $fa5, $ft2
	fld.s	$ft1, $a1, 20
	fadd.s	$fa6, $fa6, $ft0
	fld.s	$ft0, $a1, 24
	fst.s	$fa6, $a1, 16
	fadd.s	$fa6, $fa7, $ft1
	fst.s	$fa6, $a1, 20
	fadd.s	$fa5, $fa5, $ft0
	fst.s	$fa5, $a1, 24
	fld.s	$fa5, $a0, 284
	fld.s	$fa6, $a0, 280
	fmul.s	$fa5, $fa3, $fa5
	fld.s	$fa7, $a0, 288
	fld.s	$ft0, $a0, 300
	fld.s	$ft1, $a0, 296
	fmadd.s	$fa5, $fa6, $fa1, $fa5
	fmadd.s	$fa5, $fa7, $fa2, $fa5
	fmul.s	$fa6, $fa3, $ft0
	fmadd.s	$fa6, $ft1, $fa1, $fa6
	fld.s	$fa7, $a0, 304
	fld.s	$ft0, $a0, 316
	fld.s	$ft1, $a0, 312
	fld.s	$ft2, $a0, 320
	fmadd.s	$fa6, $fa7, $fa2, $fa6
	fmul.s	$fa3, $fa3, $ft0
	fmadd.s	$fa1, $ft1, $fa1, $fa3
	fmadd.s	$fa1, $ft2, $fa2, $fa1
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
	b	.LBB10_31
.LBB10_19:
	vst	$vr6, $sp, 320
	ld.d	$a0, $a2, 72
	bnez	$a0, .LBB10_11
.LBB10_20:
	move	$s1, $a1
	move	$s0, $a2
	vst	$vr6, $sp, 304
.LBB10_21:                              # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit336
	lu12i.w	$s2, 260096
	st.w	$s2, $sp, 240
	vst	$vr6, $sp, 244
	st.w	$s2, $sp, 260
	vst	$vr6, $sp, 264
	st.w	$s2, $sp, 280
	vst	$vr6, $sp, 284
	st.w	$zero, $sp, 300
	vst	$vr6, $sp, 224
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 320
	addi.d	$a3, $sp, 240
	fmov.s	$fa0, $fs0
	vst	$vr6, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_)
	jirl	$ra, $ra, 0
	st.w	$s2, $sp, 160
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 164
	st.w	$s2, $sp, 180
	vst	$vr0, $sp, 184
	st.w	$s2, $sp, 200
	vst	$vr0, $sp, 204
	st.w	$zero, $sp, 220
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 160
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 608
	fld.s	$fa1, $fp, 604
	fld.s	$fa2, $fp, 612
	fld.s	$fa3, $fp, 616
	fmul.s	$fa4, $fa0, $fa0
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	vldi	$vr5, -1280
	fdiv.s	$fa4, $fa5, $fa4
	fmul.s	$fa5, $fa1, $fa4
	fmul.s	$fa6, $fa0, $fa4
	fmul.s	$fa4, $fa2, $fa4
	fmul.s	$fa7, $fa3, $fa5
	fmul.s	$ft0, $fa3, $fa6
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa5, $fa1, $fa5
	fmul.s	$ft1, $fa1, $fa6
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa6, $fa0, $fa6
	fmul.s	$fa0, $fa0, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fadd.s	$fa4, $fa6, $fa2
	vldi	$vr10, -1168
	fsub.s	$fa4, $ft2, $fa4
	fsub.s	$ft8, $ft1, $fa3
	fadd.s	$ft9, $fa1, $ft0
	fadd.s	$fa3, $ft1, $fa3
	fadd.s	$fa2, $fa5, $fa2
	fsub.s	$fa2, $ft2, $fa2
	fsub.s	$ft10, $fa0, $fa7
	fsub.s	$fa1, $fa1, $ft0
	fadd.s	$fa0, $fa0, $fa7
	fadd.s	$fa5, $fa5, $fa6
	fld.s	$fa6, $fp, 416
	fld.s	$fa7, $fp, 412
	fld.s	$ft0, $fp, 420
	fsub.s	$fa5, $ft2, $fa5
	fmul.s	$ft1, $fa6, $fa3
	fmadd.s	$ft1, $fa4, $fa7, $ft1
	fmadd.s	$ft1, $fa1, $ft0, $ft1
	fmul.s	$ft2, $fa6, $fa2
	fmadd.s	$ft2, $ft8, $fa7, $ft2
	fmadd.s	$ft2, $fa0, $ft0, $ft2
	fmul.s	$ft3, $fa6, $ft10
	fmadd.s	$ft3, $ft9, $fa7, $ft3
	fld.s	$ft11, $fp, 432
	fld.s	$ft12, $fp, 428
	fld.s	$ft13, $fp, 436
	fmadd.s	$ft3, $fa5, $ft0, $ft3
	fmul.s	$ft4, $ft11, $fa3
	fmadd.s	$ft4, $fa4, $ft12, $ft4
	fmadd.s	$ft4, $fa1, $ft13, $ft4
	fmul.s	$ft5, $ft11, $fa2
	fmadd.s	$ft5, $ft8, $ft12, $ft5
	fmadd.s	$ft5, $fa0, $ft13, $ft5
	fmul.s	$ft6, $ft11, $ft10
	fmadd.s	$ft6, $ft9, $ft12, $ft6
	fld.s	$ft14, $fp, 448
	fld.s	$ft15, $fp, 444
	fld.s	$fs2, $fp, 452
	fmadd.s	$ft6, $fa5, $ft13, $ft6
	fmul.s	$fa3, $fa3, $ft14
	fmadd.s	$fa3, $fa4, $ft15, $fa3
	fmadd.s	$ft7, $fa1, $fs2, $fa3
	fmul.s	$fa1, $fa2, $ft14
	fmadd.s	$fa1, $ft8, $ft15, $fa1
	fmadd.s	$ft8, $fa0, $fs2, $fa1
	fmul.s	$fa0, $ft10, $ft14
	fmadd.s	$fa0, $ft9, $ft15, $fa0
	fmadd.s	$ft9, $fa5, $fs2, $fa0
	movgr2fr.w	$fs1, $zero
	fld.s	$fa0, $fp, 460
	fmul.s	$fa1, $fa6, $fs1
	fmadd.s	$fa1, $fa7, $fs1, $fa1
	fmadd.s	$fa1, $ft0, $fs1, $fa1
	fadd.s	$ft10, $fa1, $fa0
	fld.s	$fa0, $fp, 464
	fmul.s	$fa1, $ft11, $fs1
	fmadd.s	$fa1, $ft12, $fs1, $fa1
	fmadd.s	$fa1, $ft13, $fs1, $fa1
	fadd.s	$ft12, $fa1, $fa0
	fld.s	$fa0, $fp, 468
	fmul.s	$fa1, $ft14, $fs1
	fmadd.s	$fa1, $ft15, $fs1, $fa1
	fmadd.s	$fa1, $fs2, $fs1, $fa1
	fadd.s	$ft11, $fa1, $fa0
	fld.s	$fa6, $fp, 348
	fld.s	$fa7, $fp, 364
	fld.s	$ft0, $fp, 380
	fld.s	$ft13, $fp, 352
	fld.s	$ft14, $fp, 368
	fld.s	$ft15, $fp, 384
	fld.s	$fs2, $fp, 356
	fld.s	$fs3, $fp, 372
	fld.s	$fa0, $fp, 396
	fld.s	$fa1, $fp, 400
	fld.s	$fa2, $fp, 404
	fld.s	$fs4, $fp, 388
	fneg.s	$fa0, $fa0
	fneg.s	$fa1, $fa1
	fneg.s	$fa2, $fa2
	fmul.s	$fa3, $fa7, $fa1
	fmadd.s	$fa3, $fa6, $fa0, $fa3
	fmadd.s	$fs5, $ft0, $fa2, $fa3
	fmul.s	$fa3, $ft14, $fa1
	fmadd.s	$fa3, $ft13, $fa0, $fa3
	fmadd.s	$fs6, $ft15, $fa2, $fa3
	fmul.s	$fa1, $fs3, $fa1
	fmadd.s	$fa0, $fs2, $fa0, $fa1
	fmadd.s	$fs7, $fs4, $fa2, $fa0
	fmul.s	$fa0, $ft2, $ft13
	fmadd.s	$fa0, $fa6, $ft1, $fa0
	fmadd.s	$fa0, $fs2, $ft3, $fa0
	fmul.s	$fa1, $ft2, $ft14
	fmadd.s	$fa1, $fa7, $ft1, $fa1
	fmadd.s	$fa1, $fs3, $ft3, $fa1
	fmul.s	$fa2, $ft2, $ft15
	fmadd.s	$fa2, $ft0, $ft1, $fa2
	fmadd.s	$fa2, $fs4, $ft3, $fa2
	fmul.s	$fa3, $ft5, $ft13
	fmadd.s	$fa3, $fa6, $ft4, $fa3
	fmadd.s	$fa3, $fs2, $ft6, $fa3
	fmul.s	$fa4, $ft5, $ft14
	fmadd.s	$fa4, $fa7, $ft4, $fa4
	fmadd.s	$fa4, $fs3, $ft6, $fa4
	fmul.s	$fa5, $ft5, $ft15
	fmadd.s	$fa5, $ft0, $ft4, $fa5
	fmadd.s	$fa5, $fs4, $ft6, $fa5
	fmul.s	$ft13, $ft8, $ft13
	fmadd.s	$fa6, $fa6, $ft7, $ft13
	fmadd.s	$fa6, $fs2, $ft9, $fa6
	fmul.s	$ft13, $ft8, $ft14
	fmadd.s	$fa7, $fa7, $ft7, $ft13
	fmadd.s	$fa7, $fs3, $ft9, $fa7
	fmul.s	$ft13, $ft8, $ft15
	fmadd.s	$ft0, $ft0, $ft7, $ft13
	fmadd.s	$ft0, $fs4, $ft9, $ft0
	fmul.s	$ft2, $ft2, $fs6
	fmadd.s	$ft1, $ft1, $fs5, $ft2
	fmadd.s	$ft1, $ft3, $fs7, $ft1
	fadd.s	$ft1, $ft10, $ft1
	fmul.s	$ft2, $ft5, $fs6
	fmadd.s	$ft2, $ft4, $fs5, $ft2
	fmadd.s	$ft2, $ft6, $fs7, $ft2
	fadd.s	$ft2, $ft12, $ft2
	fmul.s	$ft3, $ft8, $fs6
	fmadd.s	$ft3, $ft7, $fs5, $ft3
	fmadd.s	$ft3, $ft9, $fs7, $ft3
	fld.s	$ft6, $sp, 164
	fld.s	$ft7, $sp, 160
	fld.s	$ft8, $sp, 168
	fadd.s	$ft3, $ft11, $ft3
	fmul.s	$ft4, $fa3, $ft6
	fmadd.s	$ft4, $fa0, $ft7, $ft4
	fmadd.s	$ft4, $fa6, $ft8, $ft4
	fmul.s	$ft5, $fa4, $ft6
	fmadd.s	$ft5, $fa1, $ft7, $ft5
	fmadd.s	$ft5, $fa7, $ft8, $ft5
	fmul.s	$ft9, $fa5, $ft6
	fmadd.s	$ft9, $fa2, $ft7, $ft9
	fld.s	$ft10, $sp, 180
	fld.s	$ft11, $sp, 176
	fld.s	$ft12, $sp, 184
	fmadd.s	$ft9, $ft0, $ft8, $ft9
	fmul.s	$ft13, $fa3, $ft10
	fmadd.s	$ft13, $fa0, $ft11, $ft13
	fmadd.s	$ft13, $fa6, $ft12, $ft13
	fmul.s	$ft14, $fa4, $ft10
	fmadd.s	$ft14, $fa1, $ft11, $ft14
	fmadd.s	$ft14, $fa7, $ft12, $ft14
	fmul.s	$ft15, $fa5, $ft10
	fmadd.s	$ft15, $fa2, $ft11, $ft15
	fld.s	$fs2, $sp, 196
	fld.s	$fs3, $sp, 192
	fld.s	$fs4, $sp, 200
	fmadd.s	$ft15, $ft0, $ft12, $ft15
	fmul.s	$fs5, $fa3, $fs2
	fmadd.s	$fs5, $fa0, $fs3, $fs5
	fmadd.s	$fs5, $fa6, $fs4, $fs5
	fmul.s	$fs6, $fa4, $fs2
	fmadd.s	$fs6, $fa1, $fs3, $fs6
	fmadd.s	$fs6, $fa7, $fs4, $fs6
	fmul.s	$fs7, $fa5, $fs2
	fmul.s	$ft6, $ft6, $ft2
	fmadd.s	$ft6, $ft7, $ft1, $ft6
	fld.s	$ft7, $sp, 208
	fmadd.s	$fs7, $fa2, $fs3, $fs7
	fmadd.s	$fs7, $ft0, $fs4, $fs7
	fmadd.s	$ft6, $ft8, $ft3, $ft6
	fadd.s	$ft6, $ft6, $ft7
	fld.s	$ft7, $sp, 212
	fmul.s	$ft8, $ft2, $ft10
	fmadd.s	$ft8, $ft11, $ft1, $ft8
	fmadd.s	$ft8, $ft12, $ft3, $ft8
	fadd.s	$ft7, $ft8, $ft7
	fld.s	$ft8, $sp, 216
	fmul.s	$ft10, $ft2, $fs2
	fmadd.s	$ft10, $fs3, $ft1, $ft10
	fmadd.s	$ft10, $fs4, $ft3, $ft10
	fadd.s	$ft8, $ft10, $ft8
	movfr2gr.s	$a0, $ft6
	movfr2gr.s	$a1, $ft7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft8
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$ft4, $sp, 96
	fst.s	$ft5, $sp, 100
	fst.s	$ft9, $sp, 104
	st.w	$zero, $sp, 108
	fst.s	$ft13, $sp, 112
	fst.s	$ft14, $sp, 116
	fst.s	$ft15, $sp, 120
	st.w	$zero, $sp, 124
	fst.s	$fs5, $sp, 128
	fst.s	$fs6, $sp, 132
	fst.s	$fs7, $sp, 136
	st.w	$zero, $sp, 140
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	fneg.s	$ft4, $ft1
	fneg.s	$ft5, $ft2
	fneg.s	$ft3, $ft3
	fmul.s	$ft1, $fa3, $ft5
	fmadd.s	$ft1, $fa0, $ft4, $ft1
	fmadd.s	$ft1, $fa6, $ft3, $ft1
	fmul.s	$ft2, $fa4, $ft5
	fmadd.s	$ft2, $fa1, $ft4, $ft2
	fmadd.s	$ft2, $fa7, $ft3, $ft2
	fmul.s	$ft5, $fa5, $ft5
	fmadd.s	$ft4, $fa2, $ft4, $ft5
	fld.s	$ft5, $sp, 244
	fld.s	$ft6, $sp, 240
	fld.s	$ft7, $sp, 248
	fmadd.s	$ft8, $ft0, $ft3, $ft4
	fmul.s	$ft3, $fa1, $ft5
	fmadd.s	$ft3, $fa0, $ft6, $ft3
	fmadd.s	$ft3, $fa2, $ft7, $ft3
	fmul.s	$ft4, $fa4, $ft5
	fmadd.s	$ft4, $fa3, $ft6, $ft4
	fmadd.s	$ft4, $fa5, $ft7, $ft4
	fmul.s	$ft9, $fa7, $ft5
	fmadd.s	$ft9, $fa6, $ft6, $ft9
	fld.s	$ft10, $sp, 260
	fld.s	$ft11, $sp, 256
	fld.s	$ft12, $sp, 264
	fmadd.s	$ft9, $ft0, $ft7, $ft9
	fmul.s	$ft13, $fa1, $ft10
	fmadd.s	$ft13, $fa0, $ft11, $ft13
	fmadd.s	$ft13, $fa2, $ft12, $ft13
	fmul.s	$ft14, $fa4, $ft10
	fmadd.s	$ft14, $fa3, $ft11, $ft14
	fmadd.s	$ft14, $fa5, $ft12, $ft14
	fmul.s	$ft15, $fa7, $ft10
	fmadd.s	$ft15, $fa6, $ft11, $ft15
	fld.s	$fs3, $sp, 276
	fld.s	$fs5, $sp, 272
	fld.s	$fs6, $sp, 280
	fmadd.s	$ft15, $ft0, $ft12, $ft15
	fmul.s	$fa1, $fa1, $fs3
	fmadd.s	$fa0, $fa0, $fs5, $fa1
	fmadd.s	$fa0, $fa2, $fs6, $fa0
	fmul.s	$fa1, $fa4, $fs3
	fmadd.s	$fa1, $fa3, $fs5, $fa1
	fmadd.s	$fa1, $fa5, $fs6, $fa1
	fmul.s	$fa2, $fa7, $fs3
	fmadd.s	$fa2, $fa6, $fs5, $fa2
	fmadd.s	$fa2, $ft0, $fs6, $fa2
	fld.s	$fa3, $sp, 288
	fmul.s	$fa4, $ft2, $ft5
	fmadd.s	$fa4, $ft6, $ft1, $fa4
	fmadd.s	$fa4, $ft7, $ft8, $fa4
	fadd.s	$fs2, $fa4, $fa3
	fld.s	$fa3, $sp, 292
	fmul.s	$fa4, $ft2, $ft10
	fmadd.s	$fa4, $ft11, $ft1, $fa4
	fmadd.s	$fa4, $ft12, $ft8, $fa4
	fadd.s	$fs4, $fa4, $fa3
	fld.s	$fa3, $sp, 296
	fmul.s	$fa4, $ft2, $fs3
	fmadd.s	$fa4, $fs5, $ft1, $fa4
	fmadd.s	$fa4, $fs6, $ft8, $fa4
	fadd.s	$fs5, $fa4, $fa3
	movfr2gr.s	$a0, $fs2
	movfr2gr.s	$a1, $fs4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fs5
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$ft3, $sp, 32
	fst.s	$ft4, $sp, 36
	fst.s	$ft9, $sp, 40
	st.w	$zero, $sp, 44
	fst.s	$ft13, $sp, 48
	fst.s	$ft14, $sp, 52
	fst.s	$ft15, $sp, 56
	st.w	$zero, $sp, 60
	fst.s	$fa0, $sp, 64
	fst.s	$fa1, $sp, 68
	fst.s	$fa2, $sp, 72
	st.w	$zero, $sp, 76
	st.d	$a0, $sp, 80
	fld.s	$fa0, $sp, 144
	fld.s	$fa1, $sp, 448
	fld.s	$fa2, $sp, 148
	fld.s	$fa3, $sp, 452
	fld.s	$fa4, $sp, 152
	fld.s	$fa5, $sp, 456
	st.d	$a1, $sp, 88
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	frecip.s	$fs3, $fs0
	fmul.s	$fa0, $fs3, $fa0
	fmul.s	$fa1, $fs3, $fa1
	fmul.s	$fa2, $fs3, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 472
	addi.d	$a3, $sp, 468
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 472
	fld.s	$fa1, $sp, 468
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $sp, 476
	fld.s	$fa3, $sp, 480
	fld.s	$fa4, $sp, 384
	fld.s	$fa5, $sp, 388
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
	fsub.s	$fa3, $fs2, $fa4
	fsub.s	$fa4, $fs4, $fa5
	fld.s	$fa5, $sp, 392
	fmul.s	$fs2, $fs3, $fa0
	fmul.s	$fs4, $fs3, $fa2
	fmul.s	$fs6, $fs3, $fa1
	fsub.s	$fa0, $fs5, $fa5
	fmul.s	$fa1, $fs3, $fa3
	fmul.s	$fa2, $fs3, $fa4
	fmul.s	$fa0, $fs3, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 472
	addi.d	$a3, $sp, 468
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 472
	fld.s	$fa1, $sp, 468
	fld.s	$fa2, $sp, 476
	fld.s	$fa3, $sp, 480
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $sp, 320
	fmul.s	$fa4, $fs3, $fa0
	fmul.s	$fa5, $fs3, $fa2
	fmul.s	$fa7, $fs3, $fa1
	fsub.s	$fa0, $fs2, $fa3
	fld.s	$fa1, $sp, 324
	fld.s	$fa2, $sp, 328
	fld.s	$fa3, $sp, 304
	fld.s	$fa6, $sp, 308
	fsub.s	$fa1, $fs4, $fa1
	fsub.s	$fa2, $fs6, $fa2
	fsub.s	$fa3, $fa4, $fa3
	fsub.s	$fa4, $fa5, $fa6
	fld.s	$fa5, $sp, 312
	pcalau12i	$a0, %pc_hi20(.LCPI10_1)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI10_1)
	fmul.s	$ft0, $fa1, $fa1
	fmadd.s	$ft0, $fa0, $fa0, $ft0
	fmadd.s	$ft3, $fa2, $fa2, $ft0
	fcmp.cule.s	$fcc0, $ft3, $fa6
	fsub.s	$fa5, $fa7, $fa5
	fmov.s	$ft2, $fs1
                                        # implicit-def: $f8
                                        # implicit-def: $f7
                                        # implicit-def: $f9
	bcnez	$fcc0, .LBB10_23
# %bb.22:
	ld.d	$a0, $fp, 24
	frsqrt.s	$ft0, $ft3
	fmul.s	$fa7, $fa0, $ft0
	fld.s	$ft2, $a0, 296
	fmul.s	$ft1, $fa1, $ft0
	fmul.s	$ft0, $fa2, $ft0
	fld.s	$ft3, $a0, 280
	fmul.s	$ft2, $ft1, $ft2
	fld.s	$ft4, $a0, 312
	fld.s	$ft5, $a0, 300
	fld.s	$ft6, $a0, 284
	fmadd.s	$ft2, $ft3, $fa7, $ft2
	fmadd.s	$ft2, $ft4, $ft0, $ft2
	fmul.s	$ft3, $ft1, $ft5
	fmadd.s	$ft3, $ft6, $fa7, $ft3
	fld.s	$ft4, $a0, 316
	fld.s	$ft5, $a0, 304
	fld.s	$ft6, $a0, 288
	fld.s	$ft7, $a0, 320
	fmadd.s	$ft3, $ft4, $ft0, $ft3
	fmul.s	$ft4, $ft1, $ft5
	fmadd.s	$ft4, $ft6, $fa7, $ft4
	fmadd.s	$ft4, $ft7, $ft0, $ft4
	fmul.s	$ft3, $ft1, $ft3
	fmadd.s	$ft2, $fa7, $ft2, $ft3
	fmadd.s	$ft2, $ft0, $ft4, $ft2
.LBB10_23:
	fmul.s	$ft3, $fa4, $fa4
	fmadd.s	$ft3, $fa3, $fa3, $ft3
	fmadd.s	$ft6, $fa5, $fa5, $ft3
	fcmp.cule.s	$fcc0, $ft6, $fa6
                                        # implicit-def: $f12
                                        # implicit-def: $f11
                                        # implicit-def: $f13
	move	$a1, $s1
	bcnez	$fcc0, .LBB10_25
# %bb.24:
	ld.d	$a0, $fp, 32
	frsqrt.s	$ft4, $ft6
	fmul.s	$ft3, $fa3, $ft4
	fld.s	$ft6, $a0, 296
	fmul.s	$ft5, $fa4, $ft4
	fmul.s	$ft4, $fa5, $ft4
	fld.s	$ft7, $a0, 280
	fmul.s	$ft6, $ft5, $ft6
	fld.s	$ft8, $a0, 312
	fld.s	$ft9, $a0, 300
	fld.s	$ft10, $a0, 284
	fmadd.s	$ft6, $ft7, $ft3, $ft6
	fmadd.s	$ft6, $ft8, $ft4, $ft6
	fmul.s	$ft7, $ft5, $ft9
	fmadd.s	$ft7, $ft10, $ft3, $ft7
	fld.s	$ft8, $a0, 316
	fld.s	$ft9, $a0, 304
	fld.s	$ft10, $a0, 288
	fld.s	$ft11, $a0, 320
	fmadd.s	$ft7, $ft8, $ft4, $ft7
	fmul.s	$ft8, $ft5, $ft9
	fmadd.s	$ft8, $ft10, $ft3, $ft8
	fmadd.s	$ft8, $ft11, $ft4, $ft8
	fmul.s	$ft7, $ft5, $ft7
	fmadd.s	$ft6, $ft3, $ft6, $ft7
	fmadd.s	$fs1, $ft4, $ft8, $ft6
.LBB10_25:
	fmul.s	$fa7, $ft2, $fa7
	fmul.s	$ft6, $ft2, $ft1
	fmul.s	$ft0, $ft2, $ft0
	fmul.s	$ft1, $fs1, $ft3
	fmul.s	$ft2, $fs1, $ft5
	fmul.s	$ft3, $fs1, $ft4
	fadd.s	$ft1, $fa7, $ft1
	fadd.s	$fa7, $ft6, $ft2
	fadd.s	$ft0, $ft0, $ft3
	fmul.s	$ft2, $fa7, $fa7
	fmadd.s	$ft2, $ft1, $ft1, $ft2
	fmadd.s	$ft2, $ft0, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fa6
	move	$a2, $s0
	bcnez	$fcc0, .LBB10_32
# %bb.26:
	ld.d	$a3, $fp, 24
	frsqrt.s	$ft2, $ft2
	fmul.s	$ft7, $ft1, $ft2
	fld.s	$fa6, $a3, 296
	fmul.s	$ft9, $fa7, $ft2
	fld.s	$fa7, $a3, 280
	fmul.s	$ft10, $ft0, $ft2
	fmul.s	$ft1, $ft9, $fa6
	fld.s	$ft0, $a3, 312
	fmadd.s	$ft3, $fa7, $ft7, $ft1
	fld.s	$ft1, $a3, 300
	fld.s	$ft2, $a3, 284
	fmadd.s	$ft8, $ft0, $ft10, $ft3
	fld.s	$ft3, $a3, 316
	fmul.s	$ft4, $ft9, $ft1
	fmadd.s	$ft5, $ft2, $ft7, $ft4
	fld.s	$ft4, $a3, 304
	fmadd.s	$ft11, $ft3, $ft10, $ft5
	fld.s	$ft6, $a3, 288
	fld.s	$ft5, $a3, 320
	fmul.s	$ft12, $ft9, $ft4
	ld.d	$a0, $fp, 32
	fmadd.s	$ft12, $ft6, $ft7, $ft12
	fmadd.s	$ft12, $ft5, $ft10, $ft12
	fmul.s	$ft11, $ft9, $ft11
	fld.s	$ft13, $a0, 296
	fmadd.s	$ft8, $ft7, $ft8, $ft11
	fmadd.s	$ft8, $ft10, $ft12, $ft8
	fld.s	$ft11, $a0, 280
	fmul.s	$ft12, $ft9, $ft13
	fld.s	$ft13, $a0, 312
	fld.s	$ft14, $a0, 300
	fld.s	$ft15, $a0, 284
	fmadd.s	$ft11, $ft11, $ft7, $ft12
	fmadd.s	$ft11, $ft13, $ft10, $ft11
	fmul.s	$ft12, $ft9, $ft14
	fmadd.s	$ft12, $ft15, $ft7, $ft12
	fld.s	$ft13, $a0, 316
	fld.s	$ft14, $a0, 304
	fld.s	$ft15, $a0, 288
	fld.s	$fs1, $a0, 320
	fmadd.s	$ft12, $ft13, $ft10, $ft12
	fmul.s	$ft13, $ft9, $ft14
	fmadd.s	$ft13, $ft15, $ft7, $ft13
	fmadd.s	$ft13, $fs1, $ft10, $ft13
	fmul.s	$ft9, $ft9, $ft12
	fmadd.s	$ft7, $ft7, $ft11, $ft9
	fmadd.s	$ft7, $ft10, $ft13, $ft7
	fadd.s	$ft9, $ft8, $ft7
	fmul.s	$fa0, $fa0, $ft8
	fmul.s	$fa1, $fa1, $ft8
	fmul.s	$fa2, $fa2, $ft8
	fmul.s	$fa3, $fa3, $ft7
	fmul.s	$fa4, $fa4, $ft7
	fmul.s	$fa5, $fa5, $ft7
	fsub.s	$fa0, $fa0, $fa3
	fsub.s	$fa4, $fa1, $fa4
	fsub.s	$fa5, $fa2, $fa5
	fmul.s	$fa1, $ft9, $ft9
	frecip.s	$ft7, $fa1
	fld.s	$fa3, $fp, 620
	fmul.s	$fa1, $fa0, $ft7
	fmul.s	$fa2, $fa4, $ft7
	movgr2fr.w	$fa0, $zero
	fcmp.cult.s	$fcc0, $fa3, $fa0
	fmul.s	$fa4, $fa5, $ft7
	bcnez	$fcc0, .LBB10_30
# %bb.27:
	ld.bu	$a4, $fp, 601
	vldi	$vr5, -1168
	movgr2cf	$fcc0, $a4
	fsel	$fa5, $fa5, $ft8, $fcc0
	fld.s	$fa7, $fp, 624
	fld.s	$ft0, $fp, 628
	fld.s	$ft1, $fp, 632
	fdiv.s	$ft2, $fa3, $fa5
	fadd.s	$fa6, $fa1, $fa7
	fadd.s	$fa5, $fa2, $ft0
	fadd.s	$fa3, $fa4, $ft1
	fmul.s	$ft3, $fa5, $fa5
	fmadd.s	$ft3, $fa6, $fa6, $ft3
	fmadd.s	$ft3, $fa3, $fa3, $ft3
	fsqrt.s	$ft3, $ft3
	fcmp.cule.s	$fcc0, $ft3, $ft2
	bcnez	$fcc0, .LBB10_29
# %bb.28:
	frecip.s	$fa1, $ft3
	fmul.s	$fa2, $fa6, $fa1
	fmul.s	$fa4, $fa5, $fa1
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa2, $ft2, $fa2
	fmul.s	$fa3, $ft2, $fa4
	fmul.s	$fa4, $ft2, $fa1
	fsub.s	$fa1, $fa2, $fa7
	fsub.s	$fa2, $fa3, $ft0
	fsub.s	$fa4, $fa4, $ft1
	fadd.s	$fa6, $fa7, $fa1
	fadd.s	$fa5, $ft0, $fa2
	fadd.s	$fa3, $ft1, $fa4
.LBB10_29:
	fst.s	$fa6, $fp, 624
	fst.s	$fa5, $fp, 628
	fst.s	$fa3, $fp, 632
	fld.s	$fa7, $a3, 280
	fld.s	$ft2, $a3, 284
	fld.s	$ft6, $a3, 288
	fld.s	$fa6, $a3, 296
	fld.s	$ft1, $a3, 300
	fld.s	$ft4, $a3, 304
	fld.s	$ft0, $a3, 312
	fld.s	$ft3, $a3, 316
	fld.s	$ft5, $a3, 320
.LBB10_30:
	fmul.s	$fa3, $fa2, $fa2
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa5, $fa4, $fa4, $fa3
	fsqrt.s	$fa3, $fa5
	frsqrt.s	$ft7, $fa5
	fmul.s	$fa1, $fa1, $ft7
	fmul.s	$fa5, $fa2, $ft7
	fmul.s	$fa2, $fa4, $ft7
	fmul.s	$fa4, $ft2, $fa5
	fmadd.s	$fa4, $fa7, $fa1, $fa4
	fmadd.s	$fa4, $ft6, $fa2, $fa4
	fmul.s	$fa7, $ft1, $fa5
	fmadd.s	$fa6, $fa6, $fa1, $fa7
	fmadd.s	$fa6, $ft4, $fa2, $fa6
	fmul.s	$fa7, $fa5, $ft3
	fmadd.s	$fa7, $ft0, $fa1, $fa7
	fld.s	$ft0, $a1, 0
	fmadd.s	$fa7, $ft5, $fa2, $fa7
	fmul.s	$ft1, $fa3, $fa0
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
	fmul.s	$ft0, $fa3, $ft1
	fmul.s	$ft1, $fa3, $ft2
	fmul.s	$ft2, $fa3, $ft3
	fmul.s	$fa4, $fa4, $ft0
	fld.s	$ft0, $a1, 16
	fmul.s	$fa6, $fa6, $ft1
	fmul.s	$fa7, $fa7, $ft2
	fld.s	$ft1, $a1, 20
	fadd.s	$fa4, $fa4, $ft0
	fld.s	$ft0, $a1, 24
	fst.s	$fa4, $a1, 16
	fadd.s	$fa4, $fa6, $ft1
	fst.s	$fa4, $a1, 20
	fadd.s	$fa4, $fa7, $ft0
	fst.s	$fa4, $a1, 24
	fld.s	$fa4, $a0, 284
	fld.s	$fa6, $a0, 280
	fmul.s	$fa4, $fa5, $fa4
	fld.s	$fa7, $a0, 288
	fld.s	$ft0, $a0, 300
	fld.s	$ft1, $a0, 296
	fmadd.s	$fa4, $fa6, $fa1, $fa4
	fmadd.s	$fa4, $fa7, $fa2, $fa4
	fmul.s	$fa6, $fa5, $ft0
	fmadd.s	$fa6, $ft1, $fa1, $fa6
	fld.s	$fa7, $a0, 304
	fld.s	$ft0, $a0, 316
	fld.s	$ft1, $a0, 312
	fld.s	$ft2, $a0, 320
	fmadd.s	$fa6, $fa7, $fa2, $fa6
	fmul.s	$fa5, $fa5, $ft0
	fmadd.s	$fa1, $ft1, $fa1, $fa5
	fmadd.s	$fa1, $ft2, $fa2, $fa1
	fld.s	$fa2, $a2, 0
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa3, $fa0
	fld.s	$fa5, $a2, 4
	fadd.s	$fa2, $fa0, $fa2
	fld.s	$fa7, $a2, 8
	fst.s	$fa2, $a2, 0
	fadd.s	$fa2, $fa0, $fa5
	fst.s	$fa2, $a2, 4
	fadd.s	$fa0, $fa0, $fa7
	fld.s	$fa2, $a2, 32
	fld.s	$fa5, $a2, 36
	fld.s	$fa7, $a2, 40
	fst.s	$fa0, $a2, 8
	fmul.s	$fa0, $fa2, $fa3
	fmul.s	$fa2, $fa5, $fa3
	fmul.s	$fa3, $fa7, $fa3
	fmul.s	$fa0, $fa4, $fa0
	fld.s	$fa4, $a2, 16
	fmul.s	$fa2, $fa6, $fa2
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $a2, 20
	fsub.s	$fa0, $fa4, $fa0
	fld.s	$fa4, $a2, 24
	fst.s	$fa0, $a2, 16
	fsub.s	$fa0, $fa3, $fa2
	fst.s	$fa0, $a2, 20
	fsub.s	$fa0, $fa4, $fa1
.LBB10_31:
	fst.s	$fa0, $a2, 24
.LBB10_32:
	ld.d	$a0, $a1, 72
	movgr2fr.w	$fa1, $zero
	fmov.s	$fa3, $fa1
	fmov.s	$fa2, $fa1
	fmov.s	$fa0, $fa1
	beqz	$a0, .LBB10_34
# %bb.33:
	fld.s	$fa0, $a0, 344
	fld.s	$fa2, $a1, 16
	fld.s	$fa3, $a0, 348
	fld.s	$fa4, $a1, 20
	fld.s	$fa5, $a0, 352
	fld.s	$fa6, $a1, 24
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa2, $fa3, $fa4
	fadd.s	$fa3, $fa5, $fa6
.LBB10_34:                              # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit599
	ld.d	$a0, $a2, 72
	fmov.s	$fa4, $fa1
	fmov.s	$fa5, $fa1
	beqz	$a0, .LBB10_36
# %bb.35:
	fld.s	$fa1, $a0, 344
	fld.s	$fa4, $a2, 16
	fld.s	$fa6, $a0, 348
	fld.s	$fa7, $a2, 20
	fld.s	$ft0, $a0, 352
	fld.s	$ft1, $a2, 24
	fadd.s	$fa5, $fa1, $fa4
	fadd.s	$fa4, $fa6, $fa7
	fadd.s	$fa1, $ft0, $ft1
.LBB10_36:                              # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit607
	ld.bu	$a0, $fp, 574
	fsub.s	$fa0, $fa5, $fa0
	fsub.s	$fa2, $fa4, $fa2
	fsub.s	$fa1, $fa1, $fa3
	beqz	$a0, .LBB10_38
# %bb.37:
	fld.s	$fa3, $fp, 576
	fld.s	$fa4, $fp, 552
	fld.s	$fa5, $fp, 480
	fmul.s	$fa4, $fa3, $fa4
	fmul.s	$fa4, $fa4, $fa5
	fld.s	$fa5, $fp, 512
	fdiv.s	$fa4, $fa4, $fs0
	fld.s	$fa6, $fp, 508
	fld.s	$fa7, $fp, 516
	fmul.s	$ft0, $fa2, $fa5
	fld.s	$ft1, $fp, 484
	fmadd.s	$ft0, $fa0, $fa6, $ft0
	fmadd.s	$ft0, $fa1, $fa7, $ft0
	fmul.s	$fa3, $fa3, $ft0
	fmadd.s	$ft1, $fa3, $ft1, $fa4
	movgr2fr.w	$fa3, $zero
	fld.s	$ft2, $fp, 540
	fld.s	$ft3, $fp, 564
	fcmp.clt.s	$fcc0, $fa3, $ft0
	fsel	$fa4, $fa4, $ft1, $fcc0
	fmul.s	$fa4, $ft2, $fa4
	fadd.s	$fa4, $ft3, $fa4
	fmax.s	$fa4, $fa4, $fa3
	fst.s	$fa4, $fp, 564
	fsub.s	$fa4, $fa4, $ft3
	fmul.s	$fa6, $fa6, $fa4
	fmul.s	$fa5, $fa5, $fa4
	fld.s	$ft0, $fp, 588
	fld.s	$ft1, $fp, 584
	fld.s	$ft2, $fp, 592
	fmul.s	$fa4, $fa7, $fa4
	fmul.s	$fa7, $ft0, $fa5
	fmadd.s	$fa7, $fa6, $ft1, $fa7
	fmadd.s	$fa7, $fa4, $ft2, $fa7
	fmul.s	$ft1, $ft1, $fa7
	fmul.s	$ft0, $ft0, $fa7
	fmul.s	$fa7, $ft2, $fa7
	fsub.s	$fa6, $fa6, $ft1
	fsub.s	$ft0, $fa5, $ft0
	fsub.s	$ft1, $fa4, $fa7
	fmul.s	$fa4, $ft0, $ft0
	fmadd.s	$fa4, $fa6, $fa6, $fa4
	fmadd.s	$fa5, $ft1, $ft1, $fa4
	ld.d	$a0, $fp, 24
	fsqrt.s	$fa4, $fa5
	frsqrt.s	$ft2, $fa5
	fmul.s	$fa5, $fa6, $ft2
	fld.s	$ft3, $a0, 284
	fmul.s	$fa7, $ft0, $ft2
	fmul.s	$fa6, $ft1, $ft2
	fld.s	$ft0, $a0, 280
	fmul.s	$ft1, $ft3, $fa7
	fld.s	$ft2, $a0, 288
	fld.s	$ft3, $a0, 300
	fmadd.s	$ft0, $ft0, $fa5, $ft1
	fld.s	$ft1, $a0, 296
	fmadd.s	$ft0, $ft2, $fa6, $ft0
	fmul.s	$ft2, $ft3, $fa7
	fld.s	$ft3, $a0, 304
	fmadd.s	$ft1, $ft1, $fa5, $ft2
	fld.s	$ft2, $a0, 316
	fld.s	$ft4, $a0, 312
	fmadd.s	$ft1, $ft3, $fa6, $ft1
	fld.s	$ft3, $a0, 320
	fmul.s	$ft2, $ft2, $fa7
	fmadd.s	$ft2, $ft4, $fa5, $ft2
	fld.s	$ft4, $a1, 0
	fmadd.s	$ft2, $ft3, $fa6, $ft2
	fmul.s	$ft3, $fa4, $fa3
	fld.s	$ft5, $a1, 4
	fadd.s	$ft4, $ft4, $ft3
	fld.s	$ft6, $a1, 8
	fst.s	$ft4, $a1, 0
	fadd.s	$ft4, $ft5, $ft3
	fst.s	$ft4, $a1, 4
	fadd.s	$ft3, $ft3, $ft6
	fld.s	$ft4, $a1, 32
	fld.s	$ft5, $a1, 36
	fld.s	$ft6, $a1, 40
	fst.s	$ft3, $a1, 8
	fmul.s	$ft3, $fa4, $ft4
	fmul.s	$ft4, $fa4, $ft5
	fmul.s	$ft5, $fa4, $ft6
	fmul.s	$ft0, $ft3, $ft0
	fld.s	$ft3, $a1, 16
	fmul.s	$ft1, $ft1, $ft4
	fmul.s	$ft2, $ft2, $ft5
	fld.s	$ft4, $a1, 20
	fadd.s	$ft0, $ft0, $ft3
	fld.s	$ft3, $a1, 24
	fst.s	$ft0, $a1, 16
	fadd.s	$ft0, $ft1, $ft4
	fst.s	$ft0, $a1, 20
	fadd.s	$ft0, $ft2, $ft3
	fst.s	$ft0, $a1, 24
	ld.d	$a0, $fp, 32
	fld.s	$ft0, $a0, 284
	fld.s	$ft1, $a0, 280
	fmul.s	$ft0, $fa7, $ft0
	fld.s	$ft2, $a0, 288
	fld.s	$ft3, $a0, 300
	fld.s	$ft4, $a0, 296
	fmadd.s	$ft0, $ft1, $fa5, $ft0
	fmadd.s	$ft0, $ft2, $fa6, $ft0
	fmul.s	$ft1, $fa7, $ft3
	fmadd.s	$ft1, $ft4, $fa5, $ft1
	fld.s	$ft2, $a0, 304
	fld.s	$ft3, $a0, 316
	fld.s	$ft4, $a0, 312
	fld.s	$ft5, $a0, 320
	fmadd.s	$ft1, $ft2, $fa6, $ft1
	fmul.s	$fa7, $fa7, $ft3
	fmadd.s	$fa5, $ft4, $fa5, $fa7
	fmadd.s	$fa5, $ft5, $fa6, $fa5
	fld.s	$fa6, $a2, 0
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fld.s	$fa7, $a2, 4
	fadd.s	$fa6, $fa3, $fa6
	fld.s	$ft2, $a2, 8
	fst.s	$fa6, $a2, 0
	fadd.s	$fa6, $fa3, $fa7
	fst.s	$fa6, $a2, 4
	fadd.s	$fa3, $fa3, $ft2
	fld.s	$fa6, $a2, 32
	fld.s	$fa7, $a2, 36
	fld.s	$ft2, $a2, 40
	fst.s	$fa3, $a2, 8
	fmul.s	$fa3, $fa6, $fa4
	fmul.s	$fa6, $fa7, $fa4
	fmul.s	$fa4, $ft2, $fa4
	fmul.s	$fa3, $ft0, $fa3
	fld.s	$fa7, $a2, 16
	fmul.s	$fa6, $ft1, $fa6
	fmul.s	$fa4, $fa5, $fa4
	fld.s	$fa5, $a2, 20
	fsub.s	$fa3, $fa7, $fa3
	fld.s	$fa7, $a2, 24
	fst.s	$fa3, $a2, 16
	fsub.s	$fa3, $fa5, $fa6
	fst.s	$fa3, $a2, 20
	fsub.s	$fa3, $fa7, $fa4
	fst.s	$fa3, $a2, 24
.LBB10_38:
	ld.bu	$a0, $fp, 573
	beqz	$a0, .LBB10_40
# %bb.39:
	fld.s	$fa3, $fp, 580
	fld.s	$fa4, $fp, 556
	fld.s	$fa5, $fp, 480
	fmul.s	$fa4, $fa3, $fa4
	fmul.s	$fa4, $fa4, $fa5
	fld.s	$fa5, $fp, 528
	fdiv.s	$fa4, $fa4, $fs0
	fld.s	$fa6, $fp, 524
	fld.s	$fa7, $fp, 532
	fmul.s	$fa2, $fa2, $fa5
	fld.s	$ft0, $fp, 484
	fmadd.s	$fa0, $fa0, $fa6, $fa2
	fmadd.s	$fa0, $fa1, $fa7, $fa0
	fmul.s	$fa1, $fa3, $fa0
	fmadd.s	$fa2, $fa1, $ft0, $fa4
	movgr2fr.w	$fa1, $zero
	fld.s	$fa3, $fp, 544
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fld.s	$fa0, $fp, 568
	fsel	$fa2, $fa4, $fa2, $fcc0
	fmul.s	$fa2, $fa3, $fa2
	ld.d	$a0, $fp, 24
	fadd.s	$fa2, $fa0, $fa2
	fmax.s	$fa2, $fa2, $fa1
	fst.s	$fa2, $fp, 568
	fld.s	$fa3, $a0, 284
	fsub.s	$fa0, $fa2, $fa0
	fld.s	$fa2, $a0, 280
	fmul.s	$fa3, $fa5, $fa3
	fld.s	$fa4, $a0, 288
	fld.s	$ft0, $a0, 300
	fmadd.s	$fa2, $fa2, $fa6, $fa3
	fld.s	$fa3, $a0, 296
	fmadd.s	$fa2, $fa4, $fa7, $fa2
	fmul.s	$fa4, $fa5, $ft0
	fld.s	$ft0, $a0, 304
	fmadd.s	$fa3, $fa3, $fa6, $fa4
	fld.s	$fa4, $a0, 316
	fld.s	$ft1, $a0, 312
	fmadd.s	$fa3, $ft0, $fa7, $fa3
	fld.s	$ft0, $a0, 320
	fmul.s	$fa4, $fa5, $fa4
	fmadd.s	$fa4, $ft1, $fa6, $fa4
	fld.s	$fa5, $a1, 0
	fmadd.s	$fa4, $ft0, $fa7, $fa4
	fmul.s	$fa6, $fa0, $fa1
	fld.s	$fa7, $a1, 4
	fadd.s	$fa5, $fa6, $fa5
	fld.s	$ft0, $a1, 8
	fst.s	$fa5, $a1, 0
	fadd.s	$fa5, $fa6, $fa7
	fst.s	$fa5, $a1, 4
	fadd.s	$fa5, $fa6, $ft0
	fld.s	$fa6, $a1, 32
	fld.s	$fa7, $a1, 36
	fld.s	$ft0, $a1, 40
	fst.s	$fa5, $a1, 8
	fmul.s	$fa5, $fa0, $fa6
	fmul.s	$fa6, $fa0, $fa7
	fmul.s	$fa7, $fa0, $ft0
	fmul.s	$fa2, $fa2, $fa5
	fld.s	$fa5, $a1, 16
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa4, $fa4, $fa7
	fld.s	$fa6, $a1, 20
	fadd.s	$fa2, $fa2, $fa5
	fld.s	$fa5, $a1, 24
	fst.s	$fa2, $a1, 16
	fadd.s	$fa2, $fa3, $fa6
	fst.s	$fa2, $a1, 20
	fadd.s	$fa2, $fa4, $fa5
	fst.s	$fa2, $a1, 24
	ld.d	$a0, $fp, 32
	fld.s	$fa2, $a0, 284
	fld.s	$fa3, $fp, 528
	fld.s	$fa4, $a0, 280
	fld.s	$fa5, $fp, 524
	fmul.s	$fa2, $fa2, $fa3
	fld.s	$fa6, $a0, 288
	fld.s	$fa7, $fp, 532
	fld.s	$ft0, $a0, 300
	fld.s	$ft1, $a0, 296
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	fmadd.s	$fa2, $fa6, $fa7, $fa2
	fmul.s	$fa4, $fa3, $ft0
	fmadd.s	$fa4, $ft1, $fa5, $fa4
	fld.s	$fa6, $a0, 304
	fld.s	$ft0, $a0, 316
	fld.s	$ft1, $a0, 312
	fld.s	$ft2, $a0, 320
	fmadd.s	$fa4, $fa6, $fa7, $fa4
	fmul.s	$fa3, $fa3, $ft0
	fmadd.s	$fa3, $ft1, $fa5, $fa3
	fmadd.s	$fa3, $ft2, $fa7, $fa3
	fld.s	$fa5, $a2, 0
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa6, $a2, 4
	fadd.s	$fa5, $fa1, $fa5
	fld.s	$fa7, $a2, 8
	fst.s	$fa5, $a2, 0
	fadd.s	$fa5, $fa1, $fa6
	fst.s	$fa5, $a2, 4
	fadd.s	$fa1, $fa1, $fa7
	fld.s	$fa5, $a2, 32
	fld.s	$fa6, $a2, 36
	fld.s	$fa7, $a2, 40
	fst.s	$fa1, $a2, 8
	fmul.s	$fa1, $fa5, $fa0
	fmul.s	$fa5, $fa6, $fa0
	fmul.s	$fa0, $fa7, $fa0
	fmul.s	$fa1, $fa2, $fa1
	fld.s	$fa2, $a2, 16
	fmul.s	$fa4, $fa4, $fa5
	fmul.s	$fa0, $fa3, $fa0
	fld.s	$fa3, $a2, 20
	fsub.s	$fa1, $fa2, $fa1
	fld.s	$fa2, $a2, 24
	fst.s	$fa1, $a2, 16
	fsub.s	$fa1, $fa3, $fa4
	fst.s	$fa1, $a2, 20
	fsub.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 24
.LBB10_40:
	fld.d	$fs7, $sp, 488                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 496                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 504                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 512                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 520                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 544                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.Lfunc_end10:
	.size	_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, .Lfunc_end10-_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
.LCPI11_0:
	.word	0x3f490fdb                      # float 0.785398185
.LCPI11_1:
	.word	0x3a83126f                      # float 0.00100000005
.LCPI11_2:
	.word	0xbcaaaaab                      # float -0.020833334
	.section	.text._ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_,"axG",@progbits,_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_,comdat
	.weak	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
	.p2align	5
	.type	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_,@function
_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_: # @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a1, 4
	move	$fp, $a3
	fmov.s	$fs0, $fa0
	move	$s0, $a0
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fs0, $fa2
	fld.s	$fa2, $a1, 8
	fld.s	$fa3, $a0, 48
	fld.s	$fa4, $a0, 52
	fld.s	$fa5, $a0, 56
	fmul.s	$fa2, $fs0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $a3, 48
	st.d	$a1, $a3, 56
	fld.s	$fs2, $a2, 4
	fld.s	$fs1, $a2, 0
	fld.s	$fs3, $a2, 8
	fmul.s	$fa0, $fs2, $fs2
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fmadd.s	$fa0, $fs3, $fs3, $fa0
	fsqrt.s	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI11_0)
	fmul.s	$fa2, $fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI11_1)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI11_1)
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fdiv.s	$fa1, $fa1, $fs0
	fsel	$fs4, $fa0, $fa1, $fcc0
	fcmp.cule.s	$fcc0, $fa3, $fs4
	bcnez	$fcc0, .LBB11_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI11_2)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI11_2)
	fmul.s	$fa1, $fs0, $fs0
	fmul.s	$fa1, $fs0, $fa1
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa0, $fa0, $fs4
	fmul.s	$fa0, $fa0, $fs4
	vldi	$vr1, -1184
	fmadd.s	$fa0, $fs0, $fa1, $fa0
	b	.LBB11_3
.LBB11_2:
	vldi	$vr0, -1184
	fmul.s	$fa0, $fs4, $fa0
	fmul.s	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs4
.LBB11_3:
	fmul.s	$fs2, $fs2, $fa0
	fmul.s	$fs1, $fs1, $fa0
	fmul.s	$fs3, $fs3, $fa0
	fmul.s	$fa0, $fs0, $fs4
	vldi	$vr1, -1184
	fmul.s	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	srli.d	$a0, $a1, 32
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa4, $fs1, $fa3
	fmadd.s	$fa4, $fs0, $fa0, $fa4
	fmadd.s	$fa4, $fs2, $fa2, $fa4
	fneg.s	$fa5, $fs3
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fmul.s	$fa6, $fs2, $fa3
	fmadd.s	$fa6, $fs0, $fa1, $fa6
	fmadd.s	$fa6, $fs3, $fa0, $fa6
	fneg.s	$fa7, $fs1
	fmadd.s	$fa6, $fa7, $fa2, $fa6
	fmul.s	$fa7, $fs3, $fa3
	fmadd.s	$fa7, $fs0, $fa2, $fa7
	fmadd.s	$fa7, $fs1, $fa1, $fa7
	fneg.s	$ft0, $fs2
	fmadd.s	$fa7, $ft0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fs1, $fa0
	fmadd.s	$fa0, $fs0, $fa3, $fa0
	fmadd.s	$fa0, $ft0, $fa1, $fa0
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmul.s	$fa1, $fa6, $fa6
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fmadd.s	$fa1, $fa7, $fa7, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fa4, $fa1
	fmul.s	$fa3, $fa6, $fa1
	fmul.s	$fa4, $fa7, $fa1
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa3, $fa3
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	vldi	$vr5, -1280
	fdiv.s	$fa1, $fa5, $fa1
	fmul.s	$fa5, $fa2, $fa1
	fmul.s	$fa6, $fa3, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa7, $fa0, $fa5
	fmul.s	$ft0, $fa0, $fa6
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa5, $fa2, $fa5
	fmul.s	$ft1, $fa2, $fa6
	fmul.s	$fa2, $fa2, $fa1
	fmul.s	$fa6, $fa3, $fa6
	fmul.s	$fa3, $fa3, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fadd.s	$fa4, $fa6, $fa1
	vldi	$vr10, -1168
	fsub.s	$fa4, $ft2, $fa4
	fsub.s	$ft3, $ft1, $fa0
	fadd.s	$ft4, $fa2, $ft0
	fadd.s	$fa0, $ft1, $fa0
	fadd.s	$fa1, $fa5, $fa1
	fsub.s	$fa1, $ft2, $fa1
	fsub.s	$ft1, $fa3, $fa7
	fsub.s	$fa2, $fa2, $ft0
	fadd.s	$fa3, $fa3, $fa7
	fadd.s	$fa5, $fa5, $fa6
	fsub.s	$fa5, $ft2, $fa5
	fst.s	$fa4, $fp, 0
	fst.s	$ft3, $fp, 4
	fst.s	$ft4, $fp, 8
	st.w	$zero, $fp, 12
	fst.s	$fa0, $fp, 16
	fst.s	$fa1, $fp, 20
	fst.s	$ft1, $fp, 24
	st.w	$zero, $fp, 28
	fst.s	$fa2, $fp, 32
	fst.s	$fa3, $fp, 36
	fst.s	$fa5, $fp, 40
	st.w	$zero, $fp, 44
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end11:
	.size	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_, .Lfunc_end11-_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN21btConeTwistConstraint9updateRHSEf # -- Begin function _ZN21btConeTwistConstraint9updateRHSEf
	.p2align	5
	.type	_ZN21btConeTwistConstraint9updateRHSEf,@function
_ZN21btConeTwistConstraint9updateRHSEf: # @_ZN21btConeTwistConstraint9updateRHSEf
# %bb.0:
	ret
.Lfunc_end12:
	.size	_ZN21btConeTwistConstraint9updateRHSEf, .Lfunc_end12-_ZN21btConeTwistConstraint9updateRHSEf
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN21btConeTwistConstraint13calcAngleInfoEv
.LCPI13_0:
	.word	0x3d4ccccd                      # float 0.0500000007
.LCPI13_1:
	.word	0x3f490fdb                      # float 0.785398185
.LCPI13_2:
	.word	0xbf490fdb                      # float -0.785398185
.LCPI13_3:
	.word	0x4016cbe4                      # float 2.3561945
.LCPI13_4:
	.word	0xbf7ffffe                      # float -0.99999988
.LCPI13_5:
	.word	0x3f3504f3                      # float 0.707106769
	.text
	.globl	_ZN21btConeTwistConstraint13calcAngleInfoEv
	.p2align	5
	.type	_ZN21btConeTwistConstraint13calcAngleInfoEv,@function
_ZN21btConeTwistConstraint13calcAngleInfoEv: # @_ZN21btConeTwistConstraint13calcAngleInfoEv
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 64                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 24
	st.d	$zero, $a0, 548
	st.h	$zero, $a0, 573
	fld.s	$fa0, $a0, 364
	fld.s	$fa2, $a1, 12
	fld.s	$fa1, $a0, 348
	fld.s	$ft3, $a0, 380
	fld.s	$fa3, $a1, 8
	fmul.s	$fa6, $fa0, $fa2
	fld.s	$fa4, $a1, 16
	fld.s	$fa5, $a1, 28
	fmadd.s	$fa7, $fa3, $fa1, $fa6
	fld.s	$fa6, $a1, 24
	fmadd.s	$ft11, $fa4, $ft3, $fa7
	fmul.s	$ft0, $fa0, $fa5
	fld.s	$fa7, $a1, 32
	fmadd.s	$ft2, $fa6, $fa1, $ft0
	fld.s	$ft1, $a1, 44
	fld.s	$ft0, $a1, 40
	fmadd.s	$ft12, $fa7, $ft3, $ft2
	fld.s	$ft2, $a1, 48
	fmul.s	$fa0, $fa0, $ft1
	fmadd.s	$fa0, $ft0, $fa1, $fa0
	ld.d	$a1, $a0, 32
	fmadd.s	$ft13, $ft2, $ft3, $fa0
	fld.s	$fa0, $a0, 412
	fld.s	$fa1, $a0, 428
	fld.s	$ft3, $a1, 12
	fld.s	$ft4, $a1, 8
	fld.s	$ft5, $a0, 444
	fld.s	$ft6, $a1, 16
	fmul.s	$ft3, $fa1, $ft3
	fmadd.s	$ft3, $ft4, $fa0, $ft3
	fld.s	$ft4, $a1, 28
	fmadd.s	$fs3, $ft6, $ft5, $ft3
	fld.s	$ft3, $a1, 24
	fld.s	$ft6, $a1, 32
	fmul.s	$ft4, $fa1, $ft4
	fld.s	$ft7, $a1, 44
	fmadd.s	$ft3, $ft3, $fa0, $ft4
	fmadd.s	$fs4, $ft6, $ft5, $ft3
	fld.s	$ft3, $a1, 40
	fmul.s	$ft4, $fa1, $ft7
	fld.s	$ft6, $a1, 48
	fld.s	$fa1, $a0, 492
	pcalau12i	$a2, %pc_hi20(.LCPI13_0)
	fld.s	$ft14, $a2, %pc_lo12(.LCPI13_0)
	fmadd.s	$fa0, $ft3, $fa0, $ft4
	fmadd.s	$fs5, $ft6, $ft5, $fa0
	movgr2fr.w	$ft3, $zero
	fcmp.cult.s	$fcc0, $fa1, $ft14
	fmul.s	$fa0, $ft12, $fs4
                                        # implicit-def: $f12
                                        # kill: killed $f12
                                        # implicit-def: $f23
                                        # implicit-def: $f12
                                        # kill: killed $f12
	fmov.s	$ft4, $ft3
	bcnez	$fcc0, .LBB13_5
# %bb.1:
	fld.s	$ft4, $a0, 368
	fld.s	$ft5, $a0, 352
	fld.s	$ft6, $a0, 384
	fmul.s	$ft7, $fa2, $ft4
	fmadd.s	$ft7, $fa3, $ft5, $ft7
	fmadd.s	$ft15, $fa4, $ft6, $ft7
	fmul.s	$ft7, $fa5, $ft4
	fmadd.s	$ft7, $fa6, $ft5, $ft7
	fmadd.s	$ft7, $fa7, $ft6, $ft7
	fmul.s	$ft4, $ft1, $ft4
	fmadd.s	$ft4, $ft0, $ft5, $ft4
	fmadd.s	$ft6, $ft2, $ft6, $ft4
	fmadd.s	$ft4, $fs3, $ft11, $fa0
	fmadd.s	$ft4, $fs5, $ft13, $ft4
	fst.s	$ft7, $sp, 56                   # 4-byte Folded Spill
	fmul.s	$ft5, $fs4, $ft7
	fmadd.s	$ft5, $fs3, $ft15, $ft5
	fst.s	$ft6, $sp, 60                   # 4-byte Folded Spill
	fmadd.s	$ft5, $fs5, $ft6, $ft5
	movgr2fr.w	$ft6, $zero
	fcmp.cult.s	$fcc0, $ft4, $ft6
	fabs.s	$ft7, $ft5
	bceqz	$fcc0, .LBB13_3
# %bb.2:
	pcalau12i	$a2, %pc_hi20(.LCPI13_3)
	fld.s	$ft8, $a2, %pc_lo12(.LCPI13_3)
	pcalau12i	$a2, %pc_hi20(.LCPI13_2)
	fld.s	$ft9, $a2, %pc_lo12(.LCPI13_2)
	fadd.s	$ft10, $ft4, $ft7
	fsub.s	$ft7, $ft7, $ft4
	b	.LBB13_4
.LBB13_3:
	pcalau12i	$a2, %pc_hi20(.LCPI13_1)
	fld.s	$ft8, $a2, %pc_lo12(.LCPI13_1)
	pcalau12i	$a2, %pc_hi20(.LCPI13_2)
	fld.s	$ft9, $a2, %pc_lo12(.LCPI13_2)
	fsub.s	$ft10, $ft4, $ft7
	fadd.s	$ft7, $ft4, $ft7
.LBB13_4:                               # %_Z11btAtan2Fastff.exit
	fdiv.s	$ft7, $ft10, $ft7
	fmadd.s	$ft7, $ft7, $ft9, $ft8
	fneg.s	$ft8, $ft7
	fcmp.clt.s	$fcc0, $ft5, $ft6
	fsel	$ft6, $ft7, $ft8, $fcc0
	fmul.s	$ft4, $ft4, $ft4
	fmadd.s	$ft4, $ft5, $ft5, $ft4
	vldi	$vr13, -1244
	fmul.s	$ft4, $ft4, $ft5
	fmul.s	$ft4, $ft4, $ft5
	vldi	$vr13, -1168
	fadd.s	$ft5, $ft4, $ft5
	fdiv.s	$ft4, $ft4, $ft5
	fmul.s	$ft4, $ft4, $ft6
.LBB13_5:
	fld.s	$ft5, $a0, 496
	fcmp.cult.s	$fcc0, $ft5, $ft14
                                        # implicit-def: $f14
                                        # implicit-def: $f16
                                        # implicit-def: $f17
	bcnez	$fcc0, .LBB13_10
# %bb.6:
	fld.s	$ft3, $a0, 372
	fld.s	$ft6, $a0, 356
	fld.s	$ft7, $a0, 388
	fmul.s	$fa2, $fa2, $ft3
	fmadd.s	$fa2, $fa3, $ft6, $fa2
	fmadd.s	$ft8, $fa4, $ft7, $fa2
	fmul.s	$fa2, $fa5, $ft3
	fmadd.s	$fa2, $fa6, $ft6, $fa2
	fmadd.s	$ft9, $fa7, $ft7, $fa2
	fmul.s	$fa2, $ft1, $ft3
	fmadd.s	$fa2, $ft0, $ft6, $fa2
	fmadd.s	$ft6, $ft2, $ft7, $fa2
	fmadd.s	$fa2, $fs3, $ft11, $fa0
	fmadd.s	$fa2, $fs5, $ft13, $fa2
	fmul.s	$fa3, $fs4, $ft9
	fmadd.s	$fa3, $fs3, $ft8, $fa3
	fmadd.s	$fa3, $fs5, $ft6, $fa3
	movgr2fr.w	$fa4, $zero
	fcmp.cult.s	$fcc0, $fa2, $fa4
	fabs.s	$fa5, $fa3
	bceqz	$fcc0, .LBB13_8
# %bb.7:
	pcalau12i	$a2, %pc_hi20(.LCPI13_3)
	fld.s	$fa6, $a2, %pc_lo12(.LCPI13_3)
	pcalau12i	$a2, %pc_hi20(.LCPI13_2)
	fld.s	$fa7, $a2, %pc_lo12(.LCPI13_2)
	fadd.s	$ft0, $fa2, $fa5
	fsub.s	$fa5, $fa5, $fa2
	b	.LBB13_9
.LBB13_8:
	pcalau12i	$a2, %pc_hi20(.LCPI13_1)
	fld.s	$fa6, $a2, %pc_lo12(.LCPI13_1)
	pcalau12i	$a2, %pc_hi20(.LCPI13_2)
	fld.s	$fa7, $a2, %pc_lo12(.LCPI13_2)
	fsub.s	$ft0, $fa2, $fa5
	fadd.s	$fa5, $fa2, $fa5
.LBB13_9:                               # %_Z11btAtan2Fastff.exit181
	fdiv.s	$fa5, $ft0, $fa5
	fmadd.s	$fa5, $fa5, $fa7, $fa6
	fneg.s	$fa6, $fa5
	fcmp.clt.s	$fcc0, $fa3, $fa4
	fsel	$fa4, $fa5, $fa6, $fcc0
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa2, $fa3, $fa3, $fa2
	vldi	$vr3, -1244
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa2, $fa2, $fa3
	vldi	$vr3, -1168
	fadd.s	$fa3, $fa2, $fa3
	fdiv.s	$fa2, $fa2, $fa3
	fmul.s	$ft3, $fa2, $fa4
.LBB13_10:
	fmul.s	$fa1, $fa1, $fa1
	frecip.s	$fa1, $fa1
	fmul.s	$fa2, $ft5, $ft5
	frecip.s	$fa2, $fa2
	fmul.s	$fa3, $ft4, $ft4
	fabs.s	$fa3, $fa3
	fmul.s	$fa4, $ft3, $ft3
	fabs.s	$fa4, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fmadd.s	$fa1, $fa3, $fa1, $fa2
	vldi	$vr2, -1168
	fcmp.cule.s	$fcc0, $fa1, $fa2
	fld.s	$ft4, $sp, 60                   # 4-byte Folded Reload
	fld.s	$ft5, $sp, 56                   # 4-byte Folded Reload
	bcnez	$fcc0, .LBB13_12
# %bb.11:
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a0, 552
	ori	$a2, $zero, 1
	st.b	$a2, $a0, 574
	fmul.s	$fa1, $fs4, $ft5
	fmadd.s	$fa1, $fs3, $ft15, $fa1
	fmadd.s	$fa1, $fs5, $ft4, $fa1
	fmul.s	$fa3, $ft15, $fa1
	fmul.s	$fa4, $ft5, $fa1
	fmul.s	$fa1, $ft4, $fa1
	fmul.s	$fa5, $fs4, $ft9
	fmadd.s	$fa5, $fs3, $ft8, $fa5
	fmadd.s	$fa5, $fs5, $ft6, $fa5
	fmul.s	$fa6, $ft8, $fa5
	fmul.s	$fa7, $ft9, $fa5
	fmul.s	$fa5, $ft6, $fa5
	fadd.s	$fa3, $fa3, $fa6
	fadd.s	$fa4, $fa4, $fa7
	fadd.s	$fa1, $fa1, $fa5
	fneg.s	$fa5, $fa4
	fmul.s	$fa5, $fs5, $fa5
	fmadd.s	$fa5, $fs4, $fa1, $fa5
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fs3, $fa1
	fmadd.s	$fa1, $fs5, $fa3, $fa1
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $fs4, $fa3
	fmadd.s	$fa3, $fs3, $fa4, $fa3
	movfr2gr.s	$a2, $fa3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a0, 516
	fmul.s	$fa4, $fa1, $fa1
	fmadd.s	$fa4, $fa5, $fa5, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fa5, $fa5, $fa4
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa4, $fs3, $ft11, $fa0
	fmadd.s	$fa4, $fs5, $ft13, $fa4
	movgr2fr.w	$fa6, $zero
	fcmp.cle.s	$fcc0, $fa6, $fa4
	vldi	$vr4, -1168
	fsel	$fa2, $fa2, $fa4, $fcc0
	fmul.s	$fa4, $fa2, $fa5
	fst.s	$fa4, $a0, 508
	fmul.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a0, 512
	fmul.s	$fa1, $fa2, $fa3
	fst.s	$fa1, $a0, 516
.LBB13_12:
	fld.s	$fs2, $a0, 500
	movgr2fr.w	$fs6, $zero
	fcmp.cult.s	$fcc0, $fs2, $fs6
	bcnez	$fcc0, .LBB13_27
# %bb.13:
	fld.s	$fa1, $a0, 416
	fld.s	$fa2, $a0, 432
	fld.s	$fa3, $a1, 12
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a0, 448
	fld.s	$fa6, $a1, 16
	fmul.s	$fa3, $fa2, $fa3
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fld.s	$fa4, $a1, 28
	fmadd.s	$fs1, $fa6, $fa5, $fa3
	fld.s	$fa3, $a1, 24
	fld.s	$fa6, $a1, 32
	fmul.s	$fa4, $fa2, $fa4
	fld.s	$fa7, $a1, 44
	fmadd.s	$fa3, $fa3, $fa1, $fa4
	fmadd.s	$fs7, $fa6, $fa5, $fa3
	fld.s	$fa3, $a1, 40
	fmul.s	$fa2, $fa2, $fa7
	pcalau12i	$a2, %pc_hi20(.LCPI13_4)
	fld.s	$fa4, $a2, %pc_lo12(.LCPI13_4)
	fmadd.s	$fa1, $fa3, $fa1, $fa2
	fld.s	$fa2, $a1, 48
	fmadd.s	$fa0, $fs3, $ft11, $fa0
	fmadd.s	$fa0, $fs5, $ft13, $fa0
	fcmp.cule.s	$fcc0, $fa4, $fa0
	fmadd.s	$fs0, $fa2, $fa5, $fa1
	bcnez	$fcc0, .LBB13_16
# %bb.14:
	pcalau12i	$a1, %pc_hi20(.LCPI13_5)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI13_5)
	fabs.s	$fa1, $fs5
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB13_18
# %bb.15:
	fmul.s	$fa0, $fs5, $fs5
	fmadd.s	$fa0, $fs4, $fs4, $fa0
	frsqrt.s	$fa0, $fa0
	fneg.s	$fa1, $fs5
	fmul.s	$fa2, $fa0, $fa1
	movgr2fr.w	$fa1, $zero
	fmul.s	$fa3, $fs4, $fa0
	fmov.s	$fa0, $fa1
	b	.LBB13_19
.LBB13_16:
	fneg.s	$fa1, $ft12
	fmul.s	$fa1, $fs5, $fa1
	fmadd.s	$fa4, $fs4, $ft13, $fa1
	fneg.s	$fa1, $ft13
	fmul.s	$fa1, $fs3, $fa1
	fmadd.s	$fa5, $fs5, $ft11, $fa1
	fneg.s	$fa1, $ft11
	fmul.s	$fa2, $fs4, $fa1
	vldi	$vr1, -1168
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa0, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fmadd.s	$fa6, $fs3, $ft12, $fa2
	bceqz	$fcc0, .LBB13_28
.LBB13_17:                              # %.split
	frecip.s	$fa3, $fa0
	fmul.s	$fa1, $fa4, $fa3
	fmul.s	$fa2, $fa5, $fa3
	fmul.s	$fa3, $fa6, $fa3
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa0, $fa4
	b	.LBB13_19
.LBB13_18:
	fmul.s	$fa0, $fs4, $fs4
	fmadd.s	$fa0, $fs3, $fs3, $fa0
	frsqrt.s	$fa0, $fa0
	fneg.s	$fa1, $fs4
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fs3, $fa0
	fmov.s	$fa3, $fs6
	fmov.s	$fa0, $fs6
.LBB13_19:                              # %_Z15shortestArcQuatRK9btVector3S1_.exit
	fmul.s	$fa4, $fs0, $fa2
	fmadd.s	$fa4, $fa0, $fs1, $fa4
	fneg.s	$fa5, $fa3
	fmadd.s	$fa4, $fa5, $fs7, $fa4
	fmul.s	$fa6, $fs1, $fa3
	fmadd.s	$fa6, $fa0, $fs7, $fa6
	fneg.s	$fa7, $fa1
	fmadd.s	$fa6, $fa7, $fs0, $fa6
	fmul.s	$ft0, $fs7, $fa1
	fmadd.s	$ft0, $fa0, $fs0, $ft0
	fneg.s	$ft1, $fa2
	fmadd.s	$ft0, $ft1, $fs1, $ft0
	fneg.s	$ft2, $fs7
	fmul.s	$ft2, $fa2, $ft2
	fmadd.s	$ft2, $fa7, $fs1, $ft2
	fmadd.s	$ft2, $fa5, $fs0, $ft2
	fmul.s	$ft3, $fa0, $fa4
	fmadd.s	$ft3, $ft2, $fa7, $ft3
	fmadd.s	$ft3, $fa6, $fa5, $ft3
	fmadd.s	$fa2, $ft0, $fa2, $ft3
	fmul.s	$ft3, $fa0, $fa6
	fmadd.s	$ft3, $ft2, $ft1, $ft3
	fmadd.s	$fa7, $ft0, $fa7, $ft3
	fmadd.s	$fa3, $fa4, $fa3, $fa7
	fmul.s	$fa0, $fa0, $ft0
	fmadd.s	$fa0, $ft2, $fa5, $fa0
	fmadd.s	$fa0, $fa4, $ft1, $fa0
	fmadd.s	$fa1, $fa6, $fa1, $fa0
	fmul.s	$fa0, $ft9, $fa3
	fmadd.s	$fa0, $fa2, $ft8, $fa0
	fmadd.s	$fa0, $fa1, $ft6, $fa0
	fmul.s	$fa3, $ft5, $fa3
	fmadd.s	$fa2, $fa2, $ft15, $fa3
	fmadd.s	$fa1, $fa1, $ft4, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fs6
	fabs.s	$fa2, $fa0
	bceqz	$fcc0, .LBB13_21
# %bb.20:
	pcalau12i	$a1, %pc_hi20(.LCPI13_3)
	fld.s	$fa3, $a1, %pc_lo12(.LCPI13_3)
	pcalau12i	$a1, %pc_hi20(.LCPI13_2)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI13_2)
	fadd.s	$fa5, $fa1, $fa2
	fsub.s	$fa1, $fa2, $fa1
	b	.LBB13_22
.LBB13_21:
	pcalau12i	$a1, %pc_hi20(.LCPI13_1)
	fld.s	$fa3, $a1, %pc_lo12(.LCPI13_1)
	pcalau12i	$a1, %pc_hi20(.LCPI13_2)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI13_2)
	fsub.s	$fa5, $fa1, $fa2
	fadd.s	$fa1, $fa1, $fa2
.LBB13_22:                              # %_Z11btAtan2Fastff.exit235
	fdiv.s	$fa1, $fa5, $fa1
	fmadd.s	$fa1, $fa1, $fa4, $fa3
	fneg.s	$fa2, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fs6
	fsel	$fa0, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $ft14, $fs2
	vldi	$vr1, -1168
	fsel	$fa1, $fs6, $fa1, $fcc0
	fneg.s	$fa2, $fs2
	fmul.s	$fa2, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fst.s	$fa0, $a0, 560
	bceqz	$fcc0, .LBB13_25
# %bb.23:
	fmul.s	$fa1, $fs2, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB13_27
# %bb.24:
	fsub.s	$fa0, $fa0, $fs2
	fst.s	$fa0, $a0, 556
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 573
	fadd.s	$fa0, $ft11, $fs3
	fadd.s	$fa1, $ft12, $fs4
	fadd.s	$fa2, $ft13, $fs5
	vldi	$vr3, -1184
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $a0, 532
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	b	.LBB13_26
.LBB13_25:
	fadd.s	$fa0, $fs2, $fa0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a0, 556
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 573
	fadd.s	$fa0, $ft11, $fs3
	fadd.s	$fa1, $ft12, $fs4
	fadd.s	$fa2, $ft13, $fs5
	vldi	$vr3, -1184
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $a0, 532
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fsqrt.s	$fa3, $fa3
	vldi	$vr4, -1040
	fdiv.s	$fa3, $fa4, $fa3
.LBB13_26:
	fmul.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $a0, 524
	fmul.s	$fa0, $fa1, $fa3
	fst.s	$fa0, $a0, 528
	fmul.s	$fa0, $fa2, $fa3
	fst.s	$fa0, $a0, 532
.LBB13_27:
	fld.d	$fs7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 120                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB13_28:                              # %call.sqrt
	fmov.s	$fa0, $fa1
	move	$fp, $a0
	fst.s	$ft11, $sp, 52                  # 4-byte Folded Spill
	fst.s	$ft12, $sp, 48                  # 4-byte Folded Spill
	fst.s	$ft13, $sp, 44                  # 4-byte Folded Spill
	fst.s	$ft14, $sp, 40                  # 4-byte Folded Spill
	fst.s	$ft15, $sp, 36                  # 4-byte Folded Spill
	fst.s	$ft8, $sp, 32                   # 4-byte Folded Spill
	fst.s	$ft6, $sp, 28                   # 4-byte Folded Spill
	fst.s	$ft9, $sp, 24                   # 4-byte Folded Spill
	fst.s	$fa4, $sp, 20                   # 4-byte Folded Spill
	fst.s	$fa5, $sp, 16                   # 4-byte Folded Spill
	fst.s	$fa6, $sp, 12                   # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	fld.s	$fa6, $sp, 12                   # 4-byte Folded Reload
	fld.s	$fa5, $sp, 16                   # 4-byte Folded Reload
	fld.s	$fa4, $sp, 20                   # 4-byte Folded Reload
	fld.s	$ft9, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft6, $sp, 28                   # 4-byte Folded Reload
	fld.s	$ft8, $sp, 32                   # 4-byte Folded Reload
	fld.s	$ft5, $sp, 56                   # 4-byte Folded Reload
	fld.s	$ft4, $sp, 60                   # 4-byte Folded Reload
	fld.s	$ft15, $sp, 36                  # 4-byte Folded Reload
	fld.s	$ft14, $sp, 40                  # 4-byte Folded Reload
	fld.s	$ft13, $sp, 44                  # 4-byte Folded Reload
	fld.s	$ft12, $sp, 48                  # 4-byte Folded Reload
	fld.s	$ft11, $sp, 52                  # 4-byte Folded Reload
	move	$a0, $fp
	b	.LBB13_17
.Lfunc_end13:
	.size	_ZN21btConeTwistConstraint13calcAngleInfoEv, .Lfunc_end13-_ZN21btConeTwistConstraint13calcAngleInfoEv
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_
.LCPI14_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_
	.p2align	5
	.type	_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_,@function
_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_: # @_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $a1
	fld.s	$fa0, $a1, 12
	move	$fp, $a4
	move	$s1, $a3
	move	$s3, $a2
	move	$s0, $a0
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI14_0)
	fadd.s	$fa0, $fa0, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	fst.s	$fa0, $s3, 0
	bcnez	$fcc0, .LBB14_3
# %bb.1:
	fld.s	$fa0, $s2, 4
	fld.s	$fa2, $s2, 0
	fld.s	$fa3, $s2, 8
	st.w	$zero, $s1, 12
	fmul.s	$fa4, $fa0, $fa0
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fst.s	$fa2, $s1, 0
	fmul.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $s1, 4
	fmul.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $s1, 8
	fld.s	$fa2, $s0, 492
	fabs.s	$fa4, $fa0
	fcmp.cule.s	$fcc0, $fa4, $fa1
	fst.s	$fa2, $fp, 0
	bcnez	$fcc0, .LBB14_3
# %bb.2:
	fld.s	$fa1, $s0, 496
	fmul.s	$fa3, $fa3, $fa3
	fmul.s	$fa0, $fa0, $fa0
	fdiv.s	$fa0, $fa3, $fa0
	fmul.s	$fa1, $fa1, $fa1
	frecip.s	$fa1, $fa1
	fmul.s	$fa2, $fa2, $fa2
	fdiv.s	$fa2, $fa0, $fa2
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1168
	fadd.s	$fa0, $fa0, $fa2
	fdiv.s	$fa0, $fa0, $fa1
	fsqrt.s	$fa0, $fa0
	fst.s	$fa0, $fp, 0
.LBB14_3:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_, .Lfunc_end14-_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3
.LCPI15_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3
	.p2align	5
	.type	_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3,@function
_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3: # @_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3
# %bb.0:
	fld.s	$fa0, $a1, 4
	pcalau12i	$a2, %pc_hi20(.LCPI15_0)
	fld.s	$fa1, $a2, %pc_lo12(.LCPI15_0)
	fabs.s	$fa2, $fa0
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB15_2
# %bb.1:
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a0, 496
	fld.s	$fa3, $a0, 492
	fneg.s	$fa4, $fa1
	fdiv.s	$fa4, $fa4, $fa0
	fdiv.s	$fa2, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa2
	fmul.s	$fa2, $fa0, $fa2
	fabs.s	$fa2, $fa2
	fneg.s	$fa3, $fa2
	movgr2fr.w	$fa4, $zero
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fld.s	$fa1, $a1, 0
	fsel	$fa2, $fa3, $fa2, $fcc0
	fneg.s	$fa3, $fa2
	fmul.s	$fa4, $fa0, $fa0
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa2, $fa2, $fa2, $fa4
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a1, 0
	fmul.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a1, 4
	fmul.s	$fa0, $fa2, $fa3
	fst.s	$fa0, $a1, 8
.LBB15_2:
	ret
.Lfunc_end15:
	.size	_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3, .Lfunc_end15-_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3
.LCPI16_0:
	.word	0x40490fdb                      # float 3.14159274
.LCPI16_1:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3
	.p2align	5
	.type	_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3,@function
_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3: # @_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	move	$s1, $a1
	fld.s	$fs1, $a1, 0
	fld.s	$fs2, $a1, 4
	fld.s	$fs0, $a1, 8
	fld.s	$fa0, $a1, 12
	move	$fp, $a3
	move	$s0, $a2
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI16_0)
	fadd.s	$fa0, $fa0, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	fst.s	$fa0, $s0, 0
	bcnez	$fcc0, .LBB16_2
# %bb.1:
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s1, 4
	fld.s	$fa2, $s1, 8
	fld.s	$fa3, $s1, 12
	fneg.s	$fs1, $fa0
	fneg.s	$fs2, $fa1
	fneg.s	$fs0, $fa2
	fneg.s	$fa0, $fa3
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $s0, 0
.LBB16_2:
	fst.s	$fs1, $fp, 0
	fst.s	$fs2, $fp, 4
	fst.s	$fs0, $fp, 8
	st.w	$zero, $fp, 12
	fld.s	$fa0, $s0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI16_1)
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_4
# %bb.3:
	fmul.s	$fa0, $fs2, $fs2
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fmadd.s	$fa0, $fs0, $fs0, $fa0
	frsqrt.s	$fa0, $fa0
	fmul.s	$fa1, $fs1, $fa0
	fst.s	$fa1, $fp, 0
	fmul.s	$fa1, $fs2, $fa0
	fst.s	$fa1, $fp, 4
	fmul.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $fp, 8
.LBB16_4:
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end16:
	.size	_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3, .Lfunc_end16-_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK21btConeTwistConstraint16GetPointForAngleEff
.LCPI17_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZNK21btConeTwistConstraint16GetPointForAngleEff
	.p2align	5
	.type	_ZNK21btConeTwistConstraint16GetPointForAngleEff,@function
_ZNK21btConeTwistConstraint16GetPointForAngleEff: # @_ZNK21btConeTwistConstraint16GetPointForAngleEff
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 16                   # 8-byte Folded Spill
	fmov.s	$fs0, $fa1
	fmov.s	$fs2, $fa0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs1, $fa0
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI17_0)
	fld.s	$fa1, $fp, 492
	fabs.s	$fa3, $fs1
	fcmp.clt.s	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB17_2
# %bb.1:
	fld.s	$fa3, $fp, 496
	fmul.s	$fa4, $fa0, $fa0
	fmul.s	$fa2, $fs1, $fs1
	fdiv.s	$fa4, $fa4, $fa2
	fmul.s	$fa3, $fa3, $fa3
	frecip.s	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa1
	fdiv.s	$fa1, $fa4, $fa1
	fadd.s	$fa1, $fa1, $fa3
	vldi	$vr3, -1168
	fadd.s	$fa3, $fa4, $fa3
	fdiv.s	$fa1, $fa3, $fa1
	fsqrt.s	$fa1, $fa1
	b	.LBB17_3
.LBB17_2:                               # %._crit_edge
	fmul.s	$fa2, $fs1, $fs1
.LBB17_3:
	fneg.s	$fs3, $fa0
	fmadd.s	$fa0, $fa0, $fa0, $fa2
	fsqrt.s	$fs4, $fa0
	vldi	$vr0, -1184
	fmul.s	$fs2, $fa1, $fa0
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs4
	movgr2fr.w	$fs4, $zero
	fmul.s	$fs5, $fa0, $fs4
	fmul.s	$fs1, $fs1, $fa0
	fmul.s	$fs3, $fa0, $fs3
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmul.s	$fa1, $fs1, $fs4
	fmadd.s	$fa1, $fa0, $fs0, $fa1
	fneg.s	$fa2, $fs3
	fneg.s	$fa3, $fs4
	fmadd.s	$fa1, $fs3, $fa3, $fa1
	fmul.s	$fa4, $fs0, $fs3
	fmadd.s	$fa4, $fa0, $fs4, $fa4
	fneg.s	$fa5, $fs5
	fmadd.s	$fa4, $fs5, $fa3, $fa4
	fmul.s	$fa6, $fs5, $fs4
	fmadd.s	$fa6, $fa0, $fs4, $fa6
	fneg.s	$fa7, $fs1
	fmadd.s	$fa6, $fa7, $fs0, $fa6
	fmul.s	$ft0, $fs1, $fa3
	fmadd.s	$ft0, $fa5, $fs0, $ft0
	fmadd.s	$fa3, $fs3, $fa3, $ft0
	fmul.s	$ft0, $fa0, $fa1
	fmadd.s	$ft0, $fa3, $fa5, $ft0
	fmadd.s	$ft0, $fa4, $fa2, $ft0
	fmadd.s	$ft0, $fa6, $fs1, $ft0
	fmul.s	$ft1, $fa0, $fa4
	fmadd.s	$ft1, $fa3, $fa7, $ft1
	fmadd.s	$fa5, $fa6, $fa5, $ft1
	fmadd.s	$fa5, $fa1, $fs3, $fa5
	fmul.s	$fa0, $fa0, $fa6
	fmadd.s	$fa0, $fa3, $fa2, $fa0
	fmadd.s	$fa0, $fa1, $fa7, $fa0
	fmadd.s	$fa0, $fa4, $fs5, $fa0
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $fa5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end17:
	.size	_ZNK21btConeTwistConstraint16GetPointForAngleEff, .Lfunc_end17-_ZNK21btConeTwistConstraint16GetPointForAngleEff
                                        # -- End function
	.globl	_ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion # -- Begin function _ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion
	.p2align	5
	.type	_ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion,@function
_ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion: # @_ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 232                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	.cfi_offset 58, -64
	.cfi_offset 59, -72
	.cfi_offset 60, -80
	.cfi_offset 61, -88
	.cfi_offset 62, -96
	.cfi_offset 63, -104
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	move	$s0, $a1
	fld.s	$fa7, $a0, 8
	fld.s	$ft2, $a0, 12
	fld.s	$ft0, $a0, 16
	fld.s	$fa6, $a0, 24
	fld.s	$ft1, $a0, 28
	fld.s	$ft5, $a0, 32
	ld.d	$a1, $fp, 32
	fld.s	$ft4, $a0, 56
	fld.s	$ft3, $a0, 60
	fld.s	$fa4, $a0, 64
	fld.s	$fs5, $a1, 8
	fld.s	$fs2, $a1, 12
	fld.s	$fs1, $a1, 16
	fld.s	$fs4, $a1, 24
	fld.s	$fs0, $a1, 28
	fld.s	$fs6, $a1, 32
	fld.s	$ft6, $a1, 40
	fld.s	$fs7, $a1, 44
	fld.s	$fa0, $a1, 56
	fst.s	$fa0, $sp, 64                   # 4-byte Folded Spill
	fld.s	$fa2, $a1, 60
	fst.s	$fa2, $sp, 68                   # 4-byte Folded Spill
	fld.s	$fs3, $a1, 48
	fld.s	$fa5, $a1, 64
	fst.s	$fa5, $sp, 84                   # 4-byte Folded Spill
	fneg.s	$fa0, $fa0
	fneg.s	$fa1, $fa2
	fmul.s	$fa2, $fs4, $fa1
	fmadd.s	$fa2, $fs5, $fa0, $fa2
	fmul.s	$fa3, $fs0, $fa1
	fmadd.s	$fa3, $fs2, $fa0, $fa3
	fmul.s	$fa1, $fs6, $fa1
	fmadd.s	$fa0, $fs1, $fa0, $fa1
	fneg.s	$fa1, $fa5
	fmadd.s	$fa2, $ft6, $fa1, $fa2
	fmadd.s	$fa3, $fs7, $fa1, $fa3
	fmadd.s	$fa0, $fs3, $fa1, $fa0
	fst.s	$ft3, $sp, 76                   # 4-byte Folded Spill
	fmul.s	$fa1, $ft3, $fs4
	fst.s	$ft4, $sp, 72                   # 4-byte Folded Spill
	fmadd.s	$fa1, $fs5, $ft4, $fa1
	fst.s	$fa4, $sp, 80                   # 4-byte Folded Spill
	fmadd.s	$fa1, $ft6, $fa4, $fa1
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $ft3, $fs0
	fmadd.s	$fa2, $fs2, $ft4, $fa2
	fmadd.s	$fa2, $fs7, $fa4, $fa2
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa3, $ft3, $fs6
	fmadd.s	$fa3, $fs1, $ft4, $fa3
	fmadd.s	$fa3, $fs3, $fa4, $fa3
	fadd.s	$fa0, $fa3, $fa0
	fld.s	$fa3, $a0, 40
	movfr2gr.s	$a1, $fa1
	fld.s	$fa4, $a0, 44
	movfr2gr.s	$a2, $fa2
	fld.s	$fa1, $a0, 48
	movfr2gr.s	$a0, $fa0
	fmul.s	$fa0, $fa6, $fs4
	fmadd.s	$fa0, $fa7, $fs5, $fa0
	fst.s	$ft6, $sp, 16                   # 4-byte Folded Spill
	fmadd.s	$fa0, $fa3, $ft6, $fa0
	fst.s	$fa0, $sp, 152
	fmul.s	$fa0, $ft1, $fs4
	fmadd.s	$fa0, $ft2, $fs5, $fa0
	fmadd.s	$fa0, $fa4, $ft6, $fa0
	fst.s	$fa0, $sp, 156
	fmul.s	$fa0, $ft5, $fs4
	fmadd.s	$fa0, $ft0, $fs5, $fa0
	fmadd.s	$fa0, $fa1, $ft6, $fa0
	fst.s	$fa0, $sp, 160
	fmul.s	$fa0, $fa6, $fs0
	fst.s	$fa6, $sp, 36                   # 4-byte Folded Spill
	fmadd.s	$fa0, $fa7, $fs2, $fa0
	fst.s	$fa7, $sp, 28                   # 4-byte Folded Spill
	fst.s	$fa3, $sp, 52                   # 4-byte Folded Spill
	fmadd.s	$fa0, $fa3, $fs7, $fa0
	fst.s	$fa0, $sp, 168
	fst.s	$ft1, $sp, 32                   # 4-byte Folded Spill
	fmul.s	$fa0, $ft1, $fs0
	fst.s	$ft2, $sp, 24                   # 4-byte Folded Spill
	fmadd.s	$fa0, $ft2, $fs2, $fa0
	fst.s	$fa4, $sp, 40                   # 4-byte Folded Spill
	fmadd.s	$fa0, $fa4, $fs7, $fa0
	fst.s	$fa0, $sp, 172
	fst.s	$ft5, $sp, 48                   # 4-byte Folded Spill
	fmul.s	$fa0, $ft5, $fs0
	fst.s	$ft0, $sp, 20                   # 4-byte Folded Spill
	fmadd.s	$fa0, $ft0, $fs2, $fa0
	fst.s	$fa1, $sp, 44                   # 4-byte Folded Spill
	fmadd.s	$fa0, $fa1, $fs7, $fa0
	fst.s	$fa0, $sp, 176
	fmul.s	$fa0, $fa6, $fs6
	fmadd.s	$fa0, $fa7, $fs1, $fa0
	fmadd.s	$fa0, $fa3, $fs3, $fa0
	fst.s	$fa0, $sp, 184
	fmul.s	$fa0, $ft1, $fs6
	fmadd.s	$fa0, $ft2, $fs1, $fa0
	fmadd.s	$fa0, $fa4, $fs3, $fa0
	fst.s	$fa0, $sp, 188
	fmul.s	$fa0, $ft5, $fs6
	fmadd.s	$fa0, $ft0, $fs1, $fa0
	fmadd.s	$fa0, $fa1, $fs3, $fa0
	fst.s	$fa0, $sp, 192
	bstrins.d	$a1, $a2, 63, 32
	bstrpick.d	$a0, $a0, 31, 0
	st.w	$zero, $sp, 164
	st.w	$zero, $sp, 180
	st.w	$zero, $sp, 196
	st.d	$a1, $sp, 200
	st.d	$a0, $sp, 208
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 428
	fld.s	$fa2, $fp, 412
	fld.s	$fa4, $fp, 444
	fmul.s	$fa0, $fs2, $fa1
	fmadd.s	$fa0, $fa2, $fs5, $fa0
	fmadd.s	$ft7, $fa4, $fs1, $fa0
	fld.s	$fa6, $fp, 416
	fld.s	$fa7, $fp, 432
	fld.s	$ft0, $fp, 448
	fmul.s	$fa3, $fs0, $fa1
	fmadd.s	$fa5, $fa2, $fs4, $fa3
	fmul.s	$fa1, $fs7, $fa1
	fld.s	$ft1, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa2, $ft1, $fa1
	fmul.s	$fa2, $fs2, $fa7
	fmadd.s	$fa2, $fa6, $fs5, $fa2
	fmadd.s	$fa3, $ft0, $fs1, $fa2
	fmadd.s	$fa5, $fa4, $fs6, $fa5
	fmadd.s	$fa0, $fa4, $fs3, $fa1
	fst.s	$fa0, $sp, 60                   # 4-byte Folded Spill
	fmul.s	$fa2, $fs0, $fa7
	fmadd.s	$fa2, $fa6, $fs4, $fa2
	fmul.s	$fa4, $fs7, $fa7
	fmadd.s	$fa4, $fa6, $ft1, $fa4
	fmov.s	$fa1, $ft1
	fld.s	$fa7, $fp, 436
	fld.s	$ft1, $fp, 420
	fmadd.s	$fa6, $ft0, $fs6, $fa2
	fmadd.s	$fa0, $ft0, $fs3, $fa4
	fst.s	$fa0, $sp, 56                   # 4-byte Folded Spill
	fmul.s	$fa4, $fs2, $fa7
	fmadd.s	$fa4, $ft1, $fs5, $fa4
	fld.s	$ft2, $fp, 452
	fmul.s	$ft0, $fs0, $fa7
	fmadd.s	$ft0, $ft1, $fs4, $ft0
	fmul.s	$fa7, $fs7, $fa7
	fmadd.s	$ft1, $ft1, $fa1, $fa7
	fmadd.s	$fa7, $ft2, $fs1, $fa4
	fmadd.s	$ft0, $ft2, $fs6, $ft0
	fld.s	$ft3, $fp, 464
	fld.s	$ft4, $fp, 460
	fld.s	$ft5, $fp, 468
	fmadd.s	$fa4, $ft2, $fs3, $ft1
	fmul.s	$ft1, $fs2, $ft3
	fmadd.s	$ft1, $fs5, $ft4, $ft1
	fmadd.s	$ft1, $fs1, $ft5, $ft1
	fld.s	$ft2, $sp, 64                   # 4-byte Folded Reload
	fadd.s	$ft2, $ft2, $ft1
	fmul.s	$ft1, $fs0, $ft3
	fmadd.s	$ft1, $fs4, $ft4, $ft1
	fmadd.s	$ft1, $fs6, $ft5, $ft1
	fld.s	$ft6, $sp, 68                   # 4-byte Folded Reload
	fadd.s	$ft6, $ft6, $ft1
	fmul.s	$ft1, $fs7, $ft3
	fmadd.s	$ft1, $fa1, $ft4, $ft1
	fmadd.s	$fa0, $fs3, $ft5, $ft1
	fst.s	$fa0, $sp, 68                   # 4-byte Folded Spill
	fneg.s	$ft4, $ft2
	fneg.s	$ft5, $ft6
	fmul.s	$ft2, $fa5, $ft5
	fmadd.s	$fa0, $ft7, $ft4, $ft2
	fst.s	$fa0, $sp, 64                   # 4-byte Folded Spill
	fmov.s	$ft1, $ft7
	fmul.s	$ft3, $fa6, $ft5
	fmadd.s	$ft3, $fa3, $ft4, $ft3
	fmov.s	$ft2, $fa3
	fmul.s	$ft5, $ft0, $ft5
	fld.s	$ft7, $fp, 364
	fld.s	$ft8, $fp, 348
	fld.s	$ft9, $fp, 380
	fmadd.s	$ft4, $fa7, $ft4, $ft5
	fld.s	$fa1, $sp, 24                   # 4-byte Folded Reload
	fmul.s	$ft5, $fa1, $ft7
	fld.s	$fa2, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$ft5, $ft8, $fa2, $ft5
	fld.s	$fa0, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$ft6, $ft9, $fa0, $ft5
	fld.s	$ft10, $fp, 368
	fld.s	$fa3, $sp, 32                   # 4-byte Folded Reload
	fmul.s	$ft5, $fa3, $ft7
	fld.s	$fs7, $sp, 36                   # 4-byte Folded Reload
	fmadd.s	$ft5, $ft8, $fs7, $ft5
	fld.s	$fs5, $sp, 40                   # 4-byte Folded Reload
	fmul.s	$ft7, $fs5, $ft7
	fld.s	$fs4, $sp, 52                   # 4-byte Folded Reload
	fmadd.s	$ft7, $ft8, $fs4, $ft7
	fld.s	$ft8, $fp, 352
	fld.s	$fs3, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$ft11, $ft9, $fs3, $ft5
	fld.s	$fs6, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$ft5, $ft9, $fs6, $ft7
	fmul.s	$ft7, $fa1, $ft10
	fmadd.s	$ft7, $ft8, $fa2, $ft7
	fld.s	$ft9, $fp, 384
	fmul.s	$ft12, $fa3, $ft10
	fmadd.s	$ft12, $ft8, $fs7, $ft12
	fmul.s	$ft10, $fs5, $ft10
	fmadd.s	$ft8, $ft8, $fs4, $ft10
	fmadd.s	$ft10, $ft9, $fa0, $ft7
	fld.s	$ft13, $fp, 372
	fld.s	$ft14, $fp, 356
	fmadd.s	$ft12, $ft9, $fs3, $ft12
	fmadd.s	$ft7, $ft9, $fs6, $ft8
	fmul.s	$ft8, $fa1, $ft13
	fmadd.s	$ft8, $ft14, $fa2, $ft8
	fld.s	$ft9, $fp, 388
	fmul.s	$ft15, $fa3, $ft13
	fmadd.s	$ft15, $ft14, $fs7, $ft15
	fmul.s	$ft13, $fs5, $ft13
	fmadd.s	$ft13, $ft14, $fs4, $ft13
	fmadd.s	$ft14, $ft9, $fa0, $ft8
	fmadd.s	$ft15, $ft9, $fs3, $ft15
	fld.s	$fs0, $fp, 400
	fld.s	$fs1, $fp, 396
	fld.s	$fs2, $fp, 404
	fmadd.s	$ft8, $ft9, $fs6, $ft13
	fmul.s	$ft9, $fa1, $fs0
	fmadd.s	$ft9, $fa2, $fs1, $ft9
	fmadd.s	$ft9, $fa0, $fs2, $ft9
	fld.s	$ft13, $sp, 72                  # 4-byte Folded Reload
	fadd.s	$ft9, $ft13, $ft9
	fmul.s	$ft13, $fa3, $fs0
	fmadd.s	$ft13, $fs7, $fs1, $ft13
	fmadd.s	$ft13, $fs3, $fs2, $ft13
	fld.s	$fs3, $sp, 76                   # 4-byte Folded Reload
	fadd.s	$ft13, $fs3, $ft13
	fmul.s	$fs0, $fs5, $fs0
	fmadd.s	$fs0, $fs4, $fs1, $fs0
	fmadd.s	$fs0, $fs6, $fs2, $fs0
	fmul.s	$fs1, $fa5, $ft11
	fmadd.s	$fs1, $ft6, $ft1, $fs1
	fmul.s	$fs2, $fa5, $ft12
	fmadd.s	$fs2, $ft10, $ft1, $fs2
	fmul.s	$fs3, $fa5, $ft15
	fmadd.s	$fs3, $ft14, $ft1, $fs3
	fmul.s	$fs4, $fa6, $ft11
	fmadd.s	$fs4, $ft6, $ft2, $fs4
	fmul.s	$ft11, $ft0, $ft11
	fmadd.s	$ft6, $ft6, $fa7, $ft11
	fmul.s	$ft11, $fa6, $ft12
	fmadd.s	$ft11, $ft10, $ft2, $ft11
	fmul.s	$ft12, $ft0, $ft12
	fmadd.s	$ft10, $ft10, $fa7, $ft12
	fmul.s	$ft12, $fa6, $ft15
	fmadd.s	$ft12, $ft14, $ft2, $ft12
	fmul.s	$ft15, $ft0, $ft15
	fmadd.s	$ft14, $ft14, $fa7, $ft15
	fmul.s	$fa5, $fa5, $ft13
	fmadd.s	$fa0, $ft1, $ft9, $fa5
	fmul.s	$fa5, $fa6, $ft13
	fmadd.s	$fa3, $ft2, $ft9, $fa5
	fmul.s	$fa5, $ft0, $ft13
	fmadd.s	$fa5, $fa7, $ft9, $fa5
	fld.s	$fa6, $sp, 84                   # 4-byte Folded Reload
	fld.s	$fa1, $sp, 68                   # 4-byte Folded Reload
	fadd.s	$fa6, $fa6, $fa1
	fneg.s	$fa6, $fa6
	fld.s	$fa1, $sp, 60                   # 4-byte Folded Reload
	fld.s	$fa2, $sp, 64                   # 4-byte Folded Reload
	fmadd.s	$fa7, $fa1, $fa6, $fa2
	fld.s	$fa2, $sp, 56                   # 4-byte Folded Reload
	fmadd.s	$ft0, $fa2, $fa6, $ft3
	fmadd.s	$fa6, $fa4, $fa6, $ft4
	fld.s	$ft1, $sp, 80                   # 4-byte Folded Reload
	fadd.s	$ft1, $ft1, $fs0
	fmadd.s	$ft2, $ft5, $fa1, $fs1
	fmadd.s	$ft3, $ft5, $fa2, $fs4
	fmadd.s	$ft4, $ft5, $fa4, $ft6
	fmadd.s	$ft5, $ft7, $fa1, $fs2
	fmadd.s	$ft6, $ft7, $fa2, $ft11
	fmadd.s	$ft7, $ft7, $fa4, $ft10
	fmadd.s	$ft9, $ft8, $fa1, $fs3
	fmadd.s	$ft10, $ft8, $fa2, $ft12
	fmadd.s	$ft8, $ft8, $fa4, $ft14
	fmadd.s	$fa0, $fa1, $ft1, $fa0
	fmadd.s	$fa1, $fa2, $ft1, $fa3
	fmadd.s	$fa2, $fa4, $ft1, $fa5
	fadd.s	$fa0, $fa7, $fa0
	fadd.s	$fa1, $ft0, $fa1
	fadd.s	$fa2, $fa6, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	fst.s	$ft2, $sp, 88
	fst.s	$ft5, $sp, 92
	fst.s	$ft9, $sp, 96
	fst.s	$ft3, $sp, 104
	fst.s	$ft6, $sp, 108
	fst.s	$ft10, $sp, 112
	fst.s	$ft4, $sp, 120
	fst.s	$ft7, $sp, 124
	fst.s	$ft8, $sp, 128
	addi.d	$s2, $fp, 412
	bstrins.d	$a0, $a1, 63, 32
	addi.d	$s1, $fp, 348
	bstrpick.d	$a1, $a2, 31, 0
	st.w	$zero, $sp, 100
	st.w	$zero, $sp, 116
	st.w	$zero, $sp, 132
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 144
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 216
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216
	ld.d	$a1, $sp, 224
	movgr2fr.w	$fs0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fs1, $a0
	movgr2fr.w	$fs2, $a1
	srli.d	$a0, $a1, 32
	fneg.s	$fa0, $fs0
	fneg.s	$fa1, $fs1
	fneg.s	$fa2, $fs2
	movgr2fr.w	$fa3, $a0
	fld.s	$fa4, $s0, 12
	fld.s	$fs3, $s0, 0
	fld.s	$fs4, $s0, 8
	fld.s	$fs5, $s0, 4
	fmul.s	$fa5, $fa4, $fa0
	fmadd.s	$fa5, $fa3, $fs3, $fa5
	fmadd.s	$fa5, $fa1, $fs4, $fa5
	fst.s	$fa5, $sp, 80                   # 4-byte Folded Spill
	fmadd.s	$fa5, $fs2, $fs5, $fa5
	fst.s	$fa5, $sp, 76                   # 4-byte Folded Spill
	fmul.s	$fa1, $fa4, $fa1
	fmadd.s	$fa1, $fa3, $fs5, $fa1
	fmadd.s	$fa1, $fa2, $fs3, $fa1
	fst.s	$fa1, $sp, 84                   # 4-byte Folded Spill
	fmadd.s	$fa1, $fs0, $fs4, $fa1
	fst.s	$fa1, $sp, 68                   # 4-byte Folded Spill
	fmul.s	$fa1, $fa4, $fa2
	fmadd.s	$fa1, $fa3, $fs4, $fa1
	fmadd.s	$fs6, $fa0, $fs5, $fa1
	fmadd.s	$fa0, $fs1, $fs3, $fs6
	fst.s	$fa0, $sp, 72                   # 4-byte Folded Spill
	fmul.s	$fa0, $fs3, $fs0
	fmadd.s	$fa0, $fa3, $fa4, $fa0
	fmadd.s	$fa0, $fs1, $fs5, $fa0
	fmadd.s	$fs7, $fs2, $fs4, $fa0
	addi.d	$a1, $sp, 216
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216
	ld.d	$a1, $sp, 224
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	srli.d	$a0, $a1, 32
	movgr2fr.w	$fa3, $a0
	fld.s	$ft0, $sp, 76                   # 4-byte Folded Reload
	fmul.s	$fa4, $ft0, $fa3
	fmadd.s	$fa4, $fs7, $fa0, $fa4
	fld.s	$fa6, $sp, 68                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fa6, $fa2, $fa4
	fnmadd.s	$fa5, $fs1, $fs3, $fs6
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fmul.s	$fa6, $fa6, $fa3
	fmadd.s	$fa6, $fs7, $fa1, $fa6
	fld.s	$ft1, $sp, 72                   # 4-byte Folded Reload
	fmadd.s	$fa6, $ft1, $fa0, $fa6
	fld.s	$fa7, $sp, 80                   # 4-byte Folded Reload
	fnmadd.s	$fa7, $fs2, $fs5, $fa7
	fmadd.s	$fa6, $fa7, $fa2, $fa6
	fmul.s	$fa7, $ft1, $fa3
	fmadd.s	$fa7, $fs7, $fa2, $fa7
	fmadd.s	$fa7, $ft0, $fa1, $fa7
	fmov.s	$ft1, $ft0
	fld.s	$ft0, $sp, 84                   # 4-byte Folded Reload
	fnmadd.s	$ft0, $fs0, $fs4, $ft0
	fmadd.s	$fa7, $ft0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $ft1, $fa0
	fmadd.s	$fa0, $fs7, $fa3, $fa0
	fmadd.s	$fa0, $ft0, $fa1, $fa0
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	movfr2gr.s	$a0, $fa4
	movfr2gr.s	$a1, $fa6
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa7
	movfr2gr.s	$a2, $fa0
	bstrins.d	$a1, $a2, 63, 32
	st.d	$a0, $sp, 216
	st.d	$a1, $sp, 224
	addi.d	$a1, $sp, 216
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion)
	jirl	$ra, $ra, 0
	fld.d	$fs7, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end18:
	.size	_ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion, .Lfunc_end18-_ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion
.LCPI19_0:
	.word	0xbf7ffffe                      # float -0.99999988
.LCPI19_1:
	.word	0x3d4ccccd                      # float 0.0500000007
.LCPI19_2:
	.word	0x34000000                      # float 1.1920929E-7
.LCPI19_3:
	.word	0x40490fdb                      # float 3.14159274
	.text
	.globl	_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion
	.p2align	5
	.type	_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion,@function
_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion: # @_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion
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
	vld	$vr0, $a1, 0
	move	$fp, $a0
	vst	$vr0, $a0, 604
	fld.s	$fs1, $a0, 608
	fld.s	$fs5, $a0, 616
	fld.s	$fs7, $a0, 612
	movgr2fr.w	$fa1, $zero
	fmul.s	$fa0, $fs1, $fa1
	fadd.s	$fa0, $fs5, $fa0
	fneg.s	$fa4, $fs7
	fld.s	$fs3, $a0, 604
	fneg.s	$fa2, $fa1
	fmadd.s	$fa5, $fs7, $fa2, $fa0
	fmadd.s	$fa0, $fs5, $fa1, $fs7
	fneg.s	$fa3, $fs3
	fmadd.s	$fa6, $fs3, $fa2, $fa0
	fmul.s	$fa0, $fs3, $fa1
	fmadd.s	$fa0, $fs5, $fa1, $fa0
	fneg.s	$fa7, $fs1
	fsub.s	$ft0, $fa0, $fs1
	fmul.s	$fa0, $fs1, $fa2
	fsub.s	$fa0, $fa0, $fs3
	fmadd.s	$ft1, $fs7, $fa2, $fa0
	fmul.s	$fa0, $fs5, $fa5
	fmadd.s	$fa0, $ft1, $fa3, $fa0
	fmadd.s	$fa0, $fa6, $fa4, $fa0
	fmadd.s	$fa0, $ft0, $fs1, $fa0
	fmul.s	$ft2, $fs5, $fa6
	fmadd.s	$ft2, $ft1, $fa7, $ft2
	fmadd.s	$fa3, $ft0, $fa3, $ft2
	fmadd.s	$fa3, $fa5, $fs7, $fa3
	fmul.s	$ft0, $fs5, $ft0
	fmadd.s	$fa4, $ft1, $fa4, $ft0
	fmadd.s	$fa4, $fa5, $fa7, $fa4
	fmadd.s	$fa4, $fa6, $fs3, $fa4
	pcalau12i	$a0, %pc_hi20(.LCPI19_0)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI19_0)
	fmul.s	$fa5, $fa3, $fa1
	fadd.s	$fa5, $fa0, $fa5
	fmadd.s	$fa5, $fa4, $fa1, $fa5
	fcmp.clt.s	$fcc0, $fa5, $fa6
	bceqz	$fcc0, .LBB19_2
# %bb.1:
	vldi	$vr3, -1168
	fmov.s	$fa0, $fa1
	b	.LBB19_4
.LBB19_2:
	movgr2fr.w	$fa1, $zero
	fneg.s	$fa2, $fa1
	fmul.s	$fa6, $fa3, $fa2
	fmadd.s	$fs0, $fa4, $fa1, $fa6
	fmsub.s	$fs2, $fa0, $fa1, $fa4
	fmul.s	$fa2, $fa0, $fa2
	vldi	$vr0, -1168
	fadd.s	$fa0, $fa5, $fa0
	fadd.s	$fa1, $fa0, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	fadd.s	$fs4, $fa3, $fa2
	bceqz	$fcc0, .LBB19_28
.LBB19_3:                               # %.split
	frecip.s	$fa1, $fa0
	fmul.s	$fa2, $fs0, $fa1
	fmul.s	$fa3, $fs2, $fa1
	fmul.s	$fa1, $fs4, $fa1
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa0, $fa4
.LBB19_4:                               # %_Z15shortestArcQuatRK9btVector3S1_.exit
	fmul.s	$fa4, $fa3, $fa3
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fs2, $fa2, $fa4
	fmul.s	$fa5, $fa3, $fa4
	fmul.s	$fs4, $fa1, $fa4
	fmul.s	$fs0, $fa0, $fa4
	fneg.s	$fa0, $fs2
	fneg.s	$fa1, $fa5
	fneg.s	$fa2, $fs4
	fmul.s	$fa3, $fs5, $fa0
	fmadd.s	$fa3, $fs0, $fs3, $fa3
	fmadd.s	$fa3, $fa1, $fs7, $fa3
	fmadd.s	$fa3, $fs4, $fs1, $fa3
	fmul.s	$fa1, $fs5, $fa1
	fmadd.s	$fa1, $fs0, $fs1, $fa1
	fmadd.s	$fa1, $fa2, $fs3, $fa1
	fmadd.s	$fa6, $fs2, $fs7, $fa1
	fmul.s	$fa1, $fs5, $fa2
	fmadd.s	$fa1, $fs0, $fs7, $fa1
	fmadd.s	$fa0, $fa0, $fs1, $fa1
	fmadd.s	$fa1, $fa5, $fs3, $fa0
	fmul.s	$fa0, $fs3, $fs2
	fmadd.s	$fa0, $fs0, $fs5, $fa0
	fst.s	$fa5, $sp, 28                   # 4-byte Folded Spill
	fmadd.s	$fa0, $fa5, $fs1, $fa0
	fmadd.s	$fa2, $fs4, $fs7, $fa0
	fmul.s	$fa0, $fa6, $fa6
	fld.s	$fs3, $fp, 492
	pcalau12i	$a0, %pc_hi20(.LCPI19_1)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI19_1)
	fmadd.s	$fa0, $fa3, $fa3, $fa0
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fcmp.cult.s	$fcc0, $fs3, $fs1
	frsqrt.s	$fs5, $fa0
	bcnez	$fcc0, .LBB19_16
# %bb.5:                                # %_Z15shortestArcQuatRK9btVector3S1_.exit
	fld.s	$fs7, $fp, 496
	fcmp.cult.s	$fcc0, $fs7, $fs1
	bcnez	$fcc0, .LBB19_16
# %bb.6:
	fst.s	$fa2, $sp, 12                   # 4-byte Folded Spill
	fst.s	$fa1, $sp, 16                   # 4-byte Folded Spill
	fst.s	$fa3, $sp, 24                   # 4-byte Folded Spill
	fmov.s	$fa0, $fs0
	fst.s	$fa6, $sp, 20                   # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fld.s	$fa6, $sp, 20                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.LCPI19_2)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI19_2)
	fadd.s	$fa0, $fa0, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa1
                                        # implicit-def: $f7
                                        # implicit-def: $f30
                                        # implicit-def: $f5
	bcnez	$fcc0, .LBB19_10
# %bb.7:
	fld.s	$fa3, $sp, 28                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa3, $fa3
	fmadd.s	$fa2, $fs2, $fs2, $fa2
	fmadd.s	$fa2, $fs4, $fs4, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa5, $fs2, $fa2
	fmul.s	$fs6, $fa3, $fa2
	fabs.s	$fa3, $fs6
	fcmp.cule.s	$fcc0, $fa3, $fa1
	fmul.s	$fa2, $fs4, $fa2
	bcnez	$fcc0, .LBB19_9
# %bb.8:
	fmov.s	$fa7, $fa2
	fmul.s	$fa2, $fa2, $fa2
	fmul.s	$fa3, $fs6, $fs6
	fdiv.s	$fa2, $fa2, $fa3
	fmul.s	$fa3, $fs7, $fs7
	frecip.s	$fa3, $fa3
	fmul.s	$fa4, $fs3, $fs3
	fdiv.s	$fa4, $fa2, $fa4
	fadd.s	$fa3, $fa3, $fa4
	vldi	$vr4, -1168
	fadd.s	$fa2, $fa2, $fa4
	fdiv.s	$fa2, $fa2, $fa3
	fsqrt.s	$fs3, $fa2
	b	.LBB19_10
.LBB19_9:
	fmov.s	$fa7, $fa2
.LBB19_10:                              # %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit
	fabs.s	$fa2, $fa0
	fcmp.cule.s	$fcc0, $fa2, $fa1
	fld.s	$fa3, $sp, 24                   # 4-byte Folded Reload
	fld.s	$fa1, $sp, 16                   # 4-byte Folded Reload
	fld.s	$fa2, $sp, 12                   # 4-byte Folded Reload
	bcnez	$fcc0, .LBB19_16
# %bb.11:
	fcmp.clt.s	$fcc0, $fs3, $fa0
	bceqz	$fcc0, .LBB19_13
# %bb.12:
	fmov.s	$fa0, $fs3
	b	.LBB19_15
.LBB19_13:
	fneg.s	$fa1, $fs3
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB19_15
# %bb.14:
	fmov.s	$fa0, $fa1
.LBB19_15:
	fmul.s	$fa1, $fs6, $fs6
	fmadd.s	$fa1, $fa5, $fa5, $fa1
	fmadd.s	$fa1, $fa7, $fa7, $fa1
	fsqrt.s	$fs2, $fa1
	vldi	$vr1, -1184
	fmul.s	$fs0, $fa0, $fa1
	fmov.s	$fa0, $fs0
	fmov.s	$fs3, $fa5
	fmov.s	$fs4, $fa7
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs2
	fmul.s	$fs2, $fs3, $fa0
	fmul.s	$fa1, $fs6, $fa0
	fst.s	$fa1, $sp, 28                   # 4-byte Folded Spill
	fmul.s	$fs4, $fs4, $fa0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	fld.s	$fa3, $sp, 24                   # 4-byte Folded Reload
	fld.s	$fa6, $sp, 20                   # 4-byte Folded Reload
	fld.s	$fa1, $sp, 16                   # 4-byte Folded Reload
	fld.s	$fa2, $sp, 12                   # 4-byte Folded Reload
.LBB19_16:
	fld.s	$fa0, $fp, 500
	fmul.s	$fs3, $fa3, $fs5
	fmul.s	$fs6, $fa6, $fs5
	fmul.s	$fs7, $fa1, $fs5
	fcmp.cult.s	$fcc0, $fa0, $fs1
	fmul.s	$fs1, $fa2, $fs5
	bcnez	$fcc0, .LBB19_27
# %bb.17:
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI19_3)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI19_3)
	fadd.s	$fa0, $fa0, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	fmov.s	$fa3, $fs7
	fmov.s	$fa4, $fs3
	fmov.s	$fs5, $fs6
	bceqz	$fcc0, .LBB19_20
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.LCPI19_2)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI19_2)
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB19_21
.LBB19_19:                              # %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit
	fld.s	$fa5, $sp, 24                   # 4-byte Folded Reload
	fabs.s	$fa2, $fa0
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB19_22
	b	.LBB19_27
.LBB19_20:
	fneg.s	$fa0, $fs3
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fneg.s	$fs5, $fs6
	fneg.s	$fa0, $fs7
	fst.s	$fa0, $sp, 16                   # 4-byte Folded Spill
	fneg.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fld.s	$fa4, $sp, 20                   # 4-byte Folded Reload
	fld.s	$fa3, $sp, 16                   # 4-byte Folded Reload
	fadd.s	$fa0, $fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI19_2)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI19_2)
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_19
.LBB19_21:
	fmul.s	$fa2, $fs5, $fs5
	fmadd.s	$fa2, $fa4, $fa4, $fa2
	fmadd.s	$fa2, $fa3, $fa3, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fmul.s	$fs5, $fs5, $fa2
	fmul.s	$fa3, $fa3, $fa2
	fld.s	$fa5, $sp, 24                   # 4-byte Folded Reload
	fabs.s	$fa2, $fa0
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB19_27
.LBB19_22:
	fcmp.clt.s	$fcc0, $fa5, $fa0
	bceqz	$fcc0, .LBB19_24
# %bb.23:
	fmov.s	$fa0, $fa5
	b	.LBB19_26
.LBB19_24:
	fneg.s	$fa1, $fa5
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB19_26
# %bb.25:
	fmov.s	$fa0, $fa1
.LBB19_26:
	fmul.s	$fa1, $fs5, $fs5
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fsqrt.s	$fs3, $fa1
	vldi	$vr1, -1184
	fmul.s	$fs1, $fa0, $fa1
	fmov.s	$fa0, $fs1
	fmov.s	$fs7, $fa3
	fmov.s	$fs6, $fa4
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs3
	fmul.s	$fs3, $fs6, $fa0
	fmul.s	$fs6, $fs5, $fa0
	fmul.s	$fs7, $fs7, $fa0
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs1, $fa0
.LBB19_27:
	fmul.s	$fa0, $fs2, $fs1
	fmadd.s	$fa0, $fs0, $fs3, $fa0
	fld.s	$fa4, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa4, $fs7, $fa0
	fneg.s	$fa1, $fs4
	fmadd.s	$fa0, $fa1, $fs6, $fa0
	fmul.s	$fa2, $fa4, $fs1
	fmadd.s	$fa2, $fs0, $fs6, $fa2
	fmadd.s	$fa2, $fs4, $fs3, $fa2
	fneg.s	$fa3, $fs2
	fmadd.s	$fa2, $fa3, $fs7, $fa2
	fmul.s	$fa3, $fs4, $fs1
	fmadd.s	$fa3, $fs0, $fs7, $fa3
	fmadd.s	$fa3, $fs2, $fs6, $fa3
	fneg.s	$fa4, $fa4
	fmadd.s	$fa3, $fa4, $fs3, $fa3
	fneg.s	$fa5, $fs3
	fmul.s	$fa5, $fs2, $fa5
	fmadd.s	$fa5, $fs0, $fs1, $fa5
	fmadd.s	$fa4, $fa4, $fs6, $fa5
	fmadd.s	$fa1, $fa1, $fs7, $fa4
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	st.d	$a0, $fp, 604
	st.d	$a1, $fp, 612
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
.LBB19_28:                              # %call.sqrt
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	b	.LBB19_3
.Lfunc_end19:
	.size	_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion, .Lfunc_end19-_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion
                                        # -- End function
	.section	.text._ZN17btTypedConstraintD2Ev,"axG",@progbits,_ZN17btTypedConstraintD2Ev,comdat
	.weak	_ZN17btTypedConstraintD2Ev      # -- Begin function _ZN17btTypedConstraintD2Ev
	.p2align	5
	.type	_ZN17btTypedConstraintD2Ev,@function
_ZN17btTypedConstraintD2Ev:             # @_ZN17btTypedConstraintD2Ev
# %bb.0:
	ret
.Lfunc_end20:
	.size	_ZN17btTypedConstraintD2Ev, .Lfunc_end20-_ZN17btTypedConstraintD2Ev
                                        # -- End function
	.section	.text._ZN21btConeTwistConstraintD0Ev,"axG",@progbits,_ZN21btConeTwistConstraintD0Ev,comdat
	.weak	_ZN21btConeTwistConstraintD0Ev  # -- Begin function _ZN21btConeTwistConstraintD0Ev
	.p2align	5
	.type	_ZN21btConeTwistConstraintD0Ev,@function
_ZN21btConeTwistConstraintD0Ev:         # @_ZN21btConeTwistConstraintD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end21:
	.size	_ZN21btConeTwistConstraintD0Ev, .Lfunc_end21-_ZN21btConeTwistConstraintD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,"axG",@progbits,_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,comdat
	.weak	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif # -- Begin function _ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.p2align	5
	.type	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,@function
_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif: # @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
# %bb.0:
	ret
.Lfunc_end22:
	.size	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, .Lfunc_end22-_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
.LCPI23_0:
	.word	0x28800000                      # float 1.42108547E-14
	.section	.text._ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,"axG",@progbits,_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,comdat
	.weak	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
	.p2align	5
	.type	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,@function
_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf: # @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	move	$s0, $a3
	move	$fp, $a2
	fld.s	$fa0, $a0, 36
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a0, 20
	fld.s	$fa3, $a0, 40
	fneg.s	$fa4, $fa0
	fmul.s	$fa5, $fa1, $fa4
	fld.s	$fa6, $a0, 16
	fld.s	$fa7, $a0, 32
	fmadd.s	$fa5, $fa2, $fa3, $fa5
	fneg.s	$ft0, $fa3
	fmul.s	$ft1, $fa6, $ft0
	fmadd.s	$ft1, $fa1, $fa7, $ft1
	fneg.s	$ft2, $fa7
	fmul.s	$ft3, $fa2, $ft2
	fld.s	$ft4, $a0, 4
	fld.s	$ft5, $a0, 0
	fld.s	$ft6, $a0, 8
	fmadd.s	$ft3, $fa6, $fa0, $ft3
	fmul.s	$ft7, $ft4, $ft1
	fmadd.s	$ft7, $ft5, $fa5, $ft7
	fmadd.s	$ft7, $ft6, $ft3, $ft7
	frecip.s	$ft7, $ft7
	fmul.s	$fa5, $fa5, $ft7
	fmul.s	$ft0, $ft4, $ft0
	fmadd.s	$fa0, $ft6, $fa0, $ft0
	fmul.s	$fa0, $fa0, $ft7
	fneg.s	$ft0, $fa2
	fmul.s	$ft0, $ft6, $ft0
	fmadd.s	$ft0, $ft4, $fa1, $ft0
	fmul.s	$ft0, $ft0, $ft7
	fmul.s	$ft1, $ft1, $ft7
	fmul.s	$ft2, $ft6, $ft2
	fmadd.s	$fa3, $ft5, $fa3, $ft2
	fmul.s	$fa3, $fa3, $ft7
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $ft5, $fa1
	fmadd.s	$fa1, $ft6, $fa6, $fa1
	fmul.s	$fa1, $fa1, $ft7
	fmul.s	$ft2, $ft3, $ft7
	fmul.s	$fa4, $ft5, $fa4
	fmadd.s	$fa4, $ft4, $fa7, $fa4
	fmul.s	$fa4, $fa4, $ft7
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $ft4, $fa6
	fmadd.s	$fa2, $ft5, $fa2, $fa6
	fld.s	$fa6, $a1, 4
	fld.s	$fa7, $a1, 0
	fld.s	$ft3, $a1, 8
	fmul.s	$fa2, $fa2, $ft7
	fmul.s	$ft4, $fa6, $ft1
	fmadd.s	$ft4, $fa5, $fa7, $ft4
	fmadd.s	$ft4, $ft2, $ft3, $ft4
	fmul.s	$ft5, $fa6, $fa3
	fmadd.s	$ft5, $fa0, $fa7, $ft5
	fmadd.s	$ft5, $fa4, $ft3, $ft5
	fmul.s	$fa6, $fa6, $fa1
	fmadd.s	$fa6, $ft0, $fa7, $fa6
	fld.s	$fa7, $a1, 20
	fld.s	$ft6, $a1, 16
	fld.s	$ft7, $a1, 24
	fmadd.s	$fa6, $fa2, $ft3, $fa6
	fmul.s	$ft3, $ft1, $fa7
	fmadd.s	$ft3, $fa5, $ft6, $ft3
	fmadd.s	$ft3, $ft2, $ft7, $ft3
	fmul.s	$ft8, $fa3, $fa7
	fmadd.s	$ft8, $fa0, $ft6, $ft8
	fmadd.s	$ft8, $fa4, $ft7, $ft8
	fmul.s	$fa7, $fa1, $fa7
	fmadd.s	$fa7, $ft0, $ft6, $fa7
	fld.s	$ft6, $a1, 36
	fld.s	$ft9, $a1, 32
	fld.s	$ft10, $a1, 40
	fmadd.s	$fa7, $fa2, $ft7, $fa7
	fmul.s	$ft1, $ft1, $ft6
	fmadd.s	$fa5, $fa5, $ft9, $ft1
	fmadd.s	$fa5, $ft2, $ft10, $fa5
	fmul.s	$fa3, $fa3, $ft6
	fmadd.s	$fa0, $fa0, $ft9, $fa3
	fmadd.s	$fa0, $fa4, $ft10, $fa0
	fmul.s	$fa1, $fa1, $ft6
	fmadd.s	$fa1, $ft0, $ft9, $fa1
	fmadd.s	$fa1, $fa2, $ft10, $fa1
	fst.s	$ft4, $sp, 32
	fst.s	$ft5, $sp, 36
	fst.s	$fa6, $sp, 40
	st.w	$zero, $sp, 44
	fst.s	$ft3, $sp, 48
	fst.s	$ft8, $sp, 52
	fst.s	$fa7, $sp, 56
	st.w	$zero, $sp, 60
	fst.s	$fa5, $sp, 64
	fst.s	$fa0, $sp, 68
	fst.s	$fa1, $sp, 72
	st.w	$zero, $sp, 76
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 20
	fld.s	$fa1, $sp, 16
	fld.s	$fa2, $sp, 24
	fld.s	$fa3, $sp, 28
	fmul.s	$fa4, $fa0, $fa0
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fs0, $fa1, $fa4
	fmul.s	$fs1, $fa0, $fa4
	fmul.s	$fs2, $fa2, $fa4
	fmul.s	$fa0, $fa3, $fa4
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $s0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI23_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI23_0)
	fmul.s	$fa0, $fs1, $fs1
	fmadd.s	$fa0, $fs0, $fs0, $fa0
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	st.w	$zero, $fp, 12
	bceqz	$fcc0, .LBB23_2
# %bb.1:
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa0
	b	.LBB23_3
.LBB23_2:
	frsqrt.s	$fa2, $fa0
	fmul.s	$fa1, $fs0, $fa2
	fmul.s	$fa0, $fs1, $fa2
	fmul.s	$fa2, $fs2, $fa2
.LBB23_3:
	fst.s	$fa1, $fp, 0
	fst.s	$fa0, $fp, 4
	fst.s	$fa2, $fp, 8
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end23:
	.size	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf, .Lfunc_end23-_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK11btMatrix3x311getRotationER12btQuaternion,"axG",@progbits,_ZNK11btMatrix3x311getRotationER12btQuaternion,comdat
	.weak	_ZNK11btMatrix3x311getRotationER12btQuaternion # -- Begin function _ZNK11btMatrix3x311getRotationER12btQuaternion
	.p2align	5
	.type	_ZNK11btMatrix3x311getRotationER12btQuaternion,@function
_ZNK11btMatrix3x311getRotationER12btQuaternion: # @_ZNK11btMatrix3x311getRotationER12btQuaternion
	.cfi_startproc
# %bb.0:
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	fld.s	$fa0, $a0, 0
	fld.s	$fa2, $a0, 20
	fld.s	$fa1, $a0, 40
	fadd.s	$fa3, $fa0, $fa2
	fadd.s	$fa3, $fa3, $fa1
	movgr2fr.w	$fa4, $zero
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB24_3
# %bb.1:
	vldi	$vr0, -1168
	fadd.s	$fa1, $fa3, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB24_6
.LBB24_2:                               # %.split
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
	lu12i.w	$a0, 258048
	vreplgr2vr.w	$vr4, $a0
	vextrins.w	$vr4, $vr1, 0
	vextrins.w	$vr4, $vr3, 16
	vextrins.w	$vr4, $vr2, 32
	vfmul.s	$vr0, $vr0, $vr4
	b	.LBB24_5
.LBB24_3:
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
	bceqz	$fcc0, .LBB24_7
.LBB24_4:                               # %.split47
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
.LBB24_5:
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
.LBB24_6:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB24_2
.LBB24_7:                               # %call.sqrt48
	fmov.s	$fa0, $fa1
	move	$s5, $a1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	b	.LBB24_4
.Lfunc_end24:
	.size	_ZNK11btMatrix3x311getRotationER12btQuaternion, .Lfunc_end24-_ZNK11btMatrix3x311getRotationER12btQuaternion
	.cfi_endproc
                                        # -- End function
	.type	_ZTV21btConeTwistConstraint,@object # @_ZTV21btConeTwistConstraint
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV21btConeTwistConstraint
	.p2align	3, 0x0
_ZTV21btConeTwistConstraint:
	.dword	0
	.dword	_ZTI21btConeTwistConstraint
	.dword	_ZN17btTypedConstraintD2Ev
	.dword	_ZN21btConeTwistConstraintD0Ev
	.dword	_ZN21btConeTwistConstraint13buildJacobianEv
	.dword	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.dword	_ZN21btConeTwistConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.dword	_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.dword	_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.size	_ZTV21btConeTwistConstraint, 72

	.type	_ZTI21btConeTwistConstraint,@object # @_ZTI21btConeTwistConstraint
	.globl	_ZTI21btConeTwistConstraint
	.p2align	3, 0x0
_ZTI21btConeTwistConstraint:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS21btConeTwistConstraint
	.dword	_ZTI17btTypedConstraint
	.size	_ZTI21btConeTwistConstraint, 24

	.type	_ZTS21btConeTwistConstraint,@object # @_ZTS21btConeTwistConstraint
	.section	.rodata,"a",@progbits
	.globl	_ZTS21btConeTwistConstraint
_ZTS21btConeTwistConstraint:
	.asciz	"21btConeTwistConstraint"
	.size	_ZTS21btConeTwistConstraint, 24

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

	.globl	_ZN21btConeTwistConstraintC1Ev
	.type	_ZN21btConeTwistConstraintC1Ev,@function
_ZN21btConeTwistConstraintC1Ev = _ZN21btConeTwistConstraintC2Ev
	.globl	_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_
	.type	_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_,@function
_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_ = _ZN21btConeTwistConstraintC2ER11btRigidBodyS1_RK11btTransformS4_
	.globl	_ZN21btConeTwistConstraintC1ER11btRigidBodyRK11btTransform
	.type	_ZN21btConeTwistConstraintC1ER11btRigidBodyRK11btTransform,@function
_ZN21btConeTwistConstraintC1ER11btRigidBodyRK11btTransform = _ZN21btConeTwistConstraintC2ER11btRigidBodyRK11btTransform
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZTI21btConeTwistConstraint
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS21btConeTwistConstraint
	.addrsig_sym _ZTI17btTypedConstraint
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS17btTypedConstraint
	.addrsig_sym _ZTI13btTypedObject
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS13btTypedObject
