	.file	"smallpt.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z8radianceRK3RayiPt
.LCPI0_0:
	.dword	0x4415af1d78b58c40              # double 1.0E+20
.LCPI0_1:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
.LCPI0_2:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
.LCPI0_3:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI0_4:
	.dword	0x3fe5555555555555              # double 0.66666666666666663
.LCPI0_5:
	.dword	0x3feeb851eb851eb8              # double 0.95999999999999996
.LCPI0_6:
	.dword	0x3fa47ae147ae147b              # double 0.040000000000000001
	.text
	.globl	_Z8radianceRK3RayiPt
	.p2align	5
	.type	_Z8radianceRK3RayiPt,@function
_Z8radianceRK3RayiPt:                   # @_Z8radianceRK3RayiPt
# %bb.0:
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 328                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 320                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 312                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 304                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 280                  # 8-byte Folded Spill
	fld.d	$fs4, $a1, 0
	fld.d	$fs5, $a1, 8
	fld.d	$fs6, $a1, 16
	fld.d	$fa4, $a1, 24
	fld.d	$fs2, $a1, 32
	fld.d	$fs1, $a1, 40
	pcalau12i	$s1, %pc_hi20(.LCPI0_0)
	fld.d	$fa5, $s1, %pc_lo12(.LCPI0_0)
	move	$fp, $a0
	ori	$s2, $zero, 8
	pcalau12i	$a0, %pc_hi20(spheres)
	addi.d	$s0, $a0, %pc_lo12(spheres)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI0_1)
	move	$s4, $zero
	move	$s3, $zero
	movgr2fr.d	$fs7, $zero
	addi.w	$s5, $zero, -792
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %_ZNK6Sphere9intersectERK3Ray.exit.thread.i
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.d	$s4, $s4, -88
	addi.w	$s2, $s2, -1
	beq	$s4, $s5, .LBB0_8
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s0, $s4
	fld.d	$fa0, $a0, 712
	fld.d	$fa1, $a0, 720
	fld.d	$fa2, $a0, 728
	fsub.d	$fa0, $fa0, $fs4
	fsub.d	$fa1, $fa1, $fs5
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa3, $fa1, $fs2
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fld.d	$fa1, $a0, 704
	fmadd.d	$fs0, $fa2, $fs1, $fa3
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmsub.d	$fa0, $fs0, $fs0, $fa0
	fmadd.d	$fa0, $fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB0_1
# %bb.3:                                # %_ZNK6Sphere9intersectERK3Ray.exit.i
                                        #   in Loop: Header=BB0_2 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB0_7
.LBB0_4:                                # %_ZNK6Sphere9intersectERK3Ray.exit.i.split
                                        #   in Loop: Header=BB0_2 Depth=1
	fsub.d	$fa0, $fs0, $fa1
	fadd.d	$fa1, $fs0, $fa1
	fcmp.clt.d	$fcc0, $fs3, $fa1
	fsel	$fa1, $fs7, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fs3, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB0_1
# %bb.5:                                # %_ZNK6Sphere9intersectERK3Ray.exit.i.split
                                        #   in Loop: Header=BB0_2 Depth=1
	fcmp.cule.d	$fcc0, $fa5, $fa0
	bcnez	$fcc0, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	move	$s3, $s2
	fmov.d	$fa5, $fa0
	b	.LBB0_1
.LBB0_7:                                # %call.sqrt
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$s6, $a3
	move	$s8, $a2
	move	$s7, $a1
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fa5, $sp, 72                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s6
	fmov.d	$fa1, $fa0
	b	.LBB0_4
.LBB0_8:                                # %_Z9intersectRK3RayRdRi.exit
	fld.d	$fa0, $s1, %pc_lo12(.LCPI0_0)
	fcmp.clt.d	$fcc0, $fa5, $fa0
	bceqz	$fcc0, .LBB0_13
# %bb.9:
	ori	$a0, $zero, 88
	mul.d	$a0, $s3, $a0
	add.d	$s3, $s0, $a0
	fld.d	$fs3, $s3, 8
	fld.d	$fa3, $s3, 16
	fld.d	$fa6, $s3, 24
	vld	$vr1, $s3, 56
	fld.d	$fs0, $s3, 72
	ori	$a0, $zero, 5
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	blt	$a2, $a0, .LBB0_15
# %bb.10:
	fst.d	$fa6, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fa3, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa5, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a2
	vreplvei.d	$vr0, $vr1, 0
	vreplvei.d	$vr1, $vr1, 1
	fcmp.clt.d	$fcc0, $fs0, $fa1
	fsel	$fa2, $fs0, $fa1, $fcc0
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fcmp.clt.d	$fcc0, $fs0, $fa0
	fsel	$fa3, $fa2, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fs0, $fa2, $fa3, $fcc0
	move	$s2, $a3
	move	$a0, $a3
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB0_12
# %bb.11:
	ori	$a0, $zero, 128
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 72                   # 8-byte Folded Reload
	bltu	$s1, $a0, .LBB0_14
.LBB0_12:
	ld.d	$a0, $s3, 48
	vld	$vr0, $s3, 32
	st.d	$a0, $fp, 16
	vst	$vr0, $fp, 0
	b	.LBB0_25
.LBB0_13:
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	b	.LBB0_25
.LBB0_14:
	move	$a2, $s1
	move	$a1, $s0
	frecip.d	$fa0, $fs0
	vreplvei.d	$vr1, $vr0, 0
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vfmul.d	$vr2, $vr2, $vr1
	vst	$vr2, $sp, 112                  # 16-byte Folded Spill
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fs0, $fs0, $fa0
	move	$a3, $s2
	fld.d	$fa3, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 48                   # 8-byte Folded Reload
.LBB0_15:                               # %.thread
	fmul.d	$fa0, $fa4, $fa5
	fmul.d	$fa1, $fa5, $fs2
	fmul.d	$fa2, $fa5, $fs1
	fadd.d	$ft1, $fs4, $fa0
	fadd.d	$ft0, $fs5, $fa1
	fadd.d	$fa7, $fs6, $fa2
	fsub.d	$fa0, $ft1, $fs3
	fsub.d	$fa1, $ft0, $fa3
	fsub.d	$fa2, $fa7, $fa6
	fmul.d	$fa3, $fa1, $fa1
	fmadd.d	$fa3, $fa0, $fa0, $fa3
	fmadd.d	$fa3, $fa2, $fa2, $fa3
	frsqrt.d	$fa3, $fa3
	fmul.d	$fs3, $fa0, $fa3
	ld.w	$a0, $s3, 80
	fmul.d	$fs4, $fa1, $fa3
	fmul.d	$fs5, $fa2, $fa3
	ori	$a4, $zero, 1
	addi.w	$s0, $a2, 1
	beq	$a0, $a4, .LBB0_20
# %bb.16:                               # %.thread
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fmul.d	$fa0, $fs2, $fs4
	fmadd.d	$fa0, $fs3, $fa4, $fa0
	fmadd.d	$fa0, $fs5, $fs1, $fa0
	fneg.d	$fa1, $fs3
	fneg.d	$fa2, $fs4
	fneg.d	$fa3, $fs5
	fcmp.clt.d	$fcc0, $fa0, $fs7
	fsel	$fs0, $fa1, $fs3, $fcc0
	fsel	$fs1, $fa2, $fs4, $fcc0
	fsel	$fs6, $fa3, $fs5, $fcc0
	bnez	$a0, .LBB0_21
# %bb.17:
	fst.d	$ft1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fa7, $sp, 80                   # 8-byte Folded Spill
	move	$a0, $a3
	move	$s2, $a3
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_2)
	fmul.d	$fs4, $fa0, $fa1
	move	$s1, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fsqrt.d	$fs2, $fa0
	fcmp.cor.d	$fcc0, $fs2, $fs2
	bceqz	$fcc0, .LBB0_34
.LBB0_18:                               # %.split
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_3)
	fabs.d	$fa1, $fs3
	fcmp.clt.d	$fcc0, $fa0, $fa1
	vldi	$vr1, -912
	fsel	$fa0, $fa1, $fs7, $fcc0
	fsel	$fa1, $fs7, $fa1, $fcc0
	fneg.d	$fa2, $fs7
	fmul.d	$fa2, $fs1, $fa2
	fmadd.d	$fa2, $fa1, $fs6, $fa2
	fneg.d	$fa3, $fs6
	fmul.d	$fa3, $fa0, $fa3
	fmadd.d	$fa3, $fs0, $fs7, $fa3
	fneg.d	$fa4, $fs0
	fmul.d	$fa1, $fa1, $fa4
	fmadd.d	$fa0, $fa0, $fs1, $fa1
	fmul.d	$fa1, $fa3, $fa3
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	fmadd.d	$fa1, $fa0, $fa0, $fa1
	frsqrt.d	$fa1, $fa1
	fmul.d	$fs3, $fa2, $fa1
	fmul.d	$fs7, $fa3, $fa1
	fmul.d	$fs5, $fa0, $fa1
	fneg.d	$fa0, $fs7
	fmul.d	$fa0, $fs6, $fa0
	fmadd.d	$fa0, $fs1, $fs5, $fa0
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fneg.d	$fa0, $fs5
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs6, $fs3, $fa0
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fneg.d	$fa0, $fs3
	fmul.d	$fa0, $fs1, $fa0
	fmadd.d	$fa0, $fs0, $fs7, $fa0
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs3, $fa0
	fmul.d	$fa2, $fs7, $fa0
	fmul.d	$fa0, $fs5, $fa0
	fmul.d	$fs3, $fs2, $fa1
	fmul.d	$fs5, $fs2, $fa2
	fmul.d	$fs7, $fs2, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa0
	fld.d	$fa2, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa0
	fld.d	$fa3, $sp, 16                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa3, $fa0
	fmul.d	$fa1, $fs2, $fa1
	fmul.d	$fa2, $fs2, $fa2
	fmul.d	$fa3, $fs2, $fa0
	fadd.d	$fs2, $fs3, $fa1
	fadd.d	$fs3, $fs5, $fa2
	fld.d	$fa0, $sp, 48                   # 8-byte Folded Reload
	vldi	$vr1, -912
	fsub.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fadd.d	$fs4, $fs7, $fa3
	bceqz	$fcc0, .LBB0_35
.LBB0_19:                               # %.split.split
	fmul.d	$fa1, $fs0, $fa0
	fmul.d	$fa2, $fs1, $fa0
	fmul.d	$fa0, $fs6, $fa0
	fadd.d	$fa1, $fa1, $fs2
	fadd.d	$fa2, $fa2, $fs3
	fadd.d	$fa0, $fa0, $fs4
	fmul.d	$fa3, $fa2, $fa2
	fmadd.d	$fa3, $fa1, $fa1, $fa3
	fmadd.d	$fa3, $fa0, $fa0, $fa3
	frsqrt.d	$fa3, $fa3
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa2, $fa2, $fa3
	fmul.d	$fa0, $fa0, $fa3
	fld.d	$fa3, $sp, 64                   # 8-byte Folded Reload
	fst.d	$fa3, $sp, 232
	fld.d	$fa3, $sp, 72                   # 8-byte Folded Reload
	fst.d	$fa3, $sp, 240
	fld.d	$fa3, $sp, 80                   # 8-byte Folded Reload
	fst.d	$fa3, $sp, 248
	fst.d	$fa1, $sp, 256
	fst.d	$fa2, $sp, 264
	fst.d	$fa0, $sp, 272
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 232
	move	$a2, $s0
	move	$a3, $s1
	b	.LBB0_23
.LBB0_20:
	fadd.d	$fa0, $fs3, $fs3
	fld.d	$fa1, $a1, 32
	fld.d	$fa2, $a1, 24
	fadd.d	$fa3, $fs4, $fs4
	fld.d	$fa4, $a1, 40
	fmul.d	$fa5, $fs4, $fa1
	fmadd.d	$fa5, $fs3, $fa2, $fa5
	fadd.d	$fa6, $fs5, $fs5
	fmadd.d	$fa5, $fs5, $fa4, $fa5
	fmul.d	$fa0, $fa0, $fa5
	fmul.d	$fa3, $fa3, $fa5
	fmul.d	$fa5, $fa6, $fa5
	fsub.d	$fa0, $fa2, $fa0
	fsub.d	$fa1, $fa1, $fa3
	fsub.d	$fa2, $fa4, $fa5
	fst.d	$ft1, $sp, 232
	fst.d	$ft0, $sp, 240
	fst.d	$fa7, $sp, 248
	fst.d	$fa0, $sp, 256
	fst.d	$fa1, $sp, 264
	fst.d	$fa2, $sp, 272
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 232
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_Z8radianceRK3RayiPt)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 176
	fld.d	$fa1, $s3, 48
	vld	$vr2, $sp, 160
	vld	$vr3, $s3, 32
	fmul.d	$fa0, $fs0, $fa0
	b	.LBB0_24
.LBB0_21:
	fadd.d	$fa0, $fs3, $fs3
	fadd.d	$fa4, $fs4, $fs4
	fld.d	$fa1, $a1, 32
	fld.d	$fa3, $a1, 24
	fld.d	$fa2, $a1, 40
	fadd.d	$fa5, $fs5, $fs5
	fmul.d	$fa6, $fs4, $fa1
	fmadd.d	$fa6, $fs3, $fa3, $fa6
	fmadd.d	$fa6, $fs5, $fa2, $fa6
	fmul.d	$fa0, $fa0, $fa6
	fmul.d	$fa4, $fa4, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fsub.d	$fa0, $fa3, $fa0
	fsub.d	$fa4, $fa1, $fa4
	fsub.d	$fa5, $fa2, $fa5
	fst.d	$ft1, $sp, 232
	fst.d	$ft0, $sp, 240
	fst.d	$fa7, $sp, 248
	fst.d	$fa0, $sp, 256
	fst.d	$fa4, $sp, 264
	fmul.d	$fa0, $fs4, $fs1
	fmadd.d	$fa0, $fs3, $fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI0_4)
	fmadd.d	$fa0, $fs5, $fs6, $fa0
	fcmp.clt.d	$fcc1, $fs7, $fa0
	vldi	$vr0, -904
	fsel	$fs2, $fa0, $fa4, $fcc1
	fmul.d	$fa0, $fs1, $fa1
	fmadd.d	$fa0, $fa3, $fs0, $fa0
	fmadd.d	$fs0, $fa2, $fs6, $fa0
	fnmadd.d	$fs6, $fa2, $fs6, $fa0
	vldi	$vr0, -912
	fmadd.d	$fa4, $fs6, $fs0, $fa0
	fneg.d	$fa6, $fs2
	fmul.d	$fa6, $fs2, $fa6
	fmadd.d	$fa0, $fa6, $fa4, $fa0
	fcmp.cule.d	$fcc0, $fs7, $fa0
	fst.d	$fa5, $sp, 272
	bcnez	$fcc0, .LBB0_26
# %bb.22:
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 232
	move	$a2, $s0
.LBB0_23:
	pcaddu18i	$ra, %call36(_Z8radianceRK3RayiPt)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 176
	fld.d	$fa1, $s3, 48
	vld	$vr2, $sp, 160
	vld	$vr3, $s3, 32
	fld.d	$fa4, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa4, $fa0
.LBB0_24:
	fadd.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vfmul.d	$vr1, $vr1, $vr2
	vfadd.d	$vr1, $vr1, $vr3
	vst	$vr1, $fp, 0
	fst.d	$fa0, $fp, 16
.LBB0_25:
	fld.d	$fs7, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 304                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 312                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 320                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 328                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 336                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.LBB0_26:
	fmul.d	$fa3, $fs2, $fa3
	fmul.d	$fs7, $fs2, $fa1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	fmul.d	$fs1, $fs2, $fa2
	fst.d	$fa7, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft1, $sp, 64                   # 8-byte Folded Spill
	bceqz	$fcc0, .LBB0_36
.LBB0_27:                               # %.split326
	fmadd.d	$fa0, $fs0, $fs2, $fa1
	fnmadd.d	$fa1, $fs0, $fs2, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc1
	fmul.d	$fa1, $fs3, $fa0
	fmul.d	$fa2, $fs4, $fa0
	fmul.d	$fa0, $fs5, $fa0
	fsub.d	$fa1, $fa3, $fa1
	fsub.d	$fa2, $fs7, $fa2
	fsub.d	$fa0, $fs1, $fa0
	fmul.d	$fa3, $fa2, $fa2
	fmadd.d	$fa3, $fa1, $fa1, $fa3
	fmadd.d	$fa3, $fa0, $fa0, $fa3
	frsqrt.d	$fa3, $fa3
	fmul.d	$fs2, $fa1, $fa3
	fmul.d	$fs1, $fa2, $fa3
	fmul.d	$fs0, $fa0, $fa3
	fmul.d	$fa0, $fs4, $fs1
	fmadd.d	$fa0, $fs2, $fs3, $fa0
	fmadd.d	$fa0, $fs0, $fs5, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_5)
	fsel	$fa0, $fa0, $fs6, $fcc1
	vldi	$vr3, -912
	fsub.d	$fa0, $fa3, $fa0
	fmul.d	$fa1, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_6)
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fmadd.d	$fa2, $fa1, $fa0, $fa2
	ori	$a0, $zero, 2
	fsub.d	$fa0, $fa3, $fa2
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
	blt	$a2, $a0, .LBB0_30
# %bb.28:
	vldi	$vr0, -944
	vldi	$vr1, -928
	fmadd.d	$fs3, $fa2, $fa1, $fa0
	move	$s1, $a3
	move	$a0, $a3
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fcmp.cule.d	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB0_31
# %bb.29:
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fs3
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 232
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_Z8radianceRK3RayiPt)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 160
	fld.d	$fa1, $sp, 176
	vld	$vr3, $sp, 80                   # 16-byte Folded Reload
	b	.LBB0_32
.LBB0_30:
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 232
	move	$a2, $s0
	move	$s1, $a3
	pcaddu18i	$ra, %call36(_Z8radianceRK3RayiPt)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 224
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	fmul.d	$fs3, $fa1, $fa0
	fld.d	$fa0, $sp, 64                   # 8-byte Folded Reload
	fst.d	$fa0, $sp, 160
	fld.d	$fa0, $sp, 72                   # 8-byte Folded Reload
	fst.d	$fa0, $sp, 168
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	fst.d	$fa0, $sp, 176
	fst.d	$fs2, $sp, 184
	fst.d	$fs1, $sp, 192
	fst.d	$fs0, $sp, 200
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_Z8radianceRK3RayiPt)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 208
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr1, 0
	vld	$vr2, $sp, 128
	fld.d	$fa3, $sp, 144
	vfmul.d	$vr0, $vr1, $vr0
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	vreplvei.d	$vr1, $vr4, 0
	vfmul.d	$vr1, $vr1, $vr2
	fmul.d	$fa2, $fa4, $fa3
	vfadd.d	$vr0, $vr0, $vr1
	fadd.d	$fa1, $fs3, $fa2
	b	.LBB0_33
.LBB0_31:
	vldi	$vr0, -912
	fsub.d	$fa0, $fa0, $fs3
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	fld.d	$fa0, $sp, 64                   # 8-byte Folded Reload
	fst.d	$fa0, $sp, 160
	fld.d	$fa0, $sp, 72                   # 8-byte Folded Reload
	fst.d	$fa0, $sp, 168
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	fst.d	$fa0, $sp, 176
	fst.d	$fs2, $sp, 184
	fst.d	$fs1, $sp, 192
	fst.d	$fs0, $sp, 200
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 160
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_Z8radianceRK3RayiPt)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 208
	fld.d	$fa1, $sp, 224
	vld	$vr3, $sp, 48                   # 16-byte Folded Reload
.LBB0_32:
	vreplvei.d	$vr2, $vr3, 0
	vfmul.d	$vr0, $vr2, $vr0
	fmul.d	$fa1, $fa3, $fa1
.LBB0_33:
	fld.d	$fa2, $s3, 48
	vld	$vr3, $s3, 32
	fld.d	$fa4, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa4, $fa1
	fadd.d	$fa1, $fa1, $fa2
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr2, $vr0
	vfadd.d	$vr0, $vr0, $vr3
	vst	$vr0, $fp, 0
	fst.d	$fa1, $fp, 16
	b	.LBB0_25
.LBB0_34:                               # %call.sqrt324
	fld.d	$fa0, $sp, 48                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	b	.LBB0_18
.LBB0_35:                               # %call.sqrt325
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_19
.LBB0_36:                               # %call.sqrt327
	move	$s1, $a3
	move	$s2, $a2
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 48
	fst.d	$fa3, $sp, 32                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa3, $sp, 32                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 48
	movgr2cf	$fcc1, $a0
	move	$a2, $s2
	move	$a3, $s1
	fmov.d	$fa1, $fa0
	b	.LBB0_27
.Lfunc_end0:
	.size	_Z8radianceRK3RayiPt, .Lfunc_end0-_Z8radianceRK3RayiPt
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI1_1:
	.dword	0x3f50000000000000              # double 9.765625E-4
.LCPI1_2:
	.dword	0x4088000000000000              # double 768
.LCPI1_3:
	.dword	0xbf9662d746dc5a9d              # double -0.021861423206326881
.LCPI1_7:
	.dword	0xbfeff8929a5e7d34              # double -0.99909334325994914
.LCPI1_8:
	.dword	0x4061800000000000              # double 140
.LCPI1_10:
	.dword	0x407279999999999a              # double 295.60000000000002
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_4:
	.dword	0x3fe5e8ca11bfd44f              # double 0.68466666666666665
	.dword	0x0000000000000000              # double 0
.LCPI1_5:
	.dword	0x0000000000000000              # double 0
	.dword	0x3fe06ac72f44be81              # double 0.513034431763984
.LCPI1_6:
	.dword	0x0000000000000000              # double 0
	.dword	0xbfa5cc2d1960285f              # double -0.042573365542992951
.LCPI1_9:
	.dword	0x4049000000000000              # double 50
	.dword	0x404a000000000000              # double 52
	.section	.text.unlikely.,"ax",@progbits
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -464
	.cfi_def_cfa_offset 464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 360                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 344                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 328                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 320                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 312                  # 8-byte Folded Spill
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
	ori	$a2, $zero, 2
	ori	$s5, $zero, 1
	bne	$a0, $a2, .LBB1_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bstrpick.d	$a1, $a1, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$s5, $a0, 2
.LBB1_2:
	lu12i.w	$s0, 4608
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	slli.d	$a2, $s5, 2
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a2, $zero
	movgr2fr.w	$fa0, $s5
	ffint.d.w	$fa0, $fa0
	frecip.d	$fa0, $fa0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	lu12i.w	$a0, 4602
	ori	$a0, $a0, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vrepli.b	$vr4, 0
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_4)
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_5)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_6)
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(.LCPI1_7)
	ori	$a0, $zero, 0
	lu32i.d	$a0, 98304
	lu52i.d	$s8, $a0, 1030
	pcalau12i	$s3, %pc_hi20(.LCPI1_8)
	pcalau12i	$s4, %pc_hi20(.LCPI1_9)
	pcalau12i	$s2, %pc_hi20(.LCPI1_10)
	vst	$vr4, $sp, 80                   # 16-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ori	$a0, $zero, 768
	beq	$a1, $a0, .LBB1_27
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_8 Depth 3
                                        #         Child Loop BB1_10 Depth 4
                                        #           Child Loop BB1_15 Depth 5
	move	$a3, $zero
	st.w	$zero, $sp, 306
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	mul.d	$a0, $a2, $a2
	mul.d	$a0, $a0, $a1
	st.h	$a0, $sp, 310
	slli.d	$a0, $a1, 10
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	srli.d	$a0, $a1, 32
	lu52i.d	$a2, $zero, 1107
	or	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	fld.d	$fa1, $sp, 16                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $a1
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fs5, $fa1, $fa0
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ori	$a0, $zero, 1024
	beq	$a3, $a0, .LBB1_3
.LBB1_6:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
                                        #         Child Loop BB1_10 Depth 4
                                        #           Child Loop BB1_15 Depth 5
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a3, $a0
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 15, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fs6, $fa0
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	lu12i.w	$a1, 4602
	add.d	$s6, $a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$fp, $a0, $a1
	ori	$a1, $zero, 1
	vldi	$vr0, -928
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	move	$a1, $zero
	beqz	$a0, .LBB1_5
.LBB1_8:                                # %.preheader126
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_10 Depth 4
                                        #           Child Loop BB1_15 Depth 5
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	vldi	$vr0, -928
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	ori	$s0, $zero, 1
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %._crit_edge
                                        #   in Loop: Header=BB1_10 Depth=4
	lu52i.d	$a0, $zero, 1023
	vreplgr2vr.d	$vr0, $a0
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa1, $fs7
	fsel	$fa1, $fs7, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fs7, $fs1
	fld.d	$fa2, $fp, 0
	vfcmp.clt.d	$vr3, $vr0, $vr5
	vldi	$vr4, -944
	fmul.d	$fa1, $fa1, $fa4
	fsel	$fa1, $fa1, $fs1, $fcc0
	fadd.d	$fa1, $fa1, $fa2
	vbitsel.v	$vr0, $vr5, $vr0, $vr3
	lu52i.d	$a0, $zero, 1021
	vreplgr2vr.d	$vr2, $a0
	vld	$vr3, $s6, 0
	vfmul.d	$vr0, $vr0, $vr2
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	vfcmp.cule.d	$vr2, $vr4, $vr5
	vand.v	$vr0, $vr2, $vr0
	vfadd.d	$vr0, $vr0, $vr3
	vst	$vr0, $s6, 0
	fst.d	$fa1, $fp, 0
	andi	$a0, $s0, 1
	vldi	$vr0, -904
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	move	$s0, $zero
	beqz	$a0, .LBB1_7
.LBB1_10:                               # %.preheader
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_15 Depth 5
	fmov.d	$fs7, $fs1
	vori.b	$vr5, $vr4, 0
	blez	$s5, .LBB1_9
# %bb.11:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_10 Depth=4
	move	$s1, $s5
	fmov.d	$fs7, $fs1
	vld	$vr5, $sp, 80                   # 16-byte Folded Reload
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_15 Depth=5
	vldi	$vr1, -1024
	fsub.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_23
.LBB1_13:                               # %.split158
                                        #   in Loop: Header=BB1_15 Depth=5
	fsub.d	$fa0, $fa2, $fa0
.LBB1_14:                               #   in Loop: Header=BB1_15 Depth=5
	vld	$vr1, $sp, 192                  # 16-byte Folded Reload
	fadd.d	$fa1, $fa1, $fs0
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fs6
	fmul.d	$fa1, $fa1, $fs2
	vldi	$vr3, -800
	fadd.d	$fa1, $fa1, $fa3
	vld	$vr4, $sp, 176                  # 16-byte Folded Reload
	fadd.d	$fa0, $fa4, $fa0
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fs5
	fdiv.d	$fa0, $fa0, $fs3
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fa2, $fa0, $fs4
	vreplvei.d	$vr1, $vr1, 0
	vld	$vr3, $sp, 128                  # 16-byte Folded Reload
	vfmul.d	$vr1, $vr1, $vr3
	vreplvei.d	$vr0, $vr0, 0
	vld	$vr3, $sp, 112                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr0, $vr3
	vfadd.d	$vr0, $vr1, $vr0
	fld.d	$fa3, $s7, %pc_lo12(.LCPI1_7)
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa1, $fa1, $fa2
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vfadd.d	$vr0, $vr0, $vr2
	fadd.d	$fa1, $fa1, $fa3
	vreplgr2vr.d	$vr2, $s8
	fld.d	$fa3, $s3, %pc_lo12(.LCPI1_8)
	vld	$vr4, $s4, %pc_lo12(.LCPI1_9)
	fld.d	$fa5, $s2, %pc_lo12(.LCPI1_10)
	vfmul.d	$vr2, $vr0, $vr2
	fmul.d	$fa3, $fa1, $fa3
	vfadd.d	$vr2, $vr2, $vr4
	fadd.d	$fa3, $fa3, $fa5
	vreplvei.d	$vr4, $vr0, 1
	fmul.d	$fa5, $fa4, $fa4
	vreplvei.d	$vr0, $vr0, 0
	fmadd.d	$fa5, $fa0, $fa0, $fa5
	fmadd.d	$fa5, $fa1, $fa1, $fa5
	frsqrt.d	$fa5, $fa5
	fmul.d	$fa0, $fa0, $fa5
	fmul.d	$fa4, $fa4, $fa5
	fmul.d	$fa1, $fa1, $fa5
	vst	$vr2, $sp, 224
	fst.d	$fa3, $sp, 240
	fst.d	$fa0, $sp, 248
	fst.d	$fa4, $sp, 256
	fst.d	$fa1, $sp, 264
	addi.d	$a0, $sp, 272
	addi.d	$a1, $sp, 224
	addi.d	$a3, $sp, 306
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z8radianceRK3RayiPt)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 272
	fld.d	$fa1, $sp, 288
	vld	$vr2, $sp, 144                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr2, $vr0
	vld	$vr2, $sp, 160                  # 16-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	vld	$vr5, $sp, 208                  # 16-byte Folded Reload
	vfadd.d	$vr5, $vr5, $vr0
	addi.w	$s1, $s1, -1
	fadd.d	$fs7, $fs7, $fa1
	beqz	$s1, .LBB1_9
.LBB1_15:                               # %.lr.ph
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        #         Parent Loop BB1_10 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vst	$vr5, $sp, 208                  # 16-byte Folded Spill
	addi.d	$a0, $sp, 306
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	vldi	$vr2, -912
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_18
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=5
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB1_24
.LBB1_17:                               # %.split
                                        #   in Loop: Header=BB1_15 Depth=5
	vldi	$vr0, -784
	fadd.d	$fs0, $fa1, $fa0
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_18:                               #   in Loop: Header=BB1_15 Depth=5
	vldi	$vr1, -1024
	fsub.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_25
.LBB1_19:                               # %.split154
                                        #   in Loop: Header=BB1_15 Depth=5
	fsub.d	$fs0, $fa2, $fa0
.LBB1_20:                               #   in Loop: Header=BB1_15 Depth=5
	addi.d	$a0, $sp, 306
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	vldi	$vr1, -912
	fcmp.cule.d	$fcc0, $fa1, $fa0
	vldi	$vr2, -912
	bcnez	$fcc0, .LBB1_12
# %bb.21:                               #   in Loop: Header=BB1_15 Depth=5
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB1_26
.LBB1_22:                               # %.split156
                                        #   in Loop: Header=BB1_15 Depth=5
	vldi	$vr0, -784
	fadd.d	$fa0, $fa1, $fa0
	b	.LBB1_14
.LBB1_23:                               # %call.sqrt159
                                        #   in Loop: Header=BB1_15 Depth=5
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr2, -912
	b	.LBB1_13
.LBB1_24:                               # %call.sqrt
                                        #   in Loop: Header=BB1_15 Depth=5
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB1_17
.LBB1_25:                               # %call.sqrt155
                                        #   in Loop: Header=BB1_15 Depth=5
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr2, -912
	b	.LBB1_19
.LBB1_26:                               # %call.sqrt157
                                        #   in Loop: Header=BB1_15 Depth=5
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB1_22
.LBB1_27:
	move	$a0, $zero
	fld.d	$fs7, $sp, 312                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 320                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 328                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 336                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 352                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 360                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 368                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	spheres,@object                 # @spheres
	.data
	.globl	spheres
	.p2align	3, 0x0
spheres:
	.dword	0x40f86a0000000000              # double 1.0E+5
	.dword	0x40f86a1000000000              # double 100001
	.dword	0x4044666666666666              # double 40.799999999999997
	.dword	0x4054666666666666              # double 81.599999999999994
	.space	24
	.dword	0x3fe8000000000000              # double 0.75
	.dword	0x3fd0000000000000              # double 0.25
	.dword	0x3fd0000000000000              # double 0.25
	.word	0                               # 0x0
	.space	4
	.dword	0x40f86a0000000000              # double 1.0E+5
	.dword	0xc0f863d000000000              # double -99901
	.dword	0x4044666666666666              # double 40.799999999999997
	.dword	0x4054666666666666              # double 81.599999999999994
	.space	24
	.dword	0x3fd0000000000000              # double 0.25
	.dword	0x3fd0000000000000              # double 0.25
	.dword	0x3fe8000000000000              # double 0.75
	.word	0                               # 0x0
	.space	4
	.dword	0x40f86a0000000000              # double 1.0E+5
	.dword	0x4049000000000000              # double 50
	.dword	0x4044666666666666              # double 40.799999999999997
	.dword	0x40f86a0000000000              # double 1.0E+5
	.space	24
	.dword	0x3fe8000000000000              # double 0.75
	.dword	0x3fe8000000000000              # double 0.75
	.dword	0x3fe8000000000000              # double 0.75
	.word	0                               # 0x0
	.space	4
	.dword	0x40f86a0000000000              # double 1.0E+5
	.dword	0x4049000000000000              # double 50
	.dword	0x4044666666666666              # double 40.799999999999997
	.dword	0xc0f85f6000000000              # double -99830
	.space	24
	.space	24
	.word	0                               # 0x0
	.space	4
	.dword	0x40f86a0000000000              # double 1.0E+5
	.dword	0x4049000000000000              # double 50
	.dword	0x40f86a0000000000              # double 1.0E+5
	.dword	0x4054666666666666              # double 81.599999999999994
	.space	24
	.dword	0x3fe8000000000000              # double 0.75
	.dword	0x3fe8000000000000              # double 0.75
	.dword	0x3fe8000000000000              # double 0.75
	.word	0                               # 0x0
	.space	4
	.dword	0x40f86a0000000000              # double 1.0E+5
	.dword	0x4049000000000000              # double 50
	.dword	0xc0f864e666666666              # double -99918.399999999994
	.dword	0x4054666666666666              # double 81.599999999999994
	.space	24
	.dword	0x3fe8000000000000              # double 0.75
	.dword	0x3fe8000000000000              # double 0.75
	.dword	0x3fe8000000000000              # double 0.75
	.word	0                               # 0x0
	.space	4
	.dword	0x4030800000000000              # double 16.5
	.dword	0x403b000000000000              # double 27
	.dword	0x4030800000000000              # double 16.5
	.dword	0x4047800000000000              # double 47
	.space	24
	.dword	0x3feff7ced916872b              # double 0.99899999999999999
	.dword	0x3feff7ced916872b              # double 0.99899999999999999
	.dword	0x3feff7ced916872b              # double 0.99899999999999999
	.word	1                               # 0x1
	.space	4
	.dword	0x4030800000000000              # double 16.5
	.dword	0x4052400000000000              # double 73
	.dword	0x4030800000000000              # double 16.5
	.dword	0x4053800000000000              # double 78
	.space	24
	.dword	0x3feff7ced916872b              # double 0.99899999999999999
	.dword	0x3feff7ced916872b              # double 0.99899999999999999
	.dword	0x3feff7ced916872b              # double 0.99899999999999999
	.word	2                               # 0x2
	.space	4
	.dword	0x4082c00000000000              # double 600
	.dword	0x4049000000000000              # double 50
	.dword	0x40854aa3d70a3d71              # double 681.33000000000004
	.dword	0x4054666666666666              # double 81.599999999999994
	.dword	0x4028000000000000              # double 12
	.dword	0x4028000000000000              # double 12
	.dword	0x4028000000000000              # double 12
	.space	24
	.word	0                               # 0x0
	.space	4
	.size	spheres, 792

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Rendering (%d spp)\n"
	.size	.L.str, 20

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
