	.file	"perlin.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0xc0c62c48f5c28f5c              # double -11352.57
.LCPI0_1:
	.dword	0xc075a1f9db22d0e5              # double -346.12349999999998
.LCPI0_2:
	.dword	0x40373c083126e979              # double 23.234500000000001
.LCPI0_4:
	.dword	0x3fed2c62745753ff              # double 0.91166804049373684
.LCPI0_5:
	.dword	0x400399999999999a              # double 2.4500000000000002
.LCPI0_6:
	.dword	0x3ff6eb851eb851ec              # double 1.4325000000000001
.LCPI0_7:
	.dword	0x405f07ef9db22d0e              # double 124.124
.LCPI0_8:
	.dword	0x3fbf9db22d0e5604              # double 0.1235
.LCPI0_9:
	.dword	0x40d702647ae147ae              # double 23561.57
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_3:
	.dword	0x3fe87ae147ae1400              # double 0.76499999999998636
	.dword	0xbfce147ae147b000              # double -0.23500000000001364
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(p)
	addi.d	$fp, $a0, %pc_lo12(p)
	pcalau12i	$a0, %pc_hi20(permutation)
	addi.d	$s0, $a0, %pc_lo12(permutation)
	ori	$a2, $zero, 1024
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1024
	ori	$a2, $zero, 1024
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	vldi	$vr2, -850
	vldi	$vr3, -1000
	vldi	$vr4, -988
	vldi	$vr5, -784
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa6, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa7, $a0, %pc_lo12(.LCPI0_2)
	vrepli.w	$vr8, 15
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr9, $a0, %pc_lo12(.LCPI0_3)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$ft2, $a0, %pc_lo12(.LCPI0_4)
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$ft3, $a0, %pc_lo12(.LCPI0_5)
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	fld.d	$ft4, $a0, %pc_lo12(.LCPI0_6)
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	fld.d	$ft5, $a0, %pc_lo12(.LCPI0_7)
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	fld.d	$ft6, $a0, %pc_lo12(.LCPI0_8)
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	fld.d	$ft7, $a0, %pc_lo12(.LCPI0_9)
	vrepli.w	$vr16, 13
	vrepli.w	$vr17, 1
	vrepli.w	$vr18, 2
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	fadd.d	$fa1, $fa1, $ft6
	fcmp.clt.d	$fcc0, $fa1, $ft7
	bceqz	$fcc0, .LBB0_7
.LBB0_2:                                # %.preheader14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	vreplvei.d	$vr19, $vr1, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft12, $ft11
	movfr2gr.s	$a0, $ft12
	andi	$a0, $a0, 255
	fsub.d	$ft13, $fa1, $ft11
	fmul.d	$ft11, $ft13, $ft13
	fmul.d	$ft11, $ft13, $ft11
	fmadd.d	$ft12, $ft13, $fa3, $fa2
	fmadd.d	$ft12, $ft13, $ft12, $fa4
	fmul.d	$ft11, $ft11, $ft12
	alsl.d	$a0, $a0, $fp, 2
	fadd.d	$ft12, $ft13, $fa5
	vreplvei.d	$vr19, $vr19, 0
	vreplvei.d	$vr20, $vr20, 0
	vreplvei.d	$vr21, $vr21, 0
	fmov.d	$ft14, $fa6
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=2
	fadd.d	$ft14, $ft14, $ft4
	fcmp.clt.d	$fcc0, $ft14, $ft5
	bceqz	$fcc0, .LBB0_1
.LBB0_4:                                # %.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	fcmp.cule.d	$fcc0, $fa7, $ft14
	bcnez	$fcc0, .LBB0_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=2
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 4
	.p2align	4, , 16
.LBB0_6:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vreplvei.d	$vr23, $vr22, 0
	vfrintrm.d	$vr23, $vr23
	ftintrz.w.d	$fs0, $ft15
	movfr2gr.s	$a3, $fs0
	andi	$a3, $a3, 255
	fsub.d	$fs1, $ft14, $ft15
	fmul.d	$ft15, $fs1, $fs1
	fmul.d	$ft15, $fs1, $ft15
	fmadd.d	$fs0, $fs1, $fa3, $fa2
	fmadd.d	$fs0, $fs1, $fs0, $fa4
	fmul.d	$ft15, $ft15, $fs0
	add.w	$a4, $a1, $a3
	alsl.d	$a5, $a4, $fp, 2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $fp, $a4
	ld.w	$a5, $a5, 4
	add.w	$a3, $a2, $a3
	slli.d	$a6, $a3, 2
	ldx.w	$a6, $fp, $a6
	alsl.d	$a3, $a3, $fp, 2
	ld.w	$a3, $a3, 4
	alsl.d	$a4, $a4, $fp, 2
	alsl.d	$a6, $a6, $fp, 2
	ld.d	$a7, $a4, 396
	alsl.d	$a4, $a5, $fp, 2
	fadd.d	$fs0, $fs1, $fa5
	alsl.d	$a3, $a3, $fp, 2
	vinsgr2vr.d	$vr26, $a7, 0
	vand.v	$vr27, $vr26, $vr8
	vslti.wu	$vr28, $vr27, 4
	vshuf4i.w	$vr28, $vr28, 16
	vslli.d	$vr28, $vr28, 32
	vsrai.d	$vr28, $vr28, 32
	vand.v	$vr29, $vr26, $vr16
	vseqi.w	$vr29, $vr29, 12
	vshuf4i.w	$vr29, $vr29, 16
	vslli.d	$vr29, $vr29, 32
	vsrai.d	$vr29, $vr29, 32
	vbitsel.v	$vr29, $vr9, $vr21, $vr29
	vreplvei.d	$vr25, $vr25, 0
	vbitsel.v	$vr28, $vr29, $vr25, $vr28
	vslti.wu	$vr27, $vr27, 8
	vshuf4i.w	$vr27, $vr27, 16
	vslli.d	$vr27, $vr27, 32
	vsrai.d	$vr27, $vr27, 32
	vbitsel.v	$vr27, $vr25, $vr21, $vr27
	vand.v	$vr29, $vr26, $vr17
	vseqi.w	$vr29, $vr29, 0
	vshuf4i.w	$vr29, $vr29, 16
	vslli.d	$vr29, $vr29, 32
	vsrai.d	$vr29, $vr29, 32
	vbitrevi.d	$vr30, $vr27, 63
	vbitsel.v	$vr27, $vr30, $vr27, $vr29
	vand.v	$vr26, $vr26, $vr18
	vseqi.w	$vr26, $vr26, 0
	vshuf4i.w	$vr26, $vr26, 16
	vslli.d	$vr26, $vr26, 32
	vsrai.d	$vr26, $vr26, 32
	ld.d	$a5, $a6, 396
	vbitrevi.d	$vr29, $vr28, 63
	vbitsel.v	$vr26, $vr29, $vr28, $vr26
	vfadd.d	$vr26, $vr27, $vr26
	vinsgr2vr.d	$vr27, $a5, 0
	vand.v	$vr28, $vr27, $vr8
	vslti.wu	$vr29, $vr28, 4
	vshuf4i.w	$vr29, $vr29, 16
	vslli.d	$vr29, $vr29, 32
	vsrai.d	$vr29, $vr29, 32
	vand.v	$vr30, $vr27, $vr16
	vseqi.w	$vr30, $vr30, 12
	vshuf4i.w	$vr30, $vr30, 16
	vslli.d	$vr30, $vr30, 32
	vsrai.d	$vr30, $vr30, 32
	vbitsel.v	$vr30, $vr9, $vr20, $vr30
	vbitsel.v	$vr29, $vr30, $vr25, $vr29
	vslti.wu	$vr28, $vr28, 8
	vshuf4i.w	$vr28, $vr28, 16
	vslli.d	$vr28, $vr28, 32
	vsrai.d	$vr28, $vr28, 32
	vbitsel.v	$vr25, $vr25, $vr20, $vr28
	vand.v	$vr28, $vr27, $vr17
	vseqi.w	$vr28, $vr28, 0
	vshuf4i.w	$vr28, $vr28, 16
	vslli.d	$vr28, $vr28, 32
	vsrai.d	$vr28, $vr28, 32
	vbitrevi.d	$vr30, $vr25, 63
	vbitsel.v	$vr25, $vr30, $vr25, $vr28
	vand.v	$vr27, $vr27, $vr18
	vseqi.w	$vr27, $vr27, 0
	vshuf4i.w	$vr27, $vr27, 16
	vslli.d	$vr27, $vr27, 32
	vsrai.d	$vr27, $vr27, 32
	vbitrevi.d	$vr28, $vr29, 63
	vbitsel.v	$vr27, $vr28, $vr29, $vr27
	ld.d	$a4, $a4, 396
	vfadd.d	$vr25, $vr25, $vr27
	vfsub.d	$vr25, $vr25, $vr26
	vfmadd.d	$vr25, $vr19, $vr25, $vr26
	vinsgr2vr.d	$vr26, $a4, 0
	vand.v	$vr27, $vr26, $vr8
	vslti.wu	$vr28, $vr27, 4
	vshuf4i.w	$vr28, $vr28, 16
	vslli.d	$vr28, $vr28, 32
	vsrai.d	$vr28, $vr28, 32
	vand.v	$vr29, $vr26, $vr16
	vseqi.w	$vr29, $vr29, 12
	vshuf4i.w	$vr29, $vr29, 16
	vslli.d	$vr29, $vr29, 32
	vsrai.d	$vr29, $vr29, 32
	vbitsel.v	$vr29, $vr9, $vr21, $vr29
	vreplvei.d	$vr24, $vr24, 0
	vbitsel.v	$vr28, $vr29, $vr24, $vr28
	vslti.wu	$vr27, $vr27, 8
	vshuf4i.w	$vr27, $vr27, 16
	vslli.d	$vr27, $vr27, 32
	vsrai.d	$vr27, $vr27, 32
	vbitsel.v	$vr27, $vr24, $vr21, $vr27
	vand.v	$vr29, $vr26, $vr17
	vseqi.w	$vr29, $vr29, 0
	vshuf4i.w	$vr29, $vr29, 16
	vslli.d	$vr29, $vr29, 32
	vsrai.d	$vr29, $vr29, 32
	vbitrevi.d	$vr30, $vr27, 63
	vbitsel.v	$vr27, $vr30, $vr27, $vr29
	vand.v	$vr26, $vr26, $vr18
	vseqi.w	$vr26, $vr26, 0
	vshuf4i.w	$vr26, $vr26, 16
	vslli.d	$vr26, $vr26, 32
	vsrai.d	$vr26, $vr26, 32
	ld.d	$a3, $a3, 396
	vbitrevi.d	$vr29, $vr28, 63
	vbitsel.v	$vr26, $vr29, $vr28, $vr26
	vfadd.d	$vr26, $vr27, $vr26
	vinsgr2vr.d	$vr27, $a3, 0
	vand.v	$vr28, $vr27, $vr8
	vslti.wu	$vr29, $vr28, 4
	vshuf4i.w	$vr29, $vr29, 16
	vslli.d	$vr29, $vr29, 32
	vsrai.d	$vr29, $vr29, 32
	vand.v	$vr30, $vr27, $vr16
	vseqi.w	$vr30, $vr30, 12
	vshuf4i.w	$vr30, $vr30, 16
	vslli.d	$vr30, $vr30, 32
	vsrai.d	$vr30, $vr30, 32
	vbitsel.v	$vr30, $vr9, $vr20, $vr30
	vbitsel.v	$vr29, $vr30, $vr24, $vr29
	vslti.wu	$vr28, $vr28, 8
	vshuf4i.w	$vr28, $vr28, 16
	vslli.d	$vr28, $vr28, 32
	vsrai.d	$vr28, $vr28, 32
	vbitsel.v	$vr24, $vr24, $vr20, $vr28
	vand.v	$vr28, $vr27, $vr17
	vseqi.w	$vr28, $vr28, 0
	vshuf4i.w	$vr28, $vr28, 16
	vslli.d	$vr28, $vr28, 32
	vsrai.d	$vr28, $vr28, 32
	vbitrevi.d	$vr30, $vr24, 63
	vbitsel.v	$vr24, $vr30, $vr24, $vr28
	vand.v	$vr27, $vr27, $vr18
	vseqi.w	$vr27, $vr27, 0
	vshuf4i.w	$vr27, $vr27, 16
	vslli.d	$vr27, $vr27, 32
	vsrai.d	$vr27, $vr27, 32
	vbitrevi.d	$vr28, $vr29, 63
	vbitsel.v	$vr27, $vr28, $vr29, $vr27
	vfadd.d	$vr24, $vr24, $vr27
	vfsub.d	$vr24, $vr24, $vr26
	vfmadd.d	$vr24, $vr19, $vr24, $vr26
	vfsub.d	$vr24, $vr24, $vr25
	vreplvei.d	$vr23, $vr23, 0
	vfmadd.d	$vr23, $vr23, $vr24, $vr25
	vreplvei.d	$vr24, $vr23, 0
	vreplvei.d	$vr23, $vr23, 1
	fsub.d	$ft15, $ft15, $fs0
	fmadd.d	$ft15, $ft15, $ft2, $fs0
	fadd.d	$ft14, $ft14, $ft3
	fcmp.clt.d	$fcc0, $ft14, $fa7
	fadd.d	$fa0, $fa0, $ft15
	bcnez	$fcc0, .LBB0_6
	b	.LBB0_3
.LBB0_7:
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs6, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%e\n"
	.size	.L.str, 4

	.type	permutation,@object             # @permutation
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
permutation:
	.word	151                             # 0x97
	.word	160                             # 0xa0
	.word	137                             # 0x89
	.word	91                              # 0x5b
	.word	90                              # 0x5a
	.word	15                              # 0xf
	.word	131                             # 0x83
	.word	13                              # 0xd
	.word	201                             # 0xc9
	.word	95                              # 0x5f
	.word	96                              # 0x60
	.word	53                              # 0x35
	.word	194                             # 0xc2
	.word	233                             # 0xe9
	.word	7                               # 0x7
	.word	225                             # 0xe1
	.word	140                             # 0x8c
	.word	36                              # 0x24
	.word	103                             # 0x67
	.word	30                              # 0x1e
	.word	69                              # 0x45
	.word	142                             # 0x8e
	.word	8                               # 0x8
	.word	99                              # 0x63
	.word	37                              # 0x25
	.word	240                             # 0xf0
	.word	21                              # 0x15
	.word	10                              # 0xa
	.word	23                              # 0x17
	.word	190                             # 0xbe
	.word	6                               # 0x6
	.word	148                             # 0x94
	.word	247                             # 0xf7
	.word	120                             # 0x78
	.word	234                             # 0xea
	.word	75                              # 0x4b
	.word	0                               # 0x0
	.word	26                              # 0x1a
	.word	197                             # 0xc5
	.word	62                              # 0x3e
	.word	94                              # 0x5e
	.word	252                             # 0xfc
	.word	219                             # 0xdb
	.word	203                             # 0xcb
	.word	117                             # 0x75
	.word	35                              # 0x23
	.word	11                              # 0xb
	.word	32                              # 0x20
	.word	57                              # 0x39
	.word	177                             # 0xb1
	.word	33                              # 0x21
	.word	88                              # 0x58
	.word	237                             # 0xed
	.word	149                             # 0x95
	.word	56                              # 0x38
	.word	87                              # 0x57
	.word	174                             # 0xae
	.word	20                              # 0x14
	.word	125                             # 0x7d
	.word	136                             # 0x88
	.word	171                             # 0xab
	.word	168                             # 0xa8
	.word	68                              # 0x44
	.word	175                             # 0xaf
	.word	74                              # 0x4a
	.word	165                             # 0xa5
	.word	71                              # 0x47
	.word	134                             # 0x86
	.word	139                             # 0x8b
	.word	48                              # 0x30
	.word	27                              # 0x1b
	.word	166                             # 0xa6
	.word	77                              # 0x4d
	.word	146                             # 0x92
	.word	158                             # 0x9e
	.word	231                             # 0xe7
	.word	83                              # 0x53
	.word	111                             # 0x6f
	.word	229                             # 0xe5
	.word	122                             # 0x7a
	.word	60                              # 0x3c
	.word	211                             # 0xd3
	.word	133                             # 0x85
	.word	230                             # 0xe6
	.word	220                             # 0xdc
	.word	105                             # 0x69
	.word	92                              # 0x5c
	.word	41                              # 0x29
	.word	55                              # 0x37
	.word	46                              # 0x2e
	.word	245                             # 0xf5
	.word	40                              # 0x28
	.word	244                             # 0xf4
	.word	102                             # 0x66
	.word	143                             # 0x8f
	.word	54                              # 0x36
	.word	65                              # 0x41
	.word	25                              # 0x19
	.word	63                              # 0x3f
	.word	161                             # 0xa1
	.word	1                               # 0x1
	.word	216                             # 0xd8
	.word	80                              # 0x50
	.word	73                              # 0x49
	.word	209                             # 0xd1
	.word	76                              # 0x4c
	.word	132                             # 0x84
	.word	187                             # 0xbb
	.word	208                             # 0xd0
	.word	89                              # 0x59
	.word	18                              # 0x12
	.word	169                             # 0xa9
	.word	200                             # 0xc8
	.word	196                             # 0xc4
	.word	135                             # 0x87
	.word	130                             # 0x82
	.word	116                             # 0x74
	.word	188                             # 0xbc
	.word	159                             # 0x9f
	.word	86                              # 0x56
	.word	164                             # 0xa4
	.word	100                             # 0x64
	.word	109                             # 0x6d
	.word	198                             # 0xc6
	.word	173                             # 0xad
	.word	186                             # 0xba
	.word	3                               # 0x3
	.word	64                              # 0x40
	.word	52                              # 0x34
	.word	217                             # 0xd9
	.word	226                             # 0xe2
	.word	250                             # 0xfa
	.word	124                             # 0x7c
	.word	123                             # 0x7b
	.word	5                               # 0x5
	.word	202                             # 0xca
	.word	38                              # 0x26
	.word	147                             # 0x93
	.word	118                             # 0x76
	.word	126                             # 0x7e
	.word	255                             # 0xff
	.word	82                              # 0x52
	.word	85                              # 0x55
	.word	212                             # 0xd4
	.word	207                             # 0xcf
	.word	206                             # 0xce
	.word	59                              # 0x3b
	.word	227                             # 0xe3
	.word	47                              # 0x2f
	.word	16                              # 0x10
	.word	58                              # 0x3a
	.word	17                              # 0x11
	.word	182                             # 0xb6
	.word	189                             # 0xbd
	.word	28                              # 0x1c
	.word	42                              # 0x2a
	.word	223                             # 0xdf
	.word	183                             # 0xb7
	.word	170                             # 0xaa
	.word	213                             # 0xd5
	.word	119                             # 0x77
	.word	248                             # 0xf8
	.word	152                             # 0x98
	.word	2                               # 0x2
	.word	44                              # 0x2c
	.word	154                             # 0x9a
	.word	163                             # 0xa3
	.word	70                              # 0x46
	.word	221                             # 0xdd
	.word	153                             # 0x99
	.word	101                             # 0x65
	.word	155                             # 0x9b
	.word	167                             # 0xa7
	.word	43                              # 0x2b
	.word	172                             # 0xac
	.word	9                               # 0x9
	.word	129                             # 0x81
	.word	22                              # 0x16
	.word	39                              # 0x27
	.word	253                             # 0xfd
	.word	19                              # 0x13
	.word	98                              # 0x62
	.word	108                             # 0x6c
	.word	110                             # 0x6e
	.word	79                              # 0x4f
	.word	113                             # 0x71
	.word	224                             # 0xe0
	.word	232                             # 0xe8
	.word	178                             # 0xb2
	.word	185                             # 0xb9
	.word	112                             # 0x70
	.word	104                             # 0x68
	.word	218                             # 0xda
	.word	246                             # 0xf6
	.word	97                              # 0x61
	.word	228                             # 0xe4
	.word	251                             # 0xfb
	.word	34                              # 0x22
	.word	242                             # 0xf2
	.word	193                             # 0xc1
	.word	238                             # 0xee
	.word	210                             # 0xd2
	.word	144                             # 0x90
	.word	12                              # 0xc
	.word	191                             # 0xbf
	.word	179                             # 0xb3
	.word	162                             # 0xa2
	.word	241                             # 0xf1
	.word	81                              # 0x51
	.word	51                              # 0x33
	.word	145                             # 0x91
	.word	235                             # 0xeb
	.word	249                             # 0xf9
	.word	14                              # 0xe
	.word	239                             # 0xef
	.word	107                             # 0x6b
	.word	49                              # 0x31
	.word	192                             # 0xc0
	.word	214                             # 0xd6
	.word	31                              # 0x1f
	.word	181                             # 0xb5
	.word	199                             # 0xc7
	.word	106                             # 0x6a
	.word	157                             # 0x9d
	.word	184                             # 0xb8
	.word	84                              # 0x54
	.word	204                             # 0xcc
	.word	176                             # 0xb0
	.word	115                             # 0x73
	.word	121                             # 0x79
	.word	50                              # 0x32
	.word	45                              # 0x2d
	.word	127                             # 0x7f
	.word	4                               # 0x4
	.word	150                             # 0x96
	.word	254                             # 0xfe
	.word	138                             # 0x8a
	.word	236                             # 0xec
	.word	205                             # 0xcd
	.word	93                              # 0x5d
	.word	222                             # 0xde
	.word	114                             # 0x72
	.word	67                              # 0x43
	.word	29                              # 0x1d
	.word	24                              # 0x18
	.word	72                              # 0x48
	.word	243                             # 0xf3
	.word	141                             # 0x8d
	.word	128                             # 0x80
	.word	195                             # 0xc3
	.word	78                              # 0x4e
	.word	66                              # 0x42
	.word	215                             # 0xd7
	.word	61                              # 0x3d
	.word	156                             # 0x9c
	.word	180                             # 0xb4
	.size	permutation, 1024

	.type	p,@object                       # @p
	.local	p
	.comm	p,2048,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
