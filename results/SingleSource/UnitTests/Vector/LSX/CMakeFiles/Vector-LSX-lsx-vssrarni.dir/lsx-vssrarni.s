	.file	"lsx-vssrarni.c"
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
	.dword	0                               # 0x0
	.dword	288234774265332736              # 0x400040004000400
.LCPI2_1:
	.byte	238                             # 0xee
	.byte	0                               # 0x0
	.byte	35                              # 0x23
	.byte	15                              # 0xf
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
.LCPI2_2:
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_3:
	.dword	0                               # 0x0
	.dword	6737206374052823167             # 0x5d7f5d807fea807f
.LCPI2_4:
	.byte	255                             # 0xff
	.byte	91                              # 0x5b
	.byte	23                              # 0x17
	.byte	188                             # 0xbc
	.byte	255                             # 0xff
	.byte	244                             # 0xf4
	.byte	38                              # 0x26
	.byte	64                              # 0x40
	.byte	106                             # 0x6a
	.byte	150                             # 0x96
	.byte	162                             # 0xa2
	.byte	46                              # 0x2e
	.byte	151                             # 0x97
	.byte	104                             # 0x68
	.byte	162                             # 0xa2
	.byte	46                              # 0x2e
.LCPI2_5:
	.dword	0                               # 0x0
	.dword	3233857536                      # 0xc0c0c000
.LCPI2_6:
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
.LCPI2_7:
	.byte	5                               # 0x5
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
.LCPI2_8:
	.dword	140183437606784                 # 0x7f7f00007f80
	.dword	-2125445590983639040            # 0xe280e67f00000000
.LCPI2_9:
	.byte	242                             # 0xf2
	.byte	173                             # 0xad
	.byte	202                             # 0xca
	.byte	62                              # 0x3e
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	78                              # 0x4e
	.byte	125                             # 0x7d
	.byte	105                             # 0x69
	.byte	53                              # 0x35
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_10:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	195                             # 0xc3
	.byte	17                              # 0x11
	.byte	150                             # 0x96
	.byte	255                             # 0xff
	.byte	131                             # 0x83
	.byte	221                             # 0xdd
	.byte	134                             # 0x86
	.byte	255                             # 0xff
.LCPI2_11:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	257                             # 0x101
	.half	257                             # 0x101
.LCPI2_12:
	.dword	0                               # 0x0
	.dword	4294967297                      # 0x100000001
.LCPI2_13:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	240                             # 0xf0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_14:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_15:
	.dword	4292870144                      # 0xffe00000
	.dword	0                               # 0x0
.LCPI2_16:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65520                           # 0xfff0
	.half	49407                           # 0xc0ff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.dword	0                               # 0x0
	.dword	524288                          # 0x80000
.LCPI2_18:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_19:
	.half	16                              # 0x10
	.half	0                               # 0x0
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16                              # 0x10
	.half	0                               # 0x0
.LCPI2_20:
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
.LCPI2_21:
	.half	136                             # 0x88
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_22:
	.half	136                             # 0x88
	.half	80                              # 0x50
	.half	131                             # 0x83
	.half	2                               # 0x2
	.half	8                               # 0x8
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_23:
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	-9223372034707292160            # 0x8000000080000000
.LCPI2_24:
	.word	4278059265                      # 0xfefe0101
	.word	16842752                        # 0x1010000
	.word	1698792949                      # 0x654185f5
	.word	1963296061                      # 0x7505853d
.LCPI2_25:
	.word	4116463616                      # 0xf55c4000
	.word	3254521147                      # 0xc1fc0d3b
	.word	807157760                       # 0x301c4000
	.word	3662037973                      # 0xda4643d5
.LCPI2_26:
	.dword	0                               # 0x0
	.dword	4194304                         # 0x400000
.LCPI2_27:
	.word	43                              # 0x2b
	.word	1                               # 0x1
	.word	115                             # 0x73
	.word	0                               # 0x0
.LCPI2_28:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_29:
	.word	26016                           # 0x65a0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_30:
	.dword	2147483648                      # 0x80000000
	.dword	0                               # 0x0
.LCPI2_31:
	.word	4097481992                      # 0xf43a9d08
	.word	2571227477                      # 0x9941d155
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_32:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_33:
	.dword	0                               # 0x0
	.dword	4294967296                      # 0x100000000
.LCPI2_34:
	.word	65535                           # 0xffff
	.word	65535                           # 0xffff
	.word	65790                           # 0x100fe
	.word	65790                           # 0x100fe
.LCPI2_35:
	.dword	1099511627776                   # 0x10000000000
	.dword	0                               # 0x0
.LCPI2_36:
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	67125250                        # 0x4004002
	.word	67125250                        # 0x4004002
.LCPI2_37:
	.dword	-9223372034707292160            # 0x8000000080000000
	.dword	0                               # 0x0
.LCPI2_38:
	.word	3818476541                      # 0xe39953fd
	.word	4185482584                      # 0xf9796558
	.word	2214890531                      # 0x84048c23
	.word	3542456873                      # 0xd3259a29
.LCPI2_39:
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI2_40:
	.word	763472161                       # 0x2d81a921
	.word	934891776                       # 0x37b95100
	.word	4096                            # 0x1000
	.word	4096                            # 0x1000
.LCPI2_41:
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	1061579782526636441             # 0xebb7d300e3c9199
.LCPI2_42:
	.word	1910803658                      # 0x71e48cca
	.word	0                               # 0x0
	.word	1977346434                      # 0x75dbe982
	.word	0                               # 0x0
.LCPI2_43:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
.LCPI2_44:
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
.LCPI2_45:
	.dword	11821493761408904               # 0x29ff96005cff88
	.dword	6755644259041194                # 0x1800390049ffaa
.LCPI2_46:
	.dword	6358661889                      # 0x17b017b01
	.dword	0                               # 0x0
.LCPI2_47:
	.dword	853445151926255616              # 0xbd80bd80bd80000
	.dword	853445151926779903              # 0xbd80bd80bdfffff
.LCPI2_48:
	.dword	859918732793220056              # 0xbef0b880bd80bd8
	.dword	0                               # 0x0
.LCPI2_49:
	.dword	493435568584722697              # 0x6d9090909090909
	.dword	0                               # 0x0
.LCPI2_50:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_51:
	.dword	-18014398509481984              # 0xffc0000000000000
	.dword	9223372036854775807             # 0x7fffffffffffffff
.LCPI2_52:
	.dword	55834574848                     # 0xd00000000
	.dword	-68719476736                    # 0xfffffff000000000
.LCPI2_53:
	.dword	7868803738545395845             # 0x6d339b4f3b439885
	.dword	16275100804961512               # 0x39d21e3229d4e8
.LCPI2_54:
	.dword	26396937879571                  # 0x1802041b0013
	.dword	0                               # 0x0
.LCPI2_55:
	.byte	66                              # 0x42
	.byte	77                              # 0x4d
	.byte	148                             # 0x94
	.byte	217                             # 0xd9
	.byte	136                             # 0x88
	.byte	107                             # 0x6b
	.byte	169                             # 0xa9
	.byte	15                              # 0xf
	.byte	88                              # 0x58
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	96                              # 0x60
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_56:
	.dword	14073748835532800               # 0x32000000000000
	.dword	0                               # 0x0
.LCPI2_57:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	250                             # 0xfa
	.byte	241                             # 0xf1
	.byte	255                             # 0xff
	.byte	32                              # 0x20
	.byte	3                               # 0x3
	.byte	128                             # 0x80
	.byte	240                             # 0xf0
.LCPI2_58:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
.LCPI2_59:
	.dword	0                               # 0x0
	.dword	-281474976645121                # 0xffff00000000ffff
.LCPI2_60:
	.byte	5                               # 0x5
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	133                             # 0x85
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	229                             # 0xe5
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_61:
	.byte	209                             # 0xd1
	.byte	86                              # 0x56
	.byte	110                             # 0x6e
	.byte	95                              # 0x5f
	.byte	247                             # 0xf7
	.byte	224                             # 0xe0
	.byte	56                              # 0x38
	.byte	234                             # 0xea
	.byte	188                             # 0xbc
	.byte	226                             # 0xe2
	.byte	53                              # 0x35
	.byte	146                             # 0x92
	.byte	225                             # 0xe1
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	13                              # 0xd
.LCPI2_62:
	.dword	578721382569869312              # 0x808080800000000
	.dword	12412455520264                  # 0xb4a00008808
.LCPI2_63:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	252                             # 0xfc
	.byte	3                               # 0x3
	.byte	252                             # 0xfc
	.byte	3                               # 0x3
	.byte	252                             # 0xfc
	.byte	3                               # 0x3
	.byte	252                             # 0xfc
	.byte	3                               # 0x3
.LCPI2_64:
	.byte	228                             # 0xe4
	.byte	3                               # 0x3
	.byte	36                              # 0x24
	.byte	68                              # 0x44
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	37                              # 0x25
	.byte	69                              # 0x45
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_65:
	.dword	1095216660480                   # 0xff00000000
	.dword	0                               # 0x0
.LCPI2_66:
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
.LCPI2_67:
	.byte	21                              # 0x15
	.byte	149                             # 0x95
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
.LCPI2_68:
	.dword	21474836480                     # 0x500000000
	.dword	0                               # 0x0
.LCPI2_69:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	191                             # 0xbf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	18                              # 0x12
	.byte	214                             # 0xd6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_70:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_71:
	.byte	11                              # 0xb
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
.LCPI2_72:
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
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_73:
	.byte	196                             # 0xc4
	.byte	255                             # 0xff
	.byte	118                             # 0x76
	.byte	255                             # 0xff
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.byte	152                             # 0x98
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_74:
	.byte	22                              # 0x16
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_75:
	.dword	562958543355905                 # 0x2000200000001
	.dword	8589934592                      # 0x200000000
.LCPI2_76:
	.byte	161                             # 0xa1
	.byte	70                              # 0x46
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	135                             # 0x87
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	217                             # 0xd9
	.byte	105                             # 0x69
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	217                             # 0xd9
	.byte	105                             # 0x69
	.byte	1                               # 0x1
	.byte	1                               # 0x1
.LCPI2_77:
	.byte	192                             # 0xc0
	.byte	30                              # 0x1e
	.byte	88                              # 0x58
	.byte	4                               # 0x4
	.byte	191                             # 0xbf
	.byte	15                              # 0xf
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	72                              # 0x48
	.byte	104                             # 0x68
	.byte	89                              # 0x59
	.byte	2                               # 0x2
	.byte	191                             # 0xbf
	.byte	15                              # 0xf
	.byte	6                               # 0x6
	.byte	0                               # 0x0
.LCPI2_78:
	.dword	43                              # 0x2b
	.dword	0                               # 0x0
.LCPI2_79:
	.byte	85                              # 0x55
	.byte	1                               # 0x1
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
.LCPI2_80:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	228                             # 0xe4
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	255                             # 0xff
.LCPI2_81:
	.dword	144117387132666368              # 0x200020002000200
	.dword	0                               # 0x0
.LCPI2_82:
	.dword	65535                           # 0xffff
	.dword	0                               # 0x0
.LCPI2_83:
	.half	255                             # 0xff
	.half	254                             # 0xfe
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_84:
	.half	65282                           # 0xff02
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_85:
	.half	15                              # 0xf
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_86:
	.dword	1080863910820577280             # 0xf0000000f000000
	.dword	0                               # 0x0
.LCPI2_87:
	.half	896                             # 0x380
	.half	0                               # 0x0
	.half	896                             # 0x380
	.half	960                             # 0x3c0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	960                             # 0x3c0
.LCPI2_88:
	.dword	4294901760                      # 0xffff0000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_89:
	.half	4385                            # 0x1121
	.half	4369                            # 0x1111
	.half	4401                            # 0x1131
	.half	4369                            # 0x1111
	.half	4417                            # 0x1141
	.half	4369                            # 0x1111
	.half	4401                            # 0x1131
	.half	4369                            # 0x1111
.LCPI2_90:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
.LCPI2_91:
	.half	65281                           # 0xff01
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_92:
	.dword	524296                          # 0x80008
	.dword	2                               # 0x2
.LCPI2_93:
	.half	65531                           # 0xfffb
	.half	32767                           # 0x7fff
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_94:
	.half	65535                           # 0xffff
	.half	8191                            # 0x1fff
	.half	65534                           # 0xfffe
	.half	65535                           # 0xffff
	.half	65534                           # 0xfffe
	.half	65535                           # 0xffff
	.half	65534                           # 0xfffe
	.half	65535                           # 0xffff
.LCPI2_95:
	.half	39232                           # 0x9940
	.half	21698                           # 0x54c2
	.half	44873                           # 0xaf49
	.half	30544                           # 0x7750
	.half	25688                           # 0x6458
	.half	29257                           # 0x7249
	.half	543                             # 0x21f
	.half	6838                            # 0x1ab6
.LCPI2_96:
	.dword	0                               # 0x0
	.dword	562958543486978                 # 0x2000200020002
.LCPI2_97:
	.half	4626                            # 0x1212
	.half	4626                            # 0x1212
	.half	2322                            # 0x912
	.half	4608                            # 0x1200
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_98:
	.dword	3503007986259667764             # 0x309d2f342a5d2b34
	.dword	10414724463984669               # 0x250023001c001d
.LCPI2_99:
	.half	52995                           # 0xcf03
	.half	172                             # 0xac
	.half	30142                           # 0x75be
	.half	169                             # 0xa9
	.half	53058                           # 0xcf42
	.half	188                             # 0xbc
	.half	30080                           # 0x7580
	.half	194                             # 0xc2
.LCPI2_100:
	.half	29495                           # 0x7337
	.half	0                               # 0x0
	.half	28561                           # 0x6f91
	.half	0                               # 0x0
	.half	35344                           # 0x8a10
	.half	0                               # 0x0
	.half	37636                           # 0x9304
	.half	0                               # 0x0
.LCPI2_101:
	.half	65407                           # 0xff7f
	.half	34816                           # 0x8800
	.half	63217                           # 0xf6f1
	.half	65249                           # 0xfee1
	.half	58368                           # 0xe400
	.half	65280                           # 0xff00
	.half	58368                           # 0xe400
	.half	65280                           # 0xff00
.LCPI2_102:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_103:
	.word	0                               # 0x0
	.word	2146959360                      # 0x7ff80000
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_104:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_105:
	.word	353637138                       # 0x15141312
	.word	370480147                       # 0x16151413
	.word	387323156                       # 0x17161514
	.word	404166165                       # 0x18171615
.LCPI2_106:
	.word	2324334857                      # 0x8a8a8909
	.word	2341112457                      # 0x8b8a8a89
	.word	2341145354                      # 0x8b8b0b0a
	.word	202148746                       # 0xc0c8b8a
.LCPI2_107:
	.word	4292935927                      # 0xffe100f7
	.word	4023591286                      # 0xefd32176
	.word	4022403319                      # 0xefc100f7
	.word	4292903158                      # 0xffe080f6
.LCPI2_108:
	.word	989855744                       # 0x3b000000
	.word	775182668                       # 0x2e34594c
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_109:
	.word	0                               # 0x0
	.word	30932992                        # 0x1d80000
	.word	46662240                        # 0x2c80260
	.word	24117664                        # 0x17001a0
.LCPI2_110:
	.dword	3                               # 0x3
	.dword	0                               # 0x0
.LCPI2_111:
	.dword	402499625                       # 0x17fda829
	.dword	0                               # 0x0
.LCPI2_112:
	.dword	5924416842824867669             # 0x5237c1bac9eadf55
	.dword	-1640141694333566608            # 0xe93d0bd19ff0c170
.LCPI2_113:
	.dword	9169750235583512067             # 0x7f417f417f027e03
	.dword	63                              # 0x3f
.LCPI2_114:
	.dword	9218868437227405312             # 0x7ff0000000000000
	.dword	-281470681808896                # 0xffff0000ffff0000
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
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vst	$vr1, $sp, 128
	vssrarni.b.h	$vr0, $vr0, 15
	vst	$vr0, $sp, 144
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	vst	$vr0, $sp, 128
	lu12i.w	$a0, 522240
	vreplgr2vr.w	$vr0, $a0
	vssrarni.b.h	$vr0, $vr1, 13
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.b.h	$vr0, $vr1, 5
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vssrarni.b.h	$vr1, $vr0, 7
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrarni.b.h	$vr1, $vr0, 9
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vssrarni.b.h	$vr0, $vr1, 11
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vssrarni.b.h	$vr0, $vr1, 7
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
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
	vst	$vr0, $sp, 128
	vssrarni.b.h	$vr2, $vr1, 2
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.h.w	$vr0, $vr1, 30
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 128
	vrepli.d	$vr0, 1
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrarni.h.w	$vr0, $vr1, 1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.h.w	$vr0, $vr0, 17
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	lu12i.w	$a0, -32
	ori	$a0, $a0, 1
	vreplgr2vr.w	$vr1, $a0
	vssrarni.h.w	$vr1, $vr0, 21
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrarni.h.w	$vr0, $vr1, 25
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_19)
	vst	$vr0, $sp, 128
	vssrarni.h.w	$vr2, $vr1, 17
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.h.w	$vr0, $vr0, 28
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.h.w	$vr0, $vr1, 28
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_22)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vssrarni.h.w	$vr1, $vr0, 30
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.h.w	$vr0, $vr0, 30
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vrepli.w	$vr0, 128
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vssrarni.h.w	$vr1, $vr0, 22
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.h.w	$vr0, $vr0, 19
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_25)
	vst	$vr0, $sp, 128
	vssrarni.w.d	$vr2, $vr1, 7
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrarni.w.d	$vr1, $vr0, 10
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vssrarni.w.d	$vr0, $vr0, 12
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.w.d	$vr0, $vr0, 50
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vssrarni.w.d	$vr1, $vr0, 46
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_31)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrarni.w.d	$vr0, $vr1, 17
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_32)
	vst	$vr2, $sp, 80                   # 16-byte Folded Spill
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.w.d	$vr0, $vr2, 41
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_34)
	vst	$vr0, $sp, 128
	lu12i.w	$a0, 2
	vreplgr2vr.d	$vr0, $a0
	vssrarni.w.d	$vr1, $vr0, 49
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_35)
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_36)
	vst	$vr1, $sp, 128
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrarni.w.d	$vr1, $vr0, 50
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vssrarni.w.d	$vr0, $vr0, 45
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.w.d	$vr0, $vr0, 43
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_38)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrarni.w.d	$vr0, $vr1, 20
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_40)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrarni.w.d	$vr0, $vr1, 62
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_41)
	vst	$vr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	ori	$s0, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 65536
	vreplgr2vr.d	$vr1, $a0
	vssrarni.w.d	$vr0, $vr1, 3
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.d.q	$vr0, $vr0, 121
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_43)
	vst	$vr0, $sp, 128
	vrepli.h	$vr0, 511
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vssrarni.d.q	$vr1, $vr0, 27
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vssrarni.d.q	$vr0, $vr1, 89
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_45)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrarni.d.q	$vr1, $vr0, 14
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_48)
	vst	$vr0, $sp, 128
	vssrarni.d.q	$vr2, $vr1, 91
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vssrarni.d.q	$vr0, $vr1, 18
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.d.q	$vr0, $vr0, 81
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -1
	lu52i.d	$a0, $s1, 2047
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 128
	vrepli.h	$vr0, 77
	vrepli.b	$vr1, 82
	vssrarni.d.q	$vr1, $vr0, 19
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_50)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vssrarni.d.q	$vr1, $vr0, 72
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_53)
	vst	$vr0, $sp, 128
	vssrarni.d.q	$vr2, $vr1, 46
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_55)
	vst	$vr0, $sp, 128
	vrepli.h	$vr0, 32
	vssrarni.bu.h	$vr0, $vr1, 10
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	lu32i.d	$a0, 0
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.bu.h	$vr0, $vr0, 11
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 293
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	lu12i.w	$a0, 32
	vreplgr2vr.w	$vr0, $a0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vssrarni.bu.h	$vr1, $vr0, 15
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 299
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.bu.h	$vr0, $vr0, 4
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 305
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_56)
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	pcalau12i	$a1, %pc_hi20(.LCPI2_58)
	vld	$vr1, $a1, %pc_lo12(.LCPI2_58)
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI2_57)
	vst	$vr2, $sp, 128
	vssrarni.bu.h	$vr1, $vr0, 4
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 311
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_59)
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_60)
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_61)
	vst	$vr0, $sp, 128
	vssrarni.bu.h	$vr2, $vr1, 1
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 317
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_63)
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_64)
	vst	$vr0, $sp, 128
	vssrarni.bu.h	$vr2, $vr1, 7
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 323
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_65)
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_66)
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_67)
	vst	$vr0, $sp, 128
	vssrarni.bu.h	$vr1, $vr2, 3
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 329
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_68)
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_69)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vssrarni.bu.h	$vr1, $vr0, 12
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 335
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_70)
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_71)
	vst	$vr1, $sp, 128
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrarni.bu.h	$vr0, $vr1, 3
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 341
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vssrarni.bu.h	$vr0, $vr1, 14
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 347
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_72)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrarni.bu.h	$vr1, $vr0, 2
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 353
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_73)
	lu12i.w	$a0, -234388
	ori	$a0, $a0, 1734
	lu32i.d	$a0, 0
	vreplgr2vr.d	$vr1, $a0
	vssrarni.bu.h	$vr1, $vr0, 11
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 359
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_74)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.bu.h	$vr0, $vr0, 12
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 365
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.bu.h	$vr0, $vr0, 2
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 371
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vssrarni.bu.h	$vr0, $vr1, 14
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 377
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_75)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_75)
	pcalau12i	$a0, %pc_hi20(.LCPI2_76)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_76)
	pcalau12i	$a0, %pc_hi20(.LCPI2_77)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_77)
	vst	$vr0, $sp, 128
	vssrarni.bu.h	$vr2, $vr1, 14
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 383
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_78)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_78)
	pcalau12i	$a0, %pc_hi20(.LCPI2_79)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_79)
	pcalau12i	$a0, %pc_hi20(.LCPI2_80)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_80)
	vst	$vr0, $sp, 128
	vssrarni.bu.h	$vr2, $vr1, 3
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 389
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_81)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_81)
	vst	$vr0, $sp, 128
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	vreplgr2vr.w	$vr0, $a0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrarni.hu.w	$vr1, $vr0, 7
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 395
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_82)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_82)
	pcalau12i	$a0, %pc_hi20(.LCPI2_83)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_83)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrarni.hu.w	$vr0, $vr1, 1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 401
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_84)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_84)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.hu.w	$vr0, $vr1, 15
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 407
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_85)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_85)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.hu.w	$vr1, $vr0, 13
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 413
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.hu.w	$vr0, $vr0, 4
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 419
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_86)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_86)
	pcalau12i	$a0, %pc_hi20(.LCPI2_87)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_87)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrarni.hu.w	$vr0, $vr1, 14
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 425
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.hu.w	$vr0, $vr0, 31
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 431
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_88)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_88)
	pcalau12i	$a0, %pc_hi20(.LCPI2_89)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_89)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vssrarni.hu.w	$vr1, $vr0, 3
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 437
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_90)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_90)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.hu.w	$vr1, $vr0, 14
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 443
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_91)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_91)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.hu.w	$vr0, $vr1, 17
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 449
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_92)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_92)
	pcalau12i	$a0, %pc_hi20(.LCPI2_93)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_93)
	pcalau12i	$a0, %pc_hi20(.LCPI2_94)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_94)
	vst	$vr0, $sp, 128
	vssrarni.hu.w	$vr2, $vr1, 28
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 455
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu32i.d	$s1, -458753
	pcalau12i	$a0, %pc_hi20(.LCPI2_95)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_95)
	lu52i.d	$a0, $s1, 1709
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 128
	vssrarni.hu.w	$vr0, $vr0, 14
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 461
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.hu.w	$vr0, $vr0, 19
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 467
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_96)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_96)
	pcalau12i	$a0, %pc_hi20(.LCPI2_97)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_97)
	vst	$vr0, $sp, 128
	vrepli.b	$vr0, 99
	vssrarni.hu.w	$vr0, $vr1, 30
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 473
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_98)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_98)
	pcalau12i	$a0, %pc_hi20(.LCPI2_99)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_99)
	pcalau12i	$a0, %pc_hi20(.LCPI2_100)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_100)
	vst	$vr0, $sp, 128
	vssrarni.hu.w	$vr2, $vr1, 10
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 479
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_101)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_101)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	lu32i.d	$s0, -65536
	vreplgr2vr.d	$vr1, $s0
	vssrarni.hu.w	$vr0, $vr1, 9
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 485
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_102)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_102)
	pcalau12i	$a0, %pc_hi20(.LCPI2_103)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_103)
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vssrarni.wu.d	$vr1, $vr0, 63
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 491
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.wu.d	$vr0, $vr0, 8
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 497
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_104)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_104)
	pcalau12i	$a0, %pc_hi20(.LCPI2_105)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_105)
	pcalau12i	$a0, %pc_hi20(.LCPI2_106)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_106)
	vst	$vr0, $sp, 128
	vssrarni.wu.d	$vr2, $vr1, 27
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 503
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_107)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_107)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.wu.d	$vr0, $vr0, 44
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 509
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_108)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_108)
	pcalau12i	$a0, %pc_hi20(.LCPI2_109)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_109)
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vssrarni.wu.d	$vr1, $vr0, 16
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 515
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.du.q	$vr0, $vr0, 27
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 521
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_110)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_110)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.du.q	$vr0, $vr1, 114
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 527
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_111)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_111)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.du.q	$vr1, $vr0, 92
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 533
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vrepli.h	$vr0, -4
	vssrarni.du.q	$vr0, $vr1, 48
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 539
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_112)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_112)
	pcalau12i	$a0, %pc_hi20(.LCPI2_113)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_113)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vssrarni.du.q	$vr1, $vr0, 96
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 545
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.du.q	$vr0, $vr0, 88
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 551
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_114)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_114)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrarni.du.q	$vr0, $vr0, 113
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 557
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.du.q	$vr0, $vr0, 37
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 563
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrarni.du.q	$vr0, $vr0, 7
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 569
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vssrarni.c"
	.size	.L.str.5, 132

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
