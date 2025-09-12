	.file	"btKinematicCharacterController.cpp"
	.text
	.globl	_ZN30btKinematicCharacterController26computeReflectionDirectionERK9btVector3S2_ # -- Begin function _ZN30btKinematicCharacterController26computeReflectionDirectionERK9btVector3S2_
	.p2align	5
	.type	_ZN30btKinematicCharacterController26computeReflectionDirectionERK9btVector3S2_,@function
_ZN30btKinematicCharacterController26computeReflectionDirectionERK9btVector3S2_: # @_ZN30btKinematicCharacterController26computeReflectionDirectionERK9btVector3S2_
# %bb.0:
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a2, 4
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a2, 8
	fmul.s	$fa6, $fa2, $fa3
	fmadd.s	$fa6, $fa0, $fa1, $fa6
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fadd.s	$fa6, $fa6, $fa6
	fmul.s	$fa1, $fa1, $fa6
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end0:
	.size	_ZN30btKinematicCharacterController26computeReflectionDirectionERK9btVector3S2_, .Lfunc_end0-_ZN30btKinematicCharacterController26computeReflectionDirectionERK9btVector3S2_
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController17parallelComponentERK9btVector3S2_ # -- Begin function _ZN30btKinematicCharacterController17parallelComponentERK9btVector3S2_
	.p2align	5
	.type	_ZN30btKinematicCharacterController17parallelComponentERK9btVector3S2_,@function
_ZN30btKinematicCharacterController17parallelComponentERK9btVector3S2_: # @_ZN30btKinematicCharacterController17parallelComponentERK9btVector3S2_
# %bb.0:
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a2, 4
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a2, 8
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fa3, $fa0
	fmul.s	$fa0, $fa5, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end1:
	.size	_ZN30btKinematicCharacterController17parallelComponentERK9btVector3S2_, .Lfunc_end1-_ZN30btKinematicCharacterController17parallelComponentERK9btVector3S2_
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController22perpindicularComponentERK9btVector3S2_ # -- Begin function _ZN30btKinematicCharacterController22perpindicularComponentERK9btVector3S2_
	.p2align	5
	.type	_ZN30btKinematicCharacterController22perpindicularComponentERK9btVector3S2_,@function
_ZN30btKinematicCharacterController22perpindicularComponentERK9btVector3S2_: # @_ZN30btKinematicCharacterController22perpindicularComponentERK9btVector3S2_
# %bb.0:
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a2, 4
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a2, 8
	fmul.s	$fa6, $fa2, $fa3
	fmadd.s	$fa6, $fa0, $fa1, $fa6
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fmul.s	$fa1, $fa1, $fa6
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end2:
	.size	_ZN30btKinematicCharacterController22perpindicularComponentERK9btVector3S2_, .Lfunc_end2-_ZN30btKinematicCharacterController22perpindicularComponentERK9btVector3S2_
                                        # -- End function
	.globl	_ZN30btKinematicCharacterControllerC2EP24btPairCachingGhostObjectP13btConvexShapefi # -- Begin function _ZN30btKinematicCharacterControllerC2EP24btPairCachingGhostObjectP13btConvexShapefi
	.p2align	5
	.type	_ZN30btKinematicCharacterControllerC2EP24btPairCachingGhostObjectP13btConvexShapefi,@function
_ZN30btKinematicCharacterControllerC2EP24btPairCachingGhostObjectP13btConvexShapefi: # @_ZN30btKinematicCharacterControllerC2EP24btPairCachingGhostObjectP13btConvexShapefi
	.cfi_startproc
# %bb.0:
	pcalau12i	$a4, %pc_hi20(_ZTV30btKinematicCharacterController+16)
	addi.d	$a4, $a4, %pc_lo12(_ZTV30btKinematicCharacterController+16)
	st.d	$a4, $a0, 0
	ori	$a4, $zero, 1
	st.b	$a4, $a0, 152
	st.d	$zero, $a0, 144
	st.d	$zero, $a0, 132
	st.w	$a3, $a0, 188
	lu12i.w	$a3, 248381
	ori	$a3, $a3, 1802
	st.w	$a3, $a0, 52
	vrepli.b	$vr1, 0
	vst	$vr1, $a0, 56
	ori	$a3, $zero, 257
	st.h	$a3, $a0, 180
	st.d	$a1, $a0, 16
	fst.s	$fa0, $a0, 48
	st.w	$zero, $a0, 44
	st.d	$a2, $a0, 24
	st.w	$zero, $a0, 184
	ret
.Lfunc_end3:
	.size	_ZN30btKinematicCharacterControllerC2EP24btPairCachingGhostObjectP13btConvexShapefi, .Lfunc_end3-_ZN30btKinematicCharacterControllerC2EP24btPairCachingGhostObjectP13btConvexShapefi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN30btKinematicCharacterControllerD2Ev # -- Begin function _ZN30btKinematicCharacterControllerD2Ev
	.p2align	5
	.type	_ZN30btKinematicCharacterControllerD2Ev,@function
_ZN30btKinematicCharacterControllerD2Ev: # @_ZN30btKinematicCharacterControllerD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV30btKinematicCharacterController+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV30btKinematicCharacterController+16)
	ld.d	$a0, $fp, 144
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB4_3
# %bb.1:
	ld.b	$a1, $fp, 152
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 152
	st.d	$zero, $fp, 144
	st.d	$zero, $fp, 132
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZN30btKinematicCharacterControllerD2Ev, .Lfunc_end4-_ZN30btKinematicCharacterControllerD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN30btKinematicCharacterControllerD0Ev # -- Begin function _ZN30btKinematicCharacterControllerD0Ev
	.p2align	5
	.type	_ZN30btKinematicCharacterControllerD0Ev,@function
_ZN30btKinematicCharacterControllerD0Ev: # @_ZN30btKinematicCharacterControllerD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV30btKinematicCharacterController+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV30btKinematicCharacterController+16)
	ld.d	$a0, $fp, 144
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB5_3
# %bb.1:
	ld.b	$a1, $fp, 152
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_3
# %bb.2:
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB5_3:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB5_4:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN30btKinematicCharacterControllerD0Ev, .Lfunc_end5-_ZN30btKinematicCharacterControllerD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Lfunc_end5-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN30btKinematicCharacterController14getGhostObjectEv # -- Begin function _ZN30btKinematicCharacterController14getGhostObjectEv
	.p2align	5
	.type	_ZN30btKinematicCharacterController14getGhostObjectEv,@function
_ZN30btKinematicCharacterController14getGhostObjectEv: # @_ZN30btKinematicCharacterController14getGhostObjectEv
# %bb.0:
	ld.d	$a0, $a0, 16
	ret
.Lfunc_end6:
	.size	_ZN30btKinematicCharacterController14getGhostObjectEv, .Lfunc_end6-_ZN30btKinematicCharacterController14getGhostObjectEv
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld
.LCPI7_0:
	.word	0x3e4ccccd                      # float 0.200000003
	.text
	.globl	_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld
	.p2align	5
	.type	_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld,@function
_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld: # @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
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
	ld.d	$a3, $a1, 40
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a2, $a3, 0
	ld.d	$a4, $a0, 312
	ld.d	$a5, $a2, 64
	addi.d	$a2, $a1, 48
	move	$a0, $a3
	move	$a1, $a4
	jirl	$ra, $a5, 0
	ld.d	$a0, $fp, 16
	vld	$vr0, $a0, 56
	vst	$vr0, $fp, 88
	ld.d	$a0, $a0, 312
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 72
	addi.d	$s1, $fp, 88
	jirl	$ra, $a1, 0
	blez	$a0, .LBB7_23
# %bb.1:                                # %.lr.ph115
	move	$s2, $zero
	move	$s4, $zero
	addi.d	$s0, $fp, 128
	movgr2fr.w	$fs0, $zero
	ori	$s3, $zero, 1
	fmov.s	$fs1, $fs0
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %._crit_edge99
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $a0, 312
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 72
	addi.d	$s2, $s2, 1
	jirl	$ra, $a1, 0
	bge	$s2, $a0, .LBB7_24
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
                                        #       Child Loop BB7_20 Depth 3
	ld.w	$s5, $fp, 132
	bgez	$s5, .LBB7_10
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a1, $fp, 136
	ld.d	$a0, $fp, 144
	bgez	$a1, .LBB7_9
# %bb.5:                                # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
                                        #   in Loop: Header=BB7_3 Depth=1
	beqz	$a0, .LBB7_8
# %bb.6:                                # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.b	$a1, $fp, 152
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB7_8:                                # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$a0, $zero
	st.b	$s3, $fp, 152
	st.d	$zero, $fp, 144
	st.w	$zero, $fp, 136
.LBB7_9:                                # %.lr.ph.i
                                        #   in Loop: Header=BB7_3 Depth=1
	slli.d	$a1, $s5, 3
	alsl.d	$a0, $s5, $a0, 3
	sub.d	$a2, $zero, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB7_10:                               # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE6resizeEiRKS1_.exit
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 312
	ld.d	$a1, $a0, 0
	st.w	$zero, $fp, 132
	ld.d	$a1, $a1, 56
	jirl	$ra, $a1, 0
	ld.d	$a0, $a0, 16
	slli.d	$a1, $s2, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 32
	move	$a1, $s0
	jirl	$ra, $a2, 0
.LBB7_12:                               #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a1, $fp, 132
	ld.d	$a0, $fp, 16
	blez	$a1, .LBB7_2
# %bb.13:                               # %.lr.ph98
                                        #   in Loop: Header=BB7_3 Depth=1
	fld.s	$fa0, $fp, 88
	ld.d	$a2, $fp, 144
	fld.s	$fa1, $fp, 92
	fld.s	$fa2, $fp, 96
	move	$a3, $zero
	vldi	$vr9, -1040
	vldi	$vr10, -1168
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %._crit_edge
                                        #   in Loop: Header=BB7_15 Depth=2
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB7_2
.LBB7_15:                               #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_20 Depth 3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a2, $a4
	ld.w	$a7, $a4, 728
	blez	$a7, .LBB7_14
# %bb.16:                               # %.lr.ph
                                        #   in Loop: Header=BB7_15 Depth=2
	ld.d	$a5, $a4, 712
	xor	$a5, $a5, $a0
	sltui	$a6, $a5, 1
	move	$a5, $zero
	movgr2cf	$fcc0, $a6
	fsel	$fa3, $ft2, $ft1, $fcc0
	addi.d	$a6, $a4, 88
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_17:                               #   in Loop: Header=BB7_20 Depth=3
	fld.s	$fa5, $a6, -16
	fld.s	$fa6, $a6, -12
	fld.s	$fa7, $a6, -8
	fmul.s	$fa5, $fa3, $fa5
	fmul.s	$fa6, $fa3, $fa6
	fmul.s	$fa7, $fa3, $fa7
	movfr2gr.s	$a7, $fa5
	movfr2gr.s	$t0, $fa6
	bstrins.d	$a7, $t0, 63, 32
	movfr2gr.s	$t0, $fa7
	bstrpick.d	$t0, $t0, 31, 0
	st.d	$a7, $fp, 164
	st.d	$t0, $fp, 172
	fld.s	$fa5, $a6, 0
	ld.w	$a7, $a4, 728
	fmov.s	$fs1, $fa4
.LBB7_18:                               #   in Loop: Header=BB7_20 Depth=3
	fld.s	$fa4, $a6, -16
	fld.s	$fa6, $a6, -12
	fld.s	$fa7, $a6, -8
	fmul.s	$fa4, $fa3, $fa4
	fmul.s	$fa6, $fa3, $fa6
	fmul.s	$fa7, $fa3, $fa7
	pcalau12i	$t0, %pc_hi20(.LCPI7_0)
	fld.s	$ft0, $t0, %pc_lo12(.LCPI7_0)
	fmul.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa6, $fa5
	fmul.s	$fa5, $fa5, $fa7
	fmul.s	$fa4, $fa4, $ft0
	fmul.s	$fa6, $fa6, $ft0
	fmul.s	$fa5, $fa5, $ft0
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $fp, 88
	fadd.s	$fa1, $fa6, $fa1
	fst.s	$fa1, $fp, 92
	fadd.s	$fa2, $fa5, $fa2
	fst.s	$fa2, $fp, 96
	ori	$s4, $zero, 1
.LBB7_19:                               #   in Loop: Header=BB7_20 Depth=3
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 176
	bge	$a5, $a7, .LBB7_14
.LBB7_20:                               #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa4, $a6, 0
	fcmp.cule.s	$fcc0, $fs0, $fa4
	bcnez	$fcc0, .LBB7_19
# %bb.21:                               #   in Loop: Header=BB7_20 Depth=3
	fcmp.cule.s	$fcc0, $fs1, $fa4
	bceqz	$fcc0, .LBB7_17
# %bb.22:                               #   in Loop: Header=BB7_20 Depth=3
	fmov.s	$fa5, $fa4
	b	.LBB7_18
.LBB7_23:
	move	$s4, $zero
.LBB7_24:                               # %._crit_edge116
	ld.d	$a1, $fp, 16
	vld	$vr0, $s1, 0
	andi	$a0, $s4, 1
	vst	$vr0, $a1, 56
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld, .Lfunc_end7-_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld
.LCPI8_0:
	.word	0x3dcccccd                      # float 0.100000001
	.text
	.globl	_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld
	.p2align	5
	.type	_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld,@function
_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld: # @_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.w	$a0, $a0, 188
	pcalau12i	$a2, %pc_hi20(_ZL15upAxisDirection)
	addi.d	$a2, $a2, %pc_lo12(_ZL15upAxisDirection)
	alsl.d	$a3, $a0, $a2, 4
	slli.d	$a0, $a0, 4
	fldx.s	$fa0, $a2, $a0
	fld.s	$fa1, $fp, 48
	fld.s	$fa2, $a3, 4
	fmul.s	$fa3, $fa0, $fa1
	fmul.s	$fa4, $fa1, $fa2
	fld.s	$fa5, $a3, 8
	fld.s	$fa6, $fp, 88
	fld.s	$fa7, $fp, 92
	fld.s	$ft0, $fp, 96
	fmul.s	$fa1, $fa1, $fa5
	fadd.s	$fa3, $fa3, $fa6
	fadd.s	$fa4, $fa4, $fa7
	fadd.s	$fa1, $fa1, $ft0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa1
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $fp, 108
	st.d	$a2, $fp, 116
	lu12i.w	$a2, 260096
	st.w	$a2, $sp, 176
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 180
	st.w	$a2, $sp, 196
	vst	$vr1, $sp, 200
	st.d	$a2, $sp, 216
	st.w	$a2, $sp, 112
	vst	$vr1, $sp, 116
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI8_0)
	st.w	$a2, $sp, 132
	vst	$vr1, $sp, 136
	st.d	$a2, $sp, 152
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa3, $fa5, $fa3
	fadd.s	$fa0, $fa0, $fa6
	fadd.s	$fa2, $fa2, $fa7
	fadd.s	$fa3, $fa3, $ft0
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a3, $fa2
	bstrins.d	$a0, $a3, 63, 32
	movfr2gr.s	$a3, $fa3
	vld	$vr0, $fp, 108
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a3, $sp, 232
	vst	$vr0, $sp, 160
	ld.d	$a0, $fp, 16
	st.w	$a2, $sp, 24
	st.d	$zero, $sp, 96
	vst	$vr1, $sp, 32
	vst	$vr1, $sp, 48
	pcalau12i	$a2, %pc_hi20(_ZTV43btKinematicClosestNotMeConvexResultCallback+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV43btKinematicClosestNotMeConvexResultCallback+16)
	ld.d	$a3, $a0, 192
	st.d	$a0, $sp, 104
	ld.w	$a3, $a3, 8
	ld.bu	$a4, $fp, 180
	ld.d	$a5, $fp, 24
	st.d	$a2, $sp, 16
	st.w	$a3, $sp, 28
	beqz	$a4, .LBB8_2
# %bb.1:
	fld.s	$fa0, $a1, 84
	addi.d	$a2, $sp, 176
	addi.d	$a3, $sp, 112
	addi.d	$a4, $sp, 16
	move	$a1, $a5
	pcaddu18i	$ra, %call36(_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf)
	jirl	$ra, $ra, 0
	b	.LBB8_3
.LBB8_2:
	movgr2fr.w	$fa0, $zero
	addi.d	$a2, $sp, 176
	addi.d	$a3, $sp, 112
	addi.d	$a4, $sp, 16
	move	$a0, $a1
	move	$a1, $a5
	pcaddu18i	$ra, %call36(_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf)
	jirl	$ra, $ra, 0
.LBB8_3:
	fld.s	$fa1, $sp, 24
	fld.s	$fa0, $fp, 48
	vldi	$vr2, -1168
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB8_5
# %bb.4:
	fld.s	$fa2, $fp, 108
	vldi	$vr3, -1168
	fsub.s	$fa3, $fa3, $fa1
	fld.s	$fa4, $fp, 88
	fmul.s	$fa2, $fa1, $fa2
	fld.s	$fa5, $fp, 112
	fld.s	$fa6, $fp, 92
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fst.s	$fa2, $fp, 88
	fmul.s	$fa2, $fa1, $fa5
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fld.s	$fa4, $fp, 116
	fld.s	$fa5, $fp, 96
	fst.s	$fa2, $fp, 92
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa1, $fa1, $fa4
	fmadd.s	$fa1, $fa3, $fa5, $fa1
	fst.s	$fa1, $fp, 96
	b	.LBB8_6
.LBB8_5:
	addi.d	$a0, $fp, 108
	vld	$vr1, $a0, 0
	addi.d	$a0, $fp, 88
	vst	$vr1, $a0, 0
.LBB8_6:
	fst.s	$fa0, $fp, 104
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end8:
	.size	_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld, .Lfunc_end8-_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16btCollisionWorld20ConvexResultCallbackD2Ev,"axG",@progbits,_ZN16btCollisionWorld20ConvexResultCallbackD2Ev,comdat
	.weak	_ZN16btCollisionWorld20ConvexResultCallbackD2Ev # -- Begin function _ZN16btCollisionWorld20ConvexResultCallbackD2Ev
	.p2align	5
	.type	_ZN16btCollisionWorld20ConvexResultCallbackD2Ev,@function
_ZN16btCollisionWorld20ConvexResultCallbackD2Ev: # @_ZN16btCollisionWorld20ConvexResultCallbackD2Ev
# %bb.0:
	ret
.Lfunc_end9:
	.size	_ZN16btCollisionWorld20ConvexResultCallbackD2Ev, .Lfunc_end9-_ZN16btCollisionWorld20ConvexResultCallbackD2Ev
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN30btKinematicCharacterController36updateTargetPositionBasedOnCollisionERK9btVector3ff
.LCPI10_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN30btKinematicCharacterController36updateTargetPositionBasedOnCollisionERK9btVector3ff
	.p2align	5
	.type	_ZN30btKinematicCharacterController36updateTargetPositionBasedOnCollisionERK9btVector3ff,@function
_ZN30btKinematicCharacterController36updateTargetPositionBasedOnCollisionERK9btVector3ff: # @_ZN30btKinematicCharacterController36updateTargetPositionBasedOnCollisionERK9btVector3ff
# %bb.0:
	fld.s	$fa0, $a0, 108
	fld.s	$fa2, $a0, 88
	fld.s	$fa3, $a0, 112
	fld.s	$fa4, $a0, 92
	fld.s	$fa7, $a0, 116
	fld.s	$ft0, $a0, 96
	fsub.s	$fa6, $fa0, $fa2
	fsub.s	$fa5, $fa3, $fa4
	fsub.s	$fa7, $fa7, $ft0
	fmul.s	$fa0, $fa5, $fa5
	pcalau12i	$a2, %pc_hi20(.LCPI10_0)
	fld.s	$fa2, $a2, %pc_lo12(.LCPI10_0)
	fmadd.s	$fa0, $fa6, $fa6, $fa0
	fmadd.s	$fa0, $fa7, $fa7, $fa0
	fsqrt.s	$fa0, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB10_3
# %bb.1:
	addi.d	$a2, $a0, 108
	addi.d	$a3, $a0, 88
	fld.s	$fa3, $a1, 0
	fld.s	$fa2, $a1, 4
	vld	$vr8, $a3, 0
	fld.s	$fa4, $a1, 8
	movgr2fr.w	$ft1, $zero
	fcmp.ceq.s	$fcc0, $fa1, $ft1
	vst	$vr8, $a2, 0
	bcnez	$fcc0, .LBB10_3
# %bb.2:
	frecip.s	$ft0, $fa0
	fmul.s	$fa6, $fa6, $ft0
	fmul.s	$fa7, $fa7, $ft0
	fmul.s	$fa5, $fa5, $ft0
	fmul.s	$ft0, $fa5, $fa2
	fmadd.s	$ft0, $fa6, $fa3, $ft0
	fmadd.s	$ft0, $fa7, $fa4, $ft0
	fadd.s	$ft0, $ft0, $ft0
	fmul.s	$ft1, $fa3, $ft0
	fsub.s	$fa6, $fa6, $ft1
	fmul.s	$ft1, $fa4, $ft0
	fsub.s	$fa7, $fa7, $ft1
	fmul.s	$ft0, $fa2, $ft0
	fsub.s	$fa5, $fa5, $ft0
	fmul.s	$ft0, $fa5, $fa5
	fmadd.s	$ft0, $fa6, $fa6, $ft0
	fmadd.s	$ft0, $fa7, $fa7, $ft0
	frsqrt.s	$ft0, $ft0
	fmul.s	$fa6, $fa6, $ft0
	fmul.s	$fa7, $fa7, $ft0
	fmul.s	$fa5, $fa5, $ft0
	fmul.s	$ft0, $fa2, $fa5
	fmadd.s	$ft0, $fa6, $fa3, $ft0
	fmadd.s	$ft0, $fa7, $fa4, $ft0
	fmul.s	$fa3, $fa3, $ft0
	fsub.s	$fa3, $fa6, $fa3
	fmul.s	$fa2, $fa2, $ft0
	fsub.s	$fa2, $fa5, $fa2
	fmul.s	$fa4, $fa4, $ft0
	fsub.s	$fa4, $fa7, $fa4
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa1, $fa0, $fa3
	fld.s	$fa3, $a0, 108
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa4
	fld.s	$fa4, $a0, 112
	fadd.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $a0, 116
	fst.s	$fa1, $a0, 108
	fadd.s	$fa1, $fa2, $fa4
	fst.s	$fa1, $a0, 112
	fadd.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $a0, 116
.LBB10_3:
	ret
.Lfunc_end10:
	.size	_ZN30btKinematicCharacterController36updateTargetPositionBasedOnCollisionERK9btVector3ff, .Lfunc_end10-_ZN30btKinematicCharacterController36updateTargetPositionBasedOnCollisionERK9btVector3ff
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3
.LCPI11_0:
	.word	0x34000000                      # float 1.1920929E-7
.LCPI11_1:
	.word	0x3c23d70a                      # float 0.00999999977
	.text
	.globl	_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3
	.p2align	5
	.type	_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3,@function
_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3: # @_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -384
	.cfi_def_cfa_offset 384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 280                  # 8-byte Folded Spill
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
	move	$fp, $a0
	fld.s	$fa0, $a0, 88
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a0, 92
	fld.s	$fa3, $a2, 4
	fld.s	$fa4, $a0, 96
	fld.s	$fa5, $a2, 8
	move	$s0, $a1
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 108
	st.d	$a1, $fp, 116
	lu12i.w	$s1, 260096
	st.w	$s1, $sp, 216
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 220
	st.w	$s1, $sp, 236
	vst	$vr0, $sp, 240
	st.d	$s1, $sp, 256
	st.w	$s1, $sp, 152
	ld.bu	$a0, $fp, 160
	vst	$vr0, $sp, 156
	st.w	$s1, $sp, 172
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 176
	st.d	$s1, $sp, 192
	beqz	$a0, .LBB11_3
# %bb.1:
	fld.s	$fa0, $fp, 72
	fld.s	$fa1, $fp, 164
	fld.s	$fa2, $fp, 76
	fld.s	$fa3, $fp, 168
	fld.s	$fa4, $fp, 80
	fld.s	$fa5, $fp, 172
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	movgr2fr.w	$fa1, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB11_3
# %bb.2:
	addi.d	$a1, $fp, 164
	vldi	$vr1, -1168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btKinematicCharacterController36updateTargetPositionBasedOnCollisionERK9btVector3ff)
	jirl	$ra, $ra, 0
.LBB11_3:
	addi.d	$s2, $fp, 88
	addi.d	$s3, $fp, 108
	addi.d	$s5, $sp, 200
	addi.w	$s7, $zero, -11
	addi.d	$s6, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZTV43btKinematicClosestNotMeConvexResultCallback+16)
	addi.d	$s8, $a0, %pc_lo12(_ZTV43btKinematicClosestNotMeConvexResultCallback+16)
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI11_0)
	pcalau12i	$s4, %pc_hi20(.LCPI11_1)
	vldi	$vr9, -1168
	b	.LBB11_6
	.p2align	4, , 16
.LBB11_4:                               #   in Loop: Header=BB11_6 Depth=1
	vld	$vr1, $s3, 0
	vst	$vr1, $s2, 0
	vld	$vr9, $sp, 32                   # 16-byte Folded Reload
.LBB11_5:                               # %.critedge76
                                        #   in Loop: Header=BB11_6 Depth=1
	fld.s	$fa1, $s4, %pc_lo12(.LCPI11_1)
	fsub.s	$ft1, $ft1, $fa0
	fcmp.clt.s	$fcc0, $fa1, $ft1
	bceqz	$fcc0, .LBB11_17
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s7, 31, 0
	addi.d	$s7, $a0, 1
	slli.d	$a0, $s7, 31
	bltz	$a0, .LBB11_17
# %bb.7:                                #   in Loop: Header=BB11_6 Depth=1
	vst	$vr9, $sp, 32                   # 16-byte Folded Spill
	vld	$vr0, $s2, 0
	vld	$vr1, $s3, 0
	addi.d	$a0, $sp, 264
	vst	$vr0, $a0, 0
	ld.d	$a0, $fp, 16
	vst	$vr1, $s5, 0
	st.w	$s1, $sp, 64
	st.d	$zero, $sp, 136
	ld.d	$a1, $a0, 192
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s6, 0
	vst	$vr0, $s6, 16
	st.d	$a0, $sp, 144
	ld.w	$a1, $a1, 8
	ld.d	$a0, $fp, 24
	st.d	$s8, $sp, 56
	st.w	$a1, $sp, 68
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 88
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 24
	ld.d	$a1, $a0, 0
	fld.s	$fa1, $fp, 52
	ld.d	$a1, $a1, 80
	fmov.s	$fs0, $fa0
	fadd.s	$fa0, $fa0, $fa1
	jirl	$ra, $a1, 0
	ld.bu	$a0, $fp, 180
	beqz	$a0, .LBB11_9
# %bb.8:                                #   in Loop: Header=BB11_6 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 24
	fld.s	$fa0, $s0, 84
	addi.d	$a2, $sp, 216
	addi.d	$a3, $sp, 152
	addi.d	$a4, $sp, 56
	pcaddu18i	$ra, %call36(_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf)
	jirl	$ra, $ra, 0
	b	.LBB11_10
	.p2align	4, , 16
.LBB11_9:                               #   in Loop: Header=BB11_6 Depth=1
	ld.d	$a1, $fp, 24
	fld.s	$fa0, $s0, 84
	addi.d	$a2, $sp, 216
	addi.d	$a3, $sp, 152
	addi.d	$a4, $sp, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf)
	jirl	$ra, $ra, 0
.LBB11_10:                              #   in Loop: Header=BB11_6 Depth=1
	ld.d	$a0, $fp, 24
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 80
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
	fld.s	$fa0, $sp, 64
	vldi	$vr1, -1168
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_4
# %bb.11:                               #   in Loop: Header=BB11_6 Depth=1
	fld.s	$fa4, $sp, 120
	fld.s	$fa1, $fp, 88
	fld.s	$fa5, $sp, 124
	fld.s	$fa2, $fp, 92
	fld.s	$fa6, $sp, 128
	fld.s	$fa3, $fp, 96
	fsub.s	$fa4, $fa4, $fa1
	fsub.s	$fa5, $fa5, $fa2
	fsub.s	$fa6, $fa6, $fa3
	fmul.s	$fa5, $fa5, $fa5
	fmadd.s	$fa4, $fa4, $fa4, $fa5
	fmadd.s	$fa6, $fa6, $fa6, $fa4
	fld.s	$fa7, $fp, 52
	fld.s	$fa4, $fp, 108
	fld.s	$fa5, $fp, 112
	fld.s	$ft0, $fp, 116
	fsqrt.s	$fa6, $fa6
	fcmp.cule.s	$fcc0, $fa6, $fa7
	bcnez	$fcc0, .LBB11_13
# %bb.12:                               #   in Loop: Header=BB11_6 Depth=1
	vldi	$vr6, -1168
	fsub.s	$fa6, $fa6, $fa0
	fmul.s	$fa7, $fa0, $fa4
	fmadd.s	$fa1, $fa6, $fa1, $fa7
	fst.s	$fa1, $fp, 88
	fmul.s	$fa7, $fa0, $fa5
	fmadd.s	$fa2, $fa6, $fa2, $fa7
	fst.s	$fa2, $fp, 92
	fmul.s	$fa7, $fa0, $ft0
	fmadd.s	$fa3, $fa6, $fa3, $fa7
	fst.s	$fa3, $fp, 96
.LBB11_13:                              #   in Loop: Header=BB11_6 Depth=1
	fsub.s	$fa7, $fa4, $fa1
	fsub.s	$fa6, $fa5, $fa2
	fsub.s	$fa4, $ft0, $fa3
	fmul.s	$fa5, $fa6, $fa6
	fmadd.s	$fa5, $fa7, $fa7, $fa5
	fmadd.s	$ft0, $fa4, $fa4, $fa5
	fsqrt.s	$fa5, $ft0
	fcmp.cule.s	$fcc0, $fa5, $fs1
	bcnez	$fcc0, .LBB11_15
# %bb.14:                               #   in Loop: Header=BB11_6 Depth=1
	vld	$vr8, $s2, 0
	fld.s	$ft1, $sp, 104
	fld.s	$ft2, $sp, 108
	fld.s	$ft3, $sp, 112
	vst	$vr8, $s3, 0
	frecip.s	$ft0, $fa5
	fmul.s	$fa7, $fa7, $ft0
	fmul.s	$fa4, $fa4, $ft0
	fmul.s	$fa6, $fa6, $ft0
	fmul.s	$ft0, $fa6, $ft2
	fmadd.s	$ft0, $fa7, $ft1, $ft0
	fmadd.s	$ft0, $fa4, $ft3, $ft0
	fadd.s	$ft0, $ft0, $ft0
	fmul.s	$ft4, $ft1, $ft0
	fsub.s	$fa7, $fa7, $ft4
	fmul.s	$ft4, $ft3, $ft0
	fsub.s	$fa4, $fa4, $ft4
	fmul.s	$ft0, $ft2, $ft0
	fsub.s	$fa6, $fa6, $ft0
	fmul.s	$ft0, $fa6, $fa6
	fmadd.s	$ft0, $fa7, $fa7, $ft0
	fmadd.s	$ft0, $fa4, $fa4, $ft0
	frsqrt.s	$ft0, $ft0
	fmul.s	$fa7, $fa7, $ft0
	fmul.s	$fa4, $fa4, $ft0
	fmul.s	$fa6, $fa6, $ft0
	fmul.s	$ft0, $ft2, $fa6
	fmadd.s	$ft0, $fa7, $ft1, $ft0
	fmadd.s	$ft0, $fa4, $ft3, $ft0
	fmul.s	$ft1, $ft1, $ft0
	fsub.s	$fa7, $fa7, $ft1
	fmul.s	$ft1, $ft2, $ft0
	fsub.s	$fa6, $fa6, $ft1
	fmul.s	$ft0, $ft3, $ft0
	fsub.s	$fa4, $fa4, $ft0
	fmul.s	$fa7, $fa5, $fa7
	fld.s	$ft0, $fp, 108
	fmul.s	$fa6, $fa5, $fa6
	fmul.s	$fa4, $fa5, $fa4
	fld.s	$fa5, $fp, 112
	fadd.s	$fa7, $ft0, $fa7
	fld.s	$ft0, $fp, 116
	fst.s	$fa7, $fp, 108
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $fp, 112
	fadd.s	$fa4, $ft0, $fa4
	fst.s	$fa4, $fp, 116
	fsub.s	$fa7, $fa7, $fa1
	fsub.s	$fa6, $fa5, $fa2
	fsub.s	$fa4, $fa4, $fa3
	fmul.s	$fa1, $fa6, $fa6
	fmadd.s	$fa1, $fa7, $fa7, $fa1
	fmadd.s	$ft0, $fa4, $fa4, $fa1
.LBB11_15:                              #   in Loop: Header=BB11_6 Depth=1
	fcmp.cule.s	$fcc0, $ft0, $fs1
	vld	$vr9, $sp, 32                   # 16-byte Folded Reload
	bcnez	$fcc0, .LBB11_17
# %bb.16:                               #   in Loop: Header=BB11_6 Depth=1
	frsqrt.s	$fa1, $ft0
	fmul.s	$fa2, $fa7, $fa1
	fmul.s	$fa3, $fa6, $fa1
	fld.s	$fa5, $fp, 76
	fld.s	$fa6, $fp, 72
	fld.s	$fa7, $fp, 80
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa3, $fa3, $fa5
	fmadd.s	$fa2, $fa2, $fa6, $fa3
	fmadd.s	$fa1, $fa1, $fa7, $fa2
	movgr2fr.w	$fa2, $zero
	fcmp.cult.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB11_5
.LBB11_17:                              # %.critedge
	fld.d	$fs1, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.Lfunc_end11:
	.size	_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3, .Lfunc_end11-_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf # -- Begin function _ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf
	.p2align	5
	.type	_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf,@function
_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf: # @_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.w	$a0, $a0, 188
	pcalau12i	$a2, %pc_hi20(_ZL15upAxisDirection)
	addi.d	$a2, $a2, %pc_lo12(_ZL15upAxisDirection)
	alsl.d	$a3, $a0, $a2, 4
	slli.d	$a0, $a0, 4
	fldx.s	$fa0, $a2, $a0
	fld.s	$fa1, $fp, 104
	fld.s	$fa2, $a3, 4
	fld.s	$fa3, $a3, 8
	fld.s	$fa4, $fp, 48
	fmul.s	$fa5, $fa0, $fa1
	fmul.s	$fa6, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa0, $fa0, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fadd.s	$fa0, $fa5, $fa0
	fld.s	$fa4, $fp, 108
	fadd.s	$fa2, $fa6, $fa2
	fadd.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $fp, 112
	fsub.s	$fa0, $fa4, $fa0
	fld.s	$fa4, $fp, 116
	fst.s	$fa0, $fp, 108
	fsub.s	$fa0, $fa3, $fa2
	fst.s	$fa0, $fp, 112
	fsub.s	$fa0, $fa4, $fa1
	fst.s	$fa0, $fp, 116
	lu12i.w	$a2, 260096
	st.w	$a2, $sp, 176
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 180
	st.w	$a2, $sp, 196
	vst	$vr0, $sp, 200
	st.d	$a2, $sp, 216
	st.w	$a2, $sp, 112
	vst	$vr0, $sp, 116
	st.w	$a2, $sp, 132
	vld	$vr1, $fp, 88
	vld	$vr2, $fp, 108
	vst	$vr0, $sp, 136
	st.d	$a2, $sp, 152
	vst	$vr1, $sp, 224
	vst	$vr2, $sp, 160
	ld.d	$a0, $fp, 16
	st.w	$a2, $sp, 24
	st.d	$zero, $sp, 96
	vst	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	pcalau12i	$a2, %pc_hi20(_ZTV43btKinematicClosestNotMeConvexResultCallback+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV43btKinematicClosestNotMeConvexResultCallback+16)
	ld.d	$a3, $a0, 192
	st.d	$a0, $sp, 104
	ld.w	$a3, $a3, 8
	ld.bu	$a4, $fp, 180
	ld.d	$a5, $fp, 24
	fld.s	$fa0, $a1, 84
	st.d	$a2, $sp, 16
	st.w	$a3, $sp, 28
	addi.d	$a2, $sp, 176
	addi.d	$a3, $sp, 112
	beqz	$a4, .LBB12_3
# %bb.1:
	addi.d	$a4, $sp, 16
	move	$a1, $a5
	pcaddu18i	$ra, %call36(_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 24
	vldi	$vr1, -1168
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB12_4
.LBB12_2:
	addi.d	$a0, $fp, 108
	vld	$vr0, $a0, 0
	addi.d	$a0, $fp, 88
	vst	$vr0, $a0, 0
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB12_3:
	addi.d	$a4, $sp, 16
	move	$a0, $a1
	move	$a1, $a5
	pcaddu18i	$ra, %call36(_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 24
	vldi	$vr1, -1168
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_2
.LBB12_4:
	fld.s	$fa1, $fp, 108
	vldi	$vr2, -1168
	fld.s	$fa3, $fp, 88
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $fp, 112
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $fp, 88
	fld.s	$fa1, $fp, 92
	fmul.s	$fa3, $fa0, $fa4
	fld.s	$fa4, $fp, 116
	fld.s	$fa5, $fp, 96
	fmadd.s	$fa1, $fa2, $fa1, $fa3
	fst.s	$fa1, $fp, 92
	fmul.s	$fa0, $fa0, $fa4
	fmadd.s	$fa0, $fa2, $fa5, $fa0
	fst.s	$fa0, $fp, 96
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end12:
	.size	_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf, .Lfunc_end12-_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3
.LCPI13_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3
	.p2align	5
	.type	_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3,@function
_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3: # @_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3
# %bb.0:
	ori	$a2, $zero, 1
	st.b	$a2, $a0, 181
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 56
	fld.s	$fa0, $a0, 60
	fld.s	$fa1, $a0, 56
	fld.s	$fa2, $a0, 64
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa3, $fa0, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI13_0)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI13_0)
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fsqrt.s	$fa3, $fa3
	fcmp.clt.s	$fcc0, $fa3, $fa4
	movgr2fr.w	$fa3, $zero
	fsel	$fa1, $fa1, $fa3, $fcc0
	fsel	$fa0, $fa0, $fa3, $fcc0
	fsel	$fa2, $fa2, $fa3, $fcc0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa0
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 72
	st.d	$a2, $a0, 80
	ret
.Lfunc_end13:
	.size	_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3, .Lfunc_end13-_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f
.LCPI14_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f
	.p2align	5
	.type	_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f,@function
_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f: # @_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f
# %bb.0:
	st.b	$zero, $a0, 181
	vld	$vr1, $a1, 0
	vst	$vr1, $a0, 56
	fld.s	$fa1, $a0, 60
	fld.s	$fa2, $a0, 56
	fld.s	$fa3, $a0, 64
	fmul.s	$fa4, $fa1, $fa1
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa4, $fa1, $fa1
	pcalau12i	$a1, %pc_hi20(.LCPI14_0)
	fld.s	$fa5, $a1, %pc_lo12(.LCPI14_0)
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	fsqrt.s	$fa4, $fa4
	fcmp.clt.s	$fcc0, $fa4, $fa5
	movgr2fr.w	$fa4, $zero
	fsel	$fa2, $fa2, $fa4, $fcc0
	fsel	$fa1, $fa1, $fa4, $fcc0
	fsel	$fa3, $fa3, $fa4, $fcc0
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 72
	st.d	$a2, $a0, 80
	fst.s	$fa0, $a0, 184
	ret
.Lfunc_end14:
	.size	_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f, .Lfunc_end14-_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController5resetEv # -- Begin function _ZN30btKinematicCharacterController5resetEv
	.p2align	5
	.type	_ZN30btKinematicCharacterController5resetEv,@function
_ZN30btKinematicCharacterController5resetEv: # @_ZN30btKinematicCharacterController5resetEv
# %bb.0:
	ret
.Lfunc_end15:
	.size	_ZN30btKinematicCharacterController5resetEv, .Lfunc_end15-_ZN30btKinematicCharacterController5resetEv
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController4warpERK9btVector3 # -- Begin function _ZN30btKinematicCharacterController4warpERK9btVector3
	.p2align	5
	.type	_ZN30btKinematicCharacterController4warpERK9btVector3,@function
_ZN30btKinematicCharacterController4warpERK9btVector3: # @_ZN30btKinematicCharacterController4warpERK9btVector3
# %bb.0:
	addi.d	$sp, $sp, -16
	ld.d	$a0, $a0, 16
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 8
	vrepli.b	$vr1, 0
	vst	$vr1, $a0, 12
	st.w	$a1, $a0, 28
	vst	$vr1, $a0, 32
	st.d	$a1, $a0, 48
	vst	$vr0, $a0, 56
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end16:
	.size	_ZN30btKinematicCharacterController4warpERK9btVector3, .Lfunc_end16-_ZN30btKinematicCharacterController4warpERK9btVector3
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController7preStepEP16btCollisionWorld # -- Begin function _ZN30btKinematicCharacterController7preStepEP16btCollisionWorld
	.p2align	5
	.type	_ZN30btKinematicCharacterController7preStepEP16btCollisionWorld,@function
_ZN30btKinematicCharacterController7preStepEP16btCollisionWorld: # @_ZN30btKinematicCharacterController7preStepEP16btCollisionWorld
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
	move	$s0, $a1
	move	$fp, $a0
	st.b	$zero, $a0, 160
	pcaddu18i	$ra, %call36(_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_6
# %bb.1:
	ori	$s1, $zero, 1
	st.b	$s1, $fp, 160
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_6
# %bb.2:
	st.b	$s1, $fp, 160
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_6
# %bb.3:
	ori	$s1, $zero, 1
	st.b	$s1, $fp, 160
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_6
# %bb.4:
	st.b	$s1, $fp, 160
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_6
# %bb.5:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 160
.LBB17_6:
	ld.d	$a0, $fp, 16
	vld	$vr0, $a0, 56
	vst	$vr0, $fp, 88
	vld	$vr0, $a0, 56
	vst	$vr0, $fp, 108
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end17:
	.size	_ZN30btKinematicCharacterController7preStepEP16btCollisionWorld, .Lfunc_end17-_ZN30btKinematicCharacterController7preStepEP16btCollisionWorld
	.cfi_endproc
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf # -- Begin function _ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf
	.p2align	5
	.type	_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf,@function
_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf: # @_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf
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
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	move	$fp, $a0
	ld.bu	$a0, $a0, 181
	fmov.s	$fs0, $fa0
	move	$s0, $a1
	bnez	$a0, .LBB18_2
# %bb.1:
	fld.s	$fa0, $fp, 184
	movgr2fr.w	$fa1, $zero
	fcmp.cle.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_6
.LBB18_2:
	ld.d	$a0, $fp, 16
	vld	$vr0, $a0, 8
	vld	$vr1, $a0, 24
	vst	$vr0, $sp, 24
	vld	$vr0, $a0, 40
	addi.d	$s1, $sp, 40
	vst	$vr1, $sp, 40
	addi.d	$s2, $sp, 56
	vst	$vr0, $sp, 56
	addi.d	$s3, $sp, 72
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 181
	beqz	$a0, .LBB18_4
# %bb.3:
	addi.d	$a2, $fp, 56
	b	.LBB18_5
.LBB18_4:
	fld.s	$fa0, $fp, 184
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fa1, $fa0, $fs0, $fcc0
	fsub.s	$fa0, $fa0, $fs0
	fld.s	$fa2, $fp, 56
	fld.s	$fa3, $fp, 60
	fld.s	$fa4, $fp, 64
	fst.s	$fa0, $fp, 184
	fmul.s	$fa0, $fa1, $fa2
	fmul.s	$fa2, $fa1, $fa3
	fmul.s	$fa1, $fa1, $fa4
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	addi.d	$a2, $sp, 8
.LBB18_5:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf)
	jirl	$ra, $ra, 0
	vld	$vr0, $fp, 88
	ld.d	$a0, $fp, 16
	vld	$vr1, $sp, 24
	vld	$vr2, $s1, 0
	vld	$vr3, $s2, 0
	vst	$vr0, $s3, 0
	vst	$vr1, $a0, 8
	vst	$vr2, $a0, 24
	vst	$vr3, $a0, 40
	vst	$vr0, $a0, 56
.LBB18_6:
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end18:
	.size	_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf, .Lfunc_end18-_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf
	.cfi_endproc
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController12setFallSpeedEf # -- Begin function _ZN30btKinematicCharacterController12setFallSpeedEf
	.p2align	5
	.type	_ZN30btKinematicCharacterController12setFallSpeedEf,@function
_ZN30btKinematicCharacterController12setFallSpeedEf: # @_ZN30btKinematicCharacterController12setFallSpeedEf
# %bb.0:
	fst.s	$fa0, $a0, 32
	ret
.Lfunc_end19:
	.size	_ZN30btKinematicCharacterController12setFallSpeedEf, .Lfunc_end19-_ZN30btKinematicCharacterController12setFallSpeedEf
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController12setJumpSpeedEf # -- Begin function _ZN30btKinematicCharacterController12setJumpSpeedEf
	.p2align	5
	.type	_ZN30btKinematicCharacterController12setJumpSpeedEf,@function
_ZN30btKinematicCharacterController12setJumpSpeedEf: # @_ZN30btKinematicCharacterController12setJumpSpeedEf
# %bb.0:
	fst.s	$fa0, $a0, 36
	ret
.Lfunc_end20:
	.size	_ZN30btKinematicCharacterController12setJumpSpeedEf, .Lfunc_end20-_ZN30btKinematicCharacterController12setJumpSpeedEf
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController16setMaxJumpHeightEf # -- Begin function _ZN30btKinematicCharacterController16setMaxJumpHeightEf
	.p2align	5
	.type	_ZN30btKinematicCharacterController16setMaxJumpHeightEf,@function
_ZN30btKinematicCharacterController16setMaxJumpHeightEf: # @_ZN30btKinematicCharacterController16setMaxJumpHeightEf
# %bb.0:
	fst.s	$fa0, $a0, 40
	ret
.Lfunc_end21:
	.size	_ZN30btKinematicCharacterController16setMaxJumpHeightEf, .Lfunc_end21-_ZN30btKinematicCharacterController16setMaxJumpHeightEf
                                        # -- End function
	.globl	_ZNK30btKinematicCharacterController7canJumpEv # -- Begin function _ZNK30btKinematicCharacterController7canJumpEv
	.p2align	5
	.type	_ZNK30btKinematicCharacterController7canJumpEv,@function
_ZNK30btKinematicCharacterController7canJumpEv: # @_ZNK30btKinematicCharacterController7canJumpEv
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
	jr	$a1
.Lfunc_end22:
	.size	_ZNK30btKinematicCharacterController7canJumpEv, .Lfunc_end22-_ZNK30btKinematicCharacterController7canJumpEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController4jumpEv # -- Begin function _ZN30btKinematicCharacterController4jumpEv
	.p2align	5
	.type	_ZN30btKinematicCharacterController4jumpEv,@function
_ZN30btKinematicCharacterController4jumpEv: # @_ZN30btKinematicCharacterController4jumpEv
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 80
	jr	$a1
.Lfunc_end23:
	.size	_ZN30btKinematicCharacterController4jumpEv, .Lfunc_end23-_ZN30btKinematicCharacterController4jumpEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK30btKinematicCharacterController8onGroundEv # -- Begin function _ZNK30btKinematicCharacterController8onGroundEv
	.p2align	5
	.type	_ZNK30btKinematicCharacterController8onGroundEv,@function
_ZNK30btKinematicCharacterController8onGroundEv: # @_ZNK30btKinematicCharacterController8onGroundEv
# %bb.0:
	ori	$a0, $zero, 1
	ret
.Lfunc_end24:
	.size	_ZNK30btKinematicCharacterController8onGroundEv, .Lfunc_end24-_ZNK30btKinematicCharacterController8onGroundEv
                                        # -- End function
	.globl	_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw # -- Begin function _ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw
	.p2align	5
	.type	_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw,@function
_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw: # @_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw
# %bb.0:
	ret
.Lfunc_end25:
	.size	_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw, .Lfunc_end25-_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw
                                        # -- End function
	.section	.text._ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf,"axG",@progbits,_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf,comdat
	.weak	_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf # -- Begin function _ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf
	.p2align	5
	.type	_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf,@function
_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf: # @_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 64
	fmov.s	$fs0, $fa0
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 72
	move	$a0, $fp
	move	$a1, $s0
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a2
.Lfunc_end26:
	.size	_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf, .Lfunc_end26-_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev,"axG",@progbits,_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev,comdat
	.weak	_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev # -- Begin function _ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev
	.p2align	5
	.type	_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev,@function
_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev: # @_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end27:
	.size	_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev, .Lfunc_end27-_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy,"axG",@progbits,_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy,comdat
	.weak	_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy # -- Begin function _ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy
	.p2align	5
	.type	_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy,@function
_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy: # @_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy
# %bb.0:
	ld.hu	$a2, $a1, 8
	ld.hu	$a3, $a0, 14
	and	$a2, $a3, $a2
	beqz	$a2, .LBB28_2
# %bb.1:
	ld.hu	$a0, $a0, 12
	ld.hu	$a1, $a1, 10
	and	$a0, $a1, $a0
	sltu	$a0, $zero, $a0
	ret
.LBB28_2:
	move	$a0, $zero
	ret
.Lfunc_end28:
	.size	_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy, .Lfunc_end28-_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy
                                        # -- End function
	.section	.text._ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb,"axG",@progbits,_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb,comdat
	.weak	_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb # -- Begin function _ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb
	.p2align	5
	.type	_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb,@function
_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb: # @_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb
	.cfi_startproc
# %bb.0:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a0, 88
	beq	$a3, $a4, .LBB29_3
# %bb.1:
	fld.s	$fa0, $a1, 48
	fst.s	$fa0, $a0, 8
	st.d	$a3, $a0, 80
	beqz	$a2, .LBB29_4
# %bb.2:
	vld	$vr0, $a1, 16
	vst	$vr0, $a0, 48
	vld	$vr0, $a1, 32
	vst	$vr0, $a0, 64
	fld.s	$fa0, $a1, 48
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.LBB29_3:
	vldi	$vr0, -1168
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.LBB29_4:
	fld.s	$fa0, $a3, 12
	fld.s	$fa1, $a1, 20
	fld.s	$fa2, $a3, 8
	fld.s	$fa3, $a1, 16
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $a3, 16
	fld.s	$fa5, $a1, 24
	fld.s	$fa6, $a3, 28
	fld.s	$fa7, $a3, 24
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmul.s	$fa2, $fa1, $fa6
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fld.s	$fa4, $a3, 32
	fld.s	$fa6, $a3, 44
	fld.s	$fa7, $a3, 40
	fld.s	$ft0, $a3, 48
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fa1, $ft0, $fa5, $fa1
	movfr2gr.s	$a2, $fa0
	movfr2gr.s	$a3, $fa2
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $fa1
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a2, $a0, 48
	st.d	$a3, $a0, 56
	vld	$vr0, $a1, 32
	vst	$vr0, $a0, 64
	fld.s	$fa0, $a1, 48
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end29:
	.size	_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb, .Lfunc_end29-_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb
	.cfi_endproc
                                        # -- End function
	.type	_ZL15upAxisDirection,@object    # @_ZL15upAxisDirection
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
_ZL15upAxisDirection:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.size	_ZL15upAxisDirection, 48

	.type	_ZTV30btKinematicCharacterController,@object # @_ZTV30btKinematicCharacterController
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV30btKinematicCharacterController
	.p2align	3, 0x0
_ZTV30btKinematicCharacterController:
	.dword	0
	.dword	_ZTI30btKinematicCharacterController
	.dword	_ZN30btKinematicCharacterControllerD2Ev
	.dword	_ZN30btKinematicCharacterControllerD0Ev
	.dword	_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf
	.dword	_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw
	.dword	_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3
	.dword	_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f
	.dword	_ZN30btKinematicCharacterController5resetEv
	.dword	_ZN30btKinematicCharacterController4warpERK9btVector3
	.dword	_ZN30btKinematicCharacterController7preStepEP16btCollisionWorld
	.dword	_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf
	.dword	_ZNK30btKinematicCharacterController7canJumpEv
	.dword	_ZN30btKinematicCharacterController4jumpEv
	.dword	_ZNK30btKinematicCharacterController8onGroundEv
	.size	_ZTV30btKinematicCharacterController, 120

	.type	_ZTI30btKinematicCharacterController,@object # @_ZTI30btKinematicCharacterController
	.globl	_ZTI30btKinematicCharacterController
	.p2align	3, 0x0
_ZTI30btKinematicCharacterController:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS30btKinematicCharacterController
	.dword	_ZTI30btCharacterControllerInterface
	.size	_ZTI30btKinematicCharacterController, 24

	.type	_ZTS30btKinematicCharacterController,@object # @_ZTS30btKinematicCharacterController
	.section	.rodata,"a",@progbits
	.globl	_ZTS30btKinematicCharacterController
_ZTS30btKinematicCharacterController:
	.asciz	"30btKinematicCharacterController"
	.size	_ZTS30btKinematicCharacterController, 33

	.type	_ZTI30btCharacterControllerInterface,@object # @_ZTI30btCharacterControllerInterface
	.section	.data.rel.ro._ZTI30btCharacterControllerInterface,"awG",@progbits,_ZTI30btCharacterControllerInterface,comdat
	.weak	_ZTI30btCharacterControllerInterface
	.p2align	3, 0x0
_ZTI30btCharacterControllerInterface:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS30btCharacterControllerInterface
	.dword	_ZTI17btActionInterface
	.size	_ZTI30btCharacterControllerInterface, 24

	.type	_ZTS30btCharacterControllerInterface,@object # @_ZTS30btCharacterControllerInterface
	.section	.rodata._ZTS30btCharacterControllerInterface,"aG",@progbits,_ZTS30btCharacterControllerInterface,comdat
	.weak	_ZTS30btCharacterControllerInterface
_ZTS30btCharacterControllerInterface:
	.asciz	"30btCharacterControllerInterface"
	.size	_ZTS30btCharacterControllerInterface, 33

	.type	_ZTI17btActionInterface,@object # @_ZTI17btActionInterface
	.section	.data.rel.ro._ZTI17btActionInterface,"awG",@progbits,_ZTI17btActionInterface,comdat
	.weak	_ZTI17btActionInterface
	.p2align	3, 0x0
_ZTI17btActionInterface:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS17btActionInterface
	.size	_ZTI17btActionInterface, 16

	.type	_ZTS17btActionInterface,@object # @_ZTS17btActionInterface
	.section	.rodata._ZTS17btActionInterface,"aG",@progbits,_ZTS17btActionInterface,comdat
	.weak	_ZTS17btActionInterface
_ZTS17btActionInterface:
	.asciz	"17btActionInterface"
	.size	_ZTS17btActionInterface, 20

	.type	_ZTV43btKinematicClosestNotMeConvexResultCallback,@object # @_ZTV43btKinematicClosestNotMeConvexResultCallback
	.section	.data.rel.ro._ZTV43btKinematicClosestNotMeConvexResultCallback,"awG",@progbits,_ZTV43btKinematicClosestNotMeConvexResultCallback,comdat
	.weak	_ZTV43btKinematicClosestNotMeConvexResultCallback
	.p2align	3, 0x0
_ZTV43btKinematicClosestNotMeConvexResultCallback:
	.dword	0
	.dword	_ZTI43btKinematicClosestNotMeConvexResultCallback
	.dword	_ZN16btCollisionWorld20ConvexResultCallbackD2Ev
	.dword	_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev
	.dword	_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy
	.dword	_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb
	.size	_ZTV43btKinematicClosestNotMeConvexResultCallback, 48

	.type	_ZTI43btKinematicClosestNotMeConvexResultCallback,@object # @_ZTI43btKinematicClosestNotMeConvexResultCallback
	.section	.data.rel.ro._ZTI43btKinematicClosestNotMeConvexResultCallback,"awG",@progbits,_ZTI43btKinematicClosestNotMeConvexResultCallback,comdat
	.weak	_ZTI43btKinematicClosestNotMeConvexResultCallback
	.p2align	3, 0x0
_ZTI43btKinematicClosestNotMeConvexResultCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS43btKinematicClosestNotMeConvexResultCallback
	.dword	_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE
	.size	_ZTI43btKinematicClosestNotMeConvexResultCallback, 24

	.type	_ZTS43btKinematicClosestNotMeConvexResultCallback,@object # @_ZTS43btKinematicClosestNotMeConvexResultCallback
	.section	.rodata._ZTS43btKinematicClosestNotMeConvexResultCallback,"aG",@progbits,_ZTS43btKinematicClosestNotMeConvexResultCallback,comdat
	.weak	_ZTS43btKinematicClosestNotMeConvexResultCallback
_ZTS43btKinematicClosestNotMeConvexResultCallback:
	.asciz	"43btKinematicClosestNotMeConvexResultCallback"
	.size	_ZTS43btKinematicClosestNotMeConvexResultCallback, 46

	.type	_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE,@object # @_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE
	.section	.data.rel.ro._ZTIN16btCollisionWorld27ClosestConvexResultCallbackE,"awG",@progbits,_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE,comdat
	.weak	_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE
	.p2align	3, 0x0
_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE
	.dword	_ZTIN16btCollisionWorld20ConvexResultCallbackE
	.size	_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE, 24

	.type	_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE,@object # @_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE
	.section	.rodata._ZTSN16btCollisionWorld27ClosestConvexResultCallbackE,"aG",@progbits,_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE,comdat
	.weak	_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE
_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE:
	.asciz	"N16btCollisionWorld27ClosestConvexResultCallbackE"
	.size	_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE, 50

	.type	_ZTIN16btCollisionWorld20ConvexResultCallbackE,@object # @_ZTIN16btCollisionWorld20ConvexResultCallbackE
	.section	.data.rel.ro._ZTIN16btCollisionWorld20ConvexResultCallbackE,"awG",@progbits,_ZTIN16btCollisionWorld20ConvexResultCallbackE,comdat
	.weak	_ZTIN16btCollisionWorld20ConvexResultCallbackE
	.p2align	3, 0x0
_ZTIN16btCollisionWorld20ConvexResultCallbackE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN16btCollisionWorld20ConvexResultCallbackE
	.size	_ZTIN16btCollisionWorld20ConvexResultCallbackE, 16

	.type	_ZTSN16btCollisionWorld20ConvexResultCallbackE,@object # @_ZTSN16btCollisionWorld20ConvexResultCallbackE
	.section	.rodata._ZTSN16btCollisionWorld20ConvexResultCallbackE,"aG",@progbits,_ZTSN16btCollisionWorld20ConvexResultCallbackE,comdat
	.weak	_ZTSN16btCollisionWorld20ConvexResultCallbackE
_ZTSN16btCollisionWorld20ConvexResultCallbackE:
	.asciz	"N16btCollisionWorld20ConvexResultCallbackE"
	.size	_ZTSN16btCollisionWorld20ConvexResultCallbackE, 43

	.globl	_ZN30btKinematicCharacterControllerC1EP24btPairCachingGhostObjectP13btConvexShapefi
	.type	_ZN30btKinematicCharacterControllerC1EP24btPairCachingGhostObjectP13btConvexShapefi,@function
_ZN30btKinematicCharacterControllerC1EP24btPairCachingGhostObjectP13btConvexShapefi = _ZN30btKinematicCharacterControllerC2EP24btPairCachingGhostObjectP13btConvexShapefi
	.globl	_ZN30btKinematicCharacterControllerD1Ev
	.type	_ZN30btKinematicCharacterControllerD1Ev,@function
_ZN30btKinematicCharacterControllerD1Ev = _ZN30btKinematicCharacterControllerD2Ev
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
	.addrsig_sym _ZTI30btKinematicCharacterController
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS30btKinematicCharacterController
	.addrsig_sym _ZTI30btCharacterControllerInterface
	.addrsig_sym _ZTS30btCharacterControllerInterface
	.addrsig_sym _ZTI17btActionInterface
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS17btActionInterface
	.addrsig_sym _ZTI43btKinematicClosestNotMeConvexResultCallback
	.addrsig_sym _ZTS43btKinematicClosestNotMeConvexResultCallback
	.addrsig_sym _ZTIN16btCollisionWorld27ClosestConvexResultCallbackE
	.addrsig_sym _ZTSN16btCollisionWorld27ClosestConvexResultCallbackE
	.addrsig_sym _ZTIN16btCollisionWorld20ConvexResultCallbackE
	.addrsig_sym _ZTSN16btCollisionWorld20ConvexResultCallbackE
