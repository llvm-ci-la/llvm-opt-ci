	.file	"lasx-xvabsd-1.c"
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
	.dword	450081981050746440              # 0x63f032d58557648
	.dword	5340185475308530234             # 0x4a1c266572772a3a
	.dword	1810778420410264323             # 0x19212d61237f2b03
	.dword	3772172671956882485             # 0x3459730f2f6d1435
.LCPI2_1:
	.byte	28                              # 0x1c
	.byte	60                              # 0x3c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	138                             # 0x8a
	.byte	40                              # 0x28
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
	.byte	131                             # 0x83
	.byte	207                             # 0xcf
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	252                             # 0xfc
	.byte	192                             # 0xc0
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
.LCPI2_2:
	.byte	100                             # 0x64
	.byte	198                             # 0xc6
	.byte	171                             # 0xab
	.byte	88                              # 0x58
	.byte	183                             # 0xb7
	.byte	43                              # 0x2b
	.byte	63                              # 0x3f
	.byte	6                               # 0x6
	.byte	58                              # 0x3a
	.byte	42                              # 0x2a
	.byte	137                             # 0x89
	.byte	142                             # 0x8e
	.byte	155                             # 0x9b
	.byte	38                              # 0x26
	.byte	28                              # 0x1c
	.byte	74                              # 0x4a
	.byte	134                             # 0x86
	.byte	250                             # 0xfa
	.byte	128                             # 0x80
	.byte	34                              # 0x22
	.byte	155                             # 0x9b
	.byte	147                             # 0x93
	.byte	32                              # 0x20
	.byte	24                              # 0x18
	.byte	203                             # 0xcb
	.byte	20                              # 0x14
	.byte	147                             # 0x93
	.byte	209                             # 0xd1
	.byte	15                              # 0xf
	.byte	141                             # 0x8d
	.byte	89                              # 0x59
	.byte	52                              # 0x34
.LCPI2_3:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	253                             # 0xfd
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	253                             # 0xfd
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
.LCPI2_4:
	.dword	0                               # 0x0
	.dword	2130804481                      # 0x7f017f01
	.dword	0                               # 0x0
	.dword	2130804481                      # 0x7f017f01
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_6:
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
.LCPI2_7:
	.dword	3473182017061341545             # 0x303338a48f374969
	.dword	369776489341793                 # 0x1504f4c4b2361
	.dword	3473182017061341545             # 0x303338a48f374969
	.dword	369776489341793                 # 0x1504f4c4b2361
.LCPI2_8:
	.byte	13                              # 0xd
	.byte	223                             # 0xdf
	.byte	63                              # 0x3f
	.byte	56                              # 0x38
	.byte	207                             # 0xcf
	.byte	238                             # 0xee
	.byte	216                             # 0xd8
	.byte	208                             # 0xd0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	13                              # 0xd
	.byte	223                             # 0xdf
	.byte	63                              # 0x3f
	.byte	56                              # 0x38
	.byte	207                             # 0xcf
	.byte	238                             # 0xee
	.byte	216                             # 0xd8
	.byte	208                             # 0xd0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
.LCPI2_9:
	.byte	164                             # 0xa4
	.byte	150                             # 0x96
	.byte	8                               # 0x8
	.byte	169                             # 0xa9
	.byte	115                             # 0x73
	.byte	38                              # 0x26
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	98                              # 0x62
	.byte	35                              # 0x23
	.byte	76                              # 0x4c
	.byte	76                              # 0x4c
	.byte	80                              # 0x50
	.byte	80                              # 0x50
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	164                             # 0xa4
	.byte	150                             # 0x96
	.byte	8                               # 0x8
	.byte	169                             # 0xa9
	.byte	115                             # 0x73
	.byte	38                              # 0x26
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	98                              # 0x62
	.byte	35                              # 0x23
	.byte	76                              # 0x4c
	.byte	76                              # 0x4c
	.byte	80                              # 0x50
	.byte	80                              # 0x50
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_10:
	.dword	-9186922122579083264            # 0x80817f01007f0000
	.dword	-9190018347314118399            # 0x80767f0101050101
	.dword	-9186922122579083264            # 0x80817f01007f0000
	.dword	-9190018347314118399            # 0x80767f0101050101
.LCPI2_11:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
.LCPI2_12:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	129                             # 0x81
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	124                             # 0x7c
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	129                             # 0x81
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	124                             # 0x7c
	.byte	128                             # 0x80
.LCPI2_13:
	.dword	251955421674151968              # 0x37f201f001f2020
	.dword	4863641440638410784             # 0x437f201f201f2020
	.dword	251955421674151968              # 0x37f201f001f2020
	.dword	4863641440638410784             # 0x437f201f201f2020
.LCPI2_14:
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	224                             # 0xe0
	.byte	127                             # 0x7f
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	224                             # 0xe0
	.byte	127                             # 0x7f
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_15:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	224                             # 0xe0
	.byte	127                             # 0x7f
	.byte	67                              # 0x43
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	224                             # 0xe0
	.byte	127                             # 0x7f
	.byte	67                              # 0x43
.LCPI2_16:
	.dword	2260808112452141312             # 0x1f60010000080100
	.dword	0                               # 0x0
	.dword	2260808112452141312             # 0x1f60010000080100
	.dword	0                               # 0x0
.LCPI2_17:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
.LCPI2_18:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	160                             # 0xa0
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
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	160                             # 0xa0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_19:
	.dword	0                               # 0x0
	.dword	72340172838076673               # 0x101010101010101
	.dword	0                               # 0x0
	.dword	72340172838076673               # 0x101010101010101
.LCPI2_20:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
.LCPI2_21:
	.dword	292456963341230957              # 0x40f040f040b236d
	.dword	1103806726403                   # 0x10100020103
	.dword	292456963341230957              # 0x40f040f040b236d
	.dword	1103806726403                   # 0x10100020103
.LCPI2_22:
	.byte	237                             # 0xed
	.byte	4                               # 0x4
	.byte	245                             # 0xf5
	.byte	4                               # 0x4
	.byte	241                             # 0xf1
	.byte	4                               # 0x4
	.byte	241                             # 0xf1
	.byte	4                               # 0x4
	.byte	253                             # 0xfd
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	237                             # 0xed
	.byte	4                               # 0x4
	.byte	245                             # 0xf5
	.byte	4                               # 0x4
	.byte	241                             # 0xf1
	.byte	4                               # 0x4
	.byte	241                             # 0xf1
	.byte	4                               # 0x4
	.byte	253                             # 0xfd
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_23:
	.byte	128                             # 0x80
	.byte	39                              # 0x27
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
	.byte	128                             # 0x80
	.byte	39                              # 0x27
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
.LCPI2_24:
	.dword	4295032960                      # 0x100010080
	.dword	4295032832                      # 0x100010000
	.dword	4295032960                      # 0x100010080
	.dword	4295032832                      # 0x100010000
.LCPI2_25:
	.half	128                             # 0x80
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	128                             # 0x80
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_26:
	.dword	1932735283                      # 0x73333333
	.dword	1145324611                      # 0x44444443
	.dword	1932735283                      # 0x73333333
	.dword	1145324611                      # 0x44444443
.LCPI2_27:
	.dword	71197672866049                  # 0x40c100000101
	.dword	89047556948225                  # 0x50fd00000101
	.dword	71197672866049                  # 0x40c100000101
	.dword	89047556948225                  # 0x50fd00000101
.LCPI2_28:
	.dword	143834524864676097              # 0x1ff00bd00ff0101
	.dword	-9079537509842616063            # 0x81ff00bd80ff0101
	.dword	143834524864676097              # 0x1ff00bd00ff0101
	.dword	-9079537509842616063            # 0x81ff00bd80ff0101
.LCPI2_29:
	.half	256                             # 0x100
	.half	65280                           # 0xff00
	.half	188                             # 0xbc
	.half	65024                           # 0xfe00
	.half	65279                           # 0xfeff
	.half	255                             # 0xff
	.half	65347                           # 0xff43
	.half	511                             # 0x1ff
	.half	256                             # 0x100
	.half	65280                           # 0xff00
	.half	188                             # 0xbc
	.half	65024                           # 0xfe00
	.half	65279                           # 0xfeff
	.half	255                             # 0xff
	.half	65347                           # 0xff43
	.half	511                             # 0x1ff
.LCPI2_30:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	32768                           # 0x8000
.LCPI2_31:
	.dword	70269960011810                  # 0x3fe900014022
	.dword	70274254979051                  # 0x3fea00013feb
	.dword	70269960011810                  # 0x3fe900014022
	.dword	70274254979051                  # 0x3fea00013feb
.LCPI2_32:
	.half	16368                           # 0x3ff0
	.half	0                               # 0x0
	.half	16368                           # 0x3ff0
	.half	0                               # 0x0
	.half	16362                           # 0x3fea
	.half	0                               # 0x0
	.half	16367                           # 0x3fef
	.half	0                               # 0x0
	.half	16368                           # 0x3ff0
	.half	0                               # 0x0
	.half	16368                           # 0x3ff0
	.half	0                               # 0x0
	.half	16362                           # 0x3fea
	.half	0                               # 0x0
	.half	16367                           # 0x3fef
	.half	0                               # 0x0
.LCPI2_33:
	.half	65486                           # 0xffce
	.half	65535                           # 0xffff
	.half	7                               # 0x7
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	5                               # 0x5
	.half	0                               # 0x0
	.half	65486                           # 0xffce
	.half	65535                           # 0xffff
	.half	7                               # 0x7
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	5                               # 0x5
	.half	0                               # 0x0
.LCPI2_34:
	.dword	3703214596261219264             # 0x3364760e09310bc0
	.dword	4294967297                      # 0x100000001
	.dword	918882908384526335              # 0xcc08723006fffff
	.dword	0                               # 0x0
.LCPI2_35:
	.word	4140758080                      # 0xf6cef440
	.word	3432745458                      # 0xcc9b89f2
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4287627265                      # 0xff900001
	.word	213944099                       # 0xcc08723
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_36:
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_37:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_38:
	.dword	1644972474751                   # 0x17f0000017f
	.dword	65537                           # 0x10001
	.dword	1644972474749                   # 0x17f0000017d
	.dword	65537                           # 0x10001
.LCPI2_39:
	.dword	2959017787298676736             # 0x29108b0000000000
	.dword	4719211590916767744             # 0x417e01f040800000
	.dword	2998559523968385024             # 0x299d060000000000
	.dword	4719211590916767744             # 0x417e01f040800000
.LCPI2_40:
	.word	0                               # 0x0
	.word	3606017280                      # 0xd6ef7500
	.word	3212836864                      # 0xbf800000
	.word	3212836864                      # 0xbf800000
	.word	0                               # 0x0
	.word	3596810752                      # 0xd662fa00
	.word	3212836864                      # 0xbf800000
	.word	3212836864                      # 0xbf800000
.LCPI2_41:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	16646640                        # 0xfe01f0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	16646640                        # 0xfe01f0
.LCPI2_42:
	.dword	98785755159                     # 0x1700170017
	.dword	23                              # 0x17
	.dword	98785755159                     # 0x1700170017
	.dword	23                              # 0x17
.LCPI2_43:
	.dword	1688330169614214                # 0x5ff870005ff86
	.dword	281479347504266                 # 0x100010485048a
	.dword	1688330169614214                # 0x5ff870005ff86
	.dword	281479347504266                 # 0x100010485048a
.LCPI2_44:
	.word	4294967290                      # 0xfffffffa
	.word	4294967295                      # 0xffffffff
	.word	4219075444                      # 0xfb79fb74
	.word	4294967295                      # 0xffffffff
	.word	4294967290                      # 0xfffffffa
	.word	4294967295                      # 0xffffffff
	.word	4219075444                      # 0xfb79fb74
	.word	4294967295                      # 0xffffffff
.LCPI2_45:
	.word	4294574196                      # 0xfffa0074
	.word	4294574200                      # 0xfffa0078
	.word	4294901758                      # 0xfffefffe
	.word	4294901758                      # 0xfffefffe
	.word	4294574196                      # 0xfffa0074
	.word	4294574200                      # 0xfffa0078
	.word	4294901758                      # 0xfffefffe
	.word	4294901758                      # 0xfffefffe
.LCPI2_46:
	.dword	70373039161345                  # 0x400100004001
	.dword	70368744194043                  # 0x400000003ffb
	.dword	70373039161345                  # 0x400100004001
	.dword	70368744194043                  # 0x400000003ffb
.LCPI2_47:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	5                               # 0x5
	.word	0                               # 0x0
.LCPI2_48:
	.dword	8589934592                      # 0x200000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_49:
	.dword	-8589934592                     # 0xfffffffe00000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_50:
	.dword	281470681743360                 # 0xffff00000000
	.dword	0                               # 0x0
	.dword	281470681743360                 # 0xffff00000000
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
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 192
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 96
	xvabsd.b	$xr0, $xr2, $xr1
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
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 96
	xvabsd.b	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvabsd.b	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvabsd.b	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvabsd.b	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 96
	xvabsd.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 2
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvabsd.b	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 96
	xvabsd.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 96
	xvabsd.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_18)
	xvst	$xr0, $sp, 96
	xvabsd.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_20)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvabsd.b	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr0, $sp, 96
	xvabsd.b	$xr0, $xr2, $xr1
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
	xvabsd.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_25)
	lu12i.w	$s1, 16
	xvst	$xr0, $sp, 96
	move	$a0, $s1
	lu32i.d	$a0, 1
	xvreplgr2vr.d	$xr0, $a0
	xvabsd.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvabsd.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvabsd.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
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
	xvabsd.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_33)
	xvst	$xr0, $sp, 96
	xvabsd.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_35)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvabsd.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_37)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvabsd.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvabsd.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_41)
	xvst	$xr0, $sp, 96
	xvabsd.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvabsd.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_45)
	xvst	$xr0, $sp, 96
	xvabsd.w	$xr0, $xr2, $xr1
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
	xvabsd.w	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 1
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvabsd.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_47)
	xvst	$xr0, $sp, 96
	lu12i.w	$a0, 4
	xvreplgr2vr.w	$xr0, $a0
	xvabsd.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_49)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvabsd.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_50)
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvabsd.d	$xr0, $xr1, $xr0
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
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvabsd-1.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
