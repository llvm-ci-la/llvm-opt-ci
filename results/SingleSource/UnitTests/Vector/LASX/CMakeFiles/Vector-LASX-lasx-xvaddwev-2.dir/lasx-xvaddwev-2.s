	.file	"lasx-xvaddwev-2.c"
	.text
	.globl	check_lasx_out                  # -- Begin function check_lasx_out
	.p2align	5
	.type	check_lasx_out,@function
check_lasx_out:                         # @check_lasx_out
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
	slti	$a0, $a2, 32
	ori	$a1, $zero, 32
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
	.size	check_lasx_out, .Lfunc_end0-check_lasx_out
                                        # -- End function
	.globl	check_lasx_fp_out               # -- Begin function check_lasx_fp_out
	.p2align	5
	.type	check_lasx_fp_out,@function
check_lasx_fp_out:                      # @check_lasx_fp_out
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
	ori	$s8, $zero, 32
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
	pcaddu18i	$t8, %call36(check_lasx_out)
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
	.size	check_lasx_fp_out, .Lfunc_end1-check_lasx_fp_out
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI2_0:
	.dword	4503599627370496                # 0x10000000000000
	.dword	0                               # 0x0
	.dword	4503599627370496                # 0x10000000000000
	.dword	0                               # 0x0
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	16                              # 0x10
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
	.byte	16                              # 0x10
	.byte	16                              # 0x10
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
	.dword	142708921326960895              # 0x1fb010201f900ff
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	0                               # 0x0
.LCPI2_3:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	250                             # 0xfa
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	252                             # 0xfc
	.byte	255                             # 0xff
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_4:
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_5:
	.dword	47850746052083966               # 0xaa000000ac00fe
	.dword	84                              # 0x54
	.dword	47850746052083966               # 0xaa000000ac00fe
	.dword	84                              # 0x54
.LCPI2_6:
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	172                             # 0xac
	.byte	170                             # 0xaa
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	170                             # 0xaa
	.byte	170                             # 0xaa
	.byte	84                              # 0x54
	.byte	85                              # 0x55
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	172                             # 0xac
	.byte	170                             # 0xaa
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	170                             # 0xaa
	.byte	170                             # 0xaa
	.byte	84                              # 0x54
	.byte	85                              # 0x55
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_7:
	.dword	84442681993592842               # 0x12c002c001c000a
	.dword	71496825961316352               # 0xfe01fc01fe0000
	.dword	84442681993592838               # 0x12c002c001c0006
	.dword	71496825961316860               # 0xfe01fc01fe01fc
.LCPI2_8:
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.byte	22                              # 0x16
	.byte	6                               # 0x6
	.byte	150                             # 0x96
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	127                             # 0x7f
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	14                              # 0xe
	.byte	2                               # 0x2
	.byte	22                              # 0x16
	.byte	6                               # 0x6
	.byte	150                             # 0x96
	.byte	5                               # 0x5
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	127                             # 0x7f
	.byte	1                               # 0x1
.LCPI2_9:
	.dword	65865513933799568               # 0xea005600f90090
	.dword	1970324853424367                # 0x7000000fb00ef
	.dword	65865513933799568               # 0xea005600f90090
	.dword	1970324853424367                # 0x7000000fb00ef
.LCPI2_10:
	.byte	144                             # 0x90
	.byte	126                             # 0x7e
	.byte	249                             # 0xf9
	.byte	152                             # 0x98
	.byte	86                              # 0x56
	.byte	178                             # 0xb2
	.byte	234                             # 0xea
	.byte	200                             # 0xc8
	.byte	239                             # 0xef
	.byte	22                              # 0x16
	.byte	251                             # 0xfb
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.byte	210                             # 0xd2
	.byte	144                             # 0x90
	.byte	126                             # 0x7e
	.byte	249                             # 0xf9
	.byte	152                             # 0x98
	.byte	86                              # 0x56
	.byte	178                             # 0xb2
	.byte	234                             # 0xea
	.byte	200                             # 0xc8
	.byte	239                             # 0xef
	.byte	22                              # 0x16
	.byte	251                             # 0xfb
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	233                             # 0xe9
	.byte	7                               # 0x7
	.byte	210                             # 0xd2
.LCPI2_11:
	.dword	116249861170003968              # 0x19d00a2003a0000
	.dword	143552762138067216              # 0x1fe007a01c40110
	.dword	116249861170003968              # 0x19d00a2003a0000
	.dword	143552762138067216              # 0x1fe007a01c40110
.LCPI2_12:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	63                              # 0x3f
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	63                              # 0x3f
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_13:
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	58                              # 0x3a
	.byte	96                              # 0x60
	.byte	162                             # 0xa2
	.byte	63                              # 0x3f
	.byte	158                             # 0x9e
	.byte	106                             # 0x6a
	.byte	80                              # 0x50
	.byte	224                             # 0xe0
	.byte	197                             # 0xc5
	.byte	31                              # 0x1f
	.byte	59                              # 0x3b
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	58                              # 0x3a
	.byte	96                              # 0x60
	.byte	162                             # 0xa2
	.byte	63                              # 0x3f
	.byte	158                             # 0x9e
	.byte	106                             # 0x6a
	.byte	80                              # 0x50
	.byte	224                             # 0xe0
	.byte	197                             # 0xc5
	.byte	31                              # 0x1f
	.byte	59                              # 0x3b
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_14:
	.dword	63895244929957987               # 0xe3006300e30063
	.dword	63895249211752591               # 0xe30064001a008f
	.dword	63895244929957987               # 0xe3006300e30063
	.dword	63895249211752591               # 0xe30064001a008f
.LCPI2_15:
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	227                             # 0xe3
	.byte	127                             # 0x7f
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	227                             # 0xe3
	.byte	127                             # 0x7f
	.byte	143                             # 0x8f
	.byte	241                             # 0xf1
	.byte	26                              # 0x1a
	.byte	102                             # 0x66
	.byte	100                             # 0x64
	.byte	99                              # 0x63
	.byte	227                             # 0xe3
	.byte	127                             # 0x7f
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	227                             # 0xe3
	.byte	127                             # 0x7f
	.byte	99                              # 0x63
	.byte	99                              # 0x63
	.byte	227                             # 0xe3
	.byte	127                             # 0x7f
	.byte	143                             # 0x8f
	.byte	241                             # 0xf1
	.byte	26                              # 0x1a
	.byte	102                             # 0x66
	.byte	100                             # 0x64
	.byte	99                              # 0x63
	.byte	227                             # 0xe3
	.byte	127                             # 0x7f
.LCPI2_16:
	.dword	704391348303                    # 0xa400ff004f
	.dword	4294967390                      # 0x10000005e
	.dword	704391348303                    # 0xa400ff004f
	.dword	4294967390                      # 0x10000005e
.LCPI2_17:
	.byte	79                              # 0x4f
	.byte	190                             # 0xbe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	164                             # 0xa4
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	94                              # 0x5e
	.byte	104                             # 0x68
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	79                              # 0x4f
	.byte	190                             # 0xbe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	164                             # 0xa4
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	94                              # 0x5e
	.byte	104                             # 0x68
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_18:
	.dword	68962404397285621               # 0xf500f100f500f5
	.dword	564045170212866                 # 0x200ff00020002
	.dword	68962404397285621               # 0xf500f100f500f5
	.dword	564045170212866                 # 0x200ff00020002
.LCPI2_19:
	.byte	245                             # 0xf5
	.byte	4                               # 0x4
	.byte	245                             # 0xf5
	.byte	4                               # 0x4
	.byte	241                             # 0xf1
	.byte	4                               # 0x4
	.byte	245                             # 0xf5
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	245                             # 0xf5
	.byte	4                               # 0x4
	.byte	245                             # 0xf5
	.byte	4                               # 0x4
	.byte	241                             # 0xf1
	.byte	4                               # 0x4
	.byte	245                             # 0xf5
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	0                               # 0x0
.LCPI2_20:
	.dword	316753838098307                 # 0x1201600004783
	.dword	162268159453461                 # 0x93950000a915
	.dword	305187491227070                 # 0x11591000125be
	.dword	200892800407450                 # 0xb6b60001979a
.LCPI2_21:
	.half	7740                            # 0x1e3c
	.half	3762                            # 0xeb2
	.half	62172                           # 0xf2dc
	.half	1624                            # 0x658
	.half	39413                           # 0x99f5
	.half	60284                           # 0xeb7c
	.half	2907                            # 0xb5b
	.half	12659                           # 0x3173
	.half	49082                           # 0xbfba
	.half	11514                           # 0x2cfa
	.half	34103                           # 0x8537
	.half	50624                           # 0xc5c0
	.half	45312                           # 0xb100
	.half	59562                           # 0xe8aa
	.half	40309                           # 0x9d75
	.half	14126                           # 0x372e
.LCPI2_22:
	.half	10567                           # 0x2947
	.half	41416                           # 0xa1c8
	.half	11578                           # 0x2d3a
	.half	27964                           # 0x6d3c
	.half	3872                            # 0xf20
	.half	0                               # 0x0
	.half	34874                           # 0x883a
	.half	0                               # 0x0
	.half	26116                           # 0x6604
	.half	3090                            # 0xc12
	.half	36954                           # 0x905a
	.half	62041                           # 0xf259
	.half	59034                           # 0xe69a
	.half	0                               # 0x0
	.half	6465                            # 0x1941
	.half	0                               # 0x0
.LCPI2_23:
	.dword	0                               # 0x0
	.dword	271575077093376                 # 0xf6ff00000000
	.dword	0                               # 0x0
	.dword	271575077093376                 # 0xf6ff00000000
.LCPI2_24:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63231                           # 0xf6ff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63231                           # 0xf6ff
	.half	65535                           # 0xffff
.LCPI2_25:
	.dword	281097019653937                 # 0xffa80000ff31
	.dword	281444912004984                 # 0xfff90000ff78
	.dword	280396939984700                 # 0xff050000ff3c
	.dword	281397667364684                 # 0xffee0000ff4c
.LCPI2_26:
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	65280                           # 0xff00
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	65280                           # 0xff00
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_27:
	.half	65329                           # 0xff31
	.half	206                             # 0xce
	.half	65448                           # 0xffa8
	.half	87                              # 0x57
	.half	120                             # 0x78
	.half	32888                           # 0x8078
	.half	249                             # 0xf9
	.half	33017                           # 0x80f9
	.half	65340                           # 0xff3c
	.half	195                             # 0xc3
	.half	65285                           # 0xff05
	.half	250                             # 0xfa
	.half	76                              # 0x4c
	.half	32844                           # 0x804c
	.half	65518                           # 0xffee
	.half	32785                           # 0x8011
.LCPI2_28:
	.dword	562941363601407                 # 0x1fffe0001bfff
	.dword	194274255789342                 # 0xb0b100015d1e
	.dword	562941363601407                 # 0x1fffe0001bfff
	.dword	194274255789342                 # 0xb0b100015d1e
.LCPI2_29:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	56735                           # 0xdd9f
	.half	46261                           # 0xb4b5
	.half	45233                           # 0xb0b1
	.half	32769                           # 0x8001
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	56735                           # 0xdd9f
	.half	46261                           # 0xb4b5
	.half	45233                           # 0xb0b1
	.half	32769                           # 0x8001
.LCPI2_30:
	.half	49152                           # 0xc000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	32639                           # 0x7f7f
	.half	65532                           # 0xfffc
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	49152                           # 0xc000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	32639                           # 0x7f7f
	.half	65532                           # 0xfffc
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_31:
	.dword	0                               # 0x0
	.dword	279413392473631                 # 0xfe200000fe1f
	.dword	0                               # 0x0
	.dword	279413392473631                 # 0xfe200000fe1f
.LCPI2_32:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65055                           # 0xfe1f
	.half	29                              # 0x1d
	.half	65056                           # 0xfe20
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65055                           # 0xfe1f
	.half	29                              # 0x1d
	.half	65056                           # 0xfe20
	.half	65535                           # 0xffff
.LCPI2_33:
	.dword	281470681808958                 # 0xffff0001003e
	.dword	562941363617728                 # 0x1fffe0001ffc0
	.dword	281470681808958                 # 0xffff0001003e
	.dword	562941363617728                 # 0x1fffe0001ffc0
.LCPI2_34:
	.half	63                              # 0x3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63                              # 0x3f
	.half	65473                           # 0xffc1
	.half	65472                           # 0xffc0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	63                              # 0x3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63                              # 0x3f
	.half	65473                           # 0xffc1
	.half	65472                           # 0xffc0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_35:
	.dword	316655053897727                 # 0x11fff0000ffff
	.dword	282574488403967                 # 0x101000000ffff
	.dword	316655053897727                 # 0x11fff0000ffff
	.dword	282574488403967                 # 0x101000000ffff
.LCPI2_36:
	.half	0                               # 0x0
	.half	97                              # 0x61
	.half	8192                            # 0x2000
	.half	97                              # 0x61
	.half	0                               # 0x0
	.half	353                             # 0x161
	.half	257                             # 0x101
	.half	32                              # 0x20
	.half	0                               # 0x0
	.half	97                              # 0x61
	.half	8192                            # 0x2000
	.half	97                              # 0x61
	.half	0                               # 0x0
	.half	353                             # 0x161
	.half	257                             # 0x101
	.half	32                              # 0x20
.LCPI2_37:
	.dword	4294967295                      # 0xffffffff
	.dword	4294967296                      # 0x100000000
	.dword	4294967295                      # 0xffffffff
	.dword	1                               # 0x1
.LCPI2_38:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_39:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI2_40:
	.dword	4294962136                      # 0xffffebd8
	.dword	4294967276                      # 0xffffffec
	.dword	4294962136                      # 0xffffebd8
	.dword	4294967276                      # 0xffffffec
.LCPI2_41:
	.word	4294962136                      # 0xffffebd8
	.word	19                              # 0x13
	.word	4294967276                      # 0xffffffec
	.word	19                              # 0x13
	.word	4294962136                      # 0xffffebd8
	.word	19                              # 0x13
	.word	4294967276                      # 0xffffffec
	.word	19                              # 0x13
.LCPI2_42:
	.dword	9175175                         # 0x8c0087
	.dword	3132799674                      # 0xbabababa
	.dword	9175175                         # 0x8c0087
	.dword	3132799674                      # 0xbabababa
.LCPI2_43:
	.word	8388736                         # 0x800080
	.word	8388608                         # 0x800000
	.word	3132799674                      # 0xbabababa
	.word	985348795                       # 0x3abb3abb
	.word	8388736                         # 0x800080
	.word	8388608                         # 0x800000
	.word	3132799674                      # 0xbabababa
	.word	985348795                       # 0x3abb3abb
.LCPI2_44:
	.word	786439                          # 0xc0007
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	786439                          # 0xc0007
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_45:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	128                             # 0x80
	.dword	0                               # 0x0
.LCPI2_46:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_47:
	.dword	0                               # 0x0
	.dword	4393751544831                   # 0x3ff000003ff
	.dword	0                               # 0x0
	.dword	4393751544831                   # 0x3ff000003ff
.LCPI2_48:
	.dword	4294967306                      # 0x10000000a
	.dword	0                               # 0x0
	.dword	4294967306                      # 0x10000000a
	.dword	0                               # 0x0
.LCPI2_49:
	.dword	4294967306                      # 0x10000000a
	.dword	42949672960                     # 0xa00000000
	.dword	4294967306                      # 0x10000000a
	.dword	42949672960                     # 0xa00000000
.LCPI2_50:
	.dword	-9196631909772296193            # 0x805f0000ffffffff
	.dword	1                               # 0x1
	.dword	-9196631909772296193            # 0x805f0000ffffffff
	.dword	1                               # 0x1
.LCPI2_51:
	.dword	-281470681743361                # 0xffff0000ffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-281470681743361                # 0xffff0000ffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_52:
	.dword	-9196350439090552832            # 0x8060000000000000
	.dword	9218868437227405312             # 0x7ff0000000000000
	.dword	-9196350439090552832            # 0x8060000000000000
	.dword	9218868437227405312             # 0x7ff0000000000000
.LCPI2_53:
	.dword	2139127680                      # 0x7f807f80
	.dword	0                               # 0x0
	.dword	2139127680                      # 0x7f807f80
	.dword	0                               # 0x0
.LCPI2_54:
	.dword	1069563840                      # 0x3fc03fc0
	.dword	-143554432850658046             # 0xfe01fe010000fd02
	.dword	1069563840                      # 0x3fc03fc0
	.dword	-143554432850658046             # 0xfe01fe010000fd02
.LCPI2_55:
	.dword	-63895794685772004              # 0xff1cff1cff1cff1c
	.dword	0                               # 0x0
	.dword	-63895794685772004              # 0xff1cff1cff1cff1c
	.dword	0                               # 0x0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 192
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 96
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvaddwev.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 96
	xvaddwev.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 96
	xvaddwev.h.bu	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 96
	xvldi	$xr0, -2692
	xvaddwev.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 96
	xvaddwev.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 19
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr0, $sp, 96
	xvaddwev.w.hu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 96
	xvaddwev.w.hu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_30)
	xvst	$xr0, $sp, 96
	xvaddwev.w.hu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvaddwev.w.hu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_32)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr0, $sp, 96
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvaddwev.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_36)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvaddwev.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvaddwev.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 96
	xvaddwev.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_41)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_44)
	xvst	$xr0, $sp, 96
	xvaddwev.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 64
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_47)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvaddwev.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvaddwev.q.du	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_49)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_52)
	xvst	$xr0, $sp, 96
	xvaddwev.q.du	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_54)
	xvst	$xr0, $sp, 96
	xvaddwev.q.du	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_55)
	xvst	$xr0, $sp, 96
	xvrepli.h	$xr0, -228
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -192
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvaddwev-2.c"
	.size	.L.str.5, 136

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
