	.file	"oopack_v1p8.cpp"
	.text
	.globl	_ZNK12MaxBenchmark7c_styleEv    # -- Begin function _ZNK12MaxBenchmark7c_styleEv
	.p2align	5
	.type	_ZNK12MaxBenchmark7c_styleEv,@function
_ZNK12MaxBenchmark7c_styleEv:           # @_ZNK12MaxBenchmark7c_styleEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(U)
	addi.d	$a0, $a0, %pc_lo12(U)
	fld.d	$fa0, $a0, 0
	lu12i.w	$a1, -2
	ori	$a1, $a1, 200
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3896
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a1, 8
	add.d	$a3, $a1, $a0
	fldx.d	$fa1, $a3, $a2
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB0_1
# %bb.2:
	pcalau12i	$a0, %pc_hi20(MaxResult)
	fst.d	$fa0, $a0, %pc_lo12(MaxResult)
	ret
.Lfunc_end0:
	.size	_ZNK12MaxBenchmark7c_styleEv, .Lfunc_end0-_ZNK12MaxBenchmark7c_styleEv
                                        # -- End function
	.globl	_ZNK12MaxBenchmark9oop_styleEv  # -- Begin function _ZNK12MaxBenchmark9oop_styleEv
	.p2align	5
	.type	_ZNK12MaxBenchmark9oop_styleEv,@function
_ZNK12MaxBenchmark9oop_styleEv:         # @_ZNK12MaxBenchmark9oop_styleEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(U)
	addi.d	$a0, $a0, %pc_lo12(U)
	fld.d	$fa0, $a0, 0
	lu12i.w	$a1, -2
	ori	$a1, $a1, 200
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3896
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a1, 8
	add.d	$a3, $a1, $a0
	fldx.d	$fa1, $a3, $a2
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB1_1
# %bb.2:
	pcalau12i	$a0, %pc_hi20(MaxResult)
	fst.d	$fa0, $a0, %pc_lo12(MaxResult)
	ret
.Lfunc_end1:
	.size	_ZNK12MaxBenchmark9oop_styleEv, .Lfunc_end1-_ZNK12MaxBenchmark9oop_styleEv
                                        # -- End function
	.globl	_ZNK12MaxBenchmark4initEv       # -- Begin function _ZNK12MaxBenchmark4initEv
	.p2align	5
	.type	_ZNK12MaxBenchmark4initEv,@function
_ZNK12MaxBenchmark4initEv:              # @_ZNK12MaxBenchmark4initEv
# %bb.0:                                # %vector.ph
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, -2
	ori	$a0, $a0, 192
	vrepli.w	$vr1, 1
	vrepli.w	$vr2, -2
	pcalau12i	$a1, %pc_hi20(U)
	addi.d	$a1, $a1, %pc_lo12(U)
	lu12i.w	$a3, 1
	ori	$a2, $a3, 3904
	ori	$a3, $a3, 3920
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB2_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr4, $vr3, 2
	vand.v	$vr5, $vr3, $vr1
	vseqi.w	$vr5, $vr5, 0
	vneg.w	$vr6, $vr0
	vsub.w	$vr7, $vr2, $vr0
	vbitsel.v	$vr6, $vr6, $vr3, $vr5
	vbitsel.v	$vr4, $vr7, $vr4, $vr5
	vpickve2gr.w	$a4, $vr6, 1
	movgr2fr.w	$fa5, $a4
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$a4, $vr6, 0
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vpickve2gr.w	$a4, $vr4, 1
	movgr2fr.w	$fa5, $a4
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$a4, $vr4, 0
	movgr2fr.w	$fa4, $a4
	ffint.d.w	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	add.d	$a4, $a1, $a0
	vstx	$vr6, $a4, $a2
	vstx	$vr4, $a4, $a3
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr3, $vr3, 4
	bnez	$a0, .LBB2_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end2:
	.size	_ZNK12MaxBenchmark4initEv, .Lfunc_end2-_ZNK12MaxBenchmark4initEv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZNK12MaxBenchmark5checkEiRdS0_
.LCPI3_0:
	.dword	0x408f400000000000              # double 1000
	.text
	.globl	_ZNK12MaxBenchmark5checkEiRdS0_
	.p2align	5
	.type	_ZNK12MaxBenchmark5checkEiRdS0_,@function
_ZNK12MaxBenchmark5checkEiRdS0_:        # @_ZNK12MaxBenchmark5checkEiRdS0_
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	pcalau12i	$a0, %pc_hi20(MaxResult)
	fld.d	$fa0, $a0, %pc_lo12(MaxResult)
	fst.d	$fa0, $a3, 0
	ret
.Lfunc_end3:
	.size	_ZNK12MaxBenchmark5checkEiRdS0_, .Lfunc_end3-_ZNK12MaxBenchmark5checkEiRdS0_
                                        # -- End function
	.globl	_ZNK15MatrixBenchmark7c_styleEv # -- Begin function _ZNK15MatrixBenchmark7c_styleEv
	.p2align	5
	.type	_ZNK15MatrixBenchmark7c_styleEv,@function
_ZNK15MatrixBenchmark7c_styleEv:        # @_ZNK15MatrixBenchmark7c_styleEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(C)
	addi.d	$a0, $a0, %pc_lo12(C)
	ori	$a1, $zero, 400
	pcalau12i	$a2, %pc_hi20(E)
	addi.d	$a2, $a2, %pc_lo12(E)
	pcalau12i	$a3, %pc_hi20(D)
	addi.d	$a3, $a3, %pc_lo12(D)
	move	$a4, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a5, $zero, 50
	.p2align	4, , 16
.LBB4_1:                                # %.preheader17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
                                        #       Child Loop BB4_3 Depth 3
	move	$a6, $zero
	mul.d	$a7, $a4, $a1
	add.d	$a7, $a2, $a7
	move	$t0, $a3
	.p2align	4, , 16
.LBB4_2:                                # %.preheader
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_3 Depth 3
	move	$t1, $zero
	move	$t2, $t0
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB4_3:                                #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa2, $a0, $t1
	fld.d	$fa3, $t2, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 400
	bne	$t1, $a1, .LBB4_3
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=2
	slli.d	$t1, $a6, 3
	fstx.d	$fa1, $a7, $t1
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 8
	bne	$a6, $a5, .LBB4_2
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a0, $a0, 400
	bne	$a4, $a5, .LBB4_1
# %bb.6:
	ret
.Lfunc_end4:
	.size	_ZNK15MatrixBenchmark7c_styleEv, .Lfunc_end4-_ZNK15MatrixBenchmark7c_styleEv
                                        # -- End function
	.globl	_ZNK15MatrixBenchmark9oop_styleEv # -- Begin function _ZNK15MatrixBenchmark9oop_styleEv
	.p2align	5
	.type	_ZNK15MatrixBenchmark9oop_styleEv,@function
_ZNK15MatrixBenchmark9oop_styleEv:      # @_ZNK15MatrixBenchmark9oop_styleEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(C)
	addi.d	$a0, $a0, %pc_lo12(C)
	ori	$a1, $zero, 400
	pcalau12i	$a2, %pc_hi20(E)
	addi.d	$a2, $a2, %pc_lo12(E)
	pcalau12i	$a3, %pc_hi20(D)
	addi.d	$a3, $a3, %pc_lo12(D)
	move	$a4, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a5, $zero, 50
	.p2align	4, , 16
.LBB5_1:                                # %.preheader24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
                                        #       Child Loop BB5_3 Depth 3
	move	$a6, $zero
	mul.d	$a7, $a4, $a1
	add.d	$a7, $a2, $a7
	move	$t0, $a3
	.p2align	4, , 16
.LBB5_2:                                # %.preheader
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_3 Depth 3
	move	$t1, $zero
	move	$t2, $t0
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB5_3:                                #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa2, $a0, $t1
	fld.d	$fa3, $t2, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 400
	bne	$t1, $a1, .LBB5_3
# %bb.4:                                #   in Loop: Header=BB5_2 Depth=2
	slli.d	$t1, $a6, 3
	fstx.d	$fa1, $a7, $t1
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 8
	bne	$a6, $a5, .LBB5_2
# %bb.5:                                #   in Loop: Header=BB5_1 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a0, $a0, 400
	bne	$a4, $a5, .LBB5_1
# %bb.6:
	ret
.Lfunc_end5:
	.size	_ZNK15MatrixBenchmark9oop_styleEv, .Lfunc_end5-_ZNK15MatrixBenchmark9oop_styleEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNK15MatrixBenchmark4initEv
.LCPI6_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	_ZNK15MatrixBenchmark4initEv
	.p2align	5
	.type	_ZNK15MatrixBenchmark4initEv,@function
_ZNK15MatrixBenchmark4initEv:           # @_ZNK15MatrixBenchmark4initEv
# %bb.0:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI6_0)
	lu12i.w	$a0, -5
	ori	$a0, $a0, 480
	pcalau12i	$a1, %pc_hi20(C)
	addi.d	$a1, $a1, %pc_lo12(C)
	lu12i.w	$a3, 4
	ori	$a2, $a3, 3616
	ori	$a3, $a3, 3632
	pcalau12i	$a4, %pc_hi20(D)
	addi.d	$a4, $a4, %pc_lo12(D)
	.p2align	4, , 16
.LBB6_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vpickve2gr.w	$a5, $vr2, 1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa3, $a5
	ffint.d.l	$fa3, $fa3
	vpickve2gr.w	$a5, $vr2, 0
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa2, $fa2
	vextrins.d	$vr2, $vr3, 16
	vpickve2gr.w	$a5, $vr1, 1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa3, $a5
	ffint.d.l	$fa3, $fa3
	vpickve2gr.w	$a5, $vr1, 0
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	vextrins.d	$vr1, $vr3, 16
	add.d	$a5, $a1, $a0
	vstx	$vr2, $a5, $a2
	vstx	$vr1, $a5, $a3
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	add.d	$a5, $a4, $a0
	vstx	$vr2, $a5, $a2
	vstx	$vr1, $a5, $a3
	addi.d	$a0, $a0, 32
	vaddi.du	$vr0, $vr0, 4
	bnez	$a0, .LBB6_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end6:
	.size	_ZNK15MatrixBenchmark4initEv, .Lfunc_end6-_ZNK15MatrixBenchmark4initEv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZNK15MatrixBenchmark5checkEiRdS0_
.LCPI7_0:
	.dword	0x410e848000000000              # double 2.5E+5
	.text
	.globl	_ZNK15MatrixBenchmark5checkEiRdS0_
	.p2align	5
	.type	_ZNK15MatrixBenchmark5checkEiRdS0_,@function
_ZNK15MatrixBenchmark5checkEiRdS0_:     # @_ZNK15MatrixBenchmark5checkEiRdS0_
# %bb.0:
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a0, -5
	ori	$a0, $a0, 480
	pcalau12i	$a4, %pc_hi20(E)
	addi.d	$a4, $a4, %pc_lo12(E)
	lu12i.w	$a5, 4
	ori	$a5, $a5, 3616
	.p2align	4, , 16
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a4, $a0
	fldx.d	$fa1, $a6, $a5
	addi.d	$a0, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	bnez	$a0, .LBB7_1
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI7_0)
	fst.d	$fa0, $a3, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 0
	ret
.Lfunc_end7:
	.size	_ZNK15MatrixBenchmark5checkEiRdS0_, .Lfunc_end7-_ZNK15MatrixBenchmark5checkEiRdS0_
                                        # -- End function
	.globl	_ZNK17IteratorBenchmark7c_styleEv # -- Begin function _ZNK17IteratorBenchmark7c_styleEv
	.p2align	5
	.type	_ZNK17IteratorBenchmark7c_styleEv,@function
_ZNK17IteratorBenchmark7c_styleEv:      # @_ZNK17IteratorBenchmark7c_styleEv
# %bb.0:
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a0, -2
	ori	$a0, $a0, 192
	pcalau12i	$a1, %pc_hi20(A)
	addi.d	$a1, $a1, %pc_lo12(A)
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3904
	pcalau12i	$a3, %pc_hi20(B)
	addi.d	$a3, $a3, %pc_lo12(B)
	.p2align	4, , 16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	fldx.d	$fa1, $a4, $a2
	add.d	$a4, $a3, $a0
	fldx.d	$fa2, $a4, $a2
	addi.d	$a0, $a0, 8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	bnez	$a0, .LBB8_1
# %bb.2:
	pcalau12i	$a0, %pc_hi20(IteratorResult)
	fst.d	$fa0, $a0, %pc_lo12(IteratorResult)
	ret
.Lfunc_end8:
	.size	_ZNK17IteratorBenchmark7c_styleEv, .Lfunc_end8-_ZNK17IteratorBenchmark7c_styleEv
                                        # -- End function
	.globl	_ZNK17IteratorBenchmark9oop_styleEv # -- Begin function _ZNK17IteratorBenchmark9oop_styleEv
	.p2align	5
	.type	_ZNK17IteratorBenchmark9oop_styleEv,@function
_ZNK17IteratorBenchmark9oop_styleEv:    # @_ZNK17IteratorBenchmark9oop_styleEv
# %bb.0:
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a0, -2
	ori	$a0, $a0, 192
	pcalau12i	$a1, %pc_hi20(A)
	addi.d	$a1, $a1, %pc_lo12(A)
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3904
	pcalau12i	$a3, %pc_hi20(B)
	addi.d	$a3, $a3, %pc_lo12(B)
	.p2align	4, , 16
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	fldx.d	$fa1, $a4, $a2
	add.d	$a4, $a3, $a0
	fldx.d	$fa2, $a4, $a2
	addi.d	$a0, $a0, 8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	bnez	$a0, .LBB9_1
# %bb.2:
	pcalau12i	$a0, %pc_hi20(IteratorResult)
	fst.d	$fa0, $a0, %pc_lo12(IteratorResult)
	ret
.Lfunc_end9:
	.size	_ZNK17IteratorBenchmark9oop_styleEv, .Lfunc_end9-_ZNK17IteratorBenchmark9oop_styleEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNK17IteratorBenchmark4initEv
.LCPI10_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	_ZNK17IteratorBenchmark4initEv
	.p2align	5
	.type	_ZNK17IteratorBenchmark4initEv,@function
_ZNK17IteratorBenchmark4initEv:         # @_ZNK17IteratorBenchmark4initEv
# %bb.0:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI10_0)
	lu12i.w	$a0, -2
	ori	$a0, $a0, 192
	pcalau12i	$a1, %pc_hi20(A)
	addi.d	$a1, $a1, %pc_lo12(A)
	lu12i.w	$a3, 1
	ori	$a2, $a3, 3904
	ori	$a3, $a3, 3920
	pcalau12i	$a4, %pc_hi20(B)
	addi.d	$a4, $a4, %pc_lo12(B)
	.p2align	4, , 16
.LBB10_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vpickve2gr.w	$a5, $vr2, 1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa3, $a5
	ffint.d.l	$fa3, $fa3
	vpickve2gr.w	$a5, $vr2, 0
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa2, $fa2
	vextrins.d	$vr2, $vr3, 16
	vpickve2gr.w	$a5, $vr1, 1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa3, $a5
	ffint.d.l	$fa3, $fa3
	vpickve2gr.w	$a5, $vr1, 0
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	vextrins.d	$vr1, $vr3, 16
	add.d	$a5, $a1, $a0
	vstx	$vr2, $a5, $a2
	vstx	$vr1, $a5, $a3
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	add.d	$a5, $a4, $a0
	vstx	$vr2, $a5, $a2
	vstx	$vr1, $a5, $a3
	addi.d	$a0, $a0, 32
	vaddi.du	$vr0, $vr0, 4
	bnez	$a0, .LBB10_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end10:
	.size	_ZNK17IteratorBenchmark4initEv, .Lfunc_end10-_ZNK17IteratorBenchmark4initEv
                                        # -- End function
	.globl	_ZNK17IteratorBenchmark5checkEiRdS0_ # -- Begin function _ZNK17IteratorBenchmark5checkEiRdS0_
	.p2align	5
	.type	_ZNK17IteratorBenchmark5checkEiRdS0_,@function
_ZNK17IteratorBenchmark5checkEiRdS0_:   # @_ZNK17IteratorBenchmark5checkEiRdS0_
# %bb.0:
	ori	$a0, $zero, 2000
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 0
	pcalau12i	$a0, %pc_hi20(IteratorResult)
	fld.d	$fa0, $a0, %pc_lo12(IteratorResult)
	fst.d	$fa0, $a3, 0
	ret
.Lfunc_end11:
	.size	_ZNK17IteratorBenchmark5checkEiRdS0_, .Lfunc_end11-_ZNK17IteratorBenchmark5checkEiRdS0_
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZNK16ComplexBenchmark7c_styleEv
.LCPI12_0:
	.dword	0xbfebb67ae8584caa              # double -0.8660254037844386
.LCPI12_1:
	.dword	0x3febb67ae8584caa              # double 0.8660254037844386
	.text
	.globl	_ZNK16ComplexBenchmark7c_styleEv
	.p2align	5
	.type	_ZNK16ComplexBenchmark7c_styleEv,@function
_ZNK16ComplexBenchmark7c_styleEv:       # @_ZNK16ComplexBenchmark7c_styleEv
# %bb.0:
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	pcalau12i	$a1, %pc_hi20(Y)
	addi.d	$a1, $a1, %pc_lo12(Y)
	lu12i.w	$a4, 3
	ori	$a2, $a4, 3712
	pcalau12i	$a3, %pc_hi20(X)
	addi.d	$a3, $a3, %pc_lo12(X)
	pcalau12i	$a5, %pc_hi20(.LCPI12_0)
	fld.d	$fa0, $a5, %pc_lo12(.LCPI12_0)
	pcalau12i	$a5, %pc_hi20(.LCPI12_1)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI12_1)
	vldi	$vr2, -928
	ori	$a4, $a4, 3720
	.p2align	4, , 16
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	fldx.d	$fa3, $a5, $a2
	add.d	$a6, $a3, $a0
	fldx.d	$fa4, $a6, $a2
	fldx.d	$fa5, $a6, $a4
	fldx.d	$fa6, $a5, $a4
	fmadd.d	$fa3, $fa4, $fa2, $fa3
	fmadd.d	$fa3, $fa5, $fa0, $fa3
	fstx.d	$fa3, $a5, $a2
	fmadd.d	$fa3, $fa5, $fa2, $fa6
	fmadd.d	$fa3, $fa4, $fa1, $fa3
	addi.d	$a0, $a0, 16
	fstx.d	$fa3, $a5, $a4
	bnez	$a0, .LBB12_1
# %bb.2:
	ret
.Lfunc_end12:
	.size	_ZNK16ComplexBenchmark7c_styleEv, .Lfunc_end12-_ZNK16ComplexBenchmark7c_styleEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNK16ComplexBenchmark9oop_styleEv
.LCPI13_0:
	.dword	0x3febb67ae8584caa              # double 0.8660254037844386
	.dword	0xbfebb67ae8584caa              # double -0.8660254037844386
	.text
	.globl	_ZNK16ComplexBenchmark9oop_styleEv
	.p2align	5
	.type	_ZNK16ComplexBenchmark9oop_styleEv,@function
_ZNK16ComplexBenchmark9oop_styleEv:     # @_ZNK16ComplexBenchmark9oop_styleEv
# %bb.0:
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	pcalau12i	$a1, %pc_hi20(Y)
	addi.d	$a1, $a1, %pc_lo12(Y)
	pcalau12i	$a2, %pc_hi20(X)
	addi.d	$a2, $a2, %pc_lo12(X)
	lu12i.w	$a3, 3
	pcalau12i	$a4, %pc_hi20(.LCPI13_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI13_0)
	ori	$a3, $a3, 3712
	lu52i.d	$a4, $zero, 1022
	vreplgr2vr.d	$vr1, $a4
	.p2align	4, , 16
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a2, $a0
	vldx	$vr2, $a4, $a3
	add.d	$a4, $a1, $a0
	vldx	$vr3, $a4, $a3
	vfmul.d	$vr4, $vr2, $vr0
	vshuf4i.d	$vr4, $vr0, 1
	vfmadd.d	$vr2, $vr2, $vr1, $vr4
	vfadd.d	$vr2, $vr3, $vr2
	addi.d	$a0, $a0, 16
	vstx	$vr2, $a4, $a3
	bnez	$a0, .LBB13_1
# %bb.2:
	ret
.Lfunc_end13:
	.size	_ZNK16ComplexBenchmark9oop_styleEv, .Lfunc_end13-_ZNK16ComplexBenchmark9oop_styleEv
                                        # -- End function
	.globl	_ZNK16ComplexBenchmark4initEv   # -- Begin function _ZNK16ComplexBenchmark4initEv
	.p2align	5
	.type	_ZNK16ComplexBenchmark4initEv,@function
_ZNK16ComplexBenchmark4initEv:          # @_ZNK16ComplexBenchmark4initEv
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Y)
	addi.d	$a0, $a0, %pc_lo12(Y)
	lu12i.w	$s0, 3
	ori	$fp, $s0, 3712
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	lu12i.w	$a1, -4
	ori	$a1, $a1, 384
	pcalau12i	$a2, %pc_hi20(X)
	addi.d	$a2, $a2, %pc_lo12(X)
	ori	$a3, $s0, 3728
	ori	$a4, $s0, 3720
	ori	$a5, $s0, 3736
	.p2align	4, , 16
.LBB14_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a0, 31, 0
	addi.d	$a7, $a0, -1
	bstrpick.d	$a7, $a7, 31, 0
	movgr2fr.d	$fa0, $a7
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a6
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa2, $fa0
	frecip.d	$fa3, $fa1
	add.d	$a6, $a2, $a1
	fstx.d	$fa0, $a6, $fp
	fstx.d	$fa1, $a6, $a3
	fstx.d	$fa2, $a6, $a4
	fstx.d	$fa3, $a6, $a5
	addi.d	$a1, $a1, 32
	addi.w	$a0, $a0, 2
	bnez	$a1, .LBB14_1
# %bb.2:                                # %middle.block
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	_ZNK16ComplexBenchmark4initEv, .Lfunc_end14-_ZNK16ComplexBenchmark4initEv
                                        # -- End function
	.globl	_ZNK16ComplexBenchmark5checkEiRdS0_ # -- Begin function _ZNK16ComplexBenchmark5checkEiRdS0_
	.p2align	5
	.type	_ZNK16ComplexBenchmark5checkEiRdS0_,@function
_ZNK16ComplexBenchmark5checkEiRdS0_:    # @_ZNK16ComplexBenchmark5checkEiRdS0_
# %bb.0:
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	pcalau12i	$a4, %pc_hi20(Y)
	addi.d	$a4, $a4, %pc_lo12(Y)
	lu12i.w	$a6, 3
	ori	$a5, $a6, 3712
	ori	$a6, $a6, 3720
	.p2align	4, , 16
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a4, $a0
	fldx.d	$fa1, $a7, $a5
	fldx.d	$fa2, $a7, $a6
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a0, $a0, 16
	fadd.d	$fa0, $fa0, $fa1
	bnez	$a0, .LBB15_1
# %bb.2:
	fst.d	$fa0, $a3, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3904
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 0
	ret
.Lfunc_end15:
	.size	_ZNK16ComplexBenchmark5checkEiRdS0_, .Lfunc_end15-_ZNK16ComplexBenchmark5checkEiRdS0_
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_
.LCPI16_0:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI16_1:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_
	.p2align	5
	.type	_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_,@function
_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_: # @_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
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
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a7, $a0, 8
	move	$s2, $a6
	move	$fp, $a5
	move	$s0, $a4
	move	$s3, $a3
	move	$s5, $a2
	move	$s4, $a1
	move	$a0, $s1
	jirl	$ra, $a7, 0
	andi	$s7, $s4, 1
	add.d	$s5, $s1, $s5
	bnez	$s7, .LBB16_2
# %bb.1:
	move	$a1, $s4
	b	.LBB16_3
.LBB16_2:
	ld.d	$a0, $s5, 0
	add.d	$a0, $a0, $s4
	ld.d	$a1, $a0, -1
.LBB16_3:
	move	$a0, $s5
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s1
	jirl	$ra, $a1, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	blez	$s3, .LBB16_9
# %bb.4:                                # %.lr.ph
	bnez	$s7, .LBB16_7
# %bb.5:                                # %.lr.ph.split.us.preheader
	move	$s7, $s3
	.p2align	4, , 16
.LBB16_6:                               # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s5
	jirl	$ra, $s4, 0
	addi.w	$s7, $s7, -1
	bnez	$s7, .LBB16_6
	b	.LBB16_9
.LBB16_7:
	move	$s7, $s3
	.p2align	4, , 16
.LBB16_8:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	add.d	$a0, $a0, $s4
	ld.d	$a1, $a0, -1
	move	$a0, $s5
	jirl	$ra, $a1, 0
	addi.w	$s7, $s7, -1
	bnez	$s7, .LBB16_8
.LBB16_9:                               # %._crit_edge
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a4, $a1, 32
	move	$s4, $a0
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s3
	move	$a3, $s2
	jirl	$ra, $a4, 0
	sub.d	$a0, $s4, $s6
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI16_0)
	fld.d	$fa2, $sp, 8
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI16_1)
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 0
	fdiv.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $fp, 0
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
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
.Lfunc_end16:
	.size	_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_, .Lfunc_end16-_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9Benchmark4findEPKc          # -- Begin function _ZN9Benchmark4findEPKc
	.p2align	5
	.type	_ZN9Benchmark4findEPKc,@function
_ZN9Benchmark4findEPKc:                 # @_ZN9Benchmark4findEPKc
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
	pcalau12i	$s0, %pc_hi20(_ZN9Benchmark5countE)
	ld.w	$a1, $s0, %pc_lo12(_ZN9Benchmark5countE)
	blez	$a1, .LBB17_4
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9Benchmark4listE)
	addi.d	$s1, $a0, %pc_lo12(_ZN9Benchmark4listE)
	move	$s2, $zero
	.p2align	4, , 16
.LBB17_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_5
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	ld.w	$a0, $s0, %pc_lo12(_ZN9Benchmark5countE)
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB17_2
.LBB17_4:
	move	$a0, $zero
	b	.LBB17_6
.LBB17_5:
	ld.d	$a0, $s1, 0
.LBB17_6:                               # %.loopexit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	_ZN9Benchmark4findEPKc, .Lfunc_end17-_ZN9Benchmark4findEPKc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZNK9Benchmark9time_bothEi
.LCPI18_0:
	.dword	0x3d10000000000000              # double 1.4210854715202004E-14
	.text
	.globl	_ZNK9Benchmark9time_bothEi
	.p2align	5
	.type	_ZNK9Benchmark9time_bothEi,@function
_ZNK9Benchmark9time_bothEi:             # @_ZNK9Benchmark9time_bothEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 8
	move	$fp, $a1
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB18_3
# %bb.1:                                # %.lr.ph.split.i.preheader
	move	$s1, $fp
	.p2align	4, , 16
.LBB18_2:                               # %.lr.ph.split.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB18_2
.LBB18_3:                               # %_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_.exit
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 32
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 24
	move	$a0, $s0
	move	$a1, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB18_6
# %bb.4:                                # %.lr.ph.split.i18.preheader
	move	$s1, $fp
	.p2align	4, , 16
.LBB18_5:                               # %.lr.ph.split.i18
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB18_5
.LBB18_6:                               # %_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_.exit21
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 32
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	move	$a1, $fp
	jirl	$ra, $a4, 0
	fld.d	$fa0, $sp, 24
	fld.d	$fa1, $sp, 16
	fsub.d	$fa2, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI18_0)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI18_0)
	fsel	$fa0, $fa1, $fa0, $fcc0
	fdiv.d	$fs0, $fa2, $fa0
	fabs.d	$fa0, $fs0
	fcmp.cule.d	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB18_8
# %bb.7:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a4, $sp, 16
	ld.d	$a3, $sp, 24
	move	$a1, $a0
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB18_8:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end18:
	.size	_ZNK9Benchmark9time_bothEi, .Lfunc_end18-_ZNK9Benchmark9time_bothEi
	.cfi_endproc
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	_Z5UsageiPPc                    # -- Begin function _Z5UsageiPPc
	.p2align	5
	.type	_Z5UsageiPPc,@function
_Z5UsageiPPc:                           # @_Z5UsageiPPc
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_Z5UsageiPPc, .Lfunc_end19-_Z5UsageiPPc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	pcalau12i	$a0, %pc_hi20(.L__const.main.str1)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.str1)
	ld.h	$a1, $a0, 4
	ld.w	$a0, $a0, 0
	st.h	$a1, $sp, 124
	st.w	$a0, $sp, 120
	pcalau12i	$a0, %pc_hi20(.L__const.main.str2)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.str2)
	ld.h	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	st.h	$a1, $sp, 112
	st.d	$a0, $sp, 104
	pcalau12i	$a0, %pc_hi20(.L__const.main.str3)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.str3)
	ld.w	$a1, $a0, 7
	ld.d	$a0, $a0, 0
	st.w	$a1, $sp, 95
	st.d	$a0, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L__const.main.str4)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.str4)
	ld.d	$a1, $a0, 5
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 77
	st.d	$a0, $sp, 72
	pcalau12i	$a0, %pc_hi20(.L__const.main.str5)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.str5)
	ld.d	$a1, $a0, 7
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 63
	st.d	$a0, $sp, 56
	addi.d	$a0, $sp, 120
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 88
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 72
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 40
	st.d	$zero, $sp, 48
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ld.hu	$a1, $a0, 154
	andi	$a1, $a1, 1024
	beqz	$a1, .LBB20_37
# %bb.1:
	ld.hu	$a1, $a0, 134
	andi	$a1, $a1, 1024
	beqz	$a1, .LBB20_37
# %bb.2:
	ld.hu	$a0, $a0, 146
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB20_37
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$fp, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a3, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a4, $a0, %pc_lo12(.L.str.13)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s0, $a0, %pc_lo12(.L.str.11)
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s0
	move	$a5, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	pcalau12i	$a3, %pc_hi20(.L.str.17)
	addi.d	$a3, $a3, %pc_lo12(.L.str.17)
	pcalau12i	$a4, %pc_hi20(.L.str.18)
	addi.d	$a4, $a4, %pc_lo12(.L.str.18)
	pcalau12i	$a5, %pc_hi20(.L.str.19)
	addi.d	$a7, $a5, %pc_lo12(.L.str.19)
	move	$a5, $a3
	move	$a6, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a3, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	move	$a0, $fp
	move	$a4, $a3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(_ZN9Benchmark5countE)
	beqz	$a0, .LBB20_10
# %bb.4:
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(_ZN9Benchmark5countE)
	blez	$a1, .LBB20_32
# %bb.5:                                # %.lr.ph.i.preheader
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9Benchmark4listE)
	addi.d	$s2, $a0, %pc_lo12(_ZN9Benchmark4listE)
	move	$s3, $zero
	.p2align	4, , 16
.LBB20_6:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_8
# %bb.7:                                #   in Loop: Header=BB20_6 Depth=1
	ld.w	$a0, $s1, %pc_lo12(_ZN9Benchmark5countE)
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB20_6
	b	.LBB20_32
.LBB20_8:                               # %_ZN9Benchmark4findEPKc.exit
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB20_32
# %bb.9:
	addi.w	$a1, $s0, 0
	pcaddu18i	$ra, %call36(_ZNK9Benchmark9time_bothEi)
	jirl	$ra, $ra, 0
	b	.LBB20_11
.LBB20_10:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB20_11:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_18
# %bb.12:
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(_ZN9Benchmark5countE)
	blez	$a1, .LBB20_32
# %bb.13:                               # %.lr.ph.i.1.preheader
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9Benchmark4listE)
	addi.d	$s2, $a0, %pc_lo12(_ZN9Benchmark4listE)
	move	$s3, $zero
	.p2align	4, , 16
.LBB20_14:                              # %.lr.ph.i.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_16
# %bb.15:                               #   in Loop: Header=BB20_14 Depth=1
	ld.w	$a0, $s1, %pc_lo12(_ZN9Benchmark5countE)
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB20_14
	b	.LBB20_32
.LBB20_16:                              # %_ZN9Benchmark4findEPKc.exit.1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB20_32
# %bb.17:
	addi.w	$a1, $s0, 0
	pcaddu18i	$ra, %call36(_ZNK9Benchmark9time_bothEi)
	jirl	$ra, $ra, 0
	b	.LBB20_19
.LBB20_18:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB20_19:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_26
# %bb.20:
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(_ZN9Benchmark5countE)
	blez	$a1, .LBB20_32
# %bb.21:                               # %.lr.ph.i.2.preheader
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9Benchmark4listE)
	addi.d	$s2, $a0, %pc_lo12(_ZN9Benchmark4listE)
	move	$s3, $zero
	.p2align	4, , 16
.LBB20_22:                              # %.lr.ph.i.2
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_24
# %bb.23:                               #   in Loop: Header=BB20_22 Depth=1
	ld.w	$a0, $s1, %pc_lo12(_ZN9Benchmark5countE)
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB20_22
	b	.LBB20_32
.LBB20_24:                              # %_ZN9Benchmark4findEPKc.exit.2
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB20_32
# %bb.25:
	addi.w	$a1, $s0, 0
	pcaddu18i	$ra, %call36(_ZNK9Benchmark9time_bothEi)
	jirl	$ra, $ra, 0
	b	.LBB20_27
.LBB20_26:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB20_27:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_35
# %bb.28:
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(_ZN9Benchmark5countE)
	blez	$a1, .LBB20_32
# %bb.29:                               # %.lr.ph.i.3.preheader
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9Benchmark4listE)
	addi.d	$s2, $a0, %pc_lo12(_ZN9Benchmark4listE)
	move	$s3, $zero
	.p2align	4, , 16
.LBB20_30:                              # %.lr.ph.i.3
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_33
# %bb.31:                               #   in Loop: Header=BB20_30 Depth=1
	ld.w	$a0, $s1, %pc_lo12(_ZN9Benchmark5countE)
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB20_30
.LBB20_32:                              # %_ZN9Benchmark4findEPKc.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB20_33:                              # %_ZN9Benchmark4findEPKc.exit.3
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB20_32
# %bb.34:
	addi.w	$a1, $s0, 0
	pcaddu18i	$ra, %call36(_ZNK9Benchmark9time_bothEi)
	jirl	$ra, $ra, 0
	b	.LBB20_36
.LBB20_35:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB20_36:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB20_37:
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_Z5UsageiPPc)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	main, .Lfunc_end20-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK12MaxBenchmark4nameEv,"axG",@progbits,_ZNK12MaxBenchmark4nameEv,comdat
	.weak	_ZNK12MaxBenchmark4nameEv       # -- Begin function _ZNK12MaxBenchmark4nameEv
	.p2align	5
	.type	_ZNK12MaxBenchmark4nameEv,@function
_ZNK12MaxBenchmark4nameEv:              # @_ZNK12MaxBenchmark4nameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ret
.Lfunc_end21:
	.size	_ZNK12MaxBenchmark4nameEv, .Lfunc_end21-_ZNK12MaxBenchmark4nameEv
                                        # -- End function
	.section	.text._ZNK15MatrixBenchmark4nameEv,"axG",@progbits,_ZNK15MatrixBenchmark4nameEv,comdat
	.weak	_ZNK15MatrixBenchmark4nameEv    # -- Begin function _ZNK15MatrixBenchmark4nameEv
	.p2align	5
	.type	_ZNK15MatrixBenchmark4nameEv,@function
_ZNK15MatrixBenchmark4nameEv:           # @_ZNK15MatrixBenchmark4nameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ret
.Lfunc_end22:
	.size	_ZNK15MatrixBenchmark4nameEv, .Lfunc_end22-_ZNK15MatrixBenchmark4nameEv
                                        # -- End function
	.section	.text._ZNK17IteratorBenchmark4nameEv,"axG",@progbits,_ZNK17IteratorBenchmark4nameEv,comdat
	.weak	_ZNK17IteratorBenchmark4nameEv  # -- Begin function _ZNK17IteratorBenchmark4nameEv
	.p2align	5
	.type	_ZNK17IteratorBenchmark4nameEv,@function
_ZNK17IteratorBenchmark4nameEv:         # @_ZNK17IteratorBenchmark4nameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ret
.Lfunc_end23:
	.size	_ZNK17IteratorBenchmark4nameEv, .Lfunc_end23-_ZNK17IteratorBenchmark4nameEv
                                        # -- End function
	.section	.text._ZNK16ComplexBenchmark4nameEv,"axG",@progbits,_ZNK16ComplexBenchmark4nameEv,comdat
	.weak	_ZNK16ComplexBenchmark4nameEv   # -- Begin function _ZNK16ComplexBenchmark4nameEv
	.p2align	5
	.type	_ZNK16ComplexBenchmark4nameEv,@function
_ZNK16ComplexBenchmark4nameEv:          # @_ZNK16ComplexBenchmark4nameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ret
.Lfunc_end24:
	.size	_ZNK16ComplexBenchmark4nameEv, .Lfunc_end24-_ZNK16ComplexBenchmark4nameEv
                                        # -- End function
	.type	_ZN9Benchmark5countE,@object    # @_ZN9Benchmark5countE
	.data
	.globl	_ZN9Benchmark5countE
	.p2align	2, 0x0
_ZN9Benchmark5countE:
	.word	4                               # 0x4
	.size	_ZN9Benchmark5countE, 4

	.type	_ZN9Benchmark4listE,@object     # @_ZN9Benchmark4listE
	.globl	_ZN9Benchmark4listE
	.p2align	3, 0x0
_ZN9Benchmark4listE:
	.dword	TheMaxBenchmark
	.dword	TheMatrixBenchmark
	.dword	TheIteratorBenchmark
	.dword	TheComplexBenchmark
	.size	_ZN9Benchmark4listE, 32

	.type	U,@object                       # @U
	.bss
	.globl	U
	.p2align	3, 0x0
U:
	.space	8000
	.size	U, 8000

	.type	MaxResult,@object               # @MaxResult
	.globl	MaxResult
	.p2align	3, 0x0
MaxResult:
	.dword	0x0000000000000000              # double 0
	.size	MaxResult, 8

	.type	TheMaxBenchmark,@object         # @TheMaxBenchmark
	.data
	.globl	TheMaxBenchmark
	.p2align	3, 0x0
TheMaxBenchmark:
	.dword	_ZTV12MaxBenchmark+16
	.size	TheMaxBenchmark, 8

	.type	C,@object                       # @C
	.bss
	.globl	C
	.p2align	3, 0x0
C:
	.space	20000
	.size	C, 20000

	.type	D,@object                       # @D
	.globl	D
	.p2align	3, 0x0
D:
	.space	20000
	.size	D, 20000

	.type	E,@object                       # @E
	.globl	E
	.p2align	3, 0x0
E:
	.space	20000
	.size	E, 20000

	.type	TheMatrixBenchmark,@object      # @TheMatrixBenchmark
	.data
	.globl	TheMatrixBenchmark
	.p2align	3, 0x0
TheMatrixBenchmark:
	.dword	_ZTV15MatrixBenchmark+16
	.size	TheMatrixBenchmark, 8

	.type	A,@object                       # @A
	.bss
	.globl	A
	.p2align	3, 0x0
A:
	.space	8000
	.size	A, 8000

	.type	B,@object                       # @B
	.globl	B
	.p2align	3, 0x0
B:
	.space	8000
	.size	B, 8000

	.type	IteratorResult,@object          # @IteratorResult
	.globl	IteratorResult
	.p2align	3, 0x0
IteratorResult:
	.dword	0x0000000000000000              # double 0
	.size	IteratorResult, 8

	.type	TheIteratorBenchmark,@object    # @TheIteratorBenchmark
	.data
	.globl	TheIteratorBenchmark
	.p2align	3, 0x0
TheIteratorBenchmark:
	.dword	_ZTV17IteratorBenchmark+16
	.size	TheIteratorBenchmark, 8

	.type	TheComplexBenchmark,@object     # @TheComplexBenchmark
	.globl	TheComplexBenchmark
	.p2align	3, 0x0
TheComplexBenchmark:
	.dword	_ZTV16ComplexBenchmark+16
	.size	TheComplexBenchmark, 8

	.type	X,@object                       # @X
	.bss
	.globl	X
	.p2align	3, 0x0
X:
	.space	16000
	.size	X, 16000

	.type	Y,@object                       # @Y
	.globl	Y
	.p2align	3, 0x0
Y:
	.space	16000
	.size	Y, 16000

	.type	C_Seconds,@object               # @C_Seconds
	.data
	.globl	C_Seconds
	.p2align	3, 0x0
C_Seconds:
	.dword	0x3ff0000000000000              # double 1
	.size	C_Seconds, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%-10s: warning: relative checksum error of %g between C (%g) and oop (%g)\n"
	.size	.L.str, 75

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%-10s %10d\n"
	.size	.L.str.6, 12

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Version 1.7"
	.size	.L.str.7, 12

	.type	Version,@object                 # @Version
	.data
	.globl	Version
	.p2align	3, 0x0
Version:
	.dword	.L.str.7
	.size	Version, 8

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Usage:\t%s test1=iterations1 test2=iterations2 ...\n"
	.size	.L.str.8, 51

	.type	.L__const.main.str1,@object     # @__const.main.str1
.L__const.main.str1:
	.asciz	"a.out"
	.size	.L__const.main.str1, 6

	.type	.L__const.main.str2,@object     # @__const.main.str2
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L__const.main.str2:
	.asciz	"Max=15000"
	.size	.L__const.main.str2, 10

	.type	.L__const.main.str3,@object     # @__const.main.str3
	.p2align	3, 0x0
.L__const.main.str3:
	.asciz	"Matrix=200"
	.size	.L__const.main.str3, 11

	.type	.L__const.main.str4,@object     # @__const.main.str4
	.p2align	3, 0x0
.L__const.main.str4:
	.asciz	"Complex=2000"
	.size	.L__const.main.str4, 13

	.type	.L__const.main.str5,@object     # @__const.main.str5
	.p2align	3, 0x0
.L__const.main.str5:
	.asciz	"Iterator=20000"
	.size	.L__const.main.str5, 15

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"%-10s %10s  %11s  %11s  %5s\n"
	.size	.L.str.10, 29

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.space	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Seconds  "
	.size	.L.str.12, 10

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Mflops  "
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%-10s %10s  %5s %5s  %5s %5s  %5s\n"
	.size	.L.str.14, 35

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Test"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Iterations"
	.size	.L.str.16, 11

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	" C "
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"OOP"
	.size	.L.str.18, 4

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Ratio"
	.size	.L.str.19, 6

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"----"
	.size	.L.str.20, 5

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"----------"
	.size	.L.str.21, 11

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"-----------"
	.size	.L.str.22, 12

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"-----"
	.size	.L.str.23, 6

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"="
	.size	.L.str.24, 2

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"missing iteration count for test '%s'\n"
	.size	.L.str.25, 39

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"skipping non-existent test = '%s'\n"
	.size	.L.str.26, 35

	.type	_ZTV12MaxBenchmark,@object      # @_ZTV12MaxBenchmark
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV12MaxBenchmark
	.p2align	3, 0x0
_ZTV12MaxBenchmark:
	.dword	0
	.dword	_ZTI12MaxBenchmark
	.dword	_ZNK12MaxBenchmark4nameEv
	.dword	_ZNK12MaxBenchmark4initEv
	.dword	_ZNK12MaxBenchmark7c_styleEv
	.dword	_ZNK12MaxBenchmark9oop_styleEv
	.dword	_ZNK12MaxBenchmark5checkEiRdS0_
	.size	_ZTV12MaxBenchmark, 56

	.type	_ZTI12MaxBenchmark,@object      # @_ZTI12MaxBenchmark
	.globl	_ZTI12MaxBenchmark
	.p2align	3, 0x0
_ZTI12MaxBenchmark:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS12MaxBenchmark
	.dword	_ZTI9Benchmark
	.size	_ZTI12MaxBenchmark, 24

	.type	_ZTS12MaxBenchmark,@object      # @_ZTS12MaxBenchmark
	.section	.rodata,"a",@progbits
	.globl	_ZTS12MaxBenchmark
_ZTS12MaxBenchmark:
	.asciz	"12MaxBenchmark"
	.size	_ZTS12MaxBenchmark, 15

	.type	_ZTI9Benchmark,@object          # @_ZTI9Benchmark
	.section	.data.rel.ro._ZTI9Benchmark,"awG",@progbits,_ZTI9Benchmark,comdat
	.weak	_ZTI9Benchmark
	.p2align	3, 0x0
_ZTI9Benchmark:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS9Benchmark
	.size	_ZTI9Benchmark, 16

	.type	_ZTS9Benchmark,@object          # @_ZTS9Benchmark
	.section	.rodata._ZTS9Benchmark,"aG",@progbits,_ZTS9Benchmark,comdat
	.weak	_ZTS9Benchmark
_ZTS9Benchmark:
	.asciz	"9Benchmark"
	.size	_ZTS9Benchmark, 11

	.type	_ZTV15MatrixBenchmark,@object   # @_ZTV15MatrixBenchmark
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV15MatrixBenchmark
	.p2align	3, 0x0
_ZTV15MatrixBenchmark:
	.dword	0
	.dword	_ZTI15MatrixBenchmark
	.dword	_ZNK15MatrixBenchmark4nameEv
	.dword	_ZNK15MatrixBenchmark4initEv
	.dword	_ZNK15MatrixBenchmark7c_styleEv
	.dword	_ZNK15MatrixBenchmark9oop_styleEv
	.dword	_ZNK15MatrixBenchmark5checkEiRdS0_
	.size	_ZTV15MatrixBenchmark, 56

	.type	_ZTI15MatrixBenchmark,@object   # @_ZTI15MatrixBenchmark
	.globl	_ZTI15MatrixBenchmark
	.p2align	3, 0x0
_ZTI15MatrixBenchmark:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15MatrixBenchmark
	.dword	_ZTI9Benchmark
	.size	_ZTI15MatrixBenchmark, 24

	.type	_ZTS15MatrixBenchmark,@object   # @_ZTS15MatrixBenchmark
	.section	.rodata,"a",@progbits
	.globl	_ZTS15MatrixBenchmark
_ZTS15MatrixBenchmark:
	.asciz	"15MatrixBenchmark"
	.size	_ZTS15MatrixBenchmark, 18

	.type	_ZTV17IteratorBenchmark,@object # @_ZTV17IteratorBenchmark
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV17IteratorBenchmark
	.p2align	3, 0x0
_ZTV17IteratorBenchmark:
	.dword	0
	.dword	_ZTI17IteratorBenchmark
	.dword	_ZNK17IteratorBenchmark4nameEv
	.dword	_ZNK17IteratorBenchmark4initEv
	.dword	_ZNK17IteratorBenchmark7c_styleEv
	.dword	_ZNK17IteratorBenchmark9oop_styleEv
	.dword	_ZNK17IteratorBenchmark5checkEiRdS0_
	.size	_ZTV17IteratorBenchmark, 56

	.type	_ZTI17IteratorBenchmark,@object # @_ZTI17IteratorBenchmark
	.globl	_ZTI17IteratorBenchmark
	.p2align	3, 0x0
_ZTI17IteratorBenchmark:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS17IteratorBenchmark
	.dword	_ZTI9Benchmark
	.size	_ZTI17IteratorBenchmark, 24

	.type	_ZTS17IteratorBenchmark,@object # @_ZTS17IteratorBenchmark
	.section	.rodata,"a",@progbits
	.globl	_ZTS17IteratorBenchmark
_ZTS17IteratorBenchmark:
	.asciz	"17IteratorBenchmark"
	.size	_ZTS17IteratorBenchmark, 20

	.type	_ZTV16ComplexBenchmark,@object  # @_ZTV16ComplexBenchmark
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV16ComplexBenchmark
	.p2align	3, 0x0
_ZTV16ComplexBenchmark:
	.dword	0
	.dword	_ZTI16ComplexBenchmark
	.dword	_ZNK16ComplexBenchmark4nameEv
	.dword	_ZNK16ComplexBenchmark4initEv
	.dword	_ZNK16ComplexBenchmark7c_styleEv
	.dword	_ZNK16ComplexBenchmark9oop_styleEv
	.dword	_ZNK16ComplexBenchmark5checkEiRdS0_
	.size	_ZTV16ComplexBenchmark, 56

	.type	_ZTI16ComplexBenchmark,@object  # @_ZTI16ComplexBenchmark
	.globl	_ZTI16ComplexBenchmark
	.p2align	3, 0x0
_ZTI16ComplexBenchmark:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS16ComplexBenchmark
	.dword	_ZTI9Benchmark
	.size	_ZTI16ComplexBenchmark, 24

	.type	_ZTS16ComplexBenchmark,@object  # @_ZTS16ComplexBenchmark
	.section	.rodata,"a",@progbits
	.globl	_ZTS16ComplexBenchmark
_ZTS16ComplexBenchmark:
	.asciz	"16ComplexBenchmark"
	.size	_ZTS16ComplexBenchmark, 19

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"Max"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Matrix"
	.size	.L.str.29, 7

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Iterator"
	.size	.L.str.30, 9

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Complex"
	.size	.L.str.31, 8

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"E.g.:\ta.out  Max=5000 Matrix=50 Complex=2000  Iterator=5000"
	.size	.Lstr, 60

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"\nDONE!"
	.size	.Lstr.1, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TheMaxBenchmark
	.addrsig_sym TheMatrixBenchmark
	.addrsig_sym TheIteratorBenchmark
	.addrsig_sym TheComplexBenchmark
	.addrsig_sym _ZTI12MaxBenchmark
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS12MaxBenchmark
	.addrsig_sym _ZTI9Benchmark
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS9Benchmark
	.addrsig_sym _ZTI15MatrixBenchmark
	.addrsig_sym _ZTS15MatrixBenchmark
	.addrsig_sym _ZTI17IteratorBenchmark
	.addrsig_sym _ZTS17IteratorBenchmark
	.addrsig_sym _ZTI16ComplexBenchmark
	.addrsig_sym _ZTS16ComplexBenchmark
