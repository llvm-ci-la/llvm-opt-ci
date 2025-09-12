	.file	"ray.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZplRK3VecS1_                   # -- Begin function _ZplRK3VecS1_
	.p2align	5
	.type	_ZplRK3VecS1_,@function
_ZplRK3VecS1_:                          # @_ZplRK3VecS1_
# %bb.0:
	fld.d	$fa0, $a1, 16
	fld.d	$fa1, $a2, 16
	vld	$vr2, $a1, 0
	vld	$vr3, $a2, 0
	fadd.d	$fa0, $fa0, $fa1
	vfadd.d	$vr1, $vr2, $vr3
	vst	$vr1, $a0, 0
	fst.d	$fa0, $a0, 16
	ret
.Lfunc_end0:
	.size	_ZplRK3VecS1_, .Lfunc_end0-_ZplRK3VecS1_
                                        # -- End function
	.globl	_ZmiRK3VecS1_                   # -- Begin function _ZmiRK3VecS1_
	.p2align	5
	.type	_ZmiRK3VecS1_,@function
_ZmiRK3VecS1_:                          # @_ZmiRK3VecS1_
# %bb.0:
	fld.d	$fa0, $a1, 16
	fld.d	$fa1, $a2, 16
	vld	$vr2, $a1, 0
	vld	$vr3, $a2, 0
	fsub.d	$fa0, $fa0, $fa1
	vfsub.d	$vr1, $vr2, $vr3
	vst	$vr1, $a0, 0
	fst.d	$fa0, $a0, 16
	ret
.Lfunc_end1:
	.size	_ZmiRK3VecS1_, .Lfunc_end1-_ZmiRK3VecS1_
                                        # -- End function
	.globl	_ZmldRK3Vec                     # -- Begin function _ZmldRK3Vec
	.p2align	5
	.type	_ZmldRK3Vec,@function
_ZmldRK3Vec:                            # @_ZmldRK3Vec
# %bb.0:
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a1, 8
	fld.d	$fa3, $a1, 16
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa2, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa3
	fst.d	$fa1, $a0, 0
	fst.d	$fa2, $a0, 8
	fst.d	$fa0, $a0, 16
	ret
.Lfunc_end2:
	.size	_ZmldRK3Vec, .Lfunc_end2-_ZmldRK3Vec
                                        # -- End function
	.globl	_Z3dotRK3VecS1_                 # -- Begin function _Z3dotRK3VecS1_
	.p2align	5
	.type	_Z3dotRK3VecS1_,@function
_Z3dotRK3VecS1_:                        # @_Z3dotRK3VecS1_
# %bb.0:
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	vld	$vr2, $a0, 8
	vld	$vr3, $a1, 8
	fmul.d	$fa0, $fa0, $fa1
	vfmul.d	$vr1, $vr2, $vr3
	vreplvei.d	$vr2, $vr1, 0
	fadd.d	$fa0, $fa0, $fa2
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end3:
	.size	_Z3dotRK3VecS1_, .Lfunc_end3-_Z3dotRK3VecS1_
                                        # -- End function
	.globl	_Z7unitiseRK3Vec                # -- Begin function _Z7unitiseRK3Vec
	.p2align	5
	.type	_Z7unitiseRK3Vec,@function
_Z7unitiseRK3Vec:                       # @_Z7unitiseRK3Vec
# %bb.0:
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a1, 16
	fmul.d	$fa3, $fa0, $fa0
	fmul.d	$fa4, $fa1, $fa1
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa4, $fa2, $fa2
	fadd.d	$fa3, $fa3, $fa4
	frsqrt.d	$fa3, $fa3
	fmul.d	$fa0, $fa0, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa2, $fa2, $fa3
	fst.d	$fa0, $a0, 0
	fst.d	$fa1, $a0, 8
	fst.d	$fa2, $a0, 16
	ret
.Lfunc_end4:
	.size	_Z7unitiseRK3Vec, .Lfunc_end4-_Z7unitiseRK3Vec
                                        # -- End function
	.globl	_Z9intersectRK3RayRK5Scene      # -- Begin function _Z9intersectRK3RayRK5Scene
	.p2align	5
	.type	_Z9intersectRK3RayRK5Scene,@function
_Z9intersectRK3RayRK5Scene:             # @_Z9intersectRK3RayRK5Scene
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a3, $a2
	pcalau12i	$a2, %pc_hi20(infinity)
	ld.d	$a4, $a3, 0
	fld.d	$fa0, $a2, %pc_lo12(infinity)
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 24
	ld.d	$a5, $a4, 16
	move	$a4, $a1
	fst.d	$fa0, $sp, 8
	st.d	$zero, $sp, 16
	addi.d	$a2, $sp, 8
	move	$a1, $a3
	move	$a3, $a4
	jirl	$ra, $a5, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	_Z9intersectRK3RayRK5Scene, .Lfunc_end5-_Z9intersectRK3RayRK5Scene
	.cfi_endproc
                                        # -- End function
	.globl	_Z9ray_traceRK3VecRK3RayRK5Scene # -- Begin function _Z9ray_traceRK3VecRK3RayRK5Scene
	.p2align	5
	.type	_Z9ray_traceRK3VecRK3RayRK5Scene,@function
_Z9ray_traceRK3VecRK3RayRK5Scene:       # @_Z9ray_traceRK3VecRK3RayRK5Scene
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	move	$fp, $a2
	pcalau12i	$s2, %pc_hi20(infinity)
	ld.d	$a2, $a2, 0
	fld.d	$fa0, $s2, %pc_lo12(infinity)
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $sp, 48
	ld.d	$a4, $a2, 16
	move	$s0, $a1
	move	$s1, $a0
	fst.d	$fa0, $sp, 32
	st.d	$zero, $sp, 40
	addi.d	$a0, $sp, 112
	addi.d	$a2, $sp, 32
	move	$a1, $fp
	move	$a3, $s0
	jirl	$ra, $a4, 0
	fld.d	$fa3, $sp, 112
	fld.d	$fa1, $s2, %pc_lo12(infinity)
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	bceqz	$fcc0, .LBB6_2
# %bb.1:
	movgr2fr.d	$fa0, $zero
	b	.LBB6_4
.LBB6_2:
	vld	$vr9, $sp, 16                   # 16-byte Folded Reload
	vld	$vr2, $sp, 120
	vld	$vr4, $s1, 0
	vfmul.d	$vr0, $vr2, $vr4
	fld.d	$fa6, $sp, 136
	fld.d	$fa5, $s1, 16
	vreplvei.d	$vr7, $vr0, 0
	vreplvei.d	$vr0, $vr0, 1
	fadd.d	$fa0, $fa7, $fa0
	fmul.d	$fa7, $fa6, $fa5
	fadd.d	$fs0, $fa0, $fa7
	movgr2fr.d	$fa0, $zero
	fcmp.cle.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB6_4
# %bb.3:
	fld.d	$fa0, $s0, 40
	fld.d	$fa7, $s0, 16
	pcalau12i	$a0, %pc_hi20(delta)
	fld.d	$ft0, $a0, %pc_lo12(delta)
	fmul.d	$fa0, $fa3, $fa0
	fadd.d	$fa0, $fa0, $fa7
	fmul.d	$fa6, $fa6, $ft0
	vld	$vr7, $s0, 24
	fadd.d	$fa0, $fa0, $fa6
	vreplvei.d	$vr3, $vr3, 0
	vld	$vr6, $s0, 0
	vfmul.d	$vr3, $vr3, $vr7
	vbitrevi.d	$vr4, $vr4, 63
	fneg.d	$fa5, $fa5
	vfadd.d	$vr3, $vr3, $vr6
	vreplvei.d	$vr6, $vr8, 0
	vfmul.d	$vr2, $vr2, $vr6
	vfadd.d	$vr2, $vr3, $vr2
	fst.d	$fa0, $sp, 48
	ld.d	$a0, $fp, 0
	vst	$vr4, $sp, 56
	fst.d	$fa5, $sp, 72
	vst	$vr9, $sp, 160
	ld.d	$a4, $a0, 16
	vst	$vr2, $sp, 32
	fst.d	$fa1, $sp, 144
	st.d	$zero, $sp, 152
	addi.d	$a0, $sp, 80
	addi.d	$a2, $sp, 144
	addi.d	$a3, $sp, 32
	move	$a1, $fp
	jirl	$ra, $a4, 0
	fld.d	$fa0, $sp, 80
	fld.d	$fa1, $s2, %pc_lo12(infinity)
	fneg.d	$fa2, $fs0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movgr2fr.d	$fa0, $zero
	fsel	$fa0, $fa2, $fa0, $fcc0
.LBB6_4:
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end6:
	.size	_Z9ray_traceRK3VecRK3RayRK5Scene, .Lfunc_end6-_Z9ray_traceRK3VecRK3RayRK5Scene
	.cfi_endproc
                                        # -- End function
	.globl	_Z6createiRK3Vecd               # -- Begin function _Z6createiRK3Vecd
	.p2align	5
	.type	_Z6createiRK3Vecd,@function
_Z6createiRK3Vecd:                      # @_Z6createiRK3Vecd
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
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
	fmov.d	$fs0, $fa0
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	vld	$vr0, $s0, 8
	move	$fp, $a0
	st.d	$a1, $a0, 8
	vst	$vr0, $a0, 16
	pcalau12i	$a0, %pc_hi20(_ZTV6Sphere+16)
	addi.d	$s2, $a0, %pc_lo12(_ZTV6Sphere+16)
	st.d	$s2, $fp, 0
	ori	$a0, $zero, 1
	fst.d	$fs0, $fp, 32
	beq	$s1, $a0, .LBB7_25
# %bb.1:
	addi.d	$a0, $sp, 88
	st.d	$a0, $sp, 96
	st.d	$a0, $sp, 88
	st.d	$zero, $sp, 104
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %.preheader
	st.d	$fp, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	vldi	$vr0, -1016
	fmul.d	$fs1, $fs0, $fa0
	lu12i.w	$a0, -96892
	ori	$a0, $a0, 3242
	lu32i.d	$a0, -280966
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa0, $a0
	fdiv.d	$fs2, $fs1, $fa0
	vldi	$vr0, -928
	fmul.d	$fs0, $fs0, $fa0
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s0, 8
	fld.d	$fa2, $s0, 16
	addi.w	$fp, $s1, -1
	fsub.d	$fa0, $fa0, $fs2
	fadd.d	$fa1, $fs2, $fa1
	fsub.d	$fa2, $fa2, $fs2
	fst.d	$fa0, $sp, 64
	fst.d	$fa1, $sp, 72
	fst.d	$fa2, $sp, 80
.Ltmp3:                                 # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z6createiRK3Vecd)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:
.Ltmp5:                                 # EH_LABEL
	move	$s1, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.4:
	st.d	$s1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s0, 8
	fld.d	$fa2, $s0, 16
	st.d	$a0, $sp, 104
	fadd.d	$fa0, $fs2, $fa0
	fadd.d	$fa1, $fs2, $fa1
	fsub.d	$fa2, $fa2, $fs2
	fst.d	$fa0, $sp, 64
	fst.d	$fa1, $sp, 72
	fst.d	$fa2, $sp, 80
.Ltmp7:                                 # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z6createiRK3Vecd)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.5:
.Ltmp9:                                 # EH_LABEL
	move	$s1, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.6:                                # %.preheader.1
	st.d	$s1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s0, 8
	fld.d	$fa2, $s0, 16
	st.d	$a0, $sp, 104
	fsub.d	$fa0, $fa0, $fs2
	fadd.d	$fa1, $fs2, $fa1
	fadd.d	$fa2, $fs2, $fa2
	fst.d	$fa0, $sp, 64
	fst.d	$fa1, $sp, 72
	fst.d	$fa2, $sp, 80
.Ltmp11:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z6createiRK3Vecd)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.7:
.Ltmp13:                                # EH_LABEL
	move	$s1, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.8:
	st.d	$s1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s0, 8
	fld.d	$fa2, $s0, 16
	st.d	$a0, $sp, 104
	fadd.d	$fa0, $fs2, $fa0
	fadd.d	$fa1, $fs2, $fa1
	fadd.d	$fa2, $fs2, $fa2
	fst.d	$fa0, $sp, 64
	fst.d	$fa1, $sp, 72
	fst.d	$fa2, $sp, 80
.Ltmp15:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_Z6createiRK3Vecd)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.9:
.Ltmp17:                                # EH_LABEL
	move	$fp, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.10:
	st.d	$fp, $a0, 16
	addi.d	$a1, $sp, 88
	addi.d	$s4, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
.Ltmp20:                                # EH_LABEL
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.11:
	move	$fp, $a0
	ld.d	$a0, $s0, 16
	vld	$vr0, $s0, 0
	st.d	$a0, $sp, 56
	vst	$vr0, $sp, 40
	addi.d	$s3, $sp, 16
	ld.d	$s1, $sp, 88
	st.d	$s3, $sp, 24
	st.d	$s3, $sp, 16
	st.d	$zero, $sp, 32
	addi.d	$s0, $sp, 16
	beq	$s1, $s4, .LBB7_16
# %bb.12:                               # %.lr.ph.i.i.preheader
	addi.d	$s0, $sp, 88
	.p2align	4, , 16
.LBB7_13:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp23:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.14:                               # %.noexc.i
                                        #   in Loop: Header=BB7_13 Depth=1
	ld.d	$a1, $s1, 16
	st.d	$a1, $a0, 16
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	ld.d	$s1, $s1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 32
	bne	$s1, $s0, .LBB7_13
# %bb.15:                               # %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit.loopexit
	ld.d	$s0, $sp, 16
.LBB7_16:                               # %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit
	pcalau12i	$a0, %pc_hi20(_ZTV5Group+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV5Group+16)
	ld.d	$a1, $sp, 40
	vld	$vr0, $sp, 48
	st.d	$a0, $fp, 0
	st.d	$s2, $fp, 8
	st.d	$a1, $fp, 16
	vst	$vr0, $fp, 24
	fst.d	$fs1, $fp, 40
	addi.d	$s1, $fp, 48
	st.d	$s1, $fp, 56
	st.d	$s1, $fp, 48
	st.d	$zero, $fp, 64
	beq	$s0, $s3, .LBB7_21
# %bb.17:                               # %.lr.ph.i.i.i30.preheader
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB7_18:                               # %.lr.ph.i.i.i30
                                        # =>This Inner Loop Header: Depth=1
.Ltmp26:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.19:                               # %.noexc.i.i
                                        #   in Loop: Header=BB7_18 Depth=1
	ld.d	$a1, $s0, 16
	st.d	$a1, $a0, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$s0, $s0, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 64
	bne	$s0, $s2, .LBB7_18
# %bb.20:                               # %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit.loopexit
	ld.d	$s0, $sp, 16
.LBB7_21:                               # %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit
	addi.d	$s1, $sp, 16
	beq	$s0, $s1, .LBB7_23
	.p2align	4, , 16
.LBB7_22:                               # %.lr.ph.i.i34
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s0, 0
	ori	$a1, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s2
	bne	$s2, $s1, .LBB7_22
.LBB7_23:                               # %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit
	ld.d	$a0, $sp, 88
	addi.d	$s0, $sp, 88
	beq	$a0, $s0, .LBB7_25
	.p2align	4, , 16
.LBB7_24:                               # %.lr.ph.i.i37
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB7_24
.LBB7_25:
	move	$a0, $fp
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB7_26:
.Ltmp22:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_38
.LBB7_27:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB7_38
.LBB7_28:
.Ltmp19:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_38
.LBB7_29:
.Ltmp28:                                # EH_LABEL
	ld.d	$a1, $s1, 0
	move	$s0, $a0
	beq	$a1, $s1, .LBB7_32
# %bb.30:                               # %.lr.ph.i.i.i.i.preheader
	move	$a0, $a1
	.p2align	4, , 16
.LBB7_31:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bne	$s2, $s1, .LBB7_31
.LBB7_32:                               # %.body32
	ld.d	$a0, $sp, 16
	addi.d	$s1, $sp, 16
	beq	$a0, $s1, .LBB7_37
	.p2align	4, , 16
.LBB7_33:                               # %.lr.ph.i.i42
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bne	$s2, $s1, .LBB7_33
	b	.LBB7_37
.LBB7_34:
.Ltmp25:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	addi.d	$s1, $sp, 16
	move	$s0, $a0
	beq	$a1, $s1, .LBB7_37
# %bb.35:                               # %.lr.ph.i.i.i.preheader
	move	$a0, $a1
	.p2align	4, , 16
.LBB7_36:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bne	$s2, $s1, .LBB7_36
.LBB7_37:                               # %.body
	ori	$a1, $zero, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_38:
	ld.d	$a0, $sp, 88
	addi.d	$fp, $sp, 88
	beq	$a0, $fp, .LBB7_40
	.p2align	4, , 16
.LBB7_39:                               # %.lr.ph.i.i47
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $fp, .LBB7_39
.LBB7_40:                               # %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit50
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_Z6createiRK3Vecd, .Lfunc_end7-_Z6createiRK3Vecd
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
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
	.uleb128 .Ltmp6-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp7                 #   Call between .Ltmp7 and .Ltmp10
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp14-.Ltmp11                #   Call between .Ltmp11 and .Ltmp14
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp18-.Ltmp15                #   Call between .Ltmp15 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp20-.Ltmp18                #   Call between .Ltmp18 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp26-.Ltmp24                #   Call between .Ltmp24 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Lfunc_end7-.Ltmp27            #   Call between .Ltmp27 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN5SceneD2Ev,"axG",@progbits,_ZN5SceneD2Ev,comdat
	.weak	_ZN5SceneD2Ev                   # -- Begin function _ZN5SceneD2Ev
	.p2align	5
	.type	_ZN5SceneD2Ev,@function
_ZN5SceneD2Ev:                          # @_ZN5SceneD2Ev
# %bb.0:
	ret
.Lfunc_end8:
	.size	_ZN5SceneD2Ev, .Lfunc_end8-_ZN5SceneD2Ev
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI9_0:
	.dword	0x0000000000000000              # double 0
	.dword	0xbff0000000000000              # double -1
.LCPI9_1:
	.dword	0xbfd11acee560242a              # double -0.2672612419124244
	.dword	0x3fe9a8365810363f              # double 0.80178372573727319
.LCPI9_2:
	.dword	0x3fd11acee560242a              # double 0.2672612419124244
	.dword	0x3fe9a8365810363f              # double 0.80178372573727319
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -496
	.cfi_def_cfa_offset 496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 360                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 344                  # 8-byte Folded Spill
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
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	move	$a2, $a0
	ori	$a3, $zero, 2
	ori	$a0, $zero, 6
	bne	$a2, $a3, .LBB9_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
.LBB9_2:
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI9_0)
	vst	$vr0, $sp, 192
	st.d	$zero, $sp, 208
	addi.w	$a0, $a0, 0
	addi.d	$a1, $sp, 192
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(_Z6createiRK3Vecd)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 512
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 512
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	addi.d	$s1, $sp, 200
	ori	$a0, $zero, 511
	addi.d	$s3, $sp, 320
	movgr2fr.d	$fs2, $zero
	pcalau12i	$s4, %pc_hi20(infinity)
	lu52i.d	$a1, $zero, -1017
	movgr2fr.d	$fs1, $a1
	lu52i.d	$a1, $zero, 1041
	movgr2fr.d	$fs3, $a1
	lu52i.d	$a1, $zero, 1032
	movgr2fr.d	$fs7, $a1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	lu52i.d	$s5, $zero, -1023
	ori	$s6, $zero, 4
	ori	$a1, $zero, 0
	lu32i.d	$a1, -8192
	lu52i.d	$a1, $a1, 1030
	movgr2fr.d	$fa0, $a1
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	lu52i.d	$a1, $zero, 1019
	movgr2fr.d	$fa0, $a1
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI9_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI9_1)
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	lu12i.w	$a1, -109054
	ori	$a1, $a1, 1066
	lu32i.d	$a1, 72398
	lu52i.d	$a2, $a1, 1022
	pcalau12i	$a3, %pc_hi20(.LCPI9_2)
	vld	$vr0, $a3, %pc_lo12(.LCPI9_2)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	movgr2fr.d	$fa0, $a2
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(delta)
	lu52i.d	$s8, $a1, -1026
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_3:                                #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a0, $a1, -1
	beqz	$a1, .LBB9_19
.LBB9_4:                                # %.preheader51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_9 Depth 3
                                        #         Child Loop BB9_12 Depth 4
	move	$a1, $zero
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs6, $fa0
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	b	.LBB9_7
	.p2align	4, , 16
.LBB9_5:                                #   in Loop: Header=BB9_7 Depth=2
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.LBB9_6:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
                                        #   in Loop: Header=BB9_7 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	vldi	$vr0, -912
	fld.d	$fa1, $sp, 48                   # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 48                   # 8-byte Folded Spill
	ori	$a0, $zero, 512
	beq	$a1, $a0, .LBB9_3
.LBB9_7:                                # %.preheader50
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
                                        #         Child Loop BB9_12 Depth 4
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, %pc_lo12(infinity)
	move	$s0, $zero
	fmov.d	$fa2, $fs2
	fmov.d	$fs0, $fs2
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_8:                                #   in Loop: Header=BB9_9 Depth=3
	addi.w	$s0, $s0, 1
	fld.d	$fa2, $sp, 56                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	beq	$s0, $s6, .LBB9_17
.LBB9_9:                                # %.preheader
                                        #   Parent Loop BB9_4 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_12 Depth 4
	vldi	$vr1, -944
	fst.d	$fa2, $sp, 56                   # 8-byte Folded Spill
	fmul.d	$fa1, $fa2, $fa1
	fld.d	$fa2, $sp, 48                   # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fs5, $fa1, $fs1
	fmul.d	$fa1, $fs5, $fs5
	fst.d	$fa1, $sp, 120                  # 8-byte Folded Spill
	ori	$s2, $zero, 4
	fmov.d	$fs4, $fs2
	fst.d	$fs5, $sp, 112                  # 8-byte Folded Spill
	b	.LBB9_12
	.p2align	4, , 16
.LBB9_10:                               #   in Loop: Header=BB9_12 Depth=4
	fmov.d	$fa1, $fs2
.LBB9_11:                               # %_Z9ray_traceRK3VecRK3RayRK5Scene.exit
                                        #   in Loop: Header=BB9_12 Depth=4
	fadd.d	$fs0, $fs0, $fa1
	addi.w	$s2, $s2, -1
	vldi	$vr1, -912
	fadd.d	$fs4, $fs4, $fa1
	beqz	$s2, .LBB9_8
.LBB9_12:                               #   Parent Loop BB9_4 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        #       Parent Loop BB9_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldi	$vr1, -944
	fmul.d	$fa1, $fs4, $fa1
	fadd.d	$fa1, $fa1, $fs6
	fadd.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa1, $fa1
	fld.d	$fa3, $sp, 120                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa3, $fa2
	fadd.d	$fa2, $fa2, $fs3
	frsqrt.d	$fa2, $fa2
	fmul.d	$fa3, $fs5, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fmul.d	$fa2, $fa2, $fs7
	vld	$vr4, $sp, 128                  # 16-byte Folded Reload
	vst	$vr4, $sp, 144
	st.d	$s5, $sp, 160
	fst.d	$fa3, $sp, 168
	fst.d	$fa1, $sp, 176
	fst.d	$fa2, $sp, 184
	fst.d	$fa0, $sp, 192
	st.d	$zero, $s1, 0
	vst	$vr4, $s1, 8
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 16
	addi.d	$a0, $sp, 280
	addi.d	$a2, $sp, 192
	addi.d	$a3, $sp, 144
	move	$a1, $fp
	jirl	$ra, $a4, 0
	fld.d	$fa2, $sp, 280
	fld.d	$fa0, $s4, %pc_lo12(infinity)
	fcmp.ceq.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB9_10
# %bb.13:                               #   in Loop: Header=BB9_12 Depth=4
	fmov.d	$fs5, $fs6
	fmov.d	$fs6, $fs7
	fmov.d	$fs7, $fs1
	fmov.d	$fs1, $fs3
	vld	$vr1, $sp, 288
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vfmul.d	$vr4, $vr1, $vr3
	fld.d	$fa3, $sp, 304
	vreplvei.d	$vr5, $vr4, 0
	vreplvei.d	$vr4, $vr4, 1
	fsub.d	$fa4, $fa5, $fa4
	fld.d	$fa5, $sp, 88                   # 8-byte Folded Reload
	fmul.d	$fa5, $fa3, $fa5
	fadd.d	$fs3, $fa4, $fa5
	fcmp.cle.d	$fcc0, $fs2, $fs3
	bcnez	$fcc0, .LBB9_15
# %bb.14:                               #   in Loop: Header=BB9_12 Depth=4
	fld.d	$fa4, $sp, 184
	fld.d	$fa5, $sp, 160
	fld.d	$fa6, $s7, %pc_lo12(delta)
	fmul.d	$fa4, $fa2, $fa4
	fadd.d	$fa4, $fa4, $fa5
	fmul.d	$fa3, $fa3, $fa6
	vld	$vr5, $sp, 168
	vld	$vr7, $sp, 144
	fadd.d	$fa3, $fa4, $fa3
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr2, $vr2, $vr5
	vfadd.d	$vr2, $vr2, $vr7
	vreplvei.d	$vr4, $vr6, 0
	vfmul.d	$vr1, $vr1, $vr4
	vfadd.d	$vr1, $vr2, $vr1
	vst	$vr1, $sp, 192
	fst.d	$fa3, $sp, 208
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 216
	st.d	$s8, $sp, 232
	fst.d	$fa0, $sp, 312
	st.d	$zero, $s3, 0
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $s3, 8
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 16
	addi.d	$a0, $sp, 248
	addi.d	$a2, $sp, 312
	addi.d	$a3, $sp, 192
	move	$a1, $fp
	jirl	$ra, $a4, 0
	fld.d	$fa1, $sp, 248
	fld.d	$fa0, $s4, %pc_lo12(infinity)
	fneg.d	$fa2, $fs3
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa1, $fa2, $fs2, $fcc0
	b	.LBB9_16
.LBB9_15:                               #   in Loop: Header=BB9_12 Depth=4
	fmov.d	$fa1, $fs2
.LBB9_16:                               # %_Z9ray_traceRK3VecRK3RayRK5Scene.exit
                                        #   in Loop: Header=BB9_12 Depth=4
	fmov.d	$fs3, $fs1
	fmov.d	$fs1, $fs7
	fmov.d	$fs7, $fs6
	fmov.d	$fs6, $fs5
	fld.d	$fs5, $sp, 112                  # 8-byte Folded Reload
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_17:                               #   in Loop: Header=BB9_7 Depth=2
	fld.d	$fa0, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fa1, $sp, 16                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $s0, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.b	$a0, $sp, 192
	ld.d	$a1, $a1, -24
	add.d	$a1, $s0, $a1
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB9_5
# %bb.18:                               #   in Loop: Header=BB9_7 Depth=2
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB9_6
.LBB9_19:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a0, $zero
	fld.d	$fs7, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 352                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 360                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 400                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6SphereD0Ev,"axG",@progbits,_ZN6SphereD0Ev,comdat
	.weak	_ZN6SphereD0Ev                  # -- Begin function _ZN6SphereD0Ev
	.p2align	5
	.type	_ZN6SphereD0Ev,@function
_ZN6SphereD0Ev:                         # @_ZN6SphereD0Ev
# %bb.0:
	ori	$a1, $zero, 40
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end10:
	.size	_ZN6SphereD0Ev, .Lfunc_end10-_ZN6SphereD0Ev
                                        # -- End function
	.section	.text._ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray,"axG",@progbits,_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray,comdat
	.weak	_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray # -- Begin function _ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray
	.p2align	5
	.type	_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray,@function
_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray: # @_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray
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
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 40                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	.cfi_offset 61, -72
	.cfi_offset 62, -80
	.cfi_offset 63, -88
	fld.d	$fa5, $a1, 8
	fld.d	$fa7, $a3, 0
	fld.d	$fa6, $a1, 16
	fld.d	$fs4, $a3, 8
	fsub.d	$fa0, $fa5, $fa7
	fld.d	$fs3, $a1, 24
	fld.d	$fs5, $a3, 16
	fsub.d	$fa1, $fa6, $fs4
	fld.d	$fs6, $a3, 24
	fld.d	$fs7, $a3, 32
	fsub.d	$fa2, $fs3, $fs5
	fld.d	$fs0, $a3, 40
	fmul.d	$fa3, $fa0, $fs6
	fmul.d	$fa4, $fa1, $fs7
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa4, $fa2, $fs0
	fadd.d	$fs1, $fa3, $fa4
	fmul.d	$fa3, $fs1, $fs1
	fmul.d	$fa0, $fa0, $fa0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $a1, 32
	fmul.d	$fa2, $fa2, $fa2
	fadd.d	$fa0, $fa0, $fa2
	fsub.d	$fa0, $fa3, $fa0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
	movgr2fr.d	$fs2, $zero
	fcmp.cule.d	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB11_3
# %bb.1:
	pcalau12i	$a1, %pc_hi20(infinity)
	fld.d	$fa0, $a1, %pc_lo12(infinity)
	fld.d	$fa1, $a2, 0
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB11_5
.LBB11_2:
	vld	$vr0, $a2, 16
	vld	$vr1, $a2, 0
	vst	$vr0, $a0, 16
	vst	$vr1, $a0, 0
	b	.LBB11_6
.LBB11_3:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB11_7
.LBB11_4:                               # %.split
	fadd.d	$fa0, $fs1, $fa1
	pcalau12i	$a1, %pc_hi20(infinity)
	fld.d	$fa2, $a1, %pc_lo12(infinity)
	fsub.d	$fa1, $fs1, $fa1
	fcmp.clt.d	$fcc0, $fs2, $fa1
	fsel	$fa1, $fa0, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fsel	$fa0, $fa1, $fa2, $fcc0
	fld.d	$fa1, $a2, 0
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB11_2
.LBB11_5:
	fmul.d	$fa1, $fs6, $fa0
	fmul.d	$fa2, $fa0, $fs7
	fmul.d	$fa3, $fa0, $fs0
	fadd.d	$fa1, $fa7, $fa1
	fadd.d	$fa2, $fs4, $fa2
	fadd.d	$fa3, $fs5, $fa3
	fsub.d	$fa1, $fa1, $fa5
	fsub.d	$fa2, $fa2, $fa6
	fsub.d	$fa3, $fa3, $fs3
	fmul.d	$fa4, $fa1, $fa1
	fmul.d	$fa5, $fa2, $fa2
	fadd.d	$fa4, $fa4, $fa5
	fmul.d	$fa5, $fa3, $fa3
	fadd.d	$fa4, $fa4, $fa5
	frsqrt.d	$fa4, $fa4
	fmul.d	$fa1, $fa1, $fa4
	fmul.d	$fa2, $fa2, $fa4
	fmul.d	$fa3, $fa3, $fa4
	fst.d	$fa0, $a0, 0
	fst.d	$fa1, $a0, 8
	fst.d	$fa2, $a0, 16
	fst.d	$fa3, $a0, 24
.LBB11_6:
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB11_7:                               # %call.sqrt
	move	$fp, $a0
	move	$s0, $a2
	fst.d	$fa5, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fa6, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fa7, $sp, 16                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa7, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 32                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a0, $fp
	fmov.d	$fa1, $fa0
	b	.LBB11_4
.Lfunc_end11:
	.size	_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray, .Lfunc_end11-_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5GroupD2Ev,"axG",@progbits,_ZN5GroupD2Ev,comdat
	.weak	_ZN5GroupD2Ev                   # -- Begin function _ZN5GroupD2Ev
	.p2align	5
	.type	_ZN5GroupD2Ev,@function
_ZN5GroupD2Ev:                          # @_ZN5GroupD2Ev
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
	pcalau12i	$a1, %pc_hi20(_ZTV5Group+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV5Group+16)
	ld.d	$fp, $a0, 48
	addi.d	$s0, $a0, 48
	st.d	$a1, $a0, 0
	bne	$fp, $s0, .LBB12_5
# %bb.1:                                # %._crit_edge
	beq	$fp, $s0, .LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $fp, 0
	ori	$a1, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$fp, $s1
	bne	$s1, $s0, .LBB12_2
.LBB12_3:                               # %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
	.p2align	4, , 16
.LBB12_4:                               #   in Loop: Header=BB12_5 Depth=1
	ld.d	$fp, $fp, 0
	beq	$fp, $s0, .LBB12_7
.LBB12_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB12_4
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	b	.LBB12_4
.LBB12_7:                               # %._crit_edge.loopexit
	ld.d	$fp, $s0, 0
	bne	$fp, $s0, .LBB12_2
	b	.LBB12_3
.Lfunc_end12:
	.size	_ZN5GroupD2Ev, .Lfunc_end12-_ZN5GroupD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5GroupD0Ev,"axG",@progbits,_ZN5GroupD0Ev,comdat
	.weak	_ZN5GroupD0Ev                   # -- Begin function _ZN5GroupD0Ev
	.p2align	5
	.type	_ZN5GroupD0Ev,@function
_ZN5GroupD0Ev:                          # @_ZN5GroupD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV5Group+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV5Group+16)
	ld.d	$s0, $fp, 48
	addi.d	$s1, $fp, 48
	st.d	$a0, $fp, 0
	bne	$s0, $s1, .LBB13_5
# %bb.1:                                # %._crit_edge.i
	beq	$s0, $s1, .LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s0, 0
	ori	$a1, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s2
	bne	$s2, $s1, .LBB13_2
.LBB13_3:                               # %_ZN5GroupD2Ev.exit
	ori	$a1, $zero, 72
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
	.p2align	4, , 16
.LBB13_4:                               #   in Loop: Header=BB13_5 Depth=1
	ld.d	$s0, $s0, 0
	beq	$s0, $s1, .LBB13_7
.LBB13_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB13_4
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	b	.LBB13_4
.LBB13_7:                               # %._crit_edge.loopexit.i
	ld.d	$s0, $s1, 0
	bne	$s0, $s1, .LBB13_2
	b	.LBB13_3
.Lfunc_end13:
	.size	_ZN5GroupD0Ev, .Lfunc_end13-_ZN5GroupD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5Group9intersectERKSt4pairId3VecERK3Ray,"axG",@progbits,_ZNK5Group9intersectERKSt4pairId3VecERK3Ray,comdat
	.weak	_ZNK5Group9intersectERKSt4pairId3VecERK3Ray # -- Begin function _ZNK5Group9intersectERKSt4pairId3VecERK3Ray
	.p2align	5
	.type	_ZNK5Group9intersectERKSt4pairId3VecERK3Ray,@function
_ZNK5Group9intersectERKSt4pairId3VecERK3Ray: # @_ZNK5Group9intersectERKSt4pairId3VecERK3Ray
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
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	vld	$vr0, $a2, 16
	move	$s0, $a3
	move	$fp, $a0
	vst	$vr0, $sp, 56
	fld.d	$fa0, $a1, 16
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a3, 24
	vld	$vr3, $a1, 24
	vld	$vr4, $a3, 8
	vld	$vr5, $a3, 32
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa0, $fa2
	vfsub.d	$vr2, $vr3, $vr4
	vfmul.d	$vr3, $vr2, $vr5
	vreplvei.d	$vr4, $vr3, 0
	fadd.d	$fa1, $fa1, $fa4
	vld	$vr4, $a2, 0
	vreplvei.d	$vr3, $vr3, 1
	fadd.d	$fs0, $fa1, $fa3
	fmul.d	$fa0, $fa0, $fa0
	vfmul.d	$vr1, $vr2, $vr2
	vreplvei.d	$vr2, $vr1, 0
	fadd.d	$fa0, $fa0, $fa2
	vreplvei.d	$vr1, $vr1, 1
	fld.d	$fa2, $a1, 40
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fs0, $fs0
	fsub.d	$fa0, $fa1, $fa0
	fmul.d	$fa1, $fa2, $fa2
	fadd.d	$fa0, $fa1, $fa0
	movgr2fr.d	$fs1, $zero
	fcmp.cule.d	$fcc0, $fs1, $fa0
	vst	$vr4, $sp, 40
	bcnez	$fcc0, .LBB14_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(infinity)
	fld.d	$fa0, $a0, %pc_lo12(infinity)
	fld.d	$fa1, $a2, 0
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_5
.LBB14_2:
	vld	$vr0, $a2, 16
	vld	$vr1, $a2, 0
	b	.LBB14_9
.LBB14_3:
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB14_10
.LBB14_4:                               # %.split
	fadd.d	$fa0, $fs0, $fa1
	pcalau12i	$a0, %pc_hi20(infinity)
	fld.d	$fa2, $a0, %pc_lo12(infinity)
	fsub.d	$fa1, $fs0, $fa1
	fcmp.clt.d	$fcc0, $fs1, $fa1
	fsel	$fa1, $fa0, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $fs1
	fsel	$fa0, $fa1, $fa2, $fcc0
	fld.d	$fa1, $a2, 0
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB14_2
.LBB14_5:
	ld.d	$s1, $a1, 48
	addi.d	$s2, $a1, 48
	beq	$s1, $s2, .LBB14_8
# %bb.6:                                # %.lr.ph
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 48
	.p2align	4, , 16
.LBB14_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 16
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a0, 16
	addi.d	$a0, $sp, 8
	addi.d	$a2, $sp, 40
	move	$a3, $s0
	jirl	$ra, $a4, 0
	ld.d	$a0, $s3, 0
	vld	$vr0, $s3, 8
	fld.d	$fa1, $sp, 8
	st.d	$a0, $s4, 0
	vst	$vr0, $s4, 8
	ld.d	$s1, $s1, 0
	fst.d	$fa1, $sp, 40
	bne	$s1, $s2, .LBB14_7
.LBB14_8:                               # %._crit_edge
	vld	$vr0, $sp, 56
	vld	$vr1, $sp, 40
.LBB14_9:
	vst	$vr0, $fp, 16
	vst	$vr1, $fp, 0
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB14_10:                              # %call.sqrt
	move	$s1, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a2, $s1
	fmov.d	$fa1, $fa0
	b	.LBB14_4
.Lfunc_end14:
	.size	_ZNK5Group9intersectERKSt4pairId3VecERK3Ray, .Lfunc_end14-_ZNK5Group9intersectERKSt4pairId3VecERK3Ray
	.cfi_endproc
                                        # -- End function
	.type	real,@object                    # @real
	.bss
	.globl	real
real:
	.space	1
	.size	real, 1

	.type	delta,@object                   # @delta
	.data
	.globl	delta
	.p2align	3, 0x0
delta:
	.dword	0x3e50000000000000              # double 1.4901161193847656E-8
	.size	delta, 8

	.type	infinity,@object                # @infinity
	.globl	infinity
	.p2align	3, 0x0
infinity:
	.dword	0x7ff0000000000000              # double +Inf
	.size	infinity, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"P5\n"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" "
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n255\n"
	.size	.L.str.2, 6

	.type	_ZTV6Sphere,@object             # @_ZTV6Sphere
	.section	.data.rel.ro._ZTV6Sphere,"awG",@progbits,_ZTV6Sphere,comdat
	.weak	_ZTV6Sphere
	.p2align	3, 0x0
_ZTV6Sphere:
	.dword	0
	.dword	_ZTI6Sphere
	.dword	_ZN5SceneD2Ev
	.dword	_ZN6SphereD0Ev
	.dword	_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray
	.size	_ZTV6Sphere, 40

	.type	_ZTI6Sphere,@object             # @_ZTI6Sphere
	.section	.data.rel.ro._ZTI6Sphere,"awG",@progbits,_ZTI6Sphere,comdat
	.weak	_ZTI6Sphere
	.p2align	3, 0x0
_ZTI6Sphere:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS6Sphere
	.dword	_ZTI5Scene
	.size	_ZTI6Sphere, 24

	.type	_ZTS6Sphere,@object             # @_ZTS6Sphere
	.section	.rodata._ZTS6Sphere,"aG",@progbits,_ZTS6Sphere,comdat
	.weak	_ZTS6Sphere
_ZTS6Sphere:
	.asciz	"6Sphere"
	.size	_ZTS6Sphere, 8

	.type	_ZTI5Scene,@object              # @_ZTI5Scene
	.section	.data.rel.ro._ZTI5Scene,"awG",@progbits,_ZTI5Scene,comdat
	.weak	_ZTI5Scene
	.p2align	3, 0x0
_ZTI5Scene:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS5Scene
	.size	_ZTI5Scene, 16

	.type	_ZTS5Scene,@object              # @_ZTS5Scene
	.section	.rodata._ZTS5Scene,"aG",@progbits,_ZTS5Scene,comdat
	.weak	_ZTS5Scene
_ZTS5Scene:
	.asciz	"5Scene"
	.size	_ZTS5Scene, 7

	.type	_ZTV5Group,@object              # @_ZTV5Group
	.section	.data.rel.ro._ZTV5Group,"awG",@progbits,_ZTV5Group,comdat
	.weak	_ZTV5Group
	.p2align	3, 0x0
_ZTV5Group:
	.dword	0
	.dword	_ZTI5Group
	.dword	_ZN5GroupD2Ev
	.dword	_ZN5GroupD0Ev
	.dword	_ZNK5Group9intersectERKSt4pairId3VecERK3Ray
	.size	_ZTV5Group, 40

	.type	_ZTI5Group,@object              # @_ZTI5Group
	.section	.data.rel.ro._ZTI5Group,"awG",@progbits,_ZTI5Group,comdat
	.weak	_ZTI5Group
	.p2align	3, 0x0
_ZTI5Group:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS5Group
	.dword	_ZTI5Scene
	.size	_ZTI5Group, 24

	.type	_ZTS5Group,@object              # @_ZTS5Group
	.section	.rodata._ZTS5Group,"aG",@progbits,_ZTS5Group,comdat
	.weak	_ZTS5Group
_ZTS5Group:
	.asciz	"5Group"
	.size	_ZTS5Group, 7

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
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZTI6Sphere
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS6Sphere
	.addrsig_sym _ZTI5Scene
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS5Scene
	.addrsig_sym _ZTI5Group
	.addrsig_sym _ZTS5Group
