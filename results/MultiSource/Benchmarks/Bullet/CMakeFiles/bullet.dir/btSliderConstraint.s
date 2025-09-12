	.file	"btSliderConstraint.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN18btSliderConstraint10initParamsEv
.LCPI0_0:
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI0_1:
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
.LCPI0_2:
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
.LCPI0_3:
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
.LCPI0_4:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x3f800000                      # float 1
	.text
	.globl	_ZN18btSliderConstraint10initParamsEv
	.p2align	5
	.type	_ZN18btSliderConstraint10initParamsEv,@function
_ZN18btSliderConstraint10initParamsEv:  # @_ZN18btSliderConstraint10initParamsEv
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_2)
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI0_3)
	vst	$vr0, $a0, 232
	vst	$vr1, $a0, 248
	vst	$vr2, $a0, 296
	vst	$vr3, $a0, 264
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_4)
	lu12i.w	$a1, 258867
	ori	$a1, $a1, 819
	lu52i.d	$a1, $a1, 1016
	st.d	$a1, $a0, 312
	vst	$vr0, $a0, 280
	st.b	$zero, $a0, 1116
	st.d	$zero, $a0, 1136
	st.w	$zero, $a0, 1144
	st.d	$zero, $a0, 1120
	st.d	$zero, $a0, 1125
	ret
.Lfunc_end0:
	.size	_ZN18btSliderConstraint10initParamsEv, .Lfunc_end0-_ZN18btSliderConstraint10initParamsEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN18btSliderConstraintC2Ev
.LCPI1_0:
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI1_1:
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
.LCPI1_2:
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
.LCPI1_3:
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
.LCPI1_4:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x3f800000                      # float 1
	.text
	.globl	_ZN18btSliderConstraintC2Ev
	.p2align	5
	.type	_ZN18btSliderConstraintC2Ev,@function
_ZN18btSliderConstraintC2Ev:            # @_ZN18btSliderConstraintC2Ev
	.cfi_startproc
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintType)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV18btSliderConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18btSliderConstraint+16)
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_1)
	pcalau12i	$a1, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI1_2)
	vst	$vr0, $fp, 232
	vst	$vr1, $fp, 248
	st.d	$a0, $fp, 0
	vst	$vr2, $fp, 296
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_3)
	st.b	$zero, $fp, 96
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 228
	vst	$vr0, $fp, 264
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_4)
	lu12i.w	$a0, 258867
	ori	$a0, $a0, 819
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $fp, 312
	vst	$vr0, $fp, 280
	st.b	$zero, $fp, 1116
	st.d	$zero, $fp, 1136
	st.w	$zero, $fp, 1144
	st.d	$zero, $fp, 1120
	st.d	$zero, $fp, 1125
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN18btSliderConstraintC2Ev, .Lfunc_end1-_ZN18btSliderConstraintC2Ev
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
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
.LCPI3_0:
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI3_1:
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
.LCPI3_2:
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
.LCPI3_3:
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
.LCPI3_4:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x3f800000                      # float 1
	.text
	.globl	_ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.p2align	5
	.type	_ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b,@function
_ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b: # @_ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
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
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$a3, $a2
	move	$a2, $a1
	move	$fp, $a0
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV18btSliderConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18btSliderConstraint+16)
	st.d	$a0, $fp, 0
	st.b	$zero, $fp, 96
	vld	$vr0, $s2, 0
	vst	$vr0, $fp, 100
	vld	$vr0, $s2, 16
	vst	$vr0, $fp, 116
	vld	$vr0, $s2, 32
	vst	$vr0, $fp, 132
	vld	$vr0, $s2, 48
	vst	$vr0, $fp, 148
	vld	$vr0, $s1, 0
	vst	$vr0, $fp, 164
	vld	$vr0, $s1, 16
	vst	$vr0, $fp, 180
	vld	$vr0, $s1, 32
	vst	$vr0, $fp, 196
	vld	$vr0, $s1, 48
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI3_0)
	vst	$vr0, $fp, 212
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_1)
	vst	$vr1, $fp, 232
	pcalau12i	$a0, %pc_hi20(.LCPI3_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI3_2)
	vst	$vr0, $fp, 248
	pcalau12i	$a0, %pc_hi20(.LCPI3_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_3)
	vst	$vr1, $fp, 296
	st.b	$s0, $fp, 228
	lu12i.w	$a0, 258867
	vst	$vr0, $fp, 264
	pcalau12i	$a1, %pc_hi20(.LCPI3_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_4)
	ori	$a0, $a0, 819
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $fp, 312
	vst	$vr0, $fp, 280
	st.b	$zero, $fp, 1116
	st.d	$zero, $fp, 1136
	st.w	$zero, $fp, 1144
	st.d	$zero, $fp, 1120
	st.d	$zero, $fp, 1125
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	_ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b, .Lfunc_end3-_ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11btRigidBodyD2Ev,"axG",@progbits,_ZN11btRigidBodyD2Ev,comdat
	.weak	_ZN11btRigidBodyD2Ev            # -- Begin function _ZN11btRigidBodyD2Ev
	.p2align	5
	.type	_ZN11btRigidBodyD2Ev,@function
_ZN11btRigidBodyD2Ev:                   # @_ZN11btRigidBodyD2Ev
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
	pcalau12i	$a0, %got_pc_hi20(_ZTV11btRigidBody)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTV11btRigidBody)
	ld.d	$a0, $fp, 536
	addi.d	$a1, $a1, 16
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB4_3
# %bb.1:
	ld.b	$a1, $fp, 544
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_3
# %bb.2:
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB4_3:
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
.LBB4_4:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_6:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN11btRigidBodyD2Ev, .Lfunc_end4-_ZN11btRigidBodyD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN11btRigidBodyD2Ev,"aG",@progbits,_ZN11btRigidBodyD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end4-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end4
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
	.p2align	4, 0x0                          # -- Begin function _ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb
.LCPI5_0:
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI5_1:
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
.LCPI5_2:
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
.LCPI5_3:
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
.LCPI5_4:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f333333                      # float 0.699999988
	.word	0x3f800000                      # float 1
	.text
	.globl	_ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb
	.p2align	5
	.type	_ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb,@function
_ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb: # @_ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb
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
	move	$s0, $a3
	move	$s1, $a2
	move	$a3, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZL7s_fixed)
	addi.d	$a2, $a0, %pc_lo12(_ZL7s_fixed)
	ori	$a1, $zero, 7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV18btSliderConstraint+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18btSliderConstraint+16)
	st.d	$a0, $fp, 0
	st.b	$zero, $fp, 96
	vld	$vr0, $s1, 0
	vst	$vr0, $fp, 164
	vld	$vr0, $s1, 16
	vst	$vr0, $fp, 180
	vld	$vr0, $s1, 32
	vst	$vr0, $fp, 196
	vld	$vr0, $s1, 48
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI5_0)
	vst	$vr0, $fp, 212
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_1)
	vst	$vr1, $fp, 232
	pcalau12i	$a0, %pc_hi20(.LCPI5_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI5_2)
	vst	$vr0, $fp, 248
	pcalau12i	$a0, %pc_hi20(.LCPI5_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_3)
	vst	$vr1, $fp, 296
	st.b	$s0, $fp, 228
	lu12i.w	$a0, 258867
	vst	$vr0, $fp, 264
	pcalau12i	$a1, %pc_hi20(.LCPI5_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_4)
	ori	$a0, $a0, 819
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $fp, 312
	vst	$vr0, $fp, 280
	st.b	$zero, $fp, 1116
	st.d	$zero, $fp, 1136
	st.w	$zero, $fp, 1144
	st.d	$zero, $fp, 1125
	st.d	$zero, $fp, 1120
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb, .Lfunc_end5-_ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN18btSliderConstraint13buildJacobianEv # -- Begin function _ZN18btSliderConstraint13buildJacobianEv
	.p2align	5
	.type	_ZN18btSliderConstraint13buildJacobianEv,@function
_ZN18btSliderConstraint13buildJacobianEv: # @_ZN18btSliderConstraint13buildJacobianEv
	.cfi_startproc
# %bb.0:
	ld.bu	$a1, $a0, 96
	beqz	$a1, .LBB6_2
# %bb.1:                                # %.sink.split
	ld.bu	$a1, $a0, 228
	ori	$a2, $zero, 32
	masknez	$a3, $a2, $a1
	ori	$a4, $zero, 24
	maskeqz	$a5, $a4, $a1
	or	$a3, $a5, $a3
	masknez	$a4, $a4, $a1
	maskeqz	$a2, $a2, $a1
	or	$a2, $a2, $a4
	ori	$a4, $zero, 164
	masknez	$a5, $a4, $a1
	ori	$a6, $zero, 100
	maskeqz	$a7, $a6, $a1
	or	$a5, $a7, $a5
	masknez	$a6, $a6, $a1
	maskeqz	$a4, $a4, $a1
	ldx.d	$a1, $a0, $a3
	ldx.d	$a2, $a0, $a2
	or	$a4, $a4, $a6
	add.d	$a3, $a0, $a5
	add.d	$a4, $a0, $a4
	pcaddu18i	$t8, %call36(_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_)
	jr	$t8
.LBB6_2:
	ret
.Lfunc_end6:
	.size	_ZN18btSliderConstraint13buildJacobianEv, .Lfunc_end6-_ZN18btSliderConstraint13buildJacobianEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_
.LCPI7_0:
	.word	0x3f490fdb                      # float 0.785398185
.LCPI7_1:
	.word	0xbf490fdb                      # float -0.785398185
.LCPI7_2:
	.word	0x4016cbe4                      # float 2.3561945
	.text
	.globl	_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_
	.p2align	5
	.type	_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_,@function
_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_: # @_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	fld.s	$fa5, $a3, 0
	fld.s	$fa6, $a3, 16
	fld.s	$fa3, $a1, 12
	fld.s	$fa2, $a1, 8
	fld.s	$fa7, $a3, 32
	fld.s	$fa4, $a1, 16
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $a3, 20
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $a3, 4
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $a3, 36
	fld.s	$ft3, $a3, 24
	fld.s	$ft4, $a3, 8
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $a3, 40
	fld.s	$ft7, $a1, 28
	fld.s	$ft8, $a1, 24
	fld.s	$ft9, $a1, 32
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $a1, 44
	fld.s	$ft13, $a1, 40
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $a1, 48
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
	fld.s	$ft1, $a3, 52
	fld.s	$ft2, $a3, 48
	fld.s	$ft3, $a3, 56
	fld.s	$ft4, $a1, 56
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $a1, 60
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a1, 64
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $fp, 844
	fst.s	$fa1, $fp, 848
	fst.s	$ft5, $fp, 852
	st.w	$zero, $fp, 856
	fst.s	$ft10, $fp, 860
	fst.s	$ft11, $fp, 864
	fst.s	$ft14, $fp, 868
	st.w	$zero, $fp, 872
	fst.s	$fa5, $fp, 876
	fst.s	$fa7, $fp, 880
	fst.s	$ft0, $fp, 884
	st.w	$zero, $fp, 888
	st.d	$a0, $fp, 892
	st.d	$a1, $fp, 900
	fld.s	$fa5, $a4, 0
	fld.s	$fa6, $a4, 16
	fld.s	$fa3, $a2, 12
	fld.s	$fa2, $a2, 8
	fld.s	$fa7, $a4, 32
	fld.s	$fa4, $a2, 16
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $a4, 20
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $a4, 4
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $a4, 36
	fld.s	$ft3, $a4, 24
	fld.s	$ft4, $a4, 8
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $a4, 40
	fld.s	$ft7, $a2, 28
	fld.s	$ft8, $a2, 24
	fld.s	$ft9, $a2, 32
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $a2, 44
	fld.s	$ft13, $a2, 40
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $a2, 48
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
	fld.s	$ft1, $a4, 52
	fld.s	$ft2, $a4, 48
	fld.s	$ft3, $a4, 56
	fld.s	$ft4, $a2, 56
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $a2, 60
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a2, 64
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $fp, 908
	fst.s	$fa1, $fp, 912
	fst.s	$ft5, $fp, 916
	st.w	$zero, $fp, 920
	fst.s	$ft10, $fp, 924
	fst.s	$ft11, $fp, 928
	fst.s	$ft14, $fp, 932
	st.w	$zero, $fp, 936
	fst.s	$fa5, $fp, 940
	fst.s	$fa7, $fp, 944
	fst.s	$ft0, $fp, 948
	vld	$vr0, $fp, 892
	st.w	$zero, $fp, 952
	st.d	$a0, $fp, 956
	st.d	$a1, $fp, 964
	vst	$vr0, $fp, 988
	st.d	$a0, $fp, 1004
	ld.w	$a0, $fp, 860
	ld.wu	$a2, $fp, 844
	st.d	$a1, $fp, 1012
	ld.wu	$a1, $fp, 876
	slli.d	$a3, $a0, 32
	or	$a3, $a3, $a2
	st.d	$a3, $fp, 972
	fld.s	$fa0, $fp, 1004
	fld.s	$fa1, $fp, 988
	fld.s	$fa2, $fp, 1008
	fld.s	$fa3, $fp, 992
	fld.s	$fa4, $fp, 1012
	fld.s	$fa5, $fp, 996
	st.d	$a1, $fp, 980
	fsub.s	$fa6, $fa0, $fa1
	fsub.s	$fa7, $fa2, $fa3
	fsub.s	$ft0, $fa4, $fa5
	movfr2gr.s	$a3, $fa6
	movfr2gr.s	$a4, $fa7
	bstrins.d	$a3, $a4, 63, 32
	movfr2gr.s	$a4, $ft0
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a3, $fp, 1036
	st.d	$a4, $fp, 1044
	movgr2fr.w	$ft1, $a2
	movgr2fr.w	$ft2, $a0
	fmul.s	$fa7, $fa7, $ft2
	fmadd.s	$fa6, $ft1, $fa6, $fa7
	movgr2fr.w	$fa7, $a1
	fmadd.s	$fa6, $fa7, $ft0, $fa6
	fmul.s	$ft0, $fa6, $ft1
	fmul.s	$ft1, $fa6, $ft2
	fmul.s	$fa6, $fa6, $fa7
	fadd.s	$fa1, $fa1, $ft0
	fadd.s	$fa3, $fa3, $ft1
	fadd.s	$fa5, $fa5, $fa6
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 1020
	st.d	$a1, $fp, 1028
	fld.s	$fa6, $s1, 56
	fld.s	$fa7, $s1, 60
	fld.s	$ft0, $s1, 64
	fsub.s	$fa1, $fa1, $fa6
	fsub.s	$fa3, $fa3, $fa7
	fsub.s	$fa5, $fa5, $ft0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 1068
	st.d	$a1, $fp, 1076
	fld.s	$fa1, $s0, 56
	fld.s	$fa3, $s0, 60
	fld.s	$fa5, $s0, 64
	addi.d	$s2, $fp, 1068
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$s3, $fp, 1084
	st.d	$a0, $fp, 1084
	st.d	$a1, $fp, 1092
	addi.d	$a0, $fp, 324
	addi.d	$s4, $s1, 428
	ld.w	$a1, $fp, 860
	ld.wu	$a2, $fp, 844
	addi.d	$s5, $s0, 428
	ld.wu	$a3, $fp, 876
	slli.d	$a1, $a1, 32
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 112
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $s1, 24
	fld.s	$fa2, $s1, 40
	st.d	$a3, $sp, 120
	fst.s	$fa0, $sp, 64
	fst.s	$fa1, $sp, 68
	fst.s	$fa2, $sp, 72
	fld.s	$fa0, $s1, 12
	fld.s	$fa1, $s1, 28
	fld.s	$fa2, $s1, 44
	st.w	$zero, $sp, 76
	fst.s	$fa0, $sp, 80
	fst.s	$fa1, $sp, 84
	fst.s	$fa2, $sp, 88
	fld.s	$fa0, $s1, 16
	fld.s	$fa1, $s1, 32
	fld.s	$fa2, $s1, 48
	st.w	$zero, $sp, 92
	fst.s	$fa0, $sp, 96
	fst.s	$fa1, $sp, 100
	fst.s	$fa2, $sp, 104
	fld.s	$fa0, $s0, 8
	fld.s	$fa1, $s0, 24
	fld.s	$fa2, $s0, 40
	st.w	$zero, $sp, 108
	fst.s	$fa0, $sp, 16
	fst.s	$fa1, $sp, 20
	fst.s	$fa2, $sp, 24
	fld.s	$fa0, $s0, 12
	st.w	$zero, $sp, 28
	fld.s	$fa1, $s0, 28
	fld.s	$fa2, $s0, 44
	fst.s	$fa0, $sp, 32
	fld.s	$fa0, $s0, 16
	fst.s	$fa1, $sp, 36
	fst.s	$fa2, $sp, 40
	st.w	$zero, $sp, 44
	fst.s	$fa0, $sp, 48
	fld.s	$fa2, $s0, 32
	fld.s	$fa3, $s0, 48
	fld.s	$fa0, $s1, 360
	fld.s	$fa1, $s0, 360
	fst.s	$fa2, $sp, 52
	fst.s	$fa3, $sp, 56
	st.w	$zero, $sp, 60
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 16
	addi.d	$a5, $sp, 112
	move	$a3, $s2
	move	$a4, $s3
	move	$a6, $s4
	move	$a7, $s5
	pcaddu18i	$ra, %call36(_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1040
	fld.s	$fa1, $sp, 116
	fld.s	$fa2, $fp, 404
	fld.s	$fa3, $fp, 1036
	fld.s	$fa4, $sp, 112
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $fp, 1044
	fld.s	$fa5, $sp, 120
	fmadd.s	$fa0, $fa3, $fa4, $fa0
	frecip.s	$fa2, $fa2
	fst.s	$fa2, $fp, 576
	fmadd.s	$fa0, $fa1, $fa5, $fa0
	ld.w	$a0, $fp, 864
	ld.wu	$a1, $fp, 848
	fst.s	$fa0, $fp, 1052
	ld.wu	$a2, $fp, 880
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 112
	st.d	$a2, $sp, 120
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $s1, 24
	fld.s	$fa2, $s1, 40
	addi.d	$a0, $fp, 408
	fst.s	$fa0, $sp, 64
	fst.s	$fa1, $sp, 68
	fst.s	$fa2, $sp, 72
	fld.s	$fa0, $s1, 12
	fld.s	$fa1, $s1, 28
	fld.s	$fa2, $s1, 44
	st.w	$zero, $sp, 76
	fst.s	$fa0, $sp, 80
	fst.s	$fa1, $sp, 84
	fst.s	$fa2, $sp, 88
	fld.s	$fa0, $s1, 16
	fld.s	$fa1, $s1, 32
	fld.s	$fa2, $s1, 48
	st.w	$zero, $sp, 92
	fst.s	$fa0, $sp, 96
	fst.s	$fa1, $sp, 100
	fst.s	$fa2, $sp, 104
	fld.s	$fa0, $s0, 8
	fld.s	$fa1, $s0, 24
	fld.s	$fa2, $s0, 40
	st.w	$zero, $sp, 108
	fst.s	$fa0, $sp, 16
	fst.s	$fa1, $sp, 20
	fst.s	$fa2, $sp, 24
	fld.s	$fa0, $s0, 12
	st.w	$zero, $sp, 28
	fld.s	$fa1, $s0, 28
	fld.s	$fa2, $s0, 44
	fst.s	$fa0, $sp, 32
	fld.s	$fa0, $s0, 16
	fst.s	$fa1, $sp, 36
	fst.s	$fa2, $sp, 40
	st.w	$zero, $sp, 44
	fst.s	$fa0, $sp, 48
	fld.s	$fa2, $s0, 32
	fld.s	$fa3, $s0, 48
	fld.s	$fa0, $s1, 360
	fld.s	$fa1, $s0, 360
	fst.s	$fa2, $sp, 52
	fst.s	$fa3, $sp, 56
	st.w	$zero, $sp, 60
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 16
	addi.d	$a5, $sp, 112
	move	$a3, $s2
	move	$a4, $s3
	move	$a6, $s4
	move	$a7, $s5
	pcaddu18i	$ra, %call36(_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1040
	fld.s	$fa1, $sp, 116
	fld.s	$fa2, $fp, 488
	fld.s	$fa3, $fp, 1036
	fld.s	$fa4, $sp, 112
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $fp, 1044
	fld.s	$fa5, $sp, 120
	fmadd.s	$fa0, $fa3, $fa4, $fa0
	frecip.s	$fa2, $fa2
	fst.s	$fa2, $fp, 580
	fmadd.s	$fa0, $fa1, $fa5, $fa0
	ld.w	$a0, $fp, 868
	ld.wu	$a1, $fp, 852
	fst.s	$fa0, $fp, 1056
	ld.wu	$a2, $fp, 884
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 112
	st.d	$a2, $sp, 120
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $s1, 24
	fld.s	$fa2, $s1, 40
	addi.d	$a0, $fp, 492
	fst.s	$fa0, $sp, 64
	fst.s	$fa1, $sp, 68
	fst.s	$fa2, $sp, 72
	fld.s	$fa0, $s1, 12
	fld.s	$fa1, $s1, 28
	fld.s	$fa2, $s1, 44
	st.w	$zero, $sp, 76
	fst.s	$fa0, $sp, 80
	fst.s	$fa1, $sp, 84
	fst.s	$fa2, $sp, 88
	fld.s	$fa0, $s1, 16
	fld.s	$fa1, $s1, 32
	fld.s	$fa2, $s1, 48
	st.w	$zero, $sp, 92
	fst.s	$fa0, $sp, 96
	fst.s	$fa1, $sp, 100
	fst.s	$fa2, $sp, 104
	fld.s	$fa0, $s0, 8
	fld.s	$fa1, $s0, 24
	fld.s	$fa2, $s0, 40
	st.w	$zero, $sp, 108
	fst.s	$fa0, $sp, 16
	fst.s	$fa1, $sp, 20
	fst.s	$fa2, $sp, 24
	fld.s	$fa0, $s0, 12
	st.w	$zero, $sp, 28
	fld.s	$fa1, $s0, 28
	fld.s	$fa2, $s0, 44
	fst.s	$fa0, $sp, 32
	fld.s	$fa0, $s0, 16
	fst.s	$fa1, $sp, 36
	fst.s	$fa2, $sp, 40
	st.w	$zero, $sp, 44
	fst.s	$fa0, $sp, 48
	fld.s	$fa2, $s0, 32
	fld.s	$fa3, $s0, 48
	fld.s	$fa0, $s1, 360
	fld.s	$fa1, $s0, 360
	fst.s	$fa2, $sp, 52
	fst.s	$fa3, $sp, 56
	st.w	$zero, $sp, 60
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 16
	addi.d	$a5, $sp, 112
	move	$a3, $s2
	move	$a4, $s3
	move	$a6, $s4
	move	$a7, $s5
	pcaddu18i	$ra, %call36(_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1040
	fld.s	$fa1, $sp, 116
	fld.s	$fa2, $fp, 572
	fld.s	$fa3, $fp, 1036
	fld.s	$fa4, $sp, 112
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $fp, 1044
	fld.s	$fa5, $sp, 120
	fmadd.s	$fa0, $fa3, $fa4, $fa0
	frecip.s	$fa2, $fa2
	fst.s	$fa2, $fp, 584
	fmadd.s	$fa3, $fa1, $fa5, $fa0
	fld.s	$fa0, $fp, 232
	fld.s	$fa2, $fp, 236
	fld.s	$fa1, $fp, 1052
	fst.s	$fa3, $fp, 1060
	st.b	$zero, $fp, 320
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fst.s	$fa1, $fp, 1100
	bceqz	$fcc0, .LBB7_2
.LBB7_1:
	st.w	$zero, $fp, 1052
	b	.LBB7_7
.LBB7_2:
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB7_4
# %bb.3:
	fsub.s	$fa0, $fa1, $fa2
	b	.LBB7_6
.LBB7_4:
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_1
# %bb.5:
	fsub.s	$fa0, $fa1, $fa0
.LBB7_6:                                # %_ZN18btSliderConstraint13testLinLimitsEv.exit
	fst.s	$fa0, $fp, 1052
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 320
.LBB7_7:                                # %_ZN18btSliderConstraint13testLinLimitsEv.exit
	move	$a1, $zero
	ori	$a2, $zero, 844
	vrepli.b	$vr0, 0
	ori	$a3, $zero, 252
	.p2align	4, , 16
.LBB7_8:                                # =>This Inner Loop Header: Depth=1
	add.d	$a0, $fp, $a2
	ldx.wu	$a4, $fp, $a2
	ld.wu	$a5, $a0, 16
	ld.wu	$a0, $a0, 32
	add.d	$a6, $fp, $a1
	fld.s	$fa1, $s1, 8
	fld.s	$fa2, $s1, 24
	fld.s	$fa3, $s1, 40
	fld.s	$fa4, $s1, 12
	fld.s	$fa5, $s1, 28
	fld.s	$fa6, $s1, 44
	fld.s	$fa7, $s1, 16
	fld.s	$ft0, $s1, 32
	fld.s	$ft1, $s1, 48
	fld.s	$ft2, $s0, 8
	fld.s	$ft3, $s0, 24
	fld.s	$ft4, $s0, 40
	fld.s	$ft5, $s0, 12
	fld.s	$ft6, $s0, 28
	fld.s	$ft7, $s0, 44
	fld.s	$ft8, $s0, 16
	fld.s	$ft9, $s0, 32
	fld.s	$ft10, $s0, 48
	vst	$vr0, $a6, 588
	movgr2fr.w	$ft11, $a4
	movgr2fr.w	$ft12, $a5
	fmul.s	$fa2, $fa2, $ft12
	fmadd.s	$fa1, $fa1, $ft11, $fa2
	movgr2fr.w	$fa2, $a0
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	fmul.s	$fa3, $fa5, $ft12
	fmadd.s	$fa3, $fa4, $ft11, $fa3
	fmadd.s	$fa3, $fa6, $fa2, $fa3
	fmul.s	$fa4, $ft0, $ft12
	fmadd.s	$fa4, $fa7, $ft11, $fa4
	fmadd.s	$fa4, $ft1, $fa2, $fa4
	movfr2gr.s	$a7, $fa1
	movfr2gr.s	$t0, $fa3
	bstrins.d	$a7, $t0, 63, 32
	movfr2gr.s	$t0, $fa4
	bstrpick.d	$t0, $t0, 31, 0
	st.d	$a7, $a6, 604
	st.d	$t0, $a6, 612
	fneg.s	$fa5, $ft11
	fneg.s	$fa6, $ft12
	fneg.s	$fa2, $fa2
	fmul.s	$fa7, $ft3, $fa6
	fmadd.s	$fa7, $ft2, $fa5, $fa7
	fmadd.s	$fa7, $ft4, $fa2, $fa7
	fmul.s	$ft0, $ft6, $fa6
	fmadd.s	$ft0, $ft5, $fa5, $ft0
	fmadd.s	$ft0, $ft7, $fa2, $ft0
	fmul.s	$fa6, $ft9, $fa6
	fmadd.s	$fa5, $ft8, $fa5, $fa6
	fmadd.s	$fa2, $ft10, $fa2, $fa5
	movfr2gr.s	$a7, $fa7
	movfr2gr.s	$t0, $ft0
	bstrins.d	$a7, $t0, 63, 32
	movfr2gr.s	$t0, $fa2
	bstrpick.d	$t0, $t0, 31, 0
	st.d	$a7, $a6, 620
	st.d	$t0, $a6, 628
	fld.s	$fa5, $s1, 428
	fld.s	$fa6, $s1, 432
	fld.s	$ft1, $s1, 436
	fmul.s	$fa5, $fa1, $fa5
	fmul.s	$fa6, $fa3, $fa6
	fmul.s	$ft1, $fa4, $ft1
	movfr2gr.s	$a7, $fa5
	movfr2gr.s	$t0, $fa6
	bstrins.d	$a7, $t0, 63, 32
	movfr2gr.s	$t0, $ft1
	bstrpick.d	$t0, $t0, 31, 0
	st.d	$a7, $a6, 636
	st.d	$t0, $a6, 644
	fld.s	$ft2, $s0, 428
	fld.s	$ft3, $s0, 432
	fld.s	$ft4, $s0, 436
	fmul.s	$ft2, $fa7, $ft2
	fmul.s	$ft3, $ft0, $ft3
	fmul.s	$ft4, $fa2, $ft4
	movfr2gr.s	$a7, $ft2
	movfr2gr.s	$t0, $ft3
	bstrins.d	$a7, $t0, 63, 32
	movfr2gr.s	$t0, $ft4
	bstrpick.d	$t0, $t0, 31, 0
	st.d	$a7, $a6, 652
	st.d	$t0, $a6, 660
	fmul.s	$fa3, $fa3, $fa6
	fmadd.s	$fa1, $fa5, $fa1, $fa3
	fmadd.s	$fa1, $ft1, $fa4, $fa1
	fmul.s	$fa3, $ft0, $ft3
	fmadd.s	$fa3, $ft2, $fa7, $fa3
	fmadd.s	$fa2, $ft4, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a6, 668
	addi.d	$a1, $a1, 84
	addi.d	$a2, $a2, 4
	bne	$a1, $a3, .LBB7_8
# %bb.9:
	slli.d	$a1, $a5, 32
	or	$a1, $a1, $a4
	fld.s	$fa1, $fp, 240
	fld.s	$fa2, $fp, 244
	st.d	$a1, $sp, 112
	st.d	$a0, $sp, 120
	st.w	$zero, $fp, 1108
	fcmp.cult.s	$fcc0, $fa2, $fa1
	st.b	$zero, $fp, 321
	bcnez	$fcc0, .LBB7_16
# %bb.10:
	fld.s	$fa3, $fp, 848
	fld.s	$fa4, $fp, 864
	fld.s	$fa0, $fp, 852
	fld.s	$fa5, $fp, 868
	fld.s	$fa6, $fp, 884
	fld.s	$fa7, $fp, 928
	fld.s	$ft0, $fp, 912
	fld.s	$ft1, $fp, 944
	fld.s	$ft2, $fp, 880
	fmul.s	$fa5, $fa5, $fa7
	fmadd.s	$fa0, $ft0, $fa0, $fa5
	fmadd.s	$fa0, $ft1, $fa6, $fa0
	fmul.s	$fa4, $fa4, $fa7
	fmadd.s	$fa3, $ft0, $fa3, $fa4
	fmadd.s	$fa4, $ft1, $ft2, $fa3
	movgr2fr.w	$fa3, $zero
	fcmp.cult.s	$fcc0, $fa4, $fa3
	fabs.s	$fa5, $fa0
	bceqz	$fcc0, .LBB7_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI7_2)
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI7_1)
	fadd.s	$ft0, $fa4, $fa5
	fsub.s	$fa4, $fa5, $fa4
	b	.LBB7_13
.LBB7_12:
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI7_0)
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI7_1)
	fsub.s	$ft0, $fa4, $fa5
	fadd.s	$fa4, $fa4, $fa5
.LBB7_13:                               # %_Z11btAtan2Fastff.exit.i
	fdiv.s	$fa4, $ft0, $fa4
	fmadd.s	$fa4, $fa4, $fa7, $fa6
	fneg.s	$fa5, $fa4
	fcmp.clt.s	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa4, $fa5, $fcc0
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 240
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fst.s	$fa0, $fp, 1104
	bcnez	$fcc0, .LBB7_15
# %bb.14:
	fld.s	$fa1, $fp, 244
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_16
.LBB7_15:                               # %.sink.split.i
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 1108
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 321
.LBB7_16:                               # %_ZN18btSliderConstraint13testAngLimitsEv.exit
	fld.s	$fa0, $fp, 860
	fld.s	$fa1, $s1, 296
	fld.s	$fa2, $fp, 844
	fld.s	$fa3, $fp, 876
	fld.s	$fa4, $s1, 280
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa5, $s1, 312
	fld.s	$fa6, $s1, 300
	fld.s	$fa7, $s1, 284
	fmadd.s	$fa1, $fa4, $fa2, $fa1
	fmadd.s	$fa1, $fa5, $fa3, $fa1
	fmul.s	$fa4, $fa0, $fa6
	fmadd.s	$fa4, $fa7, $fa2, $fa4
	fld.s	$fa5, $s1, 316
	fld.s	$fa6, $s1, 304
	fld.s	$fa7, $s1, 288
	fld.s	$ft0, $s1, 320
	fmadd.s	$fa4, $fa5, $fa3, $fa4
	fmul.s	$fa5, $fa0, $fa6
	fmadd.s	$fa5, $fa7, $fa2, $fa5
	fmadd.s	$fa5, $ft0, $fa3, $fa5
	fmul.s	$fa4, $fa0, $fa4
	fld.s	$fa6, $s0, 296
	fmadd.s	$fa1, $fa2, $fa1, $fa4
	fmadd.s	$fa1, $fa3, $fa5, $fa1
	fld.s	$fa4, $s0, 280
	fmul.s	$fa5, $fa0, $fa6
	fld.s	$fa6, $s0, 312
	fld.s	$fa7, $s0, 300
	fld.s	$ft0, $s0, 284
	fmadd.s	$fa4, $fa4, $fa2, $fa5
	fmadd.s	$fa4, $fa6, $fa3, $fa4
	fmul.s	$fa5, $fa0, $fa7
	fmadd.s	$fa5, $ft0, $fa2, $fa5
	fld.s	$fa6, $s0, 316
	fld.s	$fa7, $s0, 304
	fld.s	$ft0, $s0, 288
	fld.s	$ft1, $s0, 320
	fmadd.s	$fa5, $fa6, $fa3, $fa5
	fmul.s	$fa6, $fa0, $fa7
	fmadd.s	$fa6, $ft0, $fa2, $fa6
	fmadd.s	$fa6, $ft1, $fa3, $fa6
	fmul.s	$fa0, $fa0, $fa5
	fmadd.s	$fa0, $fa2, $fa4, $fa0
	fmadd.s	$fa0, $fa3, $fa6, $fa0
	fadd.s	$fa0, $fa1, $fa0
	frecip.s	$fa0, $fa0
	fst.s	$fa0, $fp, 1112
	st.w	$zero, $fp, 1128
	st.w	$zero, $fp, 1144
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
.Lfunc_end7:
	.size	_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_, .Lfunc_end7-_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_
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
.Lfunc_end8:
	.size	_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f, .Lfunc_end8-_ZN15btJacobianEntryC2ERK11btMatrix3x3S2_RK9btVector3S5_S5_S5_fS5_f
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN18btSliderConstraint13testLinLimitsEv # -- Begin function _ZN18btSliderConstraint13testLinLimitsEv
	.p2align	5
	.type	_ZN18btSliderConstraint13testLinLimitsEv,@function
_ZN18btSliderConstraint13testLinLimitsEv: # @_ZN18btSliderConstraint13testLinLimitsEv
# %bb.0:
	fld.s	$fa0, $a0, 232
	fld.s	$fa2, $a0, 236
	fld.s	$fa1, $a0, 1052
	st.b	$zero, $a0, 320
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fst.s	$fa1, $a0, 1100
	bceqz	$fcc0, .LBB9_2
.LBB9_1:
	st.w	$zero, $a0, 1052
	ret
.LBB9_2:
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB9_4
# %bb.3:
	fsub.s	$fa0, $fa1, $fa2
	fst.s	$fa0, $a0, 1052
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 320
	ret
.LBB9_4:
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_1
# %bb.5:
	fsub.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 1052
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 320
	ret
.Lfunc_end9:
	.size	_ZN18btSliderConstraint13testLinLimitsEv, .Lfunc_end9-_ZN18btSliderConstraint13testLinLimitsEv
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN18btSliderConstraint13testAngLimitsEv
.LCPI10_0:
	.word	0x3f490fdb                      # float 0.785398185
.LCPI10_1:
	.word	0xbf490fdb                      # float -0.785398185
.LCPI10_2:
	.word	0x4016cbe4                      # float 2.3561945
	.text
	.globl	_ZN18btSliderConstraint13testAngLimitsEv
	.p2align	5
	.type	_ZN18btSliderConstraint13testAngLimitsEv,@function
_ZN18btSliderConstraint13testAngLimitsEv: # @_ZN18btSliderConstraint13testAngLimitsEv
	.cfi_startproc
# %bb.0:
	fld.s	$fa1, $a0, 240
	fld.s	$fa2, $a0, 244
	st.w	$zero, $a0, 1108
	fcmp.cult.s	$fcc0, $fa2, $fa1
	st.b	$zero, $a0, 321
	bcnez	$fcc0, .LBB10_8
# %bb.1:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	fld.s	$fa3, $a0, 848
	fld.s	$fa4, $a0, 864
	fld.s	$fa0, $a0, 852
	fld.s	$fa5, $a0, 868
	fld.s	$fa6, $a0, 884
	fld.s	$fa7, $a0, 928
	fld.s	$ft0, $a0, 912
	fld.s	$ft1, $a0, 944
	fld.s	$ft2, $a0, 880
	fmul.s	$fa5, $fa5, $fa7
	fmadd.s	$fa0, $ft0, $fa0, $fa5
	fmadd.s	$fa0, $ft1, $fa6, $fa0
	fmul.s	$fa4, $fa4, $fa7
	fmadd.s	$fa3, $ft0, $fa3, $fa4
	fmadd.s	$fa4, $ft1, $ft2, $fa3
	movgr2fr.w	$fa3, $zero
	fcmp.cult.s	$fcc0, $fa4, $fa3
	fabs.s	$fa5, $fa0
	bceqz	$fcc0, .LBB10_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.LCPI10_2)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI10_2)
	pcalau12i	$a0, %pc_hi20(.LCPI10_1)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI10_1)
	fadd.s	$ft0, $fa4, $fa5
	fsub.s	$fa4, $fa5, $fa4
	b	.LBB10_4
.LBB10_3:
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI10_0)
	pcalau12i	$a0, %pc_hi20(.LCPI10_1)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI10_1)
	fsub.s	$ft0, $fa4, $fa5
	fadd.s	$fa4, $fa4, $fa5
.LBB10_4:                               # %_Z11btAtan2Fastff.exit
	fdiv.s	$fa4, $ft0, $fa4
	fmadd.s	$fa4, $fa4, $fa7, $fa6
	fneg.s	$fa5, $fa4
	fcmp.clt.s	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa4, $fa5, $fcc0
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 240
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fst.s	$fa0, $fp, 1104
	bcnez	$fcc0, .LBB10_6
# %bb.5:
	fld.s	$fa1, $fp, 244
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB10_7
.LBB10_6:                               # %.sink.split
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 1108
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 321
.LBB10_7:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB10_8:
	ret
.Lfunc_end10:
	.size	_ZN18btSliderConstraint13testAngLimitsEv, .Lfunc_end10-_ZN18btSliderConstraint13testAngLimitsEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
.LCPI11_0:
	.word	0x3f490fdb                      # float 0.785398185
.LCPI11_1:
	.word	0xbf490fdb                      # float -0.785398185
.LCPI11_2:
	.word	0x4016cbe4                      # float 2.3561945
	.text
	.globl	_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.p2align	5
	.type	_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E,@function
_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E: # @_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
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
	ld.bu	$a0, $a0, 96
	move	$fp, $a1
	beqz	$a0, .LBB11_2
# %bb.1:
	move	$a0, $zero
	st.w	$zero, $fp, 0
	b	.LBB11_18
.LBB11_2:
	ori	$a0, $zero, 4
	lu32i.d	$a0, 2
	st.d	$a0, $fp, 0
	ld.d	$a0, $s0, 24
	ld.d	$a2, $s0, 32
	addi.d	$a1, $a0, 8
	addi.d	$a2, $a2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_)
	jirl	$ra, $ra, 0
	fld.s	$fa2, $s0, 232
	fld.s	$fa1, $s0, 236
	fld.s	$fa0, $s0, 1052
	st.b	$zero, $s0, 320
	fcmp.cult.s	$fcc0, $fa1, $fa2
	fst.s	$fa0, $s0, 1100
	bceqz	$fcc0, .LBB11_4
.LBB11_3:                               # %_ZN18btSliderConstraint13testLinLimitsEv.exit
	ld.bu	$a0, $s0, 1116
	st.w	$zero, $s0, 1052
	bnez	$a0, .LBB11_7
	b	.LBB11_8
.LBB11_4:
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_6
# %bb.5:
	fcmp.clt.s	$fcc0, $fa0, $fa2
	fmov.s	$fa1, $fa2
	bceqz	$fcc0, .LBB11_3
.LBB11_6:                               # %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread.sink.split
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s0, 1052
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 320
.LBB11_7:                               # %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a0, $a1, -1
	st.w	$a0, $fp, 4
.LBB11_8:
	fld.s	$fa1, $s0, 240
	fld.s	$fa2, $s0, 244
	move	$a0, $zero
	st.w	$zero, $s0, 1108
	fcmp.cult.s	$fcc0, $fa2, $fa1
	st.b	$zero, $s0, 321
	bceqz	$fcc0, .LBB11_11
# %bb.9:                                # %_ZN18btSliderConstraint13testAngLimitsEv.exit
	andi	$a0, $a0, 1
	bnez	$a0, .LBB11_17
.LBB11_10:                              # %_ZN18btSliderConstraint13testAngLimitsEv.exit
	ld.b	$a0, $s0, 1132
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_19
	b	.LBB11_17
.LBB11_11:
	fld.s	$fa3, $s0, 848
	fld.s	$fa4, $s0, 864
	fld.s	$fa0, $s0, 852
	fld.s	$fa5, $s0, 868
	fld.s	$fa6, $s0, 884
	fld.s	$fa7, $s0, 928
	fld.s	$ft0, $s0, 912
	fld.s	$ft1, $s0, 944
	fld.s	$ft2, $s0, 880
	fmul.s	$fa5, $fa5, $fa7
	fmadd.s	$fa0, $ft0, $fa0, $fa5
	fmadd.s	$fa0, $ft1, $fa6, $fa0
	fmul.s	$fa4, $fa4, $fa7
	fmadd.s	$fa3, $ft0, $fa3, $fa4
	fmadd.s	$fa4, $ft1, $ft2, $fa3
	movgr2fr.w	$fa3, $zero
	fcmp.cult.s	$fcc0, $fa4, $fa3
	fabs.s	$fa5, $fa0
	bceqz	$fcc0, .LBB11_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.LCPI11_2)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI11_2)
	pcalau12i	$a0, %pc_hi20(.LCPI11_1)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI11_1)
	fadd.s	$ft0, $fa4, $fa5
	fsub.s	$fa4, $fa5, $fa4
	b	.LBB11_14
.LBB11_13:
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI11_0)
	pcalau12i	$a0, %pc_hi20(.LCPI11_1)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI11_1)
	fsub.s	$ft0, $fa4, $fa5
	fadd.s	$fa4, $fa4, $fa5
.LBB11_14:                              # %_Z11btAtan2Fastff.exit.i
	fdiv.s	$fa4, $ft0, $fa4
	fmadd.s	$fa4, $fa4, $fa7, $fa6
	fneg.s	$fa5, $fa4
	fcmp.clt.s	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa4, $fa5, $fcc0
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s0, 240
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fst.s	$fa0, $s0, 1104
	bcnez	$fcc0, .LBB11_16
# %bb.15:
	fld.s	$fa1, $s0, 244
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB11_20
.LBB11_16:                              # %_ZN18btSliderConstraint13testAngLimitsEv.exit.thread
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s0, 1108
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 321
.LBB11_17:
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a0, $a1, -1
.LBB11_18:                              # %.sink.split
	st.w	$a0, $fp, 4
.LBB11_19:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB11_20:                              # %._ZN18btSliderConstraint13testAngLimitsEv.exit_crit_edge
	ld.b	$a0, $s0, 321
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_10
	b	.LBB11_17
.Lfunc_end11:
	.size	_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, .Lfunc_end11-_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.cfi_endproc
                                        # -- End function
	.globl	_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_ # -- Begin function _ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_
	.p2align	5
	.type	_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_,@function
_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_: # @_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	ld.bu	$a3, $a0, 228
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	ld.b	$a5, $a0, 96
	move	$a4, $a1
	xori	$a3, $a3, 1
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	and	$a5, $a3, $a5
	ori	$a1, $zero, 100
	masknez	$a3, $a1, $a5
	ori	$a1, $zero, 164
	maskeqz	$a7, $a1, $a5
	or	$a1, $a7, $a3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	masknez	$a3, $a4, $a5
	maskeqz	$a7, $a2, $a5
	or	$a7, $a7, $a3
	ori	$a1, $zero, 116
	masknez	$a3, $a1, $a5
	ori	$a1, $zero, 180
	maskeqz	$t2, $a1, $a5
	or	$a1, $t2, $a3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 132
	masknez	$a3, $a1, $a5
	ori	$a1, $zero, 196
	maskeqz	$t4, $a1, $a5
	or	$a1, $t4, $a3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $zero, 104
	masknez	$a3, $a1, $a5
	ori	$s3, $zero, 168
	maskeqz	$t7, $s3, $a5
	or	$a1, $t7, $a3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$s6, $zero, 120
	masknez	$a3, $s6, $a5
	ori	$s1, $zero, 184
	maskeqz	$s0, $s1, $a5
	or	$a1, $s0, $a3
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s2, $zero, 136
	masknez	$a3, $s2, $a5
	ori	$t8, $zero, 200
	maskeqz	$s0, $t8, $a5
	or	$s7, $s0, $a3
	ori	$fp, $zero, 108
	masknez	$a3, $fp, $a5
	ori	$t5, $zero, 172
	maskeqz	$s0, $t5, $a5
	or	$s8, $s0, $a3
	ori	$t7, $zero, 124
	masknez	$a3, $t7, $a5
	ori	$t3, $zero, 188
	maskeqz	$s0, $t3, $a5
	or	$ra, $s0, $a3
	ori	$t4, $zero, 140
	masknez	$t0, $t4, $a5
	ori	$t1, $zero, 204
	maskeqz	$s0, $t1, $a5
	or	$t6, $s0, $t0
	ori	$t2, $zero, 148
	masknez	$s0, $t2, $a5
	ori	$t0, $zero, 212
	maskeqz	$s5, $t0, $a5
	or	$a1, $s5, $s0
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$s5, $zero, 152
	masknez	$s0, $s5, $a5
	ori	$a6, $zero, 216
	maskeqz	$s4, $a6, $a5
	or	$a1, $s4, $s0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$s4, $zero, 156
	masknez	$a1, $s4, $a5
	ori	$a3, $zero, 220
	maskeqz	$s0, $a3, $a5
	or	$a1, $s0, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 164
	masknez	$a1, $a1, $a5
	ori	$s0, $zero, 100
	maskeqz	$s0, $s0, $a5
	or	$a1, $s0, $a1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	masknez	$a1, $a2, $a5
	maskeqz	$a2, $a4, $a5
	or	$a1, $a2, $a1
	ori	$a2, $zero, 180
	masknez	$a2, $a2, $a5
	ori	$a4, $zero, 116
	maskeqz	$a4, $a4, $a5
	or	$a2, $a4, $a2
	ori	$a4, $zero, 196
	masknez	$a4, $a4, $a5
	ori	$s0, $zero, 132
	maskeqz	$s0, $s0, $a5
	or	$a4, $s0, $a4
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	masknez	$a4, $s3, $a5
	ori	$s0, $zero, 104
	maskeqz	$s0, $s0, $a5
	or	$a4, $s0, $a4
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	masknez	$a4, $s1, $a5
	maskeqz	$s0, $s6, $a5
	or	$s3, $s0, $a4
	masknez	$a4, $t8, $a5
	maskeqz	$t8, $s2, $a5
	or	$s1, $t8, $a4
	masknez	$a4, $t5, $a5
	maskeqz	$t5, $fp, $a5
	or	$fp, $t5, $a4
	masknez	$a4, $t3, $a5
	maskeqz	$t3, $t7, $a5
	or	$t7, $t3, $a4
	masknez	$a4, $t1, $a5
	maskeqz	$t1, $t4, $a5
	or	$t8, $t1, $a4
	masknez	$a4, $t0, $a5
	maskeqz	$t0, $t2, $a5
	or	$a4, $t0, $a4
	masknez	$a6, $a6, $a5
	maskeqz	$t0, $s5, $a5
	or	$a6, $t0, $a6
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $s4, $a5
	or	$a5, $a5, $a3
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $a3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	fldx.s	$fa1, $a0, $a3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	fldx.s	$fa2, $a0, $a3
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	fldx.s	$fa3, $a0, $a3
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	fldx.s	$fa4, $a0, $a3
	fldx.s	$fa5, $a0, $s7
	fldx.s	$fa6, $a0, $s8
	fldx.s	$fa7, $a0, $ra
	fldx.s	$ft0, $a0, $t6
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	fldx.s	$ft1, $a0, $a3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	fldx.s	$ft2, $a0, $a3
	fld.s	$fs0, $a7, 0
	fld.s	$fs2, $a7, 4
	fld.s	$fs1, $a7, 8
	fld.s	$ft14, $a7, 16
	fld.s	$ft15, $a7, 20
	fld.s	$ft13, $a7, 24
	fld.s	$ft10, $a7, 32
	fld.s	$ft12, $a7, 36
	fld.s	$ft11, $a7, 40
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	fldx.s	$ft3, $a0, $a3
	fld.s	$ft4, $a7, 48
	fmul.s	$ft5, $fs2, $ft2
	fmadd.s	$ft5, $fs0, $ft1, $ft5
	fmadd.s	$ft5, $fs1, $ft3, $ft5
	fadd.s	$ft4, $ft4, $ft5
	fld.s	$ft5, $a7, 52
	fmul.s	$ft6, $ft15, $ft2
	fmadd.s	$ft6, $ft14, $ft1, $ft6
	fmadd.s	$ft6, $ft13, $ft3, $ft6
	fadd.s	$ft5, $ft5, $ft6
	fld.s	$ft6, $a7, 56
	movfr2gr.s	$a3, $ft4
	movfr2gr.s	$a7, $ft5
	bstrins.d	$a3, $a7, 63, 32
	fmul.s	$ft2, $ft12, $ft2
	fmadd.s	$ft1, $ft10, $ft1, $ft2
	fmadd.s	$ft1, $ft11, $ft3, $ft1
	fadd.s	$ft1, $ft1, $ft6
	st.d	$a3, $a0, 892
	movfr2gr.s	$a3, $ft1
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a3, $a0, 900
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	fldx.s	$ft2, $a0, $a3
	fldx.s	$ft7, $a0, $a2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	fldx.s	$ft3, $a0, $a2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	fldx.s	$ft1, $a0, $a2
	fldx.s	$ft4, $a0, $s3
	fldx.s	$ft5, $a0, $s1
	fldx.s	$ft6, $a0, $fp
	fldx.s	$ft8, $a0, $t7
	fldx.s	$ft9, $a0, $t8
	fmul.s	$fs3, $fa1, $fs2
	fmadd.s	$fs3, $fa0, $fs0, $fs3
	fmadd.s	$fs3, $fa2, $fs1, $fs3
	fmul.s	$fs4, $fs2, $fa4
	fmadd.s	$fs4, $fa3, $fs0, $fs4
	fmadd.s	$fs4, $fa5, $fs1, $fs4
	fmul.s	$fs2, $fs2, $fa7
	fmadd.s	$fs0, $fa6, $fs0, $fs2
	fmadd.s	$fs0, $ft0, $fs1, $fs0
	fmul.s	$fs1, $fa1, $ft15
	fmadd.s	$fs1, $fa0, $ft14, $fs1
	fmul.s	$fs2, $fa4, $ft15
	fmadd.s	$fs2, $fa3, $ft14, $fs2
	fmul.s	$ft15, $fa7, $ft15
	fmadd.s	$ft14, $fa6, $ft14, $ft15
	fmadd.s	$ft15, $fa2, $ft13, $fs1
	fmadd.s	$fs1, $fa5, $ft13, $fs2
	fmadd.s	$ft13, $ft0, $ft13, $ft14
	fmul.s	$fa1, $fa1, $ft12
	fmadd.s	$fa0, $fa0, $ft10, $fa1
	fmadd.s	$fa0, $fa2, $ft11, $fa0
	fmul.s	$fa1, $fa4, $ft12
	fmadd.s	$fa1, $fa3, $ft10, $fa1
	fmadd.s	$fa1, $fa5, $ft11, $fa1
	fmul.s	$fa2, $fa7, $ft12
	fmadd.s	$fa2, $fa6, $ft10, $fa2
	fmadd.s	$fa2, $ft0, $ft11, $fa2
	fst.s	$fs3, $a0, 844
	fst.s	$fs4, $a0, 848
	fst.s	$fs0, $a0, 852
	st.w	$zero, $a0, 856
	fst.s	$ft15, $a0, 860
	fst.s	$fs1, $a0, 864
	fst.s	$ft13, $a0, 868
	st.w	$zero, $a0, 872
	fst.s	$fa0, $a0, 876
	fst.s	$fa1, $a0, 880
	fst.s	$fa2, $a0, 884
	st.w	$zero, $a0, 888
	fld.s	$fa1, $a1, 4
	fld.s	$fa0, $a1, 0
	fld.s	$fa2, $a1, 8
	fldx.s	$fa3, $a0, $a6
	fmul.s	$fa4, $ft7, $fa1
	fmadd.s	$fa4, $ft2, $fa0, $fa4
	fmadd.s	$fa4, $ft3, $fa2, $fa4
	fmul.s	$fa5, $fa1, $ft4
	fmadd.s	$fa5, $ft1, $fa0, $fa5
	fmadd.s	$fa5, $ft5, $fa2, $fa5
	fmul.s	$fa6, $fa1, $ft8
	fld.s	$fa7, $a1, 20
	fmadd.s	$fa6, $ft6, $fa0, $fa6
	fmadd.s	$fa6, $ft9, $fa2, $fa6
	fld.s	$ft0, $a1, 16
	fmul.s	$ft10, $ft7, $fa7
	fld.s	$ft11, $a1, 24
	fld.s	$ft12, $a1, 36
	fld.s	$ft13, $a1, 32
	fmadd.s	$ft10, $ft2, $ft0, $ft10
	fmadd.s	$ft10, $ft3, $ft11, $ft10
	fmul.s	$ft7, $ft7, $ft12
	fmadd.s	$ft2, $ft2, $ft13, $ft7
	fld.s	$ft7, $a1, 40
	fmul.s	$ft14, $ft4, $fa7
	fmadd.s	$ft14, $ft1, $ft0, $ft14
	fmadd.s	$ft14, $ft5, $ft11, $ft14
	fmadd.s	$ft2, $ft3, $ft7, $ft2
	fmul.s	$ft3, $ft8, $fa7
	fmadd.s	$ft3, $ft6, $ft0, $ft3
	fmadd.s	$ft3, $ft9, $ft11, $ft3
	fmul.s	$ft4, $ft4, $ft12
	fmadd.s	$ft1, $ft1, $ft13, $ft4
	fmadd.s	$ft1, $ft5, $ft7, $ft1
	fmul.s	$ft4, $ft8, $ft12
	fmadd.s	$ft4, $ft6, $ft13, $ft4
	fmadd.s	$ft4, $ft9, $ft7, $ft4
	fldx.s	$ft5, $a0, $a4
	fldx.s	$ft6, $a0, $a5
	fld.s	$ft8, $a1, 48
	fmul.s	$fa1, $fa1, $fa3
	fmadd.s	$fa0, $fa0, $ft5, $fa1
	fmadd.s	$fa0, $fa2, $ft6, $fa0
	fadd.s	$fa0, $ft8, $fa0
	fld.s	$fa1, $a1, 52
	fmul.s	$fa2, $fa7, $fa3
	fmadd.s	$fa2, $ft0, $ft5, $fa2
	fmadd.s	$fa2, $ft11, $ft6, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $a1, 56
	fmul.s	$fa3, $ft12, $fa3
	fmadd.s	$fa3, $ft13, $ft5, $fa3
	fmadd.s	$fa3, $ft7, $ft6, $fa3
	fadd.s	$fa2, $fa3, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	fst.s	$fa4, $a0, 908
	fst.s	$fa5, $a0, 912
	fst.s	$fa6, $a0, 916
	st.w	$zero, $a0, 920
	fst.s	$ft10, $a0, 924
	fst.s	$ft14, $a0, 928
	fst.s	$ft3, $a0, 932
	st.w	$zero, $a0, 936
	fst.s	$ft2, $a0, 940
	fst.s	$ft1, $a0, 944
	st.d	$a1, $a0, 956
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a3, $a2, 31, 0
	st.d	$a3, $a0, 964
	st.d	$a1, $a0, 1004
	ld.w	$a1, $a0, 860
	ld.wu	$a2, $a0, 844
	vld	$vr0, $a0, 892
	st.d	$a3, $a0, 1012
	slli.d	$a3, $a1, 32
	or	$a3, $a3, $a2
	st.d	$a3, $a0, 972
	ld.wu	$a3, $a0, 876
	fst.s	$ft4, $a0, 948
	st.w	$zero, $a0, 952
	vst	$vr0, $a0, 988
	st.d	$a3, $a0, 980
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	bnez	$a4, .LBB12_3
# %bb.1:
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	andi	$a4, $a4, 1
	bnez	$a4, .LBB12_3
# %bb.2:
	fld.s	$fa3, $a0, 988
	fld.s	$fa0, $a0, 1004
	fld.s	$fa4, $a0, 992
	fld.s	$fa1, $a0, 1008
	fld.s	$fa5, $a0, 996
	fld.s	$fa2, $a0, 1012
	fsub.s	$fa0, $fa3, $fa0
	fsub.s	$fa1, $fa4, $fa1
	fsub.s	$fa2, $fa5, $fa2
	b	.LBB12_4
.LBB12_3:
	fld.s	$fa0, $a0, 1004
	fld.s	$fa3, $a0, 988
	fld.s	$fa1, $a0, 1008
	fld.s	$fa4, $a0, 992
	fld.s	$fa2, $a0, 1012
	fld.s	$fa5, $a0, 996
	fsub.s	$fa0, $fa0, $fa3
	fsub.s	$fa1, $fa1, $fa4
	fsub.s	$fa2, $fa2, $fa5
.LBB12_4:
	movfr2gr.s	$a4, $fa0
	movfr2gr.s	$a5, $fa1
	bstrins.d	$a4, $a5, 63, 32
	movfr2gr.s	$a5, $fa2
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.w	$fa6, $a2
	movgr2fr.w	$fa7, $a3
	movgr2fr.w	$ft0, $a1
	st.d	$a4, $a0, 1036
	st.d	$a5, $a0, 1044
	fmul.s	$ft1, $fa1, $ft0
	fmadd.s	$ft2, $fa6, $fa0, $ft1
	fmadd.s	$ft2, $fa7, $fa2, $ft2
	fmul.s	$ft3, $ft2, $fa6
	fmul.s	$ft0, $ft2, $ft0
	fmul.s	$ft2, $ft2, $fa7
	fadd.s	$fa3, $fa3, $ft3
	fadd.s	$fa4, $fa4, $ft0
	fadd.s	$fa5, $ft2, $fa5
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa5
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 1020
	st.d	$a2, $a0, 1028
	fmadd.s	$fa3, $fa0, $fa6, $ft1
	fmadd.s	$fa3, $fa2, $fa7, $fa3
	fld.s	$fa4, $a0, 864
	fld.s	$fa5, $a0, 848
	fld.s	$fa6, $a0, 880
	fst.s	$fa3, $a0, 1052
	fmul.s	$fa3, $fa4, $fa1
	fmadd.s	$fa3, $fa0, $fa5, $fa3
	fmadd.s	$fa3, $fa2, $fa6, $fa3
	fld.s	$fa4, $a0, 868
	fld.s	$fa5, $a0, 852
	fld.s	$fa6, $a0, 884
	fst.s	$fa3, $a0, 1056
	fmul.s	$fa1, $fa4, $fa1
	fmadd.s	$fa0, $fa0, $fa5, $fa1
	fmadd.s	$fa0, $fa2, $fa6, $fa0
	fst.s	$fa0, $a0, 1060
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end12:
	.size	_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_, .Lfunc_end12-_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_
                                        # -- End function
	.globl	_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E # -- Begin function _ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
	.p2align	5
	.type	_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E,@function
_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E: # @_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
# %bb.0:
	ori	$a0, $zero, 6
	st.d	$a0, $a1, 0
	ret
.Lfunc_end13:
	.size	_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E, .Lfunc_end13-_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E
                                        # -- End function
	.globl	_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E # -- Begin function _ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.p2align	5
	.type	_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E,@function
_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E: # @_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 24
	ld.d	$a5, $a0, 32
	addi.d	$a2, $a4, 8
	fld.s	$fa0, $a4, 360
	fld.s	$fa1, $a5, 360
	addi.d	$a3, $a5, 8
	addi.d	$a4, $a4, 328
	addi.d	$a5, $a5, 328
	pcaddu18i	$t8, %call36(_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff)
	jr	$t8
.Lfunc_end14:
	.size	_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, .Lfunc_end14-_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff
.LCPI15_0:
	.word	0x3f490fdb                      # float 0.785398185
.LCPI15_1:
	.word	0xbf490fdb                      # float -0.785398185
.LCPI15_2:
	.word	0x4016cbe4                      # float 2.3561945
.LCPI15_3:
	.word	0x3f7d70a4                      # float 0.990000009
.LCPI15_4:
	.word	0x3c23d70a                      # float 0.00999999977
.LCPI15_5:
	.word	0xff7fffff                      # float -3.40282347E+38
.LCPI15_6:
	.word	0x7f7fffff                      # float 3.40282347E+38
	.text
	.globl	_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff
	.p2align	5
	.type	_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff,@function
_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff: # @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
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
	fmov.s	$fs0, $fa1
	fmov.s	$fs1, $fa0
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a2
	move	$s0, $a1
	move	$fp, $a0
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 232
	fld.s	$fa2, $fp, 236
	fld.s	$fa1, $fp, 1052
	st.b	$zero, $fp, 320
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fst.s	$fa1, $fp, 1100
	bceqz	$fcc0, .LBB15_2
.LBB15_1:
	st.w	$zero, $fp, 1052
	b	.LBB15_7
.LBB15_2:
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB15_4
# %bb.3:
	fsub.s	$fa0, $fa1, $fa2
	b	.LBB15_6
.LBB15_4:
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_1
# %bb.5:
	fsub.s	$fa0, $fa1, $fa0
.LBB15_6:                               # %_ZN18btSliderConstraint13testLinLimitsEv.exit
	fst.s	$fa0, $fp, 1052
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 320
.LBB15_7:                               # %_ZN18btSliderConstraint13testLinLimitsEv.exit
	fld.s	$fa1, $fp, 240
	fld.s	$fa2, $fp, 244
	st.w	$zero, $fp, 1108
	fcmp.cult.s	$fcc0, $fa2, $fa1
	st.b	$zero, $fp, 321
	bcnez	$fcc0, .LBB15_14
# %bb.8:
	fld.s	$fa3, $fp, 848
	fld.s	$fa4, $fp, 864
	fld.s	$fa0, $fp, 852
	fld.s	$fa5, $fp, 868
	fld.s	$fa6, $fp, 884
	fld.s	$fa7, $fp, 928
	fld.s	$ft0, $fp, 912
	fld.s	$ft1, $fp, 944
	fld.s	$ft2, $fp, 880
	fmul.s	$fa5, $fa5, $fa7
	fmadd.s	$fa0, $ft0, $fa0, $fa5
	fmadd.s	$fa0, $ft1, $fa6, $fa0
	fmul.s	$fa4, $fa4, $fa7
	fmadd.s	$fa3, $ft0, $fa3, $fa4
	fmadd.s	$fa4, $ft1, $ft2, $fa3
	fabs.s	$fa5, $fa0
	movgr2fr.w	$fa3, $zero
	fcmp.cult.s	$fcc0, $fa4, $fa3
	fadd.s	$fa6, $fa4, $fa5
	pcalau12i	$a0, %pc_hi20(.LCPI15_1)
	bceqz	$fcc0, .LBB15_10
# %bb.9:
	pcalau12i	$a1, %pc_hi20(.LCPI15_2)
	fld.s	$fa7, $a1, %pc_lo12(.LCPI15_2)
	fld.s	$ft0, $a0, %pc_lo12(.LCPI15_1)
	fsub.s	$fa4, $fa5, $fa4
	fdiv.s	$fa4, $fa6, $fa4
	b	.LBB15_11
.LBB15_10:
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	fld.s	$fa7, $a1, %pc_lo12(.LCPI15_0)
	fld.s	$ft0, $a0, %pc_lo12(.LCPI15_1)
	fsub.s	$fa4, $fa4, $fa5
	fdiv.s	$fa4, $fa4, $fa6
.LBB15_11:                              # %_Z11btAtan2Fastff.exit.i
	fmadd.s	$fa4, $fa4, $ft0, $fa7
	fneg.s	$fa5, $fa4
	fcmp.clt.s	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa4, $fa5, $fcc0
	pcaddu18i	$ra, %call36(_Z21btAdjustAngleToLimitsfff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 240
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fst.s	$fa0, $fp, 1104
	bcnez	$fcc0, .LBB15_13
# %bb.12:
	fld.s	$fa1, $fp, 244
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_14
.LBB15_13:                              # %.sink.split.i
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 1108
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 321
.LBB15_14:                              # %_ZN18btSliderConstraint13testAngLimitsEv.exit
	ld.w	$t0, $s0, 40
	fld.s	$fs3, $fp, 844
	fld.s	$fs4, $fp, 860
	fld.s	$fs2, $fp, 876
	ld.w	$a5, $fp, 848
	ld.w	$a6, $fp, 864
	fld.s	$fa0, $fp, 880
	ld.w	$a4, $fp, 852
	ld.d	$a0, $s0, 16
	ld.w	$a7, $fp, 868
	fld.s	$fa1, $fp, 884
	movgr2fr.w	$fa2, $a5
	st.w	$a5, $a0, 0
	movgr2fr.w	$fa4, $a6
	st.w	$a6, $a0, 4
	fst.s	$fa0, $a0, 8
	movgr2fr.w	$fa3, $a4
	slli.d	$a2, $t0, 2
	stx.w	$a4, $a0, $a2
	movgr2fr.w	$fa5, $a7
	addi.d	$a3, $a2, 4
	stx.w	$a7, $a0, $a3
	ld.d	$a1, $s0, 32
	addi.d	$t1, $a2, 8
	fstx.s	$fa1, $a0, $t1
	fneg.s	$ft2, $fa2
	fst.s	$ft2, $a1, 0
	fneg.s	$ft6, $fa4
	fst.s	$ft6, $a1, 4
	fneg.s	$ft7, $fa0
	fst.s	$ft7, $a1, 8
	fneg.s	$ft3, $fa3
	fstx.s	$ft3, $a1, $a2
	fneg.s	$ft4, $fa5
	fstx.s	$ft4, $a1, $a3
	fneg.s	$ft5, $fa1
	fstx.s	$ft5, $a1, $t1
	fld.s	$fa6, $s0, 0
	fld.s	$fa7, $s0, 4
	fld.s	$ft0, $fp, 308
	ld.bu	$t1, $fp, 228
	fmul.s	$fa6, $fa6, $fa7
	fld.s	$fa7, $fp, 924
	fmul.s	$fa6, $fa6, $ft0
	fld.s	$ft0, $fp, 940
	fld.s	$ft1, $fp, 908
	fneg.s	$ft8, $fa7
	fmul.s	$ft8, $fs2, $ft8
	fmadd.s	$ft8, $fs4, $ft0, $ft8
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $fs3, $ft0
	fmadd.s	$ft0, $fs2, $ft1, $ft0
	fneg.s	$ft1, $ft1
	fmul.s	$ft1, $fs4, $ft1
	fmadd.s	$fa7, $fs3, $fa7, $ft1
	fmul.s	$ft1, $ft0, $fa4
	ld.d	$a3, $s0, 48
	fmadd.s	$ft1, $ft8, $fa2, $ft1
	fmadd.s	$ft1, $fa7, $fa0, $ft1
	fmul.s	$ft1, $fa6, $ft1
	fst.s	$ft1, $a3, 0
	fmul.s	$ft0, $ft0, $fa5
	fmadd.s	$ft0, $ft8, $fa3, $ft0
	fmadd.s	$fa7, $fa7, $fa1, $ft0
	fmul.s	$fa6, $fa6, $fa7
	fstx.s	$fa6, $a3, $a2
	fld.s	$fa7, $s4, 48
	fld.s	$ft0, $s4, 52
	fld.s	$ft1, $s4, 56
	fld.s	$ft8, $s3, 48
	fld.s	$ft9, $s3, 52
	fadd.s	$fa6, $fs1, $fs0
	fdiv.s	$ft10, $fs0, $fa6
	movgr2fr.w	$fs0, $zero
	pcalau12i	$t2, %pc_hi20(.LCPI15_3)
	fld.s	$ft11, $t2, %pc_lo12(.LCPI15_3)
	fcmp.clt.s	$fcc0, $fs0, $fa6
	vldi	$vr6, -1184
	fsel	$fa6, $fa6, $ft10, $fcc0
	fcmp.clt.s	$fcc0, $ft11, $fa6
	pcalau12i	$t2, %pc_hi20(.LCPI15_4)
	fld.s	$ft10, $t2, %pc_lo12(.LCPI15_4)
	fsel	$fa6, $fa6, $ft11, $fcc0
	fld.s	$ft11, $s3, 56
	slli.w	$t4, $t0, 1
	fcmp.clt.s	$fcc0, $fa6, $ft10
	fsel	$fa6, $fa6, $ft10, $fcc0
	fsub.s	$fa7, $ft8, $fa7
	fsub.s	$ft0, $ft9, $ft0
	fsub.s	$ft1, $ft11, $ft1
	fmul.s	$ft6, $ft1, $ft6
	fmadd.s	$ft6, $ft0, $fa0, $ft6
	fmul.s	$ft7, $fa7, $ft7
	fmadd.s	$ft7, $ft1, $fa2, $ft7
	fmul.s	$ft2, $ft0, $ft2
	fmadd.s	$ft8, $fa7, $fa4, $ft2
	fmul.s	$ft2, $fa6, $ft6
	slli.d	$t2, $t4, 2
	fstx.s	$ft2, $a0, $t2
	fmul.s	$ft2, $fa6, $ft7
	addi.d	$t3, $t2, 4
	fstx.s	$ft2, $a0, $t3
	fmul.s	$ft2, $fa6, $ft8
	addi.d	$t5, $t2, 8
	fstx.s	$ft2, $a0, $t5
	vldi	$vr17, -1168
	fsub.s	$ft2, $ft9, $fa6
	fmul.s	$ft6, $ft2, $ft6
	fstx.s	$ft6, $a1, $t2
	fmul.s	$ft6, $ft2, $ft7
	fstx.s	$ft6, $a1, $t3
	fmul.s	$ft6, $ft2, $ft8
	fstx.s	$ft6, $a1, $t5
	alsl.w	$t5, $t0, $t0, 1
	fmul.s	$ft4, $ft1, $ft4
	fmadd.s	$ft4, $ft0, $fa1, $ft4
	fmul.s	$ft5, $fa7, $ft5
	fmadd.s	$ft5, $ft1, $fa3, $ft5
	fmul.s	$ft3, $ft0, $ft3
	fmadd.s	$ft3, $fa7, $fa5, $ft3
	fmul.s	$ft6, $fa6, $ft4
	slli.d	$t3, $t5, 2
	fstx.s	$ft6, $a0, $t3
	fmul.s	$ft6, $fa6, $ft5
	addi.d	$t0, $t3, 4
	fstx.s	$ft6, $a0, $t0
	fmul.s	$ft6, $fa6, $ft3
	addi.d	$t6, $t3, 8
	fstx.s	$ft6, $a0, $t6
	fmul.s	$ft4, $ft2, $ft4
	fmul.s	$ft5, $ft2, $ft5
	fstx.s	$ft5, $a1, $t0
	ld.d	$t0, $s0, 8
	fstx.s	$ft4, $a1, $t3
	fmul.s	$ft3, $ft2, $ft3
	fstx.s	$ft3, $a1, $t6
	alsl.d	$t4, $t4, $t0, 2
	stx.w	$a5, $t0, $t2
	st.w	$a6, $t4, 4
	fst.s	$fa0, $t4, 8
	alsl.d	$a5, $t5, $t0, 2
	stx.w	$a4, $t0, $t3
	st.w	$a7, $a5, 4
	fst.s	$fa1, $a5, 8
	fld.s	$ft3, $fp, 956
	fld.s	$ft4, $fp, 892
	vldi	$vr13, -1040
	movgr2cf	$fcc0, $t1
	fsel	$fs1, $ft5, $ft9, $fcc0
	fsub.s	$ft3, $ft3, $ft4
	fld.s	$ft4, $fp, 960
	fld.s	$ft5, $fp, 896
	fld.s	$ft6, $fp, 964
	fld.s	$ft7, $fp, 900
	fld.s	$ft8, $s0, 0
	fld.s	$ft9, $s0, 4
	fld.s	$ft10, $fp, 296
	fsub.s	$ft4, $ft4, $ft5
	fsub.s	$ft5, $ft6, $ft7
	fmul.s	$ft6, $ft8, $ft9
	fmul.s	$ft6, $ft6, $ft10
	fmul.s	$fa4, $ft4, $fa4
	fmadd.s	$fa2, $fa2, $ft3, $fa4
	fmadd.s	$fa0, $fa0, $ft5, $fa2
	fmul.s	$fa0, $fa0, $ft6
	fstx.s	$fa0, $a3, $t2
	fmul.s	$fa0, $ft4, $fa5
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmadd.s	$fa0, $fa1, $ft5, $fa0
	fmul.s	$fa0, $fa0, $ft6
	ld.bu	$s5, $fp, 320
	fstx.s	$fa0, $a3, $t3
	fneg.s	$fs5, $fs4
	fneg.s	$fs7, $fs2
	fneg.s	$ft5, $fs3
	beqz	$s5, .LBB15_16
# %bb.15:                               # %.thread
	fld.s	$fa0, $fp, 1052
	fmul.s	$fs0, $fs1, $fa0
	ld.bu	$a4, $fp, 1116
	movgr2fr.w	$fa0, $zero
	fcmp.cule.s	$fcc0, $fs0, $fa0
	movcf2gr	$s3, $fcc0
	sltui	$a4, $a4, 1
	b	.LBB15_18
.LBB15_16:
	ld.bu	$a5, $fp, 1116
	ori	$a4, $zero, 4
	beqz	$a5, .LBB15_36
# %bb.17:
	move	$a4, $zero
	move	$s3, $zero
.LBB15_18:
	addi.w	$s4, $a2, 0
	slli.d	$s6, $s4, 2
	fstx.s	$fs3, $t0, $s6
	addi.w	$a5, $a2, 1
	slli.d	$a5, $a5, 2
	fstx.s	$fs4, $t0, $a5
	addi.w	$a2, $a2, 2
	slli.d	$a2, $a2, 2
	fstx.s	$fs2, $t0, $a2
	fmul.s	$fa0, $ft1, $fs5
	fmadd.s	$fa0, $ft0, $fs2, $fa0
	fmul.s	$fa1, $fa7, $fs7
	fmadd.s	$fa1, $ft1, $fs3, $fa1
	fmul.s	$fa2, $ft0, $ft5
	fmadd.s	$fa2, $fa7, $fs4, $fa2
	fmul.s	$fa3, $fa6, $fa0
	fstx.s	$fa3, $a0, $s6
	fmul.s	$fa3, $fa6, $fa1
	fstx.s	$fa3, $a0, $a5
	fmul.s	$fa3, $fa6, $fa2
	fstx.s	$fa3, $a0, $a2
	fmul.s	$fa0, $ft2, $fa0
	fstx.s	$fa0, $a1, $s6
	fmul.s	$fa0, $ft2, $fa1
	fstx.s	$fa0, $a1, $a5
	fmul.s	$fa0, $ft2, $fa2
	fstx.s	$fa0, $a1, $a2
	fld.s	$fa3, $fp, 232
	ld.d	$a1, $s0, 64
	ld.d	$a0, $s0, 72
	fld.s	$fa4, $fp, 236
	stx.w	$zero, $a3, $s6
	stx.w	$zero, $a1, $s6
	stx.w	$zero, $a0, $s6
	bnez	$a4, .LBB15_21
# %bb.19:
	fcmp.ceq.s	$fcc0, $fa3, $fa4
	movcf2gr	$a2, $fcc0
	and	$a2, $a2, $s5
	bnez	$a2, .LBB15_21
# %bb.20:
	ld.d	$a0, $s0, 56
	st.w	$zero, $a0, 16
	fst.s	$fa3, $sp, 32                   # 4-byte Folded Spill
	fld.s	$fa3, $fp, 1120
	fld.s	$fa0, $fp, 1100
	fld.s	$fa1, $fp, 232
	fst.s	$fa4, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa4, $s0, 0
	fld.s	$fa5, $s0, 4
	fld.s	$fa2, $fp, 236
	fmul.s	$fa4, $fa4, $fa5
	move	$a0, $fp
	fmov.s	$fs6, $fs4
	fmov.s	$fs4, $fs3
	fmov.s	$fs3, $fs2
	fmov.s	$fs2, $ft5
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraint14getMotorFactorEfffff)
	jirl	$ra, $ra, 0
	fld.s	$fa4, $sp, 28                   # 4-byte Folded Reload
	fld.s	$fa3, $sp, 32                   # 4-byte Folded Reload
	fmov.s	$ft5, $fs2
	fmov.s	$fs2, $fs3
	fmov.s	$fs3, $fs4
	fmov.s	$fs4, $fs6
	ld.d	$a0, $s0, 48
	fld.s	$fa1, $fp, 1120
	fldx.s	$fa2, $a0, $s6
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fs1, $fa0
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	ld.d	$a1, $s0, 64
	fstx.s	$fa0, $a0, $s6
	fld.s	$fa0, $fp, 1124
	fld.s	$fa1, $s0, 0
	fldx.s	$fa2, $a1, $s6
	fneg.s	$fa0, $fa0
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	ld.d	$a0, $s0, 72
	fstx.s	$fa0, $a1, $s6
	fld.s	$fa0, $fp, 1124
	fld.s	$fa1, $s0, 0
	fldx.s	$fa2, $a0, $s6
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fstx.s	$fa0, $a0, $s6
.LBB15_21:
	ori	$a4, $zero, 5
	beqz	$s5, .LBB15_36
# %bb.22:
	ld.d	$a2, $s0, 48
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s0, 4
	fldx.s	$fa2, $a2, $s6
	ld.d	$a3, $s0, 56
	fmul.s	$fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa0, $fs0, $fa2
	fstx.s	$fa0, $a2, $s6
	stx.w	$zero, $a3, $s6
	fcmp.cune.s	$fcc0, $fa3, $fa4
	alsl.d	$a1, $s4, $a1, 2
	bcnez	$fcc0, .LBB15_24
# %bb.23:
	lu12i.w	$a3, -2049
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	st.w	$a3, $a1, 0
	lu12i.w	$a1, 522239
	ori	$a1, $a1, 4095
	stx.w	$a1, $a0, $s6
	b	.LBB15_27
.LBB15_24:
	alsl.d	$a0, $s4, $a0, 2
	beqz	$s3, .LBB15_26
# %bb.25:
	lu12i.w	$a3, -2049
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	st.w	$a3, $a1, 0
	st.w	$zero, $a0, 0
	b	.LBB15_27
.LBB15_26:
	st.w	$zero, $a1, 0
	lu12i.w	$a1, 522239
	ori	$a1, $a1, 4095
	st.w	$a1, $a0, 0
.LBB15_27:
	fld.s	$fa0, $fp, 280
	vldi	$vr1, -1168
	fsub.s	$fa2, $fa1, $fa0
	movgr2fr.w	$fa1, $zero
	fcmp.cne.s	$fcc0, $fa2, $fa1
	alsl.d	$a0, $s4, $a2, 2
	bceqz	$fcc0, .LBB15_31
# %bb.28:
	fld.s	$fa0, $s2, 4
	fld.s	$fa3, $s2, 0
	fmul.s	$fa0, $fs4, $fa0
	fmadd.s	$fa0, $fa3, $fs3, $fa0
	fld.s	$fa3, $s2, 8
	fld.s	$fa4, $s1, 4
	fld.s	$fa5, $s1, 0
	fld.s	$fa6, $s1, 8
	fmadd.s	$fa3, $fa3, $fs2, $fa0
	fmul.s	$fa0, $fs4, $fa4
	fmadd.s	$fa0, $fa5, $fs3, $fa0
	fmadd.s	$fa4, $fa6, $fs2, $fa0
	fld.s	$fa0, $a0, 0
	fabs.s	$fa2, $fa2
	fsub.s	$fa3, $fa3, $fa4
	fmul.s	$fa3, $fs1, $fa3
	beqz	$s3, .LBB15_32
# %bb.29:
	fcmp.cule.s	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB15_35
# %bb.30:
	fneg.s	$fa1, $fa2
	fmul.s	$fa1, $fa3, $fa1
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB15_34
	b	.LBB15_35
.LBB15_31:                              # %._crit_edge
	fld.s	$fa0, $a0, 0
	b	.LBB15_35
.LBB15_32:
	fcmp.cule.s	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB15_35
# %bb.33:
	fneg.s	$fa1, $fa2
	fmul.s	$fa1, $fa3, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_35
.LBB15_34:
	fst.s	$fa1, $a0, 0
	fmov.s	$fa0, $fa1
.LBB15_35:
	fld.s	$fa1, $fp, 272
	fmul.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, 0
.LBB15_36:
	ld.bu	$s4, $fp, 321
	beqz	$s4, .LBB15_38
# %bb.37:                               # %.thread488
	fld.s	$fs6, $fp, 1108
	ld.bu	$a0, $fp, 1132
	movgr2fr.w	$fa0, $zero
	fcmp.clt.s	$fcc0, $fa0, $fs6
	movcf2gr	$s1, $fcc0
	sltui	$a0, $a0, 1
	b	.LBB15_40
.LBB15_38:
	ld.bu	$a0, $fp, 1132
	beqz	$a0, .LBB15_53
# %bb.39:
	move	$a0, $zero
	move	$s1, $zero
	movgr2fr.w	$fs6, $zero
.LBB15_40:
	ld.w	$a1, $s0, 40
	ld.d	$a2, $s0, 16
	mul.w	$s2, $a1, $a4
	slli.d	$s3, $s2, 2
	fstx.s	$fs3, $a2, $s3
	addi.d	$a1, $s3, 4
	ld.d	$a3, $s0, 32
	fstx.s	$fs4, $a2, $a1
	addi.d	$a4, $s3, 8
	fstx.s	$fs2, $a2, $a4
	fstx.s	$ft5, $a3, $s3
	fstx.s	$fs5, $a3, $a1
	fstx.s	$fs7, $a3, $a4
	fld.s	$fa0, $fp, 240
	fld.s	$fa1, $fp, 244
	fcmp.ceq.s	$fcc1, $fa0, $fa1
	bnez	$a0, .LBB15_43
# %bb.41:
	movcf2gr	$a0, $fcc1
	and	$a0, $a0, $s4
	bnez	$a0, .LBB15_43
# %bb.42:
	ld.d	$a0, $s0, 56
	stx.w	$zero, $a0, $s3
	fld.s	$fa0, $fp, 1104
	fld.s	$fa1, $fp, 240
	fld.s	$fa2, $fp, 244
	fld.s	$fa4, $s0, 0
	fld.s	$fa5, $s0, 4
	fld.s	$fa3, $fp, 1136
	fmul.s	$fa4, $fa4, $fa5
	move	$a0, $fp
	movcf2gr	$a1, $fcc1
	st.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZN17btTypedConstraint14getMotorFactorEfffff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	movgr2cf	$fcc1, $a0
	fld.s	$fa1, $fp, 1136
	ld.d	$a0, $s0, 48
	fmul.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $a0, $s3
	fld.s	$fa0, $fp, 1140
	fld.s	$fa1, $s0, 0
	ld.d	$a0, $s0, 64
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fstx.s	$fa0, $a0, $s3
	fld.s	$fa0, $fp, 1140
	fld.s	$fa1, $s0, 0
	ld.d	$a0, $s0, 72
	fmul.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $a0, $s3
.LBB15_43:
	beqz	$s4, .LBB15_53
# %bb.44:
	ld.d	$a0, $s0, 48
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s0, 4
	fldx.s	$fa2, $a0, $s3
	ld.d	$a1, $s0, 56
	fmul.s	$fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa0, $fs6, $fa2
	fstx.s	$fa0, $a0, $s3
	stx.w	$zero, $a1, $s3
	ld.d	$a1, $s0, 64
	pcalau12i	$a2, %pc_hi20(.LCPI15_5)
	fld.s	$fa1, $a2, %pc_lo12(.LCPI15_5)
	andi	$a2, $s1, 1
	movgr2fr.w	$fa0, $zero
	movgr2cf	$fcc0, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI15_6)
	fld.s	$fa2, $a2, %pc_lo12(.LCPI15_6)
	fsel	$fa3, $fa1, $fa0, $fcc0
	fsel	$fa1, $fa3, $fa1, $fcc1
	ld.d	$a2, $s0, 72
	fsel	$fa3, $fa0, $fa2, $fcc0
	fsel	$fa2, $fa3, $fa2, $fcc1
	fstx.s	$fa1, $a1, $s3
	fstx.s	$fa2, $a2, $s3
	fld.s	$fa1, $fp, 292
	vldi	$vr2, -1168
	fsub.s	$fa1, $fa2, $fa1
	fcmp.cne.s	$fcc0, $fa1, $fa0
	alsl.d	$a0, $s2, $a0, 2
	bceqz	$fcc0, .LBB15_48
# %bb.45:
	ld.d	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	fld.s	$fa2, $a1, 348
	fld.s	$fa3, $a1, 344
	fld.s	$fa4, $a2, 348
	fmul.s	$fa2, $fs4, $fa2
	fld.s	$fa5, $a2, 344
	fmadd.s	$fa3, $fa3, $fs3, $fa2
	fmul.s	$fa2, $fs4, $fa4
	fld.s	$fa4, $a1, 352
	fmadd.s	$fa5, $fa5, $fs3, $fa2
	fld.s	$fa6, $a2, 352
	fabs.s	$fa2, $fa1
	fld.s	$fa1, $a0, 0
	fmadd.s	$fa3, $fa4, $fs2, $fa3
	fmadd.s	$fa4, $fa6, $fs2, $fa5
	fsub.s	$fa3, $fa3, $fa4
	beqz	$s1, .LBB15_49
# %bb.46:
	fcmp.cule.s	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB15_52
# %bb.47:
	fneg.s	$fa0, $fa2
	fmul.s	$fa0, $fa3, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB15_51
	b	.LBB15_52
.LBB15_48:                              # %._crit_edge537
	fld.s	$fa1, $a0, 0
	b	.LBB15_52
.LBB15_49:
	fcmp.cule.s	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB15_52
# %bb.50:
	fneg.s	$fa0, $fa2
	fmul.s	$fa0, $fa3, $fa0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_52
.LBB15_51:
	fst.s	$fa0, $a0, 0
	fmov.s	$fa1, $fa0
.LBB15_52:
	fld.s	$fa0, $fp, 284
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 0
.LBB15_53:
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.Lfunc_end15:
	.size	_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff, .Lfunc_end15-_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff
	.cfi_endproc
                                        # -- End function
	.globl	_ZN18btSliderConstraint23solveConstraintObsoleteER12btSolverBodyS1_f # -- Begin function _ZN18btSliderConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.p2align	5
	.type	_ZN18btSliderConstraint23solveConstraintObsoleteER12btSolverBodyS1_f,@function
_ZN18btSliderConstraint23solveConstraintObsoleteER12btSolverBodyS1_f: # @_ZN18btSliderConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
# %bb.0:
	ld.bu	$a3, $a0, 96
	beqz	$a3, .LBB16_3
# %bb.1:
	move	$a4, $a2
	move	$a5, $a1
	ld.bu	$a1, $a0, 228
	fst.s	$fa0, $a0, 840
	beqz	$a1, .LBB16_4
# %bb.2:
	ld.d	$a1, $a0, 24
	ld.d	$a3, $a0, 32
	move	$a2, $a5
	pcaddu18i	$t8, %call36(_ZN18btSliderConstraint18solveConstraintIntER11btRigidBodyR12btSolverBodyS1_S3_)
	jr	$t8
.LBB16_3:
	ret
.LBB16_4:
	ld.d	$a1, $a0, 32
	ld.d	$a3, $a0, 24
	move	$a2, $a4
	move	$a4, $a5
	pcaddu18i	$t8, %call36(_ZN18btSliderConstraint18solveConstraintIntER11btRigidBodyR12btSolverBodyS1_S3_)
	jr	$t8
.Lfunc_end16:
	.size	_ZN18btSliderConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, .Lfunc_end16-_ZN18btSliderConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN18btSliderConstraint18solveConstraintIntER11btRigidBodyR12btSolverBodyS1_S3_
.LCPI17_0:
	.word	0x3727c5ac                      # float 9.99999974E-6
	.text
	.globl	_ZN18btSliderConstraint18solveConstraintIntER11btRigidBodyR12btSolverBodyS1_S3_
	.p2align	5
	.type	_ZN18btSliderConstraint18solveConstraintIntER11btRigidBodyR12btSolverBodyS1_S3_,@function
_ZN18btSliderConstraint18solveConstraintIntER11btRigidBodyR12btSolverBodyS1_S3_: # @_ZN18btSliderConstraint18solveConstraintIntER11btRigidBodyR12btSolverBodyS1_S3_
# %bb.0:
	ld.d	$a5, $a2, 72
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa3, $fa0
	fmov.s	$fa2, $fa0
	fmov.s	$fa1, $fa0
	beqz	$a5, .LBB17_2
# %bb.1:
	fld.s	$fa1, $a5, 328
	fld.s	$fa2, $a2, 0
	fld.s	$fa3, $a5, 332
	fld.s	$fa4, $a2, 4
	fld.s	$fa5, $a5, 336
	fld.s	$fa6, $a2, 8
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa2, $fa3, $fa4
	fadd.s	$fa3, $fa5, $fa6
	fld.s	$fa4, $a5, 344
	fld.s	$fa5, $a2, 16
	fld.s	$fa6, $a5, 348
	fld.s	$fa7, $a2, 20
	fld.s	$ft0, $a5, 352
	fld.s	$ft1, $a2, 24
	fadd.s	$fa4, $fa4, $fa5
	fld.s	$fa5, $a0, 1072
	fadd.s	$fa6, $fa6, $fa7
	fadd.s	$fa7, $ft0, $ft1
	fld.s	$ft0, $a0, 1076
	fneg.s	$ft1, $fa5
	fmul.s	$ft1, $fa7, $ft1
	fld.s	$ft2, $a0, 1068
	fmadd.s	$ft1, $fa6, $ft0, $ft1
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $fa4, $ft0
	fmadd.s	$fa7, $fa7, $ft2, $ft0
	fneg.s	$ft0, $ft2
	fmul.s	$fa6, $fa6, $ft0
	fmadd.s	$fa4, $fa4, $fa5, $fa6
	fadd.s	$fa1, $fa1, $ft1
	fadd.s	$fa2, $fa2, $fa7
	fadd.s	$fa3, $fa3, $fa4
.LBB17_2:                               # %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit
	ld.d	$a6, $a4, 72
	fmov.s	$fa4, $fa0
	fmov.s	$fa5, $fa0
	fmov.s	$fa6, $fa0
	beqz	$a6, .LBB17_4
# %bb.3:
	fld.s	$fa4, $a6, 328
	fld.s	$fa5, $a4, 0
	fld.s	$fa6, $a6, 332
	fld.s	$fa7, $a4, 4
	fld.s	$ft0, $a6, 336
	fld.s	$ft1, $a4, 8
	fadd.s	$fa4, $fa4, $fa5
	fadd.s	$fa5, $fa6, $fa7
	fadd.s	$fa7, $ft0, $ft1
	fld.s	$fa6, $a6, 344
	fld.s	$ft0, $a4, 16
	fld.s	$ft1, $a6, 348
	fld.s	$ft2, $a4, 20
	fld.s	$ft3, $a6, 352
	fld.s	$ft4, $a4, 24
	fadd.s	$fa6, $fa6, $ft0
	fld.s	$ft0, $a0, 1088
	fadd.s	$ft1, $ft1, $ft2
	fadd.s	$ft2, $ft3, $ft4
	fld.s	$ft3, $a0, 1092
	fneg.s	$ft4, $ft0
	fmul.s	$ft4, $ft2, $ft4
	fld.s	$ft5, $a0, 1084
	fmadd.s	$ft4, $ft1, $ft3, $ft4
	fneg.s	$ft3, $ft3
	fmul.s	$ft3, $fa6, $ft3
	fmadd.s	$ft2, $ft2, $ft5, $ft3
	fneg.s	$ft3, $ft5
	fmul.s	$ft1, $ft1, $ft3
	fmadd.s	$ft0, $fa6, $ft0, $ft1
	fadd.s	$fa6, $fa4, $ft4
	fadd.s	$fa5, $fa5, $ft2
	fadd.s	$fa4, $fa7, $ft0
.LBB17_4:                               # %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit261
	addi.d	$sp, $sp, -160
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 48                   # 8-byte Folded Spill
	move	$a7, $zero
	fsub.s	$fa1, $fa1, $fa6
	fsub.s	$fa2, $fa2, $fa5
	fsub.s	$fa3, $fa3, $fa4
	ld.bu	$t5, $a0, 320
	addi.d	$t0, $a0, 576
	ld.bu	$t1, $a0, 1116
	ori	$t2, $zero, 248
	masknez	$t2, $t2, $t5
	ori	$t3, $zero, 272
	maskeqz	$t3, $t3, $t5
	or	$t2, $t3, $t2
	ori	$t3, $zero, 252
	masknez	$t4, $t3, $t5
	ori	$t6, $zero, 276
	maskeqz	$t6, $t6, $t5
	or	$t4, $t6, $t4
	ori	$t6, $zero, 256
	masknez	$t6, $t6, $t5
	ori	$t7, $zero, 280
	maskeqz	$t5, $t7, $t5
	or	$t5, $t5, $t6
	addi.d	$t6, $a0, 332
	ori	$t7, $zero, 300
	ori	$t8, $zero, 296
	ori	$fp, $zero, 304
	b	.LBB17_6
	.p2align	4, , 16
.LBB17_5:                               #   in Loop: Header=BB17_6 Depth=1
	addi.d	$a7, $a7, 84
	addi.d	$t0, $t0, 4
	beq	$a7, $t3, .LBB17_10
.LBB17_6:                               # =>This Inner Loop Header: Depth=1
	add.d	$s0, $t6, $a7
	fld.s	$fa6, $s0, -4
	fld.s	$ft0, $s0, -8
	fldx.s	$ft1, $t6, $a7
	fmul.s	$fa4, $fa2, $fa6
	fmadd.s	$fa4, $ft0, $fa1, $fa4
	fmadd.s	$fa4, $ft1, $fa3, $fa4
	fld.s	$fa5, $t0, 476
	sltui	$s1, $a7, 1
	masknez	$s2, $t7, $s1
	maskeqz	$s3, $t4, $s1
	or	$s2, $s3, $s2
	masknez	$s3, $t8, $s1
	maskeqz	$s4, $t2, $s1
	or	$s3, $s4, $s3
	masknez	$s4, $fp, $s1
	maskeqz	$s1, $t5, $s1
	or	$s1, $s1, $s4
	fldx.s	$fa7, $a0, $s2
	fld.s	$ft2, $a0, 840
	fldx.s	$ft3, $a0, $s3
	fldx.s	$ft4, $a0, $s1
	fmul.s	$fa5, $fa5, $fa7
	fdiv.s	$fa5, $fa5, $ft2
	fld.s	$fa7, $t0, 0
	fneg.s	$ft2, $ft4
	fmadd.s	$fa5, $ft2, $fa4, $fa5
	fmul.s	$fa5, $ft3, $fa5
	fmul.s	$fa5, $fa7, $fa5
	fld.s	$fa7, $a0, 1076
	fld.s	$ft2, $a0, 1072
	fneg.s	$ft3, $fa6
	fld.s	$ft4, $a0, 1068
	fmul.s	$ft5, $fa7, $ft3
	fmadd.s	$ft5, $ft2, $ft1, $ft5
	fneg.s	$ft6, $ft1
	fmul.s	$ft7, $ft4, $ft6
	fmadd.s	$ft7, $fa7, $ft0, $ft7
	fneg.s	$fa7, $ft0
	fmul.s	$ft2, $ft2, $fa7
	fld.s	$ft8, $a1, 284
	fld.s	$ft9, $a1, 280
	fmadd.s	$ft2, $ft4, $fa6, $ft2
	fld.s	$ft4, $a1, 288
	fmul.s	$ft8, $ft7, $ft8
	fmadd.s	$ft8, $ft9, $ft5, $ft8
	fld.s	$ft9, $a1, 300
	fmadd.s	$ft4, $ft4, $ft2, $ft8
	fld.s	$ft8, $a1, 296
	fld.s	$ft10, $a1, 316
	fmul.s	$ft9, $ft7, $ft9
	fld.s	$ft11, $a1, 312
	fmadd.s	$ft8, $ft8, $ft5, $ft9
	fmul.s	$ft7, $ft7, $ft10
	fld.s	$ft9, $a1, 304
	fmadd.s	$ft5, $ft11, $ft5, $ft7
	fld.s	$ft7, $a1, 320
	fld.s	$ft10, $a0, 1092
	fmadd.s	$ft8, $ft9, $ft2, $ft8
	fld.s	$ft9, $a0, 1088
	fmadd.s	$ft5, $ft7, $ft2, $ft5
	fld.s	$ft7, $a0, 1084
	fmul.s	$ft2, $ft10, $ft3
	fld.s	$ft11, $a1, 360
	fmadd.s	$ft2, $ft9, $ft1, $ft2
	fmul.s	$ft3, $ft7, $ft6
	fmadd.s	$ft3, $ft10, $ft0, $ft3
	fmul.s	$ft0, $ft0, $ft11
	fmul.s	$ft1, $ft1, $ft11
	fld.s	$ft6, $a2, 0
	fmul.s	$ft10, $fa6, $ft11
	fmul.s	$ft0, $fa5, $ft0
	fmul.s	$ft10, $fa5, $ft10
	fadd.s	$ft0, $ft0, $ft6
	fld.s	$ft6, $a2, 4
	fst.s	$ft0, $a2, 0
	fld.s	$ft0, $a2, 8
	fmul.s	$ft1, $fa5, $ft1
	fadd.s	$ft6, $ft10, $ft6
	fst.s	$ft6, $a2, 4
	fadd.s	$ft0, $ft1, $ft0
	fld.s	$ft1, $a2, 32
	fld.s	$ft6, $a2, 36
	fld.s	$ft10, $a2, 40
	fst.s	$ft0, $a2, 8
	fmul.s	$ft0, $fa5, $ft1
	fmul.s	$ft1, $fa5, $ft6
	fmul.s	$ft6, $fa5, $ft10
	fmul.s	$ft0, $ft4, $ft0
	fld.s	$ft4, $a2, 16
	fmul.s	$ft1, $ft8, $ft1
	fmul.s	$ft5, $ft5, $ft6
	fld.s	$ft6, $a2, 20
	fadd.s	$ft0, $ft0, $ft4
	fld.s	$ft4, $a2, 24
	fst.s	$ft0, $a2, 16
	fadd.s	$ft0, $ft1, $ft6
	fst.s	$ft0, $a2, 20
	fadd.s	$ft0, $ft5, $ft4
	fst.s	$ft0, $a2, 24
	fld.s	$ft0, $a3, 360
	fld.s	$ft1, $s0, -8
	fmul.s	$fa7, $ft9, $fa7
	fmadd.s	$fa6, $ft7, $fa6, $fa7
	fld.s	$fa7, $s0, -4
	fmul.s	$ft1, $ft0, $ft1
	fldx.s	$ft4, $t6, $a7
	fld.s	$ft5, $a3, 284
	fmul.s	$fa7, $ft0, $fa7
	fld.s	$ft6, $a3, 280
	fmul.s	$ft0, $ft0, $ft4
	fmul.s	$ft4, $ft3, $ft5
	fld.s	$ft5, $a3, 288
	fmadd.s	$ft4, $ft6, $ft2, $ft4
	fld.s	$ft6, $a3, 300
	fld.s	$ft7, $a3, 296
	fmadd.s	$ft4, $ft5, $fa6, $ft4
	fld.s	$ft5, $a3, 304
	fmul.s	$ft6, $ft3, $ft6
	fmadd.s	$ft6, $ft7, $ft2, $ft6
	fld.s	$ft7, $a3, 316
	fmadd.s	$ft5, $ft5, $fa6, $ft6
	fld.s	$ft6, $a3, 312
	fld.s	$ft8, $a3, 320
	fmul.s	$ft3, $ft3, $ft7
	fld.s	$ft7, $a4, 0
	fmadd.s	$ft2, $ft6, $ft2, $ft3
	fmadd.s	$fa6, $ft8, $fa6, $ft2
	fmul.s	$ft1, $fa5, $ft1
	fsub.s	$ft1, $ft7, $ft1
	fld.s	$ft2, $a4, 4
	fst.s	$ft1, $a4, 0
	fmul.s	$fa7, $fa5, $fa7
	fld.s	$ft1, $a4, 8
	fsub.s	$fa7, $ft2, $fa7
	fst.s	$fa7, $a4, 4
	fmul.s	$fa7, $fa5, $ft0
	fsub.s	$fa7, $ft1, $fa7
	fld.s	$ft0, $a4, 32
	fld.s	$ft1, $a4, 36
	fld.s	$ft2, $a4, 40
	fst.s	$fa7, $a4, 8
	fmul.s	$fa7, $ft0, $fa5
	fmul.s	$ft0, $ft1, $fa5
	fmul.s	$fa5, $ft2, $fa5
	fmul.s	$fa7, $ft4, $fa7
	fld.s	$ft1, $a4, 16
	fmul.s	$ft0, $ft5, $ft0
	fmul.s	$ft2, $fa6, $fa5
	fld.s	$fa6, $a4, 20
	fsub.s	$fa5, $ft1, $fa7
	fld.s	$fa7, $a4, 24
	fst.s	$fa5, $a4, 16
	fsub.s	$fa6, $fa6, $ft0
	fst.s	$fa6, $a4, 20
	fsub.s	$fa7, $fa7, $ft2
	fst.s	$fa7, $a4, 24
	bnez	$a7, .LBB17_5
# %bb.7:                                #   in Loop: Header=BB17_6 Depth=1
	beqz	$t1, .LBB17_5
# %bb.8:                                #   in Loop: Header=BB17_6 Depth=1
	fld.s	$ft0, $a0, 1128
	fld.s	$ft1, $a0, 1124
	fcmp.cule.s	$fcc0, $ft1, $ft0
	bcnez	$fcc0, .LBB17_5
# %bb.9:                                #   in Loop: Header=BB17_6 Depth=1
	fld.s	$fa5, $a0, 1120
	fld.s	$fa6, $t0, 0
	fadd.s	$fa4, $fa4, $fa5
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa6, $fa4
	fabs.s	$fa5, $fa4
	fadd.s	$fa5, $ft0, $fa5
	fcmp.clt.s	$fcc0, $ft1, $fa5
	fsel	$fa5, $fa5, $ft1, $fcc0
	fsub.s	$fa6, $fa5, $ft0
	fneg.s	$fa7, $fa6
	fcmp.clt.s	$fcc0, $fa4, $fa0
	fsel	$fa4, $fa6, $fa7, $fcc0
	fst.s	$fa5, $a0, 1128
	fld.s	$ft1, $s0, -8
	fld.s	$fa5, $s0, -4
	fldx.s	$ft2, $t6, $a7
	fld.s	$fa6, $a0, 1076
	fld.s	$fa7, $a0, 1072
	fneg.s	$ft0, $fa5
	fld.s	$ft3, $a0, 1068
	fmul.s	$ft4, $fa6, $ft0
	fmadd.s	$ft4, $fa7, $ft2, $ft4
	fneg.s	$ft5, $ft2
	fmul.s	$ft6, $ft3, $ft5
	fmadd.s	$ft6, $fa6, $ft1, $ft6
	fneg.s	$fa6, $ft1
	fmul.s	$fa7, $fa7, $fa6
	fld.s	$ft7, $a1, 284
	fld.s	$ft8, $a1, 280
	fmadd.s	$fa7, $ft3, $fa5, $fa7
	fld.s	$ft3, $a1, 288
	fmul.s	$ft7, $ft6, $ft7
	fmadd.s	$ft7, $ft8, $ft4, $ft7
	fld.s	$ft8, $a1, 300
	fmadd.s	$ft3, $ft3, $fa7, $ft7
	fld.s	$ft7, $a1, 296
	fld.s	$ft9, $a1, 316
	fmul.s	$ft8, $ft6, $ft8
	fld.s	$ft10, $a1, 312
	fmadd.s	$ft7, $ft7, $ft4, $ft8
	fmul.s	$ft6, $ft6, $ft9
	fld.s	$ft8, $a1, 304
	fmadd.s	$ft4, $ft10, $ft4, $ft6
	fld.s	$ft6, $a1, 320
	fld.s	$ft9, $a0, 1092
	fmadd.s	$ft7, $ft8, $fa7, $ft7
	fld.s	$ft8, $a0, 1088
	fmadd.s	$ft4, $ft6, $fa7, $ft4
	fld.s	$ft6, $a0, 1084
	fmul.s	$fa7, $ft9, $ft0
	fld.s	$ft10, $a1, 360
	fmadd.s	$fa7, $ft8, $ft2, $fa7
	fmul.s	$ft0, $ft6, $ft5
	fmadd.s	$ft0, $ft9, $ft1, $ft0
	fmul.s	$ft1, $ft1, $ft10
	fmul.s	$ft2, $ft2, $ft10
	fld.s	$ft5, $a2, 0
	fmul.s	$ft9, $fa5, $ft10
	fmul.s	$ft1, $fa4, $ft1
	fmul.s	$ft9, $fa4, $ft9
	fadd.s	$ft1, $ft1, $ft5
	fld.s	$ft5, $a2, 4
	fst.s	$ft1, $a2, 0
	fld.s	$ft1, $a2, 8
	fmul.s	$ft2, $fa4, $ft2
	fadd.s	$ft5, $ft9, $ft5
	fst.s	$ft5, $a2, 4
	fadd.s	$ft1, $ft2, $ft1
	fld.s	$ft2, $a2, 32
	fld.s	$ft5, $a2, 36
	fld.s	$ft9, $a2, 40
	fst.s	$ft1, $a2, 8
	fmul.s	$ft1, $fa4, $ft2
	fmul.s	$ft2, $fa4, $ft5
	fmul.s	$ft5, $fa4, $ft9
	fmul.s	$ft1, $ft3, $ft1
	fld.s	$ft3, $a2, 16
	fmul.s	$ft2, $ft7, $ft2
	fmul.s	$ft4, $ft4, $ft5
	fld.s	$ft5, $a2, 20
	fadd.s	$ft1, $ft1, $ft3
	fld.s	$ft3, $a2, 24
	fst.s	$ft1, $a2, 16
	fadd.s	$ft1, $ft2, $ft5
	fst.s	$ft1, $a2, 20
	fadd.s	$ft1, $ft4, $ft3
	fst.s	$ft1, $a2, 24
	fld.s	$ft1, $a3, 360
	fld.s	$ft2, $s0, -8
	fmul.s	$fa6, $ft8, $fa6
	fmadd.s	$fa5, $ft6, $fa5, $fa6
	fld.s	$fa6, $s0, -4
	fmul.s	$ft2, $ft1, $ft2
	fldx.s	$ft3, $t6, $a7
	fld.s	$ft4, $a3, 284
	fmul.s	$fa6, $ft1, $fa6
	fld.s	$ft5, $a3, 280
	fmul.s	$ft1, $ft1, $ft3
	fmul.s	$ft3, $ft0, $ft4
	fld.s	$ft4, $a3, 288
	fmadd.s	$ft3, $ft5, $fa7, $ft3
	fld.s	$ft5, $a3, 300
	fld.s	$ft6, $a3, 296
	fmadd.s	$ft3, $ft4, $fa5, $ft3
	fld.s	$ft4, $a3, 304
	fmul.s	$ft5, $ft0, $ft5
	fmadd.s	$ft5, $ft6, $fa7, $ft5
	fld.s	$ft6, $a3, 316
	fmadd.s	$ft4, $ft4, $fa5, $ft5
	fld.s	$ft5, $a3, 312
	fld.s	$ft7, $a3, 320
	fmul.s	$ft0, $ft0, $ft6
	fld.s	$ft6, $a4, 0
	fmadd.s	$fa7, $ft5, $fa7, $ft0
	fmadd.s	$fa5, $ft7, $fa5, $fa7
	fmul.s	$fa7, $fa4, $ft2
	fsub.s	$fa7, $ft6, $fa7
	fld.s	$ft0, $a4, 4
	fst.s	$fa7, $a4, 0
	fmul.s	$fa6, $fa4, $fa6
	fld.s	$fa7, $a4, 8
	fsub.s	$fa6, $ft0, $fa6
	fst.s	$fa6, $a4, 4
	fmul.s	$fa6, $fa4, $ft1
	fsub.s	$fa6, $fa7, $fa6
	fld.s	$fa7, $a4, 32
	fld.s	$ft0, $a4, 36
	fld.s	$ft1, $a4, 40
	fst.s	$fa6, $a4, 8
	fmul.s	$fa6, $fa7, $fa4
	fmul.s	$fa7, $ft0, $fa4
	fmul.s	$fa4, $ft1, $fa4
	fmul.s	$fa6, $ft3, $fa6
	fld.s	$ft0, $a4, 16
	fmul.s	$fa7, $ft4, $fa7
	fmul.s	$fa4, $fa5, $fa4
	fld.s	$ft1, $a4, 20
	fsub.s	$fa5, $ft0, $fa6
	fld.s	$ft0, $a4, 24
	fst.s	$fa5, $a4, 16
	fsub.s	$fa6, $ft1, $fa7
	fst.s	$fa6, $a4, 20
	fsub.s	$fa7, $ft0, $fa4
	fst.s	$fa7, $a4, 24
	b	.LBB17_5
.LBB17_10:
	movgr2fr.w	$ft1, $zero
	fmov.s	$ft3, $ft1
	fmov.s	$ft4, $ft1
	fmov.s	$ft5, $ft1
	beqz	$a5, .LBB17_12
# %bb.11:
	fld.s	$fa0, $a5, 344
	fld.s	$fa1, $a2, 16
	fld.s	$fa2, $a5, 348
	fld.s	$fa3, $a2, 20
	fld.s	$fa4, $a5, 352
	fld.s	$ft0, $a2, 24
	fadd.s	$ft5, $fa0, $fa1
	fadd.s	$ft4, $fa2, $fa3
	fadd.s	$ft3, $fa4, $ft0
.LBB17_12:                              # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit
	fld.s	$fa0, $a0, 844
	fld.s	$fa2, $a0, 860
	fld.s	$fa1, $a0, 876
	fld.s	$ft10, $a0, 908
	fld.s	$ft9, $a0, 924
	fld.s	$ft11, $a0, 940
	fmov.s	$ft6, $ft1
	fmov.s	$fs2, $ft1
	fmov.s	$ft12, $ft1
	beqz	$a6, .LBB17_14
# %bb.13:
	fld.s	$fa3, $a6, 344
	fld.s	$fa4, $a6, 348
	fld.s	$ft0, $a6, 352
	fadd.s	$ft12, $fa3, $fa5
	fadd.s	$fs2, $fa4, $fa6
	fadd.s	$ft6, $ft0, $fa7
.LBB17_14:                              # %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit383
	fmul.s	$fa3, $fa2, $ft4
	fmadd.s	$fa3, $fa0, $ft5, $fa3
	fmadd.s	$fa3, $fa1, $ft3, $fa3
	fmul.s	$fa4, $fa0, $fa3
	fmul.s	$fa5, $fa2, $fa3
	fmul.s	$fa6, $fa1, $fa3
	fmul.s	$fa3, $ft9, $fs2
	fmadd.s	$fa3, $ft10, $ft12, $fa3
	fmadd.s	$fa3, $ft11, $ft6, $fa3
	fmul.s	$fa7, $ft10, $fa3
	fmul.s	$ft0, $ft9, $fa3
	fmul.s	$ft2, $ft11, $fa3
	fst.s	$fa4, $sp, 36                   # 4-byte Folded Spill
	fsub.s	$fa3, $ft5, $fa4
	fst.s	$fa5, $sp, 32                   # 4-byte Folded Spill
	fsub.s	$fa4, $ft4, $fa5
	fst.s	$fa6, $sp, 28                   # 4-byte Folded Spill
	fsub.s	$ft8, $ft3, $fa6
	fst.s	$fa7, $sp, 24                   # 4-byte Folded Spill
	fst.s	$ft12, $sp, 44                  # 4-byte Folded Spill
	fsub.s	$ft12, $ft12, $fa7
	fst.s	$ft0, $sp, 20                   # 4-byte Folded Spill
	fsub.s	$ft13, $fs2, $ft0
	fst.s	$ft2, $sp, 16                   # 4-byte Folded Spill
	fsub.s	$fs0, $ft6, $ft2
	fsub.s	$ft14, $fa3, $ft12
	fsub.s	$ft15, $fa4, $ft13
	fsub.s	$ft13, $ft8, $fs0
	fmul.s	$fa3, $ft15, $ft15
	fmadd.s	$fa3, $ft14, $ft14, $fa3
	fmadd.s	$fa4, $ft13, $ft13, $fa3
	fld.s	$ft0, $a1, 280
	fld.s	$fs7, $a1, 284
	fld.s	$ft8, $a1, 288
	fld.s	$fs3, $a1, 296
	fld.s	$fa3, $a1, 300
	fld.s	$fs6, $a1, 304
	fld.s	$fs4, $a1, 312
	pcalau12i	$a5, %pc_hi20(.LCPI17_0)
	fld.s	$ft12, $a5, %pc_lo12(.LCPI17_0)
	fld.s	$ft2, $a1, 316
	fld.s	$fs1, $a1, 320
	fsqrt.s	$fa4, $fa4
	fcmp.cule.s	$fcc0, $fa4, $ft12
	fmov.s	$fs0, $ft1
	fst.s	$ft2, $sp, 40                   # 4-byte Folded Spill
	bcnez	$fcc0, .LBB17_16
# %bb.15:
	frecip.s	$fa4, $fa4
	fmul.s	$fs0, $ft14, $fa4
	fmul.s	$fa5, $ft15, $fa4
	fmul.s	$fa4, $ft13, $fa4
	fmul.s	$fa6, $fa5, $fs3
	fmadd.s	$fa6, $ft0, $fs0, $fa6
	fmadd.s	$fa6, $fs4, $fa4, $fa6
	fmul.s	$fa7, $fa5, $fa3
	fmadd.s	$fa7, $fs7, $fs0, $fa7
	fmadd.s	$fa7, $ft2, $fa4, $fa7
	fst.s	$fs4, $sp, 12                   # 4-byte Folded Spill
	fst.s	$fs3, $sp, 8                    # 4-byte Folded Spill
	fmov.s	$fs4, $ft0
	fmul.s	$ft0, $fa5, $fs6
	fmadd.s	$ft0, $ft8, $fs0, $ft0
	fmadd.s	$ft0, $fs1, $fa4, $ft0
	fmul.s	$fa7, $fa5, $fa7
	fld.s	$ft2, $a3, 296
	fmadd.s	$fa6, $fs0, $fa6, $fa7
	fmadd.s	$fs5, $fa4, $ft0, $fa6
	fld.s	$fa7, $a3, 280
	fmul.s	$ft0, $fa5, $ft2
	fld.s	$ft2, $a3, 312
	fmov.s	$fs3, $ft1
	fmov.s	$ft1, $fs1
	fmov.s	$fs1, $ft6
	fmov.s	$ft6, $ft3
	fld.s	$ft3, $a3, 300
	fmov.s	$ft7, $ft4
	fld.s	$ft4, $a3, 284
	fmadd.s	$fa7, $fa7, $fs0, $ft0
	fmadd.s	$fa7, $ft2, $fa4, $fa7
	fmul.s	$ft0, $fa5, $ft3
	fmadd.s	$ft0, $ft4, $fs0, $ft0
	fld.s	$ft2, $a3, 316
	fld.s	$ft3, $a3, 304
	fld.s	$ft4, $a3, 288
	fmov.s	$fa6, $fa2
	fmov.s	$fa2, $fa1
	fmov.s	$fa1, $fa0
	fmov.s	$fa0, $fa3
	fmov.s	$fa3, $fs7
	fmov.s	$fs7, $fs6
	fmov.s	$fs6, $ft8
	fmov.s	$ft8, $ft5
	fld.s	$ft5, $a3, 320
	fmadd.s	$ft0, $ft2, $fa4, $ft0
	fmul.s	$ft2, $fa5, $ft3
	fmov.s	$ft3, $ft6
	fmov.s	$ft6, $fs1
	fmov.s	$fs1, $ft1
	fmov.s	$ft1, $fs3
	fmadd.s	$ft2, $ft4, $fs0, $ft2
	fmov.s	$ft4, $ft7
	fmadd.s	$ft2, $ft5, $fa4, $ft2
	fmov.s	$ft5, $ft8
	fmov.s	$ft8, $fs6
	fmov.s	$fs6, $fs7
	fmov.s	$fs7, $fa3
	fmov.s	$fa3, $fa0
	fmov.s	$fa0, $fa1
	fmov.s	$fa1, $fa2
	fmov.s	$fa2, $fa6
	fmul.s	$fa5, $fa5, $ft0
	fmov.s	$ft0, $fs4
	fld.s	$fs3, $sp, 8                    # 4-byte Folded Reload
	fld.s	$fs4, $sp, 12                   # 4-byte Folded Reload
	fmadd.s	$fa5, $fs0, $fa7, $fa5
	fmadd.s	$fa4, $fa4, $ft2, $fa5
	fld.s	$ft2, $sp, 40                   # 4-byte Folded Reload
	fld.s	$fa5, $a0, 316
	fld.s	$fa7, $a0, 308
	fadd.s	$fa4, $fs5, $fa4
	frecip.s	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fmul.s	$fs0, $fa7, $fa4
.LBB17_16:
	fneg.s	$fa4, $ft9
	fmul.s	$fa4, $fa1, $fa4
	fmadd.s	$fa4, $fa2, $ft11, $fa4
	fneg.s	$fa5, $ft11
	fmul.s	$fa5, $fa0, $fa5
	fmadd.s	$fa5, $fa1, $ft10, $fa5
	fld.s	$fa6, $a0, 840
	fneg.s	$fa7, $ft10
	fmul.s	$fa7, $fa2, $fa7
	fmadd.s	$fa7, $fa0, $ft9, $fa7
	frecip.s	$fa6, $fa6
	fmul.s	$ft10, $fa4, $fa6
	fmul.s	$ft11, $fa5, $fa6
	fmul.s	$ft9, $fa7, $fa6
	fmul.s	$fa4, $ft11, $ft11
	fmadd.s	$fa4, $ft10, $ft10, $fa4
	fmadd.s	$fa4, $ft9, $ft9, $fa4
	fsqrt.s	$fa4, $fa4
	fcmp.cule.s	$fcc0, $fa4, $ft12
	fmov.s	$ft12, $ft1
	bcnez	$fcc0, .LBB17_18
# %bb.17:
	frecip.s	$fa4, $fa4
	fmul.s	$fa5, $ft10, $fa4
	fmul.s	$fa6, $ft11, $fa4
	fmul.s	$fa4, $ft9, $fa4
	fmul.s	$fa7, $fa6, $fs3
	fmadd.s	$fa7, $ft0, $fa5, $fa7
	fmadd.s	$fa7, $fs4, $fa4, $fa7
	fst.s	$ft0, $sp, 12                   # 4-byte Folded Spill
	fmul.s	$ft0, $fa6, $fa3
	fmadd.s	$ft0, $fs7, $fa5, $ft0
	fmadd.s	$ft0, $ft2, $fa4, $ft0
	fmul.s	$ft2, $fa6, $fs6
	fmadd.s	$ft2, $ft8, $fa5, $ft2
	fmadd.s	$ft2, $fs1, $fa4, $ft2
	fmul.s	$ft0, $fa6, $ft0
	fst.s	$fs1, $sp, 8                    # 4-byte Folded Spill
	fmov.s	$fs1, $ft6
	fmov.s	$ft6, $ft3
	fld.s	$ft3, $a3, 296
	fmadd.s	$fa7, $fa5, $fa7, $ft0
	fmadd.s	$fa7, $fa4, $ft2, $fa7
	fld.s	$ft0, $a3, 280
	fmul.s	$ft2, $fa6, $ft3
	fld.s	$ft3, $a3, 312
	fmov.s	$ft7, $ft4
	fld.s	$ft4, $a3, 300
	fmov.s	$fs5, $ft8
	fmov.s	$ft8, $ft5
	fld.s	$ft5, $a3, 284
	fmadd.s	$ft0, $ft0, $fa5, $ft2
	fmadd.s	$ft0, $ft3, $fa4, $ft0
	fmul.s	$ft2, $fa6, $ft4
	fmadd.s	$ft2, $ft5, $fa5, $ft2
	fld.s	$ft3, $a3, 316
	fld.s	$ft4, $a3, 304
	fld.s	$ft5, $a3, 288
	fld.s	$ft12, $a3, 320
	fmadd.s	$ft2, $ft3, $fa4, $ft2
	fmul.s	$ft3, $fa6, $ft4
	fmov.s	$ft4, $ft7
	fmadd.s	$ft3, $ft5, $fa5, $ft3
	fmov.s	$ft5, $ft8
	fmov.s	$ft8, $fs5
	fmadd.s	$ft3, $ft12, $fa4, $ft3
	fmul.s	$fa6, $fa6, $ft2
	fld.s	$ft2, $sp, 40                   # 4-byte Folded Reload
	fmadd.s	$fa5, $fa5, $ft0, $fa6
	fld.s	$ft0, $sp, 12                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fa4, $ft3, $fa5
	fmov.s	$ft3, $ft6
	fmov.s	$ft6, $fs1
	fld.s	$fs1, $sp, 8                    # 4-byte Folded Reload
	fld.s	$fa5, $a0, 312
	fld.s	$fa6, $a0, 308
	fadd.s	$fa4, $fa7, $fa4
	frecip.s	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fmul.s	$ft12, $fa6, $fa4
.LBB17_18:
	fmul.s	$fa4, $ft15, $fs7
	fmadd.s	$fa4, $ft0, $ft14, $fa4
	fmadd.s	$fa4, $ft8, $ft13, $fa4
	fmul.s	$fa5, $ft15, $fa3
	fmadd.s	$fa5, $fs3, $ft14, $fa5
	fmadd.s	$fa5, $fs6, $ft13, $fa5
	fmul.s	$fa3, $ft15, $ft2
	fmadd.s	$fa3, $fs4, $ft14, $fa3
	fmadd.s	$fa3, $fs1, $ft13, $fa3
	fld.s	$fa6, $a2, 0
	fneg.s	$ft8, $ft1
	fmul.s	$fa7, $fs0, $ft8
	fld.s	$ft0, $a2, 4
	fadd.s	$fa6, $fa7, $fa6
	fld.s	$ft2, $a2, 8
	fst.s	$fa6, $a2, 0
	fadd.s	$fa6, $fa7, $ft0
	fst.s	$fa6, $a2, 4
	fadd.s	$fa6, $fa7, $ft2
	fld.s	$fa7, $a2, 32
	fld.s	$ft0, $a2, 36
	fld.s	$ft2, $a2, 40
	fst.s	$fa6, $a2, 8
	fmul.s	$fa6, $fa7, $fs0
	fmul.s	$fa7, $ft0, $fs0
	fmul.s	$ft0, $ft2, $fs0
	fmul.s	$fa4, $fa4, $fa6
	fld.s	$fa6, $a2, 16
	fmul.s	$fa5, $fa5, $fa7
	fmul.s	$fa3, $fa3, $ft0
	fld.s	$fa7, $a2, 20
	fsub.s	$fa4, $fa6, $fa4
	fld.s	$fa6, $a2, 24
	fst.s	$fa4, $a2, 16
	fsub.s	$fa4, $fa7, $fa5
	fst.s	$fa4, $a2, 20
	fsub.s	$fa3, $fa6, $fa3
	fst.s	$fa3, $a2, 24
	fld.s	$fa3, $a3, 284
	fld.s	$fa4, $a3, 280
	fmul.s	$fa3, $ft15, $fa3
	fld.s	$fa5, $a3, 288
	fld.s	$fa6, $a3, 300
	fmadd.s	$fa3, $fa4, $ft14, $fa3
	fld.s	$fa4, $a3, 296
	fmadd.s	$fa3, $fa5, $ft13, $fa3
	fmul.s	$fa5, $ft15, $fa6
	fld.s	$fa6, $a3, 304
	fmadd.s	$fa4, $fa4, $ft14, $fa5
	fld.s	$fa5, $a3, 316
	fld.s	$fa7, $a3, 312
	fmadd.s	$fa4, $fa6, $ft13, $fa4
	fld.s	$fa6, $a3, 320
	fmul.s	$fa5, $ft15, $fa5
	fmadd.s	$fa5, $fa7, $ft14, $fa5
	fld.s	$fa7, $a4, 0
	fmadd.s	$fa5, $fa6, $ft13, $fa5
	fmul.s	$fa6, $fs0, $ft1
	fld.s	$ft0, $a4, 4
	fadd.s	$fa7, $fa6, $fa7
	fld.s	$ft2, $a4, 8
	fst.s	$fa7, $a4, 0
	fadd.s	$fa7, $fa6, $ft0
	fst.s	$fa7, $a4, 4
	fadd.s	$fa6, $fa6, $ft2
	fld.s	$fa7, $a4, 32
	fld.s	$ft0, $a4, 36
	fld.s	$ft2, $a4, 40
	fst.s	$fa6, $a4, 8
	fmul.s	$fa6, $fs0, $fa7
	fmul.s	$fa7, $fs0, $ft0
	fmul.s	$ft0, $fs0, $ft2
	fmul.s	$fa3, $fa3, $fa6
	fld.s	$fa6, $a4, 16
	fmul.s	$fa4, $fa4, $fa7
	fmul.s	$fa5, $fa5, $ft0
	fld.s	$fa7, $a4, 20
	fadd.s	$fa3, $fa3, $fa6
	fld.s	$fa6, $a4, 24
	fst.s	$fa3, $a4, 16
	fadd.s	$fa3, $fa4, $fa7
	fst.s	$fa3, $a4, 20
	fadd.s	$fa3, $fa5, $fa6
	fst.s	$fa3, $a4, 24
	fld.s	$fa3, $a1, 284
	fld.s	$fa4, $a1, 280
	fmul.s	$fa3, $ft11, $fa3
	fld.s	$fa5, $a1, 288
	fld.s	$fa6, $a1, 300
	fmadd.s	$fa3, $fa4, $ft10, $fa3
	fld.s	$fa4, $a1, 296
	fmadd.s	$fa3, $fa5, $ft9, $fa3
	fmul.s	$fa5, $ft11, $fa6
	fld.s	$fa6, $a1, 304
	fmadd.s	$fa4, $fa4, $ft10, $fa5
	fld.s	$fa5, $a1, 316
	fld.s	$fa7, $a1, 312
	fmadd.s	$fa4, $fa6, $ft9, $fa4
	fld.s	$fa6, $a1, 320
	fmul.s	$fa5, $ft11, $fa5
	fmadd.s	$fa5, $fa7, $ft10, $fa5
	fld.s	$fa7, $a2, 0
	fmadd.s	$fa5, $fa6, $ft9, $fa5
	fmul.s	$fa6, $ft12, $ft1
	fld.s	$ft0, $a2, 4
	fadd.s	$fa7, $fa6, $fa7
	fld.s	$ft2, $a2, 8
	fst.s	$fa7, $a2, 0
	fadd.s	$fa7, $fa6, $ft0
	fst.s	$fa7, $a2, 4
	fadd.s	$fa6, $fa6, $ft2
	fld.s	$fa7, $a2, 32
	fld.s	$ft0, $a2, 36
	fld.s	$ft2, $a2, 40
	fst.s	$fa6, $a2, 8
	fmul.s	$fa6, $ft12, $fa7
	fmul.s	$fa7, $ft12, $ft0
	fmul.s	$ft0, $ft12, $ft2
	fmul.s	$fa3, $fa3, $fa6
	fld.s	$fa6, $a2, 16
	fmul.s	$fa4, $fa4, $fa7
	fmul.s	$fa5, $fa5, $ft0
	fld.s	$fa7, $a2, 20
	fadd.s	$fa3, $fa3, $fa6
	fld.s	$fa6, $a2, 24
	fst.s	$fa3, $a2, 16
	fadd.s	$fa3, $fa4, $fa7
	fst.s	$fa3, $a2, 20
	fadd.s	$fa3, $fa5, $fa6
	fst.s	$fa3, $a2, 24
	fld.s	$fa3, $a3, 284
	fld.s	$fa4, $a3, 280
	fmul.s	$fa3, $ft11, $fa3
	fld.s	$fa5, $a3, 288
	fld.s	$fa6, $a3, 300
	fmadd.s	$fa3, $fa4, $ft10, $fa3
	fld.s	$fa4, $a3, 296
	fmadd.s	$fa3, $fa5, $ft9, $fa3
	fmul.s	$fa5, $ft11, $fa6
	fld.s	$fa6, $a3, 304
	fmadd.s	$fa4, $fa4, $ft10, $fa5
	fld.s	$fa5, $a3, 316
	fld.s	$fa7, $a3, 312
	fmadd.s	$fa4, $fa6, $ft9, $fa4
	fld.s	$fa6, $a3, 320
	fmul.s	$fa5, $ft11, $fa5
	fmadd.s	$fa5, $fa7, $ft10, $fa5
	fld.s	$fa7, $a4, 0
	fmadd.s	$fa5, $fa6, $ft9, $fa5
	fmul.s	$fa6, $ft12, $ft8
	fld.s	$ft0, $a4, 4
	fadd.s	$fa7, $fa6, $fa7
	fld.s	$ft2, $a4, 8
	fst.s	$fa7, $a4, 0
	fadd.s	$fa7, $fa6, $ft0
	fst.s	$fa7, $a4, 4
	fadd.s	$fa6, $fa6, $ft2
	fld.s	$fa7, $a4, 32
	fld.s	$ft0, $a4, 36
	fld.s	$ft2, $a4, 40
	fst.s	$fa6, $a4, 8
	fmul.s	$fa6, $fa7, $ft12
	fmul.s	$fa7, $ft0, $ft12
	fmul.s	$ft0, $ft2, $ft12
	fmul.s	$fa3, $fa3, $fa6
	fld.s	$fa6, $a4, 16
	fmul.s	$fa4, $fa4, $fa7
	fmul.s	$fa5, $fa5, $ft0
	fld.s	$fa7, $a4, 20
	fsub.s	$fa3, $fa6, $fa3
	fld.s	$fa6, $a4, 24
	fst.s	$fa3, $a4, 16
	fsub.s	$fa3, $fa7, $fa4
	fst.s	$fa3, $a4, 20
	fsub.s	$fa3, $fa6, $fa5
	fst.s	$fa3, $a4, 24
	ld.bu	$a5, $a0, 321
	fld.s	$fa3, $sp, 44                   # 4-byte Folded Reload
	fsub.s	$fa3, $fa3, $ft5
	fsub.s	$fa4, $fs2, $ft4
	fsub.s	$fa5, $ft6, $ft3
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa3, $fa3, $fa0, $fa4
	fmadd.s	$fa3, $fa5, $fa1, $fa3
	fld.s	$fa4, $a0, 1108
	fld.s	$fa5, $a0, 840
	fld.s	$fa6, $a0, 1112
	ori	$a6, $zero, 268
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 292
	maskeqz	$a7, $a7, $a5
	or	$a6, $a7, $a6
	ori	$a7, $zero, 264
	masknez	$a7, $a7, $a5
	ori	$t0, $zero, 288
	maskeqz	$t0, $t0, $a5
	or	$a7, $t0, $a7
	ori	$t0, $zero, 260
	masknez	$t0, $t0, $a5
	ori	$t1, $zero, 284
	fldx.s	$fa7, $a0, $a7
	maskeqz	$a5, $t1, $a5
	or	$a5, $a5, $t0
	fldx.s	$ft0, $a0, $a6
	fmul.s	$fa4, $fa4, $fa7
	fldx.s	$fa7, $a0, $a5
	fdiv.s	$fa4, $fa4, $fa5
	fmadd.s	$fa3, $fa3, $ft0, $fa4
	fld.s	$fa4, $a1, 284
	fmul.s	$fa5, $fa6, $fa7
	fmul.s	$fa3, $fa3, $fa5
	fld.s	$fa5, $a1, 280
	fmul.s	$fa4, $fa2, $fa4
	fld.s	$fa6, $a1, 288
	fld.s	$fa7, $a1, 300
	fmadd.s	$fa4, $fa5, $fa0, $fa4
	fld.s	$fa5, $a1, 296
	fmadd.s	$fa4, $fa6, $fa1, $fa4
	fmul.s	$fa6, $fa2, $fa7
	fld.s	$fa7, $a1, 304
	fmadd.s	$fa5, $fa5, $fa0, $fa6
	fld.s	$fa6, $a1, 316
	fld.s	$ft0, $a1, 312
	fmadd.s	$fa5, $fa7, $fa1, $fa5
	fld.s	$fa7, $a1, 320
	fmul.s	$fa6, $fa2, $fa6
	fmadd.s	$fa6, $ft0, $fa0, $fa6
	fld.s	$ft0, $a2, 0
	fmadd.s	$fa6, $fa7, $fa1, $fa6
	fmul.s	$fa7, $fa3, $ft1
	fld.s	$ft1, $a2, 4
	fadd.s	$ft0, $fa7, $ft0
	fld.s	$ft2, $a2, 8
	fst.s	$ft0, $a2, 0
	fadd.s	$ft0, $fa7, $ft1
	fst.s	$ft0, $a2, 4
	fadd.s	$fa7, $fa7, $ft2
	fld.s	$ft0, $a2, 32
	fld.s	$ft1, $a2, 36
	fld.s	$ft2, $a2, 40
	fst.s	$fa7, $a2, 8
	fmul.s	$fa7, $fa3, $ft0
	fmul.s	$ft0, $fa3, $ft1
	fmul.s	$ft1, $fa3, $ft2
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
	fst.s	$fa4, $a2, 24
	fld.s	$fa4, $a3, 284
	fld.s	$fa5, $a3, 280
	fmul.s	$fa4, $fa2, $fa4
	fld.s	$fa6, $a3, 288
	fld.s	$fa7, $a3, 300
	fmadd.s	$fa4, $fa5, $fa0, $fa4
	fld.s	$fa5, $a3, 296
	fmadd.s	$fa4, $fa6, $fa1, $fa4
	fmul.s	$fa6, $fa2, $fa7
	fld.s	$fa7, $a3, 304
	fmadd.s	$fa5, $fa5, $fa0, $fa6
	fld.s	$fa6, $a3, 316
	fld.s	$ft0, $a3, 312
	fmadd.s	$fa5, $fa7, $fa1, $fa5
	fld.s	$fa7, $a3, 320
	fmul.s	$fa6, $fa2, $fa6
	fmadd.s	$fa6, $ft0, $fa0, $fa6
	fld.s	$ft0, $a4, 0
	fmadd.s	$fa6, $fa7, $fa1, $fa6
	fmul.s	$fa7, $fa3, $ft8
	fld.s	$ft1, $a4, 4
	fadd.s	$ft0, $fa7, $ft0
	fld.s	$ft2, $a4, 8
	fst.s	$ft0, $a4, 0
	fadd.s	$ft0, $fa7, $ft1
	fst.s	$ft0, $a4, 4
	fadd.s	$fa7, $fa7, $ft2
	fld.s	$ft0, $a4, 32
	fld.s	$ft1, $a4, 36
	fld.s	$ft2, $a4, 40
	fst.s	$fa7, $a4, 8
	fmul.s	$fa7, $ft0, $fa3
	fmul.s	$ft0, $ft1, $fa3
	fmul.s	$fa3, $ft2, $fa3
	fld.s	$ft1, $a4, 16
	fmul.s	$fa4, $fa4, $fa7
	fmul.s	$fa5, $fa5, $ft0
	fmul.s	$fa3, $fa6, $fa3
	fsub.s	$fa4, $ft1, $fa4
	fld.s	$fa6, $a4, 20
	fst.s	$fa4, $a4, 16
	fld.s	$fa4, $a4, 24
	ld.bu	$a5, $a0, 1132
	fsub.s	$fa5, $fa6, $fa5
	fst.s	$fa5, $a4, 20
	fsub.s	$fa3, $fa4, $fa3
	fst.s	$fa3, $a4, 24
	beqz	$a5, .LBB17_21
# %bb.19:
	fld.s	$fa3, $a0, 1144
	fld.s	$ft1, $a0, 1140
	fcmp.cule.s	$fcc0, $ft1, $fa3
	bcnez	$fcc0, .LBB17_21
# %bb.20:
	fld.s	$fa4, $sp, 36                   # 4-byte Folded Reload
	fld.s	$fa5, $sp, 24                   # 4-byte Folded Reload
	fsub.s	$fa4, $fa4, $fa5
	fld.s	$fa5, $sp, 32                   # 4-byte Folded Reload
	fld.s	$fa6, $sp, 20                   # 4-byte Folded Reload
	fsub.s	$fa5, $fa5, $fa6
	fld.s	$fa6, $sp, 28                   # 4-byte Folded Reload
	fld.s	$fa7, $sp, 16                   # 4-byte Folded Reload
	fsub.s	$fa6, $fa6, $fa7
	fmul.s	$fa5, $fa2, $fa5
	fld.s	$fa7, $a0, 1136
	fld.s	$ft0, $a0, 1112
	fmadd.s	$fa4, $fa4, $fa0, $fa5
	fmadd.s	$fa4, $fa6, $fa1, $fa4
	fsub.s	$fa4, $fa7, $fa4
	fmul.s	$fa5, $ft0, $fa4
	fabs.s	$fa4, $fa5
	fadd.s	$fa4, $fa3, $fa4
	fcmp.clt.s	$fcc0, $ft1, $fa4
	fsel	$fa6, $fa4, $ft1, $fcc0
	fsub.s	$fa3, $fa6, $fa3
	fneg.s	$fa7, $fa3
	movgr2fr.w	$fa4, $zero
	fst.s	$fa6, $a0, 1144
	fld.s	$fa6, $a1, 284
	fcmp.clt.s	$fcc0, $fa5, $fa4
	fsel	$fa3, $fa3, $fa7, $fcc0
	fld.s	$fa5, $a1, 280
	fmul.s	$fa6, $fa2, $fa6
	fld.s	$fa7, $a1, 288
	fld.s	$ft0, $a1, 300
	fmadd.s	$fa5, $fa5, $fa0, $fa6
	fld.s	$fa6, $a1, 296
	fmadd.s	$fa5, $fa7, $fa1, $fa5
	fmul.s	$fa7, $fa2, $ft0
	fld.s	$ft0, $a1, 304
	fmadd.s	$fa6, $fa6, $fa0, $fa7
	fld.s	$fa7, $a1, 316
	fld.s	$ft1, $a1, 312
	fmadd.s	$fa6, $ft0, $fa1, $fa6
	fld.s	$ft0, $a1, 320
	fmul.s	$fa7, $fa2, $fa7
	fmadd.s	$fa7, $ft1, $fa0, $fa7
	fld.s	$ft1, $a2, 0
	fmadd.s	$fa7, $ft0, $fa1, $fa7
	fmul.s	$ft0, $fa3, $fa4
	fld.s	$ft2, $a2, 4
	fadd.s	$ft1, $ft0, $ft1
	fld.s	$ft3, $a2, 8
	fst.s	$ft1, $a2, 0
	fadd.s	$ft1, $ft0, $ft2
	fst.s	$ft1, $a2, 4
	fadd.s	$ft0, $ft0, $ft3
	fld.s	$ft1, $a2, 32
	fld.s	$ft2, $a2, 36
	fld.s	$ft3, $a2, 40
	fst.s	$ft0, $a2, 8
	fmul.s	$ft0, $fa3, $ft1
	fmul.s	$ft1, $fa3, $ft2
	fmul.s	$ft2, $fa3, $ft3
	fmul.s	$fa5, $fa5, $ft0
	fld.s	$ft0, $a2, 16
	fmul.s	$fa6, $fa6, $ft1
	fmul.s	$fa7, $fa7, $ft2
	fld.s	$ft1, $a2, 20
	fadd.s	$fa5, $fa5, $ft0
	fld.s	$ft0, $a2, 24
	fst.s	$fa5, $a2, 16
	fadd.s	$fa5, $fa6, $ft1
	fst.s	$fa5, $a2, 20
	fadd.s	$fa5, $fa7, $ft0
	fst.s	$fa5, $a2, 24
	fld.s	$fa5, $a3, 284
	fld.s	$fa6, $a3, 280
	fmul.s	$fa5, $fa2, $fa5
	fld.s	$fa7, $a3, 288
	fld.s	$ft0, $a3, 300
	fld.s	$ft1, $a3, 296
	fmadd.s	$fa5, $fa6, $fa0, $fa5
	fmadd.s	$fa5, $fa7, $fa1, $fa5
	fmul.s	$fa6, $fa2, $ft0
	fmadd.s	$fa6, $ft1, $fa0, $fa6
	fld.s	$fa7, $a3, 304
	fld.s	$ft0, $a3, 316
	fld.s	$ft1, $a3, 312
	fld.s	$ft2, $a3, 320
	fmadd.s	$fa6, $fa7, $fa1, $fa6
	fmul.s	$fa2, $fa2, $ft0
	fmadd.s	$fa0, $ft1, $fa0, $fa2
	fmadd.s	$fa0, $ft2, $fa1, $fa0
	fld.s	$fa1, $a4, 0
	fneg.s	$fa2, $fa4
	fmul.s	$fa2, $fa3, $fa2
	fld.s	$fa4, $a4, 4
	fadd.s	$fa1, $fa2, $fa1
	fld.s	$fa7, $a4, 8
	fst.s	$fa1, $a4, 0
	fadd.s	$fa1, $fa2, $fa4
	fst.s	$fa1, $a4, 4
	fadd.s	$fa1, $fa2, $fa7
	fld.s	$fa2, $a4, 32
	fld.s	$fa4, $a4, 36
	fld.s	$fa7, $a4, 40
	fst.s	$fa1, $a4, 8
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa3
	fmul.s	$fa3, $fa7, $fa3
	fmul.s	$fa1, $fa5, $fa1
	fld.s	$fa4, $a4, 16
	fmul.s	$fa2, $fa6, $fa2
	fmul.s	$fa0, $fa0, $fa3
	fld.s	$fa3, $a4, 20
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a4, 24
	fst.s	$fa1, $a4, 16
	fsub.s	$fa1, $fa3, $fa2
	fst.s	$fa1, $a4, 20
	fsub.s	$fa0, $fa4, $fa0
	fst.s	$fa0, $a4, 24
.LBB17_21:
	fld.d	$fs7, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end17:
	.size	_ZN18btSliderConstraint18solveConstraintIntER11btRigidBodyR12btSolverBodyS1_S3_, .Lfunc_end17-_ZN18btSliderConstraint18solveConstraintIntER11btRigidBodyR12btSolverBodyS1_S3_
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z21btAdjustAngleToLimitsfff
.LCPI18_0:
	.word	0x40c90fdb                      # float 6.28318548
.LCPI18_1:
	.word	0xc0490fdb                      # float -3.14159274
.LCPI18_2:
	.word	0x40490fdb                      # float 3.14159274
.LCPI18_3:
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
	bcnez	$fcc0, .LBB18_21
# %bb.1:
	fcmp.cule.s	$fcc0, $fa1, $fs0
	bcnez	$fcc0, .LBB18_4
# %bb.2:
	fmov.s	$fs4, $fa2
	fsub.s	$fa0, $fa1, $fs0
	pcalau12i	$a0, %pc_hi20(.LCPI18_0)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI18_0)
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI18_1)
	fld.s	$fs3, $a0, %pc_lo12(.LCPI18_1)
	fmov.s	$fs2, $fa0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB18_7
# %bb.3:
	fadd.s	$fs2, $fs2, $fs1
	b	.LBB18_9
.LBB18_4:
	fcmp.cule.s	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB18_21
# %bb.5:
	fmov.s	$fs4, $fa1
	fsub.s	$fa0, $fs0, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI18_0)
	fld.s	$fs2, $a0, %pc_lo12(.LCPI18_0)
	fmov.s	$fa1, $fs2
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI18_1)
	fld.s	$fs3, $a0, %pc_lo12(.LCPI18_1)
	fmov.s	$fs1, $fa0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	pcalau12i	$s0, %pc_hi20(.LCPI18_2)
	pcalau12i	$fp, %pc_hi20(.LCPI18_3)
	bcnez	$fcc0, .LBB18_14
# %bb.6:
	fadd.s	$fs1, $fs1, $fs2
	b	.LBB18_16
.LBB18_7:
	pcalau12i	$a0, %pc_hi20(.LCPI18_2)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI18_2)
	fcmp.cule.s	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB18_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.LCPI18_3)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI18_3)
	fadd.s	$fs2, $fs2, $fa0
.LBB18_9:                               # %_Z16btNormalizeAnglef.exit
	fsub.s	$fa0, $fs4, $fs0
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB18_11
# %bb.10:
	fadd.s	$fa0, $fa0, $fs1
	b	.LBB18_13
.LBB18_11:
	pcalau12i	$a0, %pc_hi20(.LCPI18_2)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI18_2)
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.LCPI18_3)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI18_3)
	fadd.s	$fa0, $fa0, $fa1
.LBB18_13:                              # %_Z16btNormalizeAnglef.exit29
	fabs.s	$fa0, $fa0
	fadd.s	$fa1, $fs0, $fs1
	fcmp.clt.s	$fcc0, $fs2, $fa0
	fsel	$fs0, $fa1, $fs0, $fcc0
	b	.LBB18_21
.LBB18_14:
	fld.s	$fa0, $s0, %pc_lo12(.LCPI18_2)
	fcmp.cule.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB18_16
# %bb.15:
	fld.s	$fa0, $fp, %pc_lo12(.LCPI18_3)
	fadd.s	$fs1, $fs1, $fa0
.LBB18_16:                              # %_Z16btNormalizeAnglef.exit31
	fsub.s	$fa0, $fs0, $fs4
	fmov.s	$fa1, $fs2
	pcaddu18i	$ra, %call36(fmodf)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB18_18
# %bb.17:
	fadd.s	$fa0, $fa0, $fs2
	b	.LBB18_20
.LBB18_18:
	fld.s	$fa1, $s0, %pc_lo12(.LCPI18_2)
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_20
# %bb.19:
	fld.s	$fa1, $fp, %pc_lo12(.LCPI18_3)
	fadd.s	$fa0, $fa0, $fa1
.LBB18_20:                              # %_Z16btNormalizeAnglef.exit33
	fld.s	$fa1, $fp, %pc_lo12(.LCPI18_3)
	fabs.s	$fa0, $fa0
	fadd.s	$fa1, $fs0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fs1
	fsel	$fs0, $fs0, $fa1, $fcc0
.LBB18_21:
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
.Lfunc_end18:
	.size	_Z21btAdjustAngleToLimitsfff, .Lfunc_end18-_Z21btAdjustAngleToLimitsfff
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN18btSliderConstraint11getAncorInAEv # -- Begin function _ZN18btSliderConstraint11getAncorInAEv
	.p2align	5
	.type	_ZN18btSliderConstraint11getAncorInAEv,@function
_ZN18btSliderConstraint11getAncorInAEv: # @_ZN18btSliderConstraint11getAncorInAEv
# %bb.0:
	fld.s	$fa0, $a0, 232
	fld.s	$fa1, $a0, 236
	fadd.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1184
	fld.s	$fa2, $a0, 972
	fld.s	$fa3, $a0, 976
	fld.s	$fa4, $a0, 980
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa0
	fmul.s	$fa2, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fa4
	fld.s	$fa3, $a0, 988
	fld.s	$fa4, $a0, 992
	fld.s	$fa5, $a0, 996
	ld.d	$a0, $a0, 24
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa0, $fa0, $fa5
	fld.s	$fa3, $a0, 8
	fld.s	$fa4, $a0, 24
	fld.s	$fa5, $a0, 40
	fld.s	$fa6, $a0, 12
	fld.s	$fa7, $a0, 28
	fld.s	$ft0, $a0, 44
	fld.s	$ft1, $a0, 16
	fld.s	$ft2, $a0, 32
	fld.s	$ft3, $a0, 56
	fld.s	$ft4, $a0, 60
	fld.s	$ft5, $a0, 64
	fld.s	$ft6, $a0, 48
	fneg.s	$ft3, $ft3
	fneg.s	$ft4, $ft4
	fneg.s	$ft5, $ft5
	fmul.s	$ft7, $fa4, $ft4
	fmadd.s	$ft7, $fa3, $ft3, $ft7
	fmadd.s	$ft7, $fa5, $ft5, $ft7
	fmul.s	$ft8, $fa7, $ft4
	fmadd.s	$ft8, $fa6, $ft3, $ft8
	fmadd.s	$ft8, $ft0, $ft5, $ft8
	fmul.s	$ft4, $ft2, $ft4
	fmadd.s	$ft3, $ft1, $ft3, $ft4
	fmadd.s	$ft3, $ft6, $ft5, $ft3
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa3, $fa3, $fa1, $fa4
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fadd.s	$fa3, $fa3, $ft7
	fmul.s	$fa4, $fa2, $fa7
	fmadd.s	$fa4, $fa6, $fa1, $fa4
	fmadd.s	$fa4, $ft0, $fa0, $fa4
	fadd.s	$fa4, $fa4, $ft8
	fmul.s	$fa2, $fa2, $ft2
	fmadd.s	$fa1, $ft1, $fa1, $fa2
	fmadd.s	$fa0, $ft6, $fa0, $fa1
	fadd.s	$fa0, $fa0, $ft3
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end19:
	.size	_ZN18btSliderConstraint11getAncorInAEv, .Lfunc_end19-_ZN18btSliderConstraint11getAncorInAEv
                                        # -- End function
	.globl	_ZN18btSliderConstraint11getAncorInBEv # -- Begin function _ZN18btSliderConstraint11getAncorInBEv
	.p2align	5
	.type	_ZN18btSliderConstraint11getAncorInBEv,@function
_ZN18btSliderConstraint11getAncorInBEv: # @_ZN18btSliderConstraint11getAncorInBEv
# %bb.0:
	ld.d	$a2, $a0, 212
	ld.d	$a1, $a0, 220
	move	$a0, $a2
	ret
.Lfunc_end20:
	.size	_ZN18btSliderConstraint11getAncorInBEv, .Lfunc_end20-_ZN18btSliderConstraint11getAncorInBEv
                                        # -- End function
	.section	.text._ZN17btTypedConstraintD2Ev,"axG",@progbits,_ZN17btTypedConstraintD2Ev,comdat
	.weak	_ZN17btTypedConstraintD2Ev      # -- Begin function _ZN17btTypedConstraintD2Ev
	.p2align	5
	.type	_ZN17btTypedConstraintD2Ev,@function
_ZN17btTypedConstraintD2Ev:             # @_ZN17btTypedConstraintD2Ev
# %bb.0:
	ret
.Lfunc_end21:
	.size	_ZN17btTypedConstraintD2Ev, .Lfunc_end21-_ZN17btTypedConstraintD2Ev
                                        # -- End function
	.section	.text._ZN18btSliderConstraintD0Ev,"axG",@progbits,_ZN18btSliderConstraintD0Ev,comdat
	.weak	_ZN18btSliderConstraintD0Ev     # -- Begin function _ZN18btSliderConstraintD0Ev
	.p2align	5
	.type	_ZN18btSliderConstraintD0Ev,@function
_ZN18btSliderConstraintD0Ev:            # @_ZN18btSliderConstraintD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end22:
	.size	_ZN18btSliderConstraintD0Ev, .Lfunc_end22-_ZN18btSliderConstraintD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,"axG",@progbits,_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,comdat
	.weak	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif # -- Begin function _ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.p2align	5
	.type	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif,@function
_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif: # @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
# %bb.0:
	ret
.Lfunc_end23:
	.size	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, .Lfunc_end23-_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_btSliderConstraint.cpp
	.type	_GLOBAL__sub_I_btSliderConstraint.cpp,@function
_GLOBAL__sub_I_btSliderConstraint.cpp:  # @_GLOBAL__sub_I_btSliderConstraint.cpp
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0
	pcalau12i	$a0, %pc_hi20(_ZL7s_fixed)
	addi.d	$fp, $a0, %pc_lo12(_ZL7s_fixed)
	movgr2fr.w	$fa0, $zero
	addi.d	$a3, $sp, 0
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN11btRigidBodyD2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZN11btRigidBodyD2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end24:
	.size	_GLOBAL__sub_I_btSliderConstraint.cpp, .Lfunc_end24-_GLOBAL__sub_I_btSliderConstraint.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZTV18btSliderConstraint,@object # @_ZTV18btSliderConstraint
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV18btSliderConstraint
	.p2align	3, 0x0
_ZTV18btSliderConstraint:
	.dword	0
	.dword	_ZTI18btSliderConstraint
	.dword	_ZN17btTypedConstraintD2Ev
	.dword	_ZN18btSliderConstraintD0Ev
	.dword	_ZN18btSliderConstraint13buildJacobianEv
	.dword	_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif
	.dword	_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E
	.dword	_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E
	.dword	_ZN18btSliderConstraint23solveConstraintObsoleteER12btSolverBodyS1_f
	.size	_ZTV18btSliderConstraint, 72

	.type	_ZL7s_fixed,@object             # @_ZL7s_fixed
	.local	_ZL7s_fixed
	.comm	_ZL7s_fixed,568,8
	.hidden	__dso_handle
	.type	_ZTI18btSliderConstraint,@object # @_ZTI18btSliderConstraint
	.globl	_ZTI18btSliderConstraint
	.p2align	3, 0x0
_ZTI18btSliderConstraint:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18btSliderConstraint
	.dword	_ZTI17btTypedConstraint
	.size	_ZTI18btSliderConstraint, 24

	.type	_ZTS18btSliderConstraint,@object # @_ZTS18btSliderConstraint
	.section	.rodata,"a",@progbits
	.globl	_ZTS18btSliderConstraint
_ZTS18btSliderConstraint:
	.asciz	"18btSliderConstraint"
	.size	_ZTS18btSliderConstraint, 21

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

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_btSliderConstraint.cpp
	.globl	_ZN18btSliderConstraintC1Ev
	.type	_ZN18btSliderConstraintC1Ev,@function
_ZN18btSliderConstraintC1Ev = _ZN18btSliderConstraintC2Ev
	.globl	_ZN18btSliderConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b
	.type	_ZN18btSliderConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b,@function
_ZN18btSliderConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b = _ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
	.globl	_ZN18btSliderConstraintC1ER11btRigidBodyRK11btTransformb
	.type	_ZN18btSliderConstraintC1ER11btRigidBodyRK11btTransformb,@function
_ZN18btSliderConstraintC1ER11btRigidBodyRK11btTransformb = _ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb
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
	.addrsig_sym _GLOBAL__sub_I_btSliderConstraint.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL7s_fixed
	.addrsig_sym __dso_handle
	.addrsig_sym _ZTI18btSliderConstraint
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS18btSliderConstraint
	.addrsig_sym _ZTI17btTypedConstraint
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS17btTypedConstraint
	.addrsig_sym _ZTI13btTypedObject
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS13btTypedObject
