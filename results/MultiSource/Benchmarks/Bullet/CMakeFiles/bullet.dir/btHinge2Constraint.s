	.file	"btHinge2Constraint.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_
.LCPI0_0:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
.LCPI0_1:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_2:
	.word	0x421de9e7                      # float 39.4784203
.LCPI0_3:
	.word	0x3c23d70a                      # float 0.00999999977
	.text
	.globl	_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_
	.p2align	5
	.type	_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_,@function
_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_: # @_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
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
	pcalau12i	$s6, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	ld.b	$a6, $s6, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	move	$s3, $a5
	move	$s4, $a4
	move	$s2, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	dbar	20
	pcalau12i	$a0, %pc_hi20(_ZZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$s5, $a0, %pc_lo12(_ZZN11btTransform11getIdentityEvE17identityTransform)
	beqz	$a6, .LBB0_3
.LBB0_1:                                # %_ZN11btTransform11getIdentityEv.exit
	ld.b	$a0, $s6, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	dbar	20
	beqz	$a0, .LBB0_6
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(_ZZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a3, $a0, %pc_lo12(_ZZN11btTransform11getIdentityEvE17identityTransform)
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a4, $a3
	pcaddu18i	$ra, %call36(_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV18btHinge2Constraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18btHinge2Constraint+16)
	st.d	$a0, $fp, 0
	vld	$vr0, $s2, 0
	vst	$vr0, $fp, 1344
	vld	$vr0, $s4, 0
	vst	$vr0, $fp, 1360
	vld	$vr0, $s3, 0
	vst	$vr0, $fp, 1376
	fld.s	$fa0, $s4, 4
	fld.s	$fa1, $s4, 0
	fld.s	$fa3, $s4, 8
	fmul.s	$fa2, $fa0, $fa0
	fmadd.s	$fa2, $fa1, $fa1, $fa2
	fmadd.s	$fa2, $fa3, $fa3, $fa2
	frsqrt.s	$fa5, $fa2
	fmul.s	$fa2, $fa1, $fa5
	fst.s	$fa2, $s4, 0
	fmul.s	$fa4, $fa0, $fa5
	fst.s	$fa4, $s4, 4
	fmul.s	$fa0, $fa3, $fa5
	fst.s	$fa0, $s4, 8
	fld.s	$fa1, $s3, 4
	fld.s	$fa3, $s3, 0
	fld.s	$fa5, $s3, 8
	fmul.s	$fa6, $fa1, $fa1
	fmadd.s	$fa6, $fa3, $fa3, $fa6
	fmadd.s	$fa6, $fa5, $fa5, $fa6
	frsqrt.s	$fa6, $fa6
	fmul.s	$ft0, $fa3, $fa6
	fst.s	$ft0, $s3, 0
	fmul.s	$ft1, $fa1, $fa6
	fst.s	$ft1, $s3, 4
	fmul.s	$fa1, $fa5, $fa6
	fst.s	$fa1, $s3, 8
	fneg.s	$fa3, $ft1
	fmul.s	$fa3, $fa0, $fa3
	fmadd.s	$ft2, $fa4, $fa1, $fa3
	fneg.s	$fa3, $fa1
	fmul.s	$fa3, $fa2, $fa3
	fmadd.s	$ft3, $fa0, $ft0, $fa3
	fneg.s	$fa3, $ft0
	fmul.s	$fa3, $fa4, $fa3
	fmadd.s	$fa5, $fa2, $ft1, $fa3
	fld.s	$fa6, $s2, 0
	fld.s	$fa7, $s2, 4
	fld.s	$fa3, $s2, 8
	fld.s	$ft9, $s1, 8
	fld.s	$ft10, $s1, 24
	fld.s	$ft11, $s1, 40
	fld.s	$ft8, $s1, 12
	fld.s	$ft12, $s1, 28
	fld.s	$ft7, $s1, 44
	fld.s	$ft4, $s1, 16
	fld.s	$ft5, $s1, 32
	fld.s	$ft13, $s1, 56
	fld.s	$ft14, $s1, 60
	fld.s	$ft15, $s1, 64
	fld.s	$ft6, $s1, 48
	fneg.s	$ft13, $ft13
	fneg.s	$ft14, $ft14
	fneg.s	$ft15, $ft15
	fmul.s	$fs0, $ft10, $ft14
	fmadd.s	$fs0, $ft9, $ft13, $fs0
	fmadd.s	$fs0, $ft11, $ft15, $fs0
	fmul.s	$fs1, $ft12, $ft14
	fmadd.s	$fs1, $ft8, $ft13, $fs1
	fmadd.s	$fs1, $ft7, $ft15, $fs1
	fmul.s	$ft14, $ft5, $ft14
	fmadd.s	$ft13, $ft4, $ft13, $ft14
	fmadd.s	$ft13, $ft6, $ft15, $ft13
	fmul.s	$ft14, $ft1, $ft10
	fmadd.s	$ft14, $ft0, $ft9, $ft14
	fmadd.s	$ft14, $fa1, $ft11, $ft14
	fmul.s	$ft15, $ft3, $ft10
	fmadd.s	$ft15, $ft2, $ft9, $ft15
	fmadd.s	$ft15, $fa5, $ft11, $ft15
	fmul.s	$fs2, $fa4, $ft10
	fmadd.s	$fs2, $fa2, $ft9, $fs2
	fmadd.s	$fs2, $fa0, $ft11, $fs2
	fmul.s	$ft10, $fa7, $ft10
	fmadd.s	$ft9, $ft9, $fa6, $ft10
	fmul.s	$ft10, $ft1, $ft12
	fmadd.s	$ft10, $ft0, $ft8, $ft10
	fmadd.s	$ft10, $fa1, $ft7, $ft10
	fmadd.s	$ft9, $ft11, $fa3, $ft9
	fmul.s	$ft11, $ft3, $ft12
	fmadd.s	$ft11, $ft2, $ft8, $ft11
	fmadd.s	$ft11, $fa5, $ft7, $ft11
	fadd.s	$ft9, $ft9, $fs0
	fmul.s	$fs0, $fa4, $ft12
	fmadd.s	$fs0, $fa2, $ft8, $fs0
	fmadd.s	$fs0, $fa0, $ft7, $fs0
	fmul.s	$ft12, $fa7, $ft12
	fmadd.s	$ft8, $ft8, $fa6, $ft12
	fmul.s	$ft12, $ft1, $ft5
	fmadd.s	$ft12, $ft0, $ft4, $ft12
	fmadd.s	$ft7, $ft7, $fa3, $ft8
	fmul.s	$ft8, $ft3, $ft5
	fmadd.s	$ft8, $ft2, $ft4, $ft8
	fadd.s	$ft7, $ft7, $fs1
	fmul.s	$fs1, $fa4, $ft5
	fmadd.s	$fs1, $fa2, $ft4, $fs1
	fmul.s	$ft5, $fa7, $ft5
	fmadd.s	$ft4, $ft4, $fa6, $ft5
	fmadd.s	$ft5, $fa1, $ft6, $ft12
	fmadd.s	$ft8, $fa5, $ft6, $ft8
	fmadd.s	$ft12, $fa0, $ft6, $fs1
	fmadd.s	$ft4, $ft6, $fa3, $ft4
	fadd.s	$ft4, $ft4, $ft13
	movfr2gr.s	$a0, $ft9
	movfr2gr.s	$a1, $ft7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$ft14, $fp, 96
	fst.s	$ft15, $fp, 100
	fst.s	$fs2, $fp, 104
	st.w	$zero, $fp, 108
	fst.s	$ft10, $fp, 112
	fst.s	$ft11, $fp, 116
	fst.s	$fs0, $fp, 120
	st.w	$zero, $fp, 124
	fst.s	$ft5, $fp, 128
	fst.s	$ft8, $fp, 132
	fst.s	$ft12, $fp, 136
	st.w	$zero, $fp, 140
	st.d	$a0, $fp, 144
	st.d	$a1, $fp, 152
	fld.s	$ft4, $s0, 8
	fld.s	$ft5, $s0, 24
	fld.s	$ft6, $s0, 12
	fld.s	$ft7, $s0, 28
	fld.s	$ft8, $s0, 56
	fld.s	$ft9, $s0, 60
	fld.s	$ft10, $s0, 16
	fld.s	$ft11, $s0, 32
	fneg.s	$ft8, $ft8
	fneg.s	$ft9, $ft9
	fmul.s	$ft12, $ft5, $ft9
	fmadd.s	$ft12, $ft4, $ft8, $ft12
	fmul.s	$ft13, $ft7, $ft9
	fmadd.s	$ft13, $ft6, $ft8, $ft13
	fmul.s	$ft9, $ft11, $ft9
	fmadd.s	$ft8, $ft10, $ft8, $ft9
	fmul.s	$ft9, $ft1, $ft5
	fmadd.s	$ft9, $ft0, $ft4, $ft9
	fmul.s	$ft14, $ft3, $ft5
	fmadd.s	$ft14, $ft2, $ft4, $ft14
	fmul.s	$ft15, $fa4, $ft5
	fmadd.s	$ft15, $fa2, $ft4, $ft15
	fmul.s	$fs0, $ft1, $ft7
	fmadd.s	$fs0, $ft0, $ft6, $fs0
	fmul.s	$ft1, $ft1, $ft11
	fmadd.s	$ft0, $ft0, $ft10, $ft1
	fmul.s	$ft1, $ft3, $ft7
	fmadd.s	$ft1, $ft2, $ft6, $ft1
	fmul.s	$ft3, $ft3, $ft11
	fmadd.s	$ft2, $ft2, $ft10, $ft3
	fmul.s	$ft3, $fa4, $ft7
	fmadd.s	$ft3, $fa2, $ft6, $ft3
	fmul.s	$fa4, $fa4, $ft11
	fmadd.s	$fa2, $fa2, $ft10, $fa4
	fmul.s	$fa4, $fa7, $ft5
	fmadd.s	$fa4, $ft4, $fa6, $fa4
	fmul.s	$ft4, $fa7, $ft7
	fmadd.s	$ft4, $ft6, $fa6, $ft4
	fld.s	$ft5, $s0, 40
	fmul.s	$fa7, $fa7, $ft11
	fld.s	$ft6, $s0, 64
	fmadd.s	$fa6, $ft10, $fa6, $fa7
	fld.s	$fa7, $s0, 44
	fld.s	$ft7, $s0, 48
	fneg.s	$ft6, $ft6
	fmadd.s	$ft10, $ft5, $ft6, $ft12
	fmadd.s	$ft11, $fa7, $ft6, $ft13
	fmadd.s	$ft6, $ft7, $ft6, $ft8
	fmadd.s	$ft8, $fa1, $ft5, $ft9
	fmadd.s	$ft9, $fa1, $fa7, $fs0
	fmadd.s	$fa1, $fa1, $ft7, $ft0
	fmadd.s	$ft0, $fa5, $ft5, $ft14
	fmadd.s	$ft1, $fa5, $fa7, $ft1
	fmadd.s	$fa5, $fa5, $ft7, $ft2
	fmadd.s	$ft2, $fa0, $ft5, $ft15
	fmadd.s	$ft3, $fa0, $fa7, $ft3
	fmadd.s	$fa0, $fa0, $ft7, $fa2
	fmadd.s	$fa2, $ft5, $fa3, $fa4
	fmadd.s	$fa4, $fa7, $fa3, $ft4
	fmadd.s	$fa3, $ft7, $fa3, $fa6
	fadd.s	$fa2, $fa2, $ft10
	fadd.s	$fa4, $fa4, $ft11
	fadd.s	$fa3, $fa3, $ft6
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa4
	movfr2gr.s	$a2, $fa3
	fst.s	$ft8, $fp, 160
	fst.s	$ft0, $fp, 164
	fst.s	$ft2, $fp, 168
	fst.s	$ft9, $fp, 176
	fst.s	$ft1, $fp, 180
	fst.s	$ft3, $fp, 184
	fst.s	$fa1, $fp, 192
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr1, $a3, %pc_lo12(.LCPI0_0)
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	vld	$vr2, $a3, %pc_lo12(.LCPI0_1)
	fst.s	$fa5, $fp, 196
	fst.s	$fa0, $fp, 200
	vst	$vr1, $fp, 728
	vst	$vr2, $fp, 744
	bstrins.d	$a0, $a1, 63, 32
	bstrpick.d	$a1, $a2, 31, 0
	st.w	$zero, $fp, 172
	st.w	$zero, $fp, 188
	st.w	$zero, $fp, 204
	st.d	$a0, $fp, 208
	st.d	$a1, $fp, 216
	lu12i.w	$a0, 260096
	st.w	$a0, $fp, 868
	st.w	$zero, $fp, 924
	lu12i.w	$a0, -265072
	ori	$a0, $a0, 4059
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 980
	lu12i.w	$a0, -264192
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 872
	st.w	$zero, $fp, 928
	lu12i.w	$a0, 259216
	ori	$a0, $a0, 4059
	st.w	$a0, $fp, 984
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN29btGeneric6DofSpringConstraint12enableSpringEib)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI0_2)
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN29btGeneric6DofSpringConstraint12setStiffnessEif)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI0_3)
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN29btGeneric6DofSpringConstraint10setDampingEif)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv)
	jr	$t8
.LBB0_3:
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_1
# %bb.4:
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btMatrix3x311getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.5:
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $s5, 48
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB0_1
.LBB0_6:
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_2
# %bb.7:
.Ltmp3:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btMatrix3x311getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.8:
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $s5, 48
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_9:
.Ltmp5:                                 # EH_LABEL
	b	.LBB0_11
.LBB0_10:
.Ltmp2:                                 # EH_LABEL
.LBB0_11:                               # %common.resume
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	pcaddu18i	$ra, %call36(__cxa_guard_abort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_, .Lfunc_end0-_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN17btTypedConstraintD2Ev,"axG",@progbits,_ZN17btTypedConstraintD2Ev,comdat
	.weak	_ZN17btTypedConstraintD2Ev      # -- Begin function _ZN17btTypedConstraintD2Ev
	.p2align	5
	.type	_ZN17btTypedConstraintD2Ev,@function
_ZN17btTypedConstraintD2Ev:             # @_ZN17btTypedConstraintD2Ev
# %bb.0:
	ret
.Lfunc_end1:
	.size	_ZN17btTypedConstraintD2Ev, .Lfunc_end1-_ZN17btTypedConstraintD2Ev
                                        # -- End function
	.section	.text._ZN18btHinge2ConstraintD0Ev,"axG",@progbits,_ZN18btHinge2ConstraintD0Ev,comdat
	.weak	_ZN18btHinge2ConstraintD0Ev     # -- Begin function _ZN18btHinge2ConstraintD0Ev
	.p2align	5
	.type	_ZN18btHinge2ConstraintD0Ev,@function
_ZN18btHinge2ConstraintD0Ev:            # @_ZN18btHinge2ConstraintD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end2:
	.size	_ZN18btHinge2ConstraintD0Ev, .Lfunc_end2-_ZN18btHinge2ConstraintD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,"axG",@progbits,_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,comdat
	.weak	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif # -- Begin function _ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.p2align	5
	.type	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,@function
_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif: # @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
# %bb.0:
	ret
.Lfunc_end3:
	.size	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, .Lfunc_end3-_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
                                        # -- End function
	.section	.text._ZN11btMatrix3x311getIdentityEv,"axG",@progbits,_ZN11btMatrix3x311getIdentityEv,comdat
	.weak	_ZN11btMatrix3x311getIdentityEv # -- Begin function _ZN11btMatrix3x311getIdentityEv
	.p2align	5
	.type	_ZN11btMatrix3x311getIdentityEv,@function
_ZN11btMatrix3x311getIdentityEv:        # @_ZN11btMatrix3x311getIdentityEv
	.cfi_startproc
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	dbar	20
	beqz	$a0, .LBB4_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	ret
.LBB4_2:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB4_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 4
	st.w	$a1, $a0, 20
	vst	$vr0, $a0, 24
	st.d	$a1, $a0, 40
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
.LBB4_4:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcalau12i	$a0, %pc_hi20(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	ret
.Lfunc_end4:
	.size	_ZN11btMatrix3x311getIdentityEv, .Lfunc_end4-_ZN11btMatrix3x311getIdentityEv
	.cfi_endproc
                                        # -- End function
	.type	_ZTV18btHinge2Constraint,@object # @_ZTV18btHinge2Constraint
	.section	.data.rel.ro._ZTV18btHinge2Constraint,"awG",@progbits,_ZTV18btHinge2Constraint,comdat
	.weak	_ZTV18btHinge2Constraint
	.p2align	3, 0x0
_ZTV18btHinge2Constraint:
	.dword	0
	.dword	_ZTI18btHinge2Constraint
	.dword	_ZN17btTypedConstraintD2Ev
	.dword	_ZN18btHinge2ConstraintD0Ev
	.dword	_ZN23btGeneric6DofConstraint13buildJacobianEv
	.dword	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.dword	_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.dword	_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.dword	_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.dword	_ZN23btGeneric6DofConstraint13calcAnchorPosEv
	.size	_ZTV18btHinge2Constraint, 80

	.type	_ZTI18btHinge2Constraint,@object # @_ZTI18btHinge2Constraint
	.section	.data.rel.ro._ZTI18btHinge2Constraint,"awG",@progbits,_ZTI18btHinge2Constraint,comdat
	.weak	_ZTI18btHinge2Constraint
	.p2align	3, 0x0
_ZTI18btHinge2Constraint:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18btHinge2Constraint
	.dword	_ZTI29btGeneric6DofSpringConstraint
	.size	_ZTI18btHinge2Constraint, 24

	.type	_ZTS18btHinge2Constraint,@object # @_ZTS18btHinge2Constraint
	.section	.rodata._ZTS18btHinge2Constraint,"aG",@progbits,_ZTS18btHinge2Constraint,comdat
	.weak	_ZTS18btHinge2Constraint
_ZTS18btHinge2Constraint:
	.asciz	"18btHinge2Constraint"
	.size	_ZTS18btHinge2Constraint, 21

	.type	_ZZN11btTransform11getIdentityEvE17identityTransform,@object # @_ZZN11btTransform11getIdentityEvE17identityTransform
	.section	.bss._ZZN11btTransform11getIdentityEvE17identityTransform,"awG",@nobits,_ZZN11btTransform11getIdentityEvE17identityTransform,comdat
	.weak	_ZZN11btTransform11getIdentityEvE17identityTransform
	.p2align	2, 0x0
_ZZN11btTransform11getIdentityEvE17identityTransform:
	.space	64
	.size	_ZZN11btTransform11getIdentityEvE17identityTransform, 64

	.type	_ZGVZN11btTransform11getIdentityEvE17identityTransform,@object # @_ZGVZN11btTransform11getIdentityEvE17identityTransform
	.section	.bss._ZGVZN11btTransform11getIdentityEvE17identityTransform,"awG",@nobits,_ZGVZN11btTransform11getIdentityEvE17identityTransform,comdat
	.weak	_ZGVZN11btTransform11getIdentityEvE17identityTransform
	.p2align	3, 0x0
_ZGVZN11btTransform11getIdentityEvE17identityTransform:
	.dword	0                               # 0x0
	.size	_ZGVZN11btTransform11getIdentityEvE17identityTransform, 8

	.type	_ZZN11btMatrix3x311getIdentityEvE14identityMatrix,@object # @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix
	.section	.bss._ZZN11btMatrix3x311getIdentityEvE14identityMatrix,"awG",@nobits,_ZZN11btMatrix3x311getIdentityEvE14identityMatrix,comdat
	.weak	_ZZN11btMatrix3x311getIdentityEvE14identityMatrix
	.p2align	2, 0x0
_ZZN11btMatrix3x311getIdentityEvE14identityMatrix:
	.space	48
	.size	_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, 48

	.type	_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix,@object # @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix
	.section	.bss._ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix,"awG",@nobits,_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix,comdat
	.weak	_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix
	.p2align	3, 0x0
_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix:
	.dword	0                               # 0x0
	.size	_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix, 8

	.globl	_ZN18btHinge2ConstraintC1ER11btRigidBodyS1_R9btVector3S3_S3_
	.type	_ZN18btHinge2ConstraintC1ER11btRigidBodyS1_R9btVector3S3_S3_,@function
_ZN18btHinge2ConstraintC1ER11btRigidBodyS1_R9btVector3S3_S3_ = _ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTI18btHinge2Constraint
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS18btHinge2Constraint
	.addrsig_sym _ZTI29btGeneric6DofSpringConstraint
	.addrsig_sym _ZZN11btTransform11getIdentityEvE17identityTransform
	.addrsig_sym _ZGVZN11btTransform11getIdentityEvE17identityTransform
	.addrsig_sym _ZZN11btMatrix3x311getIdentityEvE14identityMatrix
	.addrsig_sym _ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix
