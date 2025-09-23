	.file	"lsx-vextrins.c"
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
	.dword	9223372032559808511             # 0x7ffffffeffffffff
	.dword	-35747322042253313              # 0xff80ffffffffffff
.LCPI2_1:
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_2:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_3:
	.dword	-6967121607072415744            # 0x9f4fcfcfcf800000
	.dword	22271500570566559               # 0x4f1fcfd01f9f9f
.LCPI2_4:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	207                             # 0xcf
	.byte	207                             # 0xcf
	.byte	207                             # 0xcf
	.byte	79                              # 0x4f
	.byte	159                             # 0x9f
	.byte	159                             # 0x9f
	.byte	159                             # 0x9f
	.byte	31                              # 0x1f
	.byte	208                             # 0xd0
	.byte	207                             # 0xcf
	.byte	207                             # 0xcf
	.byte	79                              # 0x4f
	.byte	0                               # 0x0
.LCPI2_5:
	.dword	1666061517079331871             # 0x171f0a1f6376441f
	.dword	7161701407603097753             # 0x6363797c63990099
.LCPI2_6:
	.byte	31                              # 0x1f
	.byte	68                              # 0x44
	.byte	118                             # 0x76
	.byte	99                              # 0x63
	.byte	31                              # 0x1f
	.byte	10                              # 0xa
	.byte	31                              # 0x1f
	.byte	23                              # 0x17
	.byte	153                             # 0x99
	.byte	99                              # 0x63
	.byte	153                             # 0x99
	.byte	99                              # 0x63
	.byte	124                             # 0x7c
	.byte	121                             # 0x79
	.byte	99                              # 0x63
	.byte	99                              # 0x63
.LCPI2_7:
	.dword	150633093005312                 # 0x890000000000
	.dword	0                               # 0x0
.LCPI2_8:
	.byte	68                              # 0x44
	.byte	36                              # 0x24
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	137                             # 0x89
	.byte	72                              # 0x48
	.byte	153                             # 0x99
	.byte	189                             # 0xbd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_9:
	.dword	-72057585448020715              # 0xff000001ffff9515
	.dword	4294923225                      # 0xffff53d9
.LCPI2_10:
	.byte	21                              # 0x15
	.byte	149                             # 0x95
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	217                             # 0xd9
	.byte	83                              # 0x53
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_11:
	.dword	0                               # 0x0
	.dword	-9223372036854775808            # 0x8000000000000000
.LCPI2_12:
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	107                             # 0x6b
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_13:
	.dword	281479271743489                 # 0x1000100010001
	.dword	281479288520705                 # 0x1000101010001
.LCPI2_14:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_15:
	.dword	-1227192985448343631            # 0xeef8227b4f8017b1
	.dword	8480352610945970469             # 0x75b043c4d17db125
.LCPI2_16:
	.half	6065                            # 0x17b1
	.half	22881                           # 0x5961
	.half	8827                            # 0x227b
	.half	61176                           # 0xeef8
	.half	45349                           # 0xb125
	.half	53629                           # 0xd17d
	.half	17348                           # 0x43c4
	.half	30128                           # 0x75b0
.LCPI2_17:
	.dword	179020816787187648              # 0x27c027c000027c0
	.dword	0                               # 0x0
.LCPI2_18:
	.half	9216                            # 0x2400
	.half	3555                            # 0xde3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_19:
	.dword	0                               # 0x0
	.dword	155245887881216                 # 0x8d3200000000
.LCPI2_20:
	.half	23552                           # 0x5c00
	.half	45666                           # 0xb262
	.half	36146                           # 0x8d32
	.half	13755                           # 0x35bb
	.half	504                             # 0x1f8
	.half	487                             # 0x1e7
	.half	319                             # 0x13f
	.half	495                             # 0x1ef
.LCPI2_21:
	.dword	-1736741567407783935            # 0xe7e5dabf00010001
	.dword	-1736887506101534719            # 0xe7e5560400010001
.LCPI2_22:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	55999                           # 0xdabf
	.half	59365                           # 0xe7e5
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	22020                           # 0x5604
	.half	48101                           # 0xbbe5
.LCPI2_23:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_24:
	.half	21573                           # 0x5445
	.half	5141                            # 0x1415
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	28357                           # 0x6ec5
	.half	64608                           # 0xfc60
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_25:
	.half	0                               # 0x0
	.half	9239                            # 0x2417
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	4814                            # 0x12ce
	.half	2125                            # 0x84d
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_26:
	.dword	-92915411765176                 # 0xffffab7e71e33848
	.dword	95485293973057060               # 0x1533b5e7489ae24
.LCPI2_27:
	.half	14408                           # 0x3848
	.half	29155                           # 0x71e3
	.half	43902                           # 0xab7e
	.half	58649                           # 0xe519
	.half	44580                           # 0xae24
	.half	29833                           # 0x7489
	.half	15198                           # 0x3b5e
	.half	339                             # 0x153
.LCPI2_28:
	.dword	281470681743360                 # 0xffff00000000
	.dword	0                               # 0x0
.LCPI2_29:
	.word	0                               # 0x0
	.word	3472883712                      # 0xcf000000
	.word	65535                           # 0xffff
	.word	3212836864                      # 0xbf800000
.LCPI2_30:
	.dword	-4261412352                     # 0xffffffff02000200
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_31:
	.dword	3759572873497223167             # 0x342caf9bffff1fff
	.dword	865783488383032081              # 0xc03e17edd781b11
.LCPI2_32:
	.word	4294909951                      # 0xffff1fff
	.word	4294959104                      # 0xffffe000
	.word	899                             # 0x383
	.word	1028                            # 0x404
.LCPI2_33:
	.word	3847684277                      # 0xe55700b5
	.word	875343771                       # 0x342caf9b
	.word	3715635985                      # 0xdd781b11
	.word	201580926                       # 0xc03e17e
.LCPI2_34:
	.dword	3267019458                      # 0xc2bac2c2
	.dword	4278124138                      # 0xfefefe6a
.LCPI2_35:
	.word	3267019458                      # 0xc2bac2c2
	.word	0                               # 0x0
	.word	4278124138                      # 0xfefefe6a
	.word	4294967295                      # 0xffffffff
.LCPI2_36:
	.dword	2814792717434890                # 0xa000a000a000a
	.dword	2814792716779530                # 0xa000a0000000a
.LCPI2_37:
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
.LCPI2_38:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483649                      # 0x80000001
	.word	4294967295                      # 0xffffffff
.LCPI2_39:
	.dword	0                               # 0x0
	.dword	5924416843732221951             # 0x5237c1baffffffff
.LCPI2_40:
	.word	3387613013                      # 0xc9eadf55
	.word	1379385786                      # 0x5237c1ba
	.word	2683355504                      # 0x9ff0c170
	.word	3913092049                      # 0xe93d0bd1
.LCPI2_41:
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_42:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
.LCPI2_43:
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_44:
	.dword	4294931971                      # 0xffff7603
	.dword	0                               # 0x0
.LCPI2_45:
	.word	3162374399                      # 0xbc7e00ff
	.word	3254548801                      # 0xc1fc7941
	.word	2260577862                      # 0x86bdae46
	.word	4294931971                      # 0xffff7603
.LCPI2_46:
	.dword	-242618439674746                # 0xffff2356fe165486
	.dword	253403135999                    # 0x3b0000ffff
.LCPI2_47:
	.word	59                              # 0x3b
	.word	978944                          # 0xef000
	.word	981467136                       # 0x3a800000
	.word	981467136                       # 0x3a800000
.LCPI2_48:
	.word	4262876294                      # 0xfe165486
	.word	4294910806                      # 0xffff2356
	.word	65535                           # 0xffff
	.word	65535                           # 0xffff
.LCPI2_49:
	.dword	1591483804774766256             # 0x16161616a16316b0
	.dword	2707625648                      # 0xa16316b0
.LCPI2_50:
	.dword	7161677110969590627             # 0x6363636363636363
	.dword	1591483804774766256             # 0x16161616a16316b0
.LCPI2_51:
	.dword	1667457891                      # 0x63636363
	.dword	2707625648                      # 0xa16316b0
.LCPI2_52:
	.dword	-1049310678217704               # 0xfffc45a851c40c18
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_53:
	.dword	-1049310678217704               # 0xfffc45a851c40c18
	.dword	-3226282476041904               # 0xfff489b693120950
.LCPI2_54:
	.dword	23901                           # 0x5d5d
	.dword	0                               # 0x0
.LCPI2_55:
	.dword	853445151926255616              # 0xbd80bd80bd80000
	.dword	0                               # 0x0
.LCPI2_56:
	.dword	853445151926255616              # 0xbd80bd80bd80000
	.dword	853445151926779903              # 0xbd80bd80bdfffff
.LCPI2_57:
	.dword	281204393836545                 # 0xffc100010001
	.dword	4746721573730320383             # 0x41dfbe1f41e0ffff
.LCPI2_58:
	.dword	281204393836545                 # 0xffc100010001
	.dword	-17170111018303488              # 0xffc2ffe000000000
.LCPI2_59:
	.dword	0                               # 0x0
	.dword	4746721573730320383             # 0x41dfbe1f41e0ffff
.LCPI2_60:
	.dword	-68398999168155884              # 0xff0cff78ff96ff14
	.dword	17497696829438                  # 0xfea0000fffe
.LCPI2_61:
	.dword	-68398999168155884              # 0xff0cff78ff96ff14
	.dword	-523854178913                   # 0xffffff8607db959f
.LCPI2_62:
	.dword	0                               # 0x0
	.dword	17497696829438                  # 0xfea0000fffe
.LCPI2_63:
	.dword	0                               # 0x0
	.dword	-9222527611924512768            # 0x8003000000020000
.LCPI2_64:
	.dword	4629981890844033028             # 0x4040ffffc0400004
	.dword	-9222527611924512768            # 0x8003000000020000
.LCPI2_65:
	.dword	0                               # 0x0
	.dword	-281470681808896                # 0xffff0000ffff0000
.LCPI2_66:
	.dword	-281470681808896                # 0xffff0000ffff0000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_67:
	.dword	1677807438899337328             # 0x1748c4f9ed1a5870
	.dword	-9223372036854775808            # 0x8000000000000000
.LCPI2_68:
	.dword	1677807438899337328             # 0x1748c4f9ed1a5870
	.dword	-7539969138166445943            # 0x975ca6046e2e4889
.LCPI2_69:
	.dword	139268814                       # 0x84d12ce
	.dword	2999616560892150                # 0xaa822a79308f6
.LCPI2_70:
	.dword	605487104                       # 0x24170000
	.dword	0                               # 0x0
.LCPI2_71:
	.dword	52                              # 0x34
	.dword	1260303637146310783             # 0x117d7f7b093d187f
.LCPI2_72:
	.dword	1260303637146310783             # 0x117d7f7b093d187f
	.dword	72478964689404232               # 0x1017f3c00000148
.LCPI2_73:
	.dword	52                              # 0x34
	.dword	0                               # 0x0
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
	vextrins.b	$vr0, $vr0, 194
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
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.b	$vr0, $vr0, 198
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr0, $sp, 112
	vextrins.b	$vr2, $vr1, 230
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 112
	vextrins.b	$vr1, $vr1, 218
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.b	$vr1, $vr0, 148
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_8)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.b	$vr0, $vr1, 88
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.b	$vr1, $vr0, 103
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_11)
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr1, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vextrins.b	$vr1, $vr0, 244
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vrepli.d	$vr0, 1
	vextrins.b	$vr1, $vr0, 193
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.b	$vr0, $vr0, 213
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	vrepli.h	$vr1, 1
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	vori.b	$vr0, $vr1, 0
	vextrins.b	$vr0, $vr1, 182
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vextrins.b	$vr0, $vr1, 197
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
	vextrins.h	$vr0, $vr0, 61
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 112
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	lu12i.w	$a0, 4
	ori	$a0, $a0, 3968
	vreplgr2vr.h	$vr1, $a0
	vextrins.h	$vr0, $vr1, 21
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr0, $sp, 112
	vextrins.h	$vr0, $vr1, 119
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_20)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.h	$vr0, $vr1, 234
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_22)
	vst	$vr0, $sp, 112
	vextrins.h	$vr1, $vr1, 243
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.h	$vr0, $vr0, 39
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_23)
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	vst	$vr1, $sp, 112
	vextrins.h	$vr1, $vr0, 118
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_25)
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.h	$vr0, $vr2, 86
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 112
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vextrins.h	$vr1, $vr0, 188
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.w	$vr0, $vr1, 146
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	vst	$vr0, $sp, 112
	vldi	$vr0, -2814
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vextrins.w	$vr1, $vr0, 3
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_33)
	vst	$vr0, $sp, 112
	vextrins.w	$vr2, $vr1, 204
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_35)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.w	$vr1, $vr0, 124
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_37)
	vst	$vr0, $sp, 112
	vrepli.h	$vr0, 10
	vextrins.w	$vr0, $vr1, 175
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_38)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vextrins.w	$vr0, $vr1, 103
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_40)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vextrins.w	$vr0, $vr1, 125
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_41)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vextrins.w	$vr1, $vr0, 31
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.w	$vr0, $vr0, 113
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.w	$vr0, $vr0, 243
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_43)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.w	$vr0, $vr1, 44
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
	vextrins.w	$vr0, $vr0, 93
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.w	$vr0, $vr0, 36
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_45)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.w	$vr0, $vr1, 195
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_48)
	vst	$vr0, $sp, 112
	vextrins.w	$vr2, $vr1, 112
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.d	$vr0, $vr0, 28
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_51)
	vst	$vr0, $sp, 112
	vextrins.d	$vr2, $vr1, 167
	vst	$vr2, $sp, 128
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
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vextrins.d	$vr0, $vr1, 72
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.d	$vr0, $vr0, 204
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_54)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vextrins.d	$vr0, $vr1, 65
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_56)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 249
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_57)
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_59)
	vst	$vr0, $sp, 112
	vextrins.d	$vr2, $vr1, 236
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_60)
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_61)
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_62)
	vst	$vr0, $sp, 112
	vextrins.d	$vr2, $vr1, 194
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_63)
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_64)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 100
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_65)
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_66)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr0, $vr1, 116
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 293
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.d	$vr0, $vr0, 130
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 299
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_67)
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_68)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vextrins.d	$vr0, $vr1, 106
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 305
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_69)
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_70)
	vld	$vr2, $sp, 32                   # 16-byte Folded Reload
	vst	$vr2, $sp, 112
	vextrins.d	$vr1, $vr0, 50
	vst	$vr1, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 311
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_71)
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_72)
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_73)
	vst	$vr0, $sp, 112
	vextrins.d	$vr2, $vr1, 112
	vst	$vr2, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 317
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vextrins.d	$vr0, $vr0, 138
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 323
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vextrins.c"
	.size	.L.str.5, 132

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
