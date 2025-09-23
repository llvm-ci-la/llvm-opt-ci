	.file	"lsx-vhaddw-2.c"
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
	.dword	16711680                        # 0xff0000
	.dword	16711935                        # 0xff00ff
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	248                             # 0xf8
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	248                             # 0xf8
	.byte	255                             # 0xff
	.byte	248                             # 0xf8
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_2:
	.dword	71777214277878015               # 0xff00ff000000ff
	.dword	71777214294589695               # 0xff00ff00ff00ff
.LCPI2_3:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
.LCPI2_4:
	.byte	253                             # 0xfd
	.byte	255                             # 0xff
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
.LCPI2_5:
	.dword	77342835177                     # 0x1201fe01e9
	.dword	25769803790                     # 0x60000000e
.LCPI2_6:
	.byte	234                             # 0xea
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_7:
	.byte	170                             # 0xaa
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	14                              # 0xe
	.byte	0                               # 0x0
	.byte	18                              # 0x12
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
.LCPI2_8:
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	35747871813402751               # 0x7f008000ea007f
.LCPI2_9:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	128                             # 0x80
	.byte	234                             # 0xea
	.byte	127                             # 0x7f
	.byte	128                             # 0x80
	.byte	93                              # 0x5d
	.byte	127                             # 0x7f
	.byte	93                              # 0x5d
.LCPI2_10:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
.LCPI2_11:
	.dword	174822348857088                 # 0x9f0000009f00
	.dword	0                               # 0x0
.LCPI2_12:
	.half	20352                           # 0x4f80
	.half	20352                           # 0x4f80
	.half	20352                           # 0x4f80
	.half	20352                           # 0x4f80
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_13:
	.dword	208069690654720                 # 0xbd3d00000000
	.dword	0                               # 0x0
.LCPI2_14:
	.dword	3646427280882                   # 0x3510000b5f2
	.dword	743029371009                    # 0xad00007081
.LCPI2_15:
	.half	46578                           # 0xb5f2
	.half	60521                           # 0xec69
	.half	849                             # 0x351
	.half	10431                           # 0x28bf
	.half	28801                           # 0x7081
	.half	8700                            # 0x21fc
	.half	173                             # 0xad
	.half	32500                           # 0x7ef4
.LCPI2_16:
	.dword	90512140840365                  # 0x52520000adad
	.dword	190958540991917                 # 0xadad0000adad
.LCPI2_17:
	.half	44461                           # 0xadad
	.half	21074                           # 0x5252
	.half	21074                           # 0x5252
	.half	44461                           # 0xadad
	.half	44461                           # 0xadad
	.half	44461                           # 0xadad
	.half	44461                           # 0xadad
	.half	21074                           # 0x5252
.LCPI2_18:
	.dword	1                               # 0x1
	.dword	111669149707                    # 0x1a0000000b
.LCPI2_19:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	11                              # 0xb
	.half	26                              # 0x1a
	.half	26                              # 0x1a
	.half	42                              # 0x2a
.LCPI2_20:
	.half	3960                            # 0xf78
	.half	1                               # 0x1
	.half	65408                           # 0xff80
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
.LCPI2_21:
	.dword	138632954412440                 # 0x7e1600007d98
	.dword	269380348835072                 # 0xf50000007500
.LCPI2_22:
	.half	31897                           # 0x7c99
	.half	0                               # 0x0
	.half	32024                           # 0x7d18
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	65535                           # 0xffff
.LCPI2_23:
	.half	33023                           # 0x80ff
	.half	255                             # 0xff
	.half	65408                           # 0xff80
	.half	254                             # 0xfe
	.half	29952                           # 0x7500
	.half	29952                           # 0x7500
	.half	0                               # 0x0
	.half	29952                           # 0x7500
.LCPI2_24:
	.dword	222101348861057                 # 0xca000000c481
	.dword	281470681777853                 # 0xffff000086bd
.LCPI2_25:
	.half	2051                            # 0x803
	.half	2054                            # 0x806
	.half	2052                            # 0x804
	.half	2050                            # 0x802
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_26:
	.half	255                             # 0xff
	.half	48254                           # 0xbc7e
	.half	31041                           # 0x7941
	.half	49660                           # 0xc1fc
	.half	44614                           # 0xae46
	.half	34493                           # 0x86bd
	.half	30211                           # 0x7603
	.half	65535                           # 0xffff
.LCPI2_27:
	.dword	196907070678340                 # 0xb31600006544
	.dword	38852274181254                  # 0x235600005486
.LCPI2_28:
	.half	25917                           # 0x653d
	.half	23511                           # 0x5bd7
	.half	45846                           # 0xb316
	.half	24318                           # 0x5efe
	.half	21638                           # 0x5486
	.half	65046                           # 0xfe16
	.half	9046                            # 0x2356
	.half	65535                           # 0xffff
.LCPI2_29:
	.half	65529                           # 0xfff9
	.half	7                               # 0x7
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_30:
	.dword	330446193862026                 # 0x12c8a0000a58a
	.dword	259287175688527                 # 0xebd20000714f
.LCPI2_31:
	.half	11643                           # 0x2d7b
	.half	22075                           # 0x563b
	.half	35586                           # 0x8b02
	.half	56635                           # 0xdd3b
	.half	6168                            # 0x1818
	.half	8704                            # 0x2200
	.half	57882                           # 0xe21a
	.half	40067                           # 0x9c83
.LCPI2_32:
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_33:
	.dword	4297382133                      # 0x10024d8f5
	.dword	7126052230                      # 0x1a8beed86
.LCPI2_34:
	.word	2761162858                      # 0xa494006a
	.word	2414838                         # 0x24d8f6
	.word	3158256609                      # 0xbc3f2be1
	.word	2831084935                      # 0xa8beed87
.LCPI2_35:
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI2_36:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
.LCPI2_37:
	.dword	4026531840                      # 0xf0000000
	.dword	1                               # 0x1
.LCPI2_38:
	.word	4026531840                      # 0xf0000000
	.word	1784128271                      # 0x6a57a30f
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI2_39:
	.word	2025848832                      # 0x78c00000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_40:
	.word	1037                            # 0x40d
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_41:
	.dword	6509497311                      # 0x183ff0bdf
	.dword	7339951459                      # 0x1b57ec563
.LCPI2_42:
	.word	2214530016                      # 0x83ff0be0
	.word	2147483648                      # 0x80000000
	.word	3044984164                      # 0xb57ec564
	.word	2147483648                      # 0x80000000
.LCPI2_43:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI2_44:
	.dword	2147483648                      # 0x80000000
	.dword	2147541731                      # 0x8000e2e3
.LCPI2_45:
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.word	4294955475                      # 0xffffd1d3
	.word	2147541731                      # 0x8000e2e3
.LCPI2_46:
	.dword	4                               # 0x4
	.dword	65540                           # 0x10004
.LCPI2_47:
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	65538                           # 0x10002
	.word	2                               # 0x2
.LCPI2_48:
	.dword	0                               # 0x0
	.dword	8589934590                      # 0x1fffffffe
.LCPI2_49:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_50:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_51:
	.word	0                               # 0x0
	.word	16                              # 0x10
	.word	1                               # 0x1
	.word	16                              # 0x10
.LCPI2_52:
	.dword	-8716320421543431219            # 0x870968c1f56bb3cd
	.dword	0                               # 0x0
.LCPI2_53:
	.dword	-8716320421543431219            # 0x870968c1f56bb3cd
	.dword	5685888288691322879             # 0x4ee85545ffffffff
.LCPI2_54:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
.LCPI2_55:
	.dword	1688858450198528                # 0x6000200000000
	.dword	0                               # 0x0
.LCPI2_56:
	.dword	1688858450198528                # 0x6000200000000
	.dword	4503668347043840                # 0x10001000030000
.LCPI2_57:
	.dword	317                             # 0x13d
	.dword	0                               # 0x0
.LCPI2_58:
	.dword	-2                              # 0xfffffffffffffffe
	.dword	1                               # 0x1
.LCPI2_59:
	.dword	-16646399                       # 0xffffffffff01ff01
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_60:
	.dword	1769499                         # 0x1b001b
	.dword	0                               # 0x0
.LCPI2_61:
	.dword	75959200                        # 0x4870ba0
	.dword	0                               # 0x0
.LCPI2_62:
	.dword	-36028792463949824              # 0xff8000010f800000
	.dword	0                               # 0x0
.LCPI2_63:
	.dword	140735340838912                 # 0x7fff7fff8000
	.dword	0                               # 0x0
.LCPI2_64:
	.dword	-1                              # 0xffffffffffffffff
	.dword	994                             # 0x3e2
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	vst	$vr0, $sp, 112
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vhaddw.hu.bu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu52i.d	$a0, $zero, 8
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 112
	lu52i.d	$a0, $zero, -8
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vhaddw.hu.bu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vhaddw.hu.bu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.h	$vr0, 82
	vst	$vr0, $sp, 112
	vrepli.b	$vr0, 82
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vhaddw.hu.bu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
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
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 112
	vhaddw.hu.bu	$vr0, $vr1, $vr2
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 112
	vhaddw.hu.bu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr2, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	vhaddw.hu.bu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
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
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vhaddw.wu.hu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 112
	vhaddw.wu.hu	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr0, $sp, 112
	vhaddw.wu.hu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
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
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 127
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 112
	lu32i.d	$a0, -65409
	vreplgr2vr.d	$vr0, $a0
	vrepli.d	$vr1, 31
	vhaddw.wu.hu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vhaddw.wu.hu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_17)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vhaddw.wu.hu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_20)
	vst	$vr0, $sp, 112
	vhaddw.wu.hu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_23)
	vst	$vr0, $sp, 112
	vhaddw.wu.hu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_26)
	vst	$vr0, $sp, 112
	vhaddw.wu.hu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_29)
	vst	$vr0, $sp, 112
	vhaddw.wu.hu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_31)
	vst	$vr0, $sp, 112
	vrepli.b	$vr0, 79
	vhaddw.wu.hu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_32)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vhaddw.du.wu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	vst	$vr0, $sp, 112
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	addi.w	$s0, $zero, -1
	lu52i.d	$a0, $s0, -17
	vreplgr2vr.d	$vr1, $a0
	vhaddw.du.wu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	vst	$vr0, $sp, 112
	vhaddw.du.wu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_36)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vhaddw.du.wu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vhaddw.du.wu	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_39)
	vst	$vr0, $sp, 112
	vhaddw.du.wu	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vhaddw.du.wu	$vr0, $vr0, $vr1
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
	vrepli.d	$vr0, 1
	vhaddw.du.wu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 112
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vhaddw.du.wu	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_42)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vhaddw.du.wu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_43)
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vhaddw.du.wu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_45)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vhaddw.du.wu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_47)
	vst	$vr0, $sp, 112
	vhaddw.du.wu	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu32i.d	$s0, 0
	vreplgr2vr.d	$vr0, $s0
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vhaddw.du.wu	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_49)
	vst	$vr0, $sp, 112
	vhaddw.du.wu	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_51)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vhaddw.du.wu	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_54)
	vst	$vr0, $sp, 112
	vhaddw.qu.du	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_57)
	vst	$vr0, $sp, 112
	vhaddw.qu.du	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_59)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vhaddw.qu.du	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vhaddw.qu.du	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_60)
	vst	$vr0, $sp, 112
	lu12i.w	$a0, 432
	vreplgr2vr.d	$vr0, $a0
	vrepli.d	$vr1, 27
	vhaddw.qu.du	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_61)
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vhaddw.qu.du	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_62)
	vst	$vr0, $sp, 112
	lu12i.w	$a0, -2048
	vreplgr2vr.w	$vr0, $a0
	lu12i.w	$a0, 65536
	vreplgr2vr.d	$vr1, $a0
	vhaddw.qu.du	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_63)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vhaddw.qu.du	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 293
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_64)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vhaddw.qu.du	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 299
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
	ori	$a4, $zero, 305
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vhaddw-2.c"
	.size	.L.str.5, 132

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
