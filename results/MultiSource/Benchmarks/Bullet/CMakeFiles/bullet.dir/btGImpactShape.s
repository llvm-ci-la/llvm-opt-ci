	.file	"btGImpactShape.cpp"
	.text
	.globl	_ZNK22btGImpactCompoundShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK22btGImpactCompoundShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK22btGImpactCompoundShape21calculateLocalInertiaEfR9btVector3: # @_ZNK22btGImpactCompoundShape21calculateLocalInertiaEfR9btVector3
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 192
	move	$s0, $a1
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a2, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s0, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 144
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB0_10
# %bb.1:                                # %.lr.ph
	move	$s1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fs0, $fs0, $fa0
	slli.d	$a0, $a0, 3
	addi.d	$s3, $a0, -8
	slli.d	$a0, $s1, 6
	addi.d	$s4, $a0, -32
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$s2, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	pcalau12i	$a0, %pc_hi20(_ZZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$s5, $a0, %pc_lo12(_ZZN11btTransform11getIdentityEvE17identityTransform)
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $fp, 208
	add.d	$a1, $a0, $s4
	fld.s	$fa0, $a1, -32
	fld.s	$fa1, $sp, 40
	fmul.s	$fa2, $fa0, $fa1
	fld.s	$fa3, $a1, -28
	fld.s	$fa4, $sp, 44
	fld.s	$fa5, $a1, -24
	fld.s	$fa6, $sp, 48
	fld.s	$fa7, $a1, -16
	fld.s	$ft0, $a1, -12
	fmul.s	$ft1, $fa3, $fa4
	fmul.s	$ft2, $fa5, $fa6
	fmul.s	$ft3, $fa1, $fa7
	fmul.s	$ft4, $fa4, $ft0
	fld.s	$ft5, $a1, -8
	fldx.s	$ft6, $a0, $s4
	fld.s	$ft7, $a1, 4
	fld.s	$ft8, $a1, 8
	fmul.s	$ft9, $fa6, $ft5
	fmul.s	$fa1, $fa1, $ft6
	fmul.s	$fa4, $fa4, $ft7
	fmul.s	$fa6, $fa6, $ft8
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa0, $fa0, $fa2, $fa3
	fmadd.s	$fa0, $fa5, $ft2, $fa0
	fmul.s	$fa2, $ft0, $ft4
	fmadd.s	$fa2, $fa7, $ft3, $fa2
	fmadd.s	$fa2, $ft5, $ft9, $fa2
	fmul.s	$fa3, $ft7, $fa4
	fmadd.s	$fa1, $ft6, $fa1, $fa3
	fld.s	$fa3, $a1, 16
	fld.s	$fa4, $a1, 20
	fld.s	$fa5, $a1, 24
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	fmadd.s	$fa6, $ft8, $fa6, $fa1
	fmul.s	$fa3, $fa3, $fa3
	fmul.s	$fa4, $fa4, $fa4
	fmul.s	$fa1, $fa5, $fa5
	fadd.s	$fa5, $fa4, $fa1
	fmul.s	$fa0, $fa0, $fa5
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fadd.s	$fa2, $fa3, $fa4
	fmul.s	$fa2, $fa6, $fa2
	fld.s	$fa3, $s0, 0
	fld.s	$fa4, $s0, 4
	fld.s	$fa5, $s0, 8
	fadd.s	$fa0, $fa3, $fa0
	fadd.s	$fa1, $fa4, $fa1
	addi.d	$s1, $s1, -1
	fadd.s	$fa2, $fa2, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $s0, 0
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $s0, 8
	addi.d	$s3, $s3, -8
	addi.d	$s4, $s4, -64
	beqz	$s1, .LBB0_10
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 240
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 64
	addi.d	$a1, $sp, 40
	fmov.s	$fa0, $fs0
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 152
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.b	$a0, $s2, 0
	dbar	20
	beqz	$a0, .LBB0_7
.LBB0_6:                                # %_ZN11btTransform11getIdentityEv.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	fld.s	$fa0, $s5, 0
	fld.s	$fa1, $sp, 40
	fmul.s	$fa2, $fa0, $fa1
	fld.s	$fa3, $s5, 4
	fld.s	$fa4, $sp, 44
	fld.s	$fa5, $s5, 8
	fld.s	$fa6, $sp, 48
	fld.s	$fa7, $s5, 16
	fld.s	$ft0, $s5, 20
	fmul.s	$ft1, $fa3, $fa4
	fmul.s	$ft2, $fa5, $fa6
	fmul.s	$ft3, $fa1, $fa7
	fmul.s	$ft4, $fa4, $ft0
	fld.s	$ft5, $s5, 24
	fld.s	$ft6, $s5, 32
	fld.s	$ft7, $s5, 36
	fld.s	$ft8, $s5, 40
	fmul.s	$ft9, $fa6, $ft5
	fmul.s	$fa1, $fa1, $ft6
	fmul.s	$fa4, $fa4, $ft7
	fmul.s	$fa6, $fa6, $ft8
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa0, $fa0, $fa2, $fa3
	fmadd.s	$fa0, $fa5, $ft2, $fa0
	fmul.s	$fa2, $ft0, $ft4
	fmadd.s	$fa2, $fa7, $ft3, $fa2
	fmadd.s	$fa2, $ft5, $ft9, $fa2
	fmul.s	$fa3, $ft7, $fa4
	fmadd.s	$fa1, $ft6, $fa1, $fa3
	fld.s	$fa3, $s5, 48
	fld.s	$fa4, $s5, 52
	fld.s	$fa5, $s5, 56
	b	.LBB0_3
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btMatrix3x311getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s5, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB0_6
.LBB0_10:                               # %._crit_edge
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 200
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB0_11:
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	pcaddu18i	$ra, %call36(__cxa_guard_abort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZNK22btGImpactCompoundShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end0-_ZNK22btGImpactCompoundShape21calculateLocalInertiaEfR9btVector3
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
	.uleb128 .Lfunc_end0-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZNK22btGImpactMeshShapePart21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK22btGImpactMeshShapePart21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart21calculateLocalInertiaEfR9btVector3,@function
_ZNK22btGImpactMeshShapePart21calculateLocalInertiaEfR9btVector3: # @_ZNK22btGImpactMeshShapePart21calculateLocalInertiaEfR9btVector3
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
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 192
	move	$fp, $a1
	fmov.s	$fs0, $fa0
	move	$a0, $s0
	jirl	$ra, $a2, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	ld.w	$a1, $s0, 232
	beqz	$a1, .LBB1_6
# %bb.1:                                # %.lr.ph
	movgr2fr.w	$fa0, $a1
	ld.w	$a4, $s0, 236
	ld.d	$a2, $s0, 224
	ld.w	$a3, $s0, 240
	ffint.s.w	$fa0, $fa0
	ori	$a5, $zero, 1
	fdiv.s	$fa0, $fs0, $fa0
	bne	$a4, $a5, .LBB1_4
# %bb.2:                                # %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit.us.preheader
	addi.d	$a4, $a1, -1
	mul.d	$a4, $a4, $a3
	add.d	$a2, $a4, $a2
	addi.d	$a2, $a2, 16
	movgr2fr.w	$fa1, $zero
	sub.d	$a3, $zero, $a3
	fmov.s	$fa2, $fa1
	fmov.s	$fa3, $fa1
	.p2align	4, , 16
.LBB1_3:                                # %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit.us
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a1, -1
	fld.s	$fa4, $s0, 200
	fld.d	$fa5, $a2, -16
	fld.s	$fa6, $s0, 204
	fld.d	$fa7, $a2, -8
	fcvt.d.s	$fa4, $fa4
	fmul.d	$fa4, $fa5, $fa4
	fcvt.d.s	$fa5, $fa6
	fmul.d	$fa5, $fa7, $fa5
	fld.s	$fa6, $s0, 208
	fld.d	$fa7, $a2, 0
	fcvt.s.d	$fa4, $fa4
	fcvt.s.d	$fa5, $fa5
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa6, $fa7, $fa6
	fcvt.s.d	$fa6, $fa6
	fmul.s	$fa4, $fa4, $fa4
	fmul.s	$fa5, $fa5, $fa5
	fmul.s	$fa6, $fa6, $fa6
	fadd.s	$fa7, $fa5, $fa6
	fmul.s	$fa7, $fa0, $fa7
	fadd.s	$fa6, $fa4, $fa6
	fmul.s	$fa6, $fa0, $fa6
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa0, $fa4
	fadd.s	$fa1, $fa1, $fa7
	fst.s	$fa1, $fp, 0
	fadd.s	$fa2, $fa6, $fa2
	fst.s	$fa2, $fp, 4
	fadd.s	$fa3, $fa4, $fa3
	fst.s	$fa3, $fp, 8
	add.d	$a2, $a2, $a3
	bnez	$a1, .LBB1_3
	b	.LBB1_6
.LBB1_4:                                # %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit.preheader
	addi.d	$a4, $a1, -1
	mul.d	$a4, $a4, $a3
	add.d	$a2, $a4, $a2
	addi.d	$a2, $a2, 8
	movgr2fr.w	$fa1, $zero
	sub.d	$a3, $zero, $a3
	fmov.s	$fa2, $fa1
	fmov.s	$fa3, $fa1
	.p2align	4, , 16
.LBB1_5:                                # %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $s0, 200
	fld.s	$fa5, $a2, -8
	fld.s	$fa6, $a2, -4
	fld.s	$fa7, $s0, 204
	fld.s	$ft0, $a2, 0
	fld.s	$ft1, $s0, 208
	fmul.s	$fa4, $fa4, $fa5
	fmul.s	$fa5, $fa6, $fa7
	addi.d	$a1, $a1, -1
	fmul.s	$fa6, $ft0, $ft1
	fmul.s	$fa4, $fa4, $fa4
	fmul.s	$fa5, $fa5, $fa5
	fmul.s	$fa6, $fa6, $fa6
	fadd.s	$fa7, $fa5, $fa6
	fmul.s	$fa7, $fa0, $fa7
	fadd.s	$fa6, $fa4, $fa6
	fmul.s	$fa6, $fa0, $fa6
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa0, $fa4
	fadd.s	$fa1, $fa1, $fa7
	fst.s	$fa1, $fp, 0
	fadd.s	$fa2, $fa6, $fa2
	fst.s	$fa2, $fp, 4
	fadd.s	$fa3, $fa4, $fa3
	fst.s	$fa3, $fp, 8
	add.d	$a2, $a2, $a3
	bnez	$a1, .LBB1_5
.LBB1_6:                                # %._crit_edge
	ld.d	$a1, $s0, 0
	ld.d	$a1, $a1, 200
	move	$a0, $s0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a1
.Lfunc_end1:
	.size	_ZNK22btGImpactMeshShapePart21calculateLocalInertiaEfR9btVector3, .Lfunc_end1-_ZNK22btGImpactMeshShapePart21calculateLocalInertiaEfR9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK18btGImpactMeshShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK18btGImpactMeshShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK18btGImpactMeshShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK18btGImpactMeshShape21calculateLocalInertiaEfR9btVector3: # @_ZNK18btGImpactMeshShape21calculateLocalInertiaEfR9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	vrepli.b	$vr1, 0
	vst	$vr1, $a1, 0
	ld.w	$s1, $a0, 188
	beqz	$s1, .LBB2_3
# %bb.1:                                # %.lr.ph
	move	$fp, $a1
	move	$s0, $a0
	movgr2fr.w	$fa1, $s1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fs0, $fa0, $fa1
	slli.d	$a0, $s1, 3
	addi.d	$s2, $a0, -8
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 200
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 64
	addi.d	$s1, $s1, -1
	addi.d	$a1, $sp, 16
	fmov.s	$fa0, $fs0
	jirl	$ra, $a2, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $sp, 20
	fld.s	$fa2, $fp, 4
	fld.s	$fa3, $sp, 24
	fld.s	$fa4, $fp, 8
	fst.s	$fa0, $fp, 0
	fadd.s	$fa0, $fa1, $fa2
	fst.s	$fa0, $fp, 4
	fadd.s	$fa0, $fa3, $fa4
	fst.s	$fa0, $fp, 8
	addi.d	$s2, $s2, -8
	bnez	$s1, .LBB2_2
.LBB2_3:                                # %._crit_edge
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	_ZNK18btGImpactMeshShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end2-_ZNK18btGImpactMeshShape21calculateLocalInertiaEfR9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK18btGImpactMeshShape7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE # -- Begin function _ZNK18btGImpactMeshShape7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
	.p2align	5
	.type	_ZNK18btGImpactMeshShape7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE,@function
_ZNK18btGImpactMeshShape7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE: # @_ZNK18btGImpactMeshShape7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
# %bb.0:
	ret
.Lfunc_end3:
	.size	_ZNK18btGImpactMeshShape7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE, .Lfunc_end3-_ZNK18btGImpactMeshShape7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
                                        # -- End function
	.globl	_ZNK22btGImpactMeshShapePart19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_ # -- Begin function _ZNK22btGImpactMeshShapePart19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_,@function
_ZNK22btGImpactMeshShapePart19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_: # @_ZNK22btGImpactMeshShapePart19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
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
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 192
	move	$s1, $a3
	move	$s2, $a2
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	vld	$vr0, $s2, 0
	vld	$vr1, $s1, 0
	vst	$vr0, $sp, 120
	vst	$vr1, $sp, 136
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 112
	st.d	$zero, $sp, 104
	st.d	$zero, $sp, 92
	addi.d	$a0, $fp, 80
.Ltmp3:                                 # EH_LABEL
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 88
	pcaddu18i	$ra, %call36(_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.1:
	ld.w	$a0, $sp, 92
	beqz	$a0, .LBB4_8
# %bb.2:
	ld.w	$s1, $fp, 216
	lu12i.w	$a1, 246333
	ori	$a1, $a1, 1802
	st.w	$a1, $sp, 80
	addi.d	$s3, $a0, 1
	slli.d	$a0, $a0, 2
	addi.d	$s4, $a0, -4
	.p2align	4, , 16
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	addi.d	$s3, $s3, -1
	beqz	$s3, .LBB4_7
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 0
	ldx.w	$s2, $a0, $s4
	ld.d	$a1, $a1, 136
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp6:                                 # EH_LABEL
# %bb.5:                                # %.noexc
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
.Ltmp7:                                 # EH_LABEL
	addi.d	$a2, $sp, 16
	move	$a1, $s2
	jirl	$ra, $a3, 0
.Ltmp8:                                 # EH_LABEL
# %bb.6:                                # %_ZNK23btGImpactShapeInterface20getPrimitiveTriangleEiR19btPrimitiveTriangle.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 104
	ld.d	$a1, $s0, 0
	ldx.w	$a3, $a0, $s4
	ld.d	$a4, $a1, 16
	addi.d	$s4, $s4, -4
.Ltmp9:                                 # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	move	$a2, $s1
	jirl	$ra, $a4, 0
.Ltmp10:                                # EH_LABEL
	b	.LBB4_3
.LBB4_7:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 200
.Ltmp12:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp13:                                # EH_LABEL
	b	.LBB4_9
.LBB4_8:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 200
.Ltmp15:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp16:                                # EH_LABEL
.LBB4_9:
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB4_12
# %bb.10:
	ld.b	$a1, $sp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_12
# %bb.11:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_12:                               # %_ZN20btAlignedObjectArrayIiED2Ev.exit
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB4_13:                               # %.loopexit.split-lp
.Ltmp14:                                # EH_LABEL
	b	.LBB4_16
.LBB4_14:
.Ltmp17:                                # EH_LABEL
	b	.LBB4_16
.LBB4_15:                               # %.loopexit
.Ltmp11:                                # EH_LABEL
.LBB4_16:
	move	$fp, $a0
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB4_19
# %bb.17:
	ld.b	$a1, $sp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_19
# %bb.18:
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
.LBB4_19:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_20:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZNK22btGImpactMeshShapePart19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_, .Lfunc_end4-_ZNK22btGImpactMeshShapePart19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp5                 #   Call between .Ltmp5 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Lfunc_end4-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
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
.Lfunc_end5:
	.size	__clang_call_terminate, .Lfunc_end5-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZNK18btGImpactMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_ # -- Begin function _ZNK18btGImpactMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.p2align	5
	.type	_ZNK18btGImpactMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_,@function
_ZNK18btGImpactMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_: # @_ZNK18btGImpactMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
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
	ld.w	$s3, $a0, 188
	beqz	$s3, .LBB6_3
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	slli.d	$a0, $s3, 3
	addi.d	$s4, $a0, -8
	.p2align	4, , 16
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 200
	ldx.d	$a0, $a0, $s4
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 96
	addi.d	$s3, $s3, -1
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	jirl	$ra, $a4, 0
	addi.d	$s4, $s4, -8
	bnez	$s3, .LBB6_2
.LBB6_3:                                # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	_ZNK18btGImpactMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_, .Lfunc_end6-_ZNK18btGImpactMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN22btGImpactCompoundShapeD2Ev,"axG",@progbits,_ZN22btGImpactCompoundShapeD2Ev,comdat
	.weak	_ZN22btGImpactCompoundShapeD2Ev # -- Begin function _ZN22btGImpactCompoundShapeD2Ev
	.p2align	5
	.type	_ZN22btGImpactCompoundShapeD2Ev,@function
_ZN22btGImpactCompoundShapeD2Ev:        # @_ZN22btGImpactCompoundShapeD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV22btGImpactCompoundShape+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV22btGImpactCompoundShape+16)
	ld.d	$a0, $fp, 240
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB7_3
# %bb.1:
	ld.b	$a1, $fp, 248
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_3
# %bb.2:
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
.LBB7_3:
	ld.d	$a0, $fp, 208
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 248
	st.d	$zero, $fp, 240
	st.d	$zero, $fp, 228
	beqz	$a0, .LBB7_6
# %bb.4:
	ld.b	$a1, $fp, 216
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_6
# %bb.5:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
.LBB7_6:
	st.b	$s0, $fp, 216
	st.d	$zero, $fp, 208
	st.d	$zero, $fp, 196
	pcalau12i	$a0, %pc_hi20(_ZTV23btGImpactShapeInterface+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV23btGImpactShapeInterface+16)
	ld.d	$a0, $fp, 104
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB7_9
# %bb.7:
	ld.b	$a1, $fp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_9
# %bb.8:
.Ltmp32:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
.LBB7_9:                                # %_ZN23btGImpactShapeInterfaceD2Ev.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 112
	st.d	$zero, $fp, 104
	st.d	$zero, $fp, 92
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN14btConcaveShapeD2Ev)
	jr	$t8
.LBB7_10:
.Ltmp34:                                # EH_LABEL
	move	$s0, $a0
.Ltmp35:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
	b	.LBB7_15
.LBB7_11:
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_12:
.Ltmp28:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_14
.LBB7_13:
.Ltmp23:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 192
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI11btTransformED2Ev)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
.LBB7_14:
.Ltmp29:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btGImpactShapeInterfaceD2Ev)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
.LBB7_15:                               # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_16:
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN22btGImpactCompoundShapeD2Ev, .Lfunc_end7-_ZN22btGImpactCompoundShapeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN22btGImpactCompoundShapeD2Ev,"aG",@progbits,_ZN22btGImpactCompoundShapeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp21-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin2          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin2          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin2          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp35-.Ltmp33                #   Call between .Ltmp33 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin2          #     jumps to .Ltmp37
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp36-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp24-.Ltmp36                #   Call between .Ltmp36 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp30-.Ltmp24                #   Call between .Ltmp24 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin2          #     jumps to .Ltmp31
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp30-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Lfunc_end7-.Ltmp30            #   Call between .Ltmp30 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN22btGImpactCompoundShapeD0Ev,"axG",@progbits,_ZN22btGImpactCompoundShapeD0Ev,comdat
	.weak	_ZN22btGImpactCompoundShapeD0Ev # -- Begin function _ZN22btGImpactCompoundShapeD0Ev
	.p2align	5
	.type	_ZN22btGImpactCompoundShapeD0Ev,@function
_ZN22btGImpactCompoundShapeD0Ev:        # @_ZN22btGImpactCompoundShapeD0Ev
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
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN22btGImpactCompoundShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB8_2:
.Ltmp40:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN22btGImpactCompoundShapeD0Ev, .Lfunc_end8-_ZN22btGImpactCompoundShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN22btGImpactCompoundShapeD0Ev,"aG",@progbits,_ZN22btGImpactCompoundShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp38-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin3          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end8-.Ltmp39            #   Call between .Ltmp39 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_,"axG",@progbits,_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_,comdat
	.weak	_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_: # @_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 28
	fld.s	$fa1, $a0, 32
	fld.s	$fa2, $a0, 36
	fld.s	$fa3, $a0, 44
	fld.s	$fa4, $a0, 48
	fld.s	$fa5, $a0, 52
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	vldi	$vr6, -1184
	fmul.s	$fa0, $fa0, $fa6
	fmul.s	$fa1, $fa1, $fa6
	fmul.s	$fa2, $fa2, $fa6
	fld.s	$fa6, $a1, 4
	fsub.s	$fa3, $fa3, $fa0
	fsub.s	$fa4, $fa4, $fa1
	fld.s	$fa7, $a1, 0
	fmul.s	$ft0, $fa1, $fa6
	fld.s	$ft1, $a1, 8
	fld.s	$ft2, $a1, 48
	fmadd.s	$ft0, $fa7, $fa0, $ft0
	fld.s	$ft3, $a1, 20
	fmadd.s	$ft0, $ft1, $fa2, $ft0
	fadd.s	$ft0, $ft2, $ft0
	fld.s	$ft2, $a1, 16
	fmul.s	$ft4, $fa1, $ft3
	fld.s	$ft5, $a1, 24
	fld.s	$ft6, $a1, 52
	fmadd.s	$ft4, $ft2, $fa0, $ft4
	fld.s	$ft7, $a1, 36
	fmadd.s	$ft4, $ft5, $fa2, $ft4
	fadd.s	$ft4, $ft6, $ft4
	fld.s	$ft6, $a1, 32
	fmul.s	$fa1, $fa1, $ft7
	fld.s	$ft8, $a1, 40
	fld.s	$ft9, $a1, 56
	fmadd.s	$fa0, $ft6, $fa0, $fa1
	fsub.s	$fa1, $fa5, $fa2
	fmadd.s	$fa0, $ft8, $fa2, $fa0
	fadd.s	$fa0, $ft9, $fa0
	fabs.s	$fa2, $fa7
	fabs.s	$fa5, $fa6
	fabs.s	$fa6, $ft1
	fmul.s	$fa5, $fa4, $fa5
	fmadd.s	$fa2, $fa3, $fa2, $fa5
	fmadd.s	$fa2, $fa1, $fa6, $fa2
	fabs.s	$fa5, $ft2
	fabs.s	$fa6, $ft3
	fabs.s	$fa7, $ft5
	fmul.s	$fa6, $fa4, $fa6
	fmadd.s	$fa5, $fa3, $fa5, $fa6
	fmadd.s	$fa5, $fa1, $fa7, $fa5
	fabs.s	$fa6, $ft6
	fabs.s	$fa7, $ft7
	fabs.s	$ft1, $ft8
	fmul.s	$fa4, $fa4, $fa7
	fmadd.s	$fa3, $fa3, $fa6, $fa4
	fmadd.s	$fa1, $fa1, $ft1, $fa3
	fsub.s	$fa3, $ft0, $fa2
	fsub.s	$fa4, $ft4, $fa5
	fsub.s	$fa6, $fa0, $fa1
	fadd.s	$fa2, $ft0, $fa2
	fadd.s	$fa5, $ft4, $fa5
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa3, $a2, 0
	fst.s	$fa4, $a2, 4
	fst.s	$fa6, $a2, 8
	st.w	$zero, $a2, 12
	fst.s	$fa2, $a3, 0
	fst.s	$fa5, $a3, 4
	fst.s	$fa0, $a3, 8
	st.w	$zero, $a3, 12
	ret
.Lfunc_end9:
	.size	_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end9-_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3,"axG",@progbits,_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3,comdat
	.weak	_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3 # -- Begin function _ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3,@function
_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3: # @_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3
	.cfi_startproc
# %bb.0:
	vld	$vr0, $a1, 0
	ld.d	$a1, $a0, 0
	vst	$vr0, $a0, 64
	ld.d	$a1, $a1, 112
	jr	$a1
.Lfunc_end10:
	.size	_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3, .Lfunc_end10-_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK23btGImpactShapeInterface15getLocalScalingEv,"axG",@progbits,_ZNK23btGImpactShapeInterface15getLocalScalingEv,comdat
	.weak	_ZNK23btGImpactShapeInterface15getLocalScalingEv # -- Begin function _ZNK23btGImpactShapeInterface15getLocalScalingEv
	.p2align	5
	.type	_ZNK23btGImpactShapeInterface15getLocalScalingEv,@function
_ZNK23btGImpactShapeInterface15getLocalScalingEv: # @_ZNK23btGImpactShapeInterface15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 64
	ret
.Lfunc_end11:
	.size	_ZNK23btGImpactShapeInterface15getLocalScalingEv, .Lfunc_end11-_ZNK23btGImpactShapeInterface15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape7getNameEv,"axG",@progbits,_ZNK22btGImpactCompoundShape7getNameEv,comdat
	.weak	_ZNK22btGImpactCompoundShape7getNameEv # -- Begin function _ZNK22btGImpactCompoundShape7getNameEv
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape7getNameEv,@function
_ZNK22btGImpactCompoundShape7getNameEv: # @_ZNK22btGImpactCompoundShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end12:
	.size	_ZNK22btGImpactCompoundShape7getNameEv, .Lfunc_end12-_ZNK22btGImpactCompoundShape7getNameEv
                                        # -- End function
	.section	.text._ZN23btGImpactShapeInterface9setMarginEf,"axG",@progbits,_ZN23btGImpactShapeInterface9setMarginEf,comdat
	.weak	_ZN23btGImpactShapeInterface9setMarginEf # -- Begin function _ZN23btGImpactShapeInterface9setMarginEf
	.p2align	5
	.type	_ZN23btGImpactShapeInterface9setMarginEf,@function
_ZN23btGImpactShapeInterface9setMarginEf: # @_ZN23btGImpactShapeInterface9setMarginEf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	fmov.s	$fs0, $fa0
	fst.s	$fa0, $fp, 24
	ld.d	$a1, $a0, 144
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB13_3
# %bb.1:                                # %.lr.ph.preheader
	addi.w	$s0, $a0, -1
	addi.w	$s1, $zero, -1
	.p2align	4, , 16
.LBB13_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 216
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 80
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
	addi.w	$s0, $s0, -1
	bne	$s0, $s1, .LBB13_2
.LBB13_3:                               # %._crit_edge
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 60
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	_ZN23btGImpactShapeInterface9setMarginEf, .Lfunc_end13-_ZN23btGImpactShapeInterface9setMarginEf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK14btConcaveShape9getMarginEv,"axG",@progbits,_ZNK14btConcaveShape9getMarginEv,comdat
	.weak	_ZNK14btConcaveShape9getMarginEv # -- Begin function _ZNK14btConcaveShape9getMarginEv
	.p2align	5
	.type	_ZNK14btConcaveShape9getMarginEv,@function
_ZNK14btConcaveShape9getMarginEv:       # @_ZNK14btConcaveShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 24
	ret
.Lfunc_end14:
	.size	_ZNK14btConcaveShape9getMarginEv, .Lfunc_end14-_ZNK14btConcaveShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_,"axG",@progbits,_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_,comdat
	.weak	_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_ # -- Begin function _ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.p2align	5
	.type	_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_,@function
_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_: # @_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
# %bb.0:
	ret
.Lfunc_end15:
	.size	_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_, .Lfunc_end15-_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
                                        # -- End function
	.section	.text._ZN23btGImpactShapeInterface13calcLocalAABBEv,"axG",@progbits,_ZN23btGImpactShapeInterface13calcLocalAABBEv,comdat
	.weak	_ZN23btGImpactShapeInterface13calcLocalAABBEv # -- Begin function _ZN23btGImpactShapeInterface13calcLocalAABBEv
	.p2align	5
	.type	_ZN23btGImpactShapeInterface13calcLocalAABBEv,@function
_ZN23btGImpactShapeInterface13calcLocalAABBEv: # @_ZN23btGImpactShapeInterface13calcLocalAABBEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 192
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a1, $fp, 80
	addi.d	$a0, $fp, 80
	beqz	$a1, .LBB16_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZN21btGImpactQuantizedBvh5refitEv)
	jirl	$ra, $ra, 0
	b	.LBB16_3
.LBB16_2:
	pcaddu18i	$ra, %call36(_ZN21btGImpactQuantizedBvh8buildSetEv)
	jirl	$ra, $ra, 0
.LBB16_3:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 200
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 104
	ld.hu	$a1, $a0, 0
	fld.s	$fa0, $fp, 152
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	ld.hu	$a1, $a0, 2
	fdiv.s	$fa1, $fa1, $fa0
	fld.s	$fa2, $fp, 156
	ld.hu	$a2, $a0, 4
	movgr2fr.w	$fa3, $a1
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa3, $fa3, $fa2
	movgr2fr.w	$fa4, $a2
	ffint.s.w	$fa4, $fa4
	fld.s	$fa5, $fp, 160
	fld.s	$fa6, $fp, 120
	fld.s	$fa7, $fp, 124
	fld.s	$ft0, $fp, 128
	fdiv.s	$fa4, $fa4, $fa5
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa3, $fa3, $fa7
	fadd.s	$fa4, $fa4, $ft0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa3
	ld.hu	$a3, $a0, 6
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa4
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.w	$fa1, $a3
	ld.hu	$a3, $a0, 8
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	ld.hu	$a0, $a0, 10
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa2
	movgr2fr.w	$fa2, $a0
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa6, $fa0
	fadd.s	$fa1, $fa7, $fa1
	fadd.s	$fa2, $ft0, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a3, $fa1
	bstrins.d	$a0, $a3, 63, 32
	movfr2gr.s	$a3, $fa2
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a1, $fp, 28
	st.d	$a2, $fp, 36
	st.d	$a0, $fp, 44
	st.d	$a3, $fp, 52
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end16:
	.size	_ZN23btGImpactShapeInterface13calcLocalAABBEv, .Lfunc_end16-_ZN23btGImpactShapeInterface13calcLocalAABBEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN23btGImpactShapeInterface10postUpdateEv,"axG",@progbits,_ZN23btGImpactShapeInterface10postUpdateEv,comdat
	.weak	_ZN23btGImpactShapeInterface10postUpdateEv # -- Begin function _ZN23btGImpactShapeInterface10postUpdateEv
	.p2align	5
	.type	_ZN23btGImpactShapeInterface10postUpdateEv,@function
_ZN23btGImpactShapeInterface10postUpdateEv: # @_ZN23btGImpactShapeInterface10postUpdateEv
# %bb.0:
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 60
	ret
.Lfunc_end17:
	.size	_ZN23btGImpactShapeInterface10postUpdateEv, .Lfunc_end17-_ZN23btGImpactShapeInterface10postUpdateEv
                                        # -- End function
	.section	.text._ZNK23btGImpactShapeInterface12getShapeTypeEv,"axG",@progbits,_ZNK23btGImpactShapeInterface12getShapeTypeEv,comdat
	.weak	_ZNK23btGImpactShapeInterface12getShapeTypeEv # -- Begin function _ZNK23btGImpactShapeInterface12getShapeTypeEv
	.p2align	5
	.type	_ZNK23btGImpactShapeInterface12getShapeTypeEv,@function
_ZNK23btGImpactShapeInterface12getShapeTypeEv: # @_ZNK23btGImpactShapeInterface12getShapeTypeEv
# %bb.0:
	ori	$a0, $zero, 25
	ret
.Lfunc_end18:
	.size	_ZNK23btGImpactShapeInterface12getShapeTypeEv, .Lfunc_end18-_ZNK23btGImpactShapeInterface12getShapeTypeEv
                                        # -- End function
	.section	.text._ZN22btGImpactCompoundShape19getGImpactShapeTypeEv,"axG",@progbits,_ZN22btGImpactCompoundShape19getGImpactShapeTypeEv,comdat
	.weak	_ZN22btGImpactCompoundShape19getGImpactShapeTypeEv # -- Begin function _ZN22btGImpactCompoundShape19getGImpactShapeTypeEv
	.p2align	5
	.type	_ZN22btGImpactCompoundShape19getGImpactShapeTypeEv,@function
_ZN22btGImpactCompoundShape19getGImpactShapeTypeEv: # @_ZN22btGImpactCompoundShape19getGImpactShapeTypeEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end19:
	.size	_ZN22btGImpactCompoundShape19getGImpactShapeTypeEv, .Lfunc_end19-_ZN22btGImpactCompoundShape19getGImpactShapeTypeEv
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape19getPrimitiveManagerEv,"axG",@progbits,_ZNK22btGImpactCompoundShape19getPrimitiveManagerEv,comdat
	.weak	_ZNK22btGImpactCompoundShape19getPrimitiveManagerEv # -- Begin function _ZNK22btGImpactCompoundShape19getPrimitiveManagerEv
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape19getPrimitiveManagerEv,@function
_ZNK22btGImpactCompoundShape19getPrimitiveManagerEv: # @_ZNK22btGImpactCompoundShape19getPrimitiveManagerEv
# %bb.0:
	addi.d	$a0, $a0, 176
	ret
.Lfunc_end20:
	.size	_ZNK22btGImpactCompoundShape19getPrimitiveManagerEv, .Lfunc_end20-_ZNK22btGImpactCompoundShape19getPrimitiveManagerEv
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape17getNumChildShapesEv,"axG",@progbits,_ZNK22btGImpactCompoundShape17getNumChildShapesEv,comdat
	.weak	_ZNK22btGImpactCompoundShape17getNumChildShapesEv # -- Begin function _ZNK22btGImpactCompoundShape17getNumChildShapesEv
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape17getNumChildShapesEv,@function
_ZNK22btGImpactCompoundShape17getNumChildShapesEv: # @_ZNK22btGImpactCompoundShape17getNumChildShapesEv
# %bb.0:
	ld.w	$a0, $a0, 228
	ret
.Lfunc_end21:
	.size	_ZNK22btGImpactCompoundShape17getNumChildShapesEv, .Lfunc_end21-_ZNK22btGImpactCompoundShape17getNumChildShapesEv
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape20childrenHasTransformEv,"axG",@progbits,_ZNK22btGImpactCompoundShape20childrenHasTransformEv,comdat
	.weak	_ZNK22btGImpactCompoundShape20childrenHasTransformEv # -- Begin function _ZNK22btGImpactCompoundShape20childrenHasTransformEv
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape20childrenHasTransformEv,@function
_ZNK22btGImpactCompoundShape20childrenHasTransformEv: # @_ZNK22btGImpactCompoundShape20childrenHasTransformEv
# %bb.0:
	ld.w	$a0, $a0, 196
	sltu	$a0, $zero, $a0
	ret
.Lfunc_end22:
	.size	_ZNK22btGImpactCompoundShape20childrenHasTransformEv, .Lfunc_end22-_ZNK22btGImpactCompoundShape20childrenHasTransformEv
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv,"axG",@progbits,_ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv,comdat
	.weak	_ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv # -- Begin function _ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv,@function
_ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv: # @_ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end23:
	.size	_ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv, .Lfunc_end23-_ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv,"axG",@progbits,_ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv,comdat
	.weak	_ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv # -- Begin function _ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv,@function
_ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv: # @_ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end24:
	.size	_ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv, .Lfunc_end24-_ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx,"axG",@progbits,_ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx,comdat
	.weak	_ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx # -- Begin function _ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx,@function
_ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx: # @_ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx
# %bb.0:
	ret
.Lfunc_end25:
	.size	_ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx, .Lfunc_end25-_ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx,"axG",@progbits,_ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx,comdat
	.weak	_ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx # -- Begin function _ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx,@function
_ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx: # @_ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx
# %bb.0:
	ret
.Lfunc_end26:
	.size	_ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx, .Lfunc_end26-_ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx
                                        # -- End function
	.section	.text._ZNK23btGImpactShapeInterface15lockChildShapesEv,"axG",@progbits,_ZNK23btGImpactShapeInterface15lockChildShapesEv,comdat
	.weak	_ZNK23btGImpactShapeInterface15lockChildShapesEv # -- Begin function _ZNK23btGImpactShapeInterface15lockChildShapesEv
	.p2align	5
	.type	_ZNK23btGImpactShapeInterface15lockChildShapesEv,@function
_ZNK23btGImpactShapeInterface15lockChildShapesEv: # @_ZNK23btGImpactShapeInterface15lockChildShapesEv
# %bb.0:
	ret
.Lfunc_end27:
	.size	_ZNK23btGImpactShapeInterface15lockChildShapesEv, .Lfunc_end27-_ZNK23btGImpactShapeInterface15lockChildShapesEv
                                        # -- End function
	.section	.text._ZNK23btGImpactShapeInterface17unlockChildShapesEv,"axG",@progbits,_ZNK23btGImpactShapeInterface17unlockChildShapesEv,comdat
	.weak	_ZNK23btGImpactShapeInterface17unlockChildShapesEv # -- Begin function _ZNK23btGImpactShapeInterface17unlockChildShapesEv
	.p2align	5
	.type	_ZNK23btGImpactShapeInterface17unlockChildShapesEv,@function
_ZNK23btGImpactShapeInterface17unlockChildShapesEv: # @_ZNK23btGImpactShapeInterface17unlockChildShapesEv
# %bb.0:
	ret
.Lfunc_end28:
	.size	_ZNK23btGImpactShapeInterface17unlockChildShapesEv, .Lfunc_end28-_ZNK23btGImpactShapeInterface17unlockChildShapesEv
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_,"axG",@progbits,_ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_,comdat
	.weak	_ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_ # -- Begin function _ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_,@function
_ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_: # @_ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a5, $a0, 152
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$a0, $s2
	jirl	$ra, $a5, 0
	ld.d	$a1, $s2, 240
	slli.d	$a2, $s3, 3
	ldx.d	$a2, $a1, $a2
	beqz	$a0, .LBB29_2
# %bb.1:
	ld.d	$a1, $s2, 208
	slli.d	$a3, $s3, 6
	add.d	$a0, $a1, $a3
	fldx.s	$fa5, $a1, $a3
	fld.s	$fa6, $a0, 16
	fld.s	$fa3, $s1, 4
	fld.s	$fa2, $s1, 0
	fld.s	$fa7, $a0, 32
	fld.s	$fa4, $s1, 8
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $a0, 20
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $a0, 4
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $a0, 36
	fld.s	$ft3, $a0, 24
	fld.s	$ft4, $a0, 8
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $a0, 40
	fld.s	$ft7, $s1, 20
	fld.s	$ft8, $s1, 16
	fld.s	$ft9, $s1, 24
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $s1, 36
	fld.s	$ft13, $s1, 32
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $s1, 40
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
	fld.s	$ft1, $a0, 52
	fld.s	$ft2, $a0, 48
	fld.s	$ft3, $a0, 56
	fld.s	$ft4, $s1, 48
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $s1, 52
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $s1, 56
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $sp, 16
	fst.s	$fa1, $sp, 20
	fst.s	$ft5, $sp, 24
	fst.s	$ft10, $sp, 32
	fst.s	$ft11, $sp, 36
	fst.s	$ft14, $sp, 40
	fst.s	$fa5, $sp, 48
	fst.s	$fa7, $sp, 52
	fst.s	$ft0, $sp, 56
	st.d	$a0, $sp, 64
	ld.d	$a0, $a2, 0
	st.w	$zero, $sp, 44
	st.w	$zero, $sp, 60
	st.d	$a1, $sp, 72
	ld.d	$a4, $a0, 16
	st.w	$zero, $sp, 28
	addi.d	$a1, $sp, 16
	move	$a0, $a2
	move	$a2, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB29_2:
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a0, 16
	move	$a0, $a2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	jr	$a4
.Lfunc_end29:
	.size	_ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_, .Lfunc_end29-_ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN22btGImpactCompoundShape13getChildShapeEi,"axG",@progbits,_ZN22btGImpactCompoundShape13getChildShapeEi,comdat
	.weak	_ZN22btGImpactCompoundShape13getChildShapeEi # -- Begin function _ZN22btGImpactCompoundShape13getChildShapeEi
	.p2align	5
	.type	_ZN22btGImpactCompoundShape13getChildShapeEi,@function
_ZN22btGImpactCompoundShape13getChildShapeEi: # @_ZN22btGImpactCompoundShape13getChildShapeEi
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 240
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ret
.Lfunc_end30:
	.size	_ZN22btGImpactCompoundShape13getChildShapeEi, .Lfunc_end30-_ZN22btGImpactCompoundShape13getChildShapeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape13getChildShapeEi,"axG",@progbits,_ZNK22btGImpactCompoundShape13getChildShapeEi,comdat
	.weak	_ZNK22btGImpactCompoundShape13getChildShapeEi # -- Begin function _ZNK22btGImpactCompoundShape13getChildShapeEi
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape13getChildShapeEi,@function
_ZNK22btGImpactCompoundShape13getChildShapeEi: # @_ZNK22btGImpactCompoundShape13getChildShapeEi
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 240
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ret
.Lfunc_end31:
	.size	_ZNK22btGImpactCompoundShape13getChildShapeEi, .Lfunc_end31-_ZNK22btGImpactCompoundShape13getChildShapeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK22btGImpactCompoundShape17getChildTransformEi,"axG",@progbits,_ZNK22btGImpactCompoundShape17getChildTransformEi,comdat
	.weak	_ZNK22btGImpactCompoundShape17getChildTransformEi # -- Begin function _ZNK22btGImpactCompoundShape17getChildTransformEi
	.p2align	5
	.type	_ZNK22btGImpactCompoundShape17getChildTransformEi,@function
_ZNK22btGImpactCompoundShape17getChildTransformEi: # @_ZNK22btGImpactCompoundShape17getChildTransformEi
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a1, 208
	slli.d	$a2, $a2, 6
	add.d	$a3, $a1, $a2
	vldx	$vr0, $a1, $a2
	vld	$vr1, $a3, 16
	vld	$vr2, $a3, 32
	vld	$vr3, $a3, 48
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	vst	$vr2, $a0, 32
	vst	$vr3, $a0, 48
	ret
.Lfunc_end32:
	.size	_ZNK22btGImpactCompoundShape17getChildTransformEi, .Lfunc_end32-_ZNK22btGImpactCompoundShape17getChildTransformEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform,"axG",@progbits,_ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform,comdat
	.weak	_ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform # -- Begin function _ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform
	.p2align	5
	.type	_ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform,@function
_ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform: # @_ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform
	.cfi_startproc
# %bb.0:
	ld.d	$a3, $a0, 208
	vld	$vr0, $a2, 0
	slli.d	$a1, $a1, 6
	vstx	$vr0, $a3, $a1
	vld	$vr0, $a2, 16
	add.d	$a1, $a3, $a1
	vst	$vr0, $a1, 16
	vld	$vr0, $a2, 32
	vst	$vr0, $a1, 32
	vld	$vr0, $a2, 48
	vst	$vr0, $a1, 48
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 112
	jr	$a1
.Lfunc_end33:
	.size	_ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform, .Lfunc_end33-_ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE,"axG",@progbits,_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE,comdat
	.weak	_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE # -- Begin function _ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
	.p2align	5
	.type	_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE,@function
_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE: # @_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
# %bb.0:
	ret
.Lfunc_end34:
	.size	_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE, .Lfunc_end34-_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
                                        # -- End function
	.section	.text._ZN22btGImpactMeshShapePartD2Ev,"axG",@progbits,_ZN22btGImpactMeshShapePartD2Ev,comdat
	.weak	_ZN22btGImpactMeshShapePartD2Ev # -- Begin function _ZN22btGImpactMeshShapePartD2Ev
	.p2align	5
	.type	_ZN22btGImpactMeshShapePartD2Ev,@function
_ZN22btGImpactMeshShapePartD2Ev:        # @_ZN22btGImpactMeshShapePartD2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	pcalau12i	$a0, %pc_hi20(_ZTV23btGImpactShapeInterface+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV23btGImpactShapeInterface+16)
	ld.d	$a0, $fp, 104
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB35_3
# %bb.1:
	ld.b	$a1, $fp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB35_3
# %bb.2:
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
.LBB35_3:                               # %_ZN23btGImpactShapeInterfaceD2Ev.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 112
	st.d	$zero, $fp, 104
	st.d	$zero, $fp, 92
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN14btConcaveShapeD2Ev)
	jr	$t8
.LBB35_4:
.Ltmp43:                                # EH_LABEL
	move	$s0, $a0
.Ltmp44:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB35_6:
.Ltmp46:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	_ZN22btGImpactMeshShapePartD2Ev, .Lfunc_end35-_ZN22btGImpactMeshShapePartD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN22btGImpactMeshShapePartD2Ev,"aG",@progbits,_ZN22btGImpactMeshShapePartD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table35:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp41-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin4          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp44-.Ltmp42                #   Call between .Ltmp42 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin4          #     jumps to .Ltmp46
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp45-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Lfunc_end35-.Ltmp45           #   Call between .Ltmp45 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN22btGImpactMeshShapePartD0Ev,"axG",@progbits,_ZN22btGImpactMeshShapePartD0Ev,comdat
	.weak	_ZN22btGImpactMeshShapePartD0Ev # -- Begin function _ZN22btGImpactMeshShapePartD0Ev
	.p2align	5
	.type	_ZN22btGImpactMeshShapePartD0Ev,@function
_ZN22btGImpactMeshShapePartD0Ev:        # @_ZN22btGImpactMeshShapePartD0Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	pcalau12i	$a0, %pc_hi20(_ZTV23btGImpactShapeInterface+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV23btGImpactShapeInterface+16)
	ld.d	$a0, $fp, 104
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB36_3
# %bb.1:
	ld.b	$a1, $fp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB36_3
# %bb.2:
.Ltmp47:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
.LBB36_3:                               # %_ZN23btGImpactShapeInterfaceD2Ev.exit.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 112
	st.d	$zero, $fp, 104
	st.d	$zero, $fp, 92
.Ltmp53:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.4:                                # %_ZN22btGImpactMeshShapePartD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB36_5:
.Ltmp49:                                # EH_LABEL
	move	$s0, $a0
.Ltmp50:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
	b	.LBB36_8
.LBB36_6:
.Ltmp52:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB36_7:
.Ltmp55:                                # EH_LABEL
	move	$s0, $a0
.LBB36_8:                               # %.body
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZN22btGImpactMeshShapePartD0Ev, .Lfunc_end36-_ZN22btGImpactMeshShapePartD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN22btGImpactMeshShapePartD0Ev,"aG",@progbits,_ZN22btGImpactMeshShapePartD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp47-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin5          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin5          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp50-.Ltmp54                #   Call between .Ltmp54 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin5          #     jumps to .Ltmp52
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Lfunc_end36-.Ltmp51           #   Call between .Ltmp51 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3,"axG",@progbits,_ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3,comdat
	.weak	_ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3 # -- Begin function _ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3,@function
_ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3: # @_ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3
	.cfi_startproc
# %bb.0:
	vld	$vr0, $a1, 0
	ld.d	$a1, $a0, 0
	vst	$vr0, $a0, 200
	ld.d	$a1, $a1, 112
	jr	$a1
.Lfunc_end37:
	.size	_ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3, .Lfunc_end37-_ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart15getLocalScalingEv,"axG",@progbits,_ZNK22btGImpactMeshShapePart15getLocalScalingEv,comdat
	.weak	_ZNK22btGImpactMeshShapePart15getLocalScalingEv # -- Begin function _ZNK22btGImpactMeshShapePart15getLocalScalingEv
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart15getLocalScalingEv,@function
_ZNK22btGImpactMeshShapePart15getLocalScalingEv: # @_ZNK22btGImpactMeshShapePart15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 200
	ret
.Lfunc_end38:
	.size	_ZNK22btGImpactMeshShapePart15getLocalScalingEv, .Lfunc_end38-_ZNK22btGImpactMeshShapePart15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart7getNameEv,"axG",@progbits,_ZNK22btGImpactMeshShapePart7getNameEv,comdat
	.weak	_ZNK22btGImpactMeshShapePart7getNameEv # -- Begin function _ZNK22btGImpactMeshShapePart7getNameEv
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart7getNameEv,@function
_ZNK22btGImpactMeshShapePart7getNameEv: # @_ZNK22btGImpactMeshShapePart7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ret
.Lfunc_end39:
	.size	_ZNK22btGImpactMeshShapePart7getNameEv, .Lfunc_end39-_ZNK22btGImpactMeshShapePart7getNameEv
                                        # -- End function
	.section	.text._ZN22btGImpactMeshShapePart9setMarginEf,"axG",@progbits,_ZN22btGImpactMeshShapePart9setMarginEf,comdat
	.weak	_ZN22btGImpactMeshShapePart9setMarginEf # -- Begin function _ZN22btGImpactMeshShapePart9setMarginEf
	.p2align	5
	.type	_ZN22btGImpactMeshShapePart9setMarginEf,@function
_ZN22btGImpactMeshShapePart9setMarginEf: # @_ZN22btGImpactMeshShapePart9setMarginEf
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a0, 0
	fst.s	$fa0, $a0, 184
	ld.d	$a1, $a1, 112
	jr	$a1
.Lfunc_end40:
	.size	_ZN22btGImpactMeshShapePart9setMarginEf, .Lfunc_end40-_ZN22btGImpactMeshShapePart9setMarginEf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart9getMarginEv,"axG",@progbits,_ZNK22btGImpactMeshShapePart9getMarginEv,comdat
	.weak	_ZNK22btGImpactMeshShapePart9getMarginEv # -- Begin function _ZNK22btGImpactMeshShapePart9getMarginEv
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart9getMarginEv,@function
_ZNK22btGImpactMeshShapePart9getMarginEv: # @_ZNK22btGImpactMeshShapePart9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 184
	ret
.Lfunc_end41:
	.size	_ZNK22btGImpactMeshShapePart9getMarginEv, .Lfunc_end41-_ZNK22btGImpactMeshShapePart9getMarginEv
                                        # -- End function
	.section	.text._ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv,"axG",@progbits,_ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv,comdat
	.weak	_ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv # -- Begin function _ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv
	.p2align	5
	.type	_ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv,@function
_ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv: # @_ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv
# %bb.0:
	ori	$a0, $zero, 1
	ret
.Lfunc_end42:
	.size	_ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv, .Lfunc_end42-_ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv,"axG",@progbits,_ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv,comdat
	.weak	_ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv # -- Begin function _ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv,@function
_ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv: # @_ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv
# %bb.0:
	addi.d	$a0, $a0, 176
	ret
.Lfunc_end43:
	.size	_ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv, .Lfunc_end43-_ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart17getNumChildShapesEv,"axG",@progbits,_ZNK22btGImpactMeshShapePart17getNumChildShapesEv,comdat
	.weak	_ZNK22btGImpactMeshShapePart17getNumChildShapesEv # -- Begin function _ZNK22btGImpactMeshShapePart17getNumChildShapesEv
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart17getNumChildShapesEv,@function
_ZNK22btGImpactMeshShapePart17getNumChildShapesEv: # @_ZNK22btGImpactMeshShapePart17getNumChildShapesEv
	.cfi_startproc
# %bb.0:
	ld.w	$a0, $a0, 260
	ret
.Lfunc_end44:
	.size	_ZNK22btGImpactMeshShapePart17getNumChildShapesEv, .Lfunc_end44-_ZNK22btGImpactMeshShapePart17getNumChildShapesEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart20childrenHasTransformEv,"axG",@progbits,_ZNK22btGImpactMeshShapePart20childrenHasTransformEv,comdat
	.weak	_ZNK22btGImpactMeshShapePart20childrenHasTransformEv # -- Begin function _ZNK22btGImpactMeshShapePart20childrenHasTransformEv
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart20childrenHasTransformEv,@function
_ZNK22btGImpactMeshShapePart20childrenHasTransformEv: # @_ZNK22btGImpactMeshShapePart20childrenHasTransformEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end45:
	.size	_ZNK22btGImpactMeshShapePart20childrenHasTransformEv, .Lfunc_end45-_ZNK22btGImpactMeshShapePart20childrenHasTransformEv
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv,"axG",@progbits,_ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv,comdat
	.weak	_ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv # -- Begin function _ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv,@function
_ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv: # @_ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv
# %bb.0:
	ori	$a0, $zero, 1
	ret
.Lfunc_end46:
	.size	_ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv, .Lfunc_end46-_ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv,"axG",@progbits,_ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv,comdat
	.weak	_ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv # -- Begin function _ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv,@function
_ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv: # @_ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end47:
	.size	_ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv, .Lfunc_end47-_ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx,"axG",@progbits,_ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx,comdat
	.weak	_ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx # -- Begin function _ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx,@function
_ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx: # @_ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, 176
	pcaddu18i	$t8, %call36(_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx)
	jr	$t8
.Lfunc_end48:
	.size	_ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx, .Lfunc_end48-_ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx,"axG",@progbits,_ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx,comdat
	.weak	_ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx # -- Begin function _ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx,@function
_ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx: # @_ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx
# %bb.0:
	ret
.Lfunc_end49:
	.size	_ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx, .Lfunc_end49-_ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart15lockChildShapesEv,"axG",@progbits,_ZNK22btGImpactMeshShapePart15lockChildShapesEv,comdat
	.weak	_ZNK22btGImpactMeshShapePart15lockChildShapesEv # -- Begin function _ZNK22btGImpactMeshShapePart15lockChildShapesEv
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart15lockChildShapesEv,@function
_ZNK22btGImpactMeshShapePart15lockChildShapesEv: # @_ZNK22btGImpactMeshShapePart15lockChildShapesEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$fp, $a0, 168
	ld.w	$a0, $fp, 44
	blez	$a0, .LBB50_2
# %bb.1:
	addi.d	$a0, $a0, 1
	b	.LBB50_3
.LBB50_2:
	ld.d	$a0, $fp, 16
	addi.d	$a1, $fp, 48
	addi.d	$a2, $fp, 56
	addi.d	$a3, $fp, 60
	ld.d	$a6, $a0, 0
	addi.d	$a4, $fp, 64
	addi.d	$a5, $fp, 72
	ld.w	$t0, $fp, 40
	ld.d	$t1, $a6, 32
	addi.d	$a6, $fp, 80
	addi.d	$a7, $fp, 84
	addi.d	$t2, $fp, 88
	st.d	$t0, $sp, 8
	st.d	$t2, $sp, 0
	jirl	$ra, $t1, 0
	ori	$a0, $zero, 1
.LBB50_3:                               # %_ZN22btGImpactMeshShapePart23TrimeshPrimitiveManager4lockEv.exit
	st.w	$a0, $fp, 44
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end50:
	.size	_ZNK22btGImpactMeshShapePart15lockChildShapesEv, .Lfunc_end50-_ZNK22btGImpactMeshShapePart15lockChildShapesEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart17unlockChildShapesEv,"axG",@progbits,_ZNK22btGImpactMeshShapePart17unlockChildShapesEv,comdat
	.weak	_ZNK22btGImpactMeshShapePart17unlockChildShapesEv # -- Begin function _ZNK22btGImpactMeshShapePart17unlockChildShapesEv
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart17unlockChildShapesEv,@function
_ZNK22btGImpactMeshShapePart17unlockChildShapesEv: # @_ZNK22btGImpactMeshShapePart17unlockChildShapesEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$fp, $a0, 168
	ld.w	$a0, $fp, 44
	beqz	$a0, .LBB51_5
# %bb.1:
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB51_3
# %bb.2:
	addi.d	$a0, $a0, -1
	b	.LBB51_4
.LBB51_3:
	ld.d	$a0, $fp, 16
	ld.d	$a2, $a0, 0
	ld.w	$a1, $fp, 40
	ld.d	$a2, $a2, 48
	jirl	$ra, $a2, 0
	move	$a0, $zero
	st.d	$zero, $fp, 48
.LBB51_4:                               # %.sink.split.i
	st.w	$a0, $fp, 44
.LBB51_5:                               # %_ZN22btGImpactMeshShapePart23TrimeshPrimitiveManager6unlockEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end51:
	.size	_ZNK22btGImpactMeshShapePart17unlockChildShapesEv, .Lfunc_end51-_ZNK22btGImpactMeshShapePart17unlockChildShapesEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_,"axG",@progbits,_ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_,comdat
	.weak	_ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_ # -- Begin function _ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_,@function
_ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_: # @_ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	ld.d	$a5, $a0, 0
	ld.d	$a5, $a5, 136
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	jirl	$ra, $a5, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 32
	addi.d	$a2, $sp, 8
	move	$a1, $s2
	jirl	$ra, $a3, 0
	fld.s	$fa0, $sp, 24
	fld.s	$fa1, $sp, 8
	fld.s	$fa2, $sp, 28
	fld.s	$fa3, $sp, 12
	fld.s	$fa4, $sp, 32
	fld.s	$fa5, $sp, 16
	fadd.s	$fa1, $fa0, $fa1
	fadd.s	$fa3, $fa2, $fa3
	fadd.s	$fa5, $fa4, $fa5
	vldi	$vr6, -1184
	fmul.s	$fa1, $fa1, $fa6
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fld.s	$fa6, $s1, 4
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fld.s	$fa7, $s1, 0
	fmul.s	$ft0, $fa3, $fa6
	fld.s	$ft1, $s1, 8
	fld.s	$ft2, $s1, 48
	fmadd.s	$ft0, $fa7, $fa1, $ft0
	fld.s	$ft3, $s1, 20
	fmadd.s	$ft0, $ft1, $fa5, $ft0
	fadd.s	$ft0, $ft2, $ft0
	fld.s	$ft2, $s1, 16
	fmul.s	$ft4, $fa3, $ft3
	fld.s	$ft5, $s1, 24
	fld.s	$ft6, $s1, 52
	fmadd.s	$ft4, $ft2, $fa1, $ft4
	fld.s	$ft7, $s1, 36
	fmadd.s	$ft4, $ft5, $fa5, $ft4
	fadd.s	$ft4, $ft6, $ft4
	fld.s	$ft6, $s1, 32
	fmul.s	$fa3, $fa3, $ft7
	fld.s	$ft8, $s1, 40
	fld.s	$ft9, $s1, 56
	fmadd.s	$fa1, $ft6, $fa1, $fa3
	fsub.s	$fa3, $fa4, $fa5
	fmadd.s	$fa1, $ft8, $fa5, $fa1
	fadd.s	$fa1, $ft9, $fa1
	fabs.s	$fa4, $fa7
	fabs.s	$fa5, $fa6
	fabs.s	$fa6, $ft1
	fmul.s	$fa5, $fa2, $fa5
	fmadd.s	$fa4, $fa0, $fa4, $fa5
	fmadd.s	$fa4, $fa3, $fa6, $fa4
	fabs.s	$fa5, $ft2
	fabs.s	$fa6, $ft3
	fabs.s	$fa7, $ft5
	fmul.s	$fa6, $fa2, $fa6
	fmadd.s	$fa5, $fa0, $fa5, $fa6
	fmadd.s	$fa5, $fa3, $fa7, $fa5
	fabs.s	$fa6, $ft6
	fabs.s	$fa7, $ft7
	fabs.s	$ft1, $ft8
	fmul.s	$fa2, $fa2, $fa7
	fmadd.s	$fa0, $fa0, $fa6, $fa2
	fmadd.s	$fa0, $fa3, $ft1, $fa0
	fsub.s	$fa2, $ft0, $fa4
	fsub.s	$fa3, $ft4, $fa5
	fsub.s	$fa6, $fa1, $fa0
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa6
	bstrpick.d	$a1, $a1, 31, 0
	fadd.s	$fa2, $ft0, $fa4
	fadd.s	$fa3, $ft4, $fa5
	fadd.s	$fa0, $fa1, $fa0
	movfr2gr.s	$a2, $fa2
	movfr2gr.s	$a3, $fa3
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $fa0
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	st.d	$a2, $fp, 0
	st.d	$a3, $fp, 8
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end52:
	.size	_ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_, .Lfunc_end52-_ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN22btGImpactMeshShapePart13getChildShapeEi,"axG",@progbits,_ZN22btGImpactMeshShapePart13getChildShapeEi,comdat
	.weak	_ZN22btGImpactMeshShapePart13getChildShapeEi # -- Begin function _ZN22btGImpactMeshShapePart13getChildShapeEi
	.p2align	5
	.type	_ZN22btGImpactMeshShapePart13getChildShapeEi,@function
_ZN22btGImpactMeshShapePart13getChildShapeEi: # @_ZN22btGImpactMeshShapePart13getChildShapeEi
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end53:
	.size	_ZN22btGImpactMeshShapePart13getChildShapeEi, .Lfunc_end53-_ZN22btGImpactMeshShapePart13getChildShapeEi
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart13getChildShapeEi,"axG",@progbits,_ZNK22btGImpactMeshShapePart13getChildShapeEi,comdat
	.weak	_ZNK22btGImpactMeshShapePart13getChildShapeEi # -- Begin function _ZNK22btGImpactMeshShapePart13getChildShapeEi
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart13getChildShapeEi,@function
_ZNK22btGImpactMeshShapePart13getChildShapeEi: # @_ZNK22btGImpactMeshShapePart13getChildShapeEi
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end54:
	.size	_ZNK22btGImpactMeshShapePart13getChildShapeEi, .Lfunc_end54-_ZNK22btGImpactMeshShapePart13getChildShapeEi
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart17getChildTransformEi,"axG",@progbits,_ZNK22btGImpactMeshShapePart17getChildTransformEi,comdat
	.weak	_ZNK22btGImpactMeshShapePart17getChildTransformEi # -- Begin function _ZNK22btGImpactMeshShapePart17getChildTransformEi
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart17getChildTransformEi,@function
_ZNK22btGImpactMeshShapePart17getChildTransformEi: # @_ZNK22btGImpactMeshShapePart17getChildTransformEi
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end55:
	.size	_ZNK22btGImpactMeshShapePart17getChildTransformEi, .Lfunc_end55-_ZNK22btGImpactMeshShapePart17getChildTransformEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform,"axG",@progbits,_ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform,comdat
	.weak	_ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform # -- Begin function _ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform
	.p2align	5
	.type	_ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform,@function
_ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform: # @_ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform
# %bb.0:
	ret
.Lfunc_end56:
	.size	_ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform, .Lfunc_end56-_ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform
                                        # -- End function
	.section	.text._ZN18btGImpactMeshShapeD2Ev,"axG",@progbits,_ZN18btGImpactMeshShapeD2Ev,comdat
	.weak	_ZN18btGImpactMeshShapeD2Ev     # -- Begin function _ZN18btGImpactMeshShapeD2Ev
	.p2align	5
	.type	_ZN18btGImpactMeshShapeD2Ev,@function
_ZN18btGImpactMeshShapeD2Ev:            # @_ZN18btGImpactMeshShapeD2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV18btGImpactMeshShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18btGImpactMeshShape+16)
	ld.w	$s0, $fp, 188
	st.d	$a0, $fp, 0
	beqz	$s0, .LBB57_5
# %bb.1:                                # %.lr.ph
	slli.d	$a0, $s0, 3
	addi.d	$s1, $a0, -8
	b	.LBB57_3
	.p2align	4, , 16
.LBB57_2:                               #   in Loop: Header=BB57_3 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, -8
	beqz	$s0, .LBB57_5
.LBB57_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 200
	ldx.d	$a0, $a0, $s1
	beqz	$a0, .LBB57_2
# %bb.4:                                #   in Loop: Header=BB57_3 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp56:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp57:                                # EH_LABEL
	b	.LBB57_2
.LBB57_5:                               # %._crit_edge
	ld.d	$a0, $fp, 200
	beqz	$a0, .LBB57_8
# %bb.6:                                # %._crit_edge
	ld.b	$a1, $fp, 208
	andi	$a1, $a1, 1
	beqz	$a1, .LBB57_8
# %bb.7:
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
.LBB57_8:
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 208
	st.d	$zero, $fp, 200
	st.d	$zero, $fp, 188
	pcalau12i	$a0, %pc_hi20(_ZTV23btGImpactShapeInterface+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV23btGImpactShapeInterface+16)
	ld.d	$a0, $fp, 104
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB57_11
# %bb.9:
	ld.b	$a1, $fp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB57_11
# %bb.10:
.Ltmp67:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
.LBB57_11:                              # %_ZN23btGImpactShapeInterfaceD2Ev.exit
	st.b	$s0, $fp, 112
	st.d	$zero, $fp, 104
	st.d	$zero, $fp, 92
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN14btConcaveShapeD2Ev)
	jr	$t8
.LBB57_12:
.Ltmp69:                                # EH_LABEL
	move	$s0, $a0
.Ltmp70:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
	b	.LBB57_18
.LBB57_13:
.Ltmp72:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB57_14:
.Ltmp61:                                # EH_LABEL
	b	.LBB57_16
.LBB57_15:
.Ltmp58:                                # EH_LABEL
.LBB57_16:
	move	$s0, $a0
.Ltmp62:                                # EH_LABEL
	addi.d	$a0, $fp, 184
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.17:
.Ltmp64:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btGImpactShapeInterfaceD2Ev)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
.LBB57_18:                              # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB57_19:
.Ltmp66:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end57:
	.size	_ZN18btGImpactMeshShapeD2Ev, .Lfunc_end57-_ZN18btGImpactMeshShapeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18btGImpactMeshShapeD2Ev,"aG",@progbits,_ZN18btGImpactMeshShapeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table57:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp56-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin6          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin6          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin6          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin6          # >> Call Site 4 <<
	.uleb128 .Ltmp70-.Ltmp68                #   Call between .Ltmp68 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin6          # >> Call Site 5 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin6          #     jumps to .Ltmp72
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp71-.Lfunc_begin6          # >> Call Site 6 <<
	.uleb128 .Ltmp62-.Ltmp71                #   Call between .Ltmp71 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin6          # >> Call Site 7 <<
	.uleb128 .Ltmp65-.Ltmp62                #   Call between .Ltmp62 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin6          #     jumps to .Ltmp66
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp65-.Lfunc_begin6          # >> Call Site 8 <<
	.uleb128 .Lfunc_end57-.Ltmp65           #   Call between .Ltmp65 and .Lfunc_end57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN18btGImpactMeshShapeD0Ev,"axG",@progbits,_ZN18btGImpactMeshShapeD0Ev,comdat
	.weak	_ZN18btGImpactMeshShapeD0Ev     # -- Begin function _ZN18btGImpactMeshShapeD0Ev
	.p2align	5
	.type	_ZN18btGImpactMeshShapeD0Ev,@function
_ZN18btGImpactMeshShapeD0Ev:            # @_ZN18btGImpactMeshShapeD0Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
.Ltmp73:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN18btGImpactMeshShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB58_2:
.Ltmp75:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end58:
	.size	_ZN18btGImpactMeshShapeD0Ev, .Lfunc_end58-_ZN18btGImpactMeshShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18btGImpactMeshShapeD0Ev,"aG",@progbits,_ZN18btGImpactMeshShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table58:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp73-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin7          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Lfunc_end58-.Ltmp74           #   Call between .Ltmp74 and .Lfunc_end58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN18btGImpactMeshShape15setLocalScalingERK9btVector3,"axG",@progbits,_ZN18btGImpactMeshShape15setLocalScalingERK9btVector3,comdat
	.weak	_ZN18btGImpactMeshShape15setLocalScalingERK9btVector3 # -- Begin function _ZN18btGImpactMeshShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN18btGImpactMeshShape15setLocalScalingERK9btVector3,@function
_ZN18btGImpactMeshShape15setLocalScalingERK9btVector3: # @_ZN18btGImpactMeshShape15setLocalScalingERK9btVector3
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
	move	$fp, $a0
	vld	$vr0, $a1, 0
	ld.w	$s1, $a0, 188
	vst	$vr0, $a0, 64
	beqz	$s1, .LBB59_3
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	slli.d	$a0, $s1, 3
	addi.d	$s2, $a0, -8
	.p2align	4, , 16
.LBB59_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 200
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 48
	addi.d	$s1, $s1, -1
	move	$a1, $s0
	jirl	$ra, $a2, 0
	addi.d	$s2, $s2, -8
	bnez	$s1, .LBB59_2
.LBB59_3:                               # %._crit_edge
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 60
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end59:
	.size	_ZN18btGImpactMeshShape15setLocalScalingERK9btVector3, .Lfunc_end59-_ZN18btGImpactMeshShape15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape7getNameEv,"axG",@progbits,_ZNK18btGImpactMeshShape7getNameEv,comdat
	.weak	_ZNK18btGImpactMeshShape7getNameEv # -- Begin function _ZNK18btGImpactMeshShape7getNameEv
	.p2align	5
	.type	_ZNK18btGImpactMeshShape7getNameEv,@function
_ZNK18btGImpactMeshShape7getNameEv:     # @_ZNK18btGImpactMeshShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ret
.Lfunc_end60:
	.size	_ZNK18btGImpactMeshShape7getNameEv, .Lfunc_end60-_ZNK18btGImpactMeshShape7getNameEv
                                        # -- End function
	.section	.text._ZN18btGImpactMeshShape9setMarginEf,"axG",@progbits,_ZN18btGImpactMeshShape9setMarginEf,comdat
	.weak	_ZN18btGImpactMeshShape9setMarginEf # -- Begin function _ZN18btGImpactMeshShape9setMarginEf
	.p2align	5
	.type	_ZN18btGImpactMeshShape9setMarginEf,@function
_ZN18btGImpactMeshShape9setMarginEf:    # @_ZN18btGImpactMeshShape9setMarginEf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	move	$fp, $a0
	ld.w	$s0, $a0, 188
	fst.s	$fa0, $a0, 24
	beqz	$s0, .LBB61_3
# %bb.1:                                # %.lr.ph
	fmov.s	$fs0, $fa0
	slli.d	$a0, $s0, 3
	addi.d	$s1, $a0, -8
	.p2align	4, , 16
.LBB61_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 200
	ldx.d	$a0, $a0, $s1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 80
	addi.d	$s0, $s0, -1
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
	addi.d	$s1, $s1, -8
	bnez	$s0, .LBB61_2
.LBB61_3:                               # %._crit_edge
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 60
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end61:
	.size	_ZN18btGImpactMeshShape9setMarginEf, .Lfunc_end61-_ZN18btGImpactMeshShape9setMarginEf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN18btGImpactMeshShape13calcLocalAABBEv
.LCPI62_0:
	.word	0x7f7fffff                      # float 3.40282347E+38
.LCPI62_1:
	.word	0xff7fffff                      # float -3.40282347E+38
	.section	.text._ZN18btGImpactMeshShape13calcLocalAABBEv,"axG",@progbits,_ZN18btGImpactMeshShape13calcLocalAABBEv,comdat
	.weak	_ZN18btGImpactMeshShape13calcLocalAABBEv
	.p2align	5
	.type	_ZN18btGImpactMeshShape13calcLocalAABBEv,@function
_ZN18btGImpactMeshShape13calcLocalAABBEv: # @_ZN18btGImpactMeshShape13calcLocalAABBEv
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
	move	$fp, $a0
	lu12i.w	$a0, 522239
	ori	$a0, $a0, 4095
	st.w	$a0, $fp, 36
	bstrins.d	$a0, $a0, 62, 32
	st.d	$a0, $fp, 28
	lu12i.w	$a0, -2049
	ori	$a0, $a0, 4095
	ld.w	$s1, $fp, 188
	lu52i.d	$a1, $a0, -9
	st.d	$a1, $fp, 44
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 52
	beqz	$s1, .LBB62_5
# %bb.1:                                # %.lr.ph
	addi.d	$s2, $fp, 28
	pcalau12i	$a0, %pc_hi20(.LCPI62_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI62_0)
	pcalau12i	$a0, %pc_hi20(.LCPI62_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI62_1)
	ld.d	$a0, $fp, 200
	addi.d	$s3, $fp, 44
	slli.d	$a1, $s1, 3
	addi.d	$s4, $a1, -8
	fmov.s	$fa4, $fa1
	fmov.s	$fa2, $fa1
	fmov.s	$fa5, $fa0
	fmov.s	$fa3, $fa0
	b	.LBB62_3
	.p2align	4, , 16
.LBB62_2:                               # %_ZN23btGImpactShapeInterface11updateBoundEv.exit
                                        #   in Loop: Header=BB62_3 Depth=1
	fld.s	$fa6, $s0, 28
	fcmp.clt.s	$fcc0, $fa6, $fa3
	fsel	$fa3, $fa3, $fa6, $fcc0
	fst.s	$fa3, $fp, 28
	fld.s	$fa6, $s0, 32
	fcmp.clt.s	$fcc0, $fa6, $fa5
	addi.d	$a1, $s0, 28
	movcf2gr	$a2, $fcc0
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	fld.s	$fa5, $a2, 4
	fst.s	$fa5, $fp, 32
	fld.s	$fa6, $s0, 36
	fcmp.clt.s	$fcc0, $fa6, $fa0
	movcf2gr	$a2, $fcc0
	masknez	$a3, $s2, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	fld.s	$fa0, $a1, 8
	fst.s	$fa0, $fp, 36
	fld.s	$fa6, $s0, 44
	fcmp.clt.s	$fcc0, $fa2, $fa6
	fsel	$fa2, $fa2, $fa6, $fcc0
	fst.s	$fa2, $fp, 44
	fld.s	$fa6, $s0, 48
	fcmp.clt.s	$fcc0, $fa4, $fa6
	addi.d	$a1, $s0, 44
	movcf2gr	$a2, $fcc0
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	fld.s	$fa4, $a2, 4
	fst.s	$fa4, $fp, 48
	fld.s	$fa6, $s0, 52
	fcmp.clt.s	$fcc0, $fa1, $fa6
	movcf2gr	$a2, $fcc0
	masknez	$a3, $s3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	fld.s	$fa1, $a1, 8
	addi.d	$s1, $s1, -1
	fst.s	$fa1, $fp, 52
	addi.d	$s4, $s4, -8
	beqz	$s1, .LBB62_5
.LBB62_3:                               # =>This Inner Loop Header: Depth=1
	ldx.d	$s0, $a0, $s4
	ld.bu	$a1, $s0, 60
	beqz	$a1, .LBB62_2
# %bb.4:                                #   in Loop: Header=BB62_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 104
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.b	$zero, $s0, 60
	ld.d	$a0, $fp, 200
	fld.s	$fa3, $fp, 28
	fld.s	$fa5, $fp, 32
	fld.s	$fa0, $fp, 36
	fld.s	$fa2, $fp, 44
	fld.s	$fa4, $fp, 48
	fld.s	$fa1, $fp, 52
	ldx.d	$s0, $a0, $s4
	b	.LBB62_2
.LBB62_5:                               # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end62:
	.size	_ZN18btGImpactMeshShape13calcLocalAABBEv, .Lfunc_end62-_ZN18btGImpactMeshShape13calcLocalAABBEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18btGImpactMeshShape10postUpdateEv,"axG",@progbits,_ZN18btGImpactMeshShape10postUpdateEv,comdat
	.weak	_ZN18btGImpactMeshShape10postUpdateEv # -- Begin function _ZN18btGImpactMeshShape10postUpdateEv
	.p2align	5
	.type	_ZN18btGImpactMeshShape10postUpdateEv,@function
_ZN18btGImpactMeshShape10postUpdateEv:  # @_ZN18btGImpactMeshShape10postUpdateEv
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
	move	$fp, $a0
	ld.w	$s0, $a0, 188
	beqz	$s0, .LBB63_3
# %bb.1:                                # %.lr.ph
	slli.d	$a0, $s0, 3
	addi.d	$s1, $a0, -8
	.p2align	4, , 16
.LBB63_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 200
	ldx.d	$a0, $a0, $s1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 112
	addi.d	$s0, $s0, -1
	jirl	$ra, $a1, 0
	addi.d	$s1, $s1, -8
	bnez	$s0, .LBB63_2
.LBB63_3:                               # %._crit_edge
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 60
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end63:
	.size	_ZN18btGImpactMeshShape10postUpdateEv, .Lfunc_end63-_ZN18btGImpactMeshShape10postUpdateEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18btGImpactMeshShape19getGImpactShapeTypeEv,"axG",@progbits,_ZN18btGImpactMeshShape19getGImpactShapeTypeEv,comdat
	.weak	_ZN18btGImpactMeshShape19getGImpactShapeTypeEv # -- Begin function _ZN18btGImpactMeshShape19getGImpactShapeTypeEv
	.p2align	5
	.type	_ZN18btGImpactMeshShape19getGImpactShapeTypeEv,@function
_ZN18btGImpactMeshShape19getGImpactShapeTypeEv: # @_ZN18btGImpactMeshShape19getGImpactShapeTypeEv
# %bb.0:
	ori	$a0, $zero, 2
	ret
.Lfunc_end64:
	.size	_ZN18btGImpactMeshShape19getGImpactShapeTypeEv, .Lfunc_end64-_ZN18btGImpactMeshShape19getGImpactShapeTypeEv
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape19getPrimitiveManagerEv,"axG",@progbits,_ZNK18btGImpactMeshShape19getPrimitiveManagerEv,comdat
	.weak	_ZNK18btGImpactMeshShape19getPrimitiveManagerEv # -- Begin function _ZNK18btGImpactMeshShape19getPrimitiveManagerEv
	.p2align	5
	.type	_ZNK18btGImpactMeshShape19getPrimitiveManagerEv,@function
_ZNK18btGImpactMeshShape19getPrimitiveManagerEv: # @_ZNK18btGImpactMeshShape19getPrimitiveManagerEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end65:
	.size	_ZNK18btGImpactMeshShape19getPrimitiveManagerEv, .Lfunc_end65-_ZNK18btGImpactMeshShape19getPrimitiveManagerEv
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape17getNumChildShapesEv,"axG",@progbits,_ZNK18btGImpactMeshShape17getNumChildShapesEv,comdat
	.weak	_ZNK18btGImpactMeshShape17getNumChildShapesEv # -- Begin function _ZNK18btGImpactMeshShape17getNumChildShapesEv
	.p2align	5
	.type	_ZNK18btGImpactMeshShape17getNumChildShapesEv,@function
_ZNK18btGImpactMeshShape17getNumChildShapesEv: # @_ZNK18btGImpactMeshShape17getNumChildShapesEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end66:
	.size	_ZNK18btGImpactMeshShape17getNumChildShapesEv, .Lfunc_end66-_ZNK18btGImpactMeshShape17getNumChildShapesEv
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape20childrenHasTransformEv,"axG",@progbits,_ZNK18btGImpactMeshShape20childrenHasTransformEv,comdat
	.weak	_ZNK18btGImpactMeshShape20childrenHasTransformEv # -- Begin function _ZNK18btGImpactMeshShape20childrenHasTransformEv
	.p2align	5
	.type	_ZNK18btGImpactMeshShape20childrenHasTransformEv,@function
_ZNK18btGImpactMeshShape20childrenHasTransformEv: # @_ZNK18btGImpactMeshShape20childrenHasTransformEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end67:
	.size	_ZNK18btGImpactMeshShape20childrenHasTransformEv, .Lfunc_end67-_ZNK18btGImpactMeshShape20childrenHasTransformEv
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape22needsRetrieveTrianglesEv,"axG",@progbits,_ZNK18btGImpactMeshShape22needsRetrieveTrianglesEv,comdat
	.weak	_ZNK18btGImpactMeshShape22needsRetrieveTrianglesEv # -- Begin function _ZNK18btGImpactMeshShape22needsRetrieveTrianglesEv
	.p2align	5
	.type	_ZNK18btGImpactMeshShape22needsRetrieveTrianglesEv,@function
_ZNK18btGImpactMeshShape22needsRetrieveTrianglesEv: # @_ZNK18btGImpactMeshShape22needsRetrieveTrianglesEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end68:
	.size	_ZNK18btGImpactMeshShape22needsRetrieveTrianglesEv, .Lfunc_end68-_ZNK18btGImpactMeshShape22needsRetrieveTrianglesEv
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape25needsRetrieveTetrahedronsEv,"axG",@progbits,_ZNK18btGImpactMeshShape25needsRetrieveTetrahedronsEv,comdat
	.weak	_ZNK18btGImpactMeshShape25needsRetrieveTetrahedronsEv # -- Begin function _ZNK18btGImpactMeshShape25needsRetrieveTetrahedronsEv
	.p2align	5
	.type	_ZNK18btGImpactMeshShape25needsRetrieveTetrahedronsEv,@function
_ZNK18btGImpactMeshShape25needsRetrieveTetrahedronsEv: # @_ZNK18btGImpactMeshShape25needsRetrieveTetrahedronsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end69:
	.size	_ZNK18btGImpactMeshShape25needsRetrieveTetrahedronsEv, .Lfunc_end69-_ZNK18btGImpactMeshShape25needsRetrieveTetrahedronsEv
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape17getBulletTriangleEiR17btTriangleShapeEx,"axG",@progbits,_ZNK18btGImpactMeshShape17getBulletTriangleEiR17btTriangleShapeEx,comdat
	.weak	_ZNK18btGImpactMeshShape17getBulletTriangleEiR17btTriangleShapeEx # -- Begin function _ZNK18btGImpactMeshShape17getBulletTriangleEiR17btTriangleShapeEx
	.p2align	5
	.type	_ZNK18btGImpactMeshShape17getBulletTriangleEiR17btTriangleShapeEx,@function
_ZNK18btGImpactMeshShape17getBulletTriangleEiR17btTriangleShapeEx: # @_ZNK18btGImpactMeshShape17getBulletTriangleEiR17btTriangleShapeEx
# %bb.0:
	ret
.Lfunc_end70:
	.size	_ZNK18btGImpactMeshShape17getBulletTriangleEiR17btTriangleShapeEx, .Lfunc_end70-_ZNK18btGImpactMeshShape17getBulletTriangleEiR17btTriangleShapeEx
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape20getBulletTetrahedronEiR20btTetrahedronShapeEx,"axG",@progbits,_ZNK18btGImpactMeshShape20getBulletTetrahedronEiR20btTetrahedronShapeEx,comdat
	.weak	_ZNK18btGImpactMeshShape20getBulletTetrahedronEiR20btTetrahedronShapeEx # -- Begin function _ZNK18btGImpactMeshShape20getBulletTetrahedronEiR20btTetrahedronShapeEx
	.p2align	5
	.type	_ZNK18btGImpactMeshShape20getBulletTetrahedronEiR20btTetrahedronShapeEx,@function
_ZNK18btGImpactMeshShape20getBulletTetrahedronEiR20btTetrahedronShapeEx: # @_ZNK18btGImpactMeshShape20getBulletTetrahedronEiR20btTetrahedronShapeEx
# %bb.0:
	ret
.Lfunc_end71:
	.size	_ZNK18btGImpactMeshShape20getBulletTetrahedronEiR20btTetrahedronShapeEx, .Lfunc_end71-_ZNK18btGImpactMeshShape20getBulletTetrahedronEiR20btTetrahedronShapeEx
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape15lockChildShapesEv,"axG",@progbits,_ZNK18btGImpactMeshShape15lockChildShapesEv,comdat
	.weak	_ZNK18btGImpactMeshShape15lockChildShapesEv # -- Begin function _ZNK18btGImpactMeshShape15lockChildShapesEv
	.p2align	5
	.type	_ZNK18btGImpactMeshShape15lockChildShapesEv,@function
_ZNK18btGImpactMeshShape15lockChildShapesEv: # @_ZNK18btGImpactMeshShape15lockChildShapesEv
# %bb.0:
	ret
.Lfunc_end72:
	.size	_ZNK18btGImpactMeshShape15lockChildShapesEv, .Lfunc_end72-_ZNK18btGImpactMeshShape15lockChildShapesEv
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape17unlockChildShapesEv,"axG",@progbits,_ZNK18btGImpactMeshShape17unlockChildShapesEv,comdat
	.weak	_ZNK18btGImpactMeshShape17unlockChildShapesEv # -- Begin function _ZNK18btGImpactMeshShape17unlockChildShapesEv
	.p2align	5
	.type	_ZNK18btGImpactMeshShape17unlockChildShapesEv,@function
_ZNK18btGImpactMeshShape17unlockChildShapesEv: # @_ZNK18btGImpactMeshShape17unlockChildShapesEv
# %bb.0:
	ret
.Lfunc_end73:
	.size	_ZNK18btGImpactMeshShape17unlockChildShapesEv, .Lfunc_end73-_ZNK18btGImpactMeshShape17unlockChildShapesEv
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape12getChildAabbEiRK11btTransformR9btVector3S4_,"axG",@progbits,_ZNK18btGImpactMeshShape12getChildAabbEiRK11btTransformR9btVector3S4_,comdat
	.weak	_ZNK18btGImpactMeshShape12getChildAabbEiRK11btTransformR9btVector3S4_ # -- Begin function _ZNK18btGImpactMeshShape12getChildAabbEiRK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK18btGImpactMeshShape12getChildAabbEiRK11btTransformR9btVector3S4_,@function
_ZNK18btGImpactMeshShape12getChildAabbEiRK11btTransformR9btVector3S4_: # @_ZNK18btGImpactMeshShape12getChildAabbEiRK11btTransformR9btVector3S4_
# %bb.0:
	ret
.Lfunc_end74:
	.size	_ZNK18btGImpactMeshShape12getChildAabbEiRK11btTransformR9btVector3S4_, .Lfunc_end74-_ZNK18btGImpactMeshShape12getChildAabbEiRK11btTransformR9btVector3S4_
                                        # -- End function
	.section	.text._ZN18btGImpactMeshShape13getChildShapeEi,"axG",@progbits,_ZN18btGImpactMeshShape13getChildShapeEi,comdat
	.weak	_ZN18btGImpactMeshShape13getChildShapeEi # -- Begin function _ZN18btGImpactMeshShape13getChildShapeEi
	.p2align	5
	.type	_ZN18btGImpactMeshShape13getChildShapeEi,@function
_ZN18btGImpactMeshShape13getChildShapeEi: # @_ZN18btGImpactMeshShape13getChildShapeEi
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end75:
	.size	_ZN18btGImpactMeshShape13getChildShapeEi, .Lfunc_end75-_ZN18btGImpactMeshShape13getChildShapeEi
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape13getChildShapeEi,"axG",@progbits,_ZNK18btGImpactMeshShape13getChildShapeEi,comdat
	.weak	_ZNK18btGImpactMeshShape13getChildShapeEi # -- Begin function _ZNK18btGImpactMeshShape13getChildShapeEi
	.p2align	5
	.type	_ZNK18btGImpactMeshShape13getChildShapeEi,@function
_ZNK18btGImpactMeshShape13getChildShapeEi: # @_ZNK18btGImpactMeshShape13getChildShapeEi
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end76:
	.size	_ZNK18btGImpactMeshShape13getChildShapeEi, .Lfunc_end76-_ZNK18btGImpactMeshShape13getChildShapeEi
                                        # -- End function
	.section	.text._ZNK18btGImpactMeshShape17getChildTransformEi,"axG",@progbits,_ZNK18btGImpactMeshShape17getChildTransformEi,comdat
	.weak	_ZNK18btGImpactMeshShape17getChildTransformEi # -- Begin function _ZNK18btGImpactMeshShape17getChildTransformEi
	.p2align	5
	.type	_ZNK18btGImpactMeshShape17getChildTransformEi,@function
_ZNK18btGImpactMeshShape17getChildTransformEi: # @_ZNK18btGImpactMeshShape17getChildTransformEi
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end77:
	.size	_ZNK18btGImpactMeshShape17getChildTransformEi, .Lfunc_end77-_ZNK18btGImpactMeshShape17getChildTransformEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18btGImpactMeshShape17setChildTransformEiRK11btTransform,"axG",@progbits,_ZN18btGImpactMeshShape17setChildTransformEiRK11btTransform,comdat
	.weak	_ZN18btGImpactMeshShape17setChildTransformEiRK11btTransform # -- Begin function _ZN18btGImpactMeshShape17setChildTransformEiRK11btTransform
	.p2align	5
	.type	_ZN18btGImpactMeshShape17setChildTransformEiRK11btTransform,@function
_ZN18btGImpactMeshShape17setChildTransformEiRK11btTransform: # @_ZN18btGImpactMeshShape17setChildTransformEiRK11btTransform
# %bb.0:
	ret
.Lfunc_end78:
	.size	_ZN18btGImpactMeshShape17setChildTransformEiRK11btTransform, .Lfunc_end78-_ZN18btGImpactMeshShape17setChildTransformEiRK11btTransform
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
	beqz	$a0, .LBB79_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	ret
.LBB79_2:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB79_4
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
.LBB79_4:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcalau12i	$a0, %pc_hi20(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	ret
.Lfunc_end79:
	.size	_ZN11btMatrix3x311getIdentityEv, .Lfunc_end79-_ZN11btMatrix3x311getIdentityEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI11btTransformED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI11btTransformED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI11btTransformED2Ev # -- Begin function _ZN20btAlignedObjectArrayI11btTransformED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI11btTransformED2Ev,@function
_ZN20btAlignedObjectArrayI11btTransformED2Ev: # @_ZN20btAlignedObjectArrayI11btTransformED2Ev
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
	beqz	$a0, .LBB80_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB80_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB80_3:                               # %_ZN20btAlignedObjectArrayI11btTransformE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end80:
	.size	_ZN20btAlignedObjectArrayI11btTransformED2Ev, .Lfunc_end80-_ZN20btAlignedObjectArrayI11btTransformED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN23btGImpactShapeInterfaceD2Ev,"axG",@progbits,_ZN23btGImpactShapeInterfaceD2Ev,comdat
	.weak	_ZN23btGImpactShapeInterfaceD2Ev # -- Begin function _ZN23btGImpactShapeInterfaceD2Ev
	.p2align	5
	.type	_ZN23btGImpactShapeInterfaceD2Ev,@function
_ZN23btGImpactShapeInterfaceD2Ev:       # @_ZN23btGImpactShapeInterfaceD2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	pcalau12i	$a0, %pc_hi20(_ZTV23btGImpactShapeInterface+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV23btGImpactShapeInterface+16)
	ld.d	$a0, $fp, 104
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB81_3
# %bb.1:
	ld.b	$a1, $fp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB81_3
# %bb.2:
.Ltmp76:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
.LBB81_3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 112
	st.d	$zero, $fp, 104
	st.d	$zero, $fp, 92
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN14btConcaveShapeD2Ev)
	jr	$t8
.LBB81_4:
.Ltmp78:                                # EH_LABEL
	move	$s0, $a0
.Ltmp79:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB81_6:
.Ltmp81:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end81:
	.size	_ZN23btGImpactShapeInterfaceD2Ev, .Lfunc_end81-_ZN23btGImpactShapeInterfaceD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN23btGImpactShapeInterfaceD2Ev,"aG",@progbits,_ZN23btGImpactShapeInterfaceD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table81:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp76-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin8          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Ltmp79-.Ltmp77                #   Call between .Ltmp77 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin8          # >> Call Site 3 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin8          #     jumps to .Ltmp81
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp80-.Lfunc_begin8          # >> Call Site 4 <<
	.uleb128 .Lfunc_end81-.Ltmp80           #   Call between .Ltmp80 and .Lfunc_end81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN23btGImpactShapeInterfaceD0Ev,"axG",@progbits,_ZN23btGImpactShapeInterfaceD0Ev,comdat
	.weak	_ZN23btGImpactShapeInterfaceD0Ev # -- Begin function _ZN23btGImpactShapeInterfaceD0Ev
	.p2align	5
	.type	_ZN23btGImpactShapeInterfaceD0Ev,@function
_ZN23btGImpactShapeInterfaceD0Ev:       # @_ZN23btGImpactShapeInterfaceD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end82:
	.size	_ZN23btGImpactShapeInterfaceD0Ev, .Lfunc_end82-_ZN23btGImpactShapeInterfaceD0Ev
                                        # -- End function
	.section	.text._ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx,"axG",@progbits,_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx,comdat
	.weak	_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx # -- Begin function _ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx
	.p2align	5
	.type	_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx,@function
_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx: # @_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx
	.cfi_startproc
# %bb.0:
	ld.w	$a3, $a0, 80
	ld.w	$a4, $a0, 88
	ld.d	$a5, $a0, 72
	mul.w	$a1, $a3, $a1
	ori	$a3, $zero, 3
	add.d	$a1, $a5, $a1
	bne	$a4, $a3, .LBB83_2
# %bb.1:
	ld.h	$a6, $a1, 0
	ld.h	$a5, $a1, 2
	ld.h	$a1, $a1, 4
	b	.LBB83_3
.LBB83_2:
	ld.w	$a6, $a1, 0
	ld.w	$a5, $a1, 4
	ld.w	$a1, $a1, 8
.LBB83_3:                               # %_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager11get_indicesEiRiS1_S1_.exit
	ld.w	$a4, $a0, 64
	ld.w	$a7, $a0, 60
	ld.d	$a3, $a0, 48
	fld.s	$fa0, $a0, 24
	mul.w	$a6, $a4, $a6
	ori	$t0, $zero, 1
	add.d	$a6, $a3, $a6
	bne	$a7, $t0, .LBB83_5
# %bb.4:
	fld.d	$fa1, $a6, 0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 64
	fld.s	$fa0, $a0, 28
	fld.d	$fa1, $a6, 8
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 68
	fld.s	$fa0, $a0, 32
	fld.d	$fa1, $a6, 16
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 72
	mul.w	$a5, $a4, $a5
	fld.s	$fa0, $a0, 24
	fldx.d	$fa1, $a3, $a5
	add.d	$a5, $a3, $a5
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 80
	fld.s	$fa0, $a0, 28
	fld.d	$fa1, $a5, 8
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 84
	fld.s	$fa0, $a0, 32
	fld.d	$fa1, $a5, 16
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 88
	mul.w	$a1, $a4, $a1
	fld.s	$fa0, $a0, 24
	fldx.d	$fa1, $a3, $a1
	add.d	$a1, $a3, $a1
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 96
	fld.s	$fa0, $a0, 28
	fld.d	$fa1, $a1, 8
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 100
	fld.s	$fa0, $a0, 32
	fld.d	$fa1, $a1, 16
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	b	.LBB83_6
.LBB83_5:
	fld.s	$fa1, $a6, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 64
	fld.s	$fa0, $a6, 4
	fld.s	$fa1, $a0, 28
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 68
	fld.s	$fa0, $a6, 8
	fld.s	$fa1, $a0, 32
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 72
	mul.w	$a5, $a4, $a5
	fld.s	$fa0, $a0, 24
	fldx.s	$fa1, $a3, $a5
	add.d	$a5, $a3, $a5
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 80
	fld.s	$fa0, $a5, 4
	fld.s	$fa1, $a0, 28
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 84
	fld.s	$fa0, $a5, 8
	fld.s	$fa1, $a0, 32
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 88
	mul.w	$a1, $a4, $a1
	fld.s	$fa0, $a0, 24
	fldx.s	$fa1, $a3, $a1
	add.d	$a1, $a3, $a1
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 96
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a0, 28
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 100
	fld.s	$fa0, $a1, 8
	fld.s	$fa1, $a0, 32
	fmul.s	$fa0, $fa0, $fa1
.LBB83_6:                               # %_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager10get_vertexEiR9btVector3.exit8
	ld.d	$a1, $a2, 0
	fst.s	$fa0, $a2, 104
	fld.s	$fa0, $a0, 8
	ld.d	$a1, $a1, 80
	move	$a0, $a2
	jr	$a1
.Lfunc_end83:
	.size	_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx, .Lfunc_end83-_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev # -- Begin function _ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev,@function
_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev: # @_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev
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
	beqz	$a0, .LBB84_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB84_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB84_3:                               # %_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end84:
	.size	_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev, .Lfunc_end84-_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev
	.cfi_endproc
                                        # -- End function
	.type	_ZTV22btGImpactCompoundShape,@object # @_ZTV22btGImpactCompoundShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV22btGImpactCompoundShape
	.p2align	3, 0x0
_ZTV22btGImpactCompoundShape:
	.dword	0
	.dword	_ZTI22btGImpactCompoundShape
	.dword	_ZN22btGImpactCompoundShapeD2Ev
	.dword	_ZN22btGImpactCompoundShapeD0Ev
	.dword	_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3
	.dword	_ZNK23btGImpactShapeInterface15getLocalScalingEv
	.dword	_ZNK22btGImpactCompoundShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK22btGImpactCompoundShape7getNameEv
	.dword	_ZN23btGImpactShapeInterface9setMarginEf
	.dword	_ZNK14btConcaveShape9getMarginEv
	.dword	_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.dword	_ZN23btGImpactShapeInterface13calcLocalAABBEv
	.dword	_ZN23btGImpactShapeInterface10postUpdateEv
	.dword	_ZNK23btGImpactShapeInterface12getShapeTypeEv
	.dword	_ZN22btGImpactCompoundShape19getGImpactShapeTypeEv
	.dword	_ZNK22btGImpactCompoundShape19getPrimitiveManagerEv
	.dword	_ZNK22btGImpactCompoundShape17getNumChildShapesEv
	.dword	_ZNK22btGImpactCompoundShape20childrenHasTransformEv
	.dword	_ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv
	.dword	_ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv
	.dword	_ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx
	.dword	_ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx
	.dword	_ZNK23btGImpactShapeInterface15lockChildShapesEv
	.dword	_ZNK23btGImpactShapeInterface17unlockChildShapesEv
	.dword	_ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_
	.dword	_ZN22btGImpactCompoundShape13getChildShapeEi
	.dword	_ZNK22btGImpactCompoundShape13getChildShapeEi
	.dword	_ZNK22btGImpactCompoundShape17getChildTransformEi
	.dword	_ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform
	.dword	_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
	.size	_ZTV22btGImpactCompoundShape, 272

	.type	_ZTI22btGImpactCompoundShape,@object # @_ZTI22btGImpactCompoundShape
	.globl	_ZTI22btGImpactCompoundShape
	.p2align	3, 0x0
_ZTI22btGImpactCompoundShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS22btGImpactCompoundShape
	.dword	_ZTI23btGImpactShapeInterface
	.size	_ZTI22btGImpactCompoundShape, 24

	.type	_ZTS22btGImpactCompoundShape,@object # @_ZTS22btGImpactCompoundShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS22btGImpactCompoundShape
_ZTS22btGImpactCompoundShape:
	.asciz	"22btGImpactCompoundShape"
	.size	_ZTS22btGImpactCompoundShape, 25

	.type	_ZTI23btGImpactShapeInterface,@object # @_ZTI23btGImpactShapeInterface
	.section	.data.rel.ro._ZTI23btGImpactShapeInterface,"awG",@progbits,_ZTI23btGImpactShapeInterface,comdat
	.weak	_ZTI23btGImpactShapeInterface
	.p2align	3, 0x0
_ZTI23btGImpactShapeInterface:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS23btGImpactShapeInterface
	.dword	_ZTI14btConcaveShape
	.size	_ZTI23btGImpactShapeInterface, 24

	.type	_ZTS23btGImpactShapeInterface,@object # @_ZTS23btGImpactShapeInterface
	.section	.rodata._ZTS23btGImpactShapeInterface,"aG",@progbits,_ZTS23btGImpactShapeInterface,comdat
	.weak	_ZTS23btGImpactShapeInterface
_ZTS23btGImpactShapeInterface:
	.asciz	"23btGImpactShapeInterface"
	.size	_ZTS23btGImpactShapeInterface, 26

	.type	_ZTV22btGImpactMeshShapePart,@object # @_ZTV22btGImpactMeshShapePart
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV22btGImpactMeshShapePart
	.p2align	3, 0x0
_ZTV22btGImpactMeshShapePart:
	.dword	0
	.dword	_ZTI22btGImpactMeshShapePart
	.dword	_ZN22btGImpactMeshShapePartD2Ev
	.dword	_ZN22btGImpactMeshShapePartD0Ev
	.dword	_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3
	.dword	_ZNK22btGImpactMeshShapePart15getLocalScalingEv
	.dword	_ZNK22btGImpactMeshShapePart21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK22btGImpactMeshShapePart7getNameEv
	.dword	_ZN22btGImpactMeshShapePart9setMarginEf
	.dword	_ZNK22btGImpactMeshShapePart9getMarginEv
	.dword	_ZNK22btGImpactMeshShapePart19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.dword	_ZN23btGImpactShapeInterface13calcLocalAABBEv
	.dword	_ZN23btGImpactShapeInterface10postUpdateEv
	.dword	_ZNK23btGImpactShapeInterface12getShapeTypeEv
	.dword	_ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv
	.dword	_ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv
	.dword	_ZNK22btGImpactMeshShapePart17getNumChildShapesEv
	.dword	_ZNK22btGImpactMeshShapePart20childrenHasTransformEv
	.dword	_ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv
	.dword	_ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv
	.dword	_ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx
	.dword	_ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx
	.dword	_ZNK22btGImpactMeshShapePart15lockChildShapesEv
	.dword	_ZNK22btGImpactMeshShapePart17unlockChildShapesEv
	.dword	_ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_
	.dword	_ZN22btGImpactMeshShapePart13getChildShapeEi
	.dword	_ZNK22btGImpactMeshShapePart13getChildShapeEi
	.dword	_ZNK22btGImpactMeshShapePart17getChildTransformEi
	.dword	_ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform
	.dword	_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
	.size	_ZTV22btGImpactMeshShapePart, 272

	.type	_ZTI22btGImpactMeshShapePart,@object # @_ZTI22btGImpactMeshShapePart
	.globl	_ZTI22btGImpactMeshShapePart
	.p2align	3, 0x0
_ZTI22btGImpactMeshShapePart:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS22btGImpactMeshShapePart
	.dword	_ZTI23btGImpactShapeInterface
	.size	_ZTI22btGImpactMeshShapePart, 24

	.type	_ZTS22btGImpactMeshShapePart,@object # @_ZTS22btGImpactMeshShapePart
	.section	.rodata,"a",@progbits
	.globl	_ZTS22btGImpactMeshShapePart
_ZTS22btGImpactMeshShapePart:
	.asciz	"22btGImpactMeshShapePart"
	.size	_ZTS22btGImpactMeshShapePart, 25

	.type	_ZTV18btGImpactMeshShape,@object # @_ZTV18btGImpactMeshShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV18btGImpactMeshShape
	.p2align	3, 0x0
_ZTV18btGImpactMeshShape:
	.dword	0
	.dword	_ZTI18btGImpactMeshShape
	.dword	_ZN18btGImpactMeshShapeD2Ev
	.dword	_ZN18btGImpactMeshShapeD0Ev
	.dword	_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN18btGImpactMeshShape15setLocalScalingERK9btVector3
	.dword	_ZNK23btGImpactShapeInterface15getLocalScalingEv
	.dword	_ZNK18btGImpactMeshShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK18btGImpactMeshShape7getNameEv
	.dword	_ZN18btGImpactMeshShape9setMarginEf
	.dword	_ZNK14btConcaveShape9getMarginEv
	.dword	_ZNK18btGImpactMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.dword	_ZN18btGImpactMeshShape13calcLocalAABBEv
	.dword	_ZN18btGImpactMeshShape10postUpdateEv
	.dword	_ZNK23btGImpactShapeInterface12getShapeTypeEv
	.dword	_ZN18btGImpactMeshShape19getGImpactShapeTypeEv
	.dword	_ZNK18btGImpactMeshShape19getPrimitiveManagerEv
	.dword	_ZNK18btGImpactMeshShape17getNumChildShapesEv
	.dword	_ZNK18btGImpactMeshShape20childrenHasTransformEv
	.dword	_ZNK18btGImpactMeshShape22needsRetrieveTrianglesEv
	.dword	_ZNK18btGImpactMeshShape25needsRetrieveTetrahedronsEv
	.dword	_ZNK18btGImpactMeshShape17getBulletTriangleEiR17btTriangleShapeEx
	.dword	_ZNK18btGImpactMeshShape20getBulletTetrahedronEiR20btTetrahedronShapeEx
	.dword	_ZNK18btGImpactMeshShape15lockChildShapesEv
	.dword	_ZNK18btGImpactMeshShape17unlockChildShapesEv
	.dword	_ZNK18btGImpactMeshShape12getChildAabbEiRK11btTransformR9btVector3S4_
	.dword	_ZN18btGImpactMeshShape13getChildShapeEi
	.dword	_ZNK18btGImpactMeshShape13getChildShapeEi
	.dword	_ZNK18btGImpactMeshShape17getChildTransformEi
	.dword	_ZN18btGImpactMeshShape17setChildTransformEiRK11btTransform
	.dword	_ZNK18btGImpactMeshShape7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
	.size	_ZTV18btGImpactMeshShape, 272

	.type	_ZTI18btGImpactMeshShape,@object # @_ZTI18btGImpactMeshShape
	.globl	_ZTI18btGImpactMeshShape
	.p2align	3, 0x0
_ZTI18btGImpactMeshShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18btGImpactMeshShape
	.dword	_ZTI23btGImpactShapeInterface
	.size	_ZTI18btGImpactMeshShape, 24

	.type	_ZTS18btGImpactMeshShape,@object # @_ZTS18btGImpactMeshShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS18btGImpactMeshShape
_ZTS18btGImpactMeshShape:
	.asciz	"18btGImpactMeshShape"
	.size	_ZTS18btGImpactMeshShape, 21

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

	.type	_ZTV23btGImpactShapeInterface,@object # @_ZTV23btGImpactShapeInterface
	.section	.data.rel.ro._ZTV23btGImpactShapeInterface,"awG",@progbits,_ZTV23btGImpactShapeInterface,comdat
	.weak	_ZTV23btGImpactShapeInterface
	.p2align	3, 0x0
_ZTV23btGImpactShapeInterface:
	.dword	0
	.dword	_ZTI23btGImpactShapeInterface
	.dword	_ZN23btGImpactShapeInterfaceD2Ev
	.dword	_ZN23btGImpactShapeInterfaceD0Ev
	.dword	_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3
	.dword	_ZNK23btGImpactShapeInterface15getLocalScalingEv
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZN23btGImpactShapeInterface9setMarginEf
	.dword	_ZNK14btConcaveShape9getMarginEv
	.dword	_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.dword	_ZN23btGImpactShapeInterface13calcLocalAABBEv
	.dword	_ZN23btGImpactShapeInterface10postUpdateEv
	.dword	_ZNK23btGImpactShapeInterface12getShapeTypeEv
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZNK23btGImpactShapeInterface15lockChildShapesEv
	.dword	_ZNK23btGImpactShapeInterface17unlockChildShapesEv
	.dword	_ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
	.size	_ZTV23btGImpactShapeInterface, 272

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GImpactCompound"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"GImpactMeshShapePart"
	.size	.L.str.1, 21

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"GImpactMesh"
	.size	.L.str.2, 12

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
	.addrsig_sym _ZTI22btGImpactCompoundShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS22btGImpactCompoundShape
	.addrsig_sym _ZTI23btGImpactShapeInterface
	.addrsig_sym _ZTS23btGImpactShapeInterface
	.addrsig_sym _ZTI14btConcaveShape
	.addrsig_sym _ZTI22btGImpactMeshShapePart
	.addrsig_sym _ZTS22btGImpactMeshShapePart
	.addrsig_sym _ZTI18btGImpactMeshShape
	.addrsig_sym _ZTS18btGImpactMeshShape
	.addrsig_sym _ZZN11btTransform11getIdentityEvE17identityTransform
	.addrsig_sym _ZGVZN11btTransform11getIdentityEvE17identityTransform
	.addrsig_sym _ZZN11btMatrix3x311getIdentityEvE14identityMatrix
	.addrsig_sym _ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix
