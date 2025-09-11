	.file	"btSoftBodyHelpers.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi
.LCPI0_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
.LCPI0_1:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI0_4:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI0_5:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
.LCPI0_6:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI0_7:
	.word	0x00000000                      # float 0
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI0_11:
	.word	0x3f333333                      # float 0.699999988
	.word	0x3f333333                      # float 0.699999988
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
.LCPI0_12:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_2:
	.word	0xbdcccccd                      # float -0.100000001
.LCPI0_3:
	.word	0x3dcccccd                      # float 0.100000001
.LCPI0_8:
	.word	0x3eaaaaab                      # float 0.333333343
.LCPI0_9:
	.word	0x3f4ccccd                      # float 0.800000011
.LCPI0_10:
	.word	0x30000000                      # float 4.65661287E-10
	.text
	.globl	_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi
	.p2align	5
	.type	_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi,@function
_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi: # @_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -560
	.cfi_def_cfa_offset 560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 464                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 456                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 448                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 440                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 432                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 424                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 408                  # 8-byte Folded Spill
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_0)
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_1)
	vrepli.b	$vr2, 0
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	vst	$vr2, $sp, 392
	vst	$vr1, $sp, 368
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vst	$vr0, $sp, 352
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	andi	$a0, $a2, 1
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(.LCPI0_5)
	beqz	$a0, .LBB0_6
# %bb.1:                                # %.preheader2058
	ld.w	$a0, $s0, 820
	blez	$a0, .LBB0_6
# %bb.2:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI0_2)
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	fld.s	$fs1, $a1, %pc_lo12(.LCPI0_3)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	vld	$vr0, $a1, %pc_lo12(.LCPI0_4)
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	vld	$vr0, $s5, %pc_lo12(.LCPI0_5)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	move	$s2, $zero
	move	$s3, $zero
	movgr2fr.w	$fs2, $zero
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 120
	bge	$s3, $a0, .LBB0_6
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 832
	add.d	$s4, $a1, $s2
	ld.d	$a1, $s4, 8
	ld.bu	$a1, $a1, 20
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	fld.s	$fa0, $s4, 16
	ld.w	$a0, $s4, 20
	fadd.s	$fa0, $fa0, $fs0
	ld.wu	$a1, $s4, 24
	movfr2gr.s	$a2, $fa0
	bstrins.d	$a2, $a0, 63, 32
	st.d	$a2, $sp, 224
	st.d	$a1, $sp, 232
	fld.s	$fa0, $s4, 16
	fld.s	$fa1, $s4, 20
	fld.s	$fa2, $s4, 24
	fadd.s	$fa0, $fa0, $fs1
	fadd.s	$fa1, $fa1, $fs2
	fadd.s	$fa2, $fa2, $fs2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a4, $a2, 40
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 304
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 304
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s4, 20
	ld.wu	$a0, $s4, 16
	fadd.s	$fa0, $fa0, $fs0
	ld.wu	$a1, $s4, 24
	movfr2gr.s	$a2, $fa0
	slli.d	$a2, $a2, 32
	or	$a0, $a2, $a0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	fld.s	$fa0, $s4, 16
	fld.s	$fa1, $s4, 20
	fld.s	$fa2, $s4, 24
	fadd.s	$fa0, $fa0, $fs2
	fadd.s	$fa1, $fa1, $fs1
	fadd.s	$fa2, $fa2, $fs2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a4, $a2, 40
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $sp, 304
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 304
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s4, 24
	ld.d	$a0, $s4, 16
	fadd.s	$fa0, $fa0, $fs0
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	fld.s	$fa0, $s4, 16
	fld.s	$fa1, $s4, 20
	fld.s	$fa2, $s4, 24
	fadd.s	$fa0, $fa0, $fs2
	fadd.s	$fa1, $fa1, $fs2
	fadd.s	$fa2, $fa2, $fs1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a4, $a2, 40
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 304
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 304
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.w	$a0, $s0, 820
	b	.LBB0_3
.LBB0_6:                                # %.loopexit2059
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $s2, 2
	beqz	$a0, .LBB0_12
# %bb.7:                                # %.preheader2056
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 852
	blez	$a0, .LBB0_12
# %bb.8:                                # %.lr.ph2113
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 72
	bge	$s1, $a0, .LBB0_12
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 864
	add.d	$a1, $a1, $s0
	ld.d	$a2, $a1, 8
	ld.bu	$a2, $a2, 20
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a1, 24
	ld.d	$a4, $a0, 40
	addi.d	$a1, $a2, 16
	addi.d	$a2, $a3, 16
	addi.d	$a3, $sp, 392
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 852
	b	.LBB0_9
.LBB0_12:                               # %.loopexit2057
	andi	$a0, $s2, 16
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_18
# %bb.13:                               # %.preheader2054
	ld.w	$a0, $s0, 820
	blez	$a0, .LBB0_18
# %bb.14:                               # %.lr.ph2115
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 120
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	bge	$s4, $a0, .LBB0_18
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 832
	add.d	$s0, $a1, $s3
	ld.d	$a1, $s0, 8
	ld.bu	$a1, $a1, 20
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	fld.s	$fa0, $s0, 80
	vldi	$vr4, -1184
	fmul.s	$fs0, $fa0, $fa4
	fld.s	$fa0, $s0, 84
	fld.s	$fa1, $s0, 88
	fld.s	$fa2, $s0, 16
	fld.s	$fa3, $s0, 20
	fmul.s	$fs1, $fa0, $fa4
	fmul.s	$fs2, $fa1, $fa4
	fadd.s	$fa0, $fs0, $fa2
	fadd.s	$fa1, $fs1, $fa3
	fld.s	$fa2, $s0, 24
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	addi.d	$s2, $s0, 16
	fadd.s	$fa0, $fs2, $fa2
	st.d	$a0, $sp, 224
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 232
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 368
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s0, 16
	fld.s	$fa1, $s0, 20
	fld.s	$fa2, $s0, 24
	fsub.s	$fa0, $fa0, $fs0
	fsub.s	$fa1, $fa1, $fs1
	fsub.s	$fa2, $fa2, $fs2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa0, $sp, 368
	fld.s	$fa1, $sp, 372
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	vldi	$vr2, -1184
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa1, $fa1, $fa2
	vldi	$vr3, -1184
	fld.s	$fa2, $sp, 376
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	fmul.s	$fa0, $fa2, $fa3
	st.d	$a0, $sp, 160
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 160
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a4, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 820
	b	.LBB0_15
.LBB0_18:                               # %.loopexit2055
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $a0, 32
	pcalau12i	$s1, %pc_hi20(.LCPI0_6)
	beqz	$a0, .LBB0_23
# %bb.19:
	pcalau12i	$a0, %pc_hi20(_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis)
	dbar	20
	beqz	$a0, .LBB0_144
.LBB0_20:
	ld.w	$a0, $s0, 980
	blez	$a0, .LBB0_23
# %bb.21:                               # %.lr.ph2117
	ori	$s2, $zero, 2
	pcalau12i	$a0, %pc_hi20(_ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis)
	addi.d	$s4, $a0, %pc_lo12(_ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis)
	vld	$vr0, $s1, %pc_lo12(.LCPI0_6)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	move	$s6, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 992
	add.d	$s8, $a0, $s6
	ld.d	$a0, $s8, 32
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $s8, 8
	fld.s	$fa2, $a0, 20
	fld.s	$fa3, $s8, 12
	fld.s	$fa4, $a0, 24
	fld.s	$fa5, $s8, 16
	fld.s	$fa6, $s8, 24
	fmul.s	$fa7, $fa2, $fa3
	fmadd.s	$fa7, $fa0, $fa1, $fa7
	fmadd.s	$fa7, $fa4, $fa5, $fa7
	fadd.s	$fa6, $fa7, $fa6
	fmul.s	$fa1, $fa1, $fa6
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fsub.s	$fa1, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa0, $fa4, $fa5
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	fld.s	$fa3, $s8, 8
	fld.s	$fa4, $s8, 12
	fld.s	$fa5, $s8, 16
	fcmp.cule.s	$fcc0, $fa4, $fa3
	fsel	$fa6, $fa3, $fa4, $fcc0
	fcmp.clt.s	$fcc1, $fa6, $fa5
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	alsl.d	$a1, $a0, $s4, 4
	fld.s	$fa6, $a1, 4
	slli.d	$a0, $a0, 4
	fld.s	$fa7, $a1, 8
	fneg.s	$ft0, $fa6
	fmul.s	$ft0, $fa5, $ft0
	fldx.s	$ft1, $s4, $a0
	fmadd.s	$ft0, $fa4, $fa7, $ft0
	fneg.s	$fa7, $fa7
	fmul.s	$fa7, $fa3, $fa7
	fmadd.s	$fa7, $fa5, $ft1, $fa7
	fneg.s	$ft1, $ft1
	fmul.s	$ft1, $fa4, $ft1
	fmadd.s	$fa6, $fa3, $fa6, $ft1
	fmul.s	$ft1, $fa7, $fa7
	fmadd.s	$ft1, $ft0, $ft0, $ft1
	fmadd.s	$ft1, $fa6, $fa6, $ft1
	frsqrt.s	$ft1, $ft1
	fmul.s	$ft0, $ft0, $ft1
	fmul.s	$fa7, $fa7, $ft1
	fmul.s	$fa6, $fa6, $ft1
	fneg.s	$ft1, $fa4
	fmul.s	$ft1, $fa6, $ft1
	fmadd.s	$ft1, $fa7, $fa5, $ft1
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $ft0, $fa5
	fmadd.s	$fa5, $fa6, $fa3, $fa5
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $fa7, $fa3
	fmadd.s	$fa3, $ft0, $fa4, $fa3
	fmul.s	$fa4, $fa5, $fa5
	fmadd.s	$fa4, $ft1, $ft1, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fs0, $ft1, $fa4
	fmul.s	$fs1, $fa5, $fa4
	vldi	$vr9, -1184
	fmul.s	$fa5, $ft0, $ft1
	fmul.s	$fa7, $fa7, $ft1
	fmul.s	$fa6, $fa6, $ft1
	fsub.s	$ft0, $fa1, $fa5
	fsub.s	$ft1, $fa2, $fa7
	movfr2gr.s	$a0, $ft0
	fsub.s	$ft0, $fa0, $fa6
	movfr2gr.s	$a1, $ft1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	fadd.s	$fa1, $fa1, $fa5
	fadd.s	$fa2, $fa2, $fa7
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fmul.s	$fs2, $fa3, $fa4
	fadd.s	$fa0, $fa0, $fa6
	st.d	$a0, $sp, 304
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 312
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 352
	move	$a0, $fp
	jirl	$ra, $a4, 0
	vldi	$vr5, -1184
	fmul.s	$fa0, $fs0, $fa5
	fmul.s	$fa1, $fs1, $fa5
	fld.s	$fa2, $sp, 224
	fld.s	$fa3, $sp, 228
	fld.s	$fa4, $sp, 232
	fmul.s	$fa5, $fs2, $fa5
	fsub.s	$fa6, $fa2, $fa0
	fsub.s	$fa7, $fa3, $fa1
	fsub.s	$ft0, $fa4, $fa5
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	fadd.s	$fa0, $fa2, $fa0
	fadd.s	$fa1, $fa1, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	fadd.s	$fa0, $fa5, $fa4
	st.d	$a0, $sp, 304
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 312
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 352
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s8, 8
	fld.s	$fa1, $s8, 12
	vldi	$vr3, -1184
	fmul.s	$fa0, $fa0, $fa3
	fld.s	$fa2, $sp, 224
	fmul.s	$fa1, $fa1, $fa3
	vldi	$vr5, -1184
	fld.s	$fa3, $s8, 16
	vldi	$vr4, -1272
	fmul.s	$fa0, $fa0, $fa4
	fadd.s	$fa0, $fa0, $fa2
	fld.s	$fa2, $sp, 228
	fmul.s	$fa3, $fa3, $fa5
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $sp, 232
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fadd.s	$fa0, $fa3, $fa2
	st.d	$a0, $sp, 160
	movfr2gr.s	$a0, $fa0
	ld.d	$a4, $a1, 40
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 304
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 304
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.w	$a0, $s0, 980
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 120
	blt	$s7, $a0, .LBB0_22
.LBB0_23:                               # %.loopexit2053
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $s4, 64
	beqz	$a0, .LBB0_33
# %bb.24:                               # %.preheader2052
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $s0, 948
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	blez	$a0, .LBB0_27
# %bb.25:                               # %.lr.ph2119
	move	$s2, $zero
	move	$s4, $zero
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI0_4)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	.p2align	4, , 16
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s6, $s0, 960
	add.d	$a0, $s6, $s2
	ld.d	$a1, $a0, 24
	fld.s	$fa0, $a1, 12
	fld.s	$fa1, $a0, 12
	fld.s	$fa2, $a1, 8
	fld.s	$fa3, $a0, 8
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $a1, 16
	fld.s	$fa5, $a0, 16
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fld.s	$fa2, $a1, 56
	fld.s	$fa6, $a1, 28
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fld.s	$fa4, $a1, 24
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa1, $fa6
	fld.s	$fa6, $a1, 44
	fmadd.s	$fa2, $fa4, $fa3, $fa2
	fld.s	$fa4, $a1, 40
	fld.s	$fa7, $a1, 32
	fmul.s	$fa1, $fa1, $fa6
	fld.s	$fa6, $a1, 60
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fld.s	$fa3, $a1, 48
	fld.s	$fa4, $a1, 64
	fmadd.s	$fa2, $fa7, $fa5, $fa2
	fadd.s	$fa2, $fa6, $fa2
	fmadd.s	$fa1, $fa3, $fa5, $fa1
	fadd.s	$fa1, $fa4, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 304
	st.d	$a1, $sp, 312
	ldx.d	$a0, $s6, $s2
	addi.d	$a1, $a0, 16
	vst	$vr8, $sp, 224
	vldi	$vr0, -1200
	addi.d	$a2, $sp, 224
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZL10drawVertexP12btIDebugDrawRK9btVector3fS3_)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 304
	fld.s	$fa1, $sp, 308
	vldi	$vr2, -1072
	fadd.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $sp, 312
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	vldi	$vr2, -1200
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa1, $fa1, $fs0
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 336
	fadd.s	$fa0, $fa3, $fs0
	st.d	$a0, $sp, 160
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 336
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 308
	fld.s	$fa1, $sp, 304
	vldi	$vr2, -1072
	fadd.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $sp, 312
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	fadd.s	$fa1, $fa1, $fs0
	vldi	$vr2, -1200
	fadd.s	$fa0, $fa0, $fa2
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa0
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	fadd.s	$fa0, $fa3, $fs0
	st.d	$a0, $sp, 160
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 336
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 312
	fld.s	$fa1, $sp, 304
	fld.s	$fa2, $sp, 308
	vldi	$vr3, -1072
	fadd.s	$fa3, $fa0, $fa3
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	fadd.s	$fa1, $fa1, $fs0
	fadd.s	$fa2, $fa2, $fs0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	vldi	$vr1, -1200
	fadd.s	$fa0, $fa0, $fa1
	st.d	$a0, $sp, 160
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 336
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $fp, 0
	ldx.d	$a1, $s6, $s2
	ld.d	$a4, $a0, 40
	addi.d	$a1, $a1, 16
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 224
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 224
	move	$a0, $fp
	jirl	$ra, $a4, 0
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	ld.w	$a0, $s0, 948
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 104
	blt	$s4, $a0, .LBB0_26
.LBB0_27:                               # %.preheader2050
	ld.w	$a0, $s0, 820
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	blez	$a0, .LBB0_33
# %bb.28:                               # %.lr.ph2121
	move	$s0, $zero
	move	$s1, $zero
	movgr2fr.w	$fs0, $zero
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_30 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 120
	bge	$s1, $a0, .LBB0_33
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 832
	add.d	$a1, $a1, $s0
	ld.d	$a2, $a1, 8
	ld.bu	$a2, $a2, 20
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_29
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=1
	fld.s	$fa0, $a1, 96
	fcmp.cult.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB0_29
# %bb.32:                               #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a1, $a1, 16
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 224
	vldi	$vr0, -1200
	addi.d	$a2, $sp, 224
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZL10drawVertexP12btIDebugDrawRK9btVector3fS3_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 820
	b	.LBB0_29
.LBB0_33:                               # %.loopexit2051
	andi	$a0, $s4, 4
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_39
# %bb.34:
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_7)
	ld.w	$a0, $s0, 884
	vst	$vr0, $sp, 224
	blez	$a0, .LBB0_39
# %bb.35:                               # %.lr.ph2123
	pcalau12i	$a1, %pc_hi20(.LCPI0_8)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI0_8)
	pcalau12i	$a1, %pc_hi20(.LCPI0_9)
	fld.s	$fs1, $a1, %pc_lo12(.LCPI0_9)
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               #   in Loop: Header=BB0_37 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 72
	bge	$s3, $a0, .LBB0_39
.LBB0_37:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 896
	add.d	$a1, $a1, $s2
	ld.d	$a2, $a1, 8
	ld.bu	$a2, $a2, 20
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_36
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=1
	ld.d	$a0, $a1, 16
	fld.s	$fa0, $a0, 16
	ld.d	$a2, $a1, 24
	fld.s	$fa1, $a0, 20
	fld.s	$fa2, $a0, 24
	ld.d	$a0, $a1, 32
	fld.s	$fa3, $a2, 16
	fld.s	$fa4, $a2, 20
	fld.s	$fa5, $a2, 24
	fld.s	$fa6, $a0, 16
	fld.s	$fa7, $a0, 20
	fld.s	$ft0, $a0, 24
	fadd.s	$ft1, $fa0, $fa3
	fadd.s	$ft2, $fa1, $fa4
	fadd.s	$ft3, $fa2, $fa5
	fadd.s	$ft1, $ft1, $fa6
	fadd.s	$ft2, $ft2, $fa7
	fadd.s	$ft3, $ft3, $ft0
	fmul.s	$ft1, $ft1, $fs0
	fmul.s	$ft2, $ft2, $fs0
	fmul.s	$ft3, $ft3, $fs0
	fsub.s	$fa0, $fa0, $ft1
	fsub.s	$fa1, $fa1, $ft2
	fsub.s	$fa2, $fa2, $ft3
	fmul.s	$fa0, $fa0, $fs1
	fmul.s	$fa1, $fa1, $fs1
	fmul.s	$fa2, $fa2, $fs1
	fadd.s	$fa0, $ft1, $fa0
	fadd.s	$fa1, $ft2, $fa1
	fadd.s	$fa2, $ft3, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	fsub.s	$fa0, $fa3, $ft1
	fsub.s	$fa1, $fa4, $ft2
	fsub.s	$fa2, $fa5, $ft3
	fmul.s	$fa0, $fa0, $fs1
	fmul.s	$fa1, $fa1, $fs1
	fmul.s	$fa2, $fa2, $fs1
	fadd.s	$fa0, $ft1, $fa0
	fadd.s	$fa1, $ft2, $fa1
	fadd.s	$fa2, $ft3, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 304
	st.d	$a1, $sp, 312
	fsub.s	$fa0, $fa6, $ft1
	fsub.s	$fa1, $fa7, $ft2
	fsub.s	$fa2, $ft0, $ft3
	fmul.s	$fa0, $fa0, $fs1
	fmul.s	$fa1, $fa1, $fs1
	fadd.s	$fa0, $ft1, $fa0
	fadd.s	$fa1, $ft2, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fmul.s	$fa0, $fa2, $fs1
	fadd.s	$fa0, $ft3, $fa0
	st.d	$a0, $sp, 336
	ld.d	$a5, $a1, 56
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 344
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 336
	addi.d	$a4, $sp, 224
	vldi	$vr0, -1168
	move	$a0, $fp
	jirl	$ra, $a5, 0
	ld.w	$a0, $s0, 884
	b	.LBB0_36
.LBB0_39:
	andi	$a0, $s4, 256
	beqz	$a0, .LBB0_82
# %bb.40:
	ori	$a0, $zero, 1806
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 1340
	blez	$a0, .LBB0_82
# %bb.41:                               # %.lr.ph2132
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI0_10)
	ori	$a0, $zero, 16
	ori	$s7, $zero, 1
	lu32i.d	$a0, 201327
	lu52i.d	$s8, $a0, 936
	movgr2fr.w	$fs1, $zero
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_42:                               # %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
                                        #   in Loop: Header=BB0_44 Depth=1
	ld.d	$a0, $s0, 1352
	ldx.d	$s3, $a0, $s4
.LBB0_43:                               #   in Loop: Header=BB0_44 Depth=1
	fld.s	$fa0, $s3, 100
	fld.s	$fa1, $s3, 96
	fld.s	$fa2, $s3, 104
	fmul.s	$fa0, $fa0, $fs1
	vldi	$vr3, -1244
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	vldi	$vr5, -1244
	fld.s	$fa1, $s3, 144
	fmadd.s	$fa0, $fa2, $fs1, $fa0
	fld.s	$fa2, $s3, 116
	fld.s	$fa3, $s3, 112
	fadd.s	$fa0, $fa1, $fa0
	fld.s	$fa1, $s3, 120
	fmul.s	$fa2, $fa2, $fs1
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fld.s	$fa3, $s3, 148
	fmadd.s	$fa1, $fa1, $fs1, $fa2
	fld.s	$fa2, $s3, 132
	fld.s	$fa4, $s3, 128
	fadd.s	$fa1, $fa3, $fa1
	fld.s	$fa3, $s3, 136
	fmul.s	$fa2, $fa2, $fs1
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	addi.d	$s2, $s3, 264
	fmadd.s	$fa2, $fa3, $fs1, $fa2
	fld.s	$fa3, $s3, 152
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fadd.s	$fa0, $fa3, $fa2
	st.d	$a0, $sp, 224
	movfr2gr.s	$a0, $fa0
	ld.d	$a4, $a1, 40
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 232
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 160
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s3, 100
	fld.s	$fa1, $s3, 96
	fld.s	$fa2, $s3, 104
	fld.s	$fa3, $s3, 144
	vldi	$vr5, -1244
	fmul.s	$fa0, $fa0, $fa5
	fmadd.s	$fa0, $fa1, $fs1, $fa0
	fmadd.s	$fa0, $fa2, $fs1, $fa0
	fadd.s	$fa0, $fa3, $fa0
	fld.s	$fa1, $s3, 116
	fld.s	$fa2, $s3, 112
	fld.s	$fa3, $s3, 120
	fld.s	$fa4, $s3, 148
	fmul.s	$fa1, $fa1, $fa5
	vldi	$vr6, -1244
	fmadd.s	$fa1, $fa2, $fs1, $fa1
	fmadd.s	$fa1, $fa3, $fs1, $fa1
	fadd.s	$fa1, $fa4, $fa1
	fld.s	$fa2, $s3, 132
	fld.s	$fa3, $s3, 128
	fld.s	$fa4, $s3, 136
	fld.s	$fa5, $s3, 152
	fmul.s	$fa2, $fa2, $fa6
	fmadd.s	$fa2, $fa3, $fs1, $fa2
	fmadd.s	$fa2, $fa4, $fs1, $fa2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	st.d	$a0, $sp, 224
	movfr2gr.s	$a0, $fa2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	vld	$vr0, $a2, %pc_lo12(.LCPI0_4)
	ld.d	$a4, $a1, 40
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 232
	vst	$vr0, $sp, 160
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 160
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s3, 100
	fld.s	$fa1, $s3, 96
	fld.s	$fa2, $s3, 104
	fld.s	$fa3, $s3, 144
	fmul.s	$fa0, $fa0, $fs1
	fmadd.s	$fa0, $fa1, $fs1, $fa0
	vldi	$vr5, -1244
	fmadd.s	$fa0, $fa2, $fa5, $fa0
	fadd.s	$fa0, $fa3, $fa0
	fld.s	$fa1, $s3, 116
	fld.s	$fa2, $s3, 112
	fld.s	$fa3, $s3, 120
	fld.s	$fa4, $s3, 148
	fmul.s	$fa1, $fa1, $fs1
	fmadd.s	$fa1, $fa2, $fs1, $fa1
	fmadd.s	$fa1, $fa3, $fa5, $fa1
	vldi	$vr6, -1244
	fadd.s	$fa1, $fa4, $fa1
	fld.s	$fa2, $s3, 132
	fld.s	$fa3, $s3, 128
	fld.s	$fa4, $s3, 136
	fld.s	$fa5, $s3, 152
	fmul.s	$fa2, $fa2, $fs1
	fmadd.s	$fa2, $fa3, $fs1, $fa2
	fmadd.s	$fa2, $fa4, $fa6, $fa2
	fadd.s	$fa2, $fa5, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	st.d	$a0, $sp, 224
	movfr2gr.s	$a0, $fa2
	vld	$vr0, $s5, %pc_lo12(.LCPI0_5)
	ld.d	$a4, $a1, 40
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 232
	vst	$vr0, $sp, 160
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 160
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a4, 0
	ld.w	$a0, $s0, 1340
	addi.d	$s6, $s6, 1
	bge	$s6, $a0, .LBB0_82
.LBB0_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_64 Depth 2
	ld.d	$a0, $s0, 1352
	slli.d	$s4, $s6, 3
	ldx.d	$s3, $a0, $s4
	ld.bu	$a0, $s3, 417
	beqz	$a0, .LBB0_43
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fs2, $fa0, $fs0
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fs3, $fa0, $fs0
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs0
	fmul.s	$fa1, $fs3, $fs3
	fmadd.s	$fa1, $fs2, $fs2, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fs2, $fa1
	fmul.s	$fa3, $fs3, $fa1
	fmul.s	$fa0, $fa0, $fa1
	vldi	$vr4, -1176
	fmul.s	$fa1, $fa2, $fa4
	fmul.s	$fa2, $fa3, $fa4
	fmul.s	$fa0, $fa0, $fa4
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 336
	ld.d	$a0, $s0, 1352
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 344
	ldx.d	$a0, $a0, $s4
	ld.w	$s1, $a0, 4
	blez	$s1, .LBB0_49
# %bb.46:                               #   in Loop: Header=BB0_44 Depth=1
	slli.d	$a0, $s1, 4
.Ltmp0:                                 # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.47:                               # %.lr.ph2125.preheader
                                        #   in Loop: Header=BB0_44 Depth=1
	move	$s2, $a0
	move	$a0, $zero
	slli.d	$a1, $s1, 3
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_48:                               # %.lr.ph2125
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s0, 1352
	ldx.d	$a3, $a3, $s4
	ld.d	$a3, $a3, 16
	ldx.d	$a3, $a3, $a0
	vld	$vr0, $a3, 16
	vst	$vr0, $a2, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, 16
	bne	$a1, $a0, .LBB0_48
	b	.LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_44 Depth=1
	move	$s2, $zero
.LBB0_50:                               # %._crit_edge2126
                                        #   in Loop: Header=BB0_44 Depth=1
	st.w	$s7, $sp, 304
	st.w	$s1, $sp, 308
	st.d	$s2, $sp, 312
	st.d	$s8, $sp, 320
	st.b	$s7, $sp, 256
	st.d	$zero, $sp, 248
	st.d	$zero, $sp, 236
	st.b	$s7, $sp, 296
	st.d	$zero, $sp, 288
	st.d	$zero, $sp, 276
	st.b	$s7, $sp, 224
	st.w	$zero, $sp, 228
	st.d	$zero, $sp, 264
	st.b	$s7, $sp, 184
	st.d	$zero, $sp, 176
	st.d	$zero, $sp, 164
	st.b	$s7, $sp, 216
	st.d	$zero, $sp, 208
	st.d	$zero, $sp, 196
	st.w	$s1, $sp, 328
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 304
	addi.d	$a2, $sp, 224
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.51:                               #   in Loop: Header=BB0_44 Depth=1
	ld.w	$a0, $sp, 236
	ld.d	$a1, $sp, 248
	blez	$a0, .LBB0_55
# %bb.52:                               #   in Loop: Header=BB0_44 Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa0, $a1, 4
	fld.s	$fa2, $a1, 8
	bstrpick.d	$a2, $a0, 31, 0
	movgr2fr.d	$fa3, $a2
	ffint.s.l	$fa3, $fa3
	beq	$a0, $s7, .LBB0_57
# %bb.53:                               # %.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB0_44 Depth=1
	addi.d	$a2, $a0, -1
	addi.d	$a3, $a1, 24
	.p2align	4, , 16
.LBB0_54:                               # %.lr.ph.i.i
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $a3, -8
	fld.s	$fa5, $a3, -4
	fld.s	$fa6, $a3, 0
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa0, $fa0, $fa5
	fadd.s	$fa2, $fa2, $fa6
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 16
	bnez	$a2, .LBB0_54
	b	.LBB0_57
.LBB0_55:                               #   in Loop: Header=BB0_44 Depth=1
	beqz	$a0, .LBB0_81
# %bb.56:                               # %.thread2.i
                                        #   in Loop: Header=BB0_44 Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa0, $a1, 4
	fld.s	$fa2, $a1, 8
	vldi	$vr3, -1168
.LBB0_57:                               #   in Loop: Header=BB0_44 Depth=1
	blez	$a0, .LBB0_62
.LBB0_58:                               # %.lr.ph.i924
                                        #   in Loop: Header=BB0_44 Depth=1
	frecip.s	$fa3, $fa3
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa0, $fa3, $fa0
	fmul.s	$fa2, $fa3, $fa2
	addi.d	$a1, $a1, 8
	move	$a2, $a0
	.p2align	4, , 16
.LBB0_59:                               #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a1, -8
	fld.s	$fa4, $a1, -4
	fsub.s	$fa3, $fa3, $fa1
	fld.s	$fa5, $a1, 0
	fst.s	$fa3, $a1, -8
	fsub.s	$fa3, $fa4, $fa0
	fst.s	$fa3, $a1, -4
	fsub.s	$fa3, $fa5, $fa2
	fst.s	$fa3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB0_59
# %bb.60:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_44 Depth=1
	ld.d	$a1, $sp, 248
	addi.d	$a1, $a1, 8
	.p2align	4, , 16
.LBB0_61:                               #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a1, -8
	fld.s	$fa4, $a1, -4
	fadd.s	$fa3, $fa1, $fa3
	fld.s	$fa5, $a1, 0
	fst.s	$fa3, $a1, -8
	fadd.s	$fa3, $fa0, $fa4
	fst.s	$fa3, $a1, -4
	fadd.s	$fa3, $fa2, $fa5
	fst.s	$fa3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB0_61
.LBB0_62:                               # %_ZL3addI9btVector3S0_EvR20btAlignedObjectArrayIT_ERKT0_.exit939
                                        #   in Loop: Header=BB0_44 Depth=1
	ld.w	$a0, $sp, 264
	blez	$a0, .LBB0_66
# %bb.63:                               # %.lr.ph2128.preheader
                                        #   in Loop: Header=BB0_44 Depth=1
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_64:                               # %.lr.ph2128
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 288
	add.d	$a1, $a0, $s0
	ldx.w	$a0, $a0, $s0
	ld.d	$a2, $fp, 0
	ld.d	$a3, $sp, 248
	ld.w	$a4, $a1, 4
	ld.w	$a5, $a1, 8
	ld.d	$a6, $a2, 56
	alsl.d	$a1, $a0, $a3, 4
	alsl.d	$a2, $a4, $a3, 4
	alsl.d	$a3, $a5, $a3, 4
.Ltmp6:                                 # EH_LABEL
	addi.d	$a4, $sp, 336
	vldi	$vr0, -1168
	move	$a0, $fp
	jirl	$ra, $a6, 0
.Ltmp7:                                 # EH_LABEL
# %bb.65:                               #   in Loop: Header=BB0_64 Depth=2
	ld.w	$a0, $sp, 264
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 12
	blt	$s1, $a0, .LBB0_64
.LBB0_66:                               # %._crit_edge2129
                                        #   in Loop: Header=BB0_44 Depth=1
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 224
	pcaddu18i	$ra, %call36(_ZN11HullLibrary13ReleaseResultER10HullResult)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.67:                               #   in Loop: Header=BB0_44 Depth=1
	ld.d	$a0, $sp, 208
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_70
# %bb.68:                               #   in Loop: Header=BB0_44 Depth=1
	ld.b	$a1, $sp, 216
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_44 Depth=1
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
.LBB0_70:                               #   in Loop: Header=BB0_44 Depth=1
	ld.d	$a0, $sp, 176
	st.b	$s7, $sp, 216
	st.d	$zero, $sp, 208
	st.d	$zero, $sp, 196
	beqz	$a0, .LBB0_73
# %bb.71:                               #   in Loop: Header=BB0_44 Depth=1
	ld.b	$a1, $sp, 184
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_44 Depth=1
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
.LBB0_73:                               #   in Loop: Header=BB0_44 Depth=1
	ld.d	$a0, $sp, 288
	beqz	$a0, .LBB0_76
# %bb.74:                               #   in Loop: Header=BB0_44 Depth=1
	ld.b	$a1, $sp, 296
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_44 Depth=1
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
.LBB0_76:                               #   in Loop: Header=BB0_44 Depth=1
	ld.d	$a0, $sp, 248
	st.b	$s7, $sp, 296
	st.d	$zero, $sp, 288
	st.d	$zero, $sp, 276
	beqz	$a0, .LBB0_79
# %bb.77:                               #   in Loop: Header=BB0_44 Depth=1
	ld.b	$a1, $sp, 256
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_44 Depth=1
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
.LBB0_79:                               #   in Loop: Header=BB0_44 Depth=1
	beqz	$s2, .LBB0_42
# %bb.80:                               #   in Loop: Header=BB0_44 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	b	.LBB0_42
.LBB0_81:                               #   in Loop: Header=BB0_44 Depth=1
	vldi	$vr3, -1168
                                        # implicit-def: $f0
                                        # implicit-def: $f1
                                        # implicit-def: $f2
	bgtz	$a0, .LBB0_58
	b	.LBB0_62
.LBB0_82:                               # %.loopexit2049
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $a1, 8
	beqz	$a0, .LBB0_89
# %bb.83:
	pcalau12i	$a0, %pc_hi20(.LCPI0_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_11)
	ld.w	$a0, $s0, 916
	vst	$vr0, $sp, 224
	blez	$a0, .LBB0_88
# %bb.84:                               # %.lr.ph2135
	pcalau12i	$a1, %pc_hi20(.LCPI0_9)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI0_9)
	move	$s2, $zero
	move	$s4, $zero
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_85:                               #   in Loop: Header=BB0_86 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 136
	bge	$s4, $a0, .LBB0_88
.LBB0_86:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 928
	add.d	$a1, $a1, $s2
	ld.d	$a2, $a1, 8
	ld.bu	$a2, $a2, 20
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_85
# %bb.87:                               #   in Loop: Header=BB0_86 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a2, $a1, 24
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $a0, 20
	fld.s	$fa2, $a0, 24
	fld.s	$fa3, $a2, 16
	ld.d	$a0, $a1, 32
	fld.s	$fa4, $a2, 20
	fld.s	$fa5, $a2, 24
	ld.d	$a1, $a1, 40
	fld.s	$fa6, $a0, 16
	fld.s	$fa7, $a0, 20
	fld.s	$ft0, $a0, 24
	fld.s	$fs1, $a1, 16
	fld.s	$fs2, $a1, 20
	fld.s	$fs3, $a1, 24
	fadd.s	$ft1, $fa0, $fa3
	fadd.s	$ft2, $fa1, $fa4
	fadd.s	$ft3, $fa2, $fa5
	fadd.s	$ft1, $ft1, $fa6
	fadd.s	$ft2, $ft2, $fa7
	fadd.s	$ft3, $ft3, $ft0
	fadd.s	$ft1, $ft1, $fs1
	fadd.s	$ft2, $ft2, $fs2
	fadd.s	$ft3, $ft3, $fs3
	vldi	$vr12, -1200
	fmul.s	$fs4, $ft1, $ft4
	fmul.s	$fs5, $ft2, $ft4
	fmul.s	$fs6, $ft3, $ft4
	fsub.s	$fa0, $fa0, $fs4
	fsub.s	$fa1, $fa1, $fs5
	fsub.s	$fa2, $fa2, $fs6
	fmul.s	$fa0, $fa0, $fs0
	fmul.s	$fa1, $fa1, $fs0
	fmul.s	$fa2, $fa2, $fs0
	fadd.s	$fa0, $fs4, $fa0
	fadd.s	$fa1, $fs5, $fa1
	fadd.s	$fa2, $fs6, $fa2
	movfr2gr.s	$s3, $fa0
	movfr2gr.s	$a0, $fa1
	bstrins.d	$s3, $a0, 63, 32
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$s0, $a0, 31, 0
	st.d	$s3, $sp, 160
	st.d	$s0, $sp, 168
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	fsub.s	$fa0, $fa3, $fs4
	fsub.s	$fa1, $fa4, $fs5
	fsub.s	$fa2, $fa5, $fs6
	fmul.s	$fa0, $fa0, $fs0
	fmul.s	$fa1, $fa1, $fs0
	fmul.s	$fa2, $fa2, $fs0
	fadd.s	$fa0, $fs4, $fa0
	fadd.s	$fa1, $fs5, $fa1
	fadd.s	$fa2, $fs6, $fa2
	movfr2gr.s	$s7, $fa0
	movfr2gr.s	$a0, $fa1
	bstrins.d	$s7, $a0, 63, 32
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$s8, $a0, 31, 0
	st.d	$s7, $sp, 304
	st.d	$s8, $sp, 312
	fsub.s	$fa0, $fa6, $fs4
	fsub.s	$fa1, $fa7, $fs5
	fsub.s	$fa2, $ft0, $fs6
	fmul.s	$fa0, $fa0, $fs0
	fmul.s	$fa1, $fa1, $fs0
	fmul.s	$fa2, $fa2, $fs0
	fadd.s	$fa0, $fs4, $fa0
	fadd.s	$fa1, $fs5, $fa1
	fadd.s	$fa2, $fs6, $fa2
	movfr2gr.s	$s6, $fa0
	ld.d	$a0, $fp, 0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$s6, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	ld.d	$a5, $a0, 56
	bstrpick.d	$s1, $a1, 31, 0
	st.d	$s6, $sp, 336
	st.d	$s1, $sp, 344
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 336
	addi.d	$a4, $sp, 224
	vldi	$vr0, -1168
	move	$a0, $fp
	jirl	$ra, $a5, 0
	st.d	$s3, $sp, 160
	st.d	$s0, $sp, 168
	st.d	$s7, $sp, 304
	st.d	$s8, $sp, 312
	fsub.s	$fa0, $fs1, $fs4
	fsub.s	$fa1, $fs2, $fs5
	fsub.s	$fa2, $fs3, $fs6
	fmul.s	$fa0, $fa0, $fs0
	fmul.s	$fa1, $fa1, $fs0
	fmul.s	$fa2, $fa2, $fs0
	fadd.s	$fa0, $fs4, $fa0
	fadd.s	$fa1, $fs5, $fa1
	fadd.s	$fa2, $fs6, $fa2
	movfr2gr.s	$s0, $fa0
	ld.d	$a0, $fp, 0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$s0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	ld.d	$a5, $a0, 56
	bstrpick.d	$s5, $a1, 31, 0
	st.d	$s0, $sp, 336
	st.d	$s5, $sp, 344
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 336
	addi.d	$a4, $sp, 224
	vldi	$vr0, -1168
	move	$a0, $fp
	jirl	$ra, $a5, 0
	ld.d	$a0, $fp, 0
	st.d	$s7, $sp, 160
	st.d	$s8, $sp, 168
	st.d	$s6, $sp, 304
	ld.d	$a5, $a0, 56
	st.d	$s1, $sp, 312
	st.d	$s0, $sp, 336
	st.d	$s5, $sp, 344
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 336
	addi.d	$a4, $sp, 224
	vldi	$vr0, -1168
	move	$a0, $fp
	jirl	$ra, $a5, 0
	ld.d	$a0, $fp, 0
	st.d	$s6, $sp, 160
	st.d	$s1, $sp, 168
	st.d	$s3, $sp, 304
	ld.d	$a5, $a0, 56
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 312
	st.d	$s0, $sp, 336
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	st.d	$s5, $sp, 344
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 336
	addi.d	$a4, $sp, 224
	vldi	$vr0, -1168
	move	$a0, $fp
	jirl	$ra, $a5, 0
	ld.w	$a0, $s0, 916
	b	.LBB0_85
.LBB0_88:                               # %._crit_edge2136
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
.LBB0_89:
	andi	$a0, $a1, 128
	beqz	$a0, .LBB0_96
# %bb.90:                               # %.preheader2047
	ld.w	$a0, $s0, 788
	blez	$a0, .LBB0_96
# %bb.91:                               # %.lr.ph2144
	move	$s2, $zero
	ori	$s3, $zero, 40
	ori	$s1, $zero, 72
	ori	$s4, $zero, 88
	b	.LBB0_93
	.p2align	4, , 16
.LBB0_92:                               # %._crit_edge2140
                                        #   in Loop: Header=BB0_93 Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a0, 8
	ld.d	$a3, $a1, 80
	addi.d	$a1, $sp, 224
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $s0, 788
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 88
	addi.d	$s1, $s1, 88
	bge	$s2, $a0, .LBB0_96
.LBB0_93:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_95 Depth 2
	ld.d	$a3, $s0, 800
	mul.d	$a0, $s2, $s4
	add.d	$a0, $a3, $a0
	vld	$vr0, $a0, 16
	vst	$vr0, $sp, 224
	ld.w	$a1, $a0, 32
	blez	$a1, .LBB0_92
# %bb.94:                               # %.lr.ph2139
                                        #   in Loop: Header=BB0_93 Depth=1
	fld.s	$fa0, $sp, 224
	fld.s	$fa1, $sp, 228
	fld.s	$fa2, $sp, 232
	add.d	$a2, $a3, $s3
	add.d	$a3, $a3, $s1
	.p2align	4, , 16
.LBB0_95:                               #   Parent Loop BB0_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a2, 0
	fld.s	$fa3, $a4, 16
	fld.s	$fa4, $a3, 0
	fld.s	$fa5, $a4, 20
	fld.s	$fa6, $a4, 24
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa5, $fa4, $fa5
	fmul.s	$fa4, $fa4, $fa6
	fadd.s	$fa0, $fa3, $fa0
	fst.s	$fa0, $sp, 224
	fadd.s	$fa1, $fa5, $fa1
	fst.s	$fa1, $sp, 228
	fadd.s	$fa2, $fa4, $fa2
	fst.s	$fa2, $sp, 232
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB0_95
	b	.LBB0_92
.LBB0_96:                               # %.loopexit2048
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $s1, 512
	bnez	$a0, .LBB0_100
# %bb.97:
	andi	$a0, $s1, 1024
	bnez	$a0, .LBB0_101
.LBB0_98:
	slli.d	$a0, $s1, 52
	pcalau12i	$s0, %pc_hi20(.LCPI0_12)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	bltz	$a0, .LBB0_102
.LBB0_99:
	slli.d	$a0, $s1, 51
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	bltz	$a0, .LBB0_103
	b	.LBB0_143
.LBB0_100:
	ld.d	$a1, $s0, 1144
	lu12i.w	$a0, 260096
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 224
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	addi.w	$a6, $zero, -1
	addi.d	$a3, $sp, 224
	addi.d	$a4, $sp, 160
	move	$a0, $fp
	move	$a2, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii)
	jirl	$ra, $ra, 0
	andi	$a0, $s1, 1024
	beqz	$a0, .LBB0_98
.LBB0_101:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI0_4)
	ld.d	$a1, $s0, 1208
	vst	$vr0, $sp, 224
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	addi.w	$a6, $zero, -1
	addi.d	$a3, $sp, 224
	addi.d	$a4, $sp, 160
	move	$a0, $fp
	move	$a2, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s1, 52
	pcalau12i	$s0, %pc_hi20(.LCPI0_12)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	bgez	$a0, .LBB0_99
.LBB0_102:
	vld	$vr0, $s0, %pc_lo12(.LCPI0_12)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 1272
	vst	$vr0, $sp, 224
	vst	$vr1, $sp, 160
	addi.w	$a6, $zero, -1
	addi.d	$a3, $sp, 224
	addi.d	$a4, $sp, 160
	move	$a0, $fp
	move	$a2, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s1, 51
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	bgez	$a0, .LBB0_143
.LBB0_103:                              # %.preheader
	ld.w	$a0, $s4, 1044
	blez	$a0, .LBB0_143
# %bb.104:                              # %.lr.ph2146
	ori	$s3, $zero, 1
	pcalau12i	$a0, %pc_hi20(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$s1, $a0, %pc_lo12(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	pcalau12i	$a0, %pc_hi20(_ZZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$s5, $a0, %pc_lo12(_ZZNK10btSoftBody4Body5xformEvE8identity)
	move	$s6, $zero
	move	$s7, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI0_6)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vld	$vr0, $s0, %pc_lo12(.LCPI0_12)
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	b	.LBB0_109
.LBB0_105:                              #   in Loop: Header=BB0_109 Depth=1
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 48
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vst	$vr3, $s5, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	fld.s	$fs6, $sp, 24                   # 4-byte Folded Reload
	fld.s	$fs0, $sp, 20                   # 4-byte Folded Reload
	fld.s	$fs2, $sp, 16                   # 4-byte Folded Reload
	fld.s	$fs5, $sp, 12                   # 4-byte Folded Reload
	.p2align	4, , 16
.LBB0_106:                              # %_ZNK10btSoftBody4Body5xformEv.exit1397
                                        #   in Loop: Header=BB0_109 Depth=1
	fmul.s	$fa0, $fs7, $fs4
	fld.s	$fa1, $sp, 56                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs3, $fa0
	fmadd.s	$fa0, $fs6, $fs1, $fa0
	fmul.s	$fa1, $fs4, $fs5
	fmadd.s	$fa1, $fs0, $fs3, $fa1
	fmadd.s	$fa1, $fs2, $fs1, $fa1
	ld.d	$a0, $s2, 48
	fld.s	$fa2, $sp, 32                   # 4-byte Folded Reload
	fmul.s	$fa2, $fs4, $fa2
	ld.d	$a1, $s2, 32
	fld.s	$fa3, $sp, 64                   # 4-byte Folded Reload
	fmadd.s	$fa2, $fa3, $fs3, $fa2
	sltui	$a2, $a0, 1
	addi.d	$a0, $a0, 72
	sltui	$a3, $a1, 1
	addi.d	$a1, $a1, 96
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	fld.s	$fa3, $a0, 4
	fld.s	$fa4, $s2, 76
	fld.s	$fa5, $sp, 80                   # 4-byte Folded Reload
	fmadd.s	$fa2, $fa5, $fs1, $fa2
	fld.s	$fa5, $a0, 0
	fld.s	$fa6, $s2, 72
	fmul.s	$fa3, $fa3, $fa4
	fld.s	$fa7, $a0, 8
	fld.s	$ft0, $s2, 80
	fld.s	$ft1, $a0, 20
	fld.s	$ft2, $a0, 16
	fmadd.s	$fa3, $fa5, $fa6, $fa3
	fmadd.s	$fs0, $fa7, $ft0, $fa3
	fmul.s	$fa3, $fa4, $ft1
	fmadd.s	$fa3, $ft2, $fa6, $fa3
	fld.s	$fa5, $a0, 24
	fld.s	$fa7, $a0, 36
	fld.s	$ft1, $a0, 32
	fld.s	$ft2, $a0, 40
	fmadd.s	$fs2, $fa5, $ft0, $fa3
	fmul.s	$fa3, $fa4, $fa7
	fmadd.s	$fa3, $ft1, $fa6, $fa3
	fmadd.s	$fs7, $ft2, $ft0, $fa3
	vldi	$vr4, -1244
	fmul.s	$fs3, $fa0, $fa4
	fmul.s	$fs4, $fa1, $fa4
	fld.s	$fa0, $sp, 224
	fld.s	$fa1, $sp, 228
	fld.s	$fa3, $sp, 232
	fmul.s	$fs1, $fa2, $fa4
	fadd.s	$fa0, $fs3, $fa0
	fadd.s	$fa1, $fs4, $fa1
	fadd.s	$fa2, $fs1, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a4, $a2, 40
	st.d	$a0, $sp, 304
	st.d	$a1, $sp, 312
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 336
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 336
	move	$a0, $fp
	jirl	$ra, $a4, 0
	vldi	$vr2, -1244
	fmul.s	$fs5, $fs0, $fa2
	fld.s	$fa0, $sp, 224
	fld.s	$fa1, $sp, 228
	fmul.s	$fs6, $fs2, $fa2
	fmul.s	$fs2, $fs7, $fa2
	fadd.s	$fa0, $fs5, $fa0
	fadd.s	$fa1, $fs6, $fa1
	fld.s	$fa2, $sp, 232
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fadd.s	$fa0, $fs2, $fa2
	st.d	$a0, $sp, 304
	movfr2gr.s	$a0, $fa0
	ld.d	$a4, $a1, 40
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 312
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 336
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 336
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 160
	fld.s	$fa1, $sp, 164
	fadd.s	$fa0, $fs3, $fa0
	fadd.s	$fa1, $fs4, $fa1
	fld.s	$fa2, $sp, 168
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fadd.s	$fa0, $fs1, $fa2
	st.d	$a0, $sp, 304
	movfr2gr.s	$a0, $fa0
	ld.d	$a4, $a1, 40
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 312
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 336
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 336
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 160
	fld.s	$fa1, $sp, 164
	fadd.s	$fa0, $fs5, $fa0
	fadd.s	$fa1, $fs6, $fa1
	fld.s	$fa2, $sp, 168
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fadd.s	$fa0, $fs2, $fa2
	st.d	$a0, $sp, 304
	movfr2gr.s	$a0, $fa0
	ld.d	$a4, $a1, 40
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 312
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 336
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 336
.LBB0_107:                              #   in Loop: Header=BB0_109 Depth=1
	move	$a0, $fp
	jirl	$ra, $a4, 0
.LBB0_108:                              #   in Loop: Header=BB0_109 Depth=1
	ld.w	$a0, $s0, 1044
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 8
	move	$s4, $s0
	bge	$s7, $a0, .LBB0_143
.LBB0_109:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 1056
	ldx.d	$s2, $a0, $s6
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 40
	move	$a0, $s2
	jirl	$ra, $a1, 0
	move	$s0, $s4
	beq	$a0, $s3, .LBB0_116
# %bb.110:                              #   in Loop: Header=BB0_109 Depth=1
	bnez	$a0, .LBB0_108
# %bb.111:                              #   in Loop: Header=BB0_109 Depth=1
	ld.b	$a0, $s1, 0
	dbar	20
	beqz	$a0, .LBB0_122
.LBB0_112:                              # %_ZNK10btSoftBody4Body5xformEv.exit
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s2, 8
	sltui	$a2, $a0, 1
	addi.d	$a0, $a0, 72
	sltui	$a3, $a1, 1
	addi.d	$a1, $a1, 96
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $s2, 60
	fld.s	$fa2, $a0, 0
	fld.s	$fa3, $s2, 56
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $a0, 8
	fld.s	$fa5, $s2, 64
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fld.s	$fa2, $a0, 48
	fld.s	$fa6, $a0, 20
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fld.s	$fa4, $a0, 16
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa1, $fa6
	fld.s	$fa6, $a0, 36
	fmadd.s	$fa2, $fa4, $fa3, $fa2
	fld.s	$fa4, $a0, 32
	fld.s	$fa7, $a0, 24
	fmul.s	$fa1, $fa1, $fa6
	fld.s	$fa6, $a0, 52
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fld.s	$fa3, $a0, 40
	fld.s	$fa4, $a0, 56
	fmadd.s	$fa2, $fa7, $fa5, $fa2
	fadd.s	$fa2, $fa6, $fa2
	fmadd.s	$fa1, $fa3, $fa5, $fa1
	fadd.s	$fa1, $fa4, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 304
	st.d	$a1, $sp, 312
	ld.b	$a0, $s1, 0
	dbar	20
	beqz	$a0, .LBB0_125
.LBB0_113:                              # %_ZNK10btSoftBody4Body5xformEv.exit1275
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.d	$a0, $s2, 48
	ld.d	$a1, $s2, 32
	sltui	$a2, $a0, 1
	addi.d	$a0, $a0, 72
	sltui	$a3, $a1, 1
	addi.d	$a1, $a1, 96
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $s2, 76
	fld.s	$fa2, $a0, 0
	fld.s	$fa3, $s2, 72
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $a0, 8
	fld.s	$fa5, $s2, 80
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fld.s	$fa2, $a0, 48
	fld.s	$fa6, $a0, 20
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fld.s	$fa4, $a0, 16
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa1, $fa6
	fld.s	$fa6, $a0, 36
	fmadd.s	$fa2, $fa4, $fa3, $fa2
	fld.s	$fa4, $a0, 32
	fld.s	$fa7, $a0, 24
	fmul.s	$fa1, $fa1, $fa6
	fld.s	$fa6, $a0, 52
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fld.s	$fa3, $a0, 40
	fld.s	$fa4, $a0, 56
	fmadd.s	$fa2, $fa7, $fa5, $fa2
	fadd.s	$fa2, $fa6, $fa2
	fmadd.s	$fa1, $fa3, $fa5, $fa1
	fadd.s	$fa1, $fa4, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 336
	st.d	$a1, $sp, 344
	ld.b	$a0, $s1, 0
	dbar	20
	beqz	$a0, .LBB0_128
.LBB0_114:                              # %_ZNK10btSoftBody4Body5xformEv.exit1288
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s2, 8
	sltui	$a2, $a0, 1
	sltui	$a3, $a1, 1
	addi.d	$a1, $a1, 96
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	ld.d	$a3, $fp, 0
	addi.d	$a0, $a0, 72
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	ld.d	$a4, $a3, 40
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, 48
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 224
	addi.d	$a2, $sp, 304
	addi.d	$a3, $sp, 224
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.b	$a0, $s1, 0
	dbar	20
	beqz	$a0, .LBB0_131
.LBB0_115:                              # %_ZNK10btSoftBody4Body5xformEv.exit1294
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.d	$a0, $s2, 48
	ld.d	$a1, $s2, 32
	sltui	$a2, $a0, 1
	sltui	$a3, $a1, 1
	addi.d	$a1, $a1, 96
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	ld.d	$a3, $fp, 0
	addi.d	$a0, $a0, 72
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	ld.d	$a4, $a3, 40
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, 48
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 224
	addi.d	$a2, $sp, 336
	addi.d	$a3, $sp, 224
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 304
	fld.s	$fa1, $sp, 308
	vldi	$vr2, -1072
	fadd.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $sp, 312
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	vldi	$vr2, -1200
	fadd.s	$fa0, $fa0, $fa2
	fld.s	$fs0, $sp, 28                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa1, $fs0
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	fadd.s	$fa0, $fa3, $fs0
	st.d	$a0, $sp, 160
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 144
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 308
	fld.s	$fa1, $sp, 304
	vldi	$vr2, -1072
	fadd.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $sp, 312
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	fadd.s	$fa1, $fa1, $fs0
	vldi	$vr2, -1200
	fadd.s	$fa0, $fa0, $fa2
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa0
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	fadd.s	$fa0, $fa3, $fs0
	st.d	$a0, $sp, 160
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 144
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 312
	fld.s	$fa1, $sp, 304
	fld.s	$fa2, $sp, 308
	vldi	$vr3, -1072
	fadd.s	$fa3, $fa0, $fa3
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	fadd.s	$fa1, $fa1, $fs0
	fadd.s	$fa2, $fa2, $fs0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	vldi	$vr1, -1200
	fadd.s	$fa0, $fa0, $fa1
	st.d	$a0, $sp, 160
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 144
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 336
	fld.s	$fa1, $sp, 340
	vldi	$vr2, -1072
	fadd.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $sp, 344
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	vldi	$vr2, -1200
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa1, $fa1, $fs0
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	fadd.s	$fa0, $fa3, $fs0
	st.d	$a0, $sp, 160
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 144
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 340
	fld.s	$fa1, $sp, 336
	vldi	$vr2, -1072
	fadd.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $sp, 344
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	fadd.s	$fa1, $fa1, $fs0
	vldi	$vr2, -1200
	fadd.s	$fa0, $fa0, $fa2
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa0
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	fadd.s	$fa0, $fa3, $fs0
	st.d	$a0, $sp, 160
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 144
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 344
	fld.s	$fa1, $sp, 336
	fld.s	$fa2, $sp, 340
	vldi	$vr3, -1072
	fadd.s	$fa3, $fa0, $fa3
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	fadd.s	$fa1, $fa1, $fs0
	fadd.s	$fa2, $fa2, $fs0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	ld.d	$a2, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	vldi	$vr1, -1200
	fadd.s	$fa0, $fa0, $fa1
	st.d	$a0, $sp, 160
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 144
	b	.LBB0_107
	.p2align	4, , 16
.LBB0_116:                              #   in Loop: Header=BB0_109 Depth=1
	ld.b	$a0, $s1, 0
	dbar	20
	beqz	$a0, .LBB0_134
.LBB0_117:                              # %_ZNK10btSoftBody4Body5xformEv.exit1372
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s2, 8
	sltui	$a2, $a0, 1
	addi.d	$a0, $a0, 72
	sltui	$a3, $a1, 1
	addi.d	$a1, $a1, 96
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	vld	$vr0, $a0, 48
	vst	$vr0, $sp, 224
	ld.b	$a0, $s1, 0
	dbar	20
	beqz	$a0, .LBB0_137
.LBB0_118:                              # %_ZNK10btSoftBody4Body5xformEv.exit1378
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.d	$a0, $s2, 48
	ld.d	$a1, $s2, 32
	sltui	$a2, $a0, 1
	addi.d	$a0, $a0, 72
	sltui	$a3, $a1, 1
	addi.d	$a1, $a1, 96
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	vld	$vr0, $a0, 48
	vst	$vr0, $sp, 160
	ld.b	$a0, $s1, 0
	dbar	20
	beqz	$a0, .LBB0_140
.LBB0_119:                              # %_ZNK10btSoftBody4Body5xformEv.exit1384
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s2, 8
	sltui	$a2, $a0, 1
	addi.d	$a0, $a0, 72
	sltui	$a3, $a1, 1
	addi.d	$a1, $a1, 96
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	fld.s	$fa0, $a0, 0
	fst.s	$fa0, $sp, 56                   # 4-byte Folded Spill
	fld.s	$fs3, $s2, 56
	fld.s	$fs7, $a0, 4
	fld.s	$fs4, $s2, 60
	fld.s	$fs6, $a0, 8
	fld.s	$fs1, $s2, 64
	fld.s	$fs0, $a0, 16
	fld.s	$fs5, $a0, 20
	fld.s	$fs2, $a0, 24
	fld.s	$fa0, $a0, 32
	fst.s	$fa0, $sp, 64                   # 4-byte Folded Spill
	fld.s	$fa0, $a0, 36
	fst.s	$fa0, $sp, 32                   # 4-byte Folded Spill
	fld.s	$fa0, $a0, 40
	fst.s	$fa0, $sp, 80                   # 4-byte Folded Spill
	ld.b	$a0, $s1, 0
	dbar	20
	bnez	$a0, .LBB0_106
# %bb.120:                              #   in Loop: Header=BB0_109 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_106
# %bb.121:                              #   in Loop: Header=BB0_109 Depth=1
.Ltmp46:                                # EH_LABEL
	fst.s	$fs5, $sp, 12                   # 4-byte Folded Spill
	fst.s	$fs2, $sp, 16                   # 4-byte Folded Spill
	fst.s	$fs0, $sp, 20                   # 4-byte Folded Spill
	fst.s	$fs6, $sp, 24                   # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN11btTransform11getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
	b	.LBB0_105
.LBB0_122:                              #   in Loop: Header=BB0_109 Depth=1
	pcalau12i	$a0, %pc_hi20(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_112
# %bb.123:                              #   in Loop: Header=BB0_109 Depth=1
.Ltmp49:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btTransform11getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.124:                              #   in Loop: Header=BB0_109 Depth=1
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 48
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vst	$vr3, $s5, 48
	pcalau12i	$a0, %pc_hi20(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_112
.LBB0_125:                              #   in Loop: Header=BB0_109 Depth=1
	pcalau12i	$a0, %pc_hi20(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_113
# %bb.126:                              #   in Loop: Header=BB0_109 Depth=1
.Ltmp52:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btTransform11getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.127:                              #   in Loop: Header=BB0_109 Depth=1
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 48
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vst	$vr3, $s5, 48
	pcalau12i	$a0, %pc_hi20(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_113
.LBB0_128:                              #   in Loop: Header=BB0_109 Depth=1
	pcalau12i	$a0, %pc_hi20(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_114
# %bb.129:                              #   in Loop: Header=BB0_109 Depth=1
.Ltmp55:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btTransform11getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.130:                              #   in Loop: Header=BB0_109 Depth=1
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 48
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vst	$vr3, $s5, 48
	pcalau12i	$a0, %pc_hi20(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_114
.LBB0_131:                              #   in Loop: Header=BB0_109 Depth=1
	pcalau12i	$a0, %pc_hi20(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_115
# %bb.132:                              #   in Loop: Header=BB0_109 Depth=1
.Ltmp58:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btTransform11getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.133:                              #   in Loop: Header=BB0_109 Depth=1
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 48
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vst	$vr3, $s5, 48
	pcalau12i	$a0, %pc_hi20(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_115
.LBB0_134:                              #   in Loop: Header=BB0_109 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_117
# %bb.135:                              #   in Loop: Header=BB0_109 Depth=1
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btTransform11getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.136:                              #   in Loop: Header=BB0_109 Depth=1
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 48
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vst	$vr3, $s5, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_117
.LBB0_137:                              #   in Loop: Header=BB0_109 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_118
# %bb.138:                              #   in Loop: Header=BB0_109 Depth=1
.Ltmp40:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btTransform11getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.139:                              #   in Loop: Header=BB0_109 Depth=1
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 48
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vst	$vr3, $s5, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_118
.LBB0_140:                              #   in Loop: Header=BB0_109 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_119
# %bb.141:                              #   in Loop: Header=BB0_109 Depth=1
.Ltmp43:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btTransform11getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.142:                              #   in Loop: Header=BB0_109 Depth=1
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 48
	vst	$vr0, $s5, 0
	vst	$vr1, $s5, 16
	vst	$vr2, $s5, 32
	vst	$vr3, $s5, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_119
.LBB0_143:                              # %.loopexit
	fld.d	$fs7, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 416                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 424                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 432                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 440                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 448                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 456                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 464                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB0_144:
	pcalau12i	$a0, %pc_hi20(_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_20
# %bb.145:
	pcalau12i	$a0, %pc_hi20(_ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis)
	addi.d	$a0, $a0, %pc_lo12(_ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis)
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $a0, 4
	st.w	$a1, $a0, 20
	vst	$vr0, $a0, 24
	st.d	$a1, $a0, 40
	pcalau12i	$a0, %pc_hi20(_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB0_20
.LBB0_146:
.Ltmp45:                                # EH_LABEL
	b	.LBB0_154
.LBB0_147:
.Ltmp42:                                # EH_LABEL
	b	.LBB0_154
.LBB0_148:
.Ltmp39:                                # EH_LABEL
	b	.LBB0_154
.LBB0_149:
.Ltmp60:                                # EH_LABEL
	b	.LBB0_154
.LBB0_150:
.Ltmp57:                                # EH_LABEL
	b	.LBB0_154
.LBB0_151:
.Ltmp54:                                # EH_LABEL
	b	.LBB0_154
.LBB0_152:
.Ltmp51:                                # EH_LABEL
	b	.LBB0_154
.LBB0_153:
.Ltmp48:                                # EH_LABEL
.LBB0_154:                              # %common.resume
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZNK10btSoftBody4Body5xformEvE8identity)
	pcaddu18i	$ra, %call36(__cxa_guard_abort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_155:
.Ltmp33:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB0_171
.LBB0_156:
.Ltmp27:                                # EH_LABEL
	ld.d	$a1, $sp, 248
	move	$fp, $a0
	beqz	$a1, .LBB0_171
# %bb.157:
	ld.b	$a0, $sp, 256
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_171
# %bb.158:
.Ltmp28:                                # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
	b	.LBB0_171
.LBB0_159:
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_160:
.Ltmp22:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB0_170
.LBB0_161:
.Ltmp16:                                # EH_LABEL
	ld.d	$a1, $sp, 176
	move	$fp, $a0
	beqz	$a1, .LBB0_170
# %bb.162:
	ld.b	$a0, $sp, 184
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_170
# %bb.163:
.Ltmp17:                                # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
	b	.LBB0_170
.LBB0_164:
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_165:                              # %.thread
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_166:
.Ltmp5:                                 # EH_LABEL
	b	.LBB0_169
.LBB0_167:
.Ltmp11:                                # EH_LABEL
	b	.LBB0_169
.LBB0_168:
.Ltmp8:                                 # EH_LABEL
.LBB0_169:
	move	$fp, $a0
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN11HullLibraryD2Ev)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
.LBB0_170:                              # %.body
.Ltmp23:                                # EH_LABEL
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN10HullResultD2Ev)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
.LBB0_171:
	beqz	$s2, .LBB0_173
# %bb.172:
.Ltmp34:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
.LBB0_173:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_174:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi, .Lfunc_end0-_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp46-.Ltmp32                #   Call between .Ltmp32 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp49-.Ltmp47                #   Call between .Ltmp47 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin0          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp52-.Ltmp50                #   Call between .Ltmp50 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin0          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp55-.Ltmp53                #   Call between .Ltmp53 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp58-.Ltmp56                #   Call between .Ltmp56 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin0          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp37-.Ltmp59                #   Call between .Ltmp59 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp40-.Ltmp38                #   Call between .Ltmp38 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp28-.Ltmp44                #   Call between .Ltmp44 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp17-.Ltmp29                #   Call between .Ltmp29 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp12-.Ltmp18                #   Call between .Ltmp18 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp35-.Ltmp12                #   Call between .Ltmp12 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Lfunc_end0-.Ltmp35            #   Call between .Ltmp35 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL10drawVertexP12btIDebugDrawRK9btVector3fS3_
	.type	_ZL10drawVertexP12btIDebugDrawRK9btVector3fS3_,@function
_ZL10drawVertexP12btIDebugDrawRK9btVector3fS3_: # @_ZL10drawVertexP12btIDebugDrawRK9btVector3fS3_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	.cfi_offset 57, -48
	move	$s1, $a1
	fld.s	$fa1, $a1, 0
	move	$fp, $a2
	fmov.s	$fs0, $fa0
	move	$s0, $a0
	fld.s	$fa0, $a1, 4
	fsub.s	$fa2, $fa1, $fs0
	fld.s	$fa3, $a1, 8
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fadd.s	$fa1, $fs0, $fa1
	movgr2fr.w	$fs1, $zero
	fadd.s	$fa0, $fa0, $fs1
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa0
	ld.d	$a2, $s0, 0
	bstrins.d	$a0, $a1, 63, 32
	fadd.s	$fa0, $fa3, $fs1
	st.d	$a0, $sp, 16
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s1, 4
	fld.s	$fa1, $s1, 0
	fsub.s	$fa2, $fa0, $fs0
	fld.s	$fa3, $s1, 8
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fadd.s	$fa1, $fa1, $fs1
	fadd.s	$fa0, $fs0, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa0
	ld.d	$a2, $s0, 0
	bstrins.d	$a0, $a1, 63, 32
	fadd.s	$fa0, $fa3, $fs1
	st.d	$a0, $sp, 16
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $s1, 4
	fsub.s	$fa3, $fa0, $fs0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fadd.s	$fa1, $fa1, $fs1
	fadd.s	$fa2, $fa2, $fs1
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	ld.d	$a2, $s0, 0
	bstrins.d	$a0, $a1, 63, 32
	fadd.s	$fa0, $fs0, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	_ZL10drawVertexP12btIDebugDrawRK9btVector3fS3_, .Lfunc_end1-_ZL10drawVertexP12btIDebugDrawRK9btVector3fS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11HullLibraryD2Ev,"axG",@progbits,_ZN11HullLibraryD2Ev,comdat
	.weak	_ZN11HullLibraryD2Ev            # -- Begin function _ZN11HullLibraryD2Ev
	.p2align	5
	.type	_ZN11HullLibraryD2Ev,@function
_ZN11HullLibraryD2Ev:                   # @_ZN11HullLibraryD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	beqz	$a0, .LBB2_3
# %bb.1:
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_3
# %bb.2:
.Ltmp61:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
.LBB2_3:
	ld.d	$a0, $fp, 16
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 36
	beqz	$a0, .LBB2_6
# %bb.4:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_6
# %bb.5:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev.exit
	st.b	$s0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_7:
.Ltmp63:                                # EH_LABEL
	move	$s0, $a0
.Ltmp64:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.8:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_9:
.Ltmp66:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN11HullLibraryD2Ev, .Lfunc_end2-_ZN11HullLibraryD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN11HullLibraryD2Ev,"aG",@progbits,_ZN11HullLibraryD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin1          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp64-.Ltmp62                #   Call between .Ltmp62 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin1          #     jumps to .Ltmp66
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp65-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp65            #   Call between .Ltmp65 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	__clang_call_terminate, .Lfunc_end3-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN10HullResultD2Ev,"axG",@progbits,_ZN10HullResultD2Ev,comdat
	.weak	_ZN10HullResultD2Ev             # -- Begin function _ZN10HullResultD2Ev
	.p2align	5
	.type	_ZN10HullResultD2Ev,@function
_ZN10HullResultD2Ev:                    # @_ZN10HullResultD2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB4_3
# %bb.1:
	ld.b	$a1, $fp, 72
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_3
# %bb.2:
.Ltmp67:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
.LBB4_3:
	ld.d	$a0, $fp, 24
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 72
	st.d	$zero, $fp, 64
	st.d	$zero, $fp, 52
	beqz	$a0, .LBB4_6
# %bb.4:
	ld.b	$a1, $fp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_6
# %bb.5:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
	st.b	$s0, $fp, 32
	st.d	$zero, $fp, 24
	st.d	$zero, $fp, 12
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_7:
.Ltmp69:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 8
.Ltmp70:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI9btVector3ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.8:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_9:
.Ltmp72:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN10HullResultD2Ev, .Lfunc_end4-_ZN10HullResultD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN10HullResultD2Ev,"aG",@progbits,_ZN10HullResultD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp67-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin2          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp70-.Ltmp68                #   Call between .Ltmp68 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin2          #     jumps to .Ltmp72
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp71-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end4-.Ltmp71            #   Call between .Ltmp71 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI9btVector3ED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI9btVector3ED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI9btVector3ED2Ev # -- Begin function _ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI9btVector3ED2Ev,@function
_ZN20btAlignedObjectArrayI9btVector3ED2Ev: # @_ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB5_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB5_3:                                # %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	_ZN20btAlignedObjectArrayI9btVector3ED2Ev, .Lfunc_end5-_ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii
.LCPI6_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii
	.p2align	5
	.type	_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii,@function
_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii: # @_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a6, $a3
	move	$a5, $a2
	move	$a2, $a1
	ld.d	$a1, $a0, 1144
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI6_0)
	lu12i.w	$a0, 260096
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 16
	vst	$vr0, $sp, 0
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 0
	move	$a0, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii, .Lfunc_end6-_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii
.LCPI7_0:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI7_1:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii
	.p2align	5
	.type	_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii,@function
_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii: # @_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a4, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI7_0)
	pcalau12i	$a4, %pc_hi20(.LCPI7_1)
	vld	$vr1, $a4, %pc_lo12(.LCPI7_1)
	ld.d	$a5, $a0, 1208
	move	$a6, $a3
	move	$a7, $a2
	move	$a0, $a1
	vst	$vr0, $sp, 16
	vst	$vr1, $sp, 0
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 0
	move	$a1, $a5
	move	$a2, $zero
	move	$a5, $a7
	pcaddu18i	$ra, %call36(_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii, .Lfunc_end7-_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii
.LCPI8_0:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
.LCPI8_1:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii
	.p2align	5
	.type	_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii,@function
_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii: # @_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a4, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI8_0)
	pcalau12i	$a4, %pc_hi20(.LCPI8_1)
	vld	$vr1, $a4, %pc_lo12(.LCPI8_1)
	ld.d	$a5, $a0, 1272
	move	$a6, $a3
	move	$a7, $a2
	move	$a0, $a1
	vst	$vr0, $sp, 16
	vst	$vr1, $sp, 0
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 0
	move	$a1, $a5
	move	$a2, $zero
	move	$a5, $a7
	pcaddu18i	$ra, %call36(_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii, .Lfunc_end8-_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN17btSoftBodyHelpers9DrawInfosEP10btSoftBodyP12btIDebugDrawbbb # -- Begin function _ZN17btSoftBodyHelpers9DrawInfosEP10btSoftBodyP12btIDebugDrawbbb
	.p2align	5
	.type	_ZN17btSoftBodyHelpers9DrawInfosEP10btSoftBodyP12btIDebugDrawbbb,@function
_ZN17btSoftBodyHelpers9DrawInfosEP10btSoftBodyP12btIDebugDrawbbb: # @_ZN17btSoftBodyHelpers9DrawInfosEP10btSoftBodyP12btIDebugDrawbbb
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	addi.d	$sp, $sp, -1120
	.cfi_def_cfa_offset 3152
	move	$fp, $a0
	ld.w	$a0, $a0, 820
	blez	$a0, .LBB9_16
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	beqz	$a2, .LBB9_7
# %bb.2:                                # %.lr.ph.split.us
	beqz	$a3, .LBB9_12
# %bb.3:                                # %.lr.ph.split.us.split.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s2, $a0, %pc_lo12(.L.str.1)
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                #   in Loop: Header=BB9_5 Depth=1
	ld.w	$a0, $fp, 820
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 120
	bge	$s4, $a0, .LBB9_16
.LBB9_5:                                # %.lr.ph.split.us.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $fp, 832
	addi.d	$a0, $sp, 1040
	ori	$a2, $zero, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s5, $s5, $s3
	fld.s	$fa0, $s5, 96
	frecip.s	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1040
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s5, 100
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1040
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 1040
	beqz	$a0, .LBB9_4
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 80
	addi.d	$a1, $s5, 16
	addi.d	$a2, $sp, 1040
	move	$a0, $s0
	jirl	$ra, $a3, 0
	b	.LBB9_4
.LBB9_7:                                # %.lr.ph.split
	beqz	$a3, .LBB9_16
# %bb.8:                                # %.lr.ph.split.split.us.preheader
	ori	$s2, $zero, 100
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	move	$s3, $zero
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_9:                                #   in Loop: Header=BB9_10 Depth=1
	ld.w	$a0, $fp, 820
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 120
	bge	$s3, $a0, .LBB9_16
.LBB9_10:                               # %.lr.ph.split.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $fp, 832
	addi.d	$a0, $sp, 1040
	ori	$a2, $zero, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	fldx.s	$fa0, $s4, $s2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1040
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 1040
	beqz	$a0, .LBB9_9
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 80
	add.d	$a0, $s4, $s2
	addi.d	$a1, $a0, -84
	addi.d	$a2, $sp, 1040
	move	$a0, $s0
	jirl	$ra, $a3, 0
	b	.LBB9_9
.LBB9_12:                               # %.lr.ph.split.us.split.preheader
	ori	$s2, $zero, 96
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	move	$s3, $zero
	b	.LBB9_14
	.p2align	4, , 16
.LBB9_13:                               #   in Loop: Header=BB9_14 Depth=1
	ld.w	$a0, $fp, 820
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 120
	bge	$s3, $a0, .LBB9_16
.LBB9_14:                               # %.lr.ph.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $fp, 832
	addi.d	$a0, $sp, 1040
	ori	$a2, $zero, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	fldx.s	$fa0, $s4, $s2
	frecip.s	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1040
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 1040
	beqz	$a0, .LBB9_13
# %bb.15:                               #   in Loop: Header=BB9_14 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 80
	add.d	$a0, $s4, $s2
	addi.d	$a1, $a0, -80
	addi.d	$a2, $sp, 1040
	move	$a0, $s0
	jirl	$ra, $a3, 0
	b	.LBB9_13
.LBB9_16:                               # %._crit_edge
	addi.d	$sp, $sp, 1120
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end9:
	.size	_ZN17btSoftBodyHelpers9DrawInfosEP10btSoftBodyP12btIDebugDrawbbb, .Lfunc_end9-_ZN17btSoftBodyHelpers9DrawInfosEP10btSoftBodyP12btIDebugDrawbbb
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii
	.type	_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii,@function
_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii: # @_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB10_8
# %bb.1:
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
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
	ld.d	$a7, $a1, 48
	beqz	$a7, .LBB10_5
# %bb.2:
	blt	$a2, $a6, .LBB10_4
# %bb.3:
	bgez	$a6, .LBB10_5
.LBB10_4:
	ld.d	$a7, $a1, 40
	addi.w	$s3, $a2, 1
	move	$fp, $a0
	move	$s5, $a1
	move	$a1, $a7
	move	$s6, $a2
	move	$a2, $s3
	move	$s0, $a3
	move	$s1, $a4
	move	$s2, $a5
	move	$s4, $a6
	pcaddu18i	$ra, %call36(_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 48
	move	$a0, $fp
	move	$a2, $s3
	move	$a3, $s0
	move	$a4, $s1
	move	$a5, $s2
	move	$a6, $s4
	pcaddu18i	$ra, %call36(_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii)
	jirl	$ra, $ra, 0
	move	$a2, $s6
	move	$a5, $s2
	move	$a1, $s5
	move	$a3, $s0
	move	$a4, $s1
	move	$a0, $fp
.LBB10_5:
	blt	$a2, $a5, .LBB10_7
# %bb.6:
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 16
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 20
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a1, 24
	ld.d	$a1, $a1, 48
	fadd.s	$fa6, $fa0, $fa1
	fadd.s	$fa7, $fa2, $fa3
	fadd.s	$ft0, $fa4, $fa5
	vldi	$vr9, -1184
	fmul.s	$fa6, $fa6, $ft1
	fmul.s	$fa7, $fa7, $ft1
	fmul.s	$ft0, $ft0, $ft1
	fsub.s	$fa0, $fa1, $fa0
	fsub.s	$fa1, $fa3, $fa2
	fsub.s	$fa2, $fa5, $fa4
	fmul.s	$fa0, $fa0, $ft1
	fmul.s	$fa1, $fa1, $ft1
	fmul.s	$fa2, $fa2, $ft1
	fsub.s	$fa3, $fa6, $fa0
	fsub.s	$fa4, $fa7, $fa1
	fsub.s	$fa5, $ft0, $fa2
	fadd.s	$fa0, $fa6, $fa0
	fadd.s	$fa1, $fa7, $fa1
	fadd.s	$fa2, $ft0, $fa2
	sltui	$a1, $a1, 1
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a4, $a1
	or	$fp, $a1, $a2
	fst.s	$fa3, $sp, 16
	fst.s	$fa4, $sp, 20
	fst.s	$fa5, $sp, 24
	st.w	$zero, $sp, 28
	addi.d	$s2, $sp, 32
	fst.s	$fa0, $sp, 32
	fst.s	$fa4, $sp, 36
	fst.s	$fa5, $sp, 40
	st.w	$zero, $sp, 44
	addi.d	$s1, $sp, 48
	fst.s	$fa0, $sp, 48
	fst.s	$fa1, $sp, 52
	fst.s	$fa5, $sp, 56
	st.w	$zero, $sp, 60
	addi.d	$s0, $sp, 64
	fst.s	$fa3, $sp, 64
	fst.s	$fa1, $sp, 68
	fst.s	$fa5, $sp, 72
	st.w	$zero, $sp, 76
	addi.d	$s3, $sp, 80
	fst.s	$fa3, $sp, 80
	fst.s	$fa4, $sp, 84
	fst.s	$fa2, $sp, 88
	st.w	$zero, $sp, 92
	fst.s	$fa0, $sp, 96
	fst.s	$fa4, $sp, 100
	fst.s	$fa2, $sp, 104
	st.w	$zero, $sp, 108
	fst.s	$fa0, $sp, 112
	fst.s	$fa1, $sp, 116
	fst.s	$fa2, $sp, 120
	st.w	$zero, $sp, 124
	fst.s	$fa3, $sp, 128
	ld.d	$a1, $a0, 0
	fst.s	$fa1, $sp, 132
	fst.s	$fa2, $sp, 136
	st.w	$zero, $sp, 140
	ld.d	$a4, $a1, 40
	addi.d	$s7, $sp, 96
	addi.d	$s6, $sp, 112
	addi.d	$s4, $sp, 128
	addi.d	$a1, $sp, 16
	move	$s5, $a0
	move	$a2, $s2
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	addi.d	$a2, $sp, 16
	move	$a0, $s5
	move	$a1, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s7
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s5
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s4
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	addi.d	$a1, $sp, 16
	move	$a0, $s5
	move	$a2, $s3
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $s7
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $fp
	jirl	$ra, $a4, 0
.LBB10_7:
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
.LBB10_8:
	ret
.Lfunc_end10:
	.size	_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii, .Lfunc_end10-_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw
.LCPI11_0:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI11_1:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI11_2:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI11_3:
	.word	0xbdcccccd                      # float -0.100000001
.LCPI11_4:
	.word	0x3dcccccd                      # float 0.100000001
	.text
	.globl	_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw
	.p2align	5
	.type	_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw,@function
_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw: # @_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 136                  # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.bu	$a0, $a0, 537
	beqz	$a0, .LBB11_4
# %bb.1:
	move	$s0, $a1
	vld	$vr0, $fp, 608
	vst	$vr0, $sp, 80
	fld.s	$fa0, $fp, 672
	fld.s	$fa1, $fp, 688
	fld.s	$fa2, $fp, 628
	fld.s	$fa3, $fp, 624
	fld.s	$fa4, $fp, 704
	fld.s	$fa5, $fp, 632
	fmul.s	$fa6, $fa1, $fa2
	fld.s	$fa7, $fp, 692
	fmadd.s	$fa6, $fa0, $fa3, $fa6
	fmadd.s	$fs5, $fa4, $fa5, $fa6
	fld.s	$fa6, $fp, 676
	fmul.s	$ft0, $fa2, $fa7
	fld.s	$ft1, $fp, 708
	fld.s	$ft2, $fp, 696
	fld.s	$ft3, $fp, 680
	fmadd.s	$ft0, $fa6, $fa3, $ft0
	fmadd.s	$fs6, $ft1, $fa5, $ft0
	fmul.s	$fa2, $fa2, $ft2
	fmadd.s	$fa2, $ft3, $fa3, $fa2
	fld.s	$fa3, $fp, 712
	fld.s	$ft0, $fp, 644
	fld.s	$ft4, $fp, 640
	fld.s	$ft5, $fp, 648
	fmadd.s	$fs4, $fa3, $fa5, $fa2
	fmul.s	$fa2, $fa1, $ft0
	fmadd.s	$fa2, $fa0, $ft4, $fa2
	fmadd.s	$fs2, $fa4, $ft5, $fa2
	fmul.s	$fa2, $fa7, $ft0
	fmadd.s	$fa2, $fa6, $ft4, $fa2
	fmadd.s	$fs7, $ft1, $ft5, $fa2
	fmul.s	$fa2, $ft2, $ft0
	fmadd.s	$fa2, $ft3, $ft4, $fa2
	fld.s	$fa5, $fp, 660
	fld.s	$ft0, $fp, 656
	fld.s	$ft4, $fp, 664
	fmadd.s	$ft5, $fa3, $ft5, $fa2
	fmul.s	$fa1, $fa1, $fa5
	fmadd.s	$fa0, $fa0, $ft0, $fa1
	fmadd.s	$ft6, $fa4, $ft4, $fa0
	fmul.s	$fa0, $fa7, $fa5
	fmadd.s	$fa0, $fa6, $ft0, $fa0
	fmadd.s	$ft1, $ft1, $ft4, $fa0
	fmul.s	$fa0, $ft2, $fa5
	fmadd.s	$fa0, $ft3, $ft0, $fa0
	fmadd.s	$ft2, $fa3, $ft4, $fa0
	movgr2fr.w	$ft3, $zero
	fmul.s	$fa0, $fs6, $ft3
	fadd.s	$fa1, $fs5, $fa0
	fmadd.s	$fa1, $fs4, $ft3, $fa1
	fmul.s	$fa2, $fs7, $ft3
	fadd.s	$fa3, $fs2, $fa2
	fmadd.s	$fa3, $ft5, $ft3, $fa3
	fmul.s	$fa4, $ft1, $ft3
	fadd.s	$fa5, $ft6, $fa4
	fmadd.s	$fa5, $ft2, $ft3, $fa5
	fmul.s	$fa6, $fa3, $fa3
	fmadd.s	$fa6, $fa1, $fa1, $fa6
	fmadd.s	$fa6, $fa5, $fa5, $fa6
	frsqrt.s	$fa6, $fa6
	fmul.s	$fa1, $fa1, $fa6
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fmadd.s	$fa6, $fs5, $ft3, $fs6
	fmadd.s	$fa6, $fs4, $ft3, $fa6
	fmadd.s	$fa7, $fs2, $ft3, $fs7
	fmadd.s	$fa7, $ft5, $ft3, $fa7
	fst.s	$ft1, $sp, 52                   # 4-byte Folded Spill
	fmadd.s	$ft0, $ft6, $ft3, $ft1
	fmadd.s	$ft0, $ft2, $ft3, $ft0
	fmul.s	$ft1, $fa7, $fa7
	fmadd.s	$ft1, $fa6, $fa6, $ft1
	fmadd.s	$ft1, $ft0, $ft0, $ft1
	frsqrt.s	$ft1, $ft1
	fmul.s	$fs1, $fa6, $ft1
	fmul.s	$fs0, $fa7, $ft1
	fmul.s	$fs3, $ft0, $ft1
	fmadd.s	$fa0, $fs5, $ft3, $fa0
	fadd.s	$fa0, $fa0, $fs4
	fmadd.s	$fa2, $fs2, $ft3, $fa2
	fst.s	$ft5, $sp, 60                   # 4-byte Folded Spill
	fadd.s	$fa2, $ft5, $fa2
	fst.s	$ft6, $sp, 56                   # 4-byte Folded Spill
	fst.s	$ft3, $sp, 44                   # 4-byte Folded Spill
	fmadd.s	$fa4, $ft6, $ft3, $fa4
	fst.s	$ft2, $sp, 48                   # 4-byte Folded Spill
	fadd.s	$fa4, $ft2, $fa4
	fmul.s	$fa6, $fa2, $fa2
	fmadd.s	$fa6, $fa0, $fa0, $fa6
	fmadd.s	$fa6, $fa4, $fa4, $fa6
	frsqrt.s	$fa6, $fa6
	fmul.s	$fa0, $fa0, $fa6
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fmul.s	$fa0, $fa2, $fa6
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fmul.s	$fa0, $fa4, $fa6
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	fld.s	$fa0, $sp, 80
	vldi	$vr4, -1244
	fmul.s	$fa1, $fa1, $fa4
	fld.s	$fa2, $sp, 84
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $sp, 88
	fmul.s	$fa3, $fa3, $fa4
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa3, $fa5, $fa4
	fadd.s	$fa1, $fa1, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 120
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI11_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI11_0)
	movfr2gr.s	$a1, $fa1
	ld.d	$a4, $a0, 40
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 128
	vst	$vr0, $sp, 96
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 96
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 80
	vldi	$vr3, -1244
	fmul.s	$fa1, $fs1, $fa3
	fld.s	$fa2, $sp, 84
	fadd.s	$fa0, $fa1, $fa0
	fld.s	$fa1, $sp, 88
	fmul.s	$fa3, $fs0, $fa3
	vldi	$vr4, -1244
	fadd.s	$fa2, $fa3, $fa2
	fmul.s	$fa3, $fs3, $fa4
	fadd.s	$fa1, $fa3, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 120
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI11_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI11_1)
	movfr2gr.s	$a1, $fa1
	ld.d	$a4, $a0, 40
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 128
	vst	$vr0, $sp, 96
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 96
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 28                   # 4-byte Folded Reload
	vldi	$vr2, -1244
	fmul.s	$fa0, $fa0, $fa2
	fld.s	$fa1, $sp, 20                   # 4-byte Folded Reload
	fmul.s	$fa1, $fa1, $fa2
	vldi	$vr6, -1244
	fld.s	$fa2, $sp, 80
	fld.s	$fa3, $sp, 84
	fld.s	$fa4, $sp, 88
	fld.s	$fa5, $sp, 36                   # 4-byte Folded Reload
	fmul.s	$fa5, $fa5, $fa6
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa2, $fa5, $fa4
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 120
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI11_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI11_2)
	movfr2gr.s	$a1, $fa2
	ld.d	$a4, $a0, 40
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 128
	vst	$vr0, $sp, 96
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 96
	move	$a0, $s0
	jirl	$ra, $a4, 0
	ld.w	$a0, $fp, 548
	blez	$a0, .LBB11_4
# %bb.2:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI11_3)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI11_3)
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI11_4)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI11_4)
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	move	$s1, $zero
	move	$s2, $zero
	lu12i.w	$s3, 260096
	fst.s	$fs2, $sp, 40                   # 4-byte Folded Spill
	fst.s	$fs4, $sp, 32                   # 4-byte Folded Spill
	fst.s	$fs6, $sp, 24                   # 4-byte Folded Spill
	.p2align	4, , 16
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 560
	add.d	$a1, $a0, $s1
	fld.s	$fa0, $a1, 4
	fldx.s	$fa1, $a0, $s1
	fld.s	$fa2, $a1, 8
	fmul.s	$fa3, $fs6, $fa0
	fmadd.s	$fa3, $fs5, $fa1, $fa3
	fmadd.s	$fa3, $fs4, $fa2, $fa3
	fmul.s	$fa4, $fs7, $fa0
	fmadd.s	$fa4, $fs2, $fa1, $fa4
	fld.s	$fa5, $sp, 60                   # 4-byte Folded Reload
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fld.s	$fa5, $sp, 52                   # 4-byte Folded Reload
	fmul.s	$fa0, $fa5, $fa0
	fld.s	$fa5, $sp, 56                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa5, $fa1, $fa0
	fld.s	$fa1, $sp, 80
	fld.s	$fa5, $sp, 84
	fld.s	$fa6, $sp, 88
	fld.s	$fa7, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa7, $fa2, $fa0
	fmov.s	$fs2, $fs7
	fadd.s	$fs7, $fa1, $fa3
	fmov.s	$fs6, $fs5
	fadd.s	$fs5, $fa5, $fa4
	fadd.s	$fs3, $fa0, $fa6
	movfr2gr.s	$s4, $fs7
	movfr2gr.s	$s5, $fs5
	movfr2gr.s	$a0, $fs3
	bstrpick.d	$s7, $a0, 31, 0
	vreplgr2vr.d	$vr0, $s3
	vst	$vr0, $sp, 64
	fld.s	$fs0, $sp, 36                   # 4-byte Folded Reload
	fadd.s	$fa0, $fs7, $fs0
	movfr2gr.s	$a0, $fa0
	bstrins.d	$a0, $s5, 63, 32
	st.d	$a0, $sp, 120
	st.d	$s7, $sp, 128
	fld.s	$fs1, $sp, 28                   # 4-byte Folded Reload
	fadd.s	$fa0, $fs7, $fs1
	fld.s	$fs4, $sp, 44                   # 4-byte Folded Reload
	fadd.s	$fa1, $fs5, $fs4
	fadd.s	$fa2, $fs3, $fs4
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $s0, 0
	movfr2gr.s	$s6, $fa1
	bstrins.d	$a0, $s6, 63, 32
	st.d	$a0, $sp, 96
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$s8, $a0, 31, 0
	st.d	$s8, $sp, 104
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 64
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fadd.s	$fa0, $fs5, $fs0
	movfr2gr.s	$a0, $fa0
	move	$a1, $s4
	bstrins.d	$a1, $a0, 63, 32
	st.d	$a1, $sp, 120
	st.d	$s7, $sp, 128
	fadd.s	$fa0, $fs7, $fs4
	fmov.s	$fs7, $fs2
	ld.d	$a0, $s0, 0
	fadd.s	$fa1, $fs5, $fs1
	fmov.s	$fs5, $fs6
	fld.s	$fs6, $sp, 24                   # 4-byte Folded Reload
	fld.s	$fs4, $sp, 32                   # 4-byte Folded Reload
	fld.s	$fs2, $sp, 40                   # 4-byte Folded Reload
	movfr2gr.s	$s7, $fa0
	movfr2gr.s	$a1, $fa1
	move	$a2, $s7
	ld.d	$a4, $a0, 40
	bstrins.d	$a2, $a1, 63, 32
	st.d	$a2, $sp, 96
	st.d	$s8, $sp, 104
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 64
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fadd.s	$fa0, $fs3, $fs0
	bstrins.d	$s4, $s5, 63, 32
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$s4, $sp, 120
	st.d	$a0, $sp, 128
	ld.d	$a0, $s0, 0
	fadd.s	$fa0, $fs3, $fs1
	bstrins.d	$s7, $s6, 63, 32
	movfr2gr.s	$a1, $fa0
	ld.d	$a4, $a0, 40
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$s7, $sp, 96
	st.d	$a0, $sp, 104
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 64
	move	$a0, $s0
	jirl	$ra, $a4, 0
	ld.w	$a0, $fp, 548
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 16
	blt	$s2, $a0, .LBB11_3
.LBB11_4:
	fld.d	$fs7, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end11:
	.size	_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw, .Lfunc_end11-_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw
	.cfi_endproc
                                        # -- End function
	.globl	_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii # -- Begin function _ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii
	.p2align	5
	.type	_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii,@function
_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii: # @_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %.loopexit
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
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
	move	$s1, $a4
	move	$s0, $a3
	move	$s5, $a2
	move	$s6, $a1
	move	$s4, $a0
	addi.w	$fp, $a3, 2
	slti	$s3, $a3, -2
	slli.d	$a0, $fp, 4
	addi.w	$s7, $zero, -1
	maskeqz	$s8, $s7, $s3
	masknez	$a0, $a0, $s3
	or	$a0, $s8, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	slli.d	$a0, $fp, 2
	masknez	$a0, $a0, $s3
	or	$a0, $s8, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blt	$s0, $s7, .LBB12_8
# %bb.1:                                # %.lr.ph
	addi.d	$a0, $s0, 1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa3, $a0
	fld.s	$fa0, $s6, 0
	fld.s	$fa4, $s5, 0
	fld.s	$fa1, $s6, 4
	fld.s	$fa5, $s5, 4
	fld.s	$fa2, $s6, 8
	fld.s	$fa6, $s5, 8
	ffint.s.l	$fa3, $fa3
	fsub.s	$fa4, $fa4, $fa0
	fsub.s	$fa5, $fa5, $fa1
	fsub.s	$fa6, $fa6, $fa2
	ori	$a0, $zero, 1
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a2, $a1, $a0
	lu12i.w	$a0, 524287
	ori	$a1, $a0, 4093
	lu12i.w	$a0, 260096
	bgeu	$a1, $s0, .LBB12_3
# %bb.2:
	move	$a1, $zero
	b	.LBB12_6
.LBB12_3:                               # %vector.ph
	bstrpick.d	$a1, $a2, 30, 1
	slli.d	$a1, $a1, 1
	vori.b	$vr7, $vr3, 0
	vextrins.w	$vr7, $vr3, 16
	vori.b	$vr8, $vr0, 0
	vextrins.w	$vr8, $vr0, 16
	vori.b	$vr9, $vr4, 0
	vextrins.w	$vr9, $vr4, 16
	vori.b	$vr10, $vr1, 0
	vextrins.w	$vr10, $vr1, 16
	vori.b	$vr11, $vr5, 0
	vextrins.w	$vr11, $vr5, 16
	vori.b	$vr12, $vr2, 0
	vextrins.w	$vr12, $vr2, 16
	vori.b	$vr13, $vr6, 0
	vextrins.w	$vr13, $vr6, 16
	addi.d	$a3, $s2, 16
	ori	$a4, $zero, 0
	lu32i.d	$a4, 1
	vreplgr2vr.d	$vr14, $a4
	vrepli.b	$vr15, 0
	vreplgr2vr.w	$vr16, $a0
	move	$a4, $a1
	move	$a5, $s3
	.p2align	4, , 16
.LBB12_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vffint.s.wu	$vr17, $vr14
	vfdiv.s	$vr17, $vr17, $vr7
	vfmadd.s	$vr18, $vr9, $vr17, $vr8
	vfmadd.s	$vr19, $vr11, $vr17, $vr10
	vfmadd.s	$vr17, $vr13, $vr17, $vr12
	vshuf4i.w	$vr19, $vr19, 16
	vslli.d	$vr19, $vr19, 32
	vilvl.w	$vr18, $vr15, $vr18
	vor.v	$vr18, $vr19, $vr18
	vpickve2gr.d	$a6, $vr17, 0
	srli.d	$a7, $a6, 32
	bstrpick.d	$a6, $a6, 31, 0
	vstelm.d	$vr18, $a3, -16, 0
	vstelm.d	$vr18, $a3, 0, 1
	st.d	$a6, $a3, -8
	st.d	$a7, $a3, 8
	vstelm.d	$vr16, $a5, 0, 0
	vaddi.wu	$vr14, $vr14, 2
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, -2
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB12_4
# %bb.5:                                # %middle.block
	beq	$a1, $a2, .LBB12_8
.LBB12_6:                               # %scalar.ph.preheader
	alsl.d	$a3, $a1, $s3, 2
	alsl.d	$a4, $a1, $s2, 4
	addi.d	$a4, $a4, 8
	sub.d	$a2, $a2, $a1
	.p2align	4, , 16
.LBB12_7:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a1, 31, 0
	movgr2fr.d	$fa7, $a5
	ffint.s.l	$fa7, $fa7
	fdiv.s	$fa7, $fa7, $fa3
	fmadd.s	$ft0, $fa4, $fa7, $fa0
	fmadd.s	$ft1, $fa5, $fa7, $fa1
	fmadd.s	$fa7, $fa6, $fa7, $fa2
	movfr2gr.s	$a5, $ft0
	movfr2gr.s	$a6, $ft1
	bstrins.d	$a5, $a6, 63, 32
	movfr2gr.s	$a6, $fa7
	bstrpick.d	$a6, $a6, 31, 0
	st.d	$a5, $a4, -8
	st.d	$a6, $a4, 0
	st.w	$a0, $a3, 0
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB12_7
.LBB12_8:                               # %._crit_edge
	ori	$a0, $zero, 1496
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.Ltmp73:                                # EH_LABEL
	move	$a1, $s4
	move	$a2, $fp
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.9:
	andi	$a0, $s1, 1
	beqz	$a0, .LBB12_11
# %bb.10:
	movgr2fr.w	$fa0, $zero
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
.LBB12_11:
	andi	$a0, $s1, 2
	beqz	$a0, .LBB12_13
# %bb.12:
	addi.w	$a1, $s0, 1
	movgr2fr.w	$fa0, $zero
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
.LBB12_13:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	bltz	$s0, .LBB12_16
# %bb.14:                               # %.lr.ph40.preheader
	ori	$a0, $zero, 2
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s0, $a1, $a0
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB12_15:                              # %.lr.ph40
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $fp, -1
	move	$a0, $s5
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 1
	bne	$s0, $fp, .LBB12_15
.LBB12_16:                              # %._crit_edge41
	move	$a0, $s5
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.LBB12_17:
.Ltmp75:                                # EH_LABEL
	move	$fp, $a0
.Ltmp76:                                # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.18:                               # %_ZN17btCollisionObjectdlEPv.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_19:
.Ltmp78:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii, .Lfunc_end12-_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp73-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin3          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp76-.Ltmp74                #   Call between .Ltmp74 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin3          #     jumps to .Ltmp78
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp77-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Lfunc_end12-.Ltmp77           #   Call between .Ltmp77 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btSoftBodyHelpers11CreatePatchER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiib
.LCPI13_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	_ZN17btSoftBodyHelpers11CreatePatchER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiib
	.p2align	5
	.type	_ZN17btSoftBodyHelpers11CreatePatchER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiib,@function
_ZN17btSoftBodyHelpers11CreatePatchER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiib: # @_ZN17btSoftBodyHelpers11CreatePatchER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiib
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 72                   # 8-byte Folded Spill
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
	ori	$t0, $zero, 2
	move	$s6, $zero
	blt	$a5, $t0, .LBB13_32
# %bb.1:
	move	$fp, $a6
	blt	$a6, $t0, .LBB13_32
# %bb.2:                                # %.lr.ph.us.preheader
	move	$s7, $a7
	move	$s0, $a5
	move	$s1, $a4
	move	$s4, $a3
	move	$s8, $a2
	move	$s5, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 224
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	mul.w	$s3, $fp, $a5
	slli.d	$a0, $s3, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $zero
	addi.d	$a1, $fp, -1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa1, $s5, 0
	fld.s	$fa0, $s4, 0
	fld.s	$fa4, $s5, 4
	fld.s	$fa2, $s4, 4
	movgr2fr.d	$fa3, $a1
	ffint.s.l	$fa3, $fa3
	fst.s	$fa3, $sp, 48                   # 4-byte Folded Spill
	fst.s	$fa1, $sp, 56                   # 4-byte Folded Spill
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 44                   # 4-byte Folded Spill
	fst.s	$fa4, $sp, 52                   # 4-byte Folded Spill
	fsub.s	$fa0, $fa2, $fa4
	fst.s	$fa0, $sp, 40                   # 4-byte Folded Spill
	fld.s	$fa5, $s5, 8
	fld.s	$fa0, $s4, 8
	fld.s	$fa6, $s8, 0
	fld.s	$fa2, $s1, 0
	fld.s	$fa7, $s8, 4
	fld.s	$ft3, $s1, 4
	fld.s	$ft0, $s8, 8
	fld.s	$ft4, $s1, 8
	fsub.s	$ft1, $fa0, $fa5
	fsub.s	$ft2, $fa2, $fa6
	fsub.s	$ft3, $ft3, $fa7
	fsub.s	$ft4, $ft4, $ft0
	addi.d	$s1, $s0, -1
	bstrpick.d	$a1, $s1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$ft5, $fa0
	bstrpick.d	$a4, $s0, 30, 1
	slli.d	$a1, $a4, 1
	vori.b	$vr14, $vr13, 0
	vextrins.w	$vr14, $vr13, 16
	slli.d	$a2, $a4, 5
	add.d	$a2, $a2, $s2
	addi.d	$a2, $a2, 8
	slli.d	$a3, $s0, 4
	alsl.d	$a4, $a4, $s3, 3
	slli.d	$a5, $s0, 2
	move	$a6, $s0
	bstrins.d	$a6, $zero, 30, 1
	pcalau12i	$a7, %pc_hi20(.LCPI13_0)
	vld	$vr2, $a7, %pc_lo12(.LCPI13_0)
	ori	$a7, $zero, 0
	lu32i.d	$a7, 1
	vreplgr2vr.d	$vr0, $a7
	vrepli.b	$vr17, 0
	lu12i.w	$a7, 260096
	vreplgr2vr.w	$vr18, $a7
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a2, $a2, $a3
	add.d	$a4, $a4, $a5
	beq	$a0, $fp, .LBB13_9
.LBB13_4:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_5 Depth 2
                                        #     Child Loop BB13_8 Depth 2
	bstrpick.d	$t0, $a0, 31, 0
	movgr2fr.d	$ft7, $t0
	ffint.s.l	$ft7, $ft7
	fld.s	$fa1, $sp, 48                   # 4-byte Folded Reload
	fdiv.s	$ft7, $ft7, $fa1
	fld.s	$fa1, $sp, 56                   # 4-byte Folded Reload
	fld.s	$fa3, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$ft11, $fa3, $ft7, $fa1
	fld.s	$fa1, $sp, 52                   # 4-byte Folded Reload
	fld.s	$fa3, $sp, 40                   # 4-byte Folded Reload
	fmadd.s	$ft12, $fa3, $ft7, $fa1
	fmadd.s	$ft13, $ft1, $ft7, $fa5
	fmadd.s	$ft8, $ft2, $ft7, $fa6
	fmadd.s	$ft15, $ft3, $ft7, $fa7
	fmadd.s	$ft7, $ft4, $ft7, $ft0
	fsub.s	$ft14, $ft8, $ft11
	fsub.s	$ft15, $ft15, $ft12
	fsub.s	$fs0, $ft7, $ft13
	mul.d	$t0, $a0, $s0
	vori.b	$vr25, $vr19, 0
	vextrins.w	$vr25, $vr19, 16
	vori.b	$vr26, $vr20, 0
	vextrins.w	$vr26, $vr20, 16
	vori.b	$vr27, $vr21, 0
	vextrins.w	$vr27, $vr21, 16
	vori.b	$vr28, $vr22, 0
	vextrins.w	$vr28, $vr22, 16
	vori.b	$vr29, $vr23, 0
	vextrins.w	$vr29, $vr23, 16
	vori.b	$vr30, $vr24, 0
	vextrins.w	$vr30, $vr24, 16
	vreplgr2vr.d	$vr31, $t0
	move	$t0, $a1
	vori.b	$vr15, $vr2, 0
	vori.b	$vr16, $vr0, 0
	.p2align	4, , 16
.LBB13_5:                               # %vector.body
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vffint.s.wu	$vr3, $vr16
	vfdiv.s	$vr3, $vr3, $vr14
	vfmadd.s	$vr4, $vr28, $vr3, $vr25
	vfmadd.s	$vr1, $vr29, $vr3, $vr26
	vfmadd.s	$vr3, $vr30, $vr3, $vr27
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vilvl.w	$vr4, $vr17, $vr4
	vor.v	$vr1, $vr1, $vr4
	vpickve2gr.d	$t1, $vr3, 0
	srli.d	$t2, $t1, 32
	bstrpick.d	$t1, $t1, 31, 0
	vadd.d	$vr3, $vr15, $vr31
	vpickve2gr.d	$t3, $vr3, 0
	alsl.d	$t4, $t3, $s2, 4
	vpickve2gr.d	$t5, $vr3, 1
	alsl.d	$t5, $t5, $s2, 4
	vstelm.d	$vr1, $t4, 0, 0
	vstelm.d	$vr1, $t5, 0, 1
	st.d	$t1, $t4, 8
	st.d	$t2, $t5, 8
	alsl.d	$t1, $t3, $s3, 2
	vstelm.d	$vr18, $t1, 0, 0
	vaddi.du	$vr15, $vr15, 2
	addi.d	$t0, $t0, -2
	vaddi.wu	$vr16, $vr16, 2
	bnez	$t0, .LBB13_5
# %bb.6:                                # %middle.block
                                        #   in Loop: Header=BB13_4 Depth=1
	beq	$s0, $a1, .LBB13_3
# %bb.7:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$t0, $a6
	move	$t1, $a1
	move	$t2, $a4
	move	$t3, $a2
	.p2align	4, , 16
.LBB13_8:                               # %scalar.ph
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t1, 31, 0
	movgr2fr.d	$fa1, $t4
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $ft5
	fmadd.s	$fa3, $ft14, $fa1, $ft11
	fmadd.s	$fa4, $ft15, $fa1, $ft12
	fmadd.s	$fa1, $fs0, $fa1, $ft13
	movfr2gr.s	$t4, $fa3
	movfr2gr.s	$t5, $fa4
	bstrins.d	$t4, $t5, 63, 32
	movfr2gr.s	$t5, $fa1
	bstrpick.d	$t5, $t5, 31, 0
	st.d	$t4, $t3, -8
	st.d	$t5, $t3, 0
	st.w	$a7, $t2, 0
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, 4
	addi.d	$t0, $t0, -1
	addi.w	$t1, $t1, 1
	bnez	$t0, .LBB13_8
	b	.LBB13_3
.LBB13_9:                               # %._crit_edge188
	ori	$a0, $zero, 1496
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.Ltmp79:                                # EH_LABEL
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.10:
	andi	$a0, $s7, 1
	bnez	$a0, .LBB13_33
# %bb.11:
	andi	$a0, $s7, 2
	bnez	$a0, .LBB13_34
.LBB13_12:
	andi	$a0, $s7, 4
	bnez	$a0, .LBB13_35
.LBB13_13:
	andi	$a0, $s7, 8
	beqz	$a0, .LBB13_15
.LBB13_14:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a0, $a0, $s0
	add.d	$a0, $s0, $a0
	addi.w	$a1, $a0, -1
	movgr2fr.w	$fa0, $zero
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
.LBB13_15:                              # %.preheader.us.preheader
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	move	$s8, $zero
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	b	.LBB13_17
	.p2align	4, , 16
.LBB13_16:                              # %._crit_edge.us197
                                        #   in Loop: Header=BB13_17 Depth=1
	add.d	$s5, $s5, $s0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$s8, $a0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $fp, .LBB13_32
.LBB13_17:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_30 Depth 2
                                        #     Child Loop BB13_22 Depth 2
	addi.w	$a0, $s8, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bge	$a0, $fp, .LBB13_28
# %bb.18:                               # %.lr.ph.split.us.us.preheader
                                        #   in Loop: Header=BB13_17 Depth=1
	move	$fp, $zero
	add.d	$s7, $s0, $s5
	b	.LBB13_22
	.p2align	4, , 16
.LBB13_19:                              # %.thread.us.us.critedge
                                        #   in Loop: Header=BB13_22 Depth=2
	add.w	$a2, $s7, $s4
	move	$a0, $s6
	move	$a1, $s1
.LBB13_20:                              # %.thread.us.us
                                        #   in Loop: Header=BB13_22 Depth=2
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.LBB13_21:                              # %.thread.us.us
                                        #   in Loop: Header=BB13_22 Depth=2
	beq	$s0, $fp, .LBB13_16
.LBB13_22:                              # %.lr.ph.split.us.us
                                        #   Parent Loop BB13_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s4, $fp
	addi.w	$fp, $fp, 1
	add.w	$s1, $s5, $s4
	bge	$fp, $s0, .LBB13_19
# %bb.23:                               #   in Loop: Header=BB13_22 Depth=2
	addi.w	$s2, $s1, 1
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
	add.w	$s3, $s7, $s4
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
	add.d	$a0, $s8, $s4
	andi	$a0, $a0, 1
	bnez	$a0, .LBB13_26
# %bb.24:                               #   in Loop: Header=BB13_22 Depth=2
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE)
	jirl	$ra, $ra, 0
	addi.w	$a3, $s3, 1
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $s2
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB13_21
# %bb.25:                               #   in Loop: Header=BB13_22 Depth=2
	move	$a0, $s6
	move	$a1, $s2
	move	$a2, $s3
	b	.LBB13_20
	.p2align	4, , 16
.LBB13_26:                              #   in Loop: Header=BB13_22 Depth=2
	addi.w	$s4, $s3, 1
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB13_21
# %bb.27:                               #   in Loop: Header=BB13_22 Depth=2
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s4
	b	.LBB13_20
	.p2align	4, , 16
.LBB13_28:                              # %.lr.ph.split.us196.preheader
                                        #   in Loop: Header=BB13_17 Depth=1
	move	$a0, $zero
	b	.LBB13_30
	.p2align	4, , 16
.LBB13_29:                              # %.thread.us193
                                        #   in Loop: Header=BB13_30 Depth=2
	move	$a0, $fp
	beq	$s0, $fp, .LBB13_16
.LBB13_30:                              # %.lr.ph.split.us196
                                        #   Parent Loop BB13_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$fp, $a0, 1
	bge	$fp, $s0, .LBB13_29
# %bb.31:                               #   in Loop: Header=BB13_30 Depth=2
	add.w	$a1, $s5, $a0
	addi.w	$a2, $a1, 1
	move	$a0, $s6
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
	b	.LBB13_29
.LBB13_32:                              # %.loopexit
	move	$a0, $s6
	fld.d	$fs7, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB13_33:
	movgr2fr.w	$fa0, $zero
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 2
	beqz	$a0, .LBB13_12
.LBB13_34:
	addi.w	$a1, $s1, 0
	movgr2fr.w	$fa0, $zero
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 4
	beqz	$a0, .LBB13_13
.LBB13_35:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	mul.w	$a1, $a0, $s0
	movgr2fr.w	$fa0, $zero
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 8
	bnez	$a0, .LBB13_14
	b	.LBB13_15
.LBB13_36:
.Ltmp81:                                # EH_LABEL
	move	$fp, $a0
.Ltmp82:                                # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.37:                               # %_ZN17btCollisionObjectdlEPv.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_38:
.Ltmp84:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN17btSoftBodyHelpers11CreatePatchER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiib, .Lfunc_end13-_ZN17btSoftBodyHelpers11CreatePatchER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiib
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp79-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin4          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp82-.Ltmp80                #   Call between .Ltmp80 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin4          #     jumps to .Ltmp84
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp83-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Lfunc_end13-.Ltmp83           #   Call between .Ltmp83 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf
.LCPI14_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	_ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf
	.p2align	5
	.type	_ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf,@function
_ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf: # @_ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	ori	$t0, $zero, 2
	move	$s4, $zero
	blt	$a5, $t0, .LBB14_35
# %bb.1:
	move	$s0, $a6
	blt	$a6, $t0, .LBB14_35
# %bb.2:                                # %.lr.ph.us.preheader
	move	$s7, $a7
	move	$fp, $a5
	move	$s5, $a3
	move	$s1, $a2
	move	$s6, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 248
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 240
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	mul.w	$s3, $s0, $a5
	slli.d	$a0, $s3, 4
	move	$s4, $a4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $zero
	addi.d	$s8, $s0, -1
	bstrpick.d	$a1, $s8, 31, 0
	fld.s	$fa0, $s6, 0
	fld.s	$fa2, $s5, 0
	fld.s	$fa1, $s6, 4
	fld.s	$fa4, $s5, 4
	movgr2fr.d	$fa3, $a1
	ffint.s.l	$fa3, $fa3
	fst.s	$fa3, $sp, 32                   # 4-byte Folded Spill
	fst.s	$fa0, $sp, 40                   # 4-byte Folded Spill
	fsub.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fsub.s	$fa0, $fa4, $fa1
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa5, $s6, 8
	fld.s	$fa2, $s5, 8
	fld.s	$fa6, $s1, 0
	fld.s	$ft2, $s4, 0
	fld.s	$fa7, $s1, 4
	fld.s	$ft3, $s4, 4
	fld.s	$ft0, $s1, 8
	fld.s	$ft4, $s4, 8
	fsub.s	$ft1, $fa2, $fa5
	fsub.s	$ft2, $ft2, $fa6
	fsub.s	$ft3, $ft3, $fa7
	fsub.s	$ft4, $ft4, $ft0
	addi.d	$s1, $fp, -1
	bstrpick.d	$a1, $s1, 31, 0
	movgr2fr.d	$fa2, $a1
	ffint.s.l	$fa0, $fa2
	bstrpick.d	$a4, $fp, 30, 1
	slli.d	$a1, $a4, 1
	vori.b	$vr13, $vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vextrins.w	$vr13, $vr0, 16
	slli.d	$a2, $a4, 5
	add.d	$a2, $a2, $s2
	addi.d	$a2, $a2, 8
	slli.d	$a3, $fp, 4
	alsl.d	$a4, $a4, $s3, 3
	slli.d	$a5, $fp, 2
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	move	$a6, $fp
	bstrins.d	$a6, $zero, 30, 1
	pcalau12i	$a7, %pc_hi20(.LCPI14_0)
	vld	$vr14, $a7, %pc_lo12(.LCPI14_0)
	ori	$a7, $zero, 0
	lu32i.d	$a7, 1
	vreplgr2vr.d	$vr2, $a7
	vrepli.b	$vr16, 0
	lu12i.w	$a7, 260096
	vreplgr2vr.w	$vr17, $a7
	b	.LBB14_4
	.p2align	4, , 16
.LBB14_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB14_4 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a2, $a2, $a3
	add.d	$a4, $a4, $a5
	beq	$a0, $s0, .LBB14_9
.LBB14_4:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_5 Depth 2
                                        #     Child Loop BB14_8 Depth 2
	bstrpick.d	$t0, $a0, 31, 0
	movgr2fr.d	$ft7, $t0
	ffint.s.l	$ft7, $ft7
	fld.s	$fa0, $sp, 32                   # 4-byte Folded Reload
	fdiv.s	$ft7, $ft7, $fa0
	fld.s	$fa0, $sp, 40                   # 4-byte Folded Reload
	fld.s	$fa3, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$ft10, $fa3, $ft7, $fa0
	fld.s	$fa0, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$ft11, $fa0, $ft7, $fa1
	fmadd.s	$ft12, $ft1, $ft7, $fa5
	fmadd.s	$ft13, $ft2, $ft7, $fa6
	fmadd.s	$ft14, $ft3, $ft7, $fa7
	fmadd.s	$ft7, $ft4, $ft7, $ft0
	fsub.s	$ft13, $ft13, $ft10
	fsub.s	$ft14, $ft14, $ft11
	fsub.s	$ft15, $ft7, $ft12
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	mul.d	$t0, $a0, $t0
	vori.b	$vr24, $vr18, 0
	vextrins.w	$vr24, $vr18, 16
	vori.b	$vr25, $vr19, 0
	vextrins.w	$vr25, $vr19, 16
	vori.b	$vr26, $vr20, 0
	vextrins.w	$vr26, $vr20, 16
	vori.b	$vr27, $vr21, 0
	vextrins.w	$vr27, $vr21, 16
	vori.b	$vr28, $vr22, 0
	vextrins.w	$vr28, $vr22, 16
	vori.b	$vr29, $vr23, 0
	vextrins.w	$vr29, $vr23, 16
	vreplgr2vr.d	$vr30, $t0
	move	$t0, $a1
	vori.b	$vr31, $vr14, 0
	vori.b	$vr15, $vr2, 0
	.p2align	4, , 16
.LBB14_5:                               # %vector.body
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vffint.s.wu	$vr0, $vr15
	vfdiv.s	$vr0, $vr0, $vr13
	vfmadd.s	$vr3, $vr27, $vr0, $vr24
	vfmadd.s	$vr4, $vr28, $vr0, $vr25
	vfmadd.s	$vr0, $vr29, $vr0, $vr26
	vshuf4i.w	$vr4, $vr4, 16
	vslli.d	$vr4, $vr4, 32
	vilvl.w	$vr3, $vr16, $vr3
	vor.v	$vr3, $vr4, $vr3
	vpickve2gr.d	$t1, $vr0, 0
	srli.d	$t2, $t1, 32
	bstrpick.d	$t1, $t1, 31, 0
	vadd.d	$vr0, $vr31, $vr30
	vpickve2gr.d	$t3, $vr0, 0
	alsl.d	$t4, $t3, $s2, 4
	vpickve2gr.d	$t5, $vr0, 1
	alsl.d	$t5, $t5, $s2, 4
	vstelm.d	$vr3, $t4, 0, 0
	vstelm.d	$vr3, $t5, 0, 1
	st.d	$t1, $t4, 8
	st.d	$t2, $t5, 8
	alsl.d	$t1, $t3, $s3, 2
	vstelm.d	$vr17, $t1, 0, 0
	vaddi.du	$vr31, $vr31, 2
	addi.d	$t0, $t0, -2
	vaddi.wu	$vr15, $vr15, 2
	bnez	$t0, .LBB14_5
# %bb.6:                                # %middle.block
                                        #   in Loop: Header=BB14_4 Depth=1
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	vld	$vr15, $sp, 48                  # 16-byte Folded Reload
	beq	$t0, $a1, .LBB14_3
# %bb.7:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB14_4 Depth=1
	move	$t0, $a6
	move	$t1, $a1
	move	$t2, $a4
	move	$t3, $a2
	.p2align	4, , 16
.LBB14_8:                               # %scalar.ph
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t1, 31, 0
	movgr2fr.d	$fa0, $t4
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $ft7
	fmadd.s	$fa3, $ft13, $fa0, $ft10
	fmadd.s	$fa4, $ft14, $fa0, $ft11
	fmadd.s	$fa0, $ft15, $fa0, $ft12
	movfr2gr.s	$t4, $fa3
	movfr2gr.s	$t5, $fa4
	bstrins.d	$t4, $t5, 63, 32
	movfr2gr.s	$t5, $fa0
	bstrpick.d	$t5, $t5, 31, 0
	st.d	$t4, $t3, -8
	st.d	$t5, $t3, 0
	st.w	$a7, $t2, 0
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, 4
	addi.d	$t0, $t0, -1
	addi.w	$t1, $t1, 1
	bnez	$t0, .LBB14_8
	b	.LBB14_3
.LBB14_9:                               # %._crit_edge250
	ori	$a0, $zero, 1496
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.Ltmp85:                                # EH_LABEL
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.10:
	andi	$a0, $s7, 1
	bnez	$a0, .LBB14_36
# %bb.11:
	andi	$a0, $s7, 2
	bnez	$a0, .LBB14_37
.LBB14_12:
	andi	$a0, $s7, 4
	bnez	$a0, .LBB14_38
.LBB14_13:
	andi	$a0, $s7, 8
	bnez	$a0, .LBB14_39
.LBB14_14:
	andi	$a0, $s7, 16
	bnez	$a0, .LBB14_40
.LBB14_15:
	andi	$a0, $s7, 32
	bnez	$a0, .LBB14_41
.LBB14_16:
	andi	$a0, $s7, 64
	bnez	$a0, .LBB14_42
.LBB14_17:
	andi	$a0, $s7, 128
	bnez	$a0, .LBB14_43
.LBB14_18:
	andi	$a0, $s7, 256
	beqz	$a0, .LBB14_20
.LBB14_19:
	bstrpick.d	$a0, $s8, 31, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	bstrpick.d	$a1, $s1, 31, 1
	add.w	$a1, $a0, $a1
	movgr2fr.w	$fa0, $zero
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
.LBB14_20:                              # %.preheader.us.preheader
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	move	$a1, $zero
	move	$fp, $zero
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	frecip.s	$fs0, $fa0
	addi.w	$a0, $s8, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	frecip.s	$fs1, $fa0
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	b	.LBB14_22
	.p2align	4, , 16
.LBB14_21:                              # %._crit_edge.us260
                                        #   in Loop: Header=BB14_22 Depth=1
	add.d	$s6, $s6, $s2
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $s0, .LBB14_35
.LBB14_22:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_33 Depth 2
                                        #     Child Loop BB14_25 Depth 2
	move	$a0, $a1
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bge	$a1, $s0, .LBB14_31
# %bb.23:                               # %.lr.ph.split.us.us.preheader
                                        #   in Loop: Header=BB14_22 Depth=1
	move	$s7, $zero
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fmul.s	$fs2, $fs1, $fa0
	nor	$a0, $a0, $zero
	add.d	$a0, $a2, $a0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fmul.s	$fs3, $fs1, $fa0
	add.d	$s8, $s2, $s6
	b	.LBB14_25
	.p2align	4, , 16
.LBB14_24:                              #   in Loop: Header=BB14_25 Depth=2
	addi.w	$fp, $fp, 12
	move	$s7, $s0
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	beq	$s2, $s0, .LBB14_21
.LBB14_25:                              # %.lr.ph.split.us.us
                                        #   Parent Loop BB14_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s0, $s7, 1
	add.w	$s1, $s6, $s7
	add.w	$s5, $s8, $s7
	bge	$s0, $s2, .LBB14_28
# %bb.26:                               #   in Loop: Header=BB14_25 Depth=2
	addi.w	$s3, $s1, 1
	add.w	$s2, $s0, $s8
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beqz	$a1, .LBB14_29
# %bb.27:                               #   in Loop: Header=BB14_25 Depth=2
	bstrpick.d	$a0, $s7, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fmul.s	$fs4, $fs0, $fa0
	alsl.d	$s5, $fp, $a1, 2
	slli.d	$a0, $fp, 2
	fstx.s	$fs4, $a1, $a0
	fst.s	$fs2, $s5, 4
	fst.s	$fs4, $s5, 8
	fst.s	$fs3, $s5, 12
	bstrpick.d	$a0, $s0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fmul.s	$fs5, $fs0, $fa0
	fst.s	$fs5, $s5, 16
	fst.s	$fs3, $s5, 20
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE)
	jirl	$ra, $ra, 0
	fst.s	$fs5, $s5, 24
	fst.s	$fs3, $s5, 28
	fst.s	$fs5, $s5, 32
	fst.s	$fs2, $s5, 36
	fst.s	$fs4, $s5, 40
	fst.s	$fs2, $s5, 44
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB14_24
	b	.LBB14_30
	.p2align	4, , 16
.LBB14_28:                              # %.thread.us.us.critedge
                                        #   in Loop: Header=BB14_25 Depth=2
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
	move	$s7, $s0
	bne	$s2, $s0, .LBB14_25
	b	.LBB14_21
.LBB14_29:                              # %.critedge.us.us
                                        #   in Loop: Header=BB14_25 Depth=2
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB14_24
.LBB14_30:                              #   in Loop: Header=BB14_25 Depth=2
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
	b	.LBB14_24
	.p2align	4, , 16
.LBB14_31:                              # %.lr.ph.split.us259.preheader
                                        #   in Loop: Header=BB14_22 Depth=1
	move	$a0, $zero
	b	.LBB14_33
	.p2align	4, , 16
.LBB14_32:                              # %.thread.us256
                                        #   in Loop: Header=BB14_33 Depth=2
	move	$a0, $s0
	beq	$s2, $s0, .LBB14_21
.LBB14_33:                              # %.lr.ph.split.us259
                                        #   Parent Loop BB14_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s0, $a0, 1
	bge	$s0, $s2, .LBB14_32
# %bb.34:                               #   in Loop: Header=BB14_33 Depth=2
	add.w	$a1, $s6, $a0
	addi.w	$a2, $a1, 1
	move	$a0, $s4
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
	b	.LBB14_32
.LBB14_35:                              # %.loopexit
	move	$a0, $s4
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
.LBB14_36:
	movgr2fr.w	$fa0, $zero
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 2
	beqz	$a0, .LBB14_12
.LBB14_37:
	addi.w	$a1, $s1, 0
	movgr2fr.w	$fa0, $zero
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 4
	beqz	$a0, .LBB14_13
.LBB14_38:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	mul.w	$a1, $s8, $a0
	movgr2fr.w	$fa0, $zero
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 8
	beqz	$a0, .LBB14_14
.LBB14_39:
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a0, $s8, $a1
	add.d	$a0, $a1, $a0
	addi.w	$a1, $a0, -1
	movgr2fr.w	$fa0, $zero
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 16
	beqz	$a0, .LBB14_15
.LBB14_40:
	bstrpick.d	$a1, $s1, 31, 1
	movgr2fr.w	$fa0, $zero
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 32
	beqz	$a0, .LBB14_16
.LBB14_41:
	bstrpick.d	$a0, $s8, 31, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	mul.w	$a1, $a0, $a1
	movgr2fr.w	$fa0, $zero
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 64
	beqz	$a0, .LBB14_17
.LBB14_42:
	bstrpick.d	$a0, $s8, 31, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a1, $a0
	addi.w	$a1, $a0, -1
	movgr2fr.w	$fa0, $zero
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 128
	beqz	$a0, .LBB14_18
.LBB14_43:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a0, $s8, $a0
	bstrpick.d	$a1, $s1, 31, 1
	add.w	$a1, $a0, $a1
	movgr2fr.w	$fa0, $zero
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10btSoftBody7setMassEif)
	jirl	$ra, $ra, 0
	andi	$a0, $s7, 256
	bnez	$a0, .LBB14_19
	b	.LBB14_20
.LBB14_44:
.Ltmp87:                                # EH_LABEL
	move	$fp, $a0
.Ltmp88:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.45:                               # %_ZN17btCollisionObjectdlEPv.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_46:
.Ltmp90:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf, .Lfunc_end14-_ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp85-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp85
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin5          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp88-.Ltmp86                #   Call between .Ltmp86 and .Ltmp88
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin5          #     jumps to .Ltmp90
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp89-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Lfunc_end14-.Ltmp89           #   Call between .Ltmp89 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN17btSoftBodyHelpers11CalculateUVEiiiii # -- Begin function _ZN17btSoftBodyHelpers11CalculateUVEiiiii
	.p2align	5
	.type	_ZN17btSoftBodyHelpers11CalculateUVEiiiii,@function
_ZN17btSoftBodyHelpers11CalculateUVEiiiii: # @_ZN17btSoftBodyHelpers11CalculateUVEiiiii
# %bb.0:
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB15_6
# %bb.1:
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI15_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI15_0)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB15_2:
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	frecip.s	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	ret
.LBB15_3:
	addi.d	$a0, $a1, -1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	frecip.s	$fa0, $fa0
	nor	$a1, $a3, $zero
	add.d	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	ret
.LBB15_4:
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	frecip.s	$fa0, $fa0
	addi.d	$a0, $a2, 1
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	ret
.LBB15_5:
	addi.d	$a0, $a1, -1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	frecip.s	$fa0, $fa0
	sub.d	$a0, $a0, $a3
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	ret
.LBB15_6:
	movgr2fr.w	$fa0, $zero
	ret
.Lfunc_end15:
	.size	_ZN17btSoftBodyHelpers11CalculateUVEiiiii, .Lfunc_end15-_ZN17btSoftBodyHelpers11CalculateUVEiiiii
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI15_0:
	.word	.LBB15_2-.LJTI15_0
	.word	.LBB15_5-.LJTI15_0
	.word	.LBB15_3-.LJTI15_0
	.word	.LBB15_4-.LJTI15_0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_i
.LCPI16_0:
	.word	0x40490fdb                      # float 3.14159274
	.text
	.globl	_ZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_i
	.p2align	5
	.type	_ZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_i,@function
_ZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_i: # @_ZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_i
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 40                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	.cfi_offset 57, -88
	.cfi_offset 58, -96
	.cfi_offset 59, -104
	.cfi_offset 60, -112
	.cfi_offset 61, -120
	move	$s2, $a1
	addi.w	$a1, $zero, -2
	addi.w	$fp, $a3, 3
	blt	$a3, $a1, .LBB16_10
# %bb.1:                                # %.lr.ph.i
	move	$s1, $a2
	move	$s3, $a0
	bstrpick.d	$s5, $fp, 31, 0
	slli.d	$a0, $fp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s4, $zero
	movgr2fr.d	$fa0, $s5
	ffint.s.l	$fs2, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.s	$fs3, $a0, %pc_lo12(.LCPI16_0)
	movgr2fr.w	$fs4, $zero
	vldi	$vr3, -1184
	ori	$s5, $zero, 2
	move	$s6, $s0
	.p2align	4, , 16
.LBB16_2:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_4 Depth 2
	beqz	$s4, .LBB16_6
# %bb.3:                                # %.lr.ph.i17.preheader
                                        #   in Loop: Header=BB16_2 Depth=1
	vldi	$vr0, -1184
	move	$a0, $s4
	fmov.s	$fa1, $fs4
	.p2align	4, , 16
.LBB16_4:                               # %.lr.ph.i17
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a1, $a0, 0
	andi	$a2, $a0, 1
	sltui	$a2, $a2, 1
	fadd.s	$fa2, $fa1, $fa0
	movgr2cf	$fcc0, $a2
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.s	$fa0, $fa0, $fa3
	bstrpick.d	$a0, $a0, 31, 1
	bgeu	$a1, $s5, .LBB16_4
# %bb.5:                                # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB16_2 Depth=1
	vldi	$vr0, -1040
	vldi	$vr2, -1280
	fmadd.s	$fa2, $fa1, $fa2, $fa0
	b	.LBB16_7
	.p2align	4, , 16
.LBB16_6:                               #   in Loop: Header=BB16_2 Depth=1
	vldi	$vr2, -1040
.LBB16_7:                               # %._crit_edge.i
                                        #   in Loop: Header=BB16_2 Depth=1
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	fneg.s	$fa0, $fa2
	vldi	$vr1, -1168
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	fsqrt.s	$fs0, $fa0
	fcmp.cor.s	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB16_9
.LBB16_8:                               # %._crit_edge.i.split
                                        #   in Loop: Header=BB16_2 Depth=1
	slli.d	$a0, $s4, 1
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fmadd.s	$fa0, $fa0, $fs3, $fs3
	fdiv.s	$fs1, $fa0, $fs2
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmul.s	$fs5, $fs0, $fa0
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmul.s	$fa0, $fs0, $fa0
	fst.s	$fs5, $s6, 0
	fst.s	$fa0, $s6, 4
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	fst.s	$fa0, $s6, 8
	addi.d	$a0, $s6, 16
	addi.w	$s4, $s4, 1
	st.w	$zero, $s6, 12
	move	$s6, $a0
	vldi	$vr3, -1184
	bne	$s4, $fp, .LBB16_2
	b	.LBB16_11
.LBB16_9:                               # %call.sqrt
                                        #   in Loop: Header=BB16_2 Depth=1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	b	.LBB16_8
.LBB16_10:
	move	$s0, $zero
	b	.LBB16_14
.LBB16_11:                              # %.lr.ph
	move	$a0, $zero
	ori	$a1, $zero, 1
	slt	$a2, $a1, $fp
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a1, $a2, $a1
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB16_12:                              # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s0, $a0
	fldx.s	$fa0, $s0, $a0
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $s1, 4
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fld.s	$fa2, $a2, 8
	fld.s	$fa3, $s1, 8
	fld.s	$fa4, $s2, 0
	fld.s	$fa5, $s2, 4
	fld.s	$fa6, $s2, 8
	fmul.s	$fa2, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa1, $fa1, $fa5
	fadd.s	$fa2, $fa2, $fa6
	movfr2gr.s	$a3, $fa0
	movfr2gr.s	$a4, $fa1
	bstrins.d	$a3, $a4, 63, 32
	movfr2gr.s	$a4, $fa2
	bstrpick.d	$a4, $a4, 31, 0
	stx.d	$a3, $s0, $a0
	addi.d	$a0, $a0, 16
	st.d	$a4, $a2, 8
	bne	$a1, $a0, .LBB16_12
# %bb.13:
	move	$a0, $s3
.LBB16_14:                              # %._crit_edge
.Ltmp91:                                # EH_LABEL
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.15:                               # %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	fld.d	$fs5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
.LBB16_16:                              # %.thread
.Ltmp93:                                # EH_LABEL
	move	$fp, $a0
.Ltmp94:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.17:                               # %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit31
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_18:
.Ltmp96:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_i, .Lfunc_end16-_ZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp91-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp91
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin6          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Ltmp94-.Ltmp92                #   Call between .Ltmp92 and .Ltmp94
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin6          # >> Call Site 4 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin6          #     jumps to .Ltmp96
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp95-.Lfunc_begin6          # >> Call Site 5 <<
	.uleb128 .Lfunc_end16-.Ltmp95           #   Call between .Ltmp95 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i # -- Begin function _ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i
	.p2align	5
	.type	_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i,@function
_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i: # @_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s0, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 152
	st.w	$a2, $sp, 156
	st.d	$a1, $sp, 160
	ori	$a1, $zero, 16
	lu32i.d	$a1, 201327
	lu52i.d	$a1, $a1, 936
	st.d	$a1, $sp, 168
	st.b	$a0, $sp, 104
	st.d	$zero, $sp, 96
	st.d	$zero, $sp, 84
	st.b	$a0, $sp, 144
	st.d	$zero, $sp, 136
	st.d	$zero, $sp, 124
	st.b	$a0, $sp, 72
	st.w	$zero, $sp, 76
	st.d	$zero, $sp, 112
	st.b	$a0, $sp, 32
	st.d	$zero, $sp, 24
	st.d	$zero, $sp, 12
	st.b	$a0, $sp, 64
	st.d	$zero, $sp, 56
	st.d	$zero, $sp, 44
	st.w	$a2, $sp, 176
.Ltmp97:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 72
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.1:
.Ltmp100:                               # EH_LABEL
	ori	$a0, $zero, 1496
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.2:                                # %_ZN17btCollisionObjectnwEm.exit
	move	$fp, $a0
	ld.w	$a2, $sp, 76
	ld.d	$a3, $sp, 96
.Ltmp102:                               # EH_LABEL
	move	$a1, $s0
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.3:                                # %.preheader
	ld.w	$a0, $sp, 112
	blez	$a0, .LBB17_13
# %bb.4:                                # %.lr.ph.preheader
	move	$s3, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB17_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 136
	add.d	$a1, $a0, $s3
	ldx.w	$s0, $a0, $s3
	ld.w	$s1, $a1, 4
	ld.w	$s2, $a1, 8
	bge	$s0, $s1, .LBB17_7
# %bb.6:                                #   in Loop: Header=BB17_5 Depth=1
.Ltmp107:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
.LBB17_7:                               #   in Loop: Header=BB17_5 Depth=1
	bge	$s1, $s2, .LBB17_9
# %bb.8:                                #   in Loop: Header=BB17_5 Depth=1
.Ltmp109:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
.LBB17_9:                               #   in Loop: Header=BB17_5 Depth=1
	bge	$s2, $s0, .LBB17_11
# %bb.10:                               #   in Loop: Header=BB17_5 Depth=1
.Ltmp111:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
.LBB17_11:                              #   in Loop: Header=BB17_5 Depth=1
.Ltmp113:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.12:                               #   in Loop: Header=BB17_5 Depth=1
	ld.w	$a0, $sp, 112
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 12
	blt	$s4, $a0, .LBB17_5
.LBB17_13:                              # %._crit_edge
.Ltmp116:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZN11HullLibrary13ReleaseResultER10HullResult)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.14:
.Ltmp118:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10btSoftBody20randomizeConstraintsEv)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.15:
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB17_18
# %bb.16:
	ld.b	$a1, $sp, 64
	andi	$a1, $a1, 1
	beqz	$a1, .LBB17_18
# %bb.17:
.Ltmp123:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
.LBB17_18:
	ld.d	$a0, $sp, 24
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 64
	st.d	$zero, $sp, 56
	st.d	$zero, $sp, 44
	beqz	$a0, .LBB17_21
# %bb.19:
	ld.b	$a1, $sp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB17_21
# %bb.20:
.Ltmp129:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
.LBB17_21:
	ld.d	$a0, $sp, 136
	beqz	$a0, .LBB17_24
# %bb.22:
	ld.b	$a1, $sp, 144
	andi	$a1, $a1, 1
	beqz	$a1, .LBB17_24
# %bb.23:
.Ltmp135:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
.LBB17_24:
	ld.d	$a0, $sp, 96
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 144
	st.d	$zero, $sp, 136
	st.d	$zero, $sp, 124
	beqz	$a0, .LBB17_27
# %bb.25:
	ld.b	$a1, $sp, 104
	andi	$a1, $a1, 1
	beqz	$a1, .LBB17_27
# %bb.26:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB17_27:                              # %_ZN10HullResultD2Ev.exit
	move	$a0, $fp
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB17_28:
.Ltmp137:                               # EH_LABEL
	ld.d	$a1, $sp, 96
	move	$s0, $a0
	beqz	$a1, .LBB17_44
# %bb.29:
	ld.b	$a0, $sp, 104
	andi	$a0, $a0, 1
	beqz	$a0, .LBB17_44
# %bb.30:
.Ltmp138:                               # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
	b	.LBB17_44
.LBB17_31:
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_32:
.Ltmp131:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB17_43
.LBB17_33:
.Ltmp125:                               # EH_LABEL
	ld.d	$a1, $sp, 24
	move	$s0, $a0
	beqz	$a1, .LBB17_43
# %bb.34:
	ld.b	$a0, $sp, 32
	andi	$a0, $a0, 1
	beqz	$a0, .LBB17_43
# %bb.35:
.Ltmp126:                               # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
	b	.LBB17_43
.LBB17_36:
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_37:
.Ltmp104:                               # EH_LABEL
	move	$s0, $a0
.Ltmp105:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
	b	.LBB17_42
.LBB17_38:
.Ltmp99:                                # EH_LABEL
	b	.LBB17_41
.LBB17_39:
.Ltmp120:                               # EH_LABEL
	b	.LBB17_41
.LBB17_40:
.Ltmp115:                               # EH_LABEL
.LBB17_41:                              # %_ZN17btCollisionObjectdlEPv.exit
	move	$s0, $a0
.LBB17_42:                              # %_ZN17btCollisionObjectdlEPv.exit
.Ltmp121:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN11HullLibraryD2Ev)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
.LBB17_43:                              # %.body
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN10HullResultD2Ev)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
.LBB17_44:                              # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_45:
.Ltmp134:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i, .Lfunc_end17-_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp97-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin7          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp120-.Lfunc_begin7         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin7         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp114-.Ltmp107              #   Call between .Ltmp107 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin7         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp119-.Ltmp116              #   Call between .Ltmp116 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin7         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin7         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin7         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin7         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp138-.Ltmp136              #   Call between .Ltmp136 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin7         #     jumps to .Ltmp140
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp139-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp126-.Ltmp139              #   Call between .Ltmp139 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin7         #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp105-.Ltmp127              #   Call between .Ltmp127 and .Ltmp105
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp133-.Ltmp105              #   Call between .Ltmp105 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin7         #     jumps to .Ltmp134
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp133-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Lfunc_end17-.Ltmp133          #   Call between .Ltmp133 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN17btSoftBodyHelpers17CreateFromTriMeshER19btSoftBodyWorldInfoPKfPKii # -- Begin function _ZN17btSoftBodyHelpers17CreateFromTriMeshER19btSoftBodyWorldInfoPKfPKii
	.p2align	5
	.type	_ZN17btSoftBodyHelpers17CreateFromTriMeshER19btSoftBodyWorldInfoPKfPKii,@function
_ZN17btSoftBodyHelpers17CreateFromTriMeshER19btSoftBodyWorldInfoPKfPKii: # @_ZN17btSoftBodyHelpers17CreateFromTriMeshER19btSoftBodyWorldInfoPKfPKii
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
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
	move	$s3, $a3
	move	$s2, $a2
	move	$s5, $a1
	move	$s4, $a0
	alsl.w	$s1, $a3, $a3, 1
	blez	$a3, .LBB18_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	ori	$a2, $zero, 8
	or	$a0, $a1, $a0
	bge	$s1, $a2, .LBB18_4
# %bb.2:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB18_7
.LBB18_3:
	ori	$s6, $zero, 1
	b	.LBB18_10
.LBB18_4:                               # %vector.ph
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a1, $a1, 3
	vrepli.b	$vr0, 0
	addi.d	$a2, $s2, 16
	move	$a3, $a1
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB18_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a2, -16
	vld	$vr3, $a2, 0
	vmax.w	$vr0, $vr2, $vr0
	vmax.w	$vr1, $vr3, $vr1
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB18_5
# %bb.6:                                # %middle.block
	vmax.w	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a1, $a0, .LBB18_9
.LBB18_7:                               # %.lr.ph.preheader180
	alsl.d	$a3, $a1, $s2, 2
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB18_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a3, 0
	slt	$a4, $a2, $a1
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a2, $a1, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB18_8
.LBB18_9:                               # %._crit_edge.loopexit
	addi.w	$s6, $a2, 1
.LBB18_10:
	mul.w	$s0, $s6, $s6
	ori	$a1, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s6, 4
.Ltmp141:                               # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.11:                               # %.lr.ph156.preheader
	move	$s0, $a0
	move	$a0, $zero
	alsl.w	$a1, $s6, $s6, 1
	ori	$a2, $zero, 3
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	addi.d	$a2, $a1, -1
	addi.d	$a1, $s5, 8
	lu12i.w	$a3, -349526
	ori	$a3, $a3, 2731
	lu32i.d	$a3, -349526
	lu52i.d	$a3, $a3, -1366
	mulh.du	$a2, $a2, $a3
	slli.d	$a2, $a2, 3
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a2, $a2, 16
	.p2align	4, , 16
.LBB18_12:                              # %.lr.ph156
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, -8
	fld.s	$fa0, $a1, 0
	add.d	$a4, $s0, $a0
	stx.d	$a3, $s0, $a0
	fst.s	$fa0, $a4, 8
	st.w	$zero, $a4, 12
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 12
	bne	$a2, $a0, .LBB18_12
# %bb.13:                               # %._crit_edge157
.Ltmp144:                               # EH_LABEL
	ori	$a0, $zero, 1496
	ori	$a1, $zero, 16
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.14:                               # %_ZN17btCollisionObjectnwEm.exit
.Ltmp146:                               # EH_LABEL
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $s4
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	move	$a2, $s6
	move	$a3, $s0
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.15:                               # %.preheader
	blez	$s3, .LBB18_25
# %bb.16:                               # %.lr.ph161.preheader
	move	$s7, $zero
	addi.d	$s8, $s2, 8
	.p2align	4, , 16
.LBB18_17:                              # %.lr.ph161
                                        # =>This Inner Loop Header: Depth=1
	move	$s5, $s1
	ld.w	$s2, $s8, -8
	ld.w	$s3, $s8, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	mul.d	$s6, $s2, $a2
	add.w	$a0, $s6, $s3
	ldx.bu	$a1, $fp, $a0
	ld.w	$s4, $s8, -4
	mul.d	$s0, $s3, $a2
	bnez	$a1, .LBB18_19
# %bb.18:                               #   in Loop: Header=BB18_17 Depth=1
	ori	$a1, $zero, 1
	stx.b	$a1, $fp, $a0
	add.w	$a0, $s0, $s2
	stx.b	$a1, $fp, $a0
.Ltmp151:                               # EH_LABEL
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
.LBB18_19:                              #   in Loop: Header=BB18_17 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	mul.d	$s1, $s4, $a0
	add.w	$a0, $s1, $s2
	ldx.bu	$a1, $fp, $a0
	bnez	$a1, .LBB18_21
# %bb.20:                               #   in Loop: Header=BB18_17 Depth=1
	ori	$a1, $zero, 1
	stx.b	$a1, $fp, $a0
	add.w	$a0, $s6, $s4
	stx.b	$a1, $fp, $a0
.Ltmp153:                               # EH_LABEL
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
.LBB18_21:                              #   in Loop: Header=BB18_17 Depth=1
	add.w	$a0, $s0, $s4
	ldx.bu	$a1, $fp, $a0
	bnez	$a1, .LBB18_23
# %bb.22:                               #   in Loop: Header=BB18_17 Depth=1
	ori	$a1, $zero, 1
	stx.b	$a1, $fp, $a0
	add.w	$a0, $s1, $s3
	stx.b	$a1, $fp, $a0
.Ltmp155:                               # EH_LABEL
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
.LBB18_23:                              #   in Loop: Header=BB18_17 Depth=1
.Ltmp158:                               # EH_LABEL
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.24:                               #   in Loop: Header=BB18_17 Depth=1
	addi.w	$s7, $s7, 3
	addi.d	$s8, $s8, 12
	move	$s1, $s5
	blt	$s7, $s5, .LBB18_17
.LBB18_25:                              # %._crit_edge162
.Ltmp161:                               # EH_LABEL
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	move	$a0, $s1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10btSoftBody20randomizeConstraintsEv)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.26:
.Ltmp166:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.27:                               # %_ZN20btAlignedObjectArrayIbED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB18_28:
.Ltmp168:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB18_36
.LBB18_29:
.Ltmp148:                               # EH_LABEL
	move	$s1, $a0
.Ltmp149:                               # EH_LABEL
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
	b	.LBB18_35
.LBB18_30:
.Ltmp143:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB18_36
.LBB18_31:
.Ltmp163:                               # EH_LABEL
	b	.LBB18_34
.LBB18_32:
.Ltmp160:                               # EH_LABEL
	b	.LBB18_34
.LBB18_33:
.Ltmp157:                               # EH_LABEL
.LBB18_34:                              # %_ZN17btCollisionObjectdlEPv.exit
	move	$s1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB18_36
.LBB18_35:                              # %_ZN17btCollisionObjectdlEPv.exit.thread140
.Ltmp164:                               # EH_LABEL
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
.LBB18_36:                              # %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit85
.Ltmp169:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.37:                               # %_ZN20btAlignedObjectArrayIbED2Ev.exit89
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB18_38:
.Ltmp171:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN17btSoftBodyHelpers17CreateFromTriMeshER19btSoftBodyWorldInfoPKfPKii, .Lfunc_end18-_ZN17btSoftBodyHelpers17CreateFromTriMeshER19btSoftBodyWorldInfoPKfPKii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp141-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp141
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin8         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp163-.Lfunc_begin8         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin8         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp156-.Ltmp151              #   Call between .Ltmp151 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin8         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin8         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin8         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin8         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp149-.Ltmp167              #   Call between .Ltmp167 and .Ltmp149
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp170-.Ltmp149              #   Call between .Ltmp149 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin8         #     jumps to .Ltmp171
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp170-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Lfunc_end18-.Ltmp170          #   Call between .Ltmp170 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN17btSoftBodyHelpers20CreateFromTetGenDataER19btSoftBodyWorldInfoPKcS3_S3_bbb # -- Begin function _ZN17btSoftBodyHelpers20CreateFromTetGenDataER19btSoftBodyWorldInfoPKcS3_S3_bbb
	.p2align	5
	.type	_ZN17btSoftBodyHelpers20CreateFromTetGenDataER19btSoftBodyWorldInfoPKcS3_S3_bbb,@function
_ZN17btSoftBodyHelpers20CreateFromTetGenDataER19btSoftBodyWorldInfoPKcS3_S3_bbb: # @_ZN17btSoftBodyHelpers20CreateFromTetGenDataER19btSoftBodyWorldInfoPKcS3_S3_bbb
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	move	$s0, $a5
	move	$s1, $a3
	move	$s2, $a1
	move	$s3, $a0
	st.w	$zero, $sp, 52
	st.w	$zero, $sp, 48
	st.w	$zero, $sp, 44
	st.w	$zero, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	addi.d	$a2, $sp, 52
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 44
	addi.d	$a5, $sp, 40
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 52
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 44
	addi.d	$a5, $sp, 40
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sscanf)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 0
	ori	$a0, $zero, 10
	ori	$s4, $zero, 1
	beq	$a1, $a0, .LBB19_3
# %bb.1:                                # %.lr.ph.i.preheader
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB19_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $s1, $s4
	addi.d	$s4, $s4, 1
	bne	$a1, $a0, .LBB19_2
.LBB19_3:                               # %_ZL8nextLinePKc.exit
	ld.w	$s5, $sp, 52
	blez	$s5, .LBB19_9
# %bb.4:                                # %.lr.ph.preheader
	slli.d	$a0, $s5, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	add.d	$s1, $s1, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s4, $a0, %pc_lo12(.L.str.3)
	move	$s6, $zero
	ori	$s7, $zero, 10
	b	.LBB19_6
	.p2align	4, , 16
.LBB19_5:                               # %_ZL8nextLinePKc.exit54
                                        #   in Loop: Header=BB19_6 Depth=1
	ld.w	$a1, $sp, 8
	fld.s	$fa0, $sp, 36
	slli.d	$a2, $a1, 4
	fstx.s	$fa0, $fp, $a2
	fld.s	$fa0, $sp, 32
	alsl.d	$a1, $a1, $fp, 4
	fst.s	$fa0, $a1, 4
	fld.s	$fa0, $sp, 28
	add.d	$s1, $s1, $a0
	addi.w	$s6, $s6, 1
	fst.s	$fa0, $a1, 8
	beq	$s6, $s5, .LBB19_10
.LBB19_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_8 Depth 2
	st.w	$zero, $sp, 8
	addi.d	$a2, $sp, 8
	addi.d	$a3, $sp, 36
	addi.d	$a4, $sp, 32
	addi.d	$a5, $sp, 28
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(sscanf)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 0
	ori	$a0, $zero, 1
	beq	$a1, $s7, .LBB19_5
# %bb.7:                                # %.lr.ph.i48.preheader
                                        #   in Loop: Header=BB19_6 Depth=1
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB19_8:                               # %.lr.ph.i48
                                        #   Parent Loop BB19_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $s1, $a0
	addi.d	$a0, $a0, 1
	bne	$a1, $s7, .LBB19_8
	b	.LBB19_5
.LBB19_9:
	move	$fp, $zero
.LBB19_10:                              # %._crit_edge
.Ltmp172:                               # EH_LABEL
	ori	$a0, $zero, 1496
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.11:                               # %_ZN17btCollisionObjectnwEm.exit
	move	$s1, $a0
	ld.w	$a2, $sp, 52
.Ltmp175:                               # EH_LABEL
	move	$a1, $s3
	move	$a3, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.12:
	beqz	$s2, .LBB19_31
# %bb.13:
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB19_31
# %bb.14:
	st.w	$zero, $sp, 36
	st.w	$zero, $sp, 32
	st.w	$zero, $sp, 28
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 36
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 28
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sscanf)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s2, 0
	ori	$a1, $zero, 10
	ori	$a0, $zero, 1
	beq	$a2, $a1, .LBB19_17
# %bb.15:                               # %.lr.ph.i56.preheader
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB19_16:                              # %.lr.ph.i56
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $s2, $a0
	addi.d	$a0, $a0, 1
	bne	$a2, $a1, .LBB19_16
.LBB19_17:                              # %_ZL8nextLinePKc.exit62
	ld.w	$a1, $sp, 36
	blez	$a1, .LBB19_31
# %bb.18:                               # %.lr.ph106
	add.d	$s2, $s2, $a0
	addi.d	$s4, $sp, 16
	addi.d	$s5, $sp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s6, $a0, %pc_lo12(.L.str.5)
	move	$s7, $zero
	ori	$s8, $zero, 10
	b	.LBB19_20
	.p2align	4, , 16
.LBB19_19:                              #   in Loop: Header=BB19_20 Depth=1
	ld.w	$a0, $sp, 36
	addi.w	$s7, $s7, 1
	add.d	$s2, $s2, $s3
	bge	$s7, $a0, .LBB19_31
.LBB19_20:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_22 Depth 2
	st.w	$zero, $sp, 24
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 8
	move	$a0, $s2
	move	$a1, $s6
	addi.d	$a4, $sp, 12
	move	$a5, $s4
	move	$a6, $s5
	pcaddu18i	$ra, %call36(sscanf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 0
	ori	$s3, $zero, 1
	beq	$a0, $s8, .LBB19_23
# %bb.21:                               # %.lr.ph.i65.preheader
                                        #   in Loop: Header=BB19_20 Depth=1
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB19_22:                              # %.lr.ph.i65
                                        #   Parent Loop BB19_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s2, $s3
	addi.d	$s3, $s3, 1
	bne	$a0, $s8, .LBB19_22
.LBB19_23:                              # %_ZL8nextLinePKc.exit71
                                        #   in Loop: Header=BB19_20 Depth=1
	ld.w	$a1, $sp, 8
	ld.w	$a2, $sp, 12
	ld.w	$a3, $sp, 16
	ld.w	$a4, $sp, 20
.Ltmp180:                               # EH_LABEL
	move	$a0, $s1
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody11appendTetraEiiiiPNS_8MaterialE)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.24:                               #   in Loop: Header=BB19_20 Depth=1
	beqz	$s0, .LBB19_19
# %bb.25:                               #   in Loop: Header=BB19_20 Depth=1
	ld.w	$a1, $sp, 8
	ld.w	$a2, $sp, 12
.Ltmp182:                               # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.26:                               #   in Loop: Header=BB19_20 Depth=1
	ld.w	$a1, $sp, 12
	ld.w	$a2, $sp, 16
.Ltmp184:                               # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.27:                               #   in Loop: Header=BB19_20 Depth=1
	ld.w	$a1, $sp, 16
	ld.w	$a2, $sp, 8
.Ltmp186:                               # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.28:                               #   in Loop: Header=BB19_20 Depth=1
	ld.w	$a1, $sp, 8
	ld.w	$a2, $sp, 20
.Ltmp188:                               # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.29:                               #   in Loop: Header=BB19_20 Depth=1
	ld.w	$a1, $sp, 12
	ld.w	$a2, $sp, 20
.Ltmp190:                               # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.30:                               #   in Loop: Header=BB19_20 Depth=1
	ld.w	$a1, $sp, 16
	ld.w	$a2, $sp, 20
.Ltmp192:                               # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
	b	.LBB19_19
.LBB19_31:                              # %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
	ld.w	$a1, $s1, 820
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 852
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 884
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 916
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB19_32:
.Ltmp177:                               # EH_LABEL
	move	$s0, $a0
.Ltmp178:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
	b	.LBB19_36
.LBB19_33:
.Ltmp174:                               # EH_LABEL
	b	.LBB19_35
.LBB19_34:
.Ltmp194:                               # EH_LABEL
.LBB19_35:                              # %_ZN17btCollisionObjectdlEPv.exit
	move	$s0, $a0
	beqz	$fp, .LBB19_37
.LBB19_36:
.Ltmp195:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
.LBB19_37:                              # %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit77
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_38:
.Ltmp197:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN17btSoftBodyHelpers20CreateFromTetGenDataER19btSoftBodyWorldInfoPKcS3_S3_bbb, .Lfunc_end19-_ZN17btSoftBodyHelpers20CreateFromTetGenDataER19btSoftBodyWorldInfoPKcS3_S3_bbb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp172-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp172
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin9         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin9         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp180-.Ltmp176              #   Call between .Ltmp176 and .Ltmp180
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp193-.Ltmp180              #   Call between .Ltmp180 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin9         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp178-.Ltmp193              #   Call between .Ltmp193 and .Ltmp178
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp196-.Ltmp178              #   Call between .Ltmp178 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin9         #     jumps to .Ltmp197
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp196-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Lfunc_end19-.Ltmp196          #   Call between .Ltmp196 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev # -- Begin function _ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev,@function
_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev: # @_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB20_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB20_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB20_3:                               # %_ZN20btAlignedObjectArrayIP14btHullTriangleE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end20:
	.size	_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev, .Lfunc_end20-_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11btTransform11getIdentityEv,"axG",@progbits,_ZN11btTransform11getIdentityEv,comdat
	.weak	_ZN11btTransform11getIdentityEv # -- Begin function _ZN11btTransform11getIdentityEv
	.p2align	5
	.type	_ZN11btTransform11getIdentityEv,@function
_ZN11btTransform11getIdentityEv:        # @_ZN11btTransform11getIdentityEv
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	dbar	20
	beqz	$a0, .LBB21_2
.LBB21_1:
	pcalau12i	$a0, %pc_hi20(_ZZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a0, $a0, %pc_lo12(_ZZN11btTransform11getIdentityEvE17identityTransform)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB21_2:
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB21_1
# %bb.3:
.Ltmp198:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11btMatrix3x311getIdentityEv)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.4:
	pcalau12i	$a1, %pc_hi20(_ZZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a1, $a1, %pc_lo12(_ZZN11btTransform11getIdentityEvE17identityTransform)
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	vst	$vr0, $a1, 0
	vst	$vr1, $a1, 16
	vst	$vr2, $a1, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 48
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB21_1
.LBB21_5:
.Ltmp200:                               # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btTransform11getIdentityEvE17identityTransform)
	pcaddu18i	$ra, %call36(__cxa_guard_abort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN11btTransform11getIdentityEv, .Lfunc_end21-_ZN11btTransform11getIdentityEv
	.cfi_endproc
	.section	.gcc_except_table._ZN11btTransform11getIdentityEv,"aG",@progbits,_ZN11btTransform11getIdentityEv,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp198-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin10        #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Lfunc_end21-.Ltmp199          #   Call between .Ltmp199 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11btMatrix3x311getIdentityEv,"axG",@progbits,_ZN11btMatrix3x311getIdentityEv,comdat
	.weak	_ZN11btMatrix3x311getIdentityEv # -- Begin function _ZN11btMatrix3x311getIdentityEv
	.p2align	5
	.type	_ZN11btMatrix3x311getIdentityEv,@function
_ZN11btMatrix3x311getIdentityEv:        # @_ZN11btMatrix3x311getIdentityEv
	.cfi_startproc
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	dbar	20
	beqz	$a0, .LBB22_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	ret
.LBB22_2:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB22_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 4
	st.w	$a1, $a0, 20
	vst	$vr0, $a0, 24
	st.d	$a1, $a0, 40
	pcalau12i	$a0, %pc_hi20(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
.LBB22_4:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcalau12i	$a0, %pc_hi20(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	addi.d	$a0, $a0, %pc_lo12(_ZZN11btMatrix3x311getIdentityEvE14identityMatrix)
	ret
.Lfunc_end22:
	.size	_ZN11btMatrix3x311getIdentityEv, .Lfunc_end22-_ZN11btMatrix3x311getIdentityEv
	.cfi_endproc
                                        # -- End function
	.type	_ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis,@object # @_ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis
	.local	_ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis
	.comm	_ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis,48,8
	.type	_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis,@object # @_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis
	.local	_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis
	.comm	_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" M(%.2f)"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" A(%.2f)"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d %d %d %d"
	.size	.L.str.2, 12

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%d %f %f %f"
	.size	.L.str.3, 12

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%d %d %d"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%d %d %d %d %d"
	.size	.L.str.5, 15

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Nodes:  %u\r\n"
	.size	.L.str.6, 13

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Links:  %u\r\n"
	.size	.L.str.7, 13

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Faces:  %u\r\n"
	.size	.L.str.8, 13

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Tetras: %u\r\n"
	.size	.L.str.9, 13

	.type	_ZZNK10btSoftBody4Body5xformEvE8identity,@object # @_ZZNK10btSoftBody4Body5xformEvE8identity
	.section	.bss._ZZNK10btSoftBody4Body5xformEvE8identity,"awG",@nobits,_ZZNK10btSoftBody4Body5xformEvE8identity,comdat
	.weak	_ZZNK10btSoftBody4Body5xformEvE8identity
	.p2align	2, 0x0
_ZZNK10btSoftBody4Body5xformEvE8identity:
	.space	64
	.size	_ZZNK10btSoftBody4Body5xformEvE8identity, 64

	.type	_ZGVZNK10btSoftBody4Body5xformEvE8identity,@object # @_ZGVZNK10btSoftBody4Body5xformEvE8identity
	.section	.bss._ZGVZNK10btSoftBody4Body5xformEvE8identity,"awG",@nobits,_ZGVZNK10btSoftBody4Body5xformEvE8identity,comdat
	.weak	_ZGVZNK10btSoftBody4Body5xformEvE8identity
	.p2align	3, 0x0
_ZGVZNK10btSoftBody4Body5xformEvE8identity:
	.dword	0                               # 0x0
	.size	_ZGVZNK10btSoftBody4Body5xformEvE8identity, 8

	.type	_ZZN11btTransform11getIdentityEvE17identityTransform,@object # @_ZZN11btTransform11getIdentityEvE17identityTransform
	.section	.bss._ZZN11btTransform11getIdentityEvE17identityTransform,"awG",@nobits,_ZZN11btTransform11getIdentityEvE17identityTransform,comdat
	.weak	_ZZN11btTransform11getIdentityEvE17identityTransform
	.p2align	2, 0x0
_ZZN11btTransform11getIdentityEvE17identityTransform:
	.space	64
	.size	_ZZN11btTransform11getIdentityEvE17identityTransform, 64

	.type	_ZGVZN11btTransform11getIdentityEvE17identityTransform,@object # @_ZGVZN11btTransform11getIdentityEvE17identityTransform
	.section	.bss._ZGVZN11btTransform11getIdentityEvE17identityTransform,"awG",@nobits,_ZGVZN11btTransform11getIdentityEvE17identityTransform,comdat
	.weak	_ZGVZN11btTransform11getIdentityEvE17identityTransform
	.p2align	3, 0x0
_ZGVZN11btTransform11getIdentityEvE17identityTransform:
	.dword	0                               # 0x0
	.size	_ZGVZN11btTransform11getIdentityEvE17identityTransform, 8

	.type	_ZZN11btMatrix3x311getIdentityEvE14identityMatrix,@object # @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix
	.section	.bss._ZZN11btMatrix3x311getIdentityEvE14identityMatrix,"awG",@nobits,_ZZN11btMatrix3x311getIdentityEvE14identityMatrix,comdat
	.weak	_ZZN11btMatrix3x311getIdentityEvE14identityMatrix
	.p2align	2, 0x0
_ZZN11btMatrix3x311getIdentityEvE14identityMatrix:
	.space	48
	.size	_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, 48

	.type	_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix,@object # @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix
	.section	.bss._ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix,"awG",@nobits,_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix,comdat
	.weak	_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix
	.p2align	3, 0x0
_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix:
	.dword	0                               # 0x0
	.size	_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix, 8

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
	.addrsig_sym _ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis
	.addrsig_sym _ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis
	.addrsig_sym _ZZNK10btSoftBody4Body5xformEvE8identity
	.addrsig_sym _ZGVZNK10btSoftBody4Body5xformEvE8identity
	.addrsig_sym _ZZN11btTransform11getIdentityEvE17identityTransform
	.addrsig_sym _ZGVZN11btTransform11getIdentityEvE17identityTransform
	.addrsig_sym _ZZN11btMatrix3x311getIdentityEvE14identityMatrix
	.addrsig_sym _ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix
