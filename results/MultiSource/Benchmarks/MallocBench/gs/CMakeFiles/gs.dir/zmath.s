	.file	"zmath.c"
	.text
	.globl	zmath_init                      # -- Begin function zmath_init
	.p2align	5
	.type	zmath_init,@function
zmath_init:                             # @zmath_init
# %bb.0:
	pcalau12i	$a0, %pc_hi20(rand_state)
	ori	$a1, $zero, 1
	st.d	$a1, $a0, %pc_lo12(rand_state)
	ret
.Lfunc_end0:
	.size	zmath_init, .Lfunc_end0-zmath_init
                                        # -- End function
	.globl	zsqrt                           # -- Begin function zsqrt
	.p2align	5
	.type	zsqrt,@function
zsqrt:                                  # @zsqrt
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB1_3
# %bb.1:
	fld.s	$fa1, $sp, 12
	movgr2fr.w	$fa0, $zero
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB1_4
# %bb.2:
	addi.w	$a0, $zero, -15
.LBB1_3:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_4:
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_6
.LBB1_5:                                # %.split
	move	$a0, $zero
	fst.s	$fa0, $fp, 0
	ori	$a1, $zero, 44
	st.h	$a1, $fp, 8
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_6:                                # %call.sqrt
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	b	.LBB1_5
.Lfunc_end1:
	.size	zsqrt, .Lfunc_end1-zsqrt
                                        # -- End function
	.globl	zarccos                         # -- Begin function zarccos
	.p2align	5
	.type	zarccos,@function
zarccos:                                # @zarccos
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_2
# %bb.1:
	fld.s	$fa0, $sp, 12
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(radians_to_degrees)
	fld.d	$fa1, $a0, %pc_lo12(radians_to_degrees)
	move	$a0, $zero
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 0
	ori	$a1, $zero, 44
	st.h	$a1, $fp, 8
.LBB2_2:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	zarccos, .Lfunc_end2-zarccos
                                        # -- End function
	.globl	zarcsin                         # -- Begin function zarcsin
	.p2align	5
	.type	zarcsin,@function
zarcsin:                                # @zarcsin
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_2
# %bb.1:
	fld.s	$fa0, $sp, 12
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(radians_to_degrees)
	fld.d	$fa1, $a0, %pc_lo12(radians_to_degrees)
	move	$a0, $zero
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 0
	ori	$a1, $zero, 44
	st.h	$a1, $fp, 8
.LBB3_2:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	zarcsin, .Lfunc_end3-zarcsin
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function zatan
.LCPI4_0:
	.dword	0xb690000000000000              # double -7.0064923216240854E-46
.LCPI4_1:
	.dword	0x40667ffff0000000              # double 179.99999237060547
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_2:
	.word	0xc3340000                      # float -180
.LCPI4_3:
	.word	0x43340000                      # float 180
	.text
	.globl	zatan
	.p2align	5
	.type	zatan,@function
zatan:                                  # @zatan
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_14
# %bb.1:
	fld.s	$fs1, $sp, 8
	movgr2fr.w	$fs0, $zero
	fcmp.cune.s	$fcc0, $fs1, $fs0
	bcnez	$fcc0, .LBB4_4
# %bb.2:
	fld.s	$fa0, $sp, 12
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB4_7
# %bb.3:
	addi.w	$a0, $zero, -23
	b	.LBB4_14
.LBB4_4:
	fld.s	$fa1, $sp, 12
	fcvt.d.s	$fa0, $fs1
	fcvt.d.s	$fa1, $fa1
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(radians_to_degrees)
	fld.d	$fa1, $a0, %pc_lo12(radians_to_degrees)
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI4_0)
	fmul.d	$fa1, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa1
	fcvt.s.d	$fa0, $fa1
	bcnez	$fcc0, .LBB4_8
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.LCPI4_3)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI4_3)
	.p2align	4, , 16
.LBB4_6:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB4_6
	b	.LBB4_11
.LBB4_7:
	pcalau12i	$a0, %pc_hi20(.LCPI4_3)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI4_3)
	fcmp.clt.s	$fcc0, $fa0, $fs0
	fsel	$fa0, $fs0, $fa1, $fcc0
	b	.LBB4_13
.LBB4_8:                                # %.preheader19
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI4_1)
	fcmp.cult.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB4_11
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.LCPI4_2)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI4_2)
	pcalau12i	$a0, %pc_hi20(.LCPI4_3)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI4_3)
	.p2align	4, , 16
.LBB4_10:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fadd.s	$fa0, $fa0, $fa1
	fcmp.cle.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB4_10
.LBB4_11:                               # %.loopexit
	fcmp.cule.s	$fcc0, $fs0, $fs1
	bcnez	$fcc0, .LBB4_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.LCPI4_3)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI4_3)
	fadd.s	$fa0, $fa0, $fa1
.LBB4_13:
	fst.s	$fa0, $fp, -16
	ori	$a0, $zero, 44
	st.h	$a0, $fp, -8
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a1, 0
	move	$a0, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a1, 0
.LBB4_14:
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	zatan, .Lfunc_end4-zatan
                                        # -- End function
	.globl	zcos                            # -- Begin function zcos
	.p2align	5
	.type	zcos,@function
zcos:                                   # @zcos
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_2
# %bb.1:
	fld.s	$fa0, $sp, 12
	pcalau12i	$a0, %pc_hi20(degrees_to_radians)
	fld.d	$fa1, $a0, %pc_lo12(degrees_to_radians)
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 0
	ori	$a1, $zero, 44
	st.h	$a1, $fp, 8
.LBB5_2:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	zcos, .Lfunc_end5-zcos
                                        # -- End function
	.globl	zsin                            # -- Begin function zsin
	.p2align	5
	.type	zsin,@function
zsin:                                   # @zsin
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB6_2
# %bb.1:
	fld.s	$fa0, $sp, 12
	pcalau12i	$a0, %pc_hi20(degrees_to_radians)
	fld.d	$fa1, $a0, %pc_lo12(degrees_to_radians)
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 0
	ori	$a1, $zero, 44
	st.h	$a1, $fp, 8
.LBB6_2:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	zsin, .Lfunc_end6-zsin
                                        # -- End function
	.globl	zexp                            # -- Begin function zexp
	.p2align	5
	.type	zexp,@function
zexp:                                   # @zexp
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_6
# %bb.1:
	fld.s	$fs1, $sp, 24
	fld.s	$fa0, $sp, 28
	movgr2fr.w	$fs2, $zero
	fcmp.cune.s	$fcc0, $fs1, $fs2
	addi.w	$a0, $zero, -23
	bcnez	$fcc0, .LBB7_3
# %bb.2:
	fcmp.ceq.s	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB7_6
.LBB7_3:
	fcvt.d.s	$fs0, $fa0
	move	$s0, $a0
	addi.d	$a0, $sp, 16
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(modf)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs2, $fs1
	bcnez	$fcc0, .LBB7_5
# %bb.4:
	move	$a0, $s0
	movgr2fr.d	$fa1, $zero
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_6
.LBB7_5:                                # %._crit_edge
	fcvt.d.s	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, -16
	ori	$a0, $zero, 44
	st.h	$a0, $fp, -8
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a1, 0
	move	$a0, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a1, 0
.LBB7_6:
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end7:
	.size	zexp, .Lfunc_end7-zexp
                                        # -- End function
	.globl	zln                             # -- Begin function zln
	.p2align	5
	.type	zln,@function
zln:                                    # @zln
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB8_3
# %bb.1:
	fld.s	$fa0, $sp, 12
	movgr2fr.w	$fa1, $zero
	fcmp.cle.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_4
# %bb.2:
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 0
	ori	$a1, $zero, 44
	st.h	$a1, $fp, 8
.LBB8_3:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB8_4:
	addi.w	$a0, $zero, -15
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	zln, .Lfunc_end8-zln
                                        # -- End function
	.globl	zlog                            # -- Begin function zlog
	.p2align	5
	.type	zlog,@function
zlog:                                   # @zlog
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB9_3
# %bb.1:
	fld.s	$fa0, $sp, 12
	movgr2fr.w	$fa1, $zero
	fcmp.cle.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_4
# %bb.2:
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 0
	ori	$a1, $zero, 44
	st.h	$a1, $fp, 8
.LBB9_3:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_4:
	addi.w	$a0, $zero, -15
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	zlog, .Lfunc_end9-zlog
                                        # -- End function
	.globl	zrand                           # -- Begin function zrand
	.p2align	5
	.type	zrand,@function
zrand:                                  # @zrand
# %bb.0:
	pcalau12i	$a1, %pc_hi20(rand_state)
	ld.d	$a2, $a1, %pc_lo12(rand_state)
	lu12i.w	$a3, 269412
	ori	$a4, $a3, 3693
	mul.d	$a2, $a2, $a4
	lu12i.w	$a3, 3
	ori	$a5, $a3, 57
	add.d	$a2, $a2, $a5
	mul.d	$a3, $a2, $a4
	add.d	$a3, $a3, $a5
	mul.d	$a4, $a3, $a4
	add.d	$a4, $a4, $a5
	st.d	$a4, $a1, %pc_lo12(rand_state)
	addi.d	$a5, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(osp)
	ld.d	$a1, $a1, %got_pc_lo12(osp)
	st.d	$a5, $a1, 0
	pcalau12i	$a6, %got_pc_hi20(ostop)
	ld.d	$a6, $a6, %got_pc_lo12(ostop)
	ld.d	$a6, $a6, 0
	bgeu	$a6, $a5, .LBB10_2
# %bb.1:
	st.d	$a0, $a1, 0
	addi.w	$a0, $zero, -16
	ret
.LBB10_2:
	slli.d	$a2, $a2, 21
	slli.d	$a3, $a3, 10
	add.d	$a2, $a3, $a2
	srli.d	$a3, $a4, 3
	add.d	$a2, $a2, $a3
	bstrpick.d	$a2, $a2, 30, 0
	st.d	$a2, $a0, 16
	ori	$a2, $zero, 20
	st.h	$a2, $a0, 24
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	zrand, .Lfunc_end10-zrand
                                        # -- End function
	.globl	zsrand                          # -- Begin function zsrand
	.p2align	5
	.type	zsrand,@function
zsrand:                                 # @zsrand
# %bb.0:
	ld.hu	$a1, $a0, 8
	andi	$a1, $a1, 252
	ori	$a2, $zero, 20
	bne	$a1, $a2, .LBB11_2
# %bb.1:
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(rand_state)
	st.d	$a0, $a1, %pc_lo12(rand_state)
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a1, 0
	move	$a0, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a1, 0
	ret
.LBB11_2:
	addi.w	$a0, $zero, -20
	ret
.Lfunc_end11:
	.size	zsrand, .Lfunc_end11-zsrand
                                        # -- End function
	.globl	zrrand                          # -- Begin function zrrand
	.p2align	5
	.type	zrrand,@function
zrrand:                                 # @zrrand
# %bb.0:
	addi.d	$a2, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(osp)
	ld.d	$a1, $a1, %got_pc_lo12(osp)
	st.d	$a2, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(ostop)
	ld.d	$a3, $a3, %got_pc_lo12(ostop)
	ld.d	$a3, $a3, 0
	bgeu	$a3, $a2, .LBB12_2
# %bb.1:
	st.d	$a0, $a1, 0
	addi.w	$a0, $zero, -16
	ret
.LBB12_2:
	pcalau12i	$a1, %pc_hi20(rand_state)
	ld.d	$a2, $a1, %pc_lo12(rand_state)
	st.d	$a2, $a0, 16
	ori	$a2, $zero, 20
	st.h	$a2, $a0, 24
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	zrrand, .Lfunc_end12-zrrand
                                        # -- End function
	.globl	zmath_op_init                   # -- Begin function zmath_op_init
	.p2align	5
	.type	zmath_op_init,@function
zmath_op_init:                          # @zmath_op_init
# %bb.0:
	pcalau12i	$a0, %pc_hi20(zmath_op_init.my_defs)
	addi.d	$a0, $a0, %pc_lo12(zmath_op_init.my_defs)
	pcaddu18i	$t8, %call36(z_op_init)
	jr	$t8
.Lfunc_end13:
	.size	zmath_op_init, .Lfunc_end13-zmath_op_init
                                        # -- End function
	.type	degrees_to_radians,@object      # @degrees_to_radians
	.data
	.globl	degrees_to_radians
	.p2align	3, 0x0
degrees_to_radians:
	.dword	0x3f91df46a2529d39              # double 0.017453292519943295
	.size	degrees_to_radians, 8

	.type	radians_to_degrees,@object      # @radians_to_degrees
	.globl	radians_to_degrees
	.p2align	3, 0x0
radians_to_degrees:
	.dword	0x404ca5dc1a63c1f8              # double 57.295779513082323
	.size	radians_to_degrees, 8

	.type	rand_state,@object              # @rand_state
	.bss
	.globl	rand_state
	.p2align	3, 0x0
rand_state:
	.dword	0                               # 0x0
	.size	rand_state, 8

	.type	zmath_op_init.my_defs,@object   # @zmath_op_init.my_defs
	.data
	.p2align	3, 0x0
zmath_op_init.my_defs:
	.dword	.L.str
	.dword	zarccos
	.dword	.L.str.1
	.dword	zarcsin
	.dword	.L.str.2
	.dword	zatan
	.dword	.L.str.3
	.dword	zcos
	.dword	.L.str.4
	.dword	zexp
	.dword	.L.str.5
	.dword	zln
	.dword	.L.str.6
	.dword	zlog
	.dword	.L.str.7
	.dword	zrand
	.dword	.L.str.8
	.dword	zrrand
	.dword	.L.str.9
	.dword	zsin
	.dword	.L.str.10
	.dword	zsqrt
	.dword	.L.str.11
	.dword	zsrand
	.space	16
	.size	zmath_op_init.my_defs, 208

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1arccos"
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"1arcsin"
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"2atan"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"1cos"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"2exp"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"1ln"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"1log"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"0rand"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"0rrand"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"1sin"
	.size	.L.str.9, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"1sqrt"
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"1srand"
	.size	.L.str.11, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym zsqrt
	.addrsig_sym zarccos
	.addrsig_sym zarcsin
	.addrsig_sym zatan
	.addrsig_sym zcos
	.addrsig_sym zsin
	.addrsig_sym zexp
	.addrsig_sym zln
	.addrsig_sym zlog
	.addrsig_sym zrand
	.addrsig_sym zsrand
	.addrsig_sym zrrand
	.addrsig_sym zmath_op_init.my_defs
