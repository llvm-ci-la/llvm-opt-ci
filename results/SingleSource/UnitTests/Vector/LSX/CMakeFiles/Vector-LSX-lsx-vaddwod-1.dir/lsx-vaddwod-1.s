	.file	"lsx-vaddwod-1.c"
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
	.dword	1125917075046346                # 0x40003ff4dffca
	.dword	1125917078585220                # 0x40003ff83ff84
.LCPI2_1:
	.byte	136                             # 0x88
	.byte	70                              # 0x46
	.byte	53                              # 0x35
	.byte	202                             # 0xca
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_2:
	.dword	4                               # 0x4
	.dword	0                               # 0x0
.LCPI2_3:
	.byte	13                              # 0xd
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_4:
	.dword	133143986176                    # 0x1f00000000
	.dword	0                               # 0x0
.LCPI2_5:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	84                              # 0x54
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_6:
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	248                             # 0xf8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_7:
	.dword	-281479271743489                # 0xfffefffefffeffff
	.dword	-281479271743490                # 0xfffefffefffefffe
.LCPI2_8:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_9:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
.LCPI2_10:
	.dword	30398876579069922               # 0x6bff9e0010ffe2
	.dword	19985028292804631               # 0x47004700380017
.LCPI2_11:
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_12:
	.byte	25                              # 0x19
	.byte	225                             # 0xe1
	.byte	161                             # 0xa1
	.byte	15                              # 0xf
	.byte	105                             # 0x69
	.byte	158                             # 0x9e
	.byte	118                             # 0x76
	.byte	107                             # 0x6b
	.byte	121                             # 0x79
	.byte	23                              # 0x17
	.byte	3                               # 0x3
	.byte	56                              # 0x38
	.byte	139                             # 0x8b
	.byte	71                              # 0x47
	.byte	139                             # 0x8b
	.byte	71                              # 0x47
.LCPI2_13:
	.dword	-38562239314722902              # 0xff76ffd8ffe6ffaa
	.dword	-35747721475195020              # 0xff80ffa2fff0ff74
.LCPI2_14:
	.byte	243                             # 0xf3
	.byte	213                             # 0xd5
	.byte	206                             # 0xce
	.byte	243                             # 0xf3
	.byte	197                             # 0xc5
	.byte	236                             # 0xec
	.byte	200                             # 0xc8
	.byte	187                             # 0xbb
	.byte	211                             # 0xd3
	.byte	186                             # 0xba
	.byte	186                             # 0xba
	.byte	248                             # 0xf8
	.byte	165                             # 0xa5
	.byte	209                             # 0xd1
	.byte	180                             # 0xb4
	.byte	192                             # 0xc0
.LCPI2_15:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
.LCPI2_16:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2048                            # 0x800
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	57515                           # 0xe0ab
	.half	8020                            # 0x1f54
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.half	15                              # 0xf
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_19:
	.dword	-101898099125655                # 0xffffa352ffff9269
	.dword	-45032732070231                 # 0xffffd70b00006ea9
.LCPI2_20:
	.half	57514                           # 0xe0aa
	.half	37481                           # 0x9269
	.half	49068                           # 0xbfac
	.half	41810                           # 0xa352
	.half	62696                           # 0xf4e8
	.half	28329                           # 0x6ea9
	.half	12489                           # 0x30c9
	.half	55051                           # 0xd70b
.LCPI2_21:
	.dword	-139904264705826                # 0xffff80c1ffffe8de
	.dword	-139895674764984                # 0xffff80c400000148
.LCPI2_22:
	.half	20020                           # 0x4e34
	.half	843                             # 0x34b
	.half	57764                           # 0xe1a4
	.half	39726                           # 0x9b2e
	.half	8356                            # 0x20a4
	.half	456                             # 0x1c8
	.half	65535                           # 0xffff
	.half	33092                           # 0x8144
.LCPI2_23:
	.half	51396                           # 0xc8c4
	.half	58771                           # 0xe593
	.half	51396                           # 0xc8c4
	.half	58771                           # 0xe593
	.half	0                               # 0x0
	.half	65408                           # 0xff80
	.half	0                               # 0x0
	.half	65408                           # 0xff80
.LCPI2_24:
	.dword	1488765441                      # 0x58bcc201
	.dword	-1534670577                     # 0xffffffffa486c90f
.LCPI2_25:
	.word	1050790942                      # 0x3ea1cc1e
	.word	1488765441                      # 0x58bcc201
	.word	1698150615                      # 0x6537b8d7
	.word	2760296719                      # 0xa486c90f
.LCPI2_26:
	.dword	12292                           # 0x3004
	.dword	0                               # 0x0
.LCPI2_27:
	.word	68878356                        # 0x41b0014
	.word	6146                            # 0x1802
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI2_28:
	.word	68878355                        # 0x41b0013
	.word	6146                            # 0x1802
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_29:
	.word	33554944                        # 0x2000200
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_30:
	.word	4227347560                      # 0xfbf83468
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_31:
	.dword	-1                              # 0xffffffffffffffff
	.dword	2147483646                      # 0x7ffffffe
.LCPI2_32:
	.word	3334182828                      # 0xc6bb97ac
	.word	4294967295                      # 0xffffffff
	.word	2193332100                      # 0x82bb9784
	.word	4294967295                      # 0xffffffff
.LCPI2_33:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	2147483647                      # 0x7fffffff
.LCPI2_34:
	.dword	1333809024                      # 0x4f804f80
	.dword	1333809025                      # 0x4f804f81
.LCPI2_35:
	.word	804892655                       # 0x2ff9afef
	.word	0                               # 0x0
	.word	1032185                         # 0xfbff9
	.word	1                               # 0x1
.LCPI2_36:
	.word	0                               # 0x0
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
.LCPI2_37:
	.word	65520                           # 0xfff0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_38:
	.dword	1692558566                      # 0x64e264e6
	.dword	-65537                          # 0xfffffffffffeffff
.LCPI2_39:
	.word	1692689636                      # 0x64e464e4
	.word	1692689636                      # 0x64e464e4
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_40:
	.word	2678022241                      # 0x9f9f6061
	.word	4294836226                      # 0xfffe0002
	.word	4294901760                      # 0xffff0000
	.word	4294901760                      # 0xffff0000
.LCPI2_41:
	.dword	50397954                        # 0x3010302
	.dword	50660098                        # 0x3050302
.LCPI2_42:
	.word	50464002                        # 0x3020502
	.word	50397954                        # 0x3010302
	.word	50464002                        # 0x3020502
	.word	50660098                        # 0x3050302
.LCPI2_43:
	.dword	280375481794560                 # 0xff0000ff0000
	.dword	0                               # 0x0
.LCPI2_44:
	.dword	142991487208915200              # 0x1fc020000fe0100
	.dword	280375481794560                 # 0xff0000ff0000
.LCPI2_45:
	.dword	-34621469388111884              # 0xff84fff4ff84fff4
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_46:
	.dword	47006110652432466               # 0xa6ffceffb60052
	.dword	-34621469388111884              # 0xff84fff4ff84fff4
.LCPI2_47:
	.dword	4278124138                      # 0xfefefe6a
	.dword	0                               # 0x0
.LCPI2_48:
	.dword	3267019458                      # 0xc2bac2c2
	.dword	4278124138                      # 0xfefefe6a
.LCPI2_49:
	.dword	137438953504                    # 0x2000000020
	.dword	0                               # 0x0
.LCPI2_50:
	.dword	14073748835532800               # 0x32000000000000
	.dword	0                               # 0x0
.LCPI2_51:
	.dword	-65536                          # 0xffffffffffff0000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_52:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-65536                          # 0xffffffffffff0000
.LCPI2_53:
	.dword	5637964911410366418             # 0x4e3e133738bb47d2
	.dword	0                               # 0x0
.LCPI2_54:
	.dword	-646412148959813632             # 0xf7077b934ac0e000
	.dword	-871912259640118958             # 0xf3e6586b60d7b152
.LCPI2_55:
	.dword	7759144842983596033             # 0x6bae051ffed76001
	.dword	6509877171050485376             # 0x5a57bacbd7e39680
.LCPI2_56:
	.dword	9042968551924694004             # 0x7d7f13fc7c7ffbf4
	.dword	0                               # 0x0
.LCPI2_57:
	.dword	9115143254788997935             # 0x7e7f7e7f027f032f
	.dword	9042949323356077177             # 0x7d7f027f7c7f7c79
.LCPI2_58:
	.dword	10157597661311                  # 0x93d0000187f
	.dword	19228568616827                  # 0x117d00007f7b
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	vst	$vr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	lu12i.w	$a0, -509896
	ori	$a0, $a0, 1028
	lu32i.d	$a0, 263043
	lu52i.d	$a0, $a0, 64
	vreplgr2vr.d	$vr1, $a0
	vaddwod.h.b	$vr0, $vr0, $vr1
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 96
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vaddwod.h.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_5)
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	vrepli.d	$vr0, 20
	vaddwod.h.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vaddwod.h.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 65535
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 96
	lu32i.d	$a0, -1
	lu52i.d	$a0, $a0, 3
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vaddwod.h.b	$vr0, $vr0, $vr1
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
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vaddwod.h.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vaddwod.h.b	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr0, $sp, 96
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vaddwod.h.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
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
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 96
	vaddwod.h.b	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_14)
	vst	$vr0, $sp, 96
	vaddwod.h.b	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_16)
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vaddwod.w.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vaddwod.w.h	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vaddwod.w.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vaddwod.w.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 128
	vreplgr2vr.w	$vr1, $a0
	vaddwod.w.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
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
	ori	$a4, $zero, 125
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
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_23)
	vst	$vr0, $sp, 96
	vaddwod.w.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, -2
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vaddwod.w.h	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_25)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vaddwod.d.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_28)
	vst	$vr0, $sp, 96
	vaddwod.d.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -3
	ori	$a0, $a0, 4095
	vreplgr2vr.d	$vr0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	vst	$vr0, $sp, 96
	lu12i.w	$a0, -2
	vreplgr2vr.w	$vr0, $a0
	vaddwod.d.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vaddwod.d.w	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_33)
	vst	$vr0, $sp, 96
	vaddwod.d.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	vst	$vr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	lu12i.w	$a0, 4
	ori	$a0, $a0, 3968
	vreplgr2vr.h	$vr1, $a0
	vaddwod.d.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_36)
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vrepli.d	$vr0, 32
	vst	$vr0, $sp, 96
	vaddwod.d.w	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_37)
	vrepli.d	$vr1, 16
	vst	$vr1, $sp, 96
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vaddwod.d.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_40)
	vst	$vr0, $sp, 96
	vaddwod.d.w	$vr0, $vr2, $vr1
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
	vaddwod.d.w	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_42)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vaddwod.d.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_44)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vaddwod.q.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vaddwod.q.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vaddwod.q.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_46)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vaddwod.q.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_48)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vaddwod.q.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_50)
	vst	$vr0, $sp, 96
	vrepli.w	$vr0, 32
	vaddwod.q.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_52)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vaddwod.q.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_55)
	vst	$vr0, $sp, 96
	vaddwod.q.d	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_57)
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_58)
	vst	$vr0, $sp, 96
	vaddwod.q.d	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vaddwod-1.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
