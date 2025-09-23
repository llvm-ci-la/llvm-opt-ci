	.file	"lsx-vaddwev-3.c"
	.text
	.globl	check_lsx_out                   # -- Begin function check_lsx_out
	.p2align	5
	.type	check_lsx_out,@function
check_lsx_out:                          # @check_lsx_out
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s1, $a0
	slti	$a0, $a2, 16
	ori	$a1, $zero, 16
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB0_7
# %bb.2:                                # %.lr.ph.preheader
	bstrpick.d	$s3, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	bnez	$s3, .LBB0_3
# %bb.4:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph20
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 1
	bnez	$s1, .LBB0_5
	b	.LBB0_8
.LBB0_6:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_7:                                # %._crit_edge21.critedge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %._crit_edge21
	ori	$a0, $zero, 10
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end0:
	.size	check_lsx_out, .Lfunc_end0-check_lsx_out
                                        # -- End function
	.globl	check_lsx_fp_out                # -- Begin function check_lsx_fp_out
	.p2align	5
	.type	check_lsx_fp_out,@function
check_lsx_fp_out:                       # @check_lsx_fp_out
# %bb.0:
	addi.d	$sp, $sp, -96
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
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	ori	$a1, $zero, 4
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 8
	maskeqz	$a2, $a2, $a0
	or	$s4, $a2, $a1
	move	$s7, $zero
	ori	$s8, $zero, 16
	bnez	$a0, .LBB1_2
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	add.d	$s7, $s7, $s4
	bgeu	$s7, $s8, .LBB1_10
.LBB1_2:                                # %.split.us
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s7
	add.d	$s5, $s2, $s7
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_1
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	fld.d	$fa0, $s6, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_9
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	fld.d	$fa0, $s5, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_1
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	add.d	$s7, $s7, $s4
	bgeu	$s7, $s8, .LBB1_10
.LBB1_6:                                # %.split
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s7
	add.d	$s5, $s2, $s7
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_5
# %bb.7:                                # %.critedge
                                        #   in Loop: Header=BB1_6 Depth=1
	fld.s	$fa0, $s6, 0
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=1
	fld.s	$fa0, $s5, 0
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_5
.LBB1_9:                                # %.split27.us
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
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
	pcaddu18i	$t8, %call36(check_lsx_out)
	jr	$t8
.LBB1_10:                               # %.loopexit
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
.Lfunc_end1:
	.size	check_lsx_fp_out, .Lfunc_end1-check_lsx_fp_out
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI2_0:
	.dword	36029200754213080               # 0x80005e007f00d8
	.dword	1970677028749410                # 0x7005200440062
.LCPI2_1:
	.byte	212                             # 0xd4
	.byte	85                              # 0x55
	.byte	252                             # 0xfc
	.byte	67                              # 0x43
	.byte	219                             # 0xdb
	.byte	213                             # 0xd5
	.byte	124                             # 0x7c
	.byte	131                             # 0x83
	.byte	94                              # 0x5e
	.byte	89                              # 0x59
	.byte	193                             # 0xc1
	.byte	1                               # 0x1
	.byte	207                             # 0xcf
	.byte	207                             # 0xcf
	.byte	3                               # 0x3
	.byte	4                               # 0x4
.LCPI2_2:
	.dword	281659656765552                 # 0x1002affca0070
	.dword	59392504303648955               # 0xd3012b015700bb
.LCPI2_3:
	.byte	208                             # 0xd0
	.byte	159                             # 0x9f
	.byte	202                             # 0xca
	.byte	201                             # 0xc9
	.byte	42                              # 0x2a
	.byte	124                             # 0x7c
	.byte	1                               # 0x1
	.byte	229                             # 0xe5
	.byte	188                             # 0xbc
	.byte	53                              # 0x35
	.byte	88                              # 0x58
	.byte	138                             # 0x8a
	.byte	44                              # 0x2c
	.byte	87                              # 0x57
	.byte	212                             # 0xd4
	.byte	230                             # 0xe6
.LCPI2_4:
	.byte	160                             # 0xa0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	248                             # 0xf8
	.byte	255                             # 0xff
	.byte	202                             # 0xca
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_5:
	.dword	28147411778207852               # 0x63ffec0063006c
	.dword	27867100737634627               # 0x6300fb00630143
.LCPI2_6:
	.byte	108                             # 0x6c
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	236                             # 0xec
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	69                              # 0x45
	.byte	23                              # 0x17
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	17                              # 0x11
	.byte	119                             # 0x77
	.byte	99                              # 0x63
	.byte	99                              # 0x63
.LCPI2_7:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	234                             # 0xea
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_8:
	.dword	0                               # 0x0
	.dword	65535                           # 0xffff
.LCPI2_9:
	.dword	-65536                          # 0xffffffffffff0000
	.dword	0                               # 0x0
.LCPI2_10:
	.byte	157                             # 0x9d
	.byte	156                             # 0x9c
	.byte	156                             # 0x9c
	.byte	156                             # 0x9c
	.byte	156                             # 0x9c
	.byte	156                             # 0x9c
	.byte	156                             # 0x9c
	.byte	156                             # 0x9c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_11:
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_12:
	.dword	280929515864063                 # 0xff80ffffffff
	.dword	-35747322042253440              # 0xff80ffffffffff80
.LCPI2_13:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	128                             # 0x80
	.byte	128                             # 0x80
.LCPI2_14:
	.dword	8444601490735097                # 0x1e0052001ffff9
	.dword	15762409725886437               # 0x37ffd40083ffe5
.LCPI2_15:
	.byte	75                              # 0x4b
	.byte	8                               # 0x8
	.byte	1                               # 0x1
	.byte	163                             # 0xa3
	.byte	164                             # 0xa4
	.byte	154                             # 0x9a
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	55                              # 0x37
	.byte	136                             # 0x88
	.byte	101                             # 0x65
	.byte	203                             # 0xcb
	.byte	38                              # 0x26
	.byte	127                             # 0x7f
	.byte	25                              # 0x19
	.byte	0                               # 0x0
.LCPI2_16:
	.dword	71776157732700056               # 0xff000900ffff98
	.dword	71777214294589695               # 0xff00ff00ff00ff
.LCPI2_17:
	.byte	152                             # 0x98
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	245                             # 0xf5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_18:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_19:
	.dword	4286578688                      # 0xff800000
	.dword	-1970724269064272               # 0xfff8ffa2fffdffb0
.LCPI2_20:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	176                             # 0xb0
	.byte	2                               # 0x2
	.byte	253                             # 0xfd
	.byte	15                              # 0xf
	.byte	162                             # 0xa2
	.byte	129                             # 0x81
	.byte	248                             # 0xf8
	.byte	16                              # 0x10
.LCPI2_21:
	.dword	0                               # 0x0
	.dword	140733193420799                 # 0x7fff00007fff
.LCPI2_22:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
.LCPI2_23:
	.dword	1                               # 0x1
	.dword	123                             # 0x7b
.LCPI2_24:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	123                             # 0x7b
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_25:
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_26:
	.dword	-8589934595                     # 0xfffffffdfffffffd
	.dword	-12884901891                    # 0xfffffffcfffffffd
.LCPI2_27:
	.half	65533                           # 0xfffd
	.half	65532                           # 0xfffc
	.half	65533                           # 0xfffd
	.half	65532                           # 0xfffc
	.half	65533                           # 0xfffd
	.half	65532                           # 0xfffc
	.half	65532                           # 0xfffc
	.half	65532                           # 0xfffc
.LCPI2_28:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	7682                            # 0x1e02
	.half	0                               # 0x0
	.half	7682                            # 0x1e02
.LCPI2_29:
	.dword	5                               # 0x5
	.dword	0                               # 0x0
.LCPI2_30:
	.dword	81492709493278                  # 0x4a1e00004a1e
	.dword	8                               # 0x8
.LCPI2_31:
	.half	18974                           # 0x4a1e
	.half	41717                           # 0xa2f5
	.half	18974                           # 0x4a1e
	.half	41717                           # 0xa2f5
	.half	8                               # 0x8
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	32768                           # 0x8000
.LCPI2_32:
	.dword	147910083774341                 # 0x868600008785
	.dword	0                               # 0x0
.LCPI2_33:
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_34:
	.half	34438                           # 0x8686
	.half	34438                           # 0x8686
	.half	34438                           # 0x8686
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_35:
	.dword	221001837253015                 # 0xc90000011197
	.dword	227379863635543                 # 0xcecd00004657
.LCPI2_36:
	.half	4504                            # 0x1198
	.half	5654                            # 0x1616
	.half	57472                           # 0xe080
	.half	16888                           # 0x41f8
	.half	57110                           # 0xdf16
	.half	25515                           # 0x63ab
	.half	25443                           # 0x6363
	.half	58211                           # 0xe363
.LCPI2_37:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	59520                           # 0xe880
	.half	16888                           # 0x41f8
	.half	26433                           # 0x6741
	.half	65096                           # 0xfe48
	.half	27498                           # 0x6b6a
	.half	25443                           # 0x6363
.LCPI2_38:
	.dword	1048574                         # 0xffffe
	.dword	983054                          # 0xf000e
.LCPI2_39:
	.word	1048574                         # 0xffffe
	.word	65521                           # 0xfff1
	.word	983054                          # 0xf000e
	.word	1                               # 0x1
.LCPI2_40:
	.word	4294967295                      # 0xffffffff
	.word	875605918                       # 0x3430af9e
	.word	4294967295                      # 0xffffffff
	.word	201843073                       # 0xc07e181
.LCPI2_41:
	.dword	16646399                        # 0xfe00ff
	.dword	0                               # 0x0
.LCPI2_42:
	.dword	-86                             # 0xffffffffffffffaa
	.dword	917547                          # 0xe002b
.LCPI2_43:
	.word	4294967210                      # 0xffffffaa
	.word	73                              # 0x49
	.word	917547                          # 0xe002b
	.word	393234                          # 0x60012
.LCPI2_44:
	.dword	4294933075                      # 0xffff7a53
	.dword	7946                            # 0x1f0a
.LCPI2_45:
	.word	4294959350                      # 0xffffe0f6
	.word	49151                           # 0xbfff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_46:
	.word	4294941021                      # 0xffff995d
	.word	38282                           # 0x958a
	.word	7946                            # 0x1f0a
	.word	111                             # 0x6f
.LCPI2_47:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	524288                          # 0x80000
.LCPI2_48:
	.dword	11                              # 0xb
	.dword	8388736                         # 0x800080
.LCPI2_49:
	.word	11                              # 0xb
	.word	8388715                         # 0x80006b
	.word	8388736                         # 0x800080
	.word	8388736                         # 0x800080
.LCPI2_50:
	.dword	1431655765                      # 0x55555555
	.dword	0                               # 0x0
.LCPI2_51:
	.word	1431655765                      # 0x55555555
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_52:
	.dword	10616652                        # 0xa1ff4c
	.dword	-8318975                        # 0xffffffffff811001
.LCPI2_53:
	.word	5308326                         # 0x50ffa6
	.word	262227                          # 0x40053
	.word	4286644225                      # 0xff810001
	.word	4294901887                      # 0xffff007f
.LCPI2_54:
	.word	5308326                         # 0x50ffa6
	.word	262227                          # 0x40053
	.word	4096                            # 0x1000
	.word	4286546177                      # 0xff7f8101
.LCPI2_55:
	.dword	2147483678                      # 0x8000001e
	.dword	31                              # 0x1f
.LCPI2_56:
	.word	2147483647                      # 0x7fffffff
	.word	2147483647                      # 0x7fffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_57:
	.word	31                              # 0x1f
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	32                              # 0x20
.LCPI2_58:
	.dword	5348437490                      # 0x13ecaadf2
	.dword	896105806                       # 0x35697d4e
.LCPI2_59:
	.word	1529960949                      # 0x5b3159f5
	.word	2517746584                      # 0x9611c398
	.word	2976182571                      # 0xb164f12b
	.word	2262664001                      # 0x86dd8341
.LCPI2_60:
	.word	3818476541                      # 0xe39953fd
	.word	4185482584                      # 0xf9796558
	.word	2214890531                      # 0x84048c23
	.word	3542456873                      # 0xd3259a29
.LCPI2_61:
	.dword	1126139167                      # 0x431f851f
	.dword	16777488                        # 0x1000110
.LCPI2_62:
	.word	1109427216                      # 0x42208410
	.word	3253747216                      # 0xc1f03e10
	.word	65537                           # 0x10001
	.word	65537                           # 0x10001
.LCPI2_63:
	.word	16711951                        # 0xff010f
	.word	16711935                        # 0xff00ff
	.word	16711951                        # 0xff010f
	.word	16711919                        # 0xff00ef
.LCPI2_64:
	.dword	12884901951                     # 0x30000003f
	.dword	0                               # 0x0
.LCPI2_65:
	.dword	12884901951                     # 0x30000003f
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
.LCPI2_66:
	.dword	0                               # 0x0
	.dword	-2                              # 0xfffffffffffffffe
.LCPI2_67:
	.dword	-274877907010                   # 0xffffffbfffffffbe
	.dword	0                               # 0x0
.LCPI2_68:
	.dword	-6759317647381217409            # 0xa23214697fd03f7f
	.dword	0                               # 0x0
.LCPI2_69:
	.dword	2242545392676478720             # 0x1f1f1f27332b9f00
	.dword	2242545357980376832             # 0x1f1f1f1f1f1f1f00
.LCPI2_70:
	.dword	-9001863040057696129            # 0x8312f5424ca4a07f
	.dword	482203189336056473              # 0x6b1213ef1efa299
.LCPI2_71:
	.dword	9223372034707292160             # 0x7fffffff80000000
	.dword	0                               # 0x0
.LCPI2_72:
	.dword	9223372034707292160             # 0x7fffffff80000000
	.dword	-9223372032559818656            # 0x80000000ffffd860
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	vst	$vr0, $sp, 64
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	lu12i.w	$a0, -509896
	ori	$a0, $a0, 1028
	lu32i.d	$a0, 263043
	lu52i.d	$a0, $a0, 64
	vreplgr2vr.d	$vr1, $a0
	vaddwev.h.bu.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 64
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vaddwev.h.bu.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vaddwev.h.bu.b	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 64
	vaddwev.h.bu.b	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 64
	vaddwev.h.bu.b	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	vst	$vr0, $sp, 64
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vaddwev.h.bu.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_11)
	vst	$vr0, $sp, 64
	vaddwev.h.bu.b	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vaddwev.h.bu.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	vst	$vr0, $sp, 64
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	lu12i.w	$a0, 495
	ori	$a0, $a0, 4014
	vreplgr2vr.w	$vr1, $a0
	vaddwev.h.bu.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr0, $sp, 64
	vaddwev.h.bu.b	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_20)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vaddwev.h.bu.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vaddwev.w.hu.h	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_22)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vaddwev.w.hu.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_25)
	vst	$vr0, $sp, 64
	vaddwev.w.hu.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_28)
	vst	$vr0, $sp, 64
	vaddwev.w.hu.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vldi	$vr0, -3585
	vst	$vr0, $sp, 64
	vrepli.h	$vr0, -256
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vaddwev.w.hu.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_29)
	vst	$vr0, $sp, 64
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vaddwev.w.hu.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 257
	vst	$vr0, $sp, 64
	vrepli.b	$vr0, 1
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vaddwev.w.hu.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 4
	vst	$vr0, $sp, 64
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vaddwev.w.hu.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_31)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vaddwev.w.hu.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_34)
	vst	$vr0, $sp, 64
	vaddwev.w.hu.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_37)
	vst	$vr0, $sp, 64
	vaddwev.w.hu.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_39)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vaddwev.d.wu.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	vldi	$vr1, -1777
	vst	$vr1, $sp, 64
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vaddwev.d.wu.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_41)
	vst	$vr0, $sp, 64
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vaddwev.d.wu.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_43)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vaddwev.d.wu.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_46)
	vst	$vr0, $sp, 64
	vaddwev.d.wu.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -17
	ori	$a0, $a0, 3840
	lu32i.d	$a0, 0
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 64
	lu12i.w	$a0, -9
	ori	$a0, $a0, 3968
	vreplgr2vr.w	$vr0, $a0
	vaddwev.d.wu.w	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vaddwev.d.wu.w	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 991
	pcalau12i	$a1, %pc_hi20(.LCPI2_47)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_47)
	ori	$a0, $a0, 4034
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 64
	vaddwev.d.wu.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_49)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vaddwev.d.wu.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vldi	$vr0, -1787
	vst	$vr0, $sp, 64
	vrepli.h	$vr0, 255
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vaddwev.d.wu.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_51)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vaddwev.d.wu.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_54)
	vst	$vr0, $sp, 64
	vaddwev.d.wu.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_57)
	vst	$vr0, $sp, 64
	vaddwev.d.wu.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_59)
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_60)
	vst	$vr0, $sp, 64
	vaddwev.d.wu.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_61)
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_63)
	vst	$vr0, $sp, 64
	vaddwev.d.wu.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vaddwev.q.du.d	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_64)
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_65)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vaddwev.q.du.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_66)
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 64
	vaddwev.q.du.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_67)
	vst	$vr0, $sp, 64
	vrepli.w	$vr0, -65
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vaddwev.q.du.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_68)
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_69)
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_70)
	vst	$vr0, $sp, 64
	vaddwev.q.du.d	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_71)
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_72)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vaddwev.q.du.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d: \n"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"0x"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" %02x"
	.size	.L.str.2, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vaddwev-3.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
