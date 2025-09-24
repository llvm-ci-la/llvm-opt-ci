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
# %bb.0:                                # %.lr.ph.i
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bodies)
	addi.d	$a0, $a0, %pc_lo12(bodies)
	move	$a1, $zero
	fld.d	$fa1, $a0, 24
	fld.d	$fa2, $a0, 48
	movgr2fr.d	$fa0, $zero
	fld.d	$fa3, $a0, 32
	fld.d	$fa4, $a0, 40
	fld.d	$fa5, $a0, 80
	fld.d	$fa6, $a0, 104
	fmadd.d	$fa1, $fa1, $fa2, $fa0
	fmadd.d	$fa3, $fa3, $fa2, $fa0
	fmadd.d	$fa2, $fa4, $fa2, $fa0
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fld.d	$fa4, $a0, 88
	fld.d	$fa5, $a0, 96
	fld.d	$fa7, $a0, 136
	fld.d	$ft0, $a0, 160
	fld.d	$ft1, $a0, 144
	fmadd.d	$fa3, $fa4, $fa6, $fa3
	fmadd.d	$fa2, $fa5, $fa6, $fa2
	fmadd.d	$fa1, $fa7, $ft0, $fa1
	fmadd.d	$fa3, $ft1, $ft0, $fa3
	fld.d	$fa4, $a0, 152
	fld.d	$fa5, $a0, 192
	fld.d	$fa6, $a0, 216
	fld.d	$fa7, $a0, 200
	fld.d	$ft1, $a0, 208
	fmadd.d	$fa2, $fa4, $ft0, $fa2
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa3, $fa7, $fa6, $fa3
	fmadd.d	$fa2, $ft1, $fa6, $fa2
	fld.d	$fa4, $a0, 248
	fld.d	$fa5, $a0, 272
	fld.d	$fa6, $a0, 256
	fld.d	$fa7, $a0, 264
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	fld.d	$ft0, $a2, %pc_lo12(.LCPI3_0)
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa3, $fa6, $fa5, $fa3
	fmadd.d	$fa2, $fa7, $fa5, $fa2
	fdiv.d	$fa1, $fa1, $ft0
	fst.d	$fa1, $a0, 24
	fdiv.d	$fa1, $fa3, $ft0
	fst.d	$fa1, $a0, 32
	fdiv.d	$fa1, $fa2, $ft0
	fst.d	$fa1, $a0, 40
	addi.d	$a2, $a0, 56
	ori	$a3, $zero, 4
	ori	$a4, $zero, 56
	vldi	$vr1, -928
	ori	$a5, $zero, 3
	ori	$a6, $zero, 5
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %.loopexit.i
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 56
	beq	$a1, $a6, .LBB3_5
.LBB3_2:                                # %.lr.ph42.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	mul.d	$a7, $a1, $a4
	add.d	$a7, $a0, $a7
	fld.d	$fa2, $a7, 48
	fld.d	$fa3, $a7, 32
	fld.d	$fa4, $a7, 24
	fld.d	$fa5, $a7, 40
	fmul.d	$fa6, $fa2, $fa1
	fmul.d	$fa3, $fa3, $fa3
	fmadd.d	$fa3, $fa4, $fa4, $fa3
	fmadd.d	$fa3, $fa5, $fa5, $fa3
	fmadd.d	$fa0, $fa6, $fa3, $fa0
	bltu	$a5, $a1, .LBB3_1
# %bb.3:                                # %.lr.ph.i5
                                        #   in Loop: Header=BB3_2 Depth=1
	fld.d	$fa3, $a7, 0
	fld.d	$fa4, $a7, 8
	fld.d	$fa5, $a7, 16
	move	$a7, $a2
	move	$t0, $a3
	.p2align	4, , 16
.LBB3_4:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa6, $a7, 0
	fld.d	$fa7, $a7, 8
	fsub.d	$fa6, $fa3, $fa6
	fsub.d	$fa7, $fa4, $fa7
	fld.d	$ft0, $a7, 16
	fmul.d	$fa7, $fa7, $fa7
	fmadd.d	$fa6, $fa6, $fa6, $fa7
	fld.d	$fa7, $a7, 48
	fsub.d	$ft0, $fa5, $ft0
	fmadd.d	$fa6, $ft0, $ft0, $fa6
	fsqrt.d	$fa6, $fa6
	fmul.d	$fa7, $fa2, $fa7
	fdiv.d	$fa6, $fa7, $fa6
	fsub.d	$fa0, $fa0, $fa6
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 56
	bnez	$t0, .LBB3_4
	b	.LBB3_1
.LBB3_5:                                # %energy.exit
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1220
	ori	$s0, $a0, 2880
	pcalau12i	$a0, %pc_hi20(bodies)
	addi.d	$fp, $a0, %pc_lo12(bodies)
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI3_1)
	.p2align	4, , 16
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 5
	move	$a1, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(advance)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB3_6
# %bb.7:                                # %.lr.ph42.i7.preheader
	move	$a0, $zero
	addi.d	$a1, $fp, 56
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 4
	ori	$a3, $zero, 56
	vldi	$vr1, -928
	ori	$a4, $zero, 3
	ori	$a5, $zero, 5
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_8:                                # %.loopexit.i12
                                        #   in Loop: Header=BB3_9 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 56
	beq	$a0, $a5, .LBB3_12
.LBB3_9:                                # %.lr.ph42.i7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
	mul.d	$a6, $a0, $a3
	add.d	$a6, $fp, $a6
	fld.d	$fa2, $a6, 48
	fld.d	$fa3, $a6, 32
	fld.d	$fa4, $a6, 24
	fld.d	$fa5, $a6, 40
	fmul.d	$fa6, $fa2, $fa1
	fmul.d	$fa3, $fa3, $fa3
	fmadd.d	$fa3, $fa4, $fa4, $fa3
	fmadd.d	$fa3, $fa5, $fa5, $fa3
	fmadd.d	$fa0, $fa6, $fa3, $fa0
	bltu	$a4, $a0, .LBB3_8
# %bb.10:                               # %.lr.ph.i16
                                        #   in Loop: Header=BB3_9 Depth=1
	fld.d	$fa3, $a6, 0
	fld.d	$fa4, $a6, 8
	fld.d	$fa5, $a6, 16
	move	$a6, $a1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_11:                               #   Parent Loop BB3_9 Depth=1
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
	bnez	$a7, .LBB3_11
	b	.LBB3_8
.LBB3_12:                               # %energy.exit22
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
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
