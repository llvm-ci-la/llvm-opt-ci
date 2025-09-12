	.file	"btGeometryUtil.cpp"
	.text
	.globl	btBulletMathProbe               # -- Begin function btBulletMathProbe
	.p2align	5
	.type	btBulletMathProbe,@function
btBulletMathProbe:                      # @btBulletMathProbe
# %bb.0:
	ret
.Lfunc_end0:
	.size	btBulletMathProbe, .Lfunc_end0-btBulletMathProbe
                                        # -- End function
	.globl	_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f # -- Begin function _ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f
	.p2align	5
	.type	_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f,@function
_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f: # @_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f
# %bb.0:
	ld.w	$a2, $a0, 4
	blez	$a2, .LBB1_5
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $a0, 16
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a0, 8
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a1, -4
	fld.s	$fa5, $a1, -8
	fld.s	$fa6, $a1, 0
	fld.s	$fa7, $a1, 4
	fmul.s	$fa4, $fa4, $fa2
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fmadd.s	$fa4, $fa6, $fa3, $fa4
	fadd.s	$fa4, $fa4, $fa7
	fcmp.cule.s	$fcc0, $fa4, $fa0
	fcmp.clt.s	$fcc1, $fa0, $fa4
	movcf2gr	$a0, $fcc0
	bcnez	$fcc1, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	sltu	$a3, $zero, $a2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a3, .LBB1_2
.LBB1_4:                                # %.critedge
	ret
.LBB1_5:
	ori	$a0, $zero, 1
	ret
.Lfunc_end1:
	.size	_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f, .Lfunc_end1-_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f
                                        # -- End function
	.globl	_ZN14btGeometryUtil22areVerticesBehindPlaneERK9btVector3RK20btAlignedObjectArrayIS0_Ef # -- Begin function _ZN14btGeometryUtil22areVerticesBehindPlaneERK9btVector3RK20btAlignedObjectArrayIS0_Ef
	.p2align	5
	.type	_ZN14btGeometryUtil22areVerticesBehindPlaneERK9btVector3RK20btAlignedObjectArrayIS0_Ef,@function
_ZN14btGeometryUtil22areVerticesBehindPlaneERK9btVector3RK20btAlignedObjectArrayIS0_Ef: # @_ZN14btGeometryUtil22areVerticesBehindPlaneERK9btVector3RK20btAlignedObjectArrayIS0_Ef
# %bb.0:
	ld.w	$a2, $a1, 4
	blez	$a2, .LBB2_5
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $a1, 16
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a0, 4
	fld.s	$fa3, $a0, 8
	fld.s	$fa4, $a0, 12
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $a1, -4
	fld.s	$fa6, $a1, -8
	fld.s	$fa7, $a1, 0
	fmul.s	$fa5, $fa2, $fa5
	fmadd.s	$fa5, $fa1, $fa6, $fa5
	fmadd.s	$fa5, $fa3, $fa7, $fa5
	fadd.s	$fa5, $fa5, $fa4
	fcmp.cule.s	$fcc0, $fa5, $fa0
	fcmp.clt.s	$fcc1, $fa0, $fa5
	movcf2gr	$a0, $fcc0
	bcnez	$fcc1, .LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	sltu	$a3, $zero, $a2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a3, .LBB2_2
.LBB2_4:                                # %.critedge
	ret
.LBB2_5:
	ori	$a0, $zero, 1
	ret
.Lfunc_end2:
	.size	_ZN14btGeometryUtil22areVerticesBehindPlaneERK9btVector3RK20btAlignedObjectArrayIS0_Ef, .Lfunc_end2-_ZN14btGeometryUtil22areVerticesBehindPlaneERK9btVector3RK20btAlignedObjectArrayIS0_Ef
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E
.LCPI3_0:
	.word	0x3f7fbe77                      # float 0.999000012
	.text
	.globl	_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E
	.p2align	5
	.type	_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E,@function
_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E: # @_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E
# %bb.0:
	ld.w	$a2, $a1, 4
	blez	$a2, .LBB3_5
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $a1, 16
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI3_0)
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	.p2align	4, , 16
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a1, -4
	fld.s	$fa5, $a1, -8
	fld.s	$fa6, $a1, 0
	fmul.s	$fa4, $fa1, $fa4
	fmadd.s	$fa4, $fa0, $fa5, $fa4
	fmadd.s	$fa4, $fa2, $fa6, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	fcmp.clt.s	$fcc1, $fa3, $fa4
	movcf2gr	$a0, $fcc0
	bcnez	$fcc1, .LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	sltu	$a3, $zero, $a2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a3, .LBB3_2
.LBB3_4:                                # %.critedge
	ret
.LBB3_5:
	ori	$a0, $zero, 1
	ret
.Lfunc_end3:
	.size	_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E, .Lfunc_end3-_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN14btGeometryUtil29getPlaneEquationsFromVerticesER20btAlignedObjectArrayI9btVector3ES3_
.LCPI4_0:
	.word	0x38d1b717                      # float 9.99999974E-5
.LCPI4_1:
	.word	0x3f7fbe77                      # float 0.999000012
.LCPI4_2:
	.word	0x3c23d70a                      # float 0.00999999977
	.text
	.globl	_ZN14btGeometryUtil29getPlaneEquationsFromVerticesER20btAlignedObjectArrayI9btVector3ES3_
	.p2align	5
	.type	_ZN14btGeometryUtil29getPlaneEquationsFromVerticesER20btAlignedObjectArrayI9btVector3ES3_,@function
_ZN14btGeometryUtil29getPlaneEquationsFromVerticesER20btAlignedObjectArrayI9btVector3ES3_: # @_ZN14btGeometryUtil29getPlaneEquationsFromVerticesER20btAlignedObjectArrayI9btVector3ES3_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
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
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 88                   # 8-byte Folded Spill
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
	ld.w	$s2, $a0, 4
	blez	$s2, .LBB4_51
# %bb.1:                                # %.lr.ph111
	move	$fp, $a0
	move	$s0, $a1
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.s	$ft1, $a0, %pc_lo12(.LCPI4_0)
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a4, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	fst.s	$ft1, $sp, 68                   # 4-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(.LCPI4_1)
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %.loopexit104
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $s2, .LBB4_51
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #       Child Loop BB4_11 Depth 3
                                        #         Child Loop BB4_14 Depth 4
                                        #         Child Loop BB4_18 Depth 4
                                        #         Child Loop BB4_26 Depth 4
                                        #         Child Loop BB4_35 Depth 4
                                        #         Child Loop BB4_39 Depth 4
                                        #         Child Loop BB4_47 Depth 4
	move	$a0, $a1
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	bgeu	$a1, $s2, .LBB4_2
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $fp, 16
	alsl.d	$s7, $a0, $a1, 4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_5:                                # %.loopexit103
                                        #   in Loop: Header=BB4_6 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $s2, .LBB4_2
.LBB4_6:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_11 Depth 3
                                        #         Child Loop BB4_14 Depth 4
                                        #         Child Loop BB4_18 Depth 4
                                        #         Child Loop BB4_26 Depth 4
                                        #         Child Loop BB4_35 Depth 4
                                        #         Child Loop BB4_39 Depth 4
                                        #         Child Loop BB4_47 Depth 4
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.w	$a1, $a1, 0
	bge	$a1, $s2, .LBB4_5
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB4_6 Depth=2
	ld.d	$a1, $fp, 16
	alsl.d	$s3, $a0, $a1, 4
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	b	.LBB4_11
.LBB4_8:                                # %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.w	$a1, $s0, 4
	st.b	$a4, $s0, 24
	st.d	$s1, $s0, 16
	st.w	$s5, $s0, 8
	fld.s	$ft1, $sp, 68                   # 4-byte Folded Reload
.LBB4_9:                                # %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.d	$a0, $s0, 16
	fnmadd.s	$fa0, $fs3, $fs0, $fs4
	alsl.d	$a2, $a1, $a0, 4
	slli.d	$a1, $a1, 4
	fstx.s	$fs1, $a0, $a1
	fst.s	$fs2, $a2, 4
	fst.s	$fs3, $a2, 8
	fst.s	$fa0, $a2, 12
	ld.w	$a0, $s0, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 4
.LBB4_10:                               # %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1
                                        #   in Loop: Header=BB4_11 Depth=3
	addi.d	$s4, $s4, 1
	addi.w	$a0, $s4, 0
	bge	$a0, $s2, .LBB4_5
.LBB4_11:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_14 Depth 4
                                        #         Child Loop BB4_18 Depth 4
                                        #         Child Loop BB4_26 Depth 4
                                        #         Child Loop BB4_35 Depth 4
                                        #         Child Loop BB4_39 Depth 4
                                        #         Child Loop BB4_47 Depth 4
	ld.d	$a0, $fp, 16
	fld.s	$fa2, $s3, 0
	fld.s	$fa0, $s7, 0
	fld.s	$fa3, $s3, 4
	fld.s	$fa1, $s7, 4
	alsl.d	$a1, $s4, $a0, 4
	slli.d	$a2, $s4, 4
	fsub.s	$fa2, $fa2, $fa0
	fsub.s	$fa3, $fa3, $fa1
	fld.s	$fa4, $s3, 8
	fld.s	$fs2, $s7, 8
	fldx.s	$fa5, $a0, $a2
	fld.s	$fa6, $a1, 4
	fld.s	$fa7, $a1, 8
	fsub.s	$fa4, $fa4, $fs2
	fsub.s	$fa5, $fa5, $fa0
	fsub.s	$fa6, $fa6, $fa1
	fsub.s	$fa7, $fa7, $fs2
	fneg.s	$ft0, $fa6
	fmul.s	$ft0, $fa4, $ft0
	fmadd.s	$fs1, $fa3, $fa7, $ft0
	fneg.s	$fa7, $fa7
	fmul.s	$fa7, $fa2, $fa7
	fmadd.s	$fs3, $fa4, $fa5, $fa7
	fneg.s	$fa4, $fa5
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fs5, $fa2, $fa6, $fa3
	fmul.s	$fa2, $fs3, $fs3
	fmadd.s	$fa2, $fs1, $fs1, $fa2
	fmadd.s	$fs4, $fs5, $fs5, $fa2
	fcmp.cule.s	$fcc1, $fs4, $ft1
	pcalau12i	$s5, %pc_hi20(.LCPI4_2)
	bcnez	$fcc1, .LBB4_32
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=3
	ld.w	$a1, $s0, 4
	frsqrt.s	$fa2, $fs4
	fmul.s	$fs6, $fs1, $fa2
	fmul.s	$fs7, $fs3, $fa2
	fmul.s	$fs0, $fs5, $fa2
	blez	$a1, .LBB4_16
# %bb.13:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.d	$a2, $s0, 16
	addi.d	$a2, $a2, 8
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_14:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa2, $a2, -4
	fld.s	$fa3, $a2, -8
	fld.s	$fa4, $a2, 0
	fld.s	$fa5, $s8, %pc_lo12(.LCPI4_1)
	fmul.s	$fa2, $fs7, $fa2
	fmadd.s	$fa2, $fs6, $fa3, $fa2
	fmadd.s	$fa2, $fs0, $fa4, $fa2
	fcmp.cule.s	$fcc0, $fa2, $fa5
	bceqz	$fcc0, .LBB4_32
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB4_14
.LBB4_16:                               # %.loopexit102
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.w	$a2, $fp, 4
	fmul.s	$fa1, $fs7, $fa1
	fmadd.s	$fa5, $fs6, $fa0, $fa1
	blez	$a2, .LBB4_20
# %bb.17:                               # %.lr.ph.i61
                                        #   in Loop: Header=BB4_11 Depth=3
	fmadd.s	$fa0, $fs0, $fs2, $fa5
	addi.d	$a0, $a0, 8
	.p2align	4, , 16
.LBB4_18:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa1, $a0, -4
	fld.s	$fa2, $a0, -8
	fld.s	$fa3, $a0, 0
	fmul.s	$fa1, $fs7, $fa1
	fld.s	$fa4, $s5, %pc_lo12(.LCPI4_2)
	fmadd.s	$fa1, $fs6, $fa2, $fa1
	fmadd.s	$fa1, $fs0, $fa3, $fa1
	fsub.s	$fa1, $fa1, $fa0
	fcmp.cule.s	$fcc0, $fa1, $fa4
	bceqz	$fcc0, .LBB4_32
# %bb.19:                               #   in Loop: Header=BB4_18 Depth=4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 16
	bnez	$a2, .LBB4_18
.LBB4_20:                               # %.loopexit
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.w	$a0, $s0, 8
	bne	$a1, $a0, .LBB4_31
# %bb.21:                               #   in Loop: Header=BB4_11 Depth=3
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a4, $a0
	or	$s6, $a0, $a2
	bge	$a1, $s6, .LBB4_31
# %bb.22:                               #   in Loop: Header=BB4_11 Depth=3
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	fst.s	$fa5, $sp, 52                   # 4-byte Folded Spill
	beqz	$s6, .LBB4_24
# %bb.23:                               #   in Loop: Header=BB4_11 Depth=3
	slli.d	$a0, $s6, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	fld.s	$fa5, $sp, 52                   # 4-byte Folded Reload
	ld.d	$a1, $sp, 56
	movgr2cf	$fcc1, $a1
	ori	$a4, $zero, 1
	fld.s	$ft1, $sp, 68                   # 4-byte Folded Reload
	ld.w	$a1, $s0, 4
	move	$s1, $a0
	bgtz	$a1, .LBB4_25
	b	.LBB4_27
.LBB4_24:                               #   in Loop: Header=BB4_11 Depth=3
	move	$s1, $zero
	blez	$a1, .LBB4_27
.LBB4_25:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB4_11 Depth=3
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB4_26:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $s0, 16
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB4_26
.LBB4_27:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB4_30
# %bb.28:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.b	$a1, $s0, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_30
# %bb.29:                               #   in Loop: Header=BB4_11 Depth=3
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	fld.s	$fa5, $sp, 52                   # 4-byte Folded Reload
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	ori	$a4, $zero, 1
	fld.s	$ft1, $sp, 68                   # 4-byte Folded Reload
.LBB4_30:                               # %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.w	$a1, $s0, 4
	st.b	$a4, $s0, 24
	st.d	$s1, $s0, 16
	st.w	$s6, $s0, 8
.LBB4_31:                               # %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.d	$a0, $s0, 16
	fnmadd.s	$fa0, $fs0, $fs2, $fa5
	alsl.d	$a2, $a1, $a0, 4
	slli.d	$a1, $a1, 4
	fstx.s	$fs6, $a0, $a1
	fst.s	$fs7, $a2, 4
	fst.s	$fs0, $a2, 8
	fst.s	$fa0, $a2, 12
	ld.w	$a0, $s0, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 4
.LBB4_32:                               # %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit
                                        #   in Loop: Header=BB4_11 Depth=3
	bcnez	$fcc1, .LBB4_10
# %bb.33:                               #   in Loop: Header=BB4_11 Depth=3
	fneg.s	$fa0, $fs5
	fneg.s	$fa1, $fs1
	fneg.s	$fa2, $fs3
	ld.w	$a1, $s0, 4
	frsqrt.s	$fa3, $fs4
	fmul.s	$fs1, $fa3, $fa1
	fmul.s	$fs2, $fa3, $fa2
	fmul.s	$fs3, $fa3, $fa0
	blez	$a1, .LBB4_37
# %bb.34:                               # %.lr.ph.i.1
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, 8
	move	$a2, $a1
	.p2align	4, , 16
.LBB4_35:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa0, $a0, -4
	fld.s	$fa1, $a0, -8
	fld.s	$fa2, $a0, 0
	fld.s	$fa3, $s8, %pc_lo12(.LCPI4_1)
	fmul.s	$fa0, $fs2, $fa0
	fmadd.s	$fa0, $fs1, $fa1, $fa0
	fmadd.s	$fa0, $fs3, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB4_10
# %bb.36:                               #   in Loop: Header=BB4_35 Depth=4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 16
	bnez	$a2, .LBB4_35
.LBB4_37:                               # %.loopexit102.1
                                        #   in Loop: Header=BB4_11 Depth=3
	fld.s	$fa0, $s7, 0
	fld.s	$fa1, $s7, 4
	ld.w	$a0, $fp, 4
	fld.s	$fs0, $s7, 8
	fmul.s	$fa1, $fs2, $fa1
	fmadd.s	$fs4, $fs1, $fa0, $fa1
	blez	$a0, .LBB4_41
# %bb.38:                               # %.lr.ph.i61.1
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.d	$a2, $fp, 16
	fmadd.s	$fa0, $fs3, $fs0, $fs4
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB4_39:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa1, $a2, -4
	fld.s	$fa2, $a2, -8
	fld.s	$fa3, $a2, 0
	fmul.s	$fa1, $fs2, $fa1
	fld.s	$fa4, $s5, %pc_lo12(.LCPI4_2)
	fmadd.s	$fa1, $fs1, $fa2, $fa1
	fmadd.s	$fa1, $fs3, $fa3, $fa1
	fsub.s	$fa1, $fa1, $fa0
	fcmp.clt.s	$fcc0, $fa4, $fa1
	bcnez	$fcc0, .LBB4_10
# %bb.40:                               #   in Loop: Header=BB4_39 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 16
	bnez	$a0, .LBB4_39
.LBB4_41:                               # %.loopexit.1
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.w	$a0, $s0, 8
	bne	$a1, $a0, .LBB4_9
# %bb.42:                               #   in Loop: Header=BB4_11 Depth=3
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a4, $a0
	or	$s5, $a0, $a2
	bge	$a1, $s5, .LBB4_9
# %bb.43:                               #   in Loop: Header=BB4_11 Depth=3
	beqz	$s5, .LBB4_45
# %bb.44:                               #   in Loop: Header=BB4_11 Depth=3
	slli.d	$a0, $s5, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 1
	ld.w	$a1, $s0, 4
	move	$s1, $a0
	bgtz	$a1, .LBB4_46
	b	.LBB4_48
.LBB4_45:                               #   in Loop: Header=BB4_11 Depth=3
	move	$s1, $zero
	blez	$a1, .LBB4_48
.LBB4_46:                               # %.lr.ph.i.i.i.1
                                        #   in Loop: Header=BB4_11 Depth=3
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB4_47:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $s0, 16
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB4_47
.LBB4_48:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB4_8
# %bb.49:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.b	$a1, $s0, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_8
# %bb.50:                               #   in Loop: Header=BB4_11 Depth=3
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 1
	b	.LBB4_8
.LBB4_51:                               # %._crit_edge
	fld.d	$fs7, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	_ZN14btGeometryUtil29getPlaneEquationsFromVerticesER20btAlignedObjectArrayI9btVector3ES3_, .Lfunc_end4-_ZN14btGeometryUtil29getPlaneEquationsFromVerticesER20btAlignedObjectArrayI9btVector3ES3_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_
.LCPI5_0:
	.word	0x38d1b717                      # float 9.99999974E-5
.LCPI5_1:
	.word	0x358637bd                      # float 9.99999997E-7
.LCPI5_2:
	.word	0x3c23d70a                      # float 0.00999999977
	.text
	.globl	_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_
	.p2align	5
	.type	_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_,@function
_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_: # @_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_
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
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
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
	ld.w	$s2, $a0, 4
	blez	$s2, .LBB5_29
# %bb.1:                                # %.lr.ph113
	move	$fp, $a0
	move	$s0, $a1
	move	$a1, $zero
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI5_1)
	ori	$a3, $zero, 1
	vldi	$vr14, -1040
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %.loopexit108
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a1, $s2, .LBB5_29
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #       Child Loop BB5_11 Depth 3
                                        #         Child Loop BB5_17 Depth 4
                                        #         Child Loop BB5_25 Depth 4
	move	$a0, $a1
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a1, $s2, .LBB5_2
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a1, $fp, 16
	alsl.d	$s7, $a0, $a1, 4
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_5:                                # %.loopexit107
                                        #   in Loop: Header=BB5_6 Depth=2
	addi.d	$s3, $s3, 1
	beq	$s8, $s2, .LBB5_2
.LBB5_6:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
                                        #         Child Loop BB5_17 Depth 4
                                        #         Child Loop BB5_25 Depth 4
	move	$a0, $s8
	addi.d	$s8, $s8, 1
	addi.w	$a1, $s8, 0
	bge	$a1, $s2, .LBB5_5
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB5_6 Depth=2
	ld.d	$a1, $fp, 16
	alsl.d	$s5, $a0, $a1, 4
	move	$s4, $s3
	b	.LBB5_11
.LBB5_8:                                # %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB5_11 Depth=3
	ld.w	$a1, $s0, 4
	st.b	$a3, $s0, 24
	st.d	$s1, $s0, 16
	st.w	$s6, $s0, 8
.LBB5_9:                                # %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit
                                        #   in Loop: Header=BB5_11 Depth=3
	ld.d	$a0, $s0, 16
	alsl.d	$a2, $a1, $a0, 4
	slli.d	$a1, $a1, 4
	fstx.s	$fs2, $a0, $a1
	fst.s	$fs3, $a2, 4
	fst.s	$fs4, $a2, 8
	st.w	$zero, $a2, 12
	ld.w	$a0, $s0, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 4
	.p2align	4, , 16
.LBB5_10:                               # %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit
                                        #   in Loop: Header=BB5_11 Depth=3
	addi.d	$s4, $s4, 1
	addi.w	$a0, $s4, 0
	bge	$a0, $s2, .LBB5_5
.LBB5_11:                               #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_17 Depth 4
                                        #         Child Loop BB5_25 Depth 4
	ld.d	$a0, $fp, 16
	alsl.d	$a1, $s4, $a0, 4
	slli.d	$a2, $s4, 4
	fld.s	$fa7, $a1, 4
	fld.s	$fa6, $s5, 8
	fld.s	$fa3, $s5, 4
	fld.s	$fa4, $a1, 8
	fneg.s	$fa0, $fa7
	fmul.s	$fa0, $fa6, $fa0
	fld.s	$ft0, $s5, 0
	fldx.s	$ft1, $a0, $a2
	fmadd.s	$fa0, $fa3, $fa4, $fa0
	fneg.s	$fa1, $fa4
	fmul.s	$fa1, $ft0, $fa1
	fmadd.s	$fa1, $fa6, $ft1, $fa1
	fneg.s	$fa2, $ft1
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa2, $ft0, $fa7, $fa2
	fmul.s	$fa5, $fa1, $fa1
	fmadd.s	$fa5, $fa0, $fa0, $fa5
	fmadd.s	$fa5, $fa2, $fa2, $fa5
	fcmp.cule.s	$fcc0, $fa5, $fs0
	bcnez	$fcc0, .LBB5_10
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=3
	fld.s	$ft3, $s7, 4
	fld.s	$ft2, $s7, 8
	fneg.s	$fa5, $ft3
	fmul.s	$fa5, $fa4, $fa5
	fld.s	$ft4, $s7, 0
	fmadd.s	$fa5, $fa7, $ft2, $fa5
	fneg.s	$ft5, $ft2
	fmul.s	$ft5, $ft1, $ft5
	fmadd.s	$fa4, $fa4, $ft4, $ft5
	fneg.s	$ft5, $ft4
	fmul.s	$fa7, $fa7, $ft5
	fmadd.s	$fa7, $ft1, $ft3, $fa7
	fmul.s	$ft1, $fa4, $fa4
	fmadd.s	$ft1, $fa5, $fa5, $ft1
	fmadd.s	$ft1, $fa7, $fa7, $ft1
	fcmp.cule.s	$fcc0, $ft1, $fs0
	bcnez	$fcc0, .LBB5_10
# %bb.13:                               #   in Loop: Header=BB5_11 Depth=3
	fneg.s	$ft1, $fa3
	fmul.s	$ft1, $ft2, $ft1
	fmadd.s	$ft1, $ft3, $fa6, $ft1
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $ft4, $fa6
	fmadd.s	$fa6, $ft2, $ft0, $fa6
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $ft3, $ft0
	fmadd.s	$fa3, $ft4, $fa3, $ft0
	fmul.s	$ft0, $fa6, $fa6
	fmadd.s	$ft0, $ft1, $ft1, $ft0
	fmadd.s	$ft0, $fa3, $fa3, $ft0
	fcmp.cule.s	$fcc0, $ft0, $fs0
	bcnez	$fcc0, .LBB5_10
# %bb.14:                               #   in Loop: Header=BB5_11 Depth=3
	fmul.s	$ft0, $ft3, $fa1
	fmadd.s	$ft0, $ft4, $fa0, $ft0
	fmadd.s	$ft0, $ft2, $fa2, $ft0
	fabs.s	$ft2, $ft0
	fcmp.cule.s	$fcc0, $ft2, $fs1
	bcnez	$fcc0, .LBB5_10
# %bb.15:                               #   in Loop: Header=BB5_11 Depth=3
	fld.s	$ft2, $s7, 12
	fld.s	$ft3, $s5, 12
	fmul.s	$fa0, $fa0, $ft2
	fmul.s	$fa1, $fa1, $ft2
	fmul.s	$fa2, $fa2, $ft2
	fmul.s	$fa5, $fa5, $ft3
	fld.s	$ft2, $a1, 12
	fmul.s	$fa4, $fa4, $ft3
	fmul.s	$fa7, $fa7, $ft3
	fdiv.s	$ft0, $ft6, $ft0
	fmul.s	$ft1, $ft1, $ft2
	fmul.s	$fa6, $fa6, $ft2
	fmul.s	$fa3, $fa3, $ft2
	fadd.s	$fa0, $fa0, $fa5
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa7
	fadd.s	$fa0, $ft1, $fa0
	fadd.s	$fa1, $fa6, $fa1
	ld.w	$a1, $fp, 4
	fadd.s	$fa2, $fa3, $fa2
	fmul.s	$fs2, $ft0, $fa0
	fmul.s	$fs3, $ft0, $fa1
	fmul.s	$fs4, $ft0, $fa2
	blez	$a1, .LBB5_19
# %bb.16:                               # %.lr.ph.i
                                        #   in Loop: Header=BB5_11 Depth=3
	addi.d	$a0, $a0, 8
	.p2align	4, , 16
.LBB5_17:                               #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa0, $a0, -4
	fld.s	$fa1, $a0, -8
	fmul.s	$fa0, $fs3, $fa0
	fld.s	$fa2, $a0, 0
	fld.s	$fa3, $a0, 4
	pcalau12i	$a2, %pc_hi20(.LCPI5_2)
	fld.s	$fa4, $a2, %pc_lo12(.LCPI5_2)
	fmadd.s	$fa0, $fa1, $fs2, $fa0
	fmadd.s	$fa0, $fa2, $fs4, $fa0
	fadd.s	$fa0, $fa3, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa4
	bceqz	$fcc0, .LBB5_10
# %bb.18:                               #   in Loop: Header=BB5_17 Depth=4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB5_17
.LBB5_19:                               # %.loopexit
                                        #   in Loop: Header=BB5_11 Depth=3
	ld.w	$a1, $s0, 4
	ld.w	$a0, $s0, 8
	bne	$a1, $a0, .LBB5_9
# %bb.20:                               #   in Loop: Header=BB5_11 Depth=3
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a3, $a0
	or	$s6, $a0, $a2
	bge	$a1, $s6, .LBB5_9
# %bb.21:                               #   in Loop: Header=BB5_11 Depth=3
	beqz	$s6, .LBB5_23
# %bb.22:                               #   in Loop: Header=BB5_11 Depth=3
	slli.d	$a0, $s6, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	vldi	$vr14, -1040
	ori	$a3, $zero, 1
	ld.w	$a1, $s0, 4
	move	$s1, $a0
	bgtz	$a1, .LBB5_24
	b	.LBB5_26
.LBB5_23:                               #   in Loop: Header=BB5_11 Depth=3
	move	$s1, $zero
	blez	$a1, .LBB5_26
.LBB5_24:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB5_11 Depth=3
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB5_25:                               #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $s0, 16
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB5_25
.LBB5_26:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
                                        #   in Loop: Header=BB5_11 Depth=3
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB5_8
# %bb.27:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
                                        #   in Loop: Header=BB5_11 Depth=3
	ld.b	$a1, $s0, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_8
# %bb.28:                               #   in Loop: Header=BB5_11 Depth=3
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	vldi	$vr14, -1040
	ori	$a3, $zero, 1
	b	.LBB5_8
.LBB5_29:                               # %._crit_edge
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end5:
	.size	_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_, .Lfunc_end5-_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
