	.file	"GravityForceKernel.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_
.LCPI0_0:
	.word	0x3a1b5121                      # float 5.92486991E-4
.LCPI0_1:
	.word	0xb78a184e                      # float -1.64621997E-5
.LCPI0_2:
	.word	0xbc108c2a                      # float -0.00882248021
.LCPI0_3:
	.word	0x3d8c8d19                      # float 0.0686284974
.LCPI0_4:
	.word	0xbe87077d                      # float -0.263729006
	.text
	.globl	_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_
	.p2align	5
	.type	_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_,@function
_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_: # @_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_
# %bb.0:
	blez	$a0, .LBB0_6
# %bb.1:                                # %.lr.ph.preheader.i
	pcalau12i	$t0, %pc_hi20(.LCPI0_0)
	fld.s	$fa7, $t0, %pc_lo12(.LCPI0_0)
	pcalau12i	$t0, %pc_hi20(.LCPI0_1)
	fld.s	$ft0, $t0, %pc_lo12(.LCPI0_1)
	pcalau12i	$t0, %pc_hi20(.LCPI0_2)
	fld.s	$ft1, $t0, %pc_lo12(.LCPI0_2)
	pcalau12i	$t0, %pc_hi20(.LCPI0_3)
	fld.s	$ft3, $t0, %pc_lo12(.LCPI0_3)
	pcalau12i	$t0, %pc_hi20(.LCPI0_4)
	fld.s	$ft4, $t0, %pc_lo12(.LCPI0_4)
	movgr2fr.w	$ft5, $zero
	fmov.s	$ft2, $ft5
	fmov.s	$fa6, $ft5
	fmov.s	$fa5, $ft5
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB0_7
.LBB0_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft6, $a1, 0
	fld.s	$ft7, $a2, 0
	fld.s	$ft8, $a3, 0
	fsub.s	$ft6, $ft6, $fa0
	fsub.s	$ft7, $ft7, $fa1
	fsub.s	$ft8, $ft8, $fa2
	fmul.s	$ft9, $ft6, $ft6
	fmadd.s	$ft9, $ft7, $ft7, $ft9
	fmadd.s	$ft9, $ft8, $ft8, $ft9
	fcmp.cle.s	$fcc0, $fa3, $ft9
	bcnez	$fcc0, .LBB0_2
# %bb.4:                                # %.lr.ph.i
                                        #   in Loop: Header=BB0_3 Depth=1
	fcmp.ceq.s	$fcc0, $ft9, $ft5
	bcnez	$fcc0, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	fmadd.s	$ft10, $ft9, $ft0, $fa7
	fmadd.s	$ft10, $ft10, $ft9, $ft1
	fmadd.s	$ft10, $ft10, $ft9, $ft3
	fadd.s	$ft11, $ft9, $fa4
	fsqrt.s	$ft12, $ft11
	fmul.s	$ft11, $ft12, $ft11
	fld.s	$ft12, $a4, 0
	frecip.s	$ft11, $ft11
	fadd.s	$ft11, $ft11, $ft4
	fmadd.s	$ft9, $ft9, $ft10, $ft11
	fmul.s	$ft9, $ft12, $ft9
	fmadd.s	$ft2, $ft9, $ft6, $ft2
	fmadd.s	$fa6, $ft9, $ft7, $fa6
	fmadd.s	$fa5, $ft9, $ft8, $fa5
	b	.LBB0_2
.LBB0_6:
	movgr2fr.w	$fa5, $zero
	fmov.s	$fa6, $fa5
	fmov.s	$ft2, $fa5
.LBB0_7:                                # %_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_.exit
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a6, 0
	fadd.s	$fa0, $fa0, $ft2
	fld.s	$fa2, $a7, 0
	fst.s	$fa0, $a5, 0
	fadd.s	$fa0, $fa1, $fa6
	fst.s	$fa0, $a6, 0
	fadd.s	$fa0, $fa2, $fa5
	fst.s	$fa0, $a7, 0
	ret
.Lfunc_end0:
	.size	_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_, .Lfunc_end0-_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_
.LCPI1_0:
	.word	0xb87df61a                      # float -6.05491005E-5
.LCPI1_1:
	.word	0x35c589a2                      # float 1.47177002E-6
.LCPI1_2:
	.word	0x3a8f475b                      # float 0.00109312998
.LCPI1_3:
	.word	0xbc3c19f7                      # float -0.0114807999
.LCPI1_4:
	.word	0x3d99cce0                      # float 0.0750977993
.LCPI1_5:
	.word	0xbe89e53b                      # float -0.269327015
	.text
	.globl	_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_
	.p2align	5
	.type	_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_,@function
_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_: # @_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_
# %bb.0:
	blez	$a0, .LBB1_6
# %bb.1:                                # %.lr.ph.preheader.i
	pcalau12i	$t0, %pc_hi20(.LCPI1_0)
	fld.s	$fa6, $t0, %pc_lo12(.LCPI1_0)
	pcalau12i	$t0, %pc_hi20(.LCPI1_1)
	fld.s	$ft0, $t0, %pc_lo12(.LCPI1_1)
	pcalau12i	$t0, %pc_hi20(.LCPI1_2)
	fld.s	$ft1, $t0, %pc_lo12(.LCPI1_2)
	pcalau12i	$t0, %pc_hi20(.LCPI1_3)
	fld.s	$ft2, $t0, %pc_lo12(.LCPI1_3)
	pcalau12i	$t0, %pc_hi20(.LCPI1_4)
	fld.s	$ft4, $t0, %pc_lo12(.LCPI1_4)
	pcalau12i	$t0, %pc_hi20(.LCPI1_5)
	fld.s	$ft5, $t0, %pc_lo12(.LCPI1_5)
	movgr2fr.w	$ft6, $zero
	fmov.s	$ft3, $ft6
	fmov.s	$fa7, $ft6
	fmov.s	$fa5, $ft6
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB1_7
.LBB1_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft7, $a1, 0
	fld.s	$ft8, $a2, 0
	fld.s	$ft9, $a3, 0
	fsub.s	$ft7, $ft7, $fa0
	fsub.s	$ft8, $ft8, $fa1
	fsub.s	$ft9, $ft9, $fa2
	fmul.s	$ft10, $ft7, $ft7
	fmadd.s	$ft10, $ft8, $ft8, $ft10
	fmadd.s	$ft10, $ft9, $ft9, $ft10
	fcmp.cle.s	$fcc0, $fa3, $ft10
	bcnez	$fcc0, .LBB1_2
# %bb.4:                                # %.lr.ph.i
                                        #   in Loop: Header=BB1_3 Depth=1
	fcmp.ceq.s	$fcc0, $ft10, $ft6
	bcnez	$fcc0, .LBB1_2
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	fmadd.s	$ft11, $ft10, $ft0, $fa6
	fmadd.s	$ft11, $ft11, $ft10, $ft1
	fmadd.s	$ft11, $ft11, $ft10, $ft2
	fmadd.s	$ft11, $ft11, $ft10, $ft4
	fadd.s	$ft12, $ft10, $fa4
	fsqrt.s	$ft13, $ft12
	fmul.s	$ft12, $ft13, $ft12
	fld.s	$ft13, $a4, 0
	frecip.s	$ft12, $ft12
	fadd.s	$ft12, $ft12, $ft5
	fmadd.s	$ft10, $ft10, $ft11, $ft12
	fmul.s	$ft10, $ft13, $ft10
	fmadd.s	$ft3, $ft10, $ft7, $ft3
	fmadd.s	$fa7, $ft10, $ft8, $fa7
	fmadd.s	$fa5, $ft10, $ft9, $fa5
	b	.LBB1_2
.LBB1_6:
	movgr2fr.w	$fa5, $zero
	fmov.s	$fa7, $fa5
	fmov.s	$ft3, $fa5
.LBB1_7:                                # %_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_.exit
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a6, 0
	fadd.s	$fa0, $fa0, $ft3
	fld.s	$fa2, $a7, 0
	fst.s	$fa0, $a5, 0
	fadd.s	$fa0, $fa1, $fa7
	fst.s	$fa0, $a6, 0
	fadd.s	$fa0, $fa2, $fa5
	fst.s	$fa0, $a7, 0
	ret
.Lfunc_end1:
	.size	_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_, .Lfunc_end1-_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_
.LCPI2_0:
	.word	0x36de991c                      # float 6.63393985E-6
.LCPI2_1:
	.word	0xb41e2ae4                      # float -1.47305002E-7
.LCPI2_2:
	.word	0xb90ac3ad                      # float -1.32336005E-4
.LCPI2_3:
	.word	0x3ad10a49                      # float 0.00159484998
.LCPI2_4:
	.word	0xbc5a1b6a                      # float -0.0133122001
.LCPI2_5:
	.word	0x3da07068                      # float 0.0783393979
.LCPI2_6:
	.word	0xbe8af901                      # float -0.271430999
	.text
	.globl	_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_
	.p2align	5
	.type	_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_,@function
_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_: # @_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_
# %bb.0:
	blez	$a0, .LBB2_6
# %bb.1:                                # %.lr.ph.preheader.i
	pcalau12i	$t0, %pc_hi20(.LCPI2_0)
	fld.s	$fa5, $t0, %pc_lo12(.LCPI2_0)
	pcalau12i	$t0, %pc_hi20(.LCPI2_1)
	fld.s	$fa7, $t0, %pc_lo12(.LCPI2_1)
	pcalau12i	$t0, %pc_hi20(.LCPI2_2)
	fld.s	$ft1, $t0, %pc_lo12(.LCPI2_2)
	pcalau12i	$t0, %pc_hi20(.LCPI2_3)
	fld.s	$ft2, $t0, %pc_lo12(.LCPI2_3)
	pcalau12i	$t0, %pc_hi20(.LCPI2_4)
	fld.s	$ft3, $t0, %pc_lo12(.LCPI2_4)
	pcalau12i	$t0, %pc_hi20(.LCPI2_5)
	fld.s	$ft5, $t0, %pc_lo12(.LCPI2_5)
	pcalau12i	$t0, %pc_hi20(.LCPI2_6)
	fld.s	$ft6, $t0, %pc_lo12(.LCPI2_6)
	movgr2fr.w	$ft7, $zero
	fmov.s	$ft4, $ft7
	fmov.s	$ft0, $ft7
	fmov.s	$fa6, $ft7
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB2_7
.LBB2_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft8, $a1, 0
	fld.s	$ft9, $a2, 0
	fld.s	$ft10, $a3, 0
	fsub.s	$ft8, $ft8, $fa0
	fsub.s	$ft9, $ft9, $fa1
	fsub.s	$ft10, $ft10, $fa2
	fmul.s	$ft11, $ft8, $ft8
	fmadd.s	$ft11, $ft9, $ft9, $ft11
	fmadd.s	$ft11, $ft10, $ft10, $ft11
	fcmp.cle.s	$fcc0, $fa3, $ft11
	bcnez	$fcc0, .LBB2_2
# %bb.4:                                # %.lr.ph.i
                                        #   in Loop: Header=BB2_3 Depth=1
	fcmp.ceq.s	$fcc0, $ft11, $ft7
	bcnez	$fcc0, .LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	fmadd.s	$ft12, $ft11, $fa7, $fa5
	fmadd.s	$ft12, $ft12, $ft11, $ft1
	fmadd.s	$ft12, $ft12, $ft11, $ft2
	fmadd.s	$ft12, $ft12, $ft11, $ft3
	fmadd.s	$ft12, $ft12, $ft11, $ft5
	fadd.s	$ft13, $ft11, $fa4
	fsqrt.s	$ft14, $ft13
	fmul.s	$ft13, $ft14, $ft13
	fld.s	$ft14, $a4, 0
	frecip.s	$ft13, $ft13
	fadd.s	$ft13, $ft13, $ft6
	fmadd.s	$ft11, $ft11, $ft12, $ft13
	fmul.s	$ft11, $ft14, $ft11
	fmadd.s	$ft4, $ft11, $ft8, $ft4
	fmadd.s	$ft0, $ft11, $ft9, $ft0
	fmadd.s	$fa6, $ft11, $ft10, $fa6
	b	.LBB2_2
.LBB2_6:
	movgr2fr.w	$fa6, $zero
	fmov.s	$ft0, $fa6
	fmov.s	$ft4, $fa6
.LBB2_7:                                # %_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_.exit
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a6, 0
	fadd.s	$fa0, $fa0, $ft4
	fld.s	$fa2, $a7, 0
	fst.s	$fa0, $a5, 0
	fadd.s	$fa0, $fa1, $ft0
	fst.s	$fa0, $a6, 0
	fadd.s	$fa0, $fa2, $fa6
	fst.s	$fa0, $a7, 0
	ret
.Lfunc_end2:
	.size	_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_, .Lfunc_end2-_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_
                                        # -- End function
	.type	PolyCoefficients4,@object       # @PolyCoefficients4
	.section	.rodata,"a",@progbits
	.globl	PolyCoefficients4
	.p2align	2, 0x0
PolyCoefficients4:
	.word	0x3e87077d                      # float 0.263729006
	.word	0xbd8c8d19                      # float -0.0686284974
	.word	0x3c108c2a                      # float 0.00882248021
	.word	0xba1b5121                      # float -5.92486991E-4
	.word	0x378a184e                      # float 1.64621997E-5
	.size	PolyCoefficients4, 20

	.type	PolyCoefficients5,@object       # @PolyCoefficients5
	.globl	PolyCoefficients5
	.p2align	2, 0x0
PolyCoefficients5:
	.word	0x3e89e53b                      # float 0.269327015
	.word	0xbd99cce0                      # float -0.0750977993
	.word	0x3c3c19f7                      # float 0.0114807999
	.word	0xba8f475b                      # float -0.00109312998
	.word	0x387df61a                      # float 6.05491005E-5
	.word	0xb5c589a2                      # float -1.47177002E-6
	.size	PolyCoefficients5, 24

	.type	PolyCoefficients6,@object       # @PolyCoefficients6
	.globl	PolyCoefficients6
	.p2align	2, 0x0
PolyCoefficients6:
	.word	0x3e8af901                      # float 0.271430999
	.word	0xbda07068                      # float -0.0783393979
	.word	0x3c5a1b6a                      # float 0.0133122001
	.word	0xbad10a49                      # float -0.00159484998
	.word	0x390ac3ad                      # float 1.32336005E-4
	.word	0xb6de991c                      # float -6.63393985E-6
	.word	0x341e2ae4                      # float 1.47305002E-7
	.size	PolyCoefficients6, 28

	.section	".note.GNU-stack","",@progbits
	.addrsig
