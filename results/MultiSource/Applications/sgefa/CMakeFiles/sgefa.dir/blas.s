	.file	"blas.c"
	.text
	.globl	isamax                          # -- Begin function isamax
	.p2align	5
	.type	isamax,@function
isamax:                                 # @isamax
# %bb.0:
	ori	$a3, $zero, 2
	bge	$a0, $a3, .LBB0_2
# %bb.1:
	move	$a3, $zero
	move	$a0, $a3
	ret
.LBB0_2:
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB0_6
# %bb.3:                                # %.lr.ph64.preheader
	fld.s	$fa1, $a1, 0
	move	$a3, $zero
	fneg.s	$fa2, $fa1
	movgr2fr.w	$fa0, $zero
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	addi.d	$a1, $a1, 4
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_4:                                # %.lr.ph64
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a1, 0
	fneg.s	$fa3, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	movcf2gr	$a4, $fcc0
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	bne	$a0, $a2, .LBB0_4
.LBB0_5:                                # %.loopexit
	move	$a0, $a3
	ret
.LBB0_6:                                # %.lr.ph.preheader
	slti	$a3, $a2, 0
	sub.d	$a5, $a4, $a0
	mul.w	$a5, $a2, $a5
	alsl.d	$a5, $a5, $a1, 2
	addi.d	$a5, $a5, 4
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a5, $a3
	or	$a5, $a3, $a1
	fld.s	$fa1, $a5, 0
	move	$a3, $zero
	fneg.s	$fa2, $fa1
	movgr2fr.w	$fa0, $zero
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	slli.d	$a1, $a2, 2
	alsl.d	$a2, $a2, $a5, 2
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a2, 0
	fneg.s	$fa3, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	movcf2gr	$a5, $fcc0
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.w	$a4, $a4, 1
	add.d	$a2, $a2, $a1
	bne	$a0, $a4, .LBB0_7
	b	.LBB0_5
.Lfunc_end0:
	.size	isamax, .Lfunc_end0-isamax
                                        # -- End function
	.globl	saxpy                           # -- Begin function saxpy
	.p2align	5
	.type	saxpy,@function
saxpy:                                  # @saxpy
# %bb.0:
	blez	$a0, .LBB1_15
# %bb.1:
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_15
# %bb.2:
	bne	$a2, $a4, .LBB1_13
# %bb.3:
	ori	$a5, $zero, 1
	bne	$a2, $a5, .LBB1_10
# %bb.4:                                # %.lr.ph65.preheader
	ori	$a2, $zero, 8
	bltu	$a0, $a2, .LBB1_7
# %bb.5:                                # %vector.memcheck
	addi.d	$a2, $a0, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a4, $a1, $a2
	bgeu	$a3, $a4, .LBB1_16
# %bb.6:                                # %vector.memcheck
	add.d	$a2, $a3, $a2
	bgeu	$a1, $a2, .LBB1_16
.LBB1_7:
	move	$a5, $zero
	move	$a2, $a1
	move	$a4, $a3
.LBB1_8:                                # %.lr.ph65.preheader84
	sub.d	$a0, $a0, $a5
	.p2align	4, , 16
.LBB1_9:                                # %.lr.ph65
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fmadd.s	$fa1, $fa0, $fa1, $fa2
	fst.s	$fa1, $a4, 0
	addi.d	$a4, $a4, 4
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_9
	b	.LBB1_15
.LBB1_10:
	blez	$a2, .LBB1_13
# %bb.11:                               # %.lr.ph61
	move	$a4, $zero
	slli.d	$a2, $a2, 2
	.p2align	4, , 16
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a1, $a4
	fldx.s	$fa2, $a3, $a4
	fmadd.s	$fa1, $fa0, $fa1, $fa2
	fstx.s	$fa1, $a3, $a4
	addi.w	$a0, $a0, -1
	add.d	$a4, $a4, $a2
	bnez	$a0, .LBB1_12
	b	.LBB1_15
.LBB1_13:                               # %.lr.ph
	slti	$a5, $a4, 0
	ori	$a6, $zero, 1
	sub.d	$a6, $a6, $a0
	mul.w	$a7, $a4, $a6
	alsl.d	$a7, $a7, $a3, 2
	addi.d	$a7, $a7, 4
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a7, $a5
	or	$a3, $a5, $a3
	slti	$a5, $a2, 0
	mul.w	$a6, $a2, $a6
	alsl.d	$a6, $a6, $a1, 2
	addi.d	$a6, $a6, 4
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $a6, $a5
	or	$a1, $a5, $a1
	slli.d	$a2, $a2, 2
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fmadd.s	$fa1, $fa0, $fa1, $fa2
	fst.s	$fa1, $a3, 0
	addi.w	$a0, $a0, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bnez	$a0, .LBB1_14
.LBB1_15:                               # %.loopexit
	ret
.LBB1_16:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a5, $a2, 3
	slli.d	$a4, $a2, 5
	add.d	$a2, $a1, $a4
	add.d	$a4, $a3, $a4
	vreplvei.w	$vr1, $vr0, 0
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 16
	move	$a6, $a5
	.p2align	4, , 16
.LBB1_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a3, -16
	vld	$vr5, $a3, 0
	vfmadd.s	$vr2, $vr1, $vr2, $vr4
	vfmadd.s	$vr3, $vr1, $vr3, $vr5
	vst	$vr2, $a3, -16
	vst	$vr3, $a3, 0
	addi.d	$a3, $a3, 32
	addi.d	$a6, $a6, -8
	addi.d	$a1, $a1, 32
	bnez	$a6, .LBB1_17
# %bb.18:                               # %middle.block
	bne	$a5, $a0, .LBB1_8
	b	.LBB1_15
.Lfunc_end1:
	.size	saxpy, .Lfunc_end1-saxpy
                                        # -- End function
	.globl	saxpyx                          # -- Begin function saxpyx
	.p2align	5
	.type	saxpyx,@function
saxpyx:                                 # @saxpyx
# %bb.0:
	blez	$a0, .LBB2_15
# %bb.1:
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_15
# %bb.2:
	bne	$a2, $a4, .LBB2_13
# %bb.3:
	ori	$a5, $zero, 1
	bne	$a2, $a5, .LBB2_10
# %bb.4:                                # %.lr.ph68.preheader
	ori	$a2, $zero, 8
	bltu	$a0, $a2, .LBB2_7
# %bb.5:                                # %vector.memcheck
	addi.d	$a2, $a0, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a4, $a3, $a2
	bgeu	$a1, $a4, .LBB2_16
# %bb.6:                                # %vector.memcheck
	add.d	$a2, $a1, $a2
	bgeu	$a3, $a2, .LBB2_16
.LBB2_7:
	move	$a5, $zero
	move	$a2, $a1
	move	$a4, $a3
.LBB2_8:                                # %.lr.ph68.preheader87
	sub.d	$a0, $a0, $a5
	.p2align	4, , 16
.LBB2_9:                                # %.lr.ph68
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a2, 0
	fmadd.s	$fa1, $fa0, $fa2, $fa1
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 4
	addi.w	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB2_9
	b	.LBB2_15
.LBB2_10:
	blez	$a2, .LBB2_13
# %bb.11:                               # %.lr.ph64
	move	$a4, $zero
	slli.d	$a2, $a2, 2
	.p2align	4, , 16
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a3, $a4
	fldx.s	$fa2, $a1, $a4
	fmadd.s	$fa1, $fa0, $fa2, $fa1
	fstx.s	$fa1, $a1, $a4
	addi.w	$a0, $a0, -1
	add.d	$a4, $a4, $a2
	bnez	$a0, .LBB2_12
	b	.LBB2_15
.LBB2_13:                               # %.lr.ph
	slti	$a5, $a4, 0
	ori	$a6, $zero, 1
	sub.d	$a6, $a6, $a0
	mul.w	$a7, $a4, $a6
	alsl.d	$a7, $a7, $a3, 2
	addi.d	$a7, $a7, 4
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a7, $a5
	or	$a3, $a5, $a3
	slti	$a5, $a2, 0
	mul.w	$a6, $a2, $a6
	alsl.d	$a6, $a6, $a1, 2
	addi.d	$a6, $a6, 4
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $a6, $a5
	or	$a1, $a5, $a1
	slli.d	$a2, $a2, 2
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB2_14:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a1, 0
	fmadd.s	$fa1, $fa0, $fa2, $fa1
	fst.s	$fa1, $a1, 0
	addi.w	$a0, $a0, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bnez	$a0, .LBB2_14
.LBB2_15:                               # %.loopexit
	ret
.LBB2_16:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a5, $a2, 3
	slli.d	$a4, $a2, 5
	add.d	$a2, $a1, $a4
	add.d	$a4, $a3, $a4
	vreplvei.w	$vr1, $vr0, 0
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 16
	move	$a6, $a5
	.p2align	4, , 16
.LBB2_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vld	$vr4, $a1, -16
	vld	$vr5, $a1, 0
	vfmadd.s	$vr2, $vr1, $vr4, $vr2
	vfmadd.s	$vr3, $vr1, $vr5, $vr3
	vst	$vr2, $a1, -16
	vst	$vr3, $a1, 0
	addi.d	$a3, $a3, 32
	addi.d	$a6, $a6, -8
	addi.d	$a1, $a1, 32
	bnez	$a6, .LBB2_17
# %bb.18:                               # %middle.block
	bne	$a5, $a0, .LBB2_8
	b	.LBB2_15
.Lfunc_end2:
	.size	saxpyx, .Lfunc_end2-saxpyx
                                        # -- End function
	.globl	scopy                           # -- Begin function scopy
	.p2align	5
	.type	scopy,@function
scopy:                                  # @scopy
# %bb.0:
	blez	$a0, .LBB3_16
# %bb.1:
	bne	$a2, $a4, .LBB3_11
# %bb.2:
	ori	$a5, $zero, 1
	bne	$a2, $a5, .LBB3_8
# %bb.3:                                # %.lr.ph59.preheader
	ori	$a2, $zero, 8
	move	$a5, $zero
	bltu	$a0, $a2, .LBB3_13
# %bb.4:                                # %.lr.ph59.preheader
	sub.d	$a2, $a3, $a1
	ori	$a4, $zero, 32
	bltu	$a2, $a4, .LBB3_13
# %bb.5:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a5, $a2, 3
	slli.d	$a4, $a2, 5
	add.d	$a2, $a1, $a4
	add.d	$a4, $a3, $a4
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 16
	move	$a6, $a5
	.p2align	4, , 16
.LBB3_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a3, $a3, 32
	addi.d	$a6, $a6, -8
	addi.d	$a1, $a1, 32
	bnez	$a6, .LBB3_6
# %bb.7:                                # %middle.block
	bne	$a5, $a0, .LBB3_14
	b	.LBB3_16
.LBB3_8:
	blez	$a2, .LBB3_11
# %bb.9:                                # %.lr.ph55
	move	$a4, $zero
	slli.d	$a2, $a2, 2
	.p2align	4, , 16
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $a1, $a4
	fstx.s	$fa0, $a3, $a4
	addi.w	$a0, $a0, -1
	add.d	$a4, $a4, $a2
	bnez	$a0, .LBB3_10
	b	.LBB3_16
.LBB3_11:                               # %.lr.ph
	slti	$a5, $a4, 0
	ori	$a6, $zero, 1
	sub.d	$a6, $a6, $a0
	mul.w	$a7, $a4, $a6
	alsl.d	$a7, $a7, $a3, 2
	addi.d	$a7, $a7, 4
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a7, $a5
	or	$a3, $a5, $a3
	slti	$a5, $a2, 0
	mul.w	$a6, $a2, $a6
	alsl.d	$a6, $a6, $a1, 2
	addi.d	$a6, $a6, 4
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $a6, $a5
	or	$a1, $a5, $a1
	slli.d	$a2, $a2, 2
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB3_12:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a1, 0
	addi.w	$a0, $a0, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bnez	$a0, .LBB3_12
	b	.LBB3_16
.LBB3_13:
	move	$a2, $a1
	move	$a4, $a3
.LBB3_14:                               # %.lr.ph59.preheader74
	sub.d	$a0, $a0, $a5
	.p2align	4, , 16
.LBB3_15:                               # %.lr.ph59
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a4, 4
	addi.w	$a0, $a0, -1
	fst.s	$fa0, $a4, 0
	move	$a4, $a1
	bnez	$a0, .LBB3_15
.LBB3_16:                               # %.loopexit
	ret
.Lfunc_end3:
	.size	scopy, .Lfunc_end3-scopy
                                        # -- End function
	.globl	sdot                            # -- Begin function sdot
	.p2align	5
	.type	sdot,@function
sdot:                                   # @sdot
# %bb.0:
	blez	$a0, .LBB4_5
# %bb.1:
	bne	$a2, $a4, .LBB4_9
# %bb.2:
	ori	$a5, $zero, 1
	bne	$a2, $a5, .LBB4_6
# %bb.3:                                # %.lr.ph76.preheader
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph76
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB4_4
	b	.LBB4_11
.LBB4_5:
	movgr2fr.d	$fa0, $zero
	ret
.LBB4_6:
	blez	$a2, .LBB4_9
# %bb.7:                                # %.lr.ph69
	move	$a4, $zero
	slli.d	$a2, $a2, 2
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a1, $a4
	fldx.s	$fa2, $a3, $a4
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	addi.w	$a0, $a0, -1
	add.d	$a4, $a4, $a2
	bnez	$a0, .LBB4_8
	b	.LBB4_11
.LBB4_9:                                # %.lr.ph
	slti	$a5, $a4, 0
	ori	$a6, $zero, 1
	sub.d	$a6, $a6, $a0
	mul.w	$a7, $a4, $a6
	alsl.d	$a7, $a7, $a3, 2
	addi.d	$a7, $a7, 4
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a7, $a5
	or	$a3, $a5, $a3
	slti	$a5, $a2, 0
	mul.w	$a6, $a2, $a6
	alsl.d	$a6, $a6, $a1, 2
	addi.d	$a6, $a6, 4
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $a6, $a5
	or	$a1, $a5, $a1
	slli.d	$a4, $a4, 2
	slli.d	$a2, $a2, 2
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	addi.w	$a0, $a0, -1
	add.d	$a3, $a3, $a4
	add.d	$a1, $a1, $a2
	bnez	$a0, .LBB4_10
.LBB4_11:                               # %._crit_edge
	fcvt.d.s	$fa0, $fa0
	ret
.Lfunc_end4:
	.size	sdot, .Lfunc_end4-sdot
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function snrm2
.LCPI5_0:
	.dword	0x43e158e460913d00              # double 1.0E+19
.LCPI5_1:
	.dword	0x3bfb084b92366cc2              # double 9.1589344358391385E-20
	.text
	.globl	snrm2
	.p2align	5
	.type	snrm2,@function
snrm2:                                  # @snrm2
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	movgr2fr.d	$fa0, $zero
	blez	$a0, .LBB5_5
# %bb.1:
	blez	$a2, .LBB5_5
# %bb.2:
	move	$a3, $zero
	pcalau12i	$a4, %pc_hi20(.LCPI5_0)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI5_0)
	bstrpick.d	$a4, $a0, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa3, $fa1, $fa2
	slli.d	$a4, $a2, 2
	movgr2fr.w	$fa2, $zero
	.p2align	4, , 16
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a1, 0
	fcmp.ceq.s	$fcc0, $fa4, $fa2
	bceqz	$fcc0, .LBB5_6
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a3, $a3, 1
	add.d	$a1, $a1, $a4
	bne	$a0, $a3, .LBB5_3
.LBB5_5:                                # %.critedge.thread
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_6:                                # %.critedge.preheader
	fneg.s	$fa0, $fa4
	pcalau12i	$a5, %pc_hi20(.LCPI5_1)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI5_1)
	fcmp.clt.s	$fcc0, $fa2, $fa4
	fsel	$fa4, $fa0, $fa4, $fcc0
	fcvt.d.s	$fs0, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fs0
	bceqz	$fcc0, .LBB5_8
# %bb.7:
	movgr2fr.d	$fa1, $zero
	blt	$a3, $a0, .LBB5_18
	b	.LBB5_21
.LBB5_8:                                # %.lr.ph150
	addi.w	$a3, $a3, 1
	bge	$a3, $a0, .LBB5_15
# %bb.9:                                # %.lr.ph.preheader
	add.d	$a1, $a1, $a4
	slli.d	$a4, $a2, 2
	vldi	$vr5, -912
	vldi	$vr0, -912
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               #   in Loop: Header=BB5_11 Depth=1
	fdiv.s	$fa6, $fa7, $fa4
	fmul.s	$fa6, $fa6, $fa6
	fcvt.d.s	$fa6, $fa6
	fadd.d	$fa0, $fa0, $fa6
	addi.w	$a3, $a3, 1
	add.d	$a1, $a1, $a4
	beq	$a0, $a3, .LBB5_14
.LBB5_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa7, $a1, 0
	fneg.s	$fa6, $fa7
	fcmp.clt.s	$fcc0, $fa2, $fa7
	fsel	$fa6, $fa6, $fa7, $fcc0
	fcvt.d.s	$ft0, $fa6
	fcmp.clt.d	$fcc0, $fa1, $ft0
	bcnez	$fcc0, .LBB5_17
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=1
	fcmp.cule.s	$fcc0, $fa6, $fa4
	bcnez	$fcc0, .LBB5_10
# %bb.13:                               #   in Loop: Header=BB5_11 Depth=1
	fdiv.s	$fa4, $fa4, $fa7
	fcvt.d.s	$fa4, $fa4
	fmul.d	$fa0, $fa0, $fa4
	fmadd.d	$fa0, $fa0, $fa4, $fa5
	fmov.s	$fa4, $fa6
	addi.w	$a3, $a3, 1
	add.d	$a1, $a1, $a4
	bne	$a0, $a3, .LBB5_11
.LBB5_14:                               # %._crit_edge.loopexit
	fcvt.d.s	$fs0, $fa4
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB5_30
	b	.LBB5_16
.LBB5_15:
	vldi	$vr0, -912
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB5_30
.LBB5_16:                               # %call.sqrt286
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	b	.LBB5_31
.LBB5_17:                               # %.preheader.loopexit
	fcvt.d.s	$fa1, $fa4
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa0, $fa1
	bge	$a3, $a0, .LBB5_21
.LBB5_18:                               # %.lr.ph157.preheader
	slli.d	$a2, $a2, 2
	.p2align	4, , 16
.LBB5_19:                               # %.lr.ph157
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fneg.s	$fa4, $fa0
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc0
	fcvt.d.s	$fs0, $fa4
	fcmp.clt.d	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB5_23
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=1
	fmul.s	$fa0, $fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fadd.d	$fa1, $fa1, $fa0
	addi.w	$a3, $a3, 1
	add.d	$a1, $a1, $a2
	bne	$a3, $a0, .LBB5_19
.LBB5_21:                               # %._crit_edge158
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB5_5
# %bb.22:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(sqrt)
	jr	$t8
.LBB5_23:
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fa1, $fa1, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	vldi	$vr1, -912
	addi.w	$a3, $a3, 1
	fadd.d	$fa0, $fa0, $fa1
	bge	$a3, $a0, .LBB5_29
# %bb.24:                               # %.lr.ph167.preheader
	move	$a4, $a2
	b	.LBB5_26
	.p2align	4, , 16
.LBB5_25:                               #   in Loop: Header=BB5_26 Depth=1
	fdiv.s	$fa3, $fa5, $fa4
	fmul.s	$fa3, $fa3, $fa3
	fcvt.d.s	$fa3, $fa3
	fadd.d	$fa0, $fa0, $fa3
	addi.w	$a3, $a3, 1
	add.d	$a4, $a4, $a2
	bge	$a3, $a0, .LBB5_28
.LBB5_26:                               # %.lr.ph167
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa5, $a1, $a4
	fneg.s	$fa3, $fa5
	fcmp.clt.s	$fcc0, $fa2, $fa5
	fsel	$fa3, $fa3, $fa5, $fcc0
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB5_25
# %bb.27:                               #   in Loop: Header=BB5_26 Depth=1
	fdiv.s	$fa4, $fa4, $fa5
	fcvt.d.s	$fa4, $fa4
	fmul.d	$fa0, $fa0, $fa4
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fmov.s	$fa4, $fa3
	addi.w	$a3, $a3, 1
	add.d	$a4, $a4, $a2
	blt	$a3, $a0, .LBB5_26
.LBB5_28:                               # %._crit_edge168.loopexit
	fcvt.d.s	$fs0, $fa4
.LBB5_29:                               # %._crit_edge168
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB5_31
.LBB5_30:                               # %._crit_edge168.split
	fmul.d	$fa0, $fa1, $fs0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_31:                               # %call.sqrt287
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB5_30
.Lfunc_end5:
	.size	snrm2, .Lfunc_end5-snrm2
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function r1mach
.LCPI6_0:
	.dword	0x3e80000000000000              # double 1.1920928955078125E-7
	.text
	.globl	r1mach
	.p2align	5
	.type	r1mach,@function
r1mach:                                 # @r1mach
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	ret
.Lfunc_end6:
	.size	r1mach, .Lfunc_end6-r1mach
                                        # -- End function
	.globl	min0                            # -- Begin function min0
	.p2align	5
	.type	min0,@function
min0:                                   # @min0
# %bb.0:
	addi.w	$t0, $a0, -16
	addi.w	$t1, $zero, -15
	bgeu	$t0, $t1, .LBB7_2
# %bb.1:
	addi.w	$a1, $zero, -1
	move	$a0, $a1
	ret
.LBB7_2:
	ori	$t0, $zero, 1
	beq	$a0, $t0, .LBB7_15
# %bb.3:
	slt	$t0, $a1, $a2
	masknez	$a2, $a2, $t0
	maskeqz	$a1, $a1, $t0
	ori	$t0, $zero, 2
	or	$a1, $a1, $a2
	beq	$a0, $t0, .LBB7_15
# %bb.4:
	slt	$a2, $a1, $a3
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	ori	$a2, $zero, 3
	or	$a1, $a1, $a3
	beq	$a0, $a2, .LBB7_15
# %bb.5:
	slt	$a2, $a1, $a4
	masknez	$a3, $a4, $a2
	maskeqz	$a1, $a1, $a2
	ori	$a2, $zero, 4
	or	$a1, $a1, $a3
	beq	$a0, $a2, .LBB7_15
# %bb.6:
	slt	$a2, $a1, $a5
	masknez	$a3, $a5, $a2
	maskeqz	$a1, $a1, $a2
	ori	$a2, $zero, 5
	or	$a1, $a1, $a3
	beq	$a0, $a2, .LBB7_15
# %bb.7:
	slt	$a2, $a1, $a6
	masknez	$a3, $a6, $a2
	maskeqz	$a1, $a1, $a2
	ori	$a2, $zero, 6
	or	$a1, $a1, $a3
	beq	$a0, $a2, .LBB7_15
# %bb.8:
	slt	$a2, $a1, $a7
	masknez	$a3, $a7, $a2
	maskeqz	$a1, $a1, $a2
	ori	$a2, $zero, 7
	or	$a1, $a1, $a3
	beq	$a0, $a2, .LBB7_15
# %bb.9:
	ld.d	$a2, $sp, 0
	slt	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 8
	or	$a1, $a1, $a2
	beq	$a0, $a3, .LBB7_15
# %bb.10:
	ld.d	$a2, $sp, 8
	slt	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 9
	or	$a1, $a1, $a2
	beq	$a0, $a3, .LBB7_15
# %bb.11:
	ld.d	$a2, $sp, 16
	slt	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 10
	or	$a1, $a1, $a2
	beq	$a0, $a3, .LBB7_15
# %bb.12:
	ld.d	$a2, $sp, 24
	slt	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 11
	or	$a1, $a1, $a2
	beq	$a0, $a3, .LBB7_15
# %bb.13:
	ld.d	$a2, $sp, 32
	slt	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 12
	or	$a1, $a1, $a2
	beq	$a0, $a3, .LBB7_15
# %bb.14:
	ld.d	$a2, $sp, 40
	slt	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 13
	or	$a1, $a1, $a2
	bne	$a0, $a3, .LBB7_16
.LBB7_15:
	move	$a0, $a1
	ret
.LBB7_16:
	ld.d	$a2, $sp, 48
	ld.d	$a3, $sp, 56
	slt	$a4, $a1, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	addi.d	$a0, $a0, -14
	sltui	$a0, $a0, 1
	slt	$a2, $a1, $a3
	maskeqz	$a4, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a2, $a4, $a2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ret
.Lfunc_end7:
	.size	min0, .Lfunc_end7-min0
                                        # -- End function
	.globl	sscal                           # -- Begin function sscal
	.p2align	5
	.type	sscal,@function
sscal:                                  # @sscal
# %bb.0:
	blez	$a0, .LBB8_4
# %bb.1:
	ori	$a3, $zero, 1
	fcvt.s.d	$fa0, $fa0
	bne	$a2, $a3, .LBB8_5
# %bb.2:                                # %.lr.ph29.preheader
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB8_8
# %bb.3:
	move	$a3, $zero
	move	$a2, $a1
	b	.LBB8_12
.LBB8_4:
	ori	$a0, $zero, 1
	ret
.LBB8_5:                                # %.lr.ph
	sub.d	$a3, $a3, $a0
	mul.d	$a3, $a2, $a3
	srli.d	$a4, $a2, 31
	and	$a3, $a4, $a3
	bstrpick.d	$a3, $a3, 31, 0
	alsl.d	$a1, $a3, $a1, 2
	slli.d	$a2, $a2, 2
	.p2align	4, , 16
.LBB8_6:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fmul.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a1, 0
	addi.w	$a0, $a0, -1
	add.d	$a1, $a1, $a2
	bnez	$a0, .LBB8_6
# %bb.7:
	move	$a0, $zero
	ret
.LBB8_8:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a3, $a2, 3
	slli.d	$a2, $a2, 5
	add.d	$a2, $a1, $a2
	vreplvei.w	$vr1, $vr0, 0
	addi.d	$a1, $a1, 16
	move	$a4, $a3
	.p2align	4, , 16
.LBB8_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vfmul.s	$vr2, $vr2, $vr1
	vfmul.s	$vr3, $vr3, $vr1
	vst	$vr2, $a1, -16
	vst	$vr3, $a1, 0
	addi.d	$a4, $a4, -8
	addi.d	$a1, $a1, 32
	bnez	$a4, .LBB8_9
# %bb.10:                               # %middle.block
	bne	$a3, $a0, .LBB8_12
# %bb.11:
	move	$a0, $zero
	ret
.LBB8_12:                               # %.lr.ph29.preheader37
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB8_13:                               # %.lr.ph29
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a2, 0
	fmul.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB8_13
# %bb.14:
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	sscal, .Lfunc_end8-sscal
                                        # -- End function
	.globl	vexopy                          # -- Begin function vexopy
	.p2align	5
	.type	vexopy,@function
vexopy:                                 # @vexopy
# %bb.0:
	blez	$a0, .LBB9_12
# %bb.1:
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB9_7
# %bb.2:                                # %.lr.ph36.preheader
	ori	$a4, $zero, 8
	bgeu	$a0, $a4, .LBB9_13
# %bb.3:
	move	$a7, $zero
.LBB9_4:
	move	$a4, $a1
	move	$a5, $a3
	move	$a6, $a2
.LBB9_5:                                # %.lr.ph36.preheader80
	sub.d	$a0, $a0, $a7
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph36
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a6, 0
	fld.s	$fa1, $a5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.w	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB9_6
	b	.LBB9_12
.LBB9_7:                                # %.lr.ph.preheader
	ori	$a4, $zero, 8
	bgeu	$a0, $a4, .LBB9_18
# %bb.8:
	move	$a7, $zero
.LBB9_9:
	move	$a4, $a1
	move	$a5, $a3
	move	$a6, $a2
.LBB9_10:                               # %.lr.ph.preheader81
	sub.d	$a0, $a0, $a7
	.p2align	4, , 16
.LBB9_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a6, 0
	fld.s	$fa1, $a5, 0
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.w	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB9_11
.LBB9_12:                               # %.loopexit
	ret
.LBB9_13:                               # %vector.memcheck52
	sub.d	$a5, $a1, $a2
	ori	$a4, $zero, 32
	move	$a7, $zero
	bltu	$a5, $a4, .LBB9_4
# %bb.14:                               # %vector.memcheck52
	sub.d	$a5, $a1, $a3
	bltu	$a5, $a4, .LBB9_4
# %bb.15:                               # %vector.ph58
	bstrpick.d	$a4, $a0, 30, 3
	slli.d	$a7, $a4, 3
	slli.d	$a6, $a4, 5
	add.d	$a4, $a1, $a6
	add.d	$a5, $a3, $a6
	add.d	$a6, $a2, $a6
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 16
	move	$t0, $a7
	.p2align	4, , 16
.LBB9_16:                               # %vector.body61
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	addi.d	$t0, $t0, -8
	addi.d	$a1, $a1, 32
	bnez	$t0, .LBB9_16
# %bb.17:                               # %middle.block74
	bne	$a7, $a0, .LBB9_5
	b	.LBB9_12
.LBB9_18:                               # %vector.memcheck
	sub.d	$a5, $a1, $a2
	ori	$a4, $zero, 32
	move	$a7, $zero
	bltu	$a5, $a4, .LBB9_9
# %bb.19:                               # %vector.memcheck
	sub.d	$a5, $a1, $a3
	bltu	$a5, $a4, .LBB9_9
# %bb.20:                               # %vector.ph
	bstrpick.d	$a4, $a0, 30, 3
	slli.d	$a7, $a4, 3
	slli.d	$a6, $a4, 5
	add.d	$a4, $a1, $a6
	add.d	$a5, $a3, $a6
	add.d	$a6, $a2, $a6
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 16
	move	$t0, $a7
	.p2align	4, , 16
.LBB9_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vfsub.s	$vr0, $vr0, $vr2
	vfsub.s	$vr1, $vr1, $vr3
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	addi.d	$t0, $t0, -8
	addi.d	$a1, $a1, 32
	bnez	$t0, .LBB9_21
# %bb.22:                               # %middle.block
	bne	$a7, $a0, .LBB9_10
	b	.LBB9_12
.Lfunc_end9:
	.size	vexopy, .Lfunc_end9-vexopy
                                        # -- End function
	.globl	vfill                           # -- Begin function vfill
	.p2align	5
	.type	vfill,@function
vfill:                                  # @vfill
# %bb.0:
	blez	$a0, .LBB10_8
# %bb.1:                                # %.preheader.preheader
	ori	$a2, $zero, 8
	fcvt.s.d	$fa0, $fa0
	bgeu	$a0, $a2, .LBB10_3
# %bb.2:
	move	$a3, $zero
	move	$a2, $a1
	b	.LBB10_6
.LBB10_3:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a3, $a2, 3
	slli.d	$a2, $a2, 5
	add.d	$a2, $a1, $a2
	vreplvei.w	$vr1, $vr0, 0
	addi.d	$a1, $a1, 16
	move	$a4, $a3
	.p2align	4, , 16
.LBB10_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a4, $a4, -8
	addi.d	$a1, $a1, 32
	bnez	$a4, .LBB10_4
# %bb.5:                                # %middle.block
	beq	$a3, $a0, .LBB10_8
.LBB10_6:                               # %.preheader.preheader11
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB10_7:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	fst.s	$fa0, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB10_7
.LBB10_8:                               # %.loopexit
	ret
.Lfunc_end10:
	.size	vfill, .Lfunc_end10-vfill
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
