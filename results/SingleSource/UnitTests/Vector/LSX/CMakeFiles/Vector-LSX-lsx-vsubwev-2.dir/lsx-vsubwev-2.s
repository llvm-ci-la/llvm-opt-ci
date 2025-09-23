	.file	"lsx-vsubwev-2.c"
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
	.dword	65532                           # 0xfffc
	.dword	-71495739301101699              # 0xff01ff010000ff7d
.LCPI2_1:
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	131                             # 0x83
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
.LCPI2_2:
	.dword	-71495726416199682              # 0xff01ff040000fffe
	.dword	65535                           # 0xffff
.LCPI2_3:
	.byte	2                               # 0x2
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	252                             # 0xfc
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_4:
	.dword	7881776102113421                # 0x1c006f00c4008d
	.dword	71495253980217457               # 0xfe008e009e0071
.LCPI2_5:
	.byte	51                              # 0x33
	.byte	255                             # 0xff
	.byte	53                              # 0x35
	.byte	255                             # 0xff
	.byte	55                              # 0x37
	.byte	255                             # 0xff
	.byte	57                              # 0x39
	.byte	255                             # 0xff
	.byte	59                              # 0x3b
	.byte	23                              # 0x17
	.byte	61                              # 0x3d
	.byte	25                              # 0x19
	.byte	63                              # 0x3f
	.byte	31                              # 0x1f
	.byte	1                               # 0x1
	.byte	33                              # 0x21
.LCPI2_6:
	.byte	192                             # 0xc0
	.byte	2                               # 0x2
	.byte	249                             # 0xf9
	.byte	148                             # 0x94
	.byte	166                             # 0xa6
	.byte	51                              # 0x33
	.byte	85                              # 0x55
	.byte	31                              # 0x1f
	.byte	172                             # 0xac
	.byte	236                             # 0xec
	.byte	219                             # 0xdb
	.byte	182                             # 0xb6
	.byte	205                             # 0xcd
	.byte	250                             # 0xfa
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_7:
	.dword	5910858537828292                # 0x14ffe4ff76ffc4
	.dword	8589868952                      # 0x1fffeff98
.LCPI2_8:
	.byte	96                              # 0x60
	.byte	52                              # 0x34
	.byte	18                              # 0x12
	.byte	242                             # 0xf2
	.byte	128                             # 0x80
	.byte	148                             # 0x94
	.byte	176                             # 0xb0
	.byte	209                             # 0xd1
	.byte	52                              # 0x34
	.byte	231                             # 0xe7
	.byte	154                             # 0x9a
	.byte	80                              # 0x50
	.byte	157                             # 0x9d
	.byte	161                             # 0xa1
	.byte	156                             # 0x9c
	.byte	156                             # 0x9c
.LCPI2_9:
	.dword	-11259488700661894              # 0xffd7ff8dffa4ff7a
	.dword	-41377139410796690              # 0xff6cffb5ff98ff6e
.LCPI2_10:
	.byte	134                             # 0x86
	.byte	95                              # 0x5f
	.byte	92                              # 0x5c
	.byte	30                              # 0x1e
	.byte	115                             # 0x73
	.byte	122                             # 0x7a
	.byte	41                              # 0x29
	.byte	238                             # 0xee
	.byte	146                             # 0x92
	.byte	79                              # 0x4f
	.byte	104                             # 0x68
	.byte	17                              # 0x11
	.byte	75                              # 0x4b
	.byte	123                             # 0x7b
	.byte	148                             # 0x94
	.byte	52                              # 0x34
.LCPI2_11:
	.dword	8589924411                      # 0x1ffffd83b
	.dword	55663                           # 0xd96f
.LCPI2_12:
	.half	45133                           # 0xb04d
	.half	16239                           # 0x3f6f
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	363                             # 0x16b
	.half	16037                           # 0x3ea5
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_13:
	.half	34952                           # 0x8888
	.half	257                             # 0x101
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	56026                           # 0xdada
	.half	63736                           # 0xf8f8
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_14:
	.dword	4295005517                      # 0x10000954d
	.dword	37228                           # 0x916c
.LCPI2_15:
	.half	2032                            # 0x7f0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	3024                            # 0xbd0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_16:
	.half	40253                           # 0x9d3d
	.half	28671                           # 0x6fff
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	40252                           # 0x9d3c
	.half	61440                           # 0xf000
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.dword	-17179804164                    # 0xfffffffc0000fdfc
	.dword	-17179869307                    # 0xfffffffbffffff85
.LCPI2_18:
	.half	5                               # 0x5
	.half	0                               # 0x0
	.half	5                               # 0x5
	.half	0                               # 0x0
	.half	123                             # 0x7b
	.half	0                               # 0x0
	.half	5                               # 0x5
	.half	0                               # 0x0
.LCPI2_19:
	.half	65025                           # 0xfe01
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_20:
	.half	50                              # 0x32
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_21:
	.dword	-175367809711081                # 0xffff6080ffff4417
	.dword	-77601469147191                 # 0xffffb96bffff57c9
.LCPI2_22:
	.half	48105                           # 0xbbe9
	.half	33219                           # 0x81c3
	.half	40832                           # 0x9f80
	.half	10838                           # 0x2a56
	.half	43063                           # 0xa837
	.half	34155                           # 0x856b
	.half	51060                           # 0xc774
	.half	42436                           # 0xa5c4
.LCPI2_23:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32991                           # 0x80df
	.half	65535                           # 0xffff
.LCPI2_24:
	.dword	-281466386803435                # 0xffff0001ffff9515
	.dword	4294923225                      # 0xffff53d9
.LCPI2_25:
	.half	27371                           # 0x6aeb
	.half	43527                           # 0xaa07
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	44071                           # 0xac27
	.half	25522                           # 0x63b2
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_26:
	.half	4031                            # 0xfbf
	.half	0                               # 0x0
	.half	4031                            # 0xfbf
	.half	2                               # 0x2
	.half	4031                            # 0xfbf
	.half	4                               # 0x4
	.half	4031                            # 0xfbf
	.half	6                               # 0x6
.LCPI2_27:
	.dword	-281453501874172                # 0xffff000500000004
	.dword	-281449206972411                # 0xffff0005ffff0005
.LCPI2_28:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_29:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2707619840                      # 0xa1630000
	.word	0                               # 0x0
.LCPI2_30:
	.word	8144                            # 0x1fd0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_31:
	.dword	-4294967295                     # 0xffffffff00000001
	.dword	142606370                       # 0x8800022
.LCPI2_32:
	.word	4294967295                      # 0xffffffff
	.word	4152287132                      # 0xf77edf9c
	.word	4152360925                      # 0xf77fffdd
	.word	4286578686                      # 0xff7ffffe
.LCPI2_33:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_34:
	.dword	4294960086                      # 0xffffe3d6
	.dword	4294957678                      # 0xffffda6e
.LCPI2_35:
	.word	4294960087                      # 0xffffe3d7
	.word	4294967295                      # 0xffffffff
	.word	4294957679                      # 0xffffda6f
	.word	4294967295                      # 0xffffffff
.LCPI2_36:
	.dword	-806934480                      # 0xffffffffcfe72830
	.dword	-485541225                      # 0xffffffffe30f3a97
.LCPI2_37:
	.word	2962839632                      # 0xb0995850
	.word	3221225474                      # 0xc0000002
	.word	485541225                       # 0x1cf0c569
	.word	4294901761                      # 0xffff0001
.LCPI2_38:
	.word	2155905152                      # 0x80808080
	.word	2147511040                      # 0x80006b00
	.word	0                               # 0x0
	.word	2147516543                      # 0x8000807f
.LCPI2_39:
	.word	0                               # 0x0
	.word	1492806464                      # 0x58fa6b40
	.word	4288633893                      # 0xff9f5c25
	.word	0                               # 0x0
.LCPI2_40:
	.dword	-993133290                      # 0xffffffffc4cdfd16
	.dword	2155905152                      # 0x80808080
.LCPI2_41:
	.word	3149038442                      # 0xbbb2836a
	.word	3450176942                      # 0xcda585ae
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_42:
	.dword	2397790146                      # 0x8eeb5fc2
	.dword	319549                          # 0x4e03d
.LCPI2_43:
	.word	0                               # 0x0
	.word	32                              # 0x20
	.word	27                              # 0x1b
	.word	32                              # 0x20
.LCPI2_44:
	.word	2397790146                      # 0x8eeb5fc2
	.word	2011895139                      # 0x77eb1563
	.word	319576                          # 0x4e058
	.word	2149438923                      # 0x801dd5cb
.LCPI2_45:
	.dword	1                               # 0x1
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_46:
	.dword	17645604630541                  # 0x100c6ffef00d
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_47:
	.dword	-17591917604865                 # 0xfffff00010000fff
	.dword	1                               # 0x1
.LCPI2_48:
	.dword	53687025676                     # 0xc7fff000c
	.dword	51539656009                     # 0xc0000bd49
.LCPI2_49:
	.dword	211106232525046                 # 0xbfffffffe0f6
	.dword	0                               # 0x0
.LCPI2_50:
	.dword	7946                            # 0x1f0a
	.dword	111                             # 0x6f
.LCPI2_51:
	.dword	211106232532992                 # 0xc00000000000
	.dword	476741369856                    # 0x6f00000000
.LCPI2_52:
	.dword	-844433520263171                # 0xfffcfffdfffcfffd
	.dword	0                               # 0x0
.LCPI2_53:
	.dword	-844433520263171                # 0xfffcfffdfffcfffd
	.dword	-844437815230467                # 0xfffcfffcfffcfffd
.LCPI2_54:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_55:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-558345748351                   # 0xffffff7e00000081
.LCPI2_56:
	.dword	723577096190477811              # 0xa0aa9890a0ac5f3
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_57:
	.dword	3962006437480955868             # 0x36fbdfdcffdcffdc
	.dword	0                               # 0x0
.LCPI2_58:
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
.LCPI2_59:
	.dword	-281479271743489                # 0xfffefffefffeffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_60:
	.dword	-753848264599145734             # 0xf589caff5605f2fa
	.dword	0                               # 0x0
.LCPI2_61:
	.dword	753566789622435078              # 0xa753500a9fa0d06
	.dword	175450709                       # 0xa752a55
.LCPI2_62:
	.dword	-281474976710656                # 0xffff000000000000
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_63:
	.dword	-4294969468                     # 0xfffffffefffff784
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_64:
	.dword	4294971640                      # 0x1000010f8
	.dword	1222727303126056961             # 0x10f8000100000001
.LCPI2_65:
	.dword	2172                            # 0x87c
	.dword	611363649415544832              # 0x87c000000000000
.LCPI2_66:
	.dword	281474976710656                 # 0x1000000000000
	.dword	-1                              # 0xffffffffffffffff
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	vsubwev.h.bu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vsubwev.h.bu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsubwev.h.bu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 96
	lu12i.w	$a0, 1
	vreplgr2vr.h	$vr0, $a0
	vsubwev.h.bu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 96
	vsubwev.h.bu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_8)
	vst	$vr0, $sp, 96
	vrepli.b	$vr0, -100
	vsubwev.h.bu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsubwev.h.bu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr0, $sp, 96
	vsubwev.w.hu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr0, $sp, 96
	vsubwev.w.hu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_19)
	vst	$vr0, $sp, 96
	vsubwev.w.hu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsubwev.w.hu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vsubwev.w.hu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_21)
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_23)
	vst	$vr2, $sp, 96
	vsubwev.w.hu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_25)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsubwev.w.hu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vsubwev.w.hu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -6
	ori	$a0, $a0, 3164
	pcalau12i	$a1, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_26)
	vreplgr2vr.w	$vr1, $a0
	vst	$vr1, $sp, 96
	vrepli.b	$vr1, 99
	vsubwev.w.hu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	lu12i.w	$a0, -1297
	ori	$a0, $a0, 4091
	vreplgr2vr.w	$vr1, $a0
	vsubwev.w.hu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_29)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vsubwev.d.wu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.d	$vr0, 1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vsubwev.d.wu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vsubwev.d.wu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_33)
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	vsubwev.d.wu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_35)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vsubwev.d.wu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	ori	$s0, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	lu52i.d	$a0, $a0, 3
	vreplgr2vr.d	$vr0, $a0
	vsubwev.d.wu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_38)
	vst	$vr0, $sp, 96
	vsubwev.d.wu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsubwev.d.wu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_39)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vsubwev.d.wu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_41)
	vst	$vr0, $sp, 96
	vrepli.b	$vr0, -128
	vsubwev.d.wu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_44)
	vst	$vr0, $sp, 96
	vsubwev.d.wu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_45)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vsubwev.q.du	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsubwev.q.du	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_48)
	vst	$vr0, $sp, 96
	vsubwev.q.du	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_51)
	vst	$vr0, $sp, 96
	vsubwev.q.du	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_53)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsubwev.q.du	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_55)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vsubwev.q.du	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_56)
	vst	$vr0, $sp, 96
	vrepli.b	$vr0, 10
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vsubwev.q.du	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_57)
	vst	$vr0, $sp, 96
	lu12i.w	$a0, -305
	ori	$a0, $a0, 4076
	lu32i.d	$a0, -270356
	lu52i.d	$a0, $a0, 880
	vreplgr2vr.d	$vr0, $a0
	vrepli.h	$vr1, 16
	vsubwev.q.du	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_58)
	vst	$vr0, $sp, 96
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vsubwev.q.du	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_59)
	vst	$vr0, $sp, 96
	vrepli.h	$vr0, 1
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vsubwev.q.du	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_60)
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_61)
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_62)
	vst	$vr0, $sp, 96
	vsubwev.q.du	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_63)
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_64)
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_65)
	vst	$vr0, $sp, 96
	vsubwev.q.du	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_66)
	vst	$vr0, $sp, 96
	lu32i.d	$s0, -65536
	vreplgr2vr.d	$vr0, $s0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vsubwev.q.du	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vsubwev-2.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
