	.file	"n-body.c"
	.text
	.globl	advance                         # -- Begin function advance
	.p2align	5
	.type	advance,@function
advance:                                # @advance
# %bb.0:
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	blez	$a0, .LBB0_8
# %bb.1:                                # %.lr.ph69.preheader
	move	$a3, $zero
	addi.d	$a2, $a1, 104
	ori	$a4, $zero, 1
	ori	$a5, $zero, 56
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 56
	beq	$a3, $a0, .LBB0_6
.LBB0_3:                                # %.lr.ph69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, 1
	bgeu	$a3, $a0, .LBB0_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	mul.d	$a7, $a6, $a5
	add.d	$a6, $a1, $a7
	vldx	$vr1, $a1, $a7
	fld.d	$fa2, $a6, 48
	fld.d	$fa3, $a6, 16
	vreplvei.d	$vr4, $vr2, 0
	move	$a7, $a0
	move	$t0, $a2
	.p2align	4, , 16
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa5, $t0, -32
	fld.d	$fa6, $t0, 0
	fsub.d	$fa5, $fa3, $fa5
	vld	$vr7, $t0, -48
	fneg.d	$fa6, $fa6
	fld.d	$ft0, $a6, 40
	fmul.d	$ft1, $fa5, $fa6
	vfsub.d	$vr7, $vr1, $vr7
	vfmul.d	$vr10, $vr7, $vr7
	vreplvei.d	$vr10, $vr10, 1
	vreplvei.d	$vr11, $vr7, 0
	fmadd.d	$ft2, $ft3, $ft3, $ft2
	fmadd.d	$ft2, $fa5, $fa5, $ft2
	fsqrt.d	$ft2, $ft2
	fmul.d	$ft3, $ft2, $ft2
	fmul.d	$ft2, $ft2, $ft3
	fdiv.d	$ft2, $fa0, $ft2
	vld	$vr11, $a6, 24
	vreplvei.d	$vr6, $vr6, 0
	vfmul.d	$vr6, $vr7, $vr6
	vreplvei.d	$vr12, $vr10, 0
	vfmadd.d	$vr6, $vr6, $vr12, $vr11
	vst	$vr6, $a6, 24
	fmadd.d	$fa6, $ft1, $ft2, $ft0
	fst.d	$fa6, $a6, 40
	vld	$vr6, $t0, -24
	vfmul.d	$vr7, $vr7, $vr4
	fld.d	$ft0, $t0, -8
	vfmadd.d	$vr6, $vr7, $vr12, $vr6
	vst	$vr6, $t0, -24
	fmul.d	$fa5, $fa5, $fa2
	fmadd.d	$fa5, $fa5, $ft2, $ft0
	fst.d	$fa5, $t0, -8
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 56
	bne	$a4, $a7, .LBB0_5
	b	.LBB0_2
.LBB0_6:                                # %.lr.ph71.preheader
	vreplvei.d	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph71
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a1, 24
	vld	$vr3, $a1, 0
	fld.d	$fa4, $a1, 40
	fld.d	$fa5, $a1, 16
	vfmadd.d	$vr2, $vr1, $vr2, $vr3
	vst	$vr2, $a1, 0
	fmadd.d	$fa2, $fa0, $fa4, $fa5
	fst.d	$fa2, $a1, 16
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 56
	bnez	$a0, .LBB0_7
.LBB0_8:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	advance, .Lfunc_end0-advance
                                        # -- End function
	.globl	energy                          # -- Begin function energy
	.p2align	5
	.type	energy,@function
energy:                                 # @energy
# %bb.0:
	blez	$a0, .LBB1_6
# %bb.1:                                # %.lr.ph42.preheader
	move	$a2, $zero
	addi.d	$a3, $a1, 56
	movgr2fr.d	$fa0, $zero
	ori	$a4, $zero, 1
	ori	$a5, $zero, 56
	vldi	$vr1, -928
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %.loopexit
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 56
	beq	$a2, $a0, .LBB1_7
.LBB1_3:                                # %.lr.ph42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	mul.d	$a6, $a2, $a5
	add.d	$a6, $a1, $a6
	fld.d	$fa2, $a6, 48
	fld.d	$fa3, $a6, 32
	fld.d	$fa4, $a6, 24
	fld.d	$fa5, $a6, 40
	fmul.d	$fa6, $fa2, $fa1
	fmul.d	$fa3, $fa3, $fa3
	fmadd.d	$fa3, $fa4, $fa4, $fa3
	fmadd.d	$fa3, $fa5, $fa5, $fa3
	addi.d	$a2, $a2, 1
	fmadd.d	$fa0, $fa6, $fa3, $fa0
	bgeu	$a2, $a0, .LBB1_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	fld.d	$fa3, $a6, 0
	fld.d	$fa4, $a6, 8
	fld.d	$fa5, $a6, 16
	move	$a6, $a3
	move	$a7, $a0
	.p2align	4, , 16
.LBB1_5:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa6, $a6, 0
	fld.d	$fa7, $a6, 8
	fsub.d	$fa6, $fa3, $fa6
	fsub.d	$fa7, $fa4, $fa7
	fld.d	$ft0, $a6, 16
	fmul.d	$fa7, $fa7, $fa7
	fmadd.d	$fa6, $fa6, $fa6, $fa7
	fld.d	$fa7, $a6, 48
	fsub.d	$ft0, $fa5, $ft0
	fmadd.d	$fa6, $ft0, $ft0, $fa6
	fsqrt.d	$fa6, $fa6
	fmul.d	$fa7, $fa2, $fa7
	fdiv.d	$fa6, $fa7, $fa6
	fsub.d	$fa0, $fa0, $fa6
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 56
	bne	$a4, $a7, .LBB1_5
	b	.LBB1_2
.LBB1_6:
	movgr2fr.d	$fa0, $zero
.LBB1_7:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	energy, .Lfunc_end1-energy
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function offset_momentum
.LCPI2_0:
	.dword	0xc043bd3cc9be45de              # double -39.478417604357432
	.text
	.globl	offset_momentum
	.p2align	5
	.type	offset_momentum,@function
offset_momentum:                        # @offset_momentum
# %bb.0:
	blez	$a0, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a2, $a1, 48
	vrepli.b	$vr1, 0
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa2, $a2, 0
	vld	$vr3, $a2, -24
	fld.d	$fa4, $a2, -8
	vreplvei.d	$vr5, $vr2, 0
	vfmadd.d	$vr1, $vr3, $vr5, $vr1
	fmadd.d	$fa0, $fa4, $fa2, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 56
	bnez	$a0, .LBB2_2
	b	.LBB2_4
.LBB2_3:
	vrepli.b	$vr1, 0
	movgr2fr.d	$fa0, $zero
.LBB2_4:                                # %._crit_edge
	lu12i.w	$a0, -222236
	ori	$a0, $a0, 1502
	lu32i.d	$a0, 245052
	lu52i.d	$a0, $a0, -1020
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	fld.d	$fa2, $a2, %pc_lo12(.LCPI2_0)
	vreplgr2vr.d	$vr3, $a0
	vfdiv.d	$vr1, $vr1, $vr3
	vst	$vr1, $a1, 24
	fdiv.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $a1, 40
	ret
.Lfunc_end2:
	.size	offset_momentum, .Lfunc_end2-offset_momentum
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI3_0:
	.dword	0xc043bd3cc9be45de              # double -39.478417604357432
.LCPI3_1:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.loopexit.i.4
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 72                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bodies)
	addi.d	$fp, $a0, %pc_lo12(bodies)
	fld.d	$fa0, $fp, 24
	fld.d	$fa6, $fp, 48
	fld.d	$fa1, $fp, 32
	movgr2fr.d	$fa5, $zero
	fmadd.d	$fa0, $fa0, $fa6, $fa5
	fmadd.d	$fa2, $fa1, $fa6, $fa5
	fld.d	$fa3, $fp, 40
	fld.d	$ft1, $fp, 80
	fld.d	$fa7, $fp, 104
	fld.d	$ft3, $fp, 88
	fld.d	$ft4, $fp, 96
	fmadd.d	$fa3, $fa3, $fa6, $fa5
	fmadd.d	$ft8, $ft1, $fa7, $fa0
	fmadd.d	$ft11, $ft3, $fa7, $fa2
	fmadd.d	$ft13, $ft4, $fa7, $fa3
	fld.d	$ft2, $fp, 136
	fld.d	$ft0, $fp, 144
	fld.d	$fa1, $fp, 152
	fld.d	$ft15, $fp, 192
	fld.d	$fa2, $fp, 200
	fst.d	$fa2, $sp, 40                   # 8-byte Folded Spill
	fld.d	$fa2, $fp, 208
	fst.d	$fa2, $sp, 48                   # 8-byte Folded Spill
	fld.d	$ft5, $fp, 272
	fmul.d	$fa2, $ft3, $ft3
	fmadd.d	$fa2, $ft1, $ft1, $fa2
	fmadd.d	$fa2, $ft4, $ft4, $fa2
	fst.d	$fa2, $sp, 56                   # 8-byte Folded Spill
	fld.d	$ft14, $fp, 16
	fld.d	$ft12, $fp, 72
	fld.d	$fs6, $fp, 0
	fld.d	$ft6, $fp, 56
	fld.d	$fs5, $fp, 8
	fld.d	$ft3, $fp, 64
	fmul.d	$fa2, $fa6, $fa7
	fsub.d	$ft1, $ft14, $ft12
	fsub.d	$ft7, $fs6, $ft6
	fsub.d	$ft9, $fs5, $ft3
	fmul.d	$ft9, $ft9, $ft9
	fmadd.d	$ft7, $ft7, $ft7, $ft9
	fmadd.d	$ft1, $ft1, $ft1, $ft7
	fsqrt.d	$ft1, $ft1
	fdiv.d	$fa2, $fa2, $ft1
	fst.d	$fa2, $sp, 24                   # 8-byte Folded Spill
	fld.d	$fs7, $fp, 128
	fld.d	$fa4, $fp, 240
	fst.d	$fa4, $sp, 32                   # 8-byte Folded Spill
	fld.d	$fs2, $fp, 224
	fld.d	$ft9, $fp, 232
	fmul.d	$fa2, $fa6, $ft5
	fsub.d	$ft1, $ft14, $fa4
	fsub.d	$ft10, $fs6, $fs2
	fsub.d	$fs0, $fs5, $ft9
	fmul.d	$fs0, $fs0, $fs0
	fmadd.d	$ft10, $ft10, $ft10, $fs0
	fmadd.d	$ft1, $ft1, $ft1, $ft10
	fsqrt.d	$ft1, $ft1
	fdiv.d	$fa2, $fa2, $ft1
	fst.d	$fa2, $sp, 16                   # 8-byte Folded Spill
	vld	$vr15, $fp, 112
	vld	$vr24, $fp, 176
	fld.d	$ft4, $fp, 216
	vld	$vr18, $fp, 160
	vreplvei.d	$vr22, $vr22, 0
	vori.b	$vr28, $vr15, 0
	vori.b	$vr27, $vr15, 0
	vshuf4i.d	$vr27, $vr24, 9
	vextrins.d	$vr24, $vr31, 0
	vfsub.d	$vr31, $vr22, $vr24
	fld.d	$ft14, $fp, 160
	vreplvei.d	$vr30, $vr30, 0
	vshuf4i.d	$vr28, $vr18, 12
	vfsub.d	$vr30, $vr30, $vr28
	vreplvei.d	$vr29, $vr29, 0
	vfsub.d	$vr29, $vr29, $vr27
	vfmul.d	$vr29, $vr29, $vr29
	vfmadd.d	$vr29, $vr30, $vr30, $vr29
	vfmadd.d	$vr29, $vr31, $vr31, $vr29
	vfsqrt.d	$vr29, $vr29
	vreplvei.d	$vr31, $vr6, 0
	vori.b	$vr30, $vr18, 0
	vextrins.d	$vr30, $vr12, 16
	vfmul.d	$vr31, $vr31, $vr30
	vfdiv.d	$vr31, $vr31, $vr29
	fld.d	$fs1, $fp, 248
	fmadd.d	$ft8, $ft2, $ft14, $ft8
	fmadd.d	$ft11, $ft0, $ft14, $ft11
	fmadd.d	$ft13, $fa1, $ft14, $ft13
	fmov.d	$ft1, $fa1
	fmov.d	$fa4, $ft15
	fmadd.d	$ft8, $ft15, $ft4, $ft8
	fld.d	$fa2, $sp, 40                   # 8-byte Folded Reload
	fmadd.d	$ft11, $fa2, $ft4, $ft11
	fld.d	$fa3, $sp, 48                   # 8-byte Folded Reload
	fmadd.d	$ft13, $fa3, $ft4, $ft13
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $fp, 256
	fld.d	$fa1, $fp, 264
	fld.d	$fs5, $a0, %pc_lo12(.LCPI3_0)
	fmadd.d	$ft8, $fs1, $ft5, $ft8
	fmadd.d	$ft11, $fa0, $ft5, $ft11
	fmadd.d	$ft13, $fa1, $ft5, $ft13
	fdiv.d	$ft8, $ft8, $fs5
	fdiv.d	$ft11, $ft11, $fs5
	fdiv.d	$ft13, $ft13, $fs5
	vldi	$vr29, -928
	fmul.d	$fa6, $fa6, $fs5
	fmul.d	$ft15, $ft11, $ft11
	fmadd.d	$ft15, $ft8, $ft8, $ft15
	fmadd.d	$ft15, $ft13, $ft13, $ft15
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fmadd.d	$fa6, $fa6, $ft15, $fa5
	fld.d	$fa5, $sp, 24                   # 8-byte Folded Reload
	fsub.d	$fa6, $fa6, $fa5
	vreplvei.d	$vr23, $vr31, 0
	fsub.d	$fa6, $fa6, $ft15
	vreplvei.d	$vr23, $vr31, 1
	fsub.d	$fa6, $fa6, $ft15
	fld.d	$fa5, $sp, 16                   # 8-byte Folded Reload
	fsub.d	$fa6, $fa6, $fa5
	fmul.d	$ft15, $fa7, $fs5
	fld.d	$fa5, $sp, 56                   # 8-byte Folded Reload
	fmadd.d	$ft15, $ft15, $fa5, $fa6
	fmul.d	$fa0, $fa0, $fa0
	fmadd.d	$fa0, $fs1, $fs1, $fa0
	fmadd.d	$fa6, $fa1, $fa1, $fa0
	fmul.d	$fa0, $fa2, $fa2
	fmadd.d	$fa0, $fa4, $fa4, $fa0
	fmadd.d	$fs1, $fa3, $fa3, $fa0
	fmul.d	$fa0, $ft0, $ft0
	fmadd.d	$fa0, $ft2, $ft2, $fa0
	fmadd.d	$fa0, $ft1, $ft1, $fa0
	fsub.d	$fa1, $ft6, $fs2
	fsub.d	$fa5, $ft3, $ft9
	fmul.d	$fa5, $fa5, $fa5
	fmadd.d	$fa1, $fa1, $fa1, $fa5
	fld.d	$fa2, $sp, 32                   # 8-byte Folded Reload
	fsub.d	$fa5, $ft12, $fa2
	fmadd.d	$fa1, $fa5, $fa5, $fa1
	fmul.d	$fa5, $fa7, $ft5
	fsqrt.d	$fa1, $fa1
	fdiv.d	$fa1, $fa5, $fa1
	vreplvei.d	$vr5, $vr20, 0
	vfsub.d	$vr5, $vr5, $vr24
	vreplvei.d	$vr8, $vr14, 0
	vfsub.d	$vr8, $vr8, $vr28
	vreplvei.d	$vr10, $vr11, 0
	vfsub.d	$vr10, $vr10, $vr27
	vfmul.d	$vr10, $vr10, $vr10
	vfmadd.d	$vr8, $vr8, $vr8, $vr10
	vfmadd.d	$vr5, $vr5, $vr5, $vr8
	vreplvei.d	$vr4, $vr7, 0
	vfmul.d	$vr4, $vr4, $vr30
	vreplvei.d	$vr8, $vr18, 0
	vfsqrt.d	$vr5, $vr5
	vfdiv.d	$vr4, $vr4, $vr5
	vreplvei.d	$vr5, $vr4, 0
	fsub.d	$fa5, $ft15, $fa5
	vld	$vr10, $fp, 216
	vreplvei.d	$vr4, $vr4, 1
	fsub.d	$fa4, $fa5, $fa4
	vld	$vr5, $fp, 168
	fsub.d	$fa1, $fa4, $fa1
	fld.d	$fa4, $fp, 184
	fmul.d	$ft3, $ft14, $fs5
	fmadd.d	$fa0, $ft3, $fa0, $fa1
	vori.b	$vr1, $vr5, 0
	vshuf4i.d	$vr1, $vr10, 12
	vld	$vr11, $fp, 232
	vextrins.d	$vr10, $vr13, 16
	vfmul.d	$vr8, $vr8, $vr10
	vld	$vr10, $fp, 128
	vshuf4i.d	$vr5, $vr11, 9
	vextrins.d	$vr11, $vr4, 0
	vld	$vr4, $fp, 120
	vreplvei.d	$vr10, $vr10, 0
	vfsub.d	$vr10, $vr10, $vr11
	vreplvei.d	$vr9, $vr15, 0
	vfsub.d	$vr1, $vr9, $vr1
	vreplvei.d	$vr4, $vr4, 0
	vfsub.d	$vr4, $vr4, $vr5
	fmul.d	$fa5, $ft5, $fs5
	fmul.d	$ft1, $ft4, $fs5
	vfmul.d	$vr4, $vr4, $vr4
	vfmadd.d	$vr1, $vr1, $vr1, $vr4
	vfmadd.d	$vr1, $vr10, $vr10, $vr1
	vfsqrt.d	$vr1, $vr1
	vfdiv.d	$vr1, $vr8, $vr1
	vreplvei.d	$vr4, $vr1, 0
	fsub.d	$fa0, $fa0, $fa4
	vreplvei.d	$vr1, $vr1, 1
	fsub.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $ft1, $fs1, $fa0
	fld.d	$fa1, $fp, 184
	fld.d	$fa4, $fp, 240
	fld.d	$fa7, $fp, 168
	fld.d	$ft0, $fp, 224
	fld.d	$ft1, $fp, 176
	fld.d	$ft2, $fp, 232
	fmul.d	$fa2, $ft4, $ft5
	fsub.d	$fa1, $fa1, $fa4
	fsub.d	$fa3, $fa7, $ft0
	fsub.d	$fa4, $ft1, $ft2
	fmul.d	$fa4, $fa4, $fa4
	fmadd.d	$fa3, $fa3, $fa3, $fa4
	fmadd.d	$fa1, $fa1, $fa1, $fa3
	fsqrt.d	$fa1, $fa1
	fdiv.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fst.d	$ft8, $fp, 24
	fst.d	$ft11, $fp, 32
	fst.d	$ft13, $fp, 40
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI3_1)
	lu12i.w	$a0, 1220
	ori	$s0, $a0, 2880
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 5
	move	$a1, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(advance)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB3_1
# %bb.2:                                # %.loopexit.i12.4
	fld.d	$fa6, $fp, 104
	fld.d	$fa3, $fp, 160
	fld.d	$fa1, $fp, 272
	vldi	$vr5, -928
	fld.d	$fa2, $fp, 256
	fld.d	$fa4, $fp, 248
	fmul.d	$fa0, $fa1, $fa5
	fld.d	$fa7, $fp, 264
	fmul.d	$fa2, $fa2, $fa2
	fmadd.d	$fa2, $fa4, $fa4, $fa2
	fld.d	$fa4, $fp, 200
	fld.d	$ft0, $fp, 192
	fld.d	$ft1, $fp, 208
	fmadd.d	$fa2, $fa7, $fa7, $fa2
	fmul.d	$fa4, $fa4, $fa4
	fmadd.d	$fa4, $ft0, $ft0, $fa4
	fmadd.d	$fa4, $ft1, $ft1, $fa4
	fld.d	$ft0, $fp, 144
	fld.d	$ft1, $fp, 136
	fld.d	$ft2, $fp, 152
	fmul.d	$fa7, $fa3, $fa5
	fmul.d	$ft0, $ft0, $ft0
	fmadd.d	$ft0, $ft1, $ft1, $ft0
	fmadd.d	$ft0, $ft2, $ft2, $ft0
	fld.d	$ft1, $fp, 88
	fld.d	$ft2, $fp, 80
	fld.d	$ft3, $fp, 96
	fmul.d	$ft5, $fa6, $fa5
	fmul.d	$ft1, $ft1, $ft1
	fmadd.d	$ft1, $ft2, $ft2, $ft1
	fmadd.d	$ft8, $ft3, $ft3, $ft1
	fld.d	$ft9, $fp, 48
	fld.d	$ft1, $fp, 32
	fld.d	$ft2, $fp, 24
	fld.d	$ft3, $fp, 40
	fmul.d	$ft4, $ft9, $fa5
	fmul.d	$ft1, $ft1, $ft1
	fmadd.d	$ft1, $ft2, $ft2, $ft1
	fmadd.d	$ft1, $ft3, $ft3, $ft1
	fld.d	$ft2, $sp, 64                   # 8-byte Folded Reload
	fmadd.d	$ft1, $ft4, $ft1, $ft2
	fld.d	$ft10, $fp, 16
	fld.d	$ft2, $fp, 72
	fld.d	$ft14, $fp, 0
	fld.d	$ft3, $fp, 56
	fld.d	$ft15, $fp, 8
	fld.d	$ft4, $fp, 64
	fmul.d	$ft6, $ft9, $fa6
	fsub.d	$ft7, $ft10, $ft2
	fsub.d	$ft11, $ft14, $ft3
	fsub.d	$ft12, $ft15, $ft4
	fmul.d	$ft12, $ft12, $ft12
	fmadd.d	$ft11, $ft11, $ft11, $ft12
	fmadd.d	$ft7, $ft7, $ft7, $ft11
	fsqrt.d	$ft7, $ft7
	fdiv.d	$ft6, $ft6, $ft7
	fsub.d	$ft1, $ft1, $ft6
	fld.d	$ft11, $fp, 128
	fld.d	$ft12, $fp, 112
	fld.d	$ft13, $fp, 120
	fmul.d	$ft6, $ft9, $fa3
	fsub.d	$ft7, $ft10, $ft11
	fsub.d	$fs0, $ft14, $ft12
	fsub.d	$fs1, $ft15, $ft13
	fmul.d	$fs1, $fs1, $fs1
	fmadd.d	$fs0, $fs0, $fs0, $fs1
	fmadd.d	$ft7, $ft7, $ft7, $fs0
	fsqrt.d	$fs0, $ft7
	vld	$vr15, $fp, 216
	fdiv.d	$ft6, $ft6, $fs0
	fsub.d	$fs0, $ft1, $ft6
	fld.d	$ft1, $fp, 184
	vld	$vr14, $fp, 168
	vori.b	$vr25, $vr15, 0
	vextrins.d	$vr25, $vr17, 16
	vld	$vr26, $fp, 232
	vextrins.d	$vr17, $vr1, 16
	vfmul.d	$vr25, $vr25, $vr17
	vreplvei.d	$vr27, $vr18, 0
	vori.b	$vr17, $vr14, 0
	vshuf4i.d	$vr14, $vr26, 9
	vori.b	$vr18, $vr26, 0
	vextrins.d	$vr18, $vr9, 0
	vfsub.d	$vr26, $vr27, $vr18
	vreplvei.d	$vr22, $vr22, 0
	vshuf4i.d	$vr17, $vr15, 12
	vfsub.d	$vr22, $vr22, $vr17
	vreplvei.d	$vr23, $vr23, 0
	vfsub.d	$vr23, $vr23, $vr14
	vfmul.d	$vr23, $vr23, $vr23
	vfmadd.d	$vr22, $vr22, $vr22, $vr23
	vfmadd.d	$vr22, $vr26, $vr26, $vr22
	vfsqrt.d	$vr22, $vr22
	vfdiv.d	$vr22, $vr25, $vr22
	vreplvei.d	$vr23, $vr22, 0
	fsub.d	$ft15, $fs0, $ft15
	vreplvei.d	$vr22, $vr22, 1
	fsub.d	$ft14, $ft15, $ft14
	fmadd.d	$ft5, $ft5, $ft8, $ft14
	fmul.d	$ft8, $fa6, $fa3
	fsub.d	$ft11, $ft2, $ft11
	fsub.d	$ft12, $ft3, $ft12
	fsub.d	$ft13, $ft4, $ft13
	fmul.d	$ft13, $ft13, $ft13
	fmadd.d	$ft12, $ft12, $ft12, $ft13
	fmadd.d	$ft11, $ft11, $ft11, $ft12
	fsqrt.d	$ft11, $ft11
	fdiv.d	$ft8, $ft8, $ft11
	fsub.d	$ft5, $ft5, $ft8
	vori.b	$vr16, $vr15, 0
	vextrins.d	$vr16, $vr6, 16
	vextrins.d	$vr6, $vr1, 16
	vfmul.d	$vr6, $vr16, $vr6
	vreplvei.d	$vr10, $vr10, 0
	vfsub.d	$vr10, $vr10, $vr18
	vreplvei.d	$vr11, $vr11, 0
	vfsub.d	$vr11, $vr11, $vr17
	vreplvei.d	$vr12, $vr12, 0
	vfsub.d	$vr12, $vr12, $vr14
	vfmul.d	$vr12, $vr12, $vr12
	vfmadd.d	$vr11, $vr11, $vr11, $vr12
	vfmadd.d	$vr10, $vr10, $vr10, $vr11
	vfsqrt.d	$vr10, $vr10
	vfdiv.d	$vr6, $vr6, $vr10
	vreplvei.d	$vr10, $vr6, 0
	fsub.d	$ft2, $ft5, $ft2
	vreplvei.d	$vr6, $vr6, 1
	fsub.d	$fa6, $ft2, $fa6
	fmadd.d	$fa6, $fa7, $ft0, $fa6
	fld.d	$fa7, $fp, 216
	vld	$vr8, $fp, 128
	vld	$vr10, $fp, 112
	vld	$vr11, $fp, 120
	fmul.d	$fa5, $fa7, $fa5
	vreplvei.d	$vr3, $vr3, 0
	vextrins.d	$vr15, $vr1, 16
	vfmul.d	$vr3, $vr3, $vr15
	vreplvei.d	$vr8, $vr8, 0
	vfsub.d	$vr8, $vr8, $vr18
	vreplvei.d	$vr10, $vr10, 0
	vfsub.d	$vr10, $vr10, $vr17
	vreplvei.d	$vr11, $vr11, 0
	vfsub.d	$vr11, $vr11, $vr14
	vfmul.d	$vr11, $vr11, $vr11
	vfmadd.d	$vr10, $vr10, $vr10, $vr11
	vfmadd.d	$vr8, $vr8, $vr8, $vr10
	vfsqrt.d	$vr8, $vr8
	vfdiv.d	$vr3, $vr3, $vr8
	vreplvei.d	$vr8, $vr3, 0
	fsub.d	$fa6, $fa6, $ft0
	vreplvei.d	$vr3, $vr3, 1
	fsub.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $fa5, $fa4, $fa3
	fld.d	$fa4, $fp, 240
	fld.d	$fa5, $fp, 168
	fld.d	$fa6, $fp, 224
	fld.d	$ft0, $fp, 176
	fld.d	$ft2, $fp, 232
	fmul.d	$fa1, $fa7, $fa1
	fsub.d	$fa4, $ft1, $fa4
	fsub.d	$fa5, $fa5, $fa6
	fsub.d	$fa6, $ft0, $ft2
	fmul.d	$fa6, $fa6, $fa6
	fmadd.d	$fa5, $fa5, $fa5, $fa6
	fmadd.d	$fa4, $fa4, $fa4, $fa5
	fsqrt.d	$fa4, $fa4
	fdiv.d	$fa1, $fa1, $fa4
	fsub.d	$fa1, $fa3, $fa1
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs7, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.type	bodies,@object                  # @bodies
	.data
	.globl	bodies
	.p2align	3, 0x0
bodies:
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x4043bd3cc9be45de              # double 39.478417604357432
	.dword	0x40135da0343cd92c              # double 4.8414314424647209
	.dword	0xbff290abc01fdb7c              # double -1.1603200440274284
	.dword	0xbfba86f96c25ebf0              # double -0.10362204447112311
	.dword	0x3fe367069b93ccbc              # double 0.60632639299583202
	.dword	0x40067ef2f57d949b              # double 2.8119868449162602
	.dword	0xbf99d2d79a5a0715              # double -0.025218361659887629
	.dword	0x3fa34c95d9ab33d8              # double 0.037693674870389493
	.dword	0x4020afcdc332ca67              # double 8.3433667182445799
	.dword	0x40107fcb31de01b0              # double 4.1247985641243048
	.dword	0xbfd9d353e1eb467c              # double -0.40352341711432138
	.dword	0xbff02c21b8879442              # double -1.0107743461787924
	.dword	0x3ffd35e9bf1f8f13              # double 1.8256623712304119
	.dword	0x3f813c485f1123b4              # double 0.0084157613765841535
	.dword	0x3f871d490d07c637              # double 0.011286326131968767
	.dword	0x4029c9eacea7d9cf              # double 12.894369562139131
	.dword	0xc02e38e8d626667e              # double -15.111151401698631
	.dword	0xbfcc9557be257da0              # double -0.22330757889265573
	.dword	0x3ff1531ca9911bef              # double 1.0827910064415354
	.dword	0x3febcc7f3e54bbc5              # double 0.86871301816960822
	.dword	0xbf862f6bfaf23e7c              # double -0.010832637401363636
	.dword	0x3f5c3dd29cf41eb3              # double 0.0017237240570597112
	.dword	0x402ec267a905572a              # double 15.379697114850917
	.dword	0xc039eb5833c8a220              # double -25.919314609987964
	.dword	0x3fc6f1f393abe540              # double 0.17925877295037118
	.dword	0x3fef54b61659bc4a              # double 0.97909073224389798
	.dword	0x3fe307c631c4fba3              # double 0.59469899864767617
	.dword	0xbfa1cb88587665f6              # double -0.034755955504078104
	.dword	0x3f60a8f3531799ac              # double 0.0020336868699246304
	.size	bodies, 280

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.9f\n"
	.size	.L.str, 6

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bodies
