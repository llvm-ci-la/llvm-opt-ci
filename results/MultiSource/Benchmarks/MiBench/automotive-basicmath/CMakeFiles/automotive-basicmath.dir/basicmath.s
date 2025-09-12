	.file	"basicmath.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x4040000000000000              # double 32
.LCPI0_1:
	.dword	0xc02b666666666666              # double -13.699999999999999
.LCPI0_2:
	.dword	0xc041800000000000              # double -35
.LCPI0_3:
	.dword	0x4028ae147ae147ae              # double 12.34
.LCPI0_4:
	.dword	0xc050f8f5c28f5c29              # double -67.890000000000001
.LCPI0_5:
	.dword	0xc03799999999999a              # double -23.600000000000001
.LCPI0_6:
	.dword	0x4046800000000000              # double 45
.LCPI0_7:
	.dword	0x4021570a3d70a3d7              # double 8.6699999999999999
.LCPI0_8:
	.dword	0x4041000000000000              # double 34
.LCPI0_9:
	.dword	0xbffb333333333333              # double -1.7
.LCPI0_10:
	.dword	0x4015333333333333              # double 5.2999999999999998
.LCPI0_11:
	.dword	0xbff7374bc6a7ef9e              # double -1.4510000000000001
.LCPI0_12:
	.dword	0xbffe6e978d4fdf3c              # double -1.9020000000000001
.LCPI0_13:
	.dword	0xc002d2f1a9fbe76d              # double -2.3530000000000002
.LCPI0_14:
	.dword	0xc0066e978d4fdf3c              # double -2.8040000000000003
.LCPI0_15:
	.dword	0xc00a0a3d70a3d70b              # double -3.2550000000000003
.LCPI0_16:
	.dword	0xc00da5e353f7ceda              # double -3.7060000000000004
.LCPI0_17:
	.dword	0xc010a0c49ba5e354              # double -4.157
.LCPI0_18:
	.dword	0xc0126e978d4fdf3b              # double -4.6079999999999997
.LCPI0_19:
	.dword	0x3fe3851eb851eb85              # double 0.60999999999999999
.LCPI0_20:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI0_21:
	.dword	0x4066800000000000              # double 180
.LCPI0_22:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
.LCPI0_23:
	.dword	0x4076800000000000              # double 360
.LCPI0_24:
	.dword	0x3f41df46a2529d39              # double 5.4541539124822798E-4
.LCPI0_25:
	.dword	0x401921fb97600b9b              # double 6.2831863071795864
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_0)
	vldi	$vr0, -912
	vldi	$vr1, -859
	vldi	$vr3, -834
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	addi.d	$s0, $sp, 80
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_2
.LBB0_3:                                # %._crit_edge
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vldi	$vr1, -878
	vldi	$vr2, -975
	vldi	$vr3, -834
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	addi.d	$s0, $sp, 80
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_6
# %bb.4:                                # %.lr.ph110.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph110
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_5
.LBB0_6:                                # %._crit_edge111
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	vldi	$vr1, -884
	vldi	$vr2, -970
	vldi	$vr3, -833
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	addi.d	$s0, $sp, 80
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_9
# %bb.7:                                # %.lr.ph114.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph114
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_8
.LBB0_9:                                # %._crit_edge115
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_2)
	vldi	$vr0, -912
	vldi	$vr2, -912
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	addi.d	$s0, $sp, 80
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_12
# %bb.10:                               # %.lr.ph118.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph118
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_11
.LBB0_12:                               # %._crit_edge119
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_3)
	vldi	$vr0, -1016
	vldi	$vr2, -1004
	vldi	$vr3, -984
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	addi.d	$s0, $sp, 80
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_15
# %bb.13:                               # %.lr.ph122.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_14:                               # %.lr.ph122
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_14
.LBB0_15:                               # %._crit_edge123
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_4)
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_5)
	vldi	$vr0, -864
	vldi	$vr2, -1000
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	addi.d	$s0, $sp, 80
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_18
# %bb.16:                               # %.lr.ph126.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_17:                               # %.lr.ph126
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_17
.LBB0_18:                               # %._crit_edge127
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_6)
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_7)
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_8)
	vldi	$vr2, -994
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	addi.d	$s0, $sp, 80
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_21
# %bb.19:                               # %.lr.ph130.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_20:                               # %.lr.ph130
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB0_20
.LBB0_21:                               # %._crit_edge131
	ori	$a0, $zero, 10
	ori	$s1, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_9)
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_10)
	vldi	$vr0, -856
	vldi	$vr3, -976
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	addi.d	$s0, $sp, 80
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_24
# %bb.22:                               # %.lr.ph134.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	move	$s2, $zero
	.p2align	4, , 16
.LBB0_23:                               # %.lr.ph134
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 8
	blt	$s2, $a0, .LBB0_23
.LBB0_24:                               # %._crit_edge135
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$fp, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_11)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_11)
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_12)
	pcalau12i	$a0, %pc_hi20(.LCPI0_13)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI0_13)
	pcalau12i	$a0, %pc_hi20(.LCPI0_14)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI0_14)
	pcalau12i	$a0, %pc_hi20(.LCPI0_15)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI0_15)
	movgr2fr.d	$fs5, $zero
	vldi	$vr0, -912
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=1
	addi.w	$s2, $s2, 1
	vldi	$vr0, -912
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	beq	$s2, $s1, .LBB0_57
.LBB0_26:                               # %.preheader106
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_35 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_41 Depth 4
                                        #         Child Loop BB0_44 Depth 4
                                        #         Child Loop BB0_47 Depth 4
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_53 Depth 4
                                        #         Child Loop BB0_56 Depth 4
	vldi	$vr0, -988
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_27:                               #   in Loop: Header=BB0_28 Depth=2
	vldi	$vr0, -816
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	fcmp.clt.d	$fcc0, $fs5, $fa1
	bceqz	$fcc0, .LBB0_25
.LBB0_28:                               # %.preheader105
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_35 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_41 Depth 4
                                        #         Child Loop BB0_44 Depth 4
                                        #         Child Loop BB0_47 Depth 4
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_53 Depth 4
                                        #         Child Loop BB0_56 Depth 4
	vldi	$vr2, -1004
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %._crit_edge139.8
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_19)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_19)
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vldi	$vr0, -978
	fcmp.clt.d	$fcc0, $fa2, $fa0
	bceqz	$fcc0, .LBB0_27
.LBB0_30:                               # %.preheader
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_35 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_41 Depth 4
                                        #         Child Loop BB0_44 Depth 4
                                        #         Child Loop BB0_47 Depth 4
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_53 Depth 4
                                        #         Child Loop BB0_56 Depth 4
	vldi	$vr3, -784
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_33
# %bb.31:                               # %.lr.ph138.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s3, $zero
	addi.d	$s4, $sp, 80
	.p2align	4, , 16
.LBB0_32:                               # %.lr.ph138
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s4, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB0_32
.LBB0_33:                               # %._crit_edge139
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs0
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_36
# %bb.34:                               # %.lr.ph138.1.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s3, $zero
	addi.d	$s4, $sp, 80
	.p2align	4, , 16
.LBB0_35:                               # %.lr.ph138.1
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s4, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB0_35
.LBB0_36:                               # %._crit_edge139.1
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs1
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_39
# %bb.37:                               # %.lr.ph138.2.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s3, $zero
	addi.d	$s4, $sp, 80
	.p2align	4, , 16
.LBB0_38:                               # %.lr.ph138.2
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s4, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB0_38
.LBB0_39:                               # %._crit_edge139.2
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs2
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_42
# %bb.40:                               # %.lr.ph138.3.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s3, $zero
	addi.d	$s4, $sp, 80
	.p2align	4, , 16
.LBB0_41:                               # %.lr.ph138.3
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s4, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB0_41
.LBB0_42:                               # %._crit_edge139.3
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs3
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_45
# %bb.43:                               # %.lr.ph138.4.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s3, $zero
	addi.d	$s4, $sp, 80
	.p2align	4, , 16
.LBB0_44:                               # %.lr.ph138.4
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s4, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB0_44
.LBB0_45:                               # %._crit_edge139.4
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_48
# %bb.46:                               # %.lr.ph138.5.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s3, $zero
	addi.d	$s4, $sp, 80
	.p2align	4, , 16
.LBB0_47:                               # %.lr.ph138.5
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s4, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB0_47
.LBB0_48:                               # %._crit_edge139.5
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_16)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_16)
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_51
# %bb.49:                               # %.lr.ph138.6.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s3, $zero
	addi.d	$s4, $sp, 80
	.p2align	4, , 16
.LBB0_50:                               # %.lr.ph138.6
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB0_50
.LBB0_51:                               # %._crit_edge139.6
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_17)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_17)
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_54
# %bb.52:                               # %.lr.ph138.7.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s3, $zero
	addi.d	$s4, $sp, 80
	.p2align	4, , 16
.LBB0_53:                               # %.lr.ph138.7
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB0_53
.LBB0_54:                               # %._crit_edge139.7
                                        #   in Loop: Header=BB0_30 Depth=3
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_18)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_18)
	addi.d	$a0, $sp, 76
	addi.d	$a1, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	pcaddu18i	$ra, %call36(SolveCubic)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	blez	$a0, .LBB0_29
# %bb.55:                               # %.lr.ph138.8.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	move	$s3, $zero
	addi.d	$s4, $sp, 80
	.p2align	4, , 16
.LBB0_56:                               # %.lr.ph138.8
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB0_56
	b	.LBB0_29
.LBB0_57:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$fp, $zero, -2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	lu12i.w	$a0, 24
	ori	$s1, $a0, 1694
	.p2align	4, , 16
.LBB0_58:                               # =>This Inner Loop Header: Depth=1
	addi.w	$fp, $fp, 2
	addi.d	$a1, $sp, 68
	move	$a0, $fp
	pcaddu18i	$ra, %call36(usqrt)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 68
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bltu	$fp, $s1, .LBB0_58
# %bb.59:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	lu12i.w	$s1, 4
	lu12i.w	$a0, 261840
	ori	$fp, $a0, 361
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s0, $a0, %pc_lo12(.L.str.6)
	.p2align	4, , 16
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 68
	move	$a0, $fp
	pcaddu18i	$ra, %call36(usqrt)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 68
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	addi.w	$fp, $fp, 1
	bnez	$s1, .LBB0_60
# %bb.61:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_20)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_20)
	pcalau12i	$a0, %pc_hi20(.LCPI0_21)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_21)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$fp, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.LCPI0_22)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI0_22)
	pcalau12i	$a0, %pc_hi20(.LCPI0_23)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI0_23)
	.p2align	4, , 16
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	fmul.d	$fa0, $fs5, $fs0
	fdiv.d	$fa0, $fa0, $fs1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a1, $fs5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fadd.d	$fs5, $fs5, $fs2
	fcmp.cle.d	$fcc0, $fs5, $fs3
	bcnez	$fcc0, .LBB0_62
# %bb.63:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$fp, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.LCPI0_24)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI0_24)
	pcalau12i	$a0, %pc_hi20(.LCPI0_25)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI0_25)
	.p2align	4, , 16
.LBB0_64:                               # =>This Inner Loop Header: Depth=1
	fmul.d	$fa0, $fs2, $fs1
	fdiv.d	$fa0, $fa0, $fs0
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a1, $fs2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fadd.d	$fs2, $fs2, $fs3
	fcmp.cle.d	$fcc0, $fs2, $fs4
	bcnez	$fcc0, .LBB0_64
# %bb.65:
	move	$a0, $zero
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Solutions:"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" %f"
	.size	.L.str.2, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"sqrt(%3d) = %2d\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"sqrt(%X) = %X\n"
	.size	.L.str.6, 15

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%3.0f degrees = %.12f radians\n"
	.size	.L.str.8, 31

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%.12f radians = %3.0f degrees\n"
	.size	.L.str.10, 31

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"********* CUBIC FUNCTIONS ***********"
	.size	.Lstr, 38

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"********* INTEGER SQR ROOTS ***********"
	.size	.Lstr.1, 40

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"********* ANGLE CONVERSION ***********"
	.size	.Lstr.2, 39

	.section	".note.GNU-stack","",@progbits
	.addrsig
