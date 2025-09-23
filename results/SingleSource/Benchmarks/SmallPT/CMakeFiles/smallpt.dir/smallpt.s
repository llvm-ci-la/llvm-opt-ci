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
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(spheres)
	addi.d	$s0, $a0, %pc_lo12(spheres)
	fld.d	$fa0, $s0, 712
	fld.d	$fa1, $s0, 720
	fld.d	$fa2, $s0, 728
	fsub.d	$fa0, $fa0, $fs4
	fsub.d	$fa1, $fa1, $fs5
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa3, $fa1, $fs2
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 704
	fmadd.d	$fs7, $fa2, $fs1, $fa3
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmsub.d	$fa0, $fs7, $fs7, $fa0
	fmadd.d	$fa0, $fa1, $fa1, $fa0
	pcalau12i	$s1, %pc_hi20(.LCPI0_0)
	movgr2fr.d	$fs3, $zero
	fcmp.clt.d	$fcc0, $fa0, $fs3
	pcalau12i	$s2, %pc_hi20(.LCPI0_1)
	bceqz	$fcc0, .LBB0_2
# %bb.1:
	fld.d	$fs7, $s1, %pc_lo12(.LCPI0_0)
	move	$s3, $zero
	b	.LBB0_4
.LBB0_2:                                # %_ZNK6Sphere9intersectERK3Ray.exit.i
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB0_54
.LBB0_3:                                # %_ZNK6Sphere9intersectERK3Ray.exit.i.split
	fld.d	$fa0, $s2, %pc_lo12(.LCPI0_1)
	fsub.d	$fa2, $fs7, $fa1
	fadd.d	$fa1, $fs7, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fcmp.clt.d	$fcc1, $fa0, $fa2
	fld.d	$fa0, $s1, %pc_lo12(.LCPI0_0)
	fsel	$fa1, $fs3, $fa1, $fcc0
	fsel	$fa1, $fa1, $fa2, $fcc1
	fcmp.cune.d	$fcc0, $fa1, $fs3
	fcmp.clt.d	$fcc1, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	movcf2gr	$a4, $fcc1
	and	$a0, $a0, $a4
	slli.d	$s3, $a0, 3
	movgr2cf	$fcc0, $a0
	fsel	$fs7, $fa0, $fa1, $fcc0
.LBB0_4:                                # %_ZNK6Sphere9intersectERK3Ray.exit.thread.i
	fld.d	$fa0, $s0, 624
	fld.d	$fa1, $s0, 632
	fld.d	$fa2, $s0, 640
	fsub.d	$fa0, $fa0, $fs4
	fsub.d	$fa1, $fa1, $fs5
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa3, $fa1, $fs2
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 616
	fmadd.d	$fs0, $fa2, $fs1, $fa3
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmsub.d	$fa0, $fs0, $fs0, $fa0
	fmadd.d	$fa1, $fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB0_7
# %bb.5:                                # %_ZNK6Sphere9intersectERK3Ray.exit.i.1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_55
.LBB0_6:                                # %_ZNK6Sphere9intersectERK3Ray.exit.i.1.split
	fld.d	$fa1, $s2, %pc_lo12(.LCPI0_1)
	fsub.d	$fa2, $fs0, $fa0
	fadd.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fs3, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.cune.d	$fcc0, $fa0, $fs3
	fcmp.clt.d	$fcc1, $fa0, $fs7
	movcf2gr	$a0, $fcc0
	movcf2gr	$a4, $fcc1
	and	$a0, $a0, $a4
	masknez	$a4, $s3, $a0
	ori	$a5, $zero, 7
	maskeqz	$a5, $a5, $a0
	or	$s3, $a5, $a4
	movgr2cf	$fcc0, $a0
	fsel	$fs7, $fs7, $fa0, $fcc0
.LBB0_7:                                # %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.1
	fld.d	$fa0, $s0, 536
	fld.d	$fa1, $s0, 544
	fld.d	$fa2, $s0, 552
	fsub.d	$fa0, $fa0, $fs4
	fsub.d	$fa1, $fa1, $fs5
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa3, $fa1, $fs2
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 528
	fmadd.d	$fs0, $fa2, $fs1, $fa3
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmsub.d	$fa0, $fs0, $fs0, $fa0
	fmadd.d	$fa1, $fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB0_10
# %bb.8:                                # %_ZNK6Sphere9intersectERK3Ray.exit.i.2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_56
.LBB0_9:                                # %_ZNK6Sphere9intersectERK3Ray.exit.i.2.split
	fld.d	$fa1, $s2, %pc_lo12(.LCPI0_1)
	fsub.d	$fa2, $fs0, $fa0
	fadd.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fs3, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.cune.d	$fcc0, $fa0, $fs3
	fcmp.clt.d	$fcc1, $fa0, $fs7
	movcf2gr	$a0, $fcc0
	movcf2gr	$a4, $fcc1
	and	$a0, $a0, $a4
	masknez	$a4, $s3, $a0
	ori	$a5, $zero, 6
	maskeqz	$a5, $a5, $a0
	or	$s3, $a5, $a4
	movgr2cf	$fcc0, $a0
	fsel	$fs7, $fs7, $fa0, $fcc0
.LBB0_10:                               # %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.2
	fld.d	$fa0, $s0, 448
	fld.d	$fa1, $s0, 456
	fld.d	$fa2, $s0, 464
	fsub.d	$fa0, $fa0, $fs4
	fsub.d	$fa1, $fa1, $fs5
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa3, $fa1, $fs2
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 440
	fmadd.d	$fs0, $fa2, $fs1, $fa3
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmsub.d	$fa0, $fs0, $fs0, $fa0
	fmadd.d	$fa1, $fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB0_13
# %bb.11:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_57
.LBB0_12:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.3.split
	fld.d	$fa1, $s2, %pc_lo12(.LCPI0_1)
	fsub.d	$fa2, $fs0, $fa0
	fadd.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fs3, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.cune.d	$fcc0, $fa0, $fs3
	fcmp.clt.d	$fcc1, $fa0, $fs7
	movcf2gr	$a0, $fcc0
	movcf2gr	$a4, $fcc1
	and	$a0, $a0, $a4
	masknez	$a4, $s3, $a0
	ori	$a5, $zero, 5
	maskeqz	$a5, $a5, $a0
	or	$s3, $a5, $a4
	movgr2cf	$fcc0, $a0
	fsel	$fs7, $fs7, $fa0, $fcc0
.LBB0_13:                               # %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.3
	fld.d	$fa0, $s0, 360
	fld.d	$fa1, $s0, 368
	fld.d	$fa2, $s0, 376
	fsub.d	$fa0, $fa0, $fs4
	fsub.d	$fa1, $fa1, $fs5
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa3, $fa1, $fs2
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 352
	fmadd.d	$fs0, $fa2, $fs1, $fa3
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmsub.d	$fa0, $fs0, $fs0, $fa0
	fmadd.d	$fa1, $fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB0_16
# %bb.14:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.4
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_58
.LBB0_15:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.4.split
	fld.d	$fa1, $s2, %pc_lo12(.LCPI0_1)
	fsub.d	$fa2, $fs0, $fa0
	fadd.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fs3, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.cune.d	$fcc0, $fa0, $fs3
	fcmp.clt.d	$fcc1, $fa0, $fs7
	movcf2gr	$a0, $fcc0
	movcf2gr	$a4, $fcc1
	and	$a0, $a0, $a4
	masknez	$a4, $s3, $a0
	ori	$a5, $zero, 4
	maskeqz	$a5, $a5, $a0
	or	$s3, $a5, $a4
	movgr2cf	$fcc0, $a0
	fsel	$fs7, $fs7, $fa0, $fcc0
.LBB0_16:                               # %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.4
	fld.d	$fa0, $s0, 272
	fld.d	$fa1, $s0, 280
	fld.d	$fa2, $s0, 288
	fsub.d	$fa0, $fa0, $fs4
	fsub.d	$fa1, $fa1, $fs5
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa3, $fa1, $fs2
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 264
	fmadd.d	$fs0, $fa2, $fs1, $fa3
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmsub.d	$fa0, $fs0, $fs0, $fa0
	fmadd.d	$fa1, $fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB0_19
# %bb.17:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.5
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_59
.LBB0_18:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.5.split
	fld.d	$fa1, $s2, %pc_lo12(.LCPI0_1)
	fsub.d	$fa2, $fs0, $fa0
	fadd.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fs3, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.cune.d	$fcc0, $fa0, $fs3
	fcmp.clt.d	$fcc1, $fa0, $fs7
	movcf2gr	$a0, $fcc0
	movcf2gr	$a4, $fcc1
	and	$a0, $a0, $a4
	masknez	$a4, $s3, $a0
	ori	$a5, $zero, 3
	maskeqz	$a5, $a5, $a0
	or	$s3, $a5, $a4
	movgr2cf	$fcc0, $a0
	fsel	$fs7, $fs7, $fa0, $fcc0
.LBB0_19:                               # %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.5
	fld.d	$fa0, $s0, 184
	fld.d	$fa1, $s0, 192
	fld.d	$fa2, $s0, 200
	fsub.d	$fa0, $fa0, $fs4
	fsub.d	$fa1, $fa1, $fs5
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa3, $fa1, $fs2
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 176
	fmadd.d	$fs0, $fa2, $fs1, $fa3
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmsub.d	$fa0, $fs0, $fs0, $fa0
	fmadd.d	$fa1, $fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB0_22
# %bb.20:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.6
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_60
.LBB0_21:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.6.split
	fld.d	$fa1, $s2, %pc_lo12(.LCPI0_1)
	fsub.d	$fa2, $fs0, $fa0
	fadd.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fs3, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.cune.d	$fcc0, $fa0, $fs3
	fcmp.clt.d	$fcc1, $fa0, $fs7
	movcf2gr	$a0, $fcc0
	movcf2gr	$a4, $fcc1
	and	$a0, $a0, $a4
	masknez	$a4, $s3, $a0
	ori	$a5, $zero, 2
	maskeqz	$a5, $a5, $a0
	or	$s3, $a5, $a4
	movgr2cf	$fcc0, $a0
	fsel	$fs7, $fs7, $fa0, $fcc0
.LBB0_22:                               # %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.6
	fld.d	$fa0, $s0, 96
	fld.d	$fa1, $s0, 104
	fld.d	$fa2, $s0, 112
	fsub.d	$fa0, $fa0, $fs4
	fsub.d	$fa1, $fa1, $fs5
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa3, $fa1, $fs2
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 88
	fmadd.d	$fs0, $fa2, $fs1, $fa3
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmsub.d	$fa0, $fs0, $fs0, $fa0
	fmadd.d	$fa1, $fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB0_25
# %bb.23:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.7
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_61
.LBB0_24:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.7.split
	fld.d	$fa1, $s2, %pc_lo12(.LCPI0_1)
	fsub.d	$fa2, $fs0, $fa0
	fadd.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fs3, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.cune.d	$fcc0, $fa0, $fs3
	fcmp.clt.d	$fcc1, $fa0, $fs7
	movcf2gr	$a0, $fcc0
	movcf2gr	$a4, $fcc1
	and	$a0, $a0, $a4
	masknez	$a4, $s3, $a0
	ori	$a5, $zero, 1
	maskeqz	$a5, $a5, $a0
	or	$s3, $a5, $a4
	movgr2cf	$fcc0, $a0
	fsel	$fs7, $fs7, $fa0, $fcc0
.LBB0_25:                               # %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.7
	fld.d	$fa0, $s0, 8
	fld.d	$fa1, $s0, 16
	fld.d	$fa2, $s0, 24
	fsub.d	$fa0, $fa0, $fs4
	fsub.d	$fa1, $fa1, $fs5
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa3, $fa1, $fs2
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 0
	fmadd.d	$fs0, $fa2, $fs1, $fa3
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	fmsub.d	$fa0, $fs0, $fs0, $fa0
	fmadd.d	$fa1, $fa1, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB0_28
# %bb.26:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.8
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_62
.LBB0_27:                               # %_ZNK6Sphere9intersectERK3Ray.exit.i.8.split
	fld.d	$fa1, $s2, %pc_lo12(.LCPI0_1)
	fsub.d	$fa2, $fs0, $fa0
	fadd.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fs3, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.cune.d	$fcc0, $fa0, $fs3
	fcmp.clt.d	$fcc1, $fa0, $fs7
	movcf2gr	$a0, $fcc0
	movcf2gr	$a4, $fcc1
	and	$a0, $a0, $a4
	masknez	$s3, $s3, $a0
	movgr2cf	$fcc0, $a0
	fsel	$fs7, $fs7, $fa0, $fcc0
.LBB0_28:                               # %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.8
	fld.d	$fa0, $s1, %pc_lo12(.LCPI0_0)
	fcmp.clt.d	$fcc0, $fs7, $fa0
	bceqz	$fcc0, .LBB0_33
# %bb.29:
	ori	$a0, $zero, 88
	mul.d	$a0, $s3, $a0
	add.d	$s3, $s0, $a0
	fld.d	$fa3, $s3, 8
	fld.d	$fa5, $s3, 16
	fld.d	$fa6, $s3, 24
	vld	$vr1, $s3, 56
	fld.d	$fs0, $s3, 72
	ori	$a0, $zero, 5
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	blt	$a2, $a0, .LBB0_35
# %bb.30:
	fst.d	$fa6, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fa5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa3, $sp, 72                   # 8-byte Folded Spill
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
	bceqz	$fcc0, .LBB0_32
# %bb.31:
	ori	$a0, $zero, 128
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	bltu	$s1, $a0, .LBB0_34
.LBB0_32:
	ld.d	$a0, $s3, 48
	vld	$vr0, $s3, 32
	st.d	$a0, $fp, 16
	vst	$vr0, $fp, 0
	b	.LBB0_45
.LBB0_33:
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	b	.LBB0_45
.LBB0_34:
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
	fld.d	$fa3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fa5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fa6, $sp, 48                   # 8-byte Folded Reload
.LBB0_35:                               # %.thread
	fmul.d	$fa0, $fa4, $fs7
	fmul.d	$fa1, $fs7, $fs2
	fmul.d	$fa2, $fs7, $fs1
	fadd.d	$ft1, $fs4, $fa0
	fadd.d	$ft0, $fs5, $fa1
	fadd.d	$fa7, $fs6, $fa2
	fsub.d	$fa0, $ft1, $fa3
	fsub.d	$fa1, $ft0, $fa5
	fsub.d	$fa2, $fa7, $fa6
	fmul.d	$fa3, $fa1, $fa1
	fmadd.d	$fa3, $fa0, $fa0, $fa3
	fmadd.d	$fa3, $fa2, $fa2, $fa3
	frsqrt.d	$fa3, $fa3
	fmul.d	$fs6, $fa0, $fa3
	ld.w	$a0, $s3, 80
	fmul.d	$fs7, $fa1, $fa3
	fmul.d	$fs5, $fa2, $fa3
	ori	$a4, $zero, 1
	addi.w	$s0, $a2, 1
	beq	$a0, $a4, .LBB0_40
# %bb.36:                               # %.thread
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fmul.d	$fa0, $fs2, $fs7
	fmadd.d	$fa0, $fs6, $fa4, $fa0
	fmadd.d	$fa0, $fs5, $fs1, $fa0
	fneg.d	$fa1, $fs6
	fneg.d	$fa2, $fs7
	fneg.d	$fa3, $fs5
	fcmp.clt.d	$fcc0, $fa0, $fs3
	fsel	$fs0, $fa1, $fs6, $fcc0
	fsel	$fs1, $fa2, $fs7, $fcc0
	fsel	$fs4, $fa3, $fs5, $fcc0
	bnez	$a0, .LBB0_41
# %bb.37:
	fst.d	$ft1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fa7, $sp, 80                   # 8-byte Folded Spill
	move	$a0, $a3
	move	$s2, $a3
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_2)
	fmul.d	$fs7, $fa0, $fa1
	move	$s1, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fsqrt.d	$fs2, $fa0
	fcmp.cor.d	$fcc0, $fs2, $fs2
	bceqz	$fcc0, .LBB0_63
.LBB0_38:                               # %.split
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_3)
	fabs.d	$fa1, $fs6
	fcmp.clt.d	$fcc0, $fa0, $fa1
	vldi	$vr1, -912
	fsel	$fa0, $fa1, $fs3, $fcc0
	fsel	$fa1, $fs3, $fa1, $fcc0
	fneg.d	$fa2, $fs3
	fmul.d	$fa2, $fs1, $fa2
	fmadd.d	$fa2, $fa1, $fs4, $fa2
	fneg.d	$fa3, $fs4
	fmul.d	$fa3, $fa0, $fa3
	fmadd.d	$fa3, $fs0, $fs3, $fa3
	fneg.d	$fa4, $fs0
	fmul.d	$fa1, $fa1, $fa4
	fmadd.d	$fa0, $fa0, $fs1, $fa1
	fmul.d	$fa1, $fa3, $fa3
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	fmadd.d	$fa1, $fa0, $fa0, $fa1
	frsqrt.d	$fa1, $fa1
	fmul.d	$fs3, $fa2, $fa1
	fmul.d	$fs6, $fa3, $fa1
	fmul.d	$fs5, $fa0, $fa1
	fneg.d	$fa0, $fs6
	fmul.d	$fa0, $fs4, $fa0
	fmadd.d	$fa0, $fs1, $fs5, $fa0
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fneg.d	$fa0, $fs5
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs4, $fs3, $fa0
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fneg.d	$fa0, $fs3
	fmul.d	$fa0, $fs1, $fa0
	fmadd.d	$fa0, $fs0, $fs6, $fa0
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs3, $fa0
	fmul.d	$fa2, $fs6, $fa0
	fmul.d	$fa0, $fs5, $fa0
	fmul.d	$fs3, $fs2, $fa1
	fmul.d	$fs5, $fs2, $fa2
	fmul.d	$fs6, $fs2, $fa0
	fmov.d	$fa0, $fs7
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
	fadd.d	$fs5, $fs6, $fa3
	bceqz	$fcc0, .LBB0_64
.LBB0_39:                               # %.split.split
	fmul.d	$fa1, $fs0, $fa0
	fmul.d	$fa2, $fs1, $fa0
	fmul.d	$fa0, $fs4, $fa0
	fadd.d	$fa1, $fa1, $fs2
	fadd.d	$fa2, $fa2, $fs3
	fadd.d	$fa0, $fa0, $fs5
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
	b	.LBB0_43
.LBB0_40:
	fadd.d	$fa0, $fs6, $fs6
	fld.d	$fa1, $a1, 32
	fld.d	$fa2, $a1, 24
	fadd.d	$fa3, $fs7, $fs7
	fld.d	$fa4, $a1, 40
	fmul.d	$fa5, $fs7, $fa1
	fmadd.d	$fa5, $fs6, $fa2, $fa5
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
	b	.LBB0_44
.LBB0_41:
	fadd.d	$fa0, $fs6, $fs6
	fadd.d	$fa4, $fs7, $fs7
	fld.d	$fa1, $a1, 32
	fld.d	$fa3, $a1, 24
	fld.d	$fa2, $a1, 40
	fadd.d	$fa5, $fs5, $fs5
	fmul.d	$fa6, $fs7, $fa1
	fmadd.d	$fa6, $fs6, $fa3, $fa6
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
	fmul.d	$fa0, $fs7, $fs1
	fmadd.d	$fa0, $fs6, $fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI0_4)
	fmadd.d	$fa0, $fs5, $fs4, $fa0
	fcmp.clt.d	$fcc1, $fs3, $fa0
	vldi	$vr0, -904
	fsel	$fs2, $fa0, $fa4, $fcc1
	fmul.d	$fa0, $fs1, $fa1
	fmadd.d	$fa0, $fa3, $fs0, $fa0
	fmadd.d	$fs0, $fa2, $fs4, $fa0
	fnmadd.d	$fs4, $fa2, $fs4, $fa0
	vldi	$vr0, -912
	fmadd.d	$fa4, $fs4, $fs0, $fa0
	fneg.d	$fa6, $fs2
	fmul.d	$fa6, $fs2, $fa6
	fmadd.d	$fa0, $fa6, $fa4, $fa0
	fcmp.cule.d	$fcc0, $fs3, $fa0
	fst.d	$fa5, $sp, 272
	bcnez	$fcc0, .LBB0_46
# %bb.42:
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 232
	move	$a2, $s0
.LBB0_43:
	pcaddu18i	$ra, %call36(_Z8radianceRK3RayiPt)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 176
	fld.d	$fa1, $s3, 48
	vld	$vr2, $sp, 160
	vld	$vr3, $s3, 32
	fld.d	$fa4, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa4, $fa0
.LBB0_44:
	fadd.d	$fa0, $fa0, $fa1
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vfmul.d	$vr1, $vr1, $vr2
	vfadd.d	$vr1, $vr1, $vr3
	vst	$vr1, $fp, 0
	fst.d	$fa0, $fp, 16
.LBB0_45:
	fld.d	$fs7, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 304                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 312                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 320                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 328                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 336                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB0_46:
	fmul.d	$fa3, $fs2, $fa3
	fmul.d	$fs3, $fs2, $fa1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	fmul.d	$fs1, $fs2, $fa2
	fst.d	$fa7, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft1, $sp, 64                   # 8-byte Folded Spill
	bceqz	$fcc0, .LBB0_65
.LBB0_47:                               # %.split334
	fmadd.d	$fa0, $fs0, $fs2, $fa1
	fnmadd.d	$fa1, $fs0, $fs2, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc1
	fmul.d	$fa1, $fs6, $fa0
	fmul.d	$fa2, $fs7, $fa0
	fmul.d	$fa0, $fs5, $fa0
	fsub.d	$fa1, $fa3, $fa1
	fsub.d	$fa2, $fs3, $fa2
	fsub.d	$fa0, $fs1, $fa0
	fmul.d	$fa3, $fa2, $fa2
	fmadd.d	$fa3, $fa1, $fa1, $fa3
	fmadd.d	$fa3, $fa0, $fa0, $fa3
	frsqrt.d	$fa3, $fa3
	fmul.d	$fs2, $fa1, $fa3
	fmul.d	$fs1, $fa2, $fa3
	fmul.d	$fs0, $fa0, $fa3
	fmul.d	$fa0, $fs7, $fs1
	fmadd.d	$fa0, $fs2, $fs6, $fa0
	fmadd.d	$fa0, $fs0, $fs5, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_5)
	fsel	$fa0, $fa0, $fs4, $fcc1
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
	blt	$a2, $a0, .LBB0_50
# %bb.48:
	vldi	$vr0, -944
	vldi	$vr1, -928
	fmadd.d	$fs3, $fa2, $fa1, $fa0
	move	$s1, $a3
	move	$a0, $a3
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fcmp.cule.d	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB0_51
# %bb.49:
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
	b	.LBB0_52
.LBB0_50:
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
	b	.LBB0_53
.LBB0_51:
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
.LBB0_52:
	vreplvei.d	$vr2, $vr3, 0
	vfmul.d	$vr0, $vr2, $vr0
	fmul.d	$fa1, $fa3, $fa1
.LBB0_53:
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
	b	.LBB0_45
.LBB0_54:                               # %call.sqrt
	move	$s3, $a3
	move	$s5, $a2
	move	$s4, $a1
	fmov.d	$fs0, $fa4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa4, $fs0
	move	$a1, $s4
	move	$a2, $s5
	move	$a3, $s3
	fmov.d	$fa1, $fa0
	b	.LBB0_3
.LBB0_55:                               # %call.sqrt324
	fmov.d	$fa0, $fa1
	move	$s4, $a3
	move	$s6, $a2
	move	$s5, $a1
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s4
	b	.LBB0_6
.LBB0_56:                               # %call.sqrt325
	fmov.d	$fa0, $fa1
	move	$s4, $a3
	move	$s6, $a2
	move	$s5, $a1
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s4
	b	.LBB0_9
.LBB0_57:                               # %call.sqrt326
	fmov.d	$fa0, $fa1
	move	$s4, $a3
	move	$s6, $a2
	move	$s5, $a1
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s4
	b	.LBB0_12
.LBB0_58:                               # %call.sqrt327
	fmov.d	$fa0, $fa1
	move	$s4, $a3
	move	$s6, $a2
	move	$s5, $a1
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s4
	b	.LBB0_15
.LBB0_59:                               # %call.sqrt328
	fmov.d	$fa0, $fa1
	move	$s4, $a3
	move	$s6, $a2
	move	$s5, $a1
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s4
	b	.LBB0_18
.LBB0_60:                               # %call.sqrt329
	fmov.d	$fa0, $fa1
	move	$s4, $a3
	move	$s6, $a2
	move	$s5, $a1
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s4
	b	.LBB0_21
.LBB0_61:                               # %call.sqrt330
	fmov.d	$fa0, $fa1
	move	$s4, $a3
	move	$s6, $a2
	move	$s5, $a1
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s4
	b	.LBB0_24
.LBB0_62:                               # %call.sqrt331
	fmov.d	$fa0, $fa1
	move	$s4, $a3
	move	$s6, $a2
	move	$s5, $a1
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s4
	b	.LBB0_27
.LBB0_63:                               # %call.sqrt332
	fld.d	$fa0, $sp, 48                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	b	.LBB0_38
.LBB0_64:                               # %call.sqrt333
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_39
.LBB0_65:                               # %call.sqrt335
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
	b	.LBB0_47
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
	addi.d	$sp, $sp, -544
	.cfi_def_cfa_offset 544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 448                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 440                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 432                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 424                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 392                  # 8-byte Folded Spill
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
	ori	$fp, $zero, 1
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
	srai.d	$fp, $a0, 2
.LBB1_2:
	lu12i.w	$s0, 4608
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	slli.d	$a2, $fp, 2
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 4602
	vrepli.b	$vr3, 0
	blez	$fp, .LBB1_41
# %bb.3:                                # %.split148.us.us.preheader
	move	$a1, $zero
	move	$a3, $zero
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	frecip.d	$fa0, $fa0
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	vreplvei.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	ori	$a0, $a2, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	movgr2fr.d	$fa0, $zero
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_1)
	fst.d	$fa0, $sp, 248                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_2)
	fst.d	$fa0, $sp, 240                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_4)
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_5)
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_6)
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI1_7)
	ori	$a0, $zero, 0
	lu32i.d	$a0, 98304
	lu52i.d	$a0, $a0, 1030
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	fld.d	$fs6, $a0, %pc_lo12(.LCPI1_8)
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_9)
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_10)
	fld.d	$fs7, $a0, %pc_lo12(.LCPI1_10)
	lu52i.d	$s7, $zero, 1023
	lu52i.d	$s8, $zero, 1021
	vst	$vr3, $sp, 64                   # 16-byte Folded Spill
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %.split150.us.us
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ori	$a0, $zero, 768
	beq	$a1, $a0, .LBB1_45
.LBB1_5:                                # %.split148.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_9 Depth 3
                                        #         Child Loop BB1_13 Depth 4
                                        #         Child Loop BB1_29 Depth 4
	move	$s5, $zero
	st.w	$zero, $sp, 386
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	mul.d	$a0, $a3, $a3
	mul.d	$a0, $a0, $a1
	st.h	$a0, $sp, 390
	slli.d	$a0, $a1, 10
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	srli.d	$a0, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a0, $a0, $a3
	movgr2fr.d	$fa0, $a0
	fld.d	$fa1, $sp, 16                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $a1
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fs0, $fa1, $fa0
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %.split141.us.us.us
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s5, $s5, 1
	move	$s1, $s6
	move	$a2, $s3
	ori	$a0, $zero, 1024
	beq	$s5, $a0, .LBB1_4
.LBB1_7:                                # %.split139.us.us.us
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
                                        #         Child Loop BB1_13 Depth 4
                                        #         Child Loop BB1_29 Depth 4
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $s5, $a0
	bstrpick.d	$a1, $s5, 15, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fs1, $fa0
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	move	$s6, $s1
	add.d	$a0, $s1, $a0
	move	$s3, $a2
	add.d	$s2, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$s0, $a0, $a1
	ori	$s4, $zero, 1
	vldi	$vr0, -928
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_8:                                # %._crit_edge.us.us.us.us.1
                                        #   in Loop: Header=BB1_9 Depth=3
	vrepli.b	$vr0, 0
	vld	$vr5, $sp, 128                  # 16-byte Folded Reload
	vfcmp.clt.d	$vr1, $vr5, $vr4
	vldi	$vr2, -912
	fcmp.clt.d	$fcc0, $fa2, $fs2
	fsel	$fa2, $fs2, $fa2, $fcc0
	vldi	$vr3, -944
	fmul.d	$fa2, $fa2, $fa3
	movgr2fr.d	$fa3, $zero
	fcmp.clt.d	$fcc0, $fs2, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc0
	fld.d	$fa3, $sp, 88                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	vbitsel.v	$vr1, $vr4, $vr5, $vr1
	vld	$vr3, $sp, 112                  # 16-byte Folded Reload
	vfmul.d	$vr1, $vr1, $vr3
	vfcmp.cule.d	$vr0, $vr0, $vr4
	vand.v	$vr0, $vr0, $vr1
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vfadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $s2, 0
	fst.d	$fa2, $s0, 0
	andi	$a0, $s4, 1
	vldi	$vr0, -904
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	move	$s4, $zero
	vld	$vr3, $sp, 64                   # 16-byte Folded Reload
	beqz	$a0, .LBB1_6
.LBB1_9:                                # %.preheader126.us.us.us
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_13 Depth 4
                                        #         Child Loop BB1_29 Depth 4
	move	$s1, $fp
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_13 Depth=4
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB1_21
.LBB1_11:                               # %.split214
                                        #   in Loop: Header=BB1_13 Depth=4
	vldi	$vr0, -784
	fadd.d	$fa0, $fa1, $fa0
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=4
	vldi	$vr2, -928
	fadd.d	$fa1, $fs2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fs1
	fld.d	$fa3, $sp, 248                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa3
	vldi	$vr3, -800
	fadd.d	$fa1, $fa1, $fa3
	vld	$vr4, $sp, 288                  # 16-byte Folded Reload
	fadd.d	$fa0, $fa4, $fa0
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fs0
	fld.d	$fa2, $sp, 240                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fa2, $fa0, $fs4
	vreplvei.d	$vr1, $vr1, 0
	vld	$vr3, $sp, 224                  # 16-byte Folded Reload
	vfmul.d	$vr1, $vr1, $vr3
	vreplvei.d	$vr0, $vr0, 0
	vld	$vr3, $sp, 208                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr0, $vr3
	vfadd.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa1, $fa1, $fa2
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vfadd.d	$vr0, $vr0, $vr2
	fadd.d	$fa1, $fa1, $fs5
	vld	$vr2, $sp, 176                  # 16-byte Folded Reload
	vfmul.d	$vr2, $vr0, $vr2
	fmul.d	$fa3, $fa1, $fs6
	vld	$vr4, $sp, 160                  # 16-byte Folded Reload
	vfadd.d	$vr2, $vr2, $vr4
	fadd.d	$fa3, $fa3, $fs7
	vreplvei.d	$vr4, $vr0, 1
	fmul.d	$fa5, $fa4, $fa4
	vreplvei.d	$vr0, $vr0, 0
	fmadd.d	$fa5, $fa0, $fa0, $fa5
	fmadd.d	$fa5, $fa1, $fa1, $fa5
	frsqrt.d	$fa5, $fa5
	fmul.d	$fa0, $fa0, $fa5
	fmul.d	$fa4, $fa4, $fa5
	fmul.d	$fa1, $fa1, $fa5
	vst	$vr2, $sp, 304
	fst.d	$fa3, $sp, 320
	fst.d	$fa0, $sp, 328
	fst.d	$fa4, $sp, 336
	fst.d	$fa1, $sp, 344
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 304
	addi.d	$a3, $sp, 386
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z8radianceRK3RayiPt)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 352
	fld.d	$fa1, $sp, 368
	vld	$vr2, $sp, 256                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr2, $vr0
	vld	$vr2, $sp, 272                  # 16-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	vld	$vr3, $sp, 144                  # 16-byte Folded Reload
	vfadd.d	$vr3, $vr3, $vr0
	addi.w	$s1, $s1, -1
	fadd.d	$fs3, $fs3, $fa1
	beqz	$s1, .LBB1_25
.LBB1_13:                               #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        #       Parent Loop BB1_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr3, $sp, 144                  # 16-byte Folded Spill
	addi.d	$a0, $sp, 386
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	vldi	$vr2, -912
	fcmp.clt.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB1_16
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=4
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB1_22
.LBB1_15:                               # %.split210
                                        #   in Loop: Header=BB1_13 Depth=4
	vldi	$vr0, -784
	fadd.d	$fs2, $fa1, $fa0
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_13 Depth=4
	vldi	$vr1, -1024
	fsub.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_23
.LBB1_17:                               # %.split
                                        #   in Loop: Header=BB1_13 Depth=4
	fsub.d	$fs2, $fa2, $fa0
.LBB1_18:                               #   in Loop: Header=BB1_13 Depth=4
	addi.d	$a0, $sp, 386
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	vldi	$vr2, -912
	bcnez	$fcc0, .LBB1_10
# %bb.19:                               #   in Loop: Header=BB1_13 Depth=4
	vldi	$vr1, -1024
	fsub.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_24
.LBB1_20:                               # %.split212
                                        #   in Loop: Header=BB1_13 Depth=4
	fsub.d	$fa0, $fa2, $fa0
	b	.LBB1_12
.LBB1_21:                               # %call.sqrt215
                                        #   in Loop: Header=BB1_13 Depth=4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB1_11
.LBB1_22:                               # %call.sqrt211
                                        #   in Loop: Header=BB1_13 Depth=4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB1_15
.LBB1_23:                               # %call.sqrt
                                        #   in Loop: Header=BB1_13 Depth=4
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr2, -912
	b	.LBB1_17
.LBB1_24:                               # %call.sqrt213
                                        #   in Loop: Header=BB1_13 Depth=4
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr2, -912
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_25:                               # %._crit_edge.us.us.us.us
                                        #   in Loop: Header=BB1_9 Depth=3
	vrepli.b	$vr4, 0
	vreplgr2vr.d	$vr2, $s7
	vfcmp.clt.d	$vr0, $vr2, $vr3
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa1, $fs3
	fsel	$fa1, $fs3, $fa1, $fcc0
	movgr2fr.d	$fs2, $zero
	fcmp.clt.d	$fcc0, $fs3, $fs2
	vst	$vr2, $sp, 128                  # 16-byte Folded Spill
	vbitsel.v	$vr0, $vr3, $vr2, $vr0
	vreplgr2vr.d	$vr2, $s8
	vst	$vr2, $sp, 112                  # 16-byte Folded Spill
	vfmul.d	$vr0, $vr0, $vr2
	vld	$vr2, $s2, 0
	vfcmp.cule.d	$vr3, $vr4, $vr3
	vand.v	$vr0, $vr3, $vr0
	fld.d	$fa3, $s0, 0
	vfadd.d	$vr2, $vr0, $vr2
	vldi	$vr0, -944
	fmul.d	$fa0, $fa1, $fa0
	fsel	$fa0, $fa0, $fs2, $fcc0
	fadd.d	$fa0, $fa0, $fa3
	vst	$vr2, $sp, 96                   # 16-byte Folded Spill
	vst	$vr2, $s2, 0
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fa0, $s0, 0
	move	$s1, $fp
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_26:                               #   in Loop: Header=BB1_29 Depth=4
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB1_37
.LBB1_27:                               # %.split222
                                        #   in Loop: Header=BB1_29 Depth=4
	vldi	$vr0, -784
	fadd.d	$fa0, $fa1, $fa0
.LBB1_28:                               #   in Loop: Header=BB1_29 Depth=4
	vldi	$vr1, -904
	fadd.d	$fa1, $fs3, $fa1
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fs1
	fld.d	$fa3, $sp, 248                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa3
	vldi	$vr3, -800
	fadd.d	$fa1, $fa1, $fa3
	vld	$vr4, $sp, 288                  # 16-byte Folded Reload
	fadd.d	$fa0, $fa4, $fa0
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fs0
	fld.d	$fa2, $sp, 240                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fa2, $fa0, $fs4
	vreplvei.d	$vr1, $vr1, 0
	vld	$vr3, $sp, 224                  # 16-byte Folded Reload
	vfmul.d	$vr1, $vr1, $vr3
	vreplvei.d	$vr0, $vr0, 0
	vld	$vr3, $sp, 208                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr0, $vr3
	vfadd.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa1, $fa1, $fa2
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vfadd.d	$vr0, $vr0, $vr2
	fadd.d	$fa1, $fa1, $fs5
	vld	$vr2, $sp, 176                  # 16-byte Folded Reload
	vfmul.d	$vr2, $vr0, $vr2
	fmul.d	$fa3, $fa1, $fs6
	vld	$vr4, $sp, 160                  # 16-byte Folded Reload
	vfadd.d	$vr2, $vr2, $vr4
	fadd.d	$fa3, $fa3, $fs7
	vreplvei.d	$vr4, $vr0, 1
	fmul.d	$fa5, $fa4, $fa4
	vreplvei.d	$vr0, $vr0, 0
	fmadd.d	$fa5, $fa0, $fa0, $fa5
	fmadd.d	$fa5, $fa1, $fa1, $fa5
	frsqrt.d	$fa5, $fa5
	fmul.d	$fa0, $fa0, $fa5
	fmul.d	$fa4, $fa4, $fa5
	fmul.d	$fa1, $fa1, $fa5
	vst	$vr2, $sp, 304
	fst.d	$fa3, $sp, 320
	fst.d	$fa0, $sp, 328
	fst.d	$fa4, $sp, 336
	fst.d	$fa1, $sp, 344
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 304
	addi.d	$a3, $sp, 386
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z8radianceRK3RayiPt)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 352
	fld.d	$fa1, $sp, 368
	vld	$vr2, $sp, 256                  # 16-byte Folded Reload
	vfmul.d	$vr0, $vr2, $vr0
	vld	$vr2, $sp, 272                  # 16-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	vld	$vr4, $sp, 144                  # 16-byte Folded Reload
	vfadd.d	$vr4, $vr4, $vr0
	addi.w	$s1, $s1, -1
	fadd.d	$fs2, $fs2, $fa1
	beqz	$s1, .LBB1_8
.LBB1_29:                               #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        #       Parent Loop BB1_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr4, $sp, 144                  # 16-byte Folded Spill
	addi.d	$a0, $sp, 386
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	vldi	$vr2, -912
	fcmp.clt.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB1_32
# %bb.30:                               #   in Loop: Header=BB1_29 Depth=4
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB1_38
.LBB1_31:                               # %.split218
                                        #   in Loop: Header=BB1_29 Depth=4
	vldi	$vr0, -784
	fadd.d	$fs3, $fa1, $fa0
	b	.LBB1_34
	.p2align	4, , 16
.LBB1_32:                               #   in Loop: Header=BB1_29 Depth=4
	vldi	$vr1, -1024
	fsub.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_39
.LBB1_33:                               # %.split216
                                        #   in Loop: Header=BB1_29 Depth=4
	fsub.d	$fs3, $fa2, $fa0
.LBB1_34:                               #   in Loop: Header=BB1_29 Depth=4
	addi.d	$a0, $sp, 386
	pcaddu18i	$ra, %call36(erand48)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	vldi	$vr2, -912
	bcnez	$fcc0, .LBB1_26
# %bb.35:                               #   in Loop: Header=BB1_29 Depth=4
	vldi	$vr1, -1024
	fsub.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_40
.LBB1_36:                               # %.split220
                                        #   in Loop: Header=BB1_29 Depth=4
	fsub.d	$fa0, $fa2, $fa0
	b	.LBB1_28
.LBB1_37:                               # %call.sqrt223
                                        #   in Loop: Header=BB1_29 Depth=4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB1_27
.LBB1_38:                               # %call.sqrt219
                                        #   in Loop: Header=BB1_29 Depth=4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB1_31
.LBB1_39:                               # %call.sqrt217
                                        #   in Loop: Header=BB1_29 Depth=4
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr2, -912
	b	.LBB1_33
.LBB1_40:                               # %call.sqrt221
                                        #   in Loop: Header=BB1_29 Depth=4
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr2, -912
	b	.LBB1_36
.LBB1_41:                               # %.split148.preheader
	move	$a0, $zero
	ori	$a1, $a2, 16
	add.d	$a1, $s1, $a1
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a2, -6
	ori	$a3, $zero, 768
	.p2align	4, , 16
.LBB1_42:                               # %.split148
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_43 Depth 2
	ori	$a4, $zero, 1024
	move	$a5, $a1
	.p2align	4, , 16
.LBB1_43:                               # %.split139
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a5, 0
	vld	$vr2, $a5, -16
	fadd.d	$fa1, $fa1, $fa0
	vfadd.d	$vr2, $vr2, $vr3
	vst	$vr2, $a5, -16
	fst.d	$fa1, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 24
	bnez	$a4, .LBB1_43
# %bb.44:                               # %.split150
                                        #   in Loop: Header=BB1_42 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a1, $a1, $a2
	bne	$a0, $a3, .LBB1_42
.LBB1_45:                               # %.split154.us
	move	$a0, $zero
	fld.d	$fs7, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 416                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 424                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 432                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 440                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 448                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
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
