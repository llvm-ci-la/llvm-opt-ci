	.file	"lsx-vsrlrni.c"
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
	.byte	83                              # 0x53
	.byte	1                               # 0x1
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	198                             # 0xc6
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	12                              # 0xc
	.byte	0                               # 0x0
.LCPI2_1:
	.dword	-9223231297218904064            # 0x8000800080008000
	.dword	64520                           # 0xfc08
.LCPI2_2:
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	253                             # 0xfd
	.byte	253                             # 0xfd
	.byte	0                               # 0x0
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
.LCPI2_3:
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
.LCPI2_4:
	.dword	4412970204173058056             # 0x3d3e0505101e4008
	.dword	0                               # 0x0
.LCPI2_5:
	.byte	82                              # 0x52
	.byte	33                              # 0x21
	.byte	78                              # 0x4e
	.byte	255                             # 0xff
	.byte	248                             # 0xf8
	.byte	119                             # 0x77
	.byte	116                             # 0x74
	.byte	63                              # 0x3f
	.byte	42                              # 0x2a
	.byte	20                              # 0x14
	.byte	35                              # 0x23
	.byte	20                              # 0x14
	.byte	132                             # 0x84
	.byte	247                             # 0xf7
	.byte	141                             # 0x8d
	.byte	245                             # 0xf5
.LCPI2_6:
	.dword	7680                            # 0x1e00
	.dword	0                               # 0x0
.LCPI2_7:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
	.byte	173                             # 0xad
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
	.dword	0                               # 0x0
	.dword	536879136                       # 0x20002020
.LCPI2_9:
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_10:
	.dword	1157442765409226768             # 0x1010101010101010
	.dword	0                               # 0x0
.LCPI2_11:
	.dword	-8044261235543242504            # 0x905d0b06cf0008f8
	.dword	71846487805394944               # 0xff400000000000
.LCPI2_12:
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	209                             # 0xd1
	.byte	153                             # 0x99
	.byte	196                             # 0xc4
	.byte	160                             # 0xa0
	.byte	98                              # 0x62
	.byte	193                             # 0xc1
	.byte	173                             # 0xad
	.byte	11                              # 0xb
	.byte	248                             # 0xf8
	.byte	145                             # 0x91
.LCPI2_13:
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
	.byte	200                             # 0xc8
	.byte	229                             # 0xe5
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_14:
	.dword	34603079                        # 0x2100047
	.dword	0                               # 0x0
.LCPI2_15:
	.byte	142                             # 0x8e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	24                              # 0x18
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
.LCPI2_16:
	.dword	0                               # 0x0
	.dword	1157442765409226768             # 0x1010101010101010
.LCPI2_17:
	.byte	131                             # 0x83
	.byte	255                             # 0xff
	.byte	64                              # 0x40
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
.LCPI2_18:
	.dword	112                             # 0x70
	.dword	166951                          # 0x28c27
.LCPI2_19:
	.byte	110                             # 0x6e
	.byte	112                             # 0x70
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
.LCPI2_20:
	.byte	200                             # 0xc8
	.byte	38                              # 0x26
	.byte	235                             # 0xeb
	.byte	139                             # 0x8b
	.byte	64                              # 0x40
	.byte	2                               # 0x2
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
.LCPI2_21:
	.dword	16646398                        # 0xfe00fe
	.dword	27303489352892418               # 0x61006100020002
.LCPI2_22:
	.byte	240                             # 0xf0
	.byte	239                             # 0xef
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	239                             # 0xef
	.byte	239                             # 0xef
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
.LCPI2_23:
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	0                               # 0x0
	.byte	128                             # 0x80
.LCPI2_24:
	.dword	247372936438012                 # 0xe0fc0000e0fc
	.dword	0                               # 0x0
.LCPI2_25:
	.byte	30                              # 0x1e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	30                              # 0x1e
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
.LCPI2_26:
	.dword	2314885530818453536             # 0x2020202020202020
	.dword	2                               # 0x2
.LCPI2_27:
	.byte	8                               # 0x8
	.byte	15                              # 0xf
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
.LCPI2_28:
	.dword	-1067921575928268877            # 0xf12dfafc1ad1f7b3
	.dword	0                               # 0x0
.LCPI2_29:
	.half	48533                           # 0xbd95
	.half	65535                           # 0xffff
	.half	54920                           # 0xd688
	.half	0                               # 0x0
	.half	55266                           # 0xd7e2
	.half	65535                           # 0xffff
	.half	35177                           # 0x8969
	.half	65535                           # 0xffff
.LCPI2_30:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_31:
	.dword	370879016030544                 # 0x1515000015150
	.dword	0                               # 0x0
.LCPI2_32:
	.dword	63894879857737742               # 0xe3000e00e3000e
	.dword	72058693549555712               # 0x100010000000000
.LCPI2_33:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_34:
	.dword	-9186920471163993983            # 0x8081808180818081
	.dword	0                               # 0x0
.LCPI2_35:
	.dword	0                               # 0x0
	.dword	16843010                        # 0x1010102
.LCPI2_36:
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_37:
	.half	33026                           # 0x8102
	.half	32896                           # 0x8080
	.half	32896                           # 0x8080
	.half	32896                           # 0x8080
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_38:
	.dword	0                               # 0x0
	.dword	288234778476543745              # 0x4000400ff01ff01
.LCPI2_39:
	.half	1020                            # 0x3fc
	.half	1020                            # 0x3fc
	.half	1020                            # 0x3fc
	.half	1020                            # 0x3fc
	.half	11                              # 0xb
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
.LCPI2_40:
	.dword	5260611553438203904             # 0x4901725600000000
	.dword	0                               # 0x0
.LCPI2_41:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	9573                            # 0x2565
	.half	25335                           # 0x62f7
	.half	36879                           # 0x900f
	.half	4612                            # 0x1204
.LCPI2_42:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_43:
	.dword	0                               # 0x0
	.dword	70368744177664                  # 0x400000000000
.LCPI2_44:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_45:
	.dword	2203318222848                   # 0x20100000000
	.dword	0                               # 0x0
.LCPI2_46:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16512                           # 0x4080
	.half	16512                           # 0x4080
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_47:
	.dword	69525380107993131               # 0xf700f70036002b
	.dword	72057598341283851               # 0x10000010080000b
.LCPI2_48:
	.half	17198                           # 0x432e
	.half	11094                           # 0x2b56
	.half	21476                           # 0x53e4
	.half	13881                           # 0x3639
	.half	63155                           # 0xf6b3
	.half	63155                           # 0xf6b3
	.half	60259                           # 0xeb63
	.half	63155                           # 0xf6b3
.LCPI2_49:
	.half	32639                           # 0x7f7f
	.half	2828                            # 0xb0c
	.half	63615                           # 0xf87f
	.half	32765                           # 0x7ffd
	.half	258                             # 0x102
	.half	257                             # 0x101
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_50:
	.half	259                             # 0x103
	.half	771                             # 0x303
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_51:
	.dword	2251834173423624                # 0x8000800000008
	.dword	0                               # 0x0
.LCPI2_52:
	.half	33410                           # 0x8282
	.half	33410                           # 0x8282
	.half	33410                           # 0x8282
	.half	0                               # 0x0
	.half	33410                           # 0x8282
	.half	33410                           # 0x8282
	.half	33410                           # 0x8282
	.half	33410                           # 0x8282
.LCPI2_53:
	.half	65535                           # 0xffff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	0                               # 0x0
.LCPI2_54:
	.dword	3659217647894540                # 0xd000a000f000c
	.dword	262146                          # 0x40002
.LCPI2_55:
	.half	30895                           # 0x78af
	.half	47879                           # 0xbb07
	.half	31783                           # 0x7c27
	.half	59439                           # 0xe82f
	.half	28337                           # 0x6eb1
	.half	39468                           # 0x9a2c
	.half	7129                            # 0x1bd9
	.half	53406                           # 0xd09e
.LCPI2_56:
	.half	0                               # 0x0
	.half	7168                            # 0x1c00
	.half	56779                           # 0xddcb
	.half	16815                           # 0x41af
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_57:
	.dword	0                               # 0x0
	.dword	3623931896                      # 0xd800cff8
.LCPI2_58:
	.half	65281                           # 0xff01
	.half	65529                           # 0xfff9
	.half	65520                           # 0xfff0
	.half	65530                           # 0xfffa
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_59:
	.dword	576460769483294720              # 0x800000400000800
	.dword	0                               # 0x0
.LCPI2_60:
	.word	65534                           # 0xfffe
	.word	0                               # 0x0
	.word	127                             # 0x7f
	.word	1                               # 0x1
.LCPI2_61:
	.dword	-6631484648641794129            # 0xa3f83bd8e03fefaf
	.dword	1509168838257014494             # 0x14f1a50ffe65f6de
.LCPI2_62:
	.word	2145344768                      # 0x7fdf5d00
	.word	2315179968                      # 0x89fed7c0
	.word	4034375632                      # 0xf077afd0
	.word	3388369223                      # 0xc9f66947
.LCPI2_63:
	.word	3421354919                      # 0xcbedbba7
	.word	4227990524                      # 0xfc0203fc
	.word	3813285627                      # 0xe34a1efb
	.word	735433769                       # 0x2bd5d429
.LCPI2_64:
	.dword	-2301898691537010687            # 0xe00e035606000001
	.dword	0                               # 0x0
.LCPI2_65:
	.word	262                             # 0x106
	.word	262                             # 0x106
	.word	235099611                       # 0xe0355db
	.word	1859556576                      # 0x6ed694e0
.LCPI2_66:
	.dword	1094713344                      # 0x41400000
	.dword	8853645507668494781             # 0x7ade77ae3bd049bd
.LCPI2_67:
	.word	0                               # 0x0
	.word	1454154772                      # 0x56aca414
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_68:
	.word	77318636                        # 0x49bc9ec
	.word	3146781629                      # 0xbb9013bd
	.word	3883591461                      # 0xe77ae725
	.word	3879331757                      # 0xe739e7ad
.LCPI2_69:
	.dword	282578783371521                 # 0x1010100010101
	.dword	35321811075201                  # 0x202000008081
.LCPI2_70:
	.word	25198720                        # 0x1808080
	.word	16843008                        # 0x1010100
	.word	16843009                        # 0x1010101
	.word	16843009                        # 0x1010101
.LCPI2_71:
	.word	2160083008                      # 0x80c04040
	.word	8421504                         # 0x808080
	.word	538976288                       # 0x20202020
	.word	2105376                         # 0x202020
.LCPI2_72:
	.dword	0                               # 0x0
	.dword	72040001851887616               # 0xfff00000001000
.LCPI2_73:
	.word	0                               # 0x0
	.word	1048576                         # 0x100000
	.word	0                               # 0x0
	.word	4293918720                      # 0xfff00000
.LCPI2_74:
	.dword	-7376950108652306432            # 0x999fcef600000000
	.dword	31578                           # 0x7b5a
.LCPI2_75:
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	1719614424                      # 0x667f3bd8
	.word	536256670                       # 0x1ff6a09e
.LCPI2_76:
	.word	126312                          # 0x1ed68
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	65528                           # 0xfff8
.LCPI2_77:
	.dword	27625229652544                  # 0x192000001240
	.dword	35184372090624                  # 0x200000000700
.LCPI2_78:
	.word	4294508368                      # 0xfff8ff50
	.word	2449424639                      # 0x91ff40ff
	.word	4278255534                      # 0xff00ffae
	.word	3372157951                      # 0xc8ff0bff
.LCPI2_79:
	.word	39321847                        # 0x25800f7
	.word	939717885                       # 0x3802f4fd
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_80:
	.dword	5035496744952672421             # 0x45e1ad9c3e8a30a5
	.dword	8375750587042193333             # 0x743ca4c843eb5fb5
.LCPI2_81:
	.word	173476451                       # 0xa570a63
	.word	457435299                       # 0x1b43e8a3
	.word	3653494000                      # 0xd9c3e4f0
	.word	574905882                       # 0x22445e1a
.LCPI2_82:
	.word	4216187706                      # 0xfb4deb3a
	.word	3648274101                      # 0xd9743eb5
	.word	1282950687                      # 0x4c78461f
	.word	3145155530                      # 0xbb7743ca
.LCPI2_83:
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_84:
	.dword	30064771075                     # 0x700000003
	.dword	0                               # 0x0
.LCPI2_85:
	.word	1454147164                      # 0x56ac865c
	.word	1819453384                      # 0x6c72a7c8
	.word	3983011175                      # 0xed67ed67
	.word	3983005383                      # 0xed67d6c7
.LCPI2_86:
	.dword	0                               # 0x0
	.dword	1011712                         # 0xf7000
.LCPI2_87:
	.word	0                               # 0x0
	.word	16187392                        # 0xf70000
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_88:
	.dword	18014399788744704               # 0x4000004c400000
	.dword	36028522149445616               # 0x7fffc0007ffff0
.LCPI2_89:
	.word	2147483648                      # 0x80000000
	.word	21246616                        # 0x1443298
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
.LCPI2_90:
	.word	4294959088                      # 0xffffdff0
	.word	0                               # 0x0
	.word	4294934528                      # 0xffff8000
	.word	0                               # 0x0
.LCPI2_91:
	.dword	8619999367153                   # 0x7d700000ff1
	.dword	1                               # 0x1
.LCPI2_92:
	.word	4081                            # 0xff1
	.word	3                               # 0x3
	.word	2007                            # 0x7d7
	.word	2                               # 0x2
.LCPI2_93:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_94:
	.dword	0                               # 0x0
	.dword	4611686018427387904             # 0x4000000000000000
.LCPI2_95:
	.dword	1099511628032                   # 0x10000000100
	.dword	1                               # 0x1
.LCPI2_96:
	.dword	137438953504                    # 0x2000000020
	.dword	0                               # 0x0
.LCPI2_97:
	.dword	16777216                        # 0x1000000
	.dword	0                               # 0x0
.LCPI2_98:
	.dword	255                             # 0xff
	.dword	0                               # 0x0
.LCPI2_99:
	.dword	-157045444818501632             # 0xfdd2100000000000
	.dword	8659794920448                   # 0x7e044000400
.LCPI2_100:
	.dword	1                               # 0x1
	.dword	-1170079744                     # 0xffffffffba420000
.LCPI2_101:
	.dword	4557430677284323328             # 0x3f3f3f0e00000000
	.dword	8924946186047                   # 0x81e003f3f3f
.LCPI2_102:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_103:
	.dword	280646048030736                 # 0xff3f00002010
	.dword	141733933072                    # 0x2100003010
.LCPI2_104:
	.dword	144958784110993938              # 0x202ff3f02022212
	.dword	144680487410086418              # 0x202022302023212
.LCPI2_105:
	.dword	0                               # 0x0
	.dword	15753802602774528               # 0x37f80000000000
.LCPI2_106:
	.dword	0                               # 0x0
	.dword	1791                            # 0x6ff
.LCPI2_107:
	.dword	13191738421354002               # 0x2eddd0f2931e12
	.dword	18014398505549636               # 0x3fffffffc3ff44
.LCPI2_108:
	.dword	-4026793983                     # 0xffffffff0ffc0001
	.dword	-4026724355                     # 0xffffffff0ffd0ffd
.LCPI2_109:
	.dword	4557431165824270335             # 0x3f3f3f7fbf3fffff
	.dword	0                               # 0x0
.LCPI2_110:
	.dword	8795824588804                   # 0x7fff0000804
	.dword	1152921498432828048             # 0xffffffe8ffff290
.LCPI2_111:
	.dword	30064738785                     # 0x6ffff81e1
	.dword	140733193420862                 # 0x7fff0000803e
.LCPI2_112:
	.dword	-6                              # 0xfffffffffffffffa
	.dword	-98784302852                    # 0xffffffe8ffff28fc
.LCPI2_113:
	.dword	4294967295                      # 0xffffffff
	.dword	4278976374                      # 0xff0bff76
.LCPI2_114:
	.dword	4096                            # 0x1000
	.dword	4088                            # 0xff8
.LCPI2_115:
	.dword	9205357640488583168             # 0x7fc000007fc00000
	.dword	-36028792732385280              # 0xff800000ff800000
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
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	vst	$vr1, $sp, 96
	vsrlrni.b.h	$vr0, $vr0, 13
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	lu12i.w	$a0, 262143
	ori	$a0, $a0, 4095
	vreplgr2vr.w	$vr1, $a0
	vsrlrni.b.h	$vr0, $vr1, 7
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vsrlrni.b.h	$vr1, $vr0, 8
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_5)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.b.h	$vr0, $vr1, 10
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.b.h	$vr0, $vr0, 2
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.b.h	$vr0, $vr1, 11
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.b.h	$vr1, $vr0, 1
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.b.h	$vr0, $vr0, 13
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr0, $sp, 96
	vrepli.b	$vr1, -1
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.b.h	$vr0, $vr1, 12
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
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
	vsrlrni.b.h	$vr2, $vr1, 5
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vsrlrni.b.h	$vr0, $vr1, 2
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
	vsrlrni.b.h	$vr0, $vr0, 8
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
	vsrlrni.b.h	$vr0, $vr0, 0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.b.h	$vr0, $vr1, 1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_17)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.b.h	$vr1, $vr0, 12
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_20)
	vst	$vr0, $sp, 96
	vsrlrni.b.h	$vr2, $vr1, 8
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
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
	vsrlrni.b.h	$vr2, $vr1, 3
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	vst	$vr0, $sp, 96
	lu12i.w	$a0, 491655
	ori	$a0, $a0, 3848
	vreplgr2vr.d	$vr0, $a0
	vrepli.d	$vr1, 1
	vsrlrni.b.h	$vr1, $vr0, 6
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_25)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vsrlrni.b.h	$vr1, $vr0, 13
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vsrlrni.b.h	$vr1, $vr0, 11
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_30)
	vst	$vr0, $sp, 96
	vsrlrni.h.w	$vr2, $vr1, 3
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	vst	$vr0, $sp, 96
	lu12i.w	$a0, 86353
	ori	$a0, $a0, 1280
	lu32i.d	$a0, 21
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.h.w	$vr1, $vr0, 4
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_32)
	vst	$vr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	lu12i.w	$a0, 57866
	ori	$a0, $a0, 3307
	lu32i.d	$a0, -303120
	lu52i.d	$a0, $a0, -469
	vreplgr2vr.d	$vr1, $a0
	vsrlrni.h.w	$vr0, $vr1, 24
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.h.w	$vr0, $vr0, 18
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	vst	$vr0, $sp, 96
	vrepli.b	$vr0, 16
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.h.w	$vr1, $vr0, 13
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.h.w	$vr0, $vr0, 9
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_36)
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_37)
	vst	$vr0, $sp, 96
	vsrlrni.h.w	$vr1, $vr2, 7
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_39)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.h.w	$vr1, $vr0, 10
	vst	$vr1, $sp, 112
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_42)
	vst	$vr0, $sp, 96
	vsrlrni.h.w	$vr2, $vr1, 4
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_44)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.h.w	$vr1, $vr0, 18
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.h.w	$vr0, $vr0, 25
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_46)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.h.w	$vr0, $vr1, 14
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.h	$vr0, 50
	vst	$vr0, $sp, 96
	lu12i.w	$a0, 407094
	ori	$a0, $a0, 866
	lu32i.d	$a0, 222051
	lu52i.d	$a0, $a0, 1590
	vreplgr2vr.d	$vr0, $a0
	vsrlrni.h.w	$vr0, $vr0, 25
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_49)
	vst	$vr0, $sp, 96
	vsrlrni.h.w	$vr2, $vr1, 24
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 6
	pcalau12i	$a1, %pc_hi20(.LCPI2_50)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_50)
	ori	$a0, $a0, 96
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 96
	vsrlrni.h.w	$vr0, $vr0, 11
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_53)
	vst	$vr0, $sp, 96
	vsrlrni.h.w	$vr2, $vr1, 28
	vst	$vr2, $sp, 112
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_56)
	vst	$vr0, $sp, 96
	vsrlrni.h.w	$vr2, $vr1, 28
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.h.w	$vr0, $vr0, 23
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_58)
	vst	$vr0, $sp, 96
	vrepli.w	$vr0, 2
	vsrlrni.h.w	$vr1, $vr0, 5
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr0, $vr0, 9
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_60)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.w.d	$vr0, $vr1, 5
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr0, $vr0, 26
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_61)
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_63)
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr2, $vr1, 9
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_64)
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_65)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.w.d	$vr0, $vr1, 8
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_66)
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_67)
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_68)
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr2, $vr1, 12
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_69)
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_70)
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_71)
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr2, $vr1, 40
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 293
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_72)
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_73)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.w.d	$vr1, $vr0, 40
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 299
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_74)
	pcalau12i	$a0, %pc_hi20(.LCPI2_75)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_75)
	pcalau12i	$a0, %pc_hi20(.LCPI2_76)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_76)
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr2, $vr1, 2
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 305
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_77)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_77)
	pcalau12i	$a0, %pc_hi20(.LCPI2_78)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_78)
	pcalau12i	$a0, %pc_hi20(.LCPI2_79)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_79)
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr2, $vr1, 51
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 311
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_80)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_80)
	pcalau12i	$a0, %pc_hi20(.LCPI2_81)
	pcalau12i	$a1, %pc_hi20(.LCPI2_82)
	vld	$vr2, $a1, %pc_lo12(.LCPI2_82)
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	vld	$vr1, $a0, %pc_lo12(.LCPI2_81)
	vst	$vr0, $sp, 96
	vori.b	$vr0, $vr2, 0
	vsrlrni.w.d	$vr0, $vr1, 20
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 317
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_83)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_83)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vsrlrni.w.d	$vr1, $vr0, 50
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 323
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_84)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_84)
	pcalau12i	$a0, %pc_hi20(.LCPI2_85)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_85)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.w.d	$vr0, $vr1, 61
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 329
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr0, $vr0, 3
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 335
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr0, $vr0, 23
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 341
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vsrlrni.w.d	$vr0, $vr0, 51
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 347
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_86)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_86)
	vst	$vr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI2_87)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_87)
	lu12i.w	$a0, 5
	ori	$a0, $a0, 336
	vreplgr2vr.d	$vr1, $a0
	vsrlrni.w.d	$vr0, $vr1, 36
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 353
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_88)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_88)
	pcalau12i	$a0, %pc_hi20(.LCPI2_89)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_89)
	pcalau12i	$a0, %pc_hi20(.LCPI2_90)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_90)
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr2, $vr1, 9
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 359
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_91)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_91)
	pcalau12i	$a0, %pc_hi20(.LCPI2_92)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_92)
	pcalau12i	$a0, %pc_hi20(.LCPI2_93)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_93)
	vst	$vr0, $sp, 96
	vsrlrni.w.d	$vr2, $vr1, 0
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 365
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_94)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_94)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vsrlrni.d.q	$vr0, $vr1, 52
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 371
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_95)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_95)
	pcalau12i	$a0, %pc_hi20(.LCPI2_96)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_96)
	vst	$vr0, $sp, 96
	vldi	$vr0, -3808
	vsrlrni.d.q	$vr1, $vr0, 37
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 377
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_97)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_97)
	pcalau12i	$a0, %pc_hi20(.LCPI2_98)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_98)
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vsrlrni.d.q	$vr1, $vr0, 47
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 383
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_99)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_99)
	pcalau12i	$a0, %pc_hi20(.LCPI2_100)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_100)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsrlrni.d.q	$vr0, $vr1, 37
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 389
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -262018
	ori	$a0, $a0, 2024
	pcalau12i	$a1, %pc_hi20(.LCPI2_101)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_101)
	lu32i.d	$a0, 259
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 96
	vsrlrni.d.q	$vr0, $vr0, 67
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 395
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_102)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_102)
	pcalau12i	$a0, %pc_hi20(.LCPI2_103)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_103)
	pcalau12i	$a0, %pc_hi20(.LCPI2_104)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_104)
	vst	$vr0, $sp, 96
	vsrlrni.d.q	$vr2, $vr1, 121
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 401
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_105)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_105)
	pcalau12i	$a0, %pc_hi20(.LCPI2_106)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_106)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vsrlrni.d.q	$vr1, $vr0, 21
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 407
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.d.q	$vr0, $vr0, 105
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 413
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.d.q	$vr0, $vr0, 107
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 419
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_107)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_107)
	pcalau12i	$a0, %pc_hi20(.LCPI2_108)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_108)
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vsrlrni.d.q	$vr1, $vr0, 74
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 425
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vsrlrni.d.q	$vr0, $vr0, 106
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 431
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_109)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_109)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vsrlrni.d.q	$vr1, $vr0, 71
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 437
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_110)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_110)
	pcalau12i	$a0, %pc_hi20(.LCPI2_111)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_111)
	pcalau12i	$a0, %pc_hi20(.LCPI2_112)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_112)
	vst	$vr0, $sp, 96
	vsrlrni.d.q	$vr2, $vr1, 68
	vst	$vr2, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 443
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vsrlrni.d.q	$vr0, $vr1, 8
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 449
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_113)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_113)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vsrlrni.d.q	$vr0, $vr1, 117
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 455
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_114)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_114)
	pcalau12i	$a0, %pc_hi20(.LCPI2_115)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_115)
	vst	$vr0, $sp, 96
	vldi	$vr0, -1553
	vsrlrni.d.q	$vr1, $vr0, 116
	vst	$vr1, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 461
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vsrlrni.c"
	.size	.L.str.5, 131

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
