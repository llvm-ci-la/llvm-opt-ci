	.file	"lsx-vmaddwod-1.c"
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
	.dword	-4222674290017968               # 0xfff0ff8006f0f950
	.dword	1103673425922                   # 0x100f8100002
.LCPI2_1:
	.byte	61                              # 0x3d
	.byte	141                             # 0x8d
	.byte	255                             # 0xff
	.byte	111                             # 0x6f
	.byte	1                               # 0x1
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	60                              # 0x3c
	.byte	141                             # 0x8d
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_2:
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	12                              # 0xc
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	12                              # 0xc
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_3:
	.half	128                             # 0x80
	.half	0                               # 0x0
	.half	128                             # 0x80
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	256                             # 0x100
	.half	0                               # 0x0
.LCPI2_4:
	.dword	36025498505054272               # 0x7ffd0001400840
	.dword	0                               # 0x0
.LCPI2_5:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_6:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_7:
	.dword	0                               # 0x0
	.dword	281479271743576                 # 0x1000100010058
.LCPI2_8:
	.dword	281114367229952                 # 0xffac0a000000
	.dword	0                               # 0x0
.LCPI2_9:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_10:
	.dword	402499625                       # 0x17fda829
	.dword	0                               # 0x0
.LCPI2_11:
	.dword	-360468015218689                # 0xfffeb827ffffffff
	.dword	-14846705509859328              # 0xffcb410000000000
.LCPI2_12:
	.half	51353                           # 0xc899
	.half	28709                           # 0x7025
	.half	51066                           # 0xc77a
	.half	55045                           # 0xd705
	.half	40066                           # 0x9c82
	.half	60922                           # 0xedfa
	.half	47659                           # 0xba2b
	.half	27006                           # 0x697e
.LCPI2_13:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65408                           # 0xff80
.LCPI2_14:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_15:
	.dword	4294966272                      # 0xfffffc00
	.dword	0                               # 0x0
.LCPI2_16:
	.half	16                              # 0x10
	.half	32                              # 0x20
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.dword	15                              # 0xf
	.dword	0                               # 0x0
.LCPI2_18:
	.half	43370                           # 0xa96a
	.half	41897                           # 0xa3a9
	.half	44168                           # 0xac88
	.half	43692                           # 0xaaac
	.half	347                             # 0x15b
	.half	44033                           # 0xac01
	.half	197                             # 0xc5
	.half	0                               # 0x0
.LCPI2_19:
	.dword	2936069132462437874             # 0x28bf0351ec69b5f2
	.dword	9147937486695854209             # 0x7ef400ad21fc7081
.LCPI2_20:
	.half	0                               # 0x0
	.half	32704                           # 0x7fc0
	.half	0                               # 0x0
	.half	65408                           # 0xff80
	.half	0                               # 0x0
	.half	65408                           # 0xff80
	.half	0                               # 0x0
	.half	65408                           # 0xff80
.LCPI2_21:
	.half	17431                           # 0x4417
	.half	65535                           # 0xffff
	.half	24704                           # 0x6080
	.half	65535                           # 0xffff
	.half	22473                           # 0x57c9
	.half	65535                           # 0xffff
	.half	47467                           # 0xb96b
	.half	65535                           # 0xffff
.LCPI2_22:
	.word	3966383538                      # 0xec6a35b2
	.word	683606737                       # 0x28bf02d1
	.word	570191873                       # 0x21fc7001
	.word	2129920045                      # 0x7ef4002d
.LCPI2_23:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	8193                            # 0x2001
	.half	1                               # 0x1
	.half	8193                            # 0x2001
	.half	1                               # 0x1
.LCPI2_24:
	.dword	675821423377252353              # 0x961000100000001
	.dword	1171006271860506624             # 0x1040400000000000
.LCPI2_25:
	.word	0                               # 0x0
	.word	3472883712                      # 0xcf000000
	.word	0                               # 0x0
	.word	3212836864                      # 0xbf800000
.LCPI2_26:
	.word	0                               # 0x0
	.word	3472883712                      # 0xcf000000
	.word	65535                           # 0xffff
	.word	3212836864                      # 0xbf800000
.LCPI2_27:
	.dword	4294967297                      # 0x100000001
	.dword	0                               # 0x0
.LCPI2_28:
	.dword	16842752                        # 0x1010000
	.dword	240747115642801097              # 0x3574e39e496cbc9
.LCPI2_29:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_30:
	.word	4294901760                      # 0xffff0000
	.word	0                               # 0x0
	.word	1648395005                      # 0x624082fd
	.word	2108273210                      # 0x7da9b23a
.LCPI2_31:
	.dword	16842752                        # 0x1010000
	.dword	240747117751074307              # 0x3574e3a62407e03
.LCPI2_32:
	.dword	0                               # 0x0
	.dword	288234774265332736              # 0x400040004000400
.LCPI2_33:
	.word	16877704                        # 0x1018888
	.word	4294967295                      # 0xffffffff
	.word	4177058522                      # 0xf8f8dada
	.word	4294967295                      # 0xffffffff
.LCPI2_34:
	.word	63                              # 0x3f
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_35:
	.dword	4286713729                      # 0xff820f81
	.dword	1133814145303110649             # 0xfbc1df53c1ae3f9
.LCPI2_36:
	.word	65537                           # 0x10001
	.word	65473                           # 0xffc1
	.word	0                               # 0x0
	.word	1064807093                      # 0x3f77aab5
.LCPI2_37:
	.word	8454144                         # 0x810000
	.word	0                               # 0x0
	.word	4286586014                      # 0xff801c9e
	.word	0                               # 0x0
.LCPI2_38:
	.dword	844424930205728                 # 0x3000000012020
	.dword	1970324837294080                # 0x700000004e000
.LCPI2_39:
	.word	539221212                       # 0x2023dcdc
	.word	0                               # 0x0
	.word	3758758133                      # 0xe00a18f5
	.word	0                               # 0x0
.LCPI2_40:
	.dword	917490                          # 0xdfff2
	.dword	1179630                         # 0x11ffee
.LCPI2_41:
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	13                              # 0xd
	.word	18                              # 0x12
.LCPI2_42:
	.dword	9221121336552718337             # 0x7ff8010000000001
	.dword	16383                           # 0x3fff
.LCPI2_43:
	.dword	-549755813888                   # 0xffffff8000000000
	.dword	-549755813889                   # 0xffffff7fffffffff
.LCPI2_44:
	.dword	9221120237041090560             # 0x7ff8000000000000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_45:
	.dword	142991487208915200              # 0x1fc020000fe0100
	.dword	280375481794560                 # 0xff0000ff0000
.LCPI2_46:
	.dword	0                               # 0x0
	.dword	280375465148160                 # 0xff000000ff00
.LCPI2_47:
	.dword	139642272677642                 # 0x7f01000eff0a
	.dword	-139642270580986                # 0xffff80ff0010ff06
.LCPI2_48:
	.dword	-281479271743490                # 0xfffefffefffefffe
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_49:
	.dword	-140737488289793                # 0xffff80000000ffff
	.dword	-139642271629313                # 0xffff80ff0000ffff
.LCPI2_50:
	.dword	1048329                         # 0xfff09
	.dword	1048328                         # 0xfff08
.LCPI2_51:
	.dword	-2865273967080406912            # 0xd83c8081ffff8080
	.dword	-8809767585695884904            # 0x85bd6b0e94d89998
.LCPI2_52:
	.dword	281470681808894                 # 0xffff0000fffe
	.dword	-8771604703529074689            # 0x8644ffff0000ffff
.LCPI2_53:
	.dword	-7110727613834309859            # 0x9d519ee8d2d84f1d
	.dword	-72761837686390913              # 0xfefd7f7e7f7f7f7f
.LCPI2_54:
	.dword	33292288                        # 0x1fc0000
	.dword	0                               # 0x0
.LCPI2_55:
	.dword	4398113620224                   # 0x40004000100
	.dword	0                               # 0x0
.LCPI2_56:
	.dword	8700954484357988352             # 0x78c00000ff000000
	.dword	0                               # 0x0
.LCPI2_57:
	.dword	33620482                        # 0x2010202
	.dword	117901056                       # 0x7070700
.LCPI2_58:
	.dword	3267019458                      # 0xc2bac2c2
	.dword	4278124138                      # 0xfefefe6a
.LCPI2_59:
	.dword	-2303045787611101184            # 0xe009f00ee7fb0800
	.dword	-9220715597567338478            # 0x8009700478185812
.LCPI2_60:
	.dword	4503530906845167                # 0xfffefffefffef
	.dword	9007130539458544                # 0x1ffff0003ffff0
.LCPI2_61:
	.dword	0                               # 0x0
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
.LCPI2_62:
	.dword	1229783075686256929             # 0x1111113111111121
	.dword	1229783075686256961             # 0x1111113111111141
.LCPI2_63:
	.dword	-65528                          # 0xffffffffffff0008
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_64:
	.dword	1152939097095081474             # 0x1000100012030e02
	.dword	0                               # 0x0
.LCPI2_65:
	.dword	-9001863040057696129            # 0x8312f5424ca4a07f
	.dword	482203189336056473              # 0x6b1213ef1efa299
.LCPI2_66:
	.dword	2242545392676478720             # 0x1f1f1f27332b9f00
	.dword	2242545357980376832             # 0x1f1f1f1f1f1f1f00
.LCPI2_67:
	.dword	135466111                       # 0x8130c7f
	.dword	0                               # 0x0
.LCPI2_68:
	.dword	-21473454297                    # 0xfffffffb00151727
	.dword	0                               # 0x0
.LCPI2_69:
	.dword	4                               # 0x4
	.dword	281479271677948                 # 0x10000fffffffc
.LCPI2_70:
	.dword	-4293585109                     # 0xffffffff0015172b
	.dword	0                               # 0x0
.LCPI2_71:
	.dword	-506376775186446073             # 0xf8f8fd0180810907
	.dword	72344572888938742               # 0x10105017878f8f6
.LCPI2_72:
	.dword	0                               # 0x0
	.dword	8796093024256                   # 0x80000000800
.LCPI2_73:
	.dword	8589934594                      # 0x200000002
	.dword	288300753552949250              # 0x400400204004002
.LCPI2_74:
	.dword	1                               # 0x1
	.dword	-2                              # 0xfffffffffffffffe
.LCPI2_75:
	.dword	344                             # 0x158
	.dword	0                               # 0x0
.LCPI2_76:
	.dword	4                               # 0x4
	.dword	0                               # 0x0
.LCPI2_77:
	.dword	4294705114                      # 0xfffbffda
	.dword	36028827083735060               # 0x80000700000014
.LCPI2_78:
	.dword	327738                          # 0x5003a
	.dword	0                               # 0x0
.LCPI2_79:
	.dword	-5642533481374349712            # 0xb1b1b1b1b16f0670
	.dword	4369217                         # 0x42ab41
.LCPI2_80:
	.dword	605487104                       # 0x24170000
	.dword	139268814                       # 0x84d12ce
.LCPI2_81:
	.dword	3215095600015308672             # 0x2c9e5069f5d57780
	.dword	3671497626540264331             # 0x32f3c7a38f9f4b8b
.LCPI2_82:
	.dword	0                               # 0x0
	.dword	144978226320704061              # 0x20310edc003023d
.LCPI2_83:
	.dword	4134499775884103776             # 0x3960b1a401811060
	.dword	3642867292822574496             # 0x328e1080889415a0
.LCPI2_84:
	.dword	-2602180950778263930            # 0xdbe332365392c686
	.dword	11732530579207398               # 0x29aeaca57d74e6
.LCPI2_85:
	.dword	-158048186386413306             # 0xfdce8003090b0906
	.dword	465217141700099200              # 0x674c8868a74fc80
.LCPI2_86:
	.dword	147912340702854                 # 0x868686868686
	.dword	0                               # 0x0
.LCPI2_87:
	.dword	-3525714796440573074            # 0xcf1225129ad22b6e
	.dword	1382020057511208                # 0x4e8f09e99b528
.LCPI2_88:
	.dword	1553038699397120                # 0x5847b00000000
	.dword	1552514713387013                # 0x5840100000005
.LCPI2_89:
	.dword	4753796247420539288             # 0x41f8e08016161198
	.dword	-2061694925880434922            # 0xe363636363abdf16
.LCPI2_90:
	.dword	-3248463884288                  # 0xfffffd0ba876d000
	.dword	3021694443520                   # 0x2bf8b062000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	vmaddwod.h.b	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 24
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 112
	vmaddwod.h.b	$vr3, $vr2, $vr1
	vst	$vr3, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 31
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.h.b	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 38
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_5)
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	lu12i.w	$a0, 2
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 112
	vmaddwod.h.b	$vr1, $vr0, $vr2
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 45
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.h.b	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 52
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr0, $sp, 112
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.h.b	$vr0, $vr1, $vr2
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.w.h	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 66
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	pcalau12i	$a1, %pc_hi20(.LCPI2_14)
	vld	$vr3, $a1, %pc_lo12(.LCPI2_14)
	vst	$vr3, $sp, 80                   # 16-byte Folded Spill
	vld	$vr2, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr0, $sp, 112
	vori.b	$vr0, $vr3, 0
	vmaddwod.w.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 73
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr0, $sp, 112
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.w.h	$vr0, $vr1, $vr2
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 80
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr0, $sp, 112
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.w.h	$vr0, $vr1, $vr2
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 87
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_22)
	vst	$vr0, $sp, 112
	vmaddwod.w.h	$vr3, $vr2, $vr1
	vst	$vr3, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 94
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vmaddwod.w.h	$vr1, $vr0, $vr1
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 112
	vmaddwod.d.w	$vr3, $vr2, $vr1
	vst	$vr3, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 108
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_31)
	vst	$vr0, $sp, 112
	vmaddwod.d.w	$vr3, $vr2, $vr1
	vst	$vr3, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 115
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_33)
	vst	$vr0, $sp, 112
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.d.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 122
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vmaddwod.d.w	$vr1, $vr0, $vr1
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 129
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_36)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.d.w	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 136
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vmaddwod.d.w	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vst	$vr2, $sp, 112
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_37)
	lu12i.w	$a0, 131072
	ori	$a0, $a0, 32
	vreplgr2vr.d	$vr1, $a0
	vmaddwod.d.w	$vr2, $vr1, $vr0
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 150
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_38)
	vst	$vr0, $sp, 112
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_39)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 3
	vreplgr2vr.d	$vr2, $a0
	vmaddwod.d.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 157
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_41)
	vst	$vr0, $sp, 112
	vldi	$vr0, -1729
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.d.w	$vr2, $vr1, $vr0
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 164
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vmaddwod.q.d	$vr1, $vr1, $vr1
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 171
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_44)
	vst	$vr0, $sp, 112
	vmaddwod.q.d	$vr2, $vr1, $vr1
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 178
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vmaddwod.q.du	$vr1, $vr1, $vr1
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 192
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_46)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vmaddwod.q.d	$vr1, $vr0, $vr1
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 199
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_50)
	vst	$vr0, $sp, 112
	vmaddwod.q.du	$vr3, $vr2, $vr1
	vst	$vr3, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 206
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_53)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vmaddwod.q.du	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 213
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_55)
	vst	$vr0, $sp, 112
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.q.du	$vr0, $vr1, $vr2
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 220
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_56)
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.q.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 234
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_57)
	vst	$vr0, $sp, 112
	vrepli.b	$vr2, -1
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vmaddwod.q.du	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 241
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_58)
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.q.du.d	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 248
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vmaddwod.q.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 255
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_59)
	vst	$vr0, $sp, 112
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_60)
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_61)
	lu12i.w	$a0, 4
	ori	$a0, $a0, 3968
	vreplgr2vr.h	$vr2, $a0
	vmaddwod.q.du.d	$vr1, $vr2, $vr0
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 262
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_62)
	vst	$vr0, $sp, 112
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_63)
	lu12i.w	$a0, 69905
	ori	$a0, $a0, 305
	vreplgr2vr.w	$vr1, $a0
	vrepli.d	$vr2, 16
	vmaddwod.q.du	$vr1, $vr2, $vr0
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_64)
	vrepli.b	$vr1, -2
	vst	$vr1, $sp, 112
	vldi	$vr2, -2800
	vmaddwod.q.d	$vr1, $vr2, $vr0
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 276
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_65)
	vst	$vr0, $sp, 112
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_66)
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_67)
	lu12i.w	$a0, -305
	ori	$a0, $a0, 4076
	lu32i.d	$a0, -270356
	lu52i.d	$a0, $a0, 880
	vreplgr2vr.d	$vr2, $a0
	vmaddwod.q.du	$vr1, $vr0, $vr2
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 283
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_68)
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_69)
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_70)
	vst	$vr0, $sp, 112
	vmaddwod.q.du	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 290
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 297
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_71)
	ori	$a0, $zero, 2056
	vreplgr2vr.w	$vr1, $a0
	vst	$vr1, $sp, 112
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.q.d	$vr1, $vr2, $vr0
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 304
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_72)
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_73)
	vst	$vr0, $sp, 112
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.q.du	$vr0, $vr1, $vr2
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 311
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_74)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vmaddwod.q.du	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 318
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 325
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_75)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_75)
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.q.d	$vr0, $vr1, $vr2
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 332
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_76)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_76)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vmaddwod.q.du.d	$vr1, $vr1, $vr0
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 339
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 346
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_77)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_77)
	pcalau12i	$a0, %pc_hi20(.LCPI2_78)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_78)
	vst	$vr0, $sp, 112
	lu52i.d	$a0, $zero, -1
	vreplgr2vr.d	$vr2, $a0
	vmaddwod.q.du	$vr0, $vr1, $vr2
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 353
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vmaddwod.q.du.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 360
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_79)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_79)
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_80)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_80)
	vst	$vr1, $sp, 112
	vrepli.b	$vr1, 8
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.q.du.d	$vr2, $vr0, $vr1
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 367
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.q.du	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 374
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vmaddwod.q.du	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 381
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_81)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_81)
	pcalau12i	$a0, %pc_hi20(.LCPI2_82)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_82)
	pcalau12i	$a0, %pc_hi20(.LCPI2_83)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_83)
	vst	$vr0, $sp, 112
	vmaddwod.q.d	$vr2, $vr2, $vr1
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 388
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_84)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_84)
	pcalau12i	$a0, %pc_hi20(.LCPI2_85)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_85)
	pcalau12i	$a0, %pc_hi20(.LCPI2_86)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_86)
	vst	$vr0, $sp, 112
	vmaddwod.q.du	$vr2, $vr1, $vr1
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 395
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_87)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_87)
	pcalau12i	$a0, %pc_hi20(.LCPI2_88)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_88)
	pcalau12i	$a0, %pc_hi20(.LCPI2_89)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_89)
	pcalau12i	$a0, %pc_hi20(.LCPI2_90)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_90)
	vst	$vr0, $sp, 112
	vmaddwod.q.du	$vr3, $vr2, $vr1
	vst	$vr3, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 402
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 409
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vmaddwod-1.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
