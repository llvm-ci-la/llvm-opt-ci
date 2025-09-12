	.file	"btConvexPlaneCollisionAlgorithm.cpp"
	.text
	.globl	_ZN31btConvexPlaneCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii # -- Begin function _ZN31btConvexPlaneCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii
	.p2align	5
	.type	_ZN31btConvexPlaneCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii,@function
_ZN31btConvexPlaneCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii: # @_ZN31btConvexPlaneCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s3, $a7
	move	$s4, $a6
	move	$s0, $a5
	move	$s2, $a4
	move	$s1, $a3
	move	$s5, $a1
	move	$fp, $a0
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZN20btCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfo)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV31btConvexPlaneCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV31btConvexPlaneCollisionAlgorithm+16)
	st.d	$a0, $fp, 0
	st.b	$zero, $fp, 16
	st.d	$s5, $fp, 24
	st.b	$s0, $fp, 32
	st.w	$s4, $fp, 36
	st.w	$s3, $fp, 40
	bnez	$s5, .LBB0_3
# %bb.1:
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	masknez	$a2, $s1, $s0
	maskeqz	$a3, $s2, $s0
	or	$s3, $a3, $a2
	ld.d	$a3, $a1, 48
	masknez	$a1, $s2, $s0
	maskeqz	$a2, $s1, $s0
	or	$s0, $a2, $a1
	move	$a1, $s3
	move	$a2, $s0
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB0_3
# %bb.2:
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
	move	$a1, $s3
	move	$a2, $s0
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 24
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 16
.LBB0_3:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	_ZN31btConvexPlaneCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii, .Lfunc_end0-_ZN31btConvexPlaneCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN31btConvexPlaneCollisionAlgorithmD2Ev # -- Begin function _ZN31btConvexPlaneCollisionAlgorithmD2Ev
	.p2align	5
	.type	_ZN31btConvexPlaneCollisionAlgorithmD2Ev,@function
_ZN31btConvexPlaneCollisionAlgorithmD2Ev: # @_ZN31btConvexPlaneCollisionAlgorithmD2Ev
	.cfi_startproc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV31btConvexPlaneCollisionAlgorithm+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV31btConvexPlaneCollisionAlgorithm+16)
	ld.bu	$a2, $a0, 16
	st.d	$a1, $a0, 0
	beqz	$a2, .LBB1_3
# %bb.1:
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB1_3
# %bb.2:
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
	jr	$a2
.LBB1_3:
	ret
.Lfunc_end1:
	.size	_ZN31btConvexPlaneCollisionAlgorithmD2Ev, .Lfunc_end1-_ZN31btConvexPlaneCollisionAlgorithmD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN31btConvexPlaneCollisionAlgorithmD0Ev # -- Begin function _ZN31btConvexPlaneCollisionAlgorithmD0Ev
	.p2align	5
	.type	_ZN31btConvexPlaneCollisionAlgorithmD0Ev,@function
_ZN31btConvexPlaneCollisionAlgorithmD0Ev: # @_ZN31btConvexPlaneCollisionAlgorithmD0Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV31btConvexPlaneCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV31btConvexPlaneCollisionAlgorithm+16)
	ld.bu	$a1, $fp, 16
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB2_3
# %bb.1:
	ld.d	$a1, $fp, 24
	beqz	$a1, .LBB2_3
# %bb.2:
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
.Ltmp0:                                 # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp1:                                 # EH_LABEL
.LBB2_3:                                # %_ZN31btConvexPlaneCollisionAlgorithmD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB2_4:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN31btConvexPlaneCollisionAlgorithmD0Ev, .Lfunc_end2-_ZN31btConvexPlaneCollisionAlgorithmD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end2-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult: # @_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 88                   # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.bu	$a4, $a0, 32
	move	$fp, $a5
	masknez	$a0, $a2, $a4
	maskeqz	$a5, $a3, $a4
	or	$a0, $a5, $a0
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$s1, $a2, $a3
	fld.s	$ft12, $a0, 8
	fld.s	$ft13, $a0, 12
	fld.s	$ft10, $a0, 24
	fld.s	$ft11, $a0, 28
	fld.s	$ft1, $a0, 56
	fld.s	$ft14, $a0, 60
	fld.s	$ft4, $s1, 8
	fld.s	$ft6, $s1, 24
	fld.s	$ft5, $s1, 12
	fld.s	$ft7, $s1, 28
	fld.s	$fa0, $s1, 56
	fld.s	$fa1, $s1, 60
	fld.s	$ft8, $s1, 16
	fld.s	$ft9, $s1, 32
	fneg.s	$fa2, $fa0
	fneg.s	$fa3, $fa1
	fmul.s	$fa0, $ft6, $fa3
	fmadd.s	$fa0, $ft4, $fa2, $fa0
	fst.s	$fa0, $sp, 52                   # 4-byte Folded Spill
	fmul.s	$fa1, $ft7, $fa3
	fmadd.s	$fa0, $ft5, $fa2, $fa1
	fst.s	$fa0, $sp, 48                   # 4-byte Folded Spill
	fmul.s	$fa3, $ft9, $fa3
	fmadd.s	$fa0, $ft8, $fa2, $fa3
	fst.s	$fa0, $sp, 44                   # 4-byte Folded Spill
	fmul.s	$fa3, $ft10, $ft6
	fmadd.s	$fa0, $ft12, $ft4, $fa3
	fst.s	$fa0, $sp, 40                   # 4-byte Folded Spill
	fmul.s	$fa4, $ft11, $ft6
	fmadd.s	$fa0, $ft13, $ft4, $fa4
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	fmul.s	$fa5, $ft10, $ft7
	fmadd.s	$fa0, $ft12, $ft5, $fa5
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fmul.s	$fa5, $ft11, $ft7
	fmadd.s	$fa7, $ft13, $ft5, $fa5
	fmul.s	$fa5, $ft10, $ft9
	fmadd.s	$ft2, $ft12, $ft8, $fa5
	fmul.s	$fa5, $ft11, $ft9
	fmadd.s	$ft3, $ft13, $ft8, $fa5
	fmul.s	$fa5, $ft14, $ft6
	fmadd.s	$fa0, $ft4, $ft1, $fa5
	fst.s	$fa0, $sp, 32                   # 4-byte Folded Spill
	fmul.s	$ft0, $ft14, $ft7
	fmadd.s	$ft0, $ft5, $ft1, $ft0
	fmul.s	$ft14, $ft14, $ft9
	fmadd.s	$ft1, $ft8, $ft1, $ft14
	fld.s	$ft14, $a1, 4
	fld.s	$ft15, $a1, 0
	fld.s	$fs0, $a1, 8
	fld.s	$fs1, $a1, 12
	fmul.s	$fs2, $ft14, $ft14
	fmadd.s	$fs2, $ft15, $ft15, $fs2
	fmadd.s	$fs2, $fs0, $fs0, $fs2
	fmadd.s	$fs2, $fs1, $fs1, $fs2
	vldi	$vr27, -1280
	fdiv.s	$fs2, $fs3, $fs2
	fmul.s	$fs3, $ft15, $fs2
	fmul.s	$fs4, $ft14, $fs2
	fmul.s	$fs2, $fs0, $fs2
	fmul.s	$fs5, $fs1, $fs3
	fmul.s	$fs6, $fs1, $fs4
	fmul.s	$fs1, $fs1, $fs2
	fmul.s	$fs7, $ft15, $fs3
	fmul.s	$fs3, $ft15, $fs4
	fmul.s	$fa0, $ft15, $fs2
	fmul.s	$fa1, $ft14, $fs4
	fmul.s	$ft14, $ft14, $fs2
	fmul.s	$fs4, $fs0, $fs2
	fsub.s	$fs0, $fs3, $fs1
	fadd.s	$fs2, $fs3, $fs1
	fadd.s	$ft15, $fa0, $fs6
	fsub.s	$fa4, $fa0, $fs6
	fsub.s	$fs1, $ft14, $fs5
	fadd.s	$fs3, $ft14, $fs5
	fadd.s	$ft14, $fa1, $fs4
	fadd.s	$fs4, $fs7, $fs4
	fadd.s	$fa1, $fs7, $fa1
	vldi	$vr29, -1168
	fsub.s	$fs7, $fs5, $ft14
	fsub.s	$fs6, $fs5, $fs4
	fsub.s	$fs5, $fs5, $fa1
	fmul.s	$fa1, $ft13, $fs2
	fmadd.s	$fa3, $fs7, $ft12, $fa1
	fmul.s	$ft14, $ft13, $fs6
	fmadd.s	$fs4, $fs0, $ft12, $ft14
	fld.s	$fa1, $a0, 32
	fld.s	$fa0, $a0, 16
	fmul.s	$ft13, $ft13, $fs1
	fmadd.s	$fa2, $ft15, $ft12, $ft13
	fmul.s	$ft12, $fa1, $ft6
	fmadd.s	$ft12, $fa0, $ft4, $ft12
	fmul.s	$ft13, $fa1, $ft7
	fmadd.s	$ft13, $fa0, $ft5, $ft13
	fmul.s	$ft14, $fa1, $ft9
	fmadd.s	$ft14, $fa0, $ft8, $ft14
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fs4, $fs3, $fa0, $fs4
	fmadd.s	$fa0, $fs5, $fa0, $fa2
	fmul.s	$fa2, $ft11, $fs2
	fmadd.s	$fa2, $fs7, $ft10, $fa2
	fmul.s	$fa5, $ft11, $fs6
	fmadd.s	$fa5, $fs0, $ft10, $fa5
	fmul.s	$ft11, $ft11, $fs1
	fmadd.s	$ft10, $ft15, $ft10, $ft11
	fmadd.s	$fa2, $fa4, $fa1, $fa2
	fmadd.s	$fa5, $fs3, $fa1, $fa5
	fmadd.s	$fa1, $fs5, $fa1, $ft10
	fmul.s	$ft10, $ft6, $fa2
	fmadd.s	$ft10, $ft4, $fa3, $ft10
	fmul.s	$ft11, $ft7, $fa2
	fmadd.s	$ft11, $ft5, $fa3, $ft11
	fmul.s	$fa2, $ft9, $fa2
	fmadd.s	$fa2, $ft8, $fa3, $fa2
	fmul.s	$fa3, $ft6, $fa5
	fmadd.s	$fa3, $ft4, $fs4, $fa3
	fmul.s	$fa6, $ft7, $fa5
	fmadd.s	$fa6, $ft5, $fs4, $fa6
	fmul.s	$fa5, $ft9, $fa5
	fmadd.s	$fa5, $ft8, $fs4, $fa5
	fmul.s	$ft6, $ft6, $fa1
	fmadd.s	$ft4, $ft4, $fa0, $ft6
	fmul.s	$ft6, $ft7, $fa1
	fmadd.s	$ft5, $ft5, $fa0, $ft6
	fmul.s	$fa1, $ft9, $fa1
	fld.s	$ft6, $a0, 44
	fld.s	$ft7, $a0, 40
	fld.s	$ft9, $a0, 48
	fmadd.s	$fa0, $ft8, $fa0, $fa1
	fmul.s	$fa1, $ft6, $fs2
	fmadd.s	$fa1, $fs7, $ft7, $fa1
	fmadd.s	$fa1, $fa4, $ft9, $fa1
	fmul.s	$fa4, $ft6, $fs6
	fmadd.s	$fa4, $fs0, $ft7, $fa4
	fmadd.s	$fa4, $fs3, $ft9, $fa4
	ld.d	$s2, $s1, 200
	fmul.s	$ft8, $ft6, $fs1
	fmadd.s	$ft8, $ft15, $ft7, $ft8
	fld.s	$ft15, $s1, 40
	fmadd.s	$ft8, $fs5, $ft9, $ft8
	fld.s	$fs0, $s1, 44
	fld.s	$fs1, $s2, 60
	fld.s	$fs2, $s2, 64
	fmadd.s	$ft10, $ft15, $fa1, $ft10
	fmadd.s	$ft11, $fs0, $fa1, $ft11
	fneg.s	$fs1, $fs1
	fneg.s	$fs2, $fs2
	fmul.s	$ft11, $ft11, $fs2
	fmadd.s	$ft10, $ft10, $fs1, $ft11
	fmadd.s	$fa3, $ft15, $fa4, $fa3
	fmadd.s	$fa6, $fs0, $fa4, $fa6
	fmul.s	$fa6, $fa6, $fs2
	fmadd.s	$fa3, $fa3, $fs1, $fa6
	fmadd.s	$fa6, $fs0, $ft8, $ft5
	fld.s	$ft5, $s1, 48
	fmul.s	$fa6, $fa6, $fs2
	fmadd.s	$ft4, $ft15, $ft8, $ft4
	fmadd.s	$fa6, $ft4, $fs1, $fa6
	fmadd.s	$fa1, $ft5, $fa1, $fa2
	fld.s	$fa2, $s2, 68
	fmadd.s	$fa4, $ft5, $fa4, $fa5
	fmadd.s	$fa0, $ft5, $ft8, $fa0
	fld.s	$fa5, $s1, 64
	fneg.s	$fa2, $fa2
	fmadd.s	$fa1, $fa1, $fa2, $ft10
	fmadd.s	$fa3, $fa4, $fa2, $fa3
	fmadd.s	$fa0, $fa0, $fa2, $fa6
	fneg.s	$fa2, $fa5
	fld.s	$fa4, $sp, 52                   # 4-byte Folded Reload
	fmadd.s	$fa4, $ft15, $fa2, $fa4
	fld.s	$fa5, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fa5, $fs0, $fa2, $fa5
	fld.s	$fa6, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fa2, $ft5, $fa2, $fa6
	fld.s	$fa6, $sp, 40                   # 4-byte Folded Reload
	fmadd.s	$fs1, $ft7, $ft15, $fa6
	fld.s	$fa6, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fa6, $ft7, $fs0, $fa6
	fst.s	$fa6, $sp, 44                   # 4-byte Folded Spill
	fmadd.s	$fa6, $ft7, $ft5, $ft2
	fst.s	$fa6, $sp, 52                   # 4-byte Folded Spill
	fld.s	$fa6, $sp, 36                   # 4-byte Folded Reload
	fmadd.s	$fs4, $ft6, $ft15, $fa6
	fmadd.s	$fs5, $ft6, $fs0, $fa7
	fmadd.s	$fa6, $ft6, $ft5, $ft3
	fst.s	$fa6, $sp, 40                   # 4-byte Folded Spill
	fmadd.s	$fs7, $ft9, $ft15, $ft12
	fmadd.s	$fs3, $ft9, $fs0, $ft13
	fmadd.s	$fa6, $ft9, $ft5, $ft14
	fst.s	$fa6, $sp, 48                   # 4-byte Folded Spill
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa3
	movfr2gr.s	$a3, $fa0
	fld.s	$fa0, $a0, 64
	ld.d	$a0, $a0, 200
	bstrins.d	$a1, $a2, 63, 32
	bstrpick.d	$a2, $a3, 31, 0
	st.d	$a1, $sp, 72
	st.d	$a2, $sp, 80
	ld.d	$a1, $a0, 0
	fld.s	$fa1, $sp, 32                   # 4-byte Folded Reload
	fmadd.s	$fa1, $ft15, $fa0, $fa1
	fmadd.s	$fa3, $fs0, $fa0, $ft0
	fmadd.s	$fa0, $ft5, $fa0, $ft1
	ld.d	$a2, $a1, 96
	fadd.s	$fs0, $fa1, $fa4
	fadd.s	$fs2, $fa3, $fa5
	fadd.s	$fs6, $fa0, $fa2
	addi.d	$a1, $sp, 72
	jirl	$ra, $a2, 0
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	fmul.s	$fa3, $fs4, $fa1
	fmadd.s	$fa3, $fs1, $fa0, $fa3
	fmadd.s	$fa3, $fs7, $fa2, $fa3
	fadd.s	$fs1, $fs0, $fa3
	fmul.s	$fa3, $fs5, $fa1
	fld.s	$fa4, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fs3, $fa2, $fa3
	fadd.s	$fs2, $fs2, $fa3
	fld.s	$fa3, $sp, 40                   # 4-byte Folded Reload
	fmul.s	$fa1, $fa3, $fa1
	fld.s	$fa3, $sp, 52                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa3, $fa0, $fa1
	fld.s	$fs7, $s2, 64
	fld.s	$fa1, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fadd.s	$fs3, $fs6, $fa0
	fld.s	$fs4, $s2, 60
	fmul.s	$fa0, $fs7, $fs2
	fld.s	$fs6, $s2, 68
	fld.s	$fa1, $s2, 76
	fld.s	$fa2, $s1, 8
	fst.s	$fa2, $sp, 52                   # 4-byte Folded Spill
	fld.s	$fa2, $s1, 12
	fst.s	$fa2, $sp, 40                   # 4-byte Folded Spill
	fld.s	$fa2, $s1, 16
	fst.s	$fa2, $sp, 48                   # 4-byte Folded Spill
	fld.s	$fa2, $s1, 56
	fst.s	$fa2, $sp, 44                   # 4-byte Folded Spill
	fld.s	$fa2, $s1, 24
	fst.s	$fa2, $sp, 36                   # 4-byte Folded Spill
	fld.s	$fa2, $s1, 28
	fst.s	$fa2, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa2, $s1, 32
	fst.s	$fa2, $sp, 32                   # 4-byte Folded Spill
	fld.s	$fa2, $s1, 60
	fst.s	$fa2, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa2, $s1, 40
	fst.s	$fa2, $sp, 20                   # 4-byte Folded Spill
	fld.s	$fs5, $s1, 44
	fld.s	$fa2, $s1, 48
	fst.s	$fa2, $sp, 16                   # 4-byte Folded Spill
	fld.s	$fa2, $s1, 64
	fst.s	$fa2, $sp, 12                   # 4-byte Folded Spill
	ld.d	$a0, $s0, 24
	fmadd.s	$fa0, $fs4, $fs1, $fa0
	fmadd.s	$fa0, $fs6, $fs3, $fa0
	fsub.s	$fs0, $fa0, $fa1
	pcaddu18i	$ra, %call36(_ZNK20btPersistentManifold27getContactBreakingThresholdEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	fcmp.cule.s	$fcc0, $fa0, $fs0
	st.d	$a0, $fp, 8
	bcnez	$fcc0, .LBB3_2
# %bb.1:
	fmul.s	$fa0, $fs6, $fs0
	fsub.s	$fa0, $fs3, $fa0
	fmul.s	$fa1, $fs4, $fs0
	fsub.s	$fa1, $fs1, $fa1
	fmul.s	$fa2, $fs7, $fs0
	fsub.s	$fa2, $fs2, $fa2
	fmul.s	$fa3, $fa2, $fs5
	fld.s	$fa4, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fld.s	$fa4, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fld.s	$fa4, $sp, 12                   # 4-byte Folded Reload
	fadd.s	$fa3, $fa4, $fa3
	movfr2gr.s	$a0, $fa3
	bstrpick.d	$a0, $a0, 31, 0
	fld.s	$fa3, $sp, 24                   # 4-byte Folded Reload
	fmul.s	$fa3, $fa3, $fa2
	fld.s	$fa4, $sp, 36                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fld.s	$fa4, $sp, 32                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fld.s	$fa4, $sp, 28                   # 4-byte Folded Reload
	fadd.s	$fa3, $fa4, $fa3
	movfr2gr.s	$a1, $fa3
	fld.s	$fa3, $sp, 40                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa3, $fa2
	fld.s	$fa3, $sp, 52                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa3, $fa1, $fa2
	fld.s	$fa2, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fld.s	$fa1, $sp, 44                   # 4-byte Folded Reload
	fadd.s	$fa0, $fa1, $fa0
	movfr2gr.s	$a2, $fa0
	fld.s	$fa0, $s1, 12
	fld.s	$fa1, $s2, 64
	bstrins.d	$a2, $a1, 63, 32
	fld.s	$fa2, $s1, 8
	fld.s	$fa3, $s2, 60
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $s1, 16
	fld.s	$fa5, $s2, 68
	fld.s	$fa6, $s1, 28
	fld.s	$fa7, $s1, 24
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmul.s	$fa2, $fa1, $fa6
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fld.s	$fa4, $s1, 32
	fld.s	$fa6, $s1, 44
	fld.s	$fa7, $s1, 40
	fld.s	$ft0, $s1, 48
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fa1, $ft0, $fa5, $fa1
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a3, $fa2
	bstrins.d	$a1, $a3, 63, 32
	ld.d	$a3, $fp, 0
	movfr2gr.s	$a4, $fa1
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a1, $sp, 72
	ld.d	$a3, $a3, 32
	st.d	$a4, $sp, 80
	st.d	$a2, $sp, 56
	st.d	$a0, $sp, 64
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a0, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a3, 0
.LBB3_2:
	fld.d	$fs7, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end3:
	.size	_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end3-_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
.LCPI4_0:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_1:
	.word	0x3f3504f3                      # float 0.707106769
.LCPI4_2:
	.word	0x3ec90fdb                      # float 0.392699093
.LCPI4_3:
	.word	0x40c90fdb                      # float 6.28318548
	.text
	.globl	_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 40                   # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB4_12
# %bb.1:
	move	$fp, $a4
	move	$s1, $a2
	move	$s2, $a1
	ld.bu	$a0, $s0, 32
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	masknez	$a2, $s1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a2
	ld.d	$s3, $a1, 200
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_0)
	ld.d	$s4, $a0, 200
	vst	$vr0, $sp, 16
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	move	$a2, $s2
	move	$a3, $s1
	move	$a5, $a4
	pcaddu18i	$ra, %call36(_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.w	$a0, $a0, 728
	ld.w	$a1, $s0, 40
	bge	$a0, $a1, .LBB4_8
# %bb.2:
	fld.s	$fa0, $s4, 68
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI4_1)
	fabs.s	$fa2, $fa0
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB4_4
# %bb.3:
	fld.s	$fa1, $s4, 64
	fmul.s	$fa2, $fa0, $fa0
	fmadd.s	$fa2, $fa1, $fa1, $fa2
	frsqrt.s	$fa2, $fa2
	fneg.s	$fa0, $fa0
	fmul.s	$fs4, $fa2, $fa0
	fmul.s	$fs5, $fa1, $fa2
	movgr2fr.w	$fs2, $zero
	b	.LBB4_5
.LBB4_4:
	fld.s	$fa0, $s4, 64
	fld.s	$fa1, $s4, 60
	fmul.s	$fa2, $fa0, $fa0
	fmadd.s	$fa2, $fa1, $fa1, $fa2
	frsqrt.s	$fa2, $fa2
	fneg.s	$fa0, $fa0
	fmul.s	$fs2, $fa2, $fa0
	fmul.s	$fs4, $fa1, $fa2
	movgr2fr.w	$fs5, $zero
.LBB4_5:                                # %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s3
	jirl	$ra, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(gContactBreakingThreshold)
	ld.d	$a0, $a0, %got_pc_lo12(gContactBreakingThreshold)
	fld.s	$fa1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI4_2)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI4_2)
	fdiv.s	$fa0, $fa1, $fa0
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa0, $fa2, $fcc0
	vldi	$vr1, -1184
	fmul.s	$fs0, $fa0, $fa1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fs1, $fa0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 36
	blez	$a0, .LBB4_8
# %bb.6:                                # %.lr.ph
	fmov.s	$fs7, $fa0
	move	$s3, $zero
	fmul.s	$fa0, $fs4, $fs4
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	fmadd.s	$fa0, $fs5, $fs5, $fa0
	fsqrt.s	$fa0, $fa0
	fdiv.s	$fa0, $fs1, $fa0
	fmul.s	$fa1, $fs2, $fa0
	fst.s	$fa1, $sp, 12                   # 4-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI4_3)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI4_3)
	fst.s	$fa1, $sp, 8                    # 4-byte Folded Spill
	fmul.s	$fs4, $fs4, $fa0
	fmul.s	$fs5, $fs5, $fa0
	.p2align	4, , 16
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a1, $s3, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fld.s	$fa2, $sp, 8                    # 4-byte Folded Reload
	fdiv.s	$fa1, $fa2, $fa1
	fld.s	$fs6, $s4, 64
	fmov.s	$fs2, $fs7
	fld.s	$fs7, $s4, 60
	fld.s	$fs3, $s4, 68
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa1, $fs6, $fs6
	fmadd.s	$fa1, $fs7, $fs7, $fa1
	fmadd.s	$fa1, $fs3, $fs3, $fa1
	fsqrt.s	$fs0, $fa1
	vldi	$vr1, -1184
	fmul.s	$fs1, $fa0, $fa1
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs0
	fmul.s	$fs0, $fs7, $fa0
	fmov.s	$fs7, $fs2
	fmul.s	$fs6, $fs6, $fa0
	fmul.s	$fs3, $fs3, $fa0
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fneg.s	$fa1, $fs0
	fneg.s	$fa2, $fs6
	fneg.s	$fa3, $fs3
	fmul.s	$fa4, $fs2, $fa1
	fld.s	$ft2, $sp, 12                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fa0, $ft2, $fa4
	fmadd.s	$fa4, $fa2, $fs5, $fa4
	fmadd.s	$fa5, $fs3, $fs4, $fa4
	fmul.s	$fa2, $fs2, $fa2
	fmadd.s	$fa2, $fa0, $fs4, $fa2
	fmadd.s	$fa2, $fa3, $ft2, $fa2
	fmadd.s	$fa6, $fs0, $fs5, $fa2
	fmul.s	$fa3, $fs2, $fa3
	fmadd.s	$fa3, $fa0, $fs5, $fa3
	fmadd.s	$fa3, $fa1, $fs4, $fa3
	fmadd.s	$fa7, $fs6, $ft2, $fa3
	fmul.s	$ft0, $ft2, $fs0
	fmadd.s	$ft0, $fa0, $fs2, $ft0
	fmadd.s	$ft0, $fs6, $fs4, $ft0
	fmadd.s	$ft0, $fs3, $fs5, $ft0
	fmul.s	$ft1, $fa0, $fa5
	fmadd.s	$ft1, $ft0, $fs0, $ft1
	fmadd.s	$ft1, $fa6, $fs3, $ft1
	fnmadd.s	$fa3, $fs6, $ft2, $fa3
	fmadd.s	$ft1, $fa3, $fs6, $ft1
	fmul.s	$fa6, $fa0, $fa6
	fmadd.s	$fa6, $ft0, $fs6, $fa6
	fmadd.s	$fa6, $fa7, $fs0, $fa6
	fnmadd.s	$fa4, $fs3, $fs4, $fa4
	fmadd.s	$fa4, $fa4, $fs3, $fa6
	fmul.s	$fa6, $fa0, $fa7
	fmadd.s	$fa6, $ft0, $fs3, $fa6
	fmadd.s	$fa6, $fa5, $fs6, $fa6
	fnmadd.s	$fa2, $fs0, $fs5, $fa2
	fmadd.s	$fa6, $fa2, $fs0, $fa6
	fmul.s	$fa1, $fa5, $fa1
	fmadd.s	$fa0, $ft0, $fa0, $fa1
	fmadd.s	$fa0, $fa2, $fs6, $fa0
	fmadd.s	$fa0, $fa3, $fs3, $fa0
	movfr2gr.s	$a0, $ft1
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa6
	movfr2gr.s	$a2, $fa0
	bstrins.d	$a1, $a2, 63, 32
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	move	$a2, $s2
	move	$a3, $s1
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 36
	addi.w	$s3, $s3, 1
	blt	$s3, $a0, .LBB4_7
.LBB4_8:                                # %.loopexit
	ld.bu	$a0, $s0, 16
	beqz	$a0, .LBB4_12
# %bb.9:
	ld.d	$a0, $s0, 24
	ld.w	$a0, $a0, 728
	beqz	$a0, .LBB4_12
# %bb.10:
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 728
	beqz	$a1, .LBB4_12
# %bb.11:                               # %.sink.split.i
	ld.d	$a1, $a0, 712
	ld.d	$a2, $fp, 144
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 80
	masknez	$a3, $a2, $a1
	ori	$a4, $zero, 16
	maskeqz	$a5, $a4, $a1
	or	$a3, $a5, $a3
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a4
	add.d	$a1, $fp, $a3
	add.d	$a2, $fp, $a2
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	pcaddu18i	$t8, %call36(_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_)
	jr	$t8
.LBB4_12:                               # %_ZN16btManifoldResult20refreshContactPointsEv.exit
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end4:
	.size	_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end4-_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
                                        # -- End function
	.globl	_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
# %bb.0:
	vldi	$vr0, -1168
	ret
.Lfunc_end5:
	.size	_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end5-_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
                                        # -- End function
	.section	.text._ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,"axG",@progbits,_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,comdat
	.weak	_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE # -- Begin function _ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.p2align	5
	.type	_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,@function
_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE: # @_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB6_20
# %bb.1:
	ld.b	$a3, $a0, 16
	andi	$a3, $a3, 1
	beqz	$a3, .LBB6_20
# %bb.2:
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
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 8
	bne	$a3, $a4, .LBB6_19
# %bb.3:
	sltui	$a4, $a3, 1
	slli.w	$a5, $a3, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 1
	maskeqz	$a4, $a6, $a4
	or	$s0, $a4, $a5
	bge	$a3, $s0, .LBB6_19
# %bb.4:
	beqz	$s0, .LBB6_14
# %bb.5:
	slli.d	$a2, $s0, 3
	move	$fp, $a1
	ori	$a1, $zero, 16
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.w	$a3, $fp, 4
	move	$fp, $a0
	move	$a0, $s1
	ld.d	$a2, $a1, 16
	blez	$a3, .LBB6_15
.LBB6_6:                                # %.lr.ph.i.i.i
	ori	$a5, $zero, 4
	move	$a4, $zero
	bltu	$a3, $a5, .LBB6_11
# %bb.7:                                # %.lr.ph.i.i.i
	sub.d	$a5, $fp, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB6_11
# %bb.8:                                # %vector.ph
	bstrpick.d	$a4, $a3, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a2, 16
	addi.d	$a6, $fp, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB6_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB6_9
# %bb.10:                               # %middle.block
	beq	$a4, $a3, .LBB6_13
.LBB6_11:                               # %scalar.ph.preheader
	sub.d	$a5, $a3, $a4
	alsl.d	$a6, $a4, $a2, 3
	alsl.d	$a4, $a4, $fp, 3
	.p2align	4, , 16
.LBB6_12:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.d	$a7, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB6_12
.LBB6_13:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a4, $a1, 24
	bnez	$a4, .LBB6_17
	b	.LBB6_18
.LBB6_14:
	move	$fp, $zero
	ld.d	$a2, $a1, 16
	bgtz	$a3, .LBB6_6
.LBB6_15:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	beqz	$a2, .LBB6_18
# %bb.16:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	ld.b	$a4, $a1, 24
	andi	$a4, $a4, 1
	beqz	$a4, .LBB6_18
.LBB6_17:
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	ld.w	$a3, $s2, 4
.LBB6_18:                               # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
	ori	$a4, $zero, 1
	ld.d	$a2, $a0, 24
	st.b	$a4, $a1, 24
	st.d	$fp, $a1, 16
	st.w	$s0, $a1, 8
.LBB6_19:                               # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit
	ld.d	$a0, $a1, 16
	slli.d	$a4, $a3, 3
	stx.d	$a2, $a0, $a4
	addi.d	$a0, $a3, 1
	st.w	$a0, $a1, 4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB6_20:
	ret
.Lfunc_end6:
	.size	_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE, .Lfunc_end6-_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_endproc
                                        # -- End function
	.type	_ZTV31btConvexPlaneCollisionAlgorithm,@object # @_ZTV31btConvexPlaneCollisionAlgorithm
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV31btConvexPlaneCollisionAlgorithm
	.p2align	3, 0x0
_ZTV31btConvexPlaneCollisionAlgorithm:
	.dword	0
	.dword	_ZTI31btConvexPlaneCollisionAlgorithm
	.dword	_ZN31btConvexPlaneCollisionAlgorithmD2Ev
	.dword	_ZN31btConvexPlaneCollisionAlgorithmD0Ev
	.dword	_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.size	_ZTV31btConvexPlaneCollisionAlgorithm, 56

	.type	_ZTI31btConvexPlaneCollisionAlgorithm,@object # @_ZTI31btConvexPlaneCollisionAlgorithm
	.globl	_ZTI31btConvexPlaneCollisionAlgorithm
	.p2align	3, 0x0
_ZTI31btConvexPlaneCollisionAlgorithm:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS31btConvexPlaneCollisionAlgorithm
	.dword	_ZTI20btCollisionAlgorithm
	.size	_ZTI31btConvexPlaneCollisionAlgorithm, 24

	.type	_ZTS31btConvexPlaneCollisionAlgorithm,@object # @_ZTS31btConvexPlaneCollisionAlgorithm
	.section	.rodata,"a",@progbits
	.globl	_ZTS31btConvexPlaneCollisionAlgorithm
_ZTS31btConvexPlaneCollisionAlgorithm:
	.asciz	"31btConvexPlaneCollisionAlgorithm"
	.size	_ZTS31btConvexPlaneCollisionAlgorithm, 34

	.type	_ZTI20btCollisionAlgorithm,@object # @_ZTI20btCollisionAlgorithm
	.section	.data.rel.ro._ZTI20btCollisionAlgorithm,"awG",@progbits,_ZTI20btCollisionAlgorithm,comdat
	.weak	_ZTI20btCollisionAlgorithm
	.p2align	3, 0x0
_ZTI20btCollisionAlgorithm:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS20btCollisionAlgorithm
	.size	_ZTI20btCollisionAlgorithm, 16

	.type	_ZTS20btCollisionAlgorithm,@object # @_ZTS20btCollisionAlgorithm
	.section	.rodata._ZTS20btCollisionAlgorithm,"aG",@progbits,_ZTS20btCollisionAlgorithm,comdat
	.weak	_ZTS20btCollisionAlgorithm
_ZTS20btCollisionAlgorithm:
	.asciz	"20btCollisionAlgorithm"
	.size	_ZTS20btCollisionAlgorithm, 23

	.globl	_ZN31btConvexPlaneCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii
	.type	_ZN31btConvexPlaneCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii,@function
_ZN31btConvexPlaneCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii = _ZN31btConvexPlaneCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii
	.globl	_ZN31btConvexPlaneCollisionAlgorithmD1Ev
	.type	_ZN31btConvexPlaneCollisionAlgorithmD1Ev,@function
_ZN31btConvexPlaneCollisionAlgorithmD1Ev = _ZN31btConvexPlaneCollisionAlgorithmD2Ev
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
	.addrsig_sym _ZTI31btConvexPlaneCollisionAlgorithm
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS31btConvexPlaneCollisionAlgorithm
	.addrsig_sym _ZTI20btCollisionAlgorithm
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS20btCollisionAlgorithm
