	.file	"btRigidBody.cpp"
	.text
	.globl	_ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE # -- Begin function _ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE
	.p2align	5
	.type	_ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE,@function
_ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE: # @_ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE
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
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV11btRigidBody+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV11btRigidBody+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 544
	st.d	$zero, $fp, 536
	st.d	$zero, $fp, 524
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 520
.Ltmp3:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_5:
.Ltmp7:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE, .Lfunc_end0-_ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end0-.Ltmp6             #   Call between .Ltmp6 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE
.LCPI1_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE
	.p2align	5
	.type	_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE,@function
_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE: # @_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 2
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	st.w	$a0, $fp, 256
	xvrepli.b	$xr2, 0
	xvst	$xr2, $fp, 328
	vst	$vr0, $fp, 364
	lu12i.w	$a0, 260096
	lu52i.d	$a1, $a0, 1016
	st.d	$a1, $fp, 380
	st.w	$a0, $fp, 388
	xvst	$xr2, $fp, 392
	st.w	$zero, $fp, 424
	xvst	$xr2, $fp, 444
	lu52i.d	$a0, $zero, 1008
	st.d	$a0, $fp, 476
	ld.d	$a0, $s0, 120
	st.d	$a0, $fp, 504
	ld.d	$a0, $s0, 8
	st.d	$zero, $fp, 552
	ld.b	$a1, $s0, 128
	vld	$vr0, $s0, 132
	st.d	$a0, $fp, 512
	st.b	$a1, $fp, 484
	vst	$vr0, $fp, 488
	beqz	$a0, .LBB1_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 16
	addi.d	$a1, $fp, 8
	xvst	$xr2, $sp, 16                   # 32-byte Folded Spill
	jirl	$ra, $a2, 0
	xvld	$xr2, $sp, 16                   # 32-byte Folded Reload
	b	.LBB1_3
.LBB1_2:
	vld	$vr0, $s0, 16
	vst	$vr0, $fp, 8
	vld	$vr0, $s0, 32
	vst	$vr0, $fp, 24
	vld	$vr0, $s0, 48
	vst	$vr0, $fp, 40
	vld	$vr0, $s0, 64
	vst	$vr0, $fp, 56
.LBB1_3:
	xvld	$xr0, $fp, 8
	xvld	$xr1, $fp, 40
	xvst	$xr0, $fp, 72
	xvst	$xr1, $fp, 104
	xvst	$xr2, $fp, 136
	ld.d	$a0, $s0, 112
	ld.d	$a2, $fp, 0
	st.d	$a0, $fp, 236
	ld.d	$a1, $s0, 80
	ld.d	$a2, $a2, 24
	move	$a0, $fp
	jirl	$ra, $a2, 0
	pcalau12i	$a0, %pc_hi20(_ZL8uniqueId)
	ld.w	$a1, $a0, %pc_lo12(_ZL8uniqueId)
	addi.d	$a2, $a1, 1
	fld.s	$fa1, $s0, 0
	st.w	$a2, $a0, %pc_lo12(_ZL8uniqueId)
	ld.w	$a0, $fp, 216
	movgr2fr.w	$fa0, $zero
	fcmp.cune.s	$fcc0, $fa1, $fa0
	st.w	$a1, $fp, 560
	bcnez	$fcc0, .LBB1_5
# %bb.4:
	ori	$a0, $a0, 1
	fmov.s	$fa1, $fa0
	b	.LBB1_6
.LBB1_5:
	bstrins.d	$a0, $zero, 0, 0
	frecip.s	$fa1, $fa1
.LBB1_6:                                # %_ZN11btRigidBody12setMassPropsEfRK9btVector3.exit
	fst.s	$fa1, $fp, 360
	fld.s	$fa1, $s0, 88
	frecip.s	$fa2, $fa1
	fld.s	$fa3, $s0, 92
	fcmp.cune.s	$fcc0, $fa1, $fa0
	fsel	$fa1, $fa0, $fa2, $fcc0
	fld.s	$fa2, $s0, 96
	frecip.s	$fa4, $fa3
	fcmp.cune.s	$fcc0, $fa3, $fa0
	fsel	$fa3, $fa0, $fa4, $fcc0
	frecip.s	$fa4, $fa2
	fcmp.cune.s	$fcc0, $fa2, $fa0
	fsel	$fa2, $fa0, $fa4, $fcc0
	fst.s	$fa1, $fp, 428
	fst.s	$fa3, $fp, 432
	fst.s	$fa2, $fp, 436
	st.w	$zero, $fp, 440
	fld.s	$fa4, $s0, 104
	st.w	$a0, $fp, 216
	fld.s	$fa5, $s0, 108
	vldi	$vr6, -1168
	fcmp.clt.s	$fcc0, $fa6, $fa4
	fsel	$fa7, $fa4, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa0
	fsel	$fa4, $fa7, $fa0, $fcc0
	fst.s	$fa4, $fp, 476
	fcmp.clt.s	$fcc0, $fa6, $fa5
	fsel	$fa4, $fa5, $fa6, $fcc0
	fld.s	$fa6, $fp, 8
	fcmp.clt.s	$fcc0, $fa5, $fa0
	fsel	$fa0, $fa4, $fa0, $fcc0
	fst.s	$fa0, $fp, 480
	fmul.s	$fa0, $fa1, $fa6
	fld.s	$fa4, $fp, 12
	fld.s	$fa5, $fp, 16
	fld.s	$fa7, $fp, 24
	fld.s	$ft0, $fp, 28
	fmul.s	$ft1, $fa3, $fa4
	fmul.s	$ft2, $fa2, $fa5
	fmul.s	$ft3, $fa1, $fa7
	fmul.s	$ft4, $fa3, $ft0
	fld.s	$ft5, $fp, 32
	fld.s	$ft6, $fp, 40
	fld.s	$ft7, $fp, 44
	fld.s	$ft8, $fp, 48
	fmul.s	$ft9, $fa2, $ft5
	fmul.s	$fa1, $fa1, $ft6
	fmul.s	$fa3, $fa3, $ft7
	fmul.s	$fa2, $fa2, $ft8
	fmul.s	$ft10, $fa4, $ft1
	fmadd.s	$ft10, $fa6, $fa0, $ft10
	fmadd.s	$ft10, $fa5, $ft2, $ft10
	fmul.s	$ft11, $ft1, $ft0
	fmadd.s	$ft11, $fa7, $fa0, $ft11
	fmadd.s	$ft11, $ft5, $ft2, $ft11
	fmul.s	$ft1, $ft1, $ft7
	fmadd.s	$fa0, $ft6, $fa0, $ft1
	fmadd.s	$fa0, $ft8, $ft2, $fa0
	fmul.s	$ft1, $fa4, $ft4
	fmadd.s	$ft1, $fa6, $ft3, $ft1
	fmadd.s	$ft1, $fa5, $ft9, $ft1
	fmul.s	$ft2, $ft0, $ft4
	fmadd.s	$ft2, $fa7, $ft3, $ft2
	fmadd.s	$ft2, $ft5, $ft9, $ft2
	fmul.s	$ft4, $ft4, $ft7
	fmadd.s	$ft3, $ft6, $ft3, $ft4
	fmadd.s	$ft3, $ft8, $ft9, $ft3
	fmul.s	$fa4, $fa4, $fa3
	fmadd.s	$fa4, $fa6, $fa1, $fa4
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmul.s	$fa5, $ft0, $fa3
	fmadd.s	$fa5, $fa7, $fa1, $fa5
	fmadd.s	$fa5, $ft5, $fa2, $fa5
	fmul.s	$fa3, $ft7, $fa3
	fmadd.s	$fa1, $ft6, $fa1, $fa3
	fmadd.s	$fa1, $ft8, $fa2, $fa1
	fst.s	$ft10, $fp, 280
	fst.s	$ft11, $fp, 284
	fst.s	$fa0, $fp, 288
	st.w	$zero, $fp, 292
	fst.s	$ft1, $fp, 296
	fst.s	$ft2, $fp, 300
	fst.s	$ft3, $fp, 304
	st.w	$zero, $fp, 308
	fst.s	$fa4, $fp, 312
	fst.s	$fa5, $fp, 316
	fst.s	$fa1, $fp, 320
	st.w	$zero, $fp, 324
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE, .Lfunc_end1-_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev # -- Begin function _ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev,@function
_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev: # @_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB2_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %_ZN20btAlignedObjectArrayIP17btTypedConstraintE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev, .Lfunc_end2-_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	__clang_call_terminate, .Lfunc_end3-__clang_call_terminate
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3
.LCPI4_0:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f000000                      # float 0.5
	.word	0x00000000                      # float 0
.LCPI4_1:
	.word	0x3ba3d70a                      # float 0.00499999989
	.word	0x3c23d70a                      # float 0.00999999977
	.word	0x3c23d70a                      # float 0.00999999977
	.word	0x3c23d70a                      # float 0.00999999977
	.text
	.globl	_ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3
	.p2align	5
	.type	_ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3,@function
_ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3: # @_ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	fmov.s	$fs0, $fa0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV11btRigidBody+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV11btRigidBody+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 544
	st.d	$zero, $fp, 536
	st.d	$zero, $fp, 524
	vld	$vr0, $s0, 0
	fst.s	$fs0, $sp, 8
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI4_0)
	vst	$vr0, $sp, 96
	st.d	$s2, $sp, 16
	st.d	$s1, $sp, 88
	vst	$vr1, $sp, 112
	lu12i.w	$a0, 259276
	ori	$a0, $a0, 3277
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_1)
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $sp, 128
	st.b	$zero, $sp, 136
	vst	$vr0, $sp, 140
	lu12i.w	$a0, 260096
	st.w	$a0, $sp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 28
	st.w	$a0, $sp, 44
	vst	$vr0, $sp, 48
	st.w	$a0, $sp, 64
	st.w	$zero, $sp, 84
	vst	$vr0, $sp, 68
.Ltmp8:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.1:
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB4_2:
.Ltmp10:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 520
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.3:
.Ltmp13:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_5:
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3, .Lfunc_end4-_ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp8-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin1          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp14-.Ltmp11                #   Call between .Ltmp11 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end4-.Ltmp14            #   Call between .Ltmp14 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN11btRigidBody12setMassPropsEfRK9btVector3 # -- Begin function _ZN11btRigidBody12setMassPropsEfRK9btVector3
	.p2align	5
	.type	_ZN11btRigidBody12setMassPropsEfRK9btVector3,@function
_ZN11btRigidBody12setMassPropsEfRK9btVector3: # @_ZN11btRigidBody12setMassPropsEfRK9btVector3
# %bb.0:
	ld.w	$a2, $a0, 216
	movgr2fr.w	$fa1, $zero
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_2
# %bb.1:
	ori	$a2, $a2, 1
	st.w	$a2, $a0, 216
	fmov.s	$fa0, $fa1
	b	.LBB5_3
.LBB5_2:
	bstrpick.d	$a2, $a2, 31, 1
	slli.d	$a2, $a2, 1
	st.w	$a2, $a0, 216
	frecip.s	$fa0, $fa0
.LBB5_3:
	fst.s	$fa0, $a0, 360
	fld.s	$fa0, $a1, 0
	frecip.s	$fa2, $fa0
	fld.s	$fa3, $a1, 4
	fcmp.cune.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa2, $fcc0
	fld.s	$fa2, $a1, 8
	frecip.s	$fa4, $fa3
	fcmp.cune.s	$fcc0, $fa3, $fa1
	fsel	$fa3, $fa1, $fa4, $fcc0
	frecip.s	$fa4, $fa2
	fcmp.cune.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa1, $fa4, $fcc0
	fst.s	$fa0, $a0, 428
	fst.s	$fa3, $a0, 432
	fst.s	$fa1, $a0, 436
	st.w	$zero, $a0, 440
	ret
.Lfunc_end5:
	.size	_ZN11btRigidBody12setMassPropsEfRK9btVector3, .Lfunc_end5-_ZN11btRigidBody12setMassPropsEfRK9btVector3
                                        # -- End function
	.globl	_ZN11btRigidBody10setDampingEff # -- Begin function _ZN11btRigidBody10setDampingEff
	.p2align	5
	.type	_ZN11btRigidBody10setDampingEff,@function
_ZN11btRigidBody10setDampingEff:        # @_ZN11btRigidBody10setDampingEff
# %bb.0:
	vldi	$vr2, -1168
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa3, $fa0, $fa2, $fcc0
	movgr2fr.w	$fa4, $zero
	fcmp.clt.s	$fcc0, $fa0, $fa4
	fsel	$fa0, $fa3, $fa4, $fcc0
	fst.s	$fa0, $a0, 476
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa0, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fsel	$fa0, $fa0, $fa4, $fcc0
	fst.s	$fa0, $a0, 480
	ret
.Lfunc_end6:
	.size	_ZN11btRigidBody10setDampingEff, .Lfunc_end6-_ZN11btRigidBody10setDampingEff
                                        # -- End function
	.globl	_ZN11btRigidBody19updateInertiaTensorEv # -- Begin function _ZN11btRigidBody19updateInertiaTensorEv
	.p2align	5
	.type	_ZN11btRigidBody19updateInertiaTensorEv,@function
_ZN11btRigidBody19updateInertiaTensorEv: # @_ZN11btRigidBody19updateInertiaTensorEv
# %bb.0:
	fld.s	$fa0, $a0, 8
	fld.s	$fa1, $a0, 428
	fmul.s	$fa2, $fa0, $fa1
	fld.s	$fa3, $a0, 12
	fld.s	$fa4, $a0, 432
	fld.s	$fa5, $a0, 16
	fld.s	$fa6, $a0, 436
	fld.s	$fa7, $a0, 24
	fld.s	$ft0, $a0, 28
	fmul.s	$ft1, $fa3, $fa4
	fmul.s	$ft2, $fa5, $fa6
	fmul.s	$ft3, $fa1, $fa7
	fmul.s	$ft4, $fa4, $ft0
	fld.s	$ft5, $a0, 32
	fld.s	$ft6, $a0, 40
	fld.s	$ft7, $a0, 44
	fld.s	$ft8, $a0, 48
	fmul.s	$ft9, $fa6, $ft5
	fmul.s	$fa1, $fa1, $ft6
	fmul.s	$fa4, $fa4, $ft7
	fmul.s	$fa6, $fa6, $ft8
	fmul.s	$ft10, $fa3, $ft1
	fmadd.s	$ft10, $fa0, $fa2, $ft10
	fmadd.s	$ft10, $fa5, $ft2, $ft10
	fmul.s	$ft11, $ft1, $ft0
	fmadd.s	$ft11, $fa7, $fa2, $ft11
	fmadd.s	$ft11, $ft5, $ft2, $ft11
	fmul.s	$ft1, $ft1, $ft7
	fmadd.s	$fa2, $ft6, $fa2, $ft1
	fmadd.s	$fa2, $ft8, $ft2, $fa2
	fmul.s	$ft1, $fa3, $ft4
	fmadd.s	$ft1, $fa0, $ft3, $ft1
	fmadd.s	$ft1, $fa5, $ft9, $ft1
	fmul.s	$ft2, $ft0, $ft4
	fmadd.s	$ft2, $fa7, $ft3, $ft2
	fmadd.s	$ft2, $ft5, $ft9, $ft2
	fmul.s	$ft4, $ft4, $ft7
	fmadd.s	$ft3, $ft6, $ft3, $ft4
	fmadd.s	$ft3, $ft8, $ft9, $ft3
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa0, $fa0, $fa1, $fa3
	fmadd.s	$fa0, $fa5, $fa6, $fa0
	fmul.s	$fa3, $ft0, $fa4
	fmadd.s	$fa3, $fa7, $fa1, $fa3
	fmadd.s	$fa3, $ft5, $fa6, $fa3
	fmul.s	$fa4, $ft7, $fa4
	fmadd.s	$fa1, $ft6, $fa1, $fa4
	fmadd.s	$fa1, $ft8, $fa6, $fa1
	fst.s	$ft10, $a0, 280
	fst.s	$ft11, $a0, 284
	fst.s	$fa2, $a0, 288
	st.w	$zero, $a0, 292
	fst.s	$ft1, $a0, 296
	fst.s	$ft2, $a0, 300
	fst.s	$ft3, $a0, 304
	st.w	$zero, $a0, 308
	fst.s	$fa0, $a0, 312
	fst.s	$fa3, $a0, 316
	fst.s	$fa1, $a0, 320
	st.w	$zero, $a0, 324
	ret
.Lfunc_end7:
	.size	_ZN11btRigidBody19updateInertiaTensorEv, .Lfunc_end7-_ZN11btRigidBody19updateInertiaTensorEv
                                        # -- End function
	.globl	_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform # -- Begin function _ZN11btRigidBody26predictIntegratedTransformEfR11btTransform
	.p2align	5
	.type	_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform,@function
_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform: # @_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform
	.cfi_startproc
# %bb.0:
	addi.d	$a4, $a0, 8
	addi.d	$a3, $a0, 328
	addi.d	$a2, $a0, 344
	move	$a5, $a1
	move	$a0, $a4
	move	$a1, $a3
	move	$a3, $a5
	pcaddu18i	$t8, %call36(_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_)
	jr	$t8
.Lfunc_end8:
	.size	_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform, .Lfunc_end8-_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
.LCPI9_0:
	.word	0x3f490fdb                      # float 0.785398185
.LCPI9_1:
	.word	0x3a83126f                      # float 0.00100000005
.LCPI9_2:
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
	pcalau12i	$a0, %pc_hi20(.LCPI9_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI9_0)
	fmul.s	$fa2, $fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI9_1)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI9_1)
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fdiv.s	$fa1, $fa1, $fs0
	fsel	$fs4, $fa0, $fa1, $fcc0
	fcmp.cule.s	$fcc0, $fa3, $fs4
	bcnez	$fcc0, .LBB9_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI9_2)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI9_2)
	fmul.s	$fa1, $fs0, $fs0
	fmul.s	$fa1, $fs0, $fa1
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa0, $fa0, $fs4
	fmul.s	$fa0, $fa0, $fs4
	vldi	$vr1, -1184
	fmadd.s	$fa0, $fs0, $fa1, $fa0
	b	.LBB9_3
.LBB9_2:
	vldi	$vr0, -1184
	fmul.s	$fa0, $fs4, $fa0
	fmul.s	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs4
.LBB9_3:
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
.Lfunc_end9:
	.size	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_, .Lfunc_end9-_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN11btRigidBody18saveKinematicStateEf # -- Begin function _ZN11btRigidBody18saveKinematicStateEf
	.p2align	5
	.type	_ZN11btRigidBody18saveKinematicStateEf,@function
_ZN11btRigidBody18saveKinematicStateEf: # @_ZN11btRigidBody18saveKinematicStateEf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	fmov.s	$fs0, $fa0
	movgr2fr.w	$fa0, $zero
	fcmp.ceq.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB10_4
# %bb.1:
	move	$fp, $a0
	ld.d	$a0, $a0, 512
	addi.d	$s0, $fp, 8
	beqz	$a0, .LBB10_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 16
	move	$a1, $s0
	jirl	$ra, $a2, 0
.LBB10_3:
	fld.s	$fa0, $fp, 56
	fld.s	$fa1, $fp, 120
	fld.s	$fa2, $fp, 60
	fld.s	$fa3, $fp, 124
	fld.s	$fa4, $fp, 64
	fld.s	$fa5, $fp, 128
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	addi.d	$a0, $fp, 72
	fsub.s	$fa2, $fa4, $fa5
	frecip.s	$fs0, $fs0
	fmul.s	$fa0, $fs0, $fa0
	fmul.s	$fa1, $fs0, $fa1
	fmul.s	$fa2, $fs0, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $fp, 328
	st.d	$a2, $fp, 336
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 12
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 24
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa0, $fs0, $fa0
	fmul.s	$fa2, $fs0, $fa2
	fmul.s	$fa1, $fs0, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	vld	$vr0, $fp, 328
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 344
	st.d	$a1, $fp, 352
	vst	$vr0, $fp, 136
	vld	$vr0, $fp, 344
	vld	$vr1, $fp, 8
	xvld	$xr2, $fp, 24
	vld	$vr3, $fp, 56
	vst	$vr0, $fp, 152
	vst	$vr1, $fp, 72
	xvst	$xr2, $fp, 88
	vst	$vr3, $fp, 120
.LBB10_4:
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end10:
	.size	_ZN11btRigidBody18saveKinematicStateEf, .Lfunc_end10-_ZN11btRigidBody18saveKinematicStateEf
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK11btRigidBody7getAabbER9btVector3S1_ # -- Begin function _ZNK11btRigidBody7getAabbER9btVector3S1_
	.p2align	5
	.type	_ZNK11btRigidBody7getAabbER9btVector3S1_,@function
_ZNK11btRigidBody7getAabbER9btVector3S1_: # @_ZNK11btRigidBody7getAabbER9btVector3S1_
	.cfi_startproc
# %bb.0:
	ld.d	$a3, $a0, 200
	ld.d	$a4, $a3, 0
	ld.d	$a6, $a4, 16
	addi.d	$a4, $a0, 8
	move	$a5, $a2
	move	$a2, $a1
	move	$a0, $a3
	move	$a1, $a4
	move	$a3, $a5
	jr	$a6
.Lfunc_end11:
	.size	_ZNK11btRigidBody7getAabbER9btVector3S1_, .Lfunc_end11-_ZNK11btRigidBody7getAabbER9btVector3S1_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11btRigidBody10setGravityERK9btVector3 # -- Begin function _ZN11btRigidBody10setGravityERK9btVector3
	.p2align	5
	.type	_ZN11btRigidBody10setGravityERK9btVector3,@function
_ZN11btRigidBody10setGravityERK9btVector3: # @_ZN11btRigidBody10setGravityERK9btVector3
# %bb.0:
	fld.s	$fa0, $a0, 360
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_2
# %bb.1:
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 8
	frecip.s	$fa0, $fa0
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a2, $fa1
	movfr2gr.s	$a3, $fa2
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $fa0
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a2, $a0, 396
	st.d	$a3, $a0, 404
.LBB12_2:
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 412
	ret
.Lfunc_end12:
	.size	_ZN11btRigidBody10setGravityERK9btVector3, .Lfunc_end12-_ZN11btRigidBody10setGravityERK9btVector3
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN11btRigidBody12applyDampingEf
.LCPI13_0:
	.word	0x3ba3d70a                      # float 0.00499999989
	.text
	.globl	_ZN11btRigidBody12applyDampingEf
	.p2align	5
	.type	_ZN11btRigidBody12applyDampingEf,@function
_ZN11btRigidBody12applyDampingEf:       # @_ZN11btRigidBody12applyDampingEf
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
	move	$fp, $a0
	fld.s	$fs3, $a0, 476
	fmov.s	$fs0, $fa0
	vldi	$vr0, -1168
	fsub.s	$fa0, $fa0, $fs3
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(powf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 328
	fld.s	$fa2, $fp, 332
	fmul.s	$fs2, $fa0, $fa1
	fst.s	$fs2, $fp, 328
	fld.s	$fa1, $fp, 336
	fmul.s	$fs4, $fa0, $fa2
	fld.s	$fs1, $fp, 480
	fst.s	$fs4, $fp, 332
	fmul.s	$fs5, $fa0, $fa1
	fst.s	$fs5, $fp, 336
	vldi	$vr0, -1168
	fsub.s	$fa0, $fa0, $fs1
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(powf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 344
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa2, $fp, 348
	fst.s	$fa1, $fp, 344
	fld.s	$fa3, $fp, 352
	ld.bu	$a0, $fp, 484
	fmul.s	$fa2, $fa0, $fa2
	fst.s	$fa2, $fp, 348
	fmul.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $fp, 352
	beqz	$a0, .LBB13_12
# %bb.1:
	fld.s	$fa3, $fp, 496
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB13_4
# %bb.2:
	fld.s	$fa3, $fp, 492
	fmul.s	$fa4, $fs4, $fs4
	fmadd.s	$fa4, $fs2, $fs2, $fa4
	fmadd.s	$fa4, $fs5, $fs5, $fa4
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB13_4
# %bb.3:
	fld.s	$fa3, $fp, 488
	fmul.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $fp, 344
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $fp, 348
	fmul.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $fp, 352
	fmul.s	$fs2, $fs2, $fa3
	fst.s	$fs2, $fp, 328
	fmul.s	$fs4, $fs4, $fa3
	fst.s	$fs4, $fp, 332
	fmul.s	$fs5, $fs5, $fa3
	fst.s	$fs5, $fp, 336
.LBB13_4:
	fmul.s	$fa3, $fs4, $fs4
	fmadd.s	$fa3, $fs2, $fs2, $fa3
	fmadd.s	$fa3, $fs5, $fs5, $fa3
	fsqrt.s	$fa3, $fa3
	fcmp.cule.s	$fcc0, $fs3, $fa3
	pcalau12i	$a0, %pc_hi20(.LCPI13_0)
	bcnez	$fcc0, .LBB13_8
# %bb.5:
	fld.s	$fa4, $a0, %pc_lo12(.LCPI13_0)
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB13_7
# %bb.6:
	frecip.s	$fa3, $fa3
	fmul.s	$fa5, $fs2, $fa3
	fmul.s	$fa6, $fs4, $fa3
	fmul.s	$fa3, $fs5, $fa3
	fmul.s	$fa5, $fa5, $fa4
	fmul.s	$fa6, $fa6, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fsub.s	$fa4, $fs2, $fa5
	fst.s	$fa4, $fp, 328
	fsub.s	$fa4, $fs4, $fa6
	fst.s	$fa4, $fp, 332
	fsub.s	$fa3, $fs5, $fa3
	fst.s	$fa3, $fp, 336
	b	.LBB13_8
.LBB13_7:
	addi.d	$a1, $fp, 328
	vrepli.b	$vr3, 0
	vst	$vr3, $a1, 0
.LBB13_8:
	fmul.s	$fa3, $fa2, $fa2
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fsqrt.s	$fa4, $fa3
	fcmp.cule.s	$fcc0, $fs1, $fa4
	bcnez	$fcc0, .LBB13_12
# %bb.9:
	fld.s	$fa3, $a0, %pc_lo12(.LCPI13_0)
	fcmp.cule.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB13_11
# %bb.10:
	frecip.s	$fa4, $fa4
	fmul.s	$fa5, $fa1, $fa4
	fmul.s	$fa6, $fa2, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fmul.s	$fa5, $fa5, $fa3
	fmul.s	$fa6, $fa6, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fsub.s	$fa1, $fa1, $fa5
	fst.s	$fa1, $fp, 344
	fsub.s	$fa1, $fa2, $fa6
	fst.s	$fa1, $fp, 348
	fsub.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $fp, 352
	b	.LBB13_12
.LBB13_11:
	addi.d	$a0, $fp, 344
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
.LBB13_12:
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
.Lfunc_end13:
	.size	_ZN11btRigidBody12applyDampingEf, .Lfunc_end13-_ZN11btRigidBody12applyDampingEf
                                        # -- End function
	.globl	_ZN11btRigidBody12applyGravityEv # -- Begin function _ZN11btRigidBody12applyGravityEv
	.p2align	5
	.type	_ZN11btRigidBody12applyGravityEv,@function
_ZN11btRigidBody12applyGravityEv:       # @_ZN11btRigidBody12applyGravityEv
# %bb.0:
	ld.bu	$a1, $a0, 216
	andi	$a1, $a1, 3
	beqz	$a1, .LBB14_2
# %bb.1:
	ret
.LBB14_2:
	fld.s	$fa0, $a0, 396
	fld.s	$fa1, $a0, 380
	fld.s	$fa2, $a0, 400
	fld.s	$fa3, $a0, 384
	fld.s	$fa4, $a0, 404
	fld.s	$fa5, $a0, 388
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a0, 444
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa3, $fa4, $fa5
	fld.s	$fa4, $a0, 448
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a0, 452
	fst.s	$fa0, $a0, 444
	fadd.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $a0, 448
	fadd.s	$fa0, $fa3, $fa1
	fst.s	$fa0, $a0, 452
	ret
.Lfunc_end14:
	.size	_ZN11btRigidBody12applyGravityEv, .Lfunc_end14-_ZN11btRigidBody12applyGravityEv
                                        # -- End function
	.globl	_ZN11btRigidBody18proceedToTransformERK11btTransform # -- Begin function _ZN11btRigidBody18proceedToTransformERK11btTransform
	.p2align	5
	.type	_ZN11btRigidBody18proceedToTransformERK11btTransform,@function
_ZN11btRigidBody18proceedToTransformERK11btTransform: # @_ZN11btRigidBody18proceedToTransformERK11btTransform
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform)
	jr	$t8
.Lfunc_end15:
	.size	_ZN11btRigidBody18proceedToTransformERK11btTransform, .Lfunc_end15-_ZN11btRigidBody18proceedToTransformERK11btTransform
                                        # -- End function
	.globl	_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform # -- Begin function _ZN11btRigidBody24setCenterOfMassTransformERK11btTransform
	.p2align	5
	.type	_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform,@function
_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform: # @_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform
# %bb.0:
	ld.bu	$a2, $a0, 216
	andi	$a2, $a2, 3
	beqz	$a2, .LBB16_2
# %bb.1:
	xvld	$xr0, $a0, 8
	vld	$vr1, $a0, 40
	xvst	$xr0, $a0, 72
	vst	$vr1, $a0, 104
	addi.d	$a2, $a0, 56
	b	.LBB16_3
.LBB16_2:
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 72
	vld	$vr0, $a1, 16
	vst	$vr0, $a0, 88
	vld	$vr0, $a1, 32
	vst	$vr0, $a0, 104
	addi.d	$a2, $a1, 48
.LBB16_3:
	vld	$vr0, $a2, 0
	xvld	$xr1, $a0, 328
	vst	$vr0, $a0, 120
	xvst	$xr1, $a0, 136
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 8
	vld	$vr0, $a1, 16
	vst	$vr0, $a0, 24
	vld	$vr0, $a1, 32
	vst	$vr0, $a0, 40
	vld	$vr0, $a1, 48
	fld.s	$fa1, $a0, 8
	fld.s	$fa2, $a0, 428
	vst	$vr0, $a0, 56
	fmul.s	$fa0, $fa1, $fa2
	fld.s	$fa3, $a0, 12
	fld.s	$fa4, $a0, 432
	fld.s	$fa5, $a0, 16
	fld.s	$fa6, $a0, 436
	fld.s	$fa7, $a0, 24
	fld.s	$ft0, $a0, 28
	fmul.s	$ft1, $fa3, $fa4
	fmul.s	$ft2, $fa5, $fa6
	fmul.s	$ft3, $fa2, $fa7
	fmul.s	$ft4, $fa4, $ft0
	fld.s	$ft5, $a0, 32
	fld.s	$ft6, $a0, 40
	fld.s	$ft7, $a0, 44
	fld.s	$ft8, $a0, 48
	fmul.s	$ft9, $fa6, $ft5
	fmul.s	$fa2, $fa2, $ft6
	fmul.s	$fa4, $fa4, $ft7
	fmul.s	$fa6, $fa6, $ft8
	fmul.s	$ft10, $fa3, $ft1
	fmadd.s	$ft10, $fa1, $fa0, $ft10
	fmadd.s	$ft10, $fa5, $ft2, $ft10
	fmul.s	$ft11, $ft1, $ft0
	fmadd.s	$ft11, $fa7, $fa0, $ft11
	fmadd.s	$ft11, $ft5, $ft2, $ft11
	fmul.s	$ft1, $ft1, $ft7
	fmadd.s	$fa0, $ft6, $fa0, $ft1
	fmadd.s	$fa0, $ft8, $ft2, $fa0
	fmul.s	$ft1, $fa3, $ft4
	fmadd.s	$ft1, $fa1, $ft3, $ft1
	fmadd.s	$ft1, $fa5, $ft9, $ft1
	fmul.s	$ft2, $ft0, $ft4
	fmadd.s	$ft2, $fa7, $ft3, $ft2
	fmadd.s	$ft2, $ft5, $ft9, $ft2
	fmul.s	$ft4, $ft4, $ft7
	fmadd.s	$ft3, $ft6, $ft3, $ft4
	fmadd.s	$ft3, $ft8, $ft9, $ft3
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa2, $fa3
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fmul.s	$fa3, $ft0, $fa4
	fmadd.s	$fa3, $fa7, $fa2, $fa3
	fmadd.s	$fa3, $ft5, $fa6, $fa3
	fmul.s	$fa4, $ft7, $fa4
	fmadd.s	$fa2, $ft6, $fa2, $fa4
	fmadd.s	$fa2, $ft8, $fa6, $fa2
	fst.s	$ft10, $a0, 280
	fst.s	$ft11, $a0, 284
	fst.s	$fa0, $a0, 288
	st.w	$zero, $a0, 292
	fst.s	$ft1, $a0, 296
	fst.s	$ft2, $a0, 300
	fst.s	$ft3, $a0, 304
	st.w	$zero, $a0, 308
	fst.s	$fa1, $a0, 312
	fst.s	$fa3, $a0, 316
	fst.s	$fa2, $a0, 320
	st.w	$zero, $a0, 324
	ret
.Lfunc_end16:
	.size	_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform, .Lfunc_end16-_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN11btRigidBody19integrateVelocitiesEf
.LCPI17_0:
	.word	0x3fc90fdb                      # float 1.57079637
	.text
	.globl	_ZN11btRigidBody19integrateVelocitiesEf
	.p2align	5
	.type	_ZN11btRigidBody19integrateVelocitiesEf,@function
_ZN11btRigidBody19integrateVelocitiesEf: # @_ZN11btRigidBody19integrateVelocitiesEf
# %bb.0:
	ld.bu	$a1, $a0, 216
	andi	$a1, $a1, 3
	beqz	$a1, .LBB17_2
.LBB17_1:
	ret
.LBB17_2:
	fld.s	$fa1, $a0, 360
	fld.s	$fa2, $a0, 444
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa3, $a0, 448
	fld.s	$fa4, $a0, 452
	fmul.s	$fa2, $fa2, $fa1
	fld.s	$fa5, $a0, 328
	fmul.s	$fa3, $fa1, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a0, 332
	fadd.s	$fa2, $fa2, $fa5
	fld.s	$fa5, $a0, 336
	fst.s	$fa2, $a0, 328
	fadd.s	$fa2, $fa3, $fa4
	fst.s	$fa2, $a0, 332
	fadd.s	$fa1, $fa1, $fa5
	fld.s	$fa2, $a0, 284
	fld.s	$fa3, $a0, 464
	fst.s	$fa1, $a0, 336
	fld.s	$fa1, $a0, 280
	fld.s	$fa4, $a0, 460
	fmul.s	$fa2, $fa2, $fa3
	fld.s	$fa5, $a0, 288
	fld.s	$fa6, $a0, 468
	fld.s	$fa7, $a0, 300
	fld.s	$ft0, $a0, 296
	fmadd.s	$fa1, $fa1, $fa4, $fa2
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fmul.s	$fa2, $fa3, $fa7
	fmadd.s	$fa2, $ft0, $fa4, $fa2
	fld.s	$fa5, $a0, 304
	fld.s	$fa7, $a0, 316
	fld.s	$ft0, $a0, 312
	fld.s	$ft1, $a0, 320
	fmadd.s	$fa2, $fa5, $fa6, $fa2
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa3, $ft0, $fa4, $fa3
	fmadd.s	$fa3, $ft1, $fa6, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a0, 344
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a0, 348
	fadd.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a0, 352
	fst.s	$fa1, $a0, 344
	fadd.s	$fa2, $fa2, $fa5
	fst.s	$fa2, $a0, 348
	fadd.s	$fa3, $fa3, $fa4
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa5, $fa1, $fa1, $fa4
	pcalau12i	$a1, %pc_hi20(.LCPI17_0)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI17_0)
	fmadd.s	$fa5, $fa3, $fa3, $fa5
	fsqrt.s	$fa5, $fa5
	fmul.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fa4
	fst.s	$fa3, $a0, 352
	bcnez	$fcc0, .LBB17_1
# %bb.3:
	fdiv.s	$fa0, $fa4, $fa0
	fdiv.s	$fa0, $fa0, $fa5
	fmul.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a0, 344
	fmul.s	$fa1, $fa2, $fa0
	fst.s	$fa1, $a0, 348
	fmul.s	$fa0, $fa3, $fa0
	fst.s	$fa0, $a0, 352
	ret
.Lfunc_end17:
	.size	_ZN11btRigidBody19integrateVelocitiesEf, .Lfunc_end17-_ZN11btRigidBody19integrateVelocitiesEf
                                        # -- End function
	.globl	_ZNK11btRigidBody14getOrientationEv # -- Begin function _ZNK11btRigidBody14getOrientationEv
	.p2align	5
	.type	_ZNK11btRigidBody14getOrientationEv,@function
_ZNK11btRigidBody14getOrientationEv:    # @_ZNK11btRigidBody14getOrientationEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	addi.d	$a0, $a0, 8
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end18:
	.size	_ZNK11btRigidBody14getOrientationEv, .Lfunc_end18-_ZNK11btRigidBody14getOrientationEv
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
	bcnez	$fcc0, .LBB19_3
# %bb.1:
	vldi	$vr0, -1168
	fadd.s	$fa1, $fa3, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB19_6
.LBB19_2:                               # %.split
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
	b	.LBB19_5
.LBB19_3:
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
	bceqz	$fcc0, .LBB19_7
.LBB19_4:                               # %.split47
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
.LBB19_5:
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
.LBB19_6:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB19_2
.LBB19_7:                               # %call.sqrt48
	fmov.s	$fa0, $fa1
	move	$s5, $a1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	b	.LBB19_4
.Lfunc_end19:
	.size	_ZNK11btMatrix3x311getRotationER12btQuaternion, .Lfunc_end19-_ZNK11btMatrix3x311getRotationER12btQuaternion
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject # -- Begin function _ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject
	.p2align	5
	.type	_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject,@function
_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject: # @_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject
# %bb.0:
	ld.w	$a3, $a1, 256
	move	$a2, $a0
	ori	$a4, $zero, 2
	ori	$a0, $zero, 1
	bne	$a3, $a4, .LBB20_7
# %bb.1:
	beqz	$a1, .LBB20_7
# %bb.2:                                # %.preheader
	ld.w	$a3, $a2, 524
	blez	$a3, .LBB20_7
# %bb.3:                                # %.lr.ph
	ld.d	$a2, $a2, 536
	.p2align	4, , 16
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a4, 24
	beq	$a5, $a1, .LBB20_8
# %bb.5:                                # %.critedge
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a4, $a4, 32
	beq	$a4, $a1, .LBB20_8
# %bb.6:                                #   in Loop: Header=BB20_4 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB20_4
.LBB20_7:                               # %.loopexit
	ret
.LBB20_8:
	move	$a0, $zero
	ret
.Lfunc_end20:
	.size	_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject, .Lfunc_end20-_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject
                                        # -- End function
	.globl	_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint # -- Begin function _ZN11btRigidBody16addConstraintRefEP17btTypedConstraint
	.p2align	5
	.type	_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint,@function
_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint: # @_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint
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
	ld.w	$a3, $a0, 524
	blez	$a3, .LBB21_5
# %bb.1:                                # %.lr.ph.i
	ld.d	$a2, $a0, 536
	move	$a5, $a3
	move	$a4, $a3
	.p2align	4, , 16
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	beq	$a6, $a1, .LBB21_4
# %bb.3:                                #   in Loop: Header=BB21_2 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 8
	bnez	$a5, .LBB21_2
	b	.LBB21_5
.LBB21_4:                               # %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit
	bnez	$a4, .LBB21_23
.LBB21_5:                               # %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread
	ld.w	$a2, $a0, 528
	bne	$a3, $a2, .LBB21_22
# %bb.6:
	sltui	$a2, $a3, 1
	slli.w	$a4, $a3, 1
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 1
	maskeqz	$a2, $a5, $a2
	or	$s0, $a2, $a4
	bge	$a3, $s0, .LBB21_22
# %bb.7:
	move	$s1, $a1
	beqz	$s0, .LBB21_17
# %bb.8:
	slli.d	$a2, $s0, 3
	ori	$a1, $zero, 16
	move	$s2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s2, 524
	move	$fp, $a0
	move	$a0, $s2
	ld.d	$a2, $a0, 536
	blez	$a3, .LBB21_18
.LBB21_9:                               # %.lr.ph.i.i.i
	ori	$a5, $zero, 8
	move	$a4, $zero
	move	$a1, $s1
	bltu	$a3, $a5, .LBB21_14
# %bb.10:                               # %.lr.ph.i.i.i
	sub.d	$a5, $fp, $a2
	ori	$a6, $zero, 64
	bltu	$a5, $a6, .LBB21_14
# %bb.11:                               # %vector.ph
	bstrpick.d	$a4, $a3, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a2, 32
	addi.d	$a6, $fp, 32
	move	$a7, $a4
	.p2align	4, , 16
.LBB21_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB21_12
# %bb.13:                               # %middle.block
	beq	$a4, $a3, .LBB21_16
.LBB21_14:                              # %scalar.ph.preheader
	sub.d	$a5, $a3, $a4
	alsl.d	$a6, $a4, $a2, 3
	alsl.d	$a4, $a4, $fp, 3
	.p2align	4, , 16
.LBB21_15:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.d	$a7, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB21_15
.LBB21_16:                              # %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a4, $a0, 544
	bnez	$a4, .LBB21_20
	b	.LBB21_21
.LBB21_17:
	move	$fp, $zero
	ld.d	$a2, $a0, 536
	bgtz	$a3, .LBB21_9
.LBB21_18:                              # %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
	move	$a1, $s1
	beqz	$a2, .LBB21_21
# %bb.19:                               # %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
	ld.b	$a4, $a0, 544
	andi	$a4, $a4, 1
	beqz	$a4, .LBB21_21
.LBB21_20:
	move	$s2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	move	$a0, $s2
	ld.w	$a3, $s2, 524
.LBB21_21:                              # %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i
	ori	$a2, $zero, 1
	st.b	$a2, $a0, 544
	st.d	$fp, $a0, 536
	st.w	$s0, $a0, 528
.LBB21_22:                              # %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit
	ld.d	$a2, $a0, 536
	slli.d	$a4, $a3, 3
	stx.d	$a1, $a2, $a4
	addi.d	$a1, $a3, 1
	st.w	$a1, $a0, 524
.LBB21_23:
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 272
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end21:
	.size	_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint, .Lfunc_end21-_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint # -- Begin function _ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint
	.p2align	5
	.type	_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint,@function
_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint: # @_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint
# %bb.0:
	ld.w	$a3, $a0, 524
	blez	$a3, .LBB22_5
# %bb.1:                                # %.lr.ph.i.i
	ld.d	$a2, $a0, 536
	move	$a5, $zero
	move	$a6, $a3
	move	$a4, $a2
	.p2align	4, , 16
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	beq	$a7, $a1, .LBB22_7
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -1
	addi.w	$a5, $a5, 1
	bnez	$a6, .LBB22_2
# %bb.4:
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 272
	ret
.LBB22_5:
	move	$a1, $zero
.LBB22_6:                               # %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit
	st.b	$a1, $a0, 272
	ret
.LBB22_7:                               # %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i
	ori	$a1, $zero, 1
	bge	$a5, $a3, .LBB22_6
# %bb.8:
	addi.d	$a1, $a3, -1
	addi.w	$a3, $a1, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a5, $a2, $a3
	ld.d	$a6, $a4, 0
	st.d	$a5, $a4, 0
	stx.d	$a6, $a2, $a3
	st.w	$a1, $a0, 524
	sltu	$a1, $zero, $a1
	st.b	$a1, $a0, 272
	ret
.Lfunc_end22:
	.size	_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint, .Lfunc_end22-_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint
                                        # -- End function
	.section	.text._ZN11btRigidBodyD2Ev,"axG",@progbits,_ZN11btRigidBodyD2Ev,comdat
	.weak	_ZN11btRigidBodyD2Ev            # -- Begin function _ZN11btRigidBodyD2Ev
	.p2align	5
	.type	_ZN11btRigidBodyD2Ev,@function
_ZN11btRigidBodyD2Ev:                   # @_ZN11btRigidBodyD2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	pcalau12i	$a0, %pc_hi20(_ZTV11btRigidBody+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV11btRigidBody+16)
	ld.d	$a0, $fp, 536
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB23_3
# %bb.1:
	ld.b	$a1, $fp, 544
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_3
# %bb.2:
.Ltmp16:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
.LBB23_3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 544
	st.d	$zero, $fp, 536
	st.d	$zero, $fp, 524
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17btCollisionObjectD2Ev)
	jr	$t8
.LBB23_4:
.Ltmp18:                                # EH_LABEL
	move	$s0, $a0
.Ltmp19:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB23_6:
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN11btRigidBodyD2Ev, .Lfunc_end23-_ZN11btRigidBodyD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN11btRigidBodyD2Ev,"aG",@progbits,_ZN11btRigidBodyD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp16-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin2          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp17                #   Call between .Ltmp17 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin2          #     jumps to .Ltmp21
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end23-.Ltmp20           #   Call between .Ltmp20 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11btRigidBodyD0Ev,"axG",@progbits,_ZN11btRigidBodyD0Ev,comdat
	.weak	_ZN11btRigidBodyD0Ev            # -- Begin function _ZN11btRigidBodyD0Ev
	.p2align	5
	.type	_ZN11btRigidBodyD0Ev,@function
_ZN11btRigidBodyD0Ev:                   # @_ZN11btRigidBodyD0Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	pcalau12i	$a0, %pc_hi20(_ZTV11btRigidBody+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV11btRigidBody+16)
	ld.d	$a0, $fp, 536
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB24_3
# %bb.1:
	ld.b	$a1, $fp, 544
	andi	$a1, $a1, 1
	beqz	$a1, .LBB24_3
# %bb.2:
.Ltmp22:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
.LBB24_3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 544
	st.d	$zero, $fp, 536
	st.d	$zero, $fp, 524
.Ltmp28:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.4:                                # %_ZN11btRigidBodyD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB24_5:
.Ltmp24:                                # EH_LABEL
	move	$s0, $a0
.Ltmp25:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
	b	.LBB24_8
.LBB24_6:
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_7:
.Ltmp30:                                # EH_LABEL
	move	$s0, $a0
.LBB24_8:                               # %.body
.Ltmp31:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.9:                                # %_ZN17btCollisionObjectdlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB24_10:
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN11btRigidBodyD0Ev, .Lfunc_end24-_ZN11btRigidBodyD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN11btRigidBodyD0Ev,"aG",@progbits,_ZN11btRigidBodyD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin3          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin3          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp25-.Ltmp29                #   Call between .Ltmp29 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin3          #     jumps to .Ltmp27
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp26-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp31-.Ltmp26                #   Call between .Ltmp26 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin3          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp32-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Lfunc_end24-.Ltmp32           #   Call between .Ltmp32 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape,"axG",@progbits,_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape,comdat
	.weak	_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape # -- Begin function _ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape
	.p2align	5
	.type	_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape,@function
_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape: # @_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape
# %bb.0:
	st.d	$a1, $a0, 200
	st.d	$a1, $a0, 208
	ret
.Lfunc_end25:
	.size	_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape, .Lfunc_end25-_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
.LCPI26_0:
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
	pcalau12i	$a0, %pc_hi20(.LCPI26_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI26_0)
	fmul.s	$fa0, $fs1, $fs1
	fmadd.s	$fa0, $fs0, $fs0, $fa0
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	st.w	$zero, $fp, 12
	bceqz	$fcc0, .LBB26_2
# %bb.1:
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa0
	b	.LBB26_3
.LBB26_2:
	frsqrt.s	$fa2, $fa0
	fmul.s	$fa1, $fs0, $fa2
	fmul.s	$fa0, $fs1, $fa2
	fmul.s	$fa2, $fs2, $fa2
.LBB26_3:
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
.Lfunc_end26:
	.size	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf, .Lfunc_end26-_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
	.cfi_endproc
                                        # -- End function
	.type	gDeactivationTime,@object       # @gDeactivationTime
	.data
	.globl	gDeactivationTime
	.p2align	2, 0x0
gDeactivationTime:
	.word	0x40000000                      # float 2
	.size	gDeactivationTime, 4

	.type	gDisableDeactivation,@object    # @gDisableDeactivation
	.bss
	.globl	gDisableDeactivation
gDisableDeactivation:
	.byte	0                               # 0x0
	.size	gDisableDeactivation, 1

	.type	_ZTV11btRigidBody,@object       # @_ZTV11btRigidBody
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV11btRigidBody
	.p2align	3, 0x0
_ZTV11btRigidBody:
	.dword	0
	.dword	_ZTI11btRigidBody
	.dword	_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject
	.dword	_ZN11btRigidBodyD2Ev
	.dword	_ZN11btRigidBodyD0Ev
	.dword	_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape
	.size	_ZTV11btRigidBody, 48

	.type	_ZL8uniqueId,@object            # @_ZL8uniqueId
	.local	_ZL8uniqueId
	.comm	_ZL8uniqueId,4,4
	.type	_ZTI11btRigidBody,@object       # @_ZTI11btRigidBody
	.globl	_ZTI11btRigidBody
	.p2align	3, 0x0
_ZTI11btRigidBody:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS11btRigidBody
	.dword	_ZTI17btCollisionObject
	.size	_ZTI11btRigidBody, 24

	.type	_ZTS11btRigidBody,@object       # @_ZTS11btRigidBody
	.section	.rodata,"a",@progbits
	.globl	_ZTS11btRigidBody
_ZTS11btRigidBody:
	.asciz	"11btRigidBody"
	.size	_ZTS11btRigidBody, 14

	.globl	_ZN11btRigidBodyC1ERKNS_27btRigidBodyConstructionInfoE
	.type	_ZN11btRigidBodyC1ERKNS_27btRigidBodyConstructionInfoE,@function
_ZN11btRigidBodyC1ERKNS_27btRigidBodyConstructionInfoE = _ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE
	.globl	_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3
	.type	_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3,@function
_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3 = _ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3
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
	.addrsig_sym _ZTI11btRigidBody
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS11btRigidBody
	.addrsig_sym _ZTI17btCollisionObject
