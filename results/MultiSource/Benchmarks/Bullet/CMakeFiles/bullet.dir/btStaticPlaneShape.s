	.file	"btStaticPlaneShape.cpp"
	.text
	.globl	_ZN18btStaticPlaneShapeC2ERK9btVector3f # -- Begin function _ZN18btStaticPlaneShapeC2ERK9btVector3f
	.p2align	5
	.type	_ZN18btStaticPlaneShapeC2ERK9btVector3f,@function
_ZN18btStaticPlaneShapeC2ERK9btVector3f: # @_ZN18btStaticPlaneShapeC2ERK9btVector3f
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
	fmov.s	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV18btStaticPlaneShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18btStaticPlaneShape+16)
	fld.s	$fa0, $fp, 4
	fld.s	$fa1, $fp, 0
	fld.s	$fa2, $fp, 8
	st.d	$a0, $s0, 0
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 60
	st.d	$a1, $s0, 68
	fst.s	$fs0, $s0, 76
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 80
	ori	$a0, $zero, 28
	st.w	$a0, $s0, 8
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZN18btStaticPlaneShapeC2ERK9btVector3f, .Lfunc_end0-_ZN18btStaticPlaneShapeC2ERK9btVector3f
	.cfi_endproc
                                        # -- End function
	.globl	_ZN18btStaticPlaneShapeD2Ev     # -- Begin function _ZN18btStaticPlaneShapeD2Ev
	.p2align	5
	.type	_ZN18btStaticPlaneShapeD2Ev,@function
_ZN18btStaticPlaneShapeD2Ev:            # @_ZN18btStaticPlaneShapeD2Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN14btConcaveShapeD2Ev)
	jr	$t8
.Lfunc_end1:
	.size	_ZN18btStaticPlaneShapeD2Ev, .Lfunc_end1-_ZN18btStaticPlaneShapeD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN18btStaticPlaneShapeD0Ev     # -- Begin function _ZN18btStaticPlaneShapeD0Ev
	.p2align	5
	.type	_ZN18btStaticPlaneShapeD0Ev,@function
_ZN18btStaticPlaneShapeD0Ev:            # @_ZN18btStaticPlaneShapeD0Ev
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
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN14btConcaveShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZN18btStaticPlaneShapeD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB2_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN18btStaticPlaneShapeD0Ev, .Lfunc_end2-_ZN18btStaticPlaneShapeD0Ev
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNK18btStaticPlaneShape7getAabbERK11btTransformR9btVector3S4_
.LCPI3_0:
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0x00000000                      # float 0
.LCPI3_1:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x00000000                      # float 0
	.text
	.globl	_ZNK18btStaticPlaneShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK18btStaticPlaneShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK18btStaticPlaneShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK18btStaticPlaneShape7getAabbERK11btTransformR9btVector3S4_
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_0)
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI3_1)
	vst	$vr0, $a2, 0
	vst	$vr1, $a3, 0
	ret
.Lfunc_end3:
	.size	_ZNK18btStaticPlaneShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end3-_ZNK18btStaticPlaneShape7getAabbERK11btTransformR9btVector3S4_
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK18btStaticPlaneShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
.LCPI4_0:
	.word	0x3f3504f3                      # float 0.707106769
	.text
	.globl	_ZNK18btStaticPlaneShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.p2align	5
	.type	_ZNK18btStaticPlaneShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_,@function
_ZNK18btStaticPlaneShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_: # @_ZNK18btStaticPlaneShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
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
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 64                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	.cfi_offset 58, -72
	.cfi_offset 59, -80
	.cfi_offset 60, -88
	.cfi_offset 61, -96
	pcalau12i	$a4, %pc_hi20(.LCPI4_0)
	fld.s	$fa7, $a4, %pc_lo12(.LCPI4_0)
	fld.s	$fa0, $a3, 0
	fld.s	$fa2, $a2, 0
	fld.s	$fa1, $a3, 4
	fld.s	$fa5, $a0, 68
	fld.s	$fa3, $a2, 4
	fld.s	$fa4, $a3, 8
	fld.s	$fa6, $a2, 8
	fabs.s	$ft0, $fa5
	fcmp.cule.s	$fcc0, $ft0, $fa7
	move	$fp, $a1
	bcnez	$fcc0, .LBB4_2
# %bb.1:
	fld.s	$fa7, $a0, 64
	fmul.s	$ft0, $fa5, $fa5
	fmadd.s	$ft0, $fa7, $fa7, $ft0
	frsqrt.s	$ft2, $ft0
	fneg.s	$ft1, $fa5
	fld.s	$ft6, $a0, 60
	fmul.s	$ft1, $ft2, $ft1
	fmul.s	$ft4, $fa7, $ft2
	fmul.s	$ft0, $ft0, $ft2
	fneg.s	$ft2, $ft6
	fmul.s	$ft2, $ft4, $ft2
	fmul.s	$ft3, $ft6, $ft1
	movgr2fr.w	$ft5, $zero
	b	.LBB4_3
.LBB4_2:
	fld.s	$fa7, $a0, 64
	fld.s	$ft6, $a0, 60
	fmul.s	$ft0, $fa7, $fa7
	fmadd.s	$ft3, $ft6, $ft6, $ft0
	frsqrt.s	$ft4, $ft3
	fneg.s	$ft0, $fa7
	fmul.s	$ft5, $ft4, $ft0
	fmul.s	$ft1, $ft6, $ft4
	fneg.s	$ft0, $fa5
	fmul.s	$ft0, $ft1, $ft0
	fmul.s	$ft2, $fa5, $ft5
	fmul.s	$ft3, $ft3, $ft4
	movgr2fr.w	$ft4, $zero
.LBB4_3:                                # %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
	fld.s	$ft7, $a0, 76
	fadd.s	$ft8, $fa0, $fa2
	vldi	$vr17, -1184
	fmul.s	$ft8, $ft8, $ft9
	fadd.s	$ft10, $fa4, $fa6
	fmul.s	$ft10, $ft10, $ft9
	fadd.s	$ft11, $fa1, $fa3
	fmul.s	$ft11, $ft11, $ft9
	fmul.s	$ft12, $ft11, $fa7
	fmadd.s	$ft12, $ft6, $ft8, $ft12
	fmadd.s	$ft12, $fa5, $ft10, $ft12
	fsub.s	$ft7, $ft12, $ft7
	fmul.s	$ft6, $ft6, $ft7
	fsub.s	$ft6, $ft8, $ft6
	fmul.s	$fa7, $fa7, $ft7
	fsub.s	$fa7, $ft11, $fa7
	fmul.s	$fa5, $fa5, $ft7
	fsub.s	$fa5, $ft10, $fa5
	fsub.s	$fa4, $fa4, $fa6
	fmul.s	$fa4, $fa4, $ft9
	fsub.s	$fa0, $fa0, $fa2
	fmul.s	$fa0, $fa0, $ft9
	fsub.s	$fa1, $fa1, $fa3
	fmul.s	$fa1, $fa1, $ft9
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa4, $fa4, $fa0
	fsqrt.s	$fa0, $fa0
	fmul.s	$fa1, $fa0, $ft5
	fmul.s	$fa2, $fa0, $ft1
	fmul.s	$fa3, $fa0, $ft4
	fadd.s	$fa4, $fa1, $ft6
	fadd.s	$fa6, $fa2, $fa7
	fadd.s	$ft1, $fa3, $fa5
	fmul.s	$fs0, $fa0, $ft0
	fmul.s	$fs1, $fa0, $ft2
	fmul.s	$fs2, $fa0, $ft3
	fadd.s	$fa0, $fs0, $fa4
	fadd.s	$ft0, $fs1, $fa6
	fadd.s	$ft2, $fs2, $ft1
	movfr2gr.s	$s0, $fa0
	movfr2gr.s	$a0, $ft0
	bstrins.d	$s0, $a0, 63, 32
	movfr2gr.s	$a0, $ft2
	fsub.s	$fa0, $fa4, $fs0
	fsub.s	$fa4, $fa6, $fs1
	fsub.s	$fa6, $ft1, $fs2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa6
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 32
	st.d	$a2, $sp, 40
	fsub.s	$fs3, $ft6, $fa1
	fsub.s	$fs4, $fa7, $fa2
	fsub.s	$fs5, $fa5, $fa3
	fsub.s	$fa0, $fs3, $fs0
	fsub.s	$fa1, $fs4, $fs1
	fsub.s	$fa2, $fs5, $fs2
	movfr2gr.s	$s1, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$s1, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	ld.d	$a2, $fp, 0
	bstrpick.d	$s2, $a1, 31, 0
	st.d	$s1, $sp, 48
	st.d	$s2, $sp, 56
	ld.d	$a4, $a2, 16
	bstrpick.d	$s3, $a0, 31, 0
	st.d	$s0, $sp, 16
	st.d	$s3, $sp, 24
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	fadd.s	$fa0, $fs0, $fs3
	fadd.s	$fa1, $fs1, $fs4
	fadd.s	$fa2, $fs2, $fs5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	ld.d	$a0, $fp, 0
	st.d	$a1, $sp, 40
	st.d	$s0, $sp, 48
	st.d	$s3, $sp, 56
	ld.d	$a4, $a0, 16
	st.d	$s1, $sp, 16
	st.d	$s2, $sp, 24
	addi.d	$a1, $sp, 16
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	jirl	$ra, $a4, 0
	fld.d	$fs5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end4:
	.size	_ZNK18btStaticPlaneShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_, .Lfunc_end4-_ZNK18btStaticPlaneShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK18btStaticPlaneShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK18btStaticPlaneShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK18btStaticPlaneShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK18btStaticPlaneShape21calculateLocalInertiaEfR9btVector3: # @_ZNK18btStaticPlaneShape21calculateLocalInertiaEfR9btVector3
# %bb.0:
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 0
	ret
.Lfunc_end5:
	.size	_ZNK18btStaticPlaneShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end5-_ZNK18btStaticPlaneShape21calculateLocalInertiaEfR9btVector3
                                        # -- End function
	.globl	_ZN18btStaticPlaneShape15setLocalScalingERK9btVector3 # -- Begin function _ZN18btStaticPlaneShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN18btStaticPlaneShape15setLocalScalingERK9btVector3,@function
_ZN18btStaticPlaneShape15setLocalScalingERK9btVector3: # @_ZN18btStaticPlaneShape15setLocalScalingERK9btVector3
# %bb.0:
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 80
	ret
.Lfunc_end6:
	.size	_ZN18btStaticPlaneShape15setLocalScalingERK9btVector3, .Lfunc_end6-_ZN18btStaticPlaneShape15setLocalScalingERK9btVector3
                                        # -- End function
	.globl	_ZNK18btStaticPlaneShape15getLocalScalingEv # -- Begin function _ZNK18btStaticPlaneShape15getLocalScalingEv
	.p2align	5
	.type	_ZNK18btStaticPlaneShape15getLocalScalingEv,@function
_ZNK18btStaticPlaneShape15getLocalScalingEv: # @_ZNK18btStaticPlaneShape15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 80
	ret
.Lfunc_end7:
	.size	_ZNK18btStaticPlaneShape15getLocalScalingEv, .Lfunc_end7-_ZNK18btStaticPlaneShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK18btStaticPlaneShape7getNameEv,"axG",@progbits,_ZNK18btStaticPlaneShape7getNameEv,comdat
	.weak	_ZNK18btStaticPlaneShape7getNameEv # -- Begin function _ZNK18btStaticPlaneShape7getNameEv
	.p2align	5
	.type	_ZNK18btStaticPlaneShape7getNameEv,@function
_ZNK18btStaticPlaneShape7getNameEv:     # @_ZNK18btStaticPlaneShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end8:
	.size	_ZNK18btStaticPlaneShape7getNameEv, .Lfunc_end8-_ZNK18btStaticPlaneShape7getNameEv
                                        # -- End function
	.section	.text._ZN14btConcaveShape9setMarginEf,"axG",@progbits,_ZN14btConcaveShape9setMarginEf,comdat
	.weak	_ZN14btConcaveShape9setMarginEf # -- Begin function _ZN14btConcaveShape9setMarginEf
	.p2align	5
	.type	_ZN14btConcaveShape9setMarginEf,@function
_ZN14btConcaveShape9setMarginEf:        # @_ZN14btConcaveShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 24
	ret
.Lfunc_end9:
	.size	_ZN14btConcaveShape9setMarginEf, .Lfunc_end9-_ZN14btConcaveShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK14btConcaveShape9getMarginEv,"axG",@progbits,_ZNK14btConcaveShape9getMarginEv,comdat
	.weak	_ZNK14btConcaveShape9getMarginEv # -- Begin function _ZNK14btConcaveShape9getMarginEv
	.p2align	5
	.type	_ZNK14btConcaveShape9getMarginEv,@function
_ZNK14btConcaveShape9getMarginEv:       # @_ZNK14btConcaveShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 24
	ret
.Lfunc_end10:
	.size	_ZNK14btConcaveShape9getMarginEv, .Lfunc_end10-_ZNK14btConcaveShape9getMarginEv
                                        # -- End function
	.type	_ZTV18btStaticPlaneShape,@object # @_ZTV18btStaticPlaneShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV18btStaticPlaneShape
	.p2align	3, 0x0
_ZTV18btStaticPlaneShape:
	.dword	0
	.dword	_ZTI18btStaticPlaneShape
	.dword	_ZN18btStaticPlaneShapeD2Ev
	.dword	_ZN18btStaticPlaneShapeD0Ev
	.dword	_ZNK18btStaticPlaneShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN18btStaticPlaneShape15setLocalScalingERK9btVector3
	.dword	_ZNK18btStaticPlaneShape15getLocalScalingEv
	.dword	_ZNK18btStaticPlaneShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK18btStaticPlaneShape7getNameEv
	.dword	_ZN14btConcaveShape9setMarginEf
	.dword	_ZNK14btConcaveShape9getMarginEv
	.dword	_ZNK18btStaticPlaneShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.size	_ZTV18btStaticPlaneShape, 120

	.type	_ZTI18btStaticPlaneShape,@object # @_ZTI18btStaticPlaneShape
	.globl	_ZTI18btStaticPlaneShape
	.p2align	3, 0x0
_ZTI18btStaticPlaneShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18btStaticPlaneShape
	.dword	_ZTI14btConcaveShape
	.size	_ZTI18btStaticPlaneShape, 24

	.type	_ZTS18btStaticPlaneShape,@object # @_ZTS18btStaticPlaneShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS18btStaticPlaneShape
_ZTS18btStaticPlaneShape:
	.asciz	"18btStaticPlaneShape"
	.size	_ZTS18btStaticPlaneShape, 21

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"STATICPLANE"
	.size	.L.str, 12

	.globl	_ZN18btStaticPlaneShapeC1ERK9btVector3f
	.type	_ZN18btStaticPlaneShapeC1ERK9btVector3f,@function
_ZN18btStaticPlaneShapeC1ERK9btVector3f = _ZN18btStaticPlaneShapeC2ERK9btVector3f
	.globl	_ZN18btStaticPlaneShapeD1Ev
	.type	_ZN18btStaticPlaneShapeD1Ev,@function
_ZN18btStaticPlaneShapeD1Ev = _ZN18btStaticPlaneShapeD2Ev
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
	.addrsig_sym _ZTI18btStaticPlaneShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS18btStaticPlaneShape
	.addrsig_sym _ZTI14btConcaveShape
