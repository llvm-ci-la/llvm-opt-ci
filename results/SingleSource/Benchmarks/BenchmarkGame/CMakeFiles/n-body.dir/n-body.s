	.file	"n-body.c"
	.text
	.globl	advance                         # -- Begin function advance
	.p2align	5
	.type	advance,@function
advance:                                # @advance
# %bb.0:
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
	fldx.d	$fa1, $a1, $a7
	fld.d	$fa2, $a6, 8
	fld.d	$fa3, $a6, 16
	fld.d	$fa4, $a6, 48
	move	$a7, $a2
	move	$t0, $a0
	.p2align	4, , 16
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa5, $a7, -48
	fld.d	$fa6, $a7, -40
	fld.d	$fa7, $a7, -32
	fsub.d	$fa5, $fa1, $fa5
	fsub.d	$fa6, $fa2, $fa6
	fsub.d	$fa7, $fa3, $fa7
	fmul.d	$ft0, $fa6, $fa6
	fmadd.d	$ft0, $fa5, $fa5, $ft0
	fmadd.d	$ft0, $fa7, $fa7, $ft0
	fsqrt.d	$ft0, $ft0
	fmul.d	$ft1, $ft0, $ft0
	fld.d	$ft2, $a7, 0
	fmul.d	$ft0, $ft0, $ft1
	fdiv.d	$ft0, $fa0, $ft0
	fld.d	$ft1, $a6, 24
	fneg.d	$ft2, $ft2
	fmul.d	$ft3, $fa5, $ft2
	fld.d	$ft4, $a6, 32
	fmadd.d	$ft1, $ft3, $ft0, $ft1
	fst.d	$ft1, $a6, 24
	fmul.d	$ft1, $fa6, $ft2
	fmadd.d	$ft1, $ft1, $ft0, $ft4
	fld.d	$ft3, $a6, 40
	fst.d	$ft1, $a6, 32
	fmul.d	$ft1, $fa7, $ft2
	fld.d	$ft2, $a7, -24
	fmadd.d	$ft1, $ft1, $ft0, $ft3
	fst.d	$ft1, $a6, 40
	fmul.d	$fa5, $fa5, $fa4
	fmadd.d	$fa5, $fa5, $ft0, $ft2
	fld.d	$ft1, $a7, -16
	fst.d	$fa5, $a7, -24
	fmul.d	$fa5, $fa6, $fa4
	fld.d	$fa6, $a7, -8
	fmadd.d	$fa5, $fa5, $ft0, $ft1
	fst.d	$fa5, $a7, -16
	fmul.d	$fa5, $fa7, $fa4
	fmadd.d	$fa5, $fa5, $ft0, $fa6
	fst.d	$fa5, $a7, -8
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 56
	bne	$a4, $t0, .LBB0_5
	b	.LBB0_2
.LBB0_6:                                # %.lr.ph71.preheader
	addi.d	$a1, $a1, 24
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph71
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a1, -24
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fld.d	$fa2, $a1, 8
	fld.d	$fa3, $a1, -16
	fld.d	$fa4, $a1, 16
	fld.d	$fa5, $a1, -8
	fst.d	$fa1, $a1, -24
	fmadd.d	$fa1, $fa0, $fa2, $fa3
	fst.d	$fa1, $a1, -16
	fmadd.d	$fa1, $fa0, $fa4, $fa5
	fst.d	$fa1, $a1, -8
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
	.globl	offset_momentum                 # -- Begin function offset_momentum
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
	vreplgr2vr.d	$vr2, $a0
	vfdiv.d	$vr1, $vr1, $vr2
	vst	$vr1, $a1, 24
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 40
	ret
.Lfunc_end2:
	.size	offset_momentum, .Lfunc_end2-offset_momentum
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.loopexit.i.4
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bodies)
	addi.d	$fp, $a0, %pc_lo12(bodies)
	fld.d	$fa0, $fp, 24
	fld.d	$fa6, $fp, 48
	fld.d	$fa1, $fp, 32
	fld.d	$fa2, $fp, 40
	movgr2fr.d	$fs0, $zero
	fmadd.d	$fa0, $fa0, $fa6, $fs0
	fmadd.d	$fa4, $fa1, $fa6, $fs0
	fmadd.d	$fa2, $fa2, $fa6, $fs0
	fld.d	$ft3, $fp, 80
	fld.d	$fa3, $fp, 104
	fld.d	$ft4, $fp, 88
	fld.d	$ft5, $fp, 96
	fld.d	$ft2, $fp, 136
	fld.d	$fa1, $fp, 160
	fmadd.d	$fa0, $ft3, $fa3, $fa0
	fmadd.d	$fa4, $ft4, $fa3, $fa4
	fmadd.d	$fa2, $ft5, $fa3, $fa2
	fmadd.d	$fa5, $ft2, $fa1, $fa0
	fld.d	$ft6, $fp, 144
	fld.d	$ft7, $fp, 152
	fld.d	$ft0, $fp, 192
	fld.d	$fa0, $fp, 216
	fld.d	$ft1, $fp, 200
	fmadd.d	$fa4, $ft6, $fa1, $fa4
	fmadd.d	$fa7, $ft7, $fa1, $fa2
	fmadd.d	$fa5, $ft0, $fa0, $fa5
	fmadd.d	$fa4, $ft1, $fa0, $fa4
	fld.d	$ft8, $fp, 208
	fld.d	$ft9, $fp, 248
	fld.d	$fa2, $fp, 272
	fld.d	$ft10, $fp, 256
	fld.d	$ft11, $fp, 264
	fmadd.d	$fa7, $ft8, $fa0, $fa7
	fmadd.d	$fa5, $ft9, $fa2, $fa5
	fmadd.d	$fa4, $ft10, $fa2, $fa4
	fmadd.d	$fa7, $ft11, $fa2, $fa7
	lu12i.w	$a0, -222236
	ori	$a0, $a0, 1502
	lu32i.d	$a0, 245052
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$ft12, $a0
	fdiv.d	$ft14, $fa5, $ft12
	fst.d	$ft14, $fp, 24
	fdiv.d	$ft15, $fa4, $ft12
	fst.d	$ft15, $fp, 32
	fdiv.d	$fs1, $fa7, $ft12
	fst.d	$fs1, $fp, 40
	vldi	$vr26, -928
	fmul.d	$fa4, $fa2, $fs2
	fmul.d	$fa5, $ft10, $ft10
	fmadd.d	$fa5, $ft9, $ft9, $fa5
	fmadd.d	$fa5, $ft11, $ft11, $fa5
	fmul.d	$fa7, $fa0, $fs2
	fmul.d	$ft1, $ft1, $ft1
	fmadd.d	$ft0, $ft0, $ft0, $ft1
	fmadd.d	$ft0, $ft8, $ft8, $ft0
	fmul.d	$ft1, $fa1, $fs2
	fmul.d	$ft6, $ft6, $ft6
	fmadd.d	$ft2, $ft2, $ft2, $ft6
	fmadd.d	$ft2, $ft7, $ft7, $ft2
	fmul.d	$ft12, $fa3, $fs2
	fmul.d	$ft4, $ft4, $ft4
	fmadd.d	$ft3, $ft3, $ft3, $ft4
	fmadd.d	$ft13, $ft5, $ft5, $ft3
	fmul.d	$ft3, $fa6, $fs2
	fmul.d	$ft4, $ft15, $ft15
	fmadd.d	$ft4, $ft14, $ft14, $ft4
	fmadd.d	$ft4, $fs1, $fs1, $ft4
	fmadd.d	$ft3, $ft3, $ft4, $fs0
	fld.d	$fs2, $fp, 16
	fld.d	$ft6, $fp, 72
	fld.d	$fs3, $fp, 0
	fld.d	$ft7, $fp, 56
	fld.d	$fs4, $fp, 8
	fld.d	$ft10, $fp, 64
	fmul.d	$ft4, $fa6, $fa3
	fsub.d	$ft5, $fs2, $ft6
	fsub.d	$ft8, $fs3, $ft7
	fsub.d	$ft9, $fs4, $ft10
	fmul.d	$ft9, $ft9, $ft9
	fmadd.d	$ft8, $ft8, $ft8, $ft9
	fmadd.d	$ft5, $ft5, $ft5, $ft8
	fsqrt.d	$ft5, $ft5
	fdiv.d	$ft4, $ft4, $ft5
	fsub.d	$ft8, $ft3, $ft4
	fld.d	$ft3, $fp, 128
	fld.d	$ft4, $fp, 112
	fld.d	$ft5, $fp, 120
	fmul.d	$ft9, $fa6, $fa1
	fsub.d	$ft11, $fs2, $ft3
	fsub.d	$ft14, $fs3, $ft4
	fsub.d	$ft15, $fs4, $ft5
	fmul.d	$ft15, $ft15, $ft15
	fmadd.d	$ft14, $ft14, $ft14, $ft15
	fmadd.d	$ft11, $ft11, $ft11, $ft14
	fsqrt.d	$ft11, $ft11
	fdiv.d	$ft9, $ft9, $ft11
	fsub.d	$ft14, $ft8, $ft9
	fld.d	$ft8, $fp, 184
	fld.d	$ft9, $fp, 168
	fld.d	$ft11, $fp, 176
	fmul.d	$ft15, $fa6, $fa0
	fsub.d	$fs1, $fs2, $ft8
	fsub.d	$fs5, $fs3, $ft9
	fsub.d	$fs6, $fs4, $ft11
	fmul.d	$fs6, $fs6, $fs6
	fmadd.d	$fs5, $fs5, $fs5, $fs6
	fmadd.d	$fs1, $fs1, $fs1, $fs5
	fsqrt.d	$fs1, $fs1
	fdiv.d	$ft15, $ft15, $fs1
	fsub.d	$fs5, $ft14, $ft15
	fld.d	$ft14, $fp, 240
	fld.d	$ft15, $fp, 224
	fld.d	$fs1, $fp, 232
	fmul.d	$fa6, $fa6, $fa2
	fsub.d	$fs2, $fs2, $ft14
	fsub.d	$fs3, $fs3, $ft15
	fsub.d	$fs4, $fs4, $fs1
	fmul.d	$fs4, $fs4, $fs4
	fmadd.d	$fs3, $fs3, $fs3, $fs4
	fmadd.d	$fs2, $fs2, $fs2, $fs3
	fsqrt.d	$fs2, $fs2
	fdiv.d	$fa6, $fa6, $fs2
	fsub.d	$fa6, $fs5, $fa6
	fmadd.d	$fa6, $ft12, $ft13, $fa6
	fmul.d	$ft12, $fa3, $fa1
	fsub.d	$ft13, $ft6, $ft3
	fsub.d	$fs2, $ft7, $ft4
	fsub.d	$fs3, $ft10, $ft5
	fmul.d	$fs3, $fs3, $fs3
	fmadd.d	$fs2, $fs2, $fs2, $fs3
	fmadd.d	$ft13, $ft13, $ft13, $fs2
	fsqrt.d	$ft13, $ft13
	fdiv.d	$ft12, $ft12, $ft13
	fsub.d	$fa6, $fa6, $ft12
	fmul.d	$ft12, $fa3, $fa0
	fsub.d	$ft13, $ft6, $ft8
	fsub.d	$fs2, $ft7, $ft9
	fsub.d	$fs3, $ft10, $ft11
	fmul.d	$fs3, $fs3, $fs3
	fmadd.d	$fs2, $fs2, $fs2, $fs3
	fmadd.d	$ft13, $ft13, $ft13, $fs2
	fsqrt.d	$ft13, $ft13
	fdiv.d	$ft12, $ft12, $ft13
	fsub.d	$fa6, $fa6, $ft12
	fmul.d	$fa3, $fa3, $fa2
	fsub.d	$ft6, $ft6, $ft14
	fsub.d	$ft7, $ft7, $ft15
	fsub.d	$ft10, $ft10, $fs1
	fmul.d	$ft10, $ft10, $ft10
	fmadd.d	$ft7, $ft7, $ft7, $ft10
	fmadd.d	$ft6, $ft6, $ft6, $ft7
	fsqrt.d	$ft6, $ft6
	fdiv.d	$fa3, $fa3, $ft6
	fsub.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $ft1, $ft2, $fa3
	fmul.d	$fa6, $fa1, $fa0
	fsub.d	$ft1, $ft3, $ft8
	fsub.d	$ft2, $ft4, $ft9
	fsub.d	$ft6, $ft5, $ft11
	fmul.d	$ft6, $ft6, $ft6
	fmadd.d	$ft2, $ft2, $ft2, $ft6
	fmadd.d	$ft1, $ft1, $ft1, $ft2
	fsqrt.d	$ft1, $ft1
	fdiv.d	$fa6, $fa6, $ft1
	fsub.d	$fa3, $fa3, $fa6
	fmul.d	$fa1, $fa1, $fa2
	fsub.d	$fa6, $ft3, $ft14
	fsub.d	$ft1, $ft4, $ft15
	fsub.d	$ft2, $ft5, $fs1
	fmul.d	$ft2, $ft2, $ft2
	fmadd.d	$ft1, $ft1, $ft1, $ft2
	fmadd.d	$fa6, $fa6, $fa6, $ft1
	fsqrt.d	$fa6, $fa6
	fdiv.d	$fa1, $fa1, $fa6
	fsub.d	$fa1, $fa3, $fa1
	fmadd.d	$fa1, $fa7, $ft0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa2, $ft8, $ft14
	fsub.d	$fa3, $ft9, $ft15
	fsub.d	$fa6, $ft11, $fs1
	fmul.d	$fa6, $fa6, $fa6
	fmadd.d	$fa3, $fa3, $fa3, $fa6
	fmadd.d	$fa2, $fa2, $fa2, $fa3
	fsqrt.d	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fsub.d	$fa0, $fa1, $fa0
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1220
	ori	$s0, $a0, 2880
	lu12i.w	$a0, 293601
	ori	$a0, $a0, 1147
	lu32i.d	$a0, 293601
	lu52i.d	$s1, $a0, 1016
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movgr2fr.d	$fa0, $s1
	ori	$a0, $zero, 5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(advance)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB3_1
# %bb.2:                                # %.loopexit.i12.4
	fld.d	$fa7, $fp, 104
	fld.d	$fa4, $fp, 160
	fld.d	$fa0, $fp, 216
	fld.d	$fa2, $fp, 272
	vldi	$vr10, -928
	fld.d	$fa3, $fp, 256
	fld.d	$fa5, $fp, 248
	fld.d	$fa6, $fp, 264
	fmul.d	$fa1, $fa2, $ft2
	fmul.d	$fa3, $fa3, $fa3
	fmadd.d	$fa3, $fa5, $fa5, $fa3
	fmadd.d	$fa3, $fa6, $fa6, $fa3
	fld.d	$fa6, $fp, 200
	fld.d	$ft0, $fp, 192
	fld.d	$ft1, $fp, 208
	fmul.d	$fa5, $fa0, $ft2
	fmul.d	$fa6, $fa6, $fa6
	fmadd.d	$fa6, $ft0, $ft0, $fa6
	fmadd.d	$fa6, $ft1, $ft1, $fa6
	fld.d	$ft1, $fp, 144
	fld.d	$ft3, $fp, 136
	fld.d	$ft4, $fp, 152
	fmul.d	$ft0, $fa4, $ft2
	fmul.d	$ft1, $ft1, $ft1
	fmadd.d	$ft1, $ft3, $ft3, $ft1
	fmadd.d	$ft1, $ft4, $ft4, $ft1
	fld.d	$ft3, $fp, 88
	fld.d	$ft4, $fp, 80
	fld.d	$ft5, $fp, 96
	fmul.d	$ft9, $fa7, $ft2
	fmul.d	$ft3, $ft3, $ft3
	fmadd.d	$ft3, $ft4, $ft4, $ft3
	fmadd.d	$ft12, $ft5, $ft5, $ft3
	fld.d	$ft13, $fp, 48
	fld.d	$ft3, $fp, 32
	fld.d	$ft4, $fp, 24
	fld.d	$ft5, $fp, 40
	fmul.d	$ft2, $ft13, $ft2
	fmul.d	$ft3, $ft3, $ft3
	fmadd.d	$ft3, $ft4, $ft4, $ft3
	fmadd.d	$ft3, $ft5, $ft5, $ft3
	fmadd.d	$ft2, $ft2, $ft3, $fs0
	fld.d	$fs1, $fp, 16
	fld.d	$ft5, $fp, 72
	fld.d	$fs2, $fp, 0
	fld.d	$ft6, $fp, 56
	fld.d	$fs3, $fp, 8
	fld.d	$ft10, $fp, 64
	fmul.d	$ft3, $ft13, $fa7
	fsub.d	$ft4, $fs1, $ft5
	fsub.d	$ft7, $fs2, $ft6
	fsub.d	$ft8, $fs3, $ft10
	fmul.d	$ft8, $ft8, $ft8
	fmadd.d	$ft7, $ft7, $ft7, $ft8
	fmadd.d	$ft4, $ft4, $ft4, $ft7
	fsqrt.d	$ft4, $ft4
	fdiv.d	$ft3, $ft3, $ft4
	fsub.d	$ft7, $ft2, $ft3
	fld.d	$ft2, $fp, 128
	fld.d	$ft3, $fp, 112
	fld.d	$ft4, $fp, 120
	fmul.d	$ft8, $ft13, $fa4
	fsub.d	$ft11, $fs1, $ft2
	fsub.d	$ft14, $fs2, $ft3
	fsub.d	$ft15, $fs3, $ft4
	fmul.d	$ft15, $ft15, $ft15
	fmadd.d	$ft14, $ft14, $ft14, $ft15
	fmadd.d	$ft11, $ft11, $ft11, $ft14
	fsqrt.d	$ft11, $ft11
	fdiv.d	$ft8, $ft8, $ft11
	fsub.d	$ft14, $ft7, $ft8
	fld.d	$ft7, $fp, 184
	fld.d	$ft8, $fp, 168
	fld.d	$ft11, $fp, 176
	fmul.d	$ft15, $ft13, $fa0
	fsub.d	$fs0, $fs1, $ft7
	fsub.d	$fs4, $fs2, $ft8
	fsub.d	$fs5, $fs3, $ft11
	fmul.d	$fs5, $fs5, $fs5
	fmadd.d	$fs4, $fs4, $fs4, $fs5
	fmadd.d	$fs0, $fs0, $fs0, $fs4
	fsqrt.d	$fs0, $fs0
	fdiv.d	$ft15, $ft15, $fs0
	fsub.d	$fs4, $ft14, $ft15
	fld.d	$ft14, $fp, 240
	fld.d	$ft15, $fp, 224
	fld.d	$fs0, $fp, 232
	fmul.d	$ft13, $ft13, $fa2
	fsub.d	$fs1, $fs1, $ft14
	fsub.d	$fs2, $fs2, $ft15
	fsub.d	$fs3, $fs3, $fs0
	fmul.d	$fs3, $fs3, $fs3
	fmadd.d	$fs2, $fs2, $fs2, $fs3
	fmadd.d	$fs1, $fs1, $fs1, $fs2
	fsqrt.d	$fs1, $fs1
	fdiv.d	$ft13, $ft13, $fs1
	fsub.d	$ft13, $fs4, $ft13
	fmadd.d	$ft9, $ft9, $ft12, $ft13
	fmul.d	$ft12, $fa7, $fa4
	fsub.d	$ft13, $ft5, $ft2
	fsub.d	$fs1, $ft6, $ft3
	fsub.d	$fs2, $ft10, $ft4
	fmul.d	$fs2, $fs2, $fs2
	fmadd.d	$fs1, $fs1, $fs1, $fs2
	fmadd.d	$ft13, $ft13, $ft13, $fs1
	fsqrt.d	$ft13, $ft13
	fdiv.d	$ft12, $ft12, $ft13
	fsub.d	$ft9, $ft9, $ft12
	fmul.d	$ft12, $fa7, $fa0
	fsub.d	$ft13, $ft5, $ft7
	fsub.d	$fs1, $ft6, $ft8
	fsub.d	$fs2, $ft10, $ft11
	fmul.d	$fs2, $fs2, $fs2
	fmadd.d	$fs1, $fs1, $fs1, $fs2
	fmadd.d	$ft13, $ft13, $ft13, $fs1
	fsqrt.d	$ft13, $ft13
	fdiv.d	$ft12, $ft12, $ft13
	fsub.d	$ft9, $ft9, $ft12
	fmul.d	$fa7, $fa7, $fa2
	fsub.d	$ft5, $ft5, $ft14
	fsub.d	$ft6, $ft6, $ft15
	fsub.d	$ft10, $ft10, $fs0
	fmul.d	$ft10, $ft10, $ft10
	fmadd.d	$ft6, $ft6, $ft6, $ft10
	fmadd.d	$ft5, $ft5, $ft5, $ft6
	fsqrt.d	$ft5, $ft5
	fdiv.d	$fa7, $fa7, $ft5
	fsub.d	$fa7, $ft9, $fa7
	fmadd.d	$fa7, $ft0, $ft1, $fa7
	fmul.d	$ft0, $fa4, $fa0
	fsub.d	$ft1, $ft2, $ft7
	fsub.d	$ft5, $ft3, $ft8
	fsub.d	$ft6, $ft4, $ft11
	fmul.d	$ft6, $ft6, $ft6
	fmadd.d	$ft5, $ft5, $ft5, $ft6
	fmadd.d	$ft1, $ft1, $ft1, $ft5
	fsqrt.d	$ft1, $ft1
	fdiv.d	$ft0, $ft0, $ft1
	fsub.d	$fa7, $fa7, $ft0
	fmul.d	$fa4, $fa4, $fa2
	fsub.d	$ft0, $ft2, $ft14
	fsub.d	$ft1, $ft3, $ft15
	fsub.d	$ft2, $ft4, $fs0
	fmul.d	$ft2, $ft2, $ft2
	fmadd.d	$ft1, $ft1, $ft1, $ft2
	fmadd.d	$ft0, $ft0, $ft0, $ft1
	fsqrt.d	$ft0, $ft0
	fdiv.d	$fa4, $fa4, $ft0
	fsub.d	$fa4, $fa7, $fa4
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa2, $ft7, $ft14
	fsub.d	$fa5, $ft8, $ft15
	fsub.d	$fa6, $ft11, $fs0
	fmul.d	$fa6, $fa6, $fa6
	fmadd.d	$fa5, $fa5, $fa5, $fa6
	fmadd.d	$fa2, $fa2, $fa2, $fa5
	fsqrt.d	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fsub.d	$fa0, $fa4, $fa0
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs6, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
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
