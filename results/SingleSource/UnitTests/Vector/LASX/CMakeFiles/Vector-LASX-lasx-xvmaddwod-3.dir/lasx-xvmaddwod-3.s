	.file	"lasx-xvmaddwod-3.c"
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
	.dword	8589934592                      # 0x200000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_1:
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
	.byte	3                               # 0x3
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_2:
	.dword	3138502942824100                # 0xb2673a90896a4
	.dword	88305807663970                  # 0x50504c4c2362
	.dword	3138502942824100                # 0xb2673a90896a4
	.dword	88305807663970                  # 0x50504c4c2362
.LCPI2_3:
	.byte	244                             # 0xf4
	.byte	80                              # 0x50
	.byte	200                             # 0xc8
	.byte	184                             # 0xb8
	.byte	129                             # 0x81
	.byte	143                             # 0x8f
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
	.byte	244                             # 0xf4
	.byte	80                              # 0x50
	.byte	200                             # 0xc8
	.byte	184                             # 0xb8
	.byte	129                             # 0x81
	.byte	143                             # 0x8f
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
.LCPI2_4:
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
.LCPI2_5:
	.dword	-4179340454199820288            # 0xc600000000000000
	.dword	-4595114174878621696            # 0xc03ae000ffff6000
	.dword	-4179340454199820288            # 0xc600000000000000
	.dword	-4595114174878621696            # 0xc03ae000ffff6000
.LCPI2_6:
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
.LCPI2_7:
	.dword	9223226914204876740             # 0x7fff7c030000ffc4
	.dword	0                               # 0x0
	.dword	9223226914204876740             # 0x7fff7c030000ffc4
	.dword	0                               # 0x0
.LCPI2_8:
	.byte	64                              # 0x40
	.byte	252                             # 0xfc
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	48                              # 0x30
	.byte	252                             # 0xfc
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
	.byte	64                              # 0x40
	.byte	252                             # 0xfc
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	48                              # 0x30
	.byte	252                             # 0xfc
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
.LCPI2_9:
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
.LCPI2_10:
	.half	960                             # 0x3c0
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	960                             # 0x3c0
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_11:
	.byte	122                             # 0x7a
	.byte	96                              # 0x60
	.byte	32                              # 0x20
	.byte	31                              # 0x1f
	.byte	128                             # 0x80
	.byte	224                             # 0xe0
	.byte	125                             # 0x7d
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	122                             # 0x7a
	.byte	96                              # 0x60
	.byte	32                              # 0x20
	.byte	31                              # 0x1f
	.byte	128                             # 0x80
	.byte	224                             # 0xe0
	.byte	125                             # 0x7d
	.byte	224                             # 0xe0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_12:
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	247                             # 0xf7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	247                             # 0xf7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	247                             # 0xf7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	247                             # 0xf7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_13:
	.byte	97                              # 0x61
	.byte	168                             # 0xa8
	.byte	7                               # 0x7
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
	.byte	97                              # 0x61
	.byte	168                             # 0xa8
	.byte	7                               # 0x7
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
.LCPI2_14:
	.dword	-281462091874305                # 0xffff0002fffeffff
	.dword	0                               # 0x0
	.dword	-281462091874305                # 0xffff0002fffeffff
	.dword	0                               # 0x0
.LCPI2_15:
	.word	4294967294                      # 0xfffffffe
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_16:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1285                            # 0x505
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.half	4096                            # 0x1000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	4096                            # 0x1000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
.LCPI2_18:
	.dword	1575                            # 0x627
	.dword	0                               # 0x0
	.dword	1575                            # 0x627
	.dword	0                               # 0x0
.LCPI2_19:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	1344                            # 0x540
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	1344                            # 0x540
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
.LCPI2_20:
	.half	0                               # 0x0
	.half	192                             # 0xc0
	.half	0                               # 0x0
	.half	8032                            # 0x1f60
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	192                             # 0xc0
	.half	0                               # 0x0
	.half	8032                            # 0x1f60
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_21:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
.LCPI2_22:
	.dword	125898548146339840              # 0x1bf481000000000
	.dword	2430615657453191168             # 0x21bb481000000000
	.dword	125898548146339840              # 0x1bf481000000000
	.dword	2430615657453191168             # 0x21bb481000000000
.LCPI2_23:
	.half	8224                            # 0x2020
	.half	31                              # 0x1f
	.half	8223                            # 0x201f
	.half	895                             # 0x37f
	.half	8224                            # 0x2020
	.half	8223                            # 0x201f
	.half	8223                            # 0x201f
	.half	17279                           # 0x437f
	.half	8224                            # 0x2020
	.half	31                              # 0x1f
	.half	8223                            # 0x201f
	.half	895                             # 0x37f
	.half	8224                            # 0x2020
	.half	8223                            # 0x201f
	.half	8223                            # 0x201f
	.half	17279                           # 0x437f
.LCPI2_24:
	.half	48719                           # 0xbe4f
	.half	65535                           # 0xffff
	.half	8356                            # 0x20a4
	.half	0                               # 0x0
	.half	26718                           # 0x685e
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	48719                           # 0xbe4f
	.half	65535                           # 0xffff
	.half	8356                            # 0x20a4
	.half	0                               # 0x0
	.half	26718                           # 0x685e
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
.LCPI2_25:
	.dword	-140728898486271                # 0xffff8001ffff0001
	.dword	4294901792                      # 0xffff0020
	.dword	-140728898486271                # 0xffff8001ffff0001
	.dword	4294901792                      # 0xffff0020
.LCPI2_26:
	.half	7679                            # 0x1dff
	.half	65535                           # 0xffff
	.half	7679                            # 0x1dff
	.half	65535                           # 0xffff
	.half	7679                            # 0x1dff
	.half	65535                           # 0xffff
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	7679                            # 0x1dff
	.half	65535                           # 0xffff
	.half	7679                            # 0x1dff
	.half	65535                           # 0xffff
	.half	7679                            # 0x1dff
	.half	65535                           # 0xffff
	.half	255                             # 0xff
	.half	0                               # 0x0
.LCPI2_27:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	65504                           # 0xffe0
	.half	65535                           # 0xffff
	.half	31                              # 0x1f
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	65504                           # 0xffe0
	.half	65535                           # 0xffff
	.half	31                              # 0x1f
.LCPI2_28:
	.dword	-448                            # 0xfffffffffffffe40
	.dword	-1                              # 0xffffffffffffffff
	.dword	-29568                          # 0xffffffffffff8c80
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_29:
	.word	0                               # 0x0
	.word	2046425593                      # 0x79f9f9f9
	.word	2046425593                      # 0x79f9f9f9
	.word	16382208                        # 0xf9f900
	.word	0                               # 0x0
	.word	2046425593                      # 0x79f9f9f9
	.word	2046425593                      # 0x79f9f9f9
	.word	16382208                        # 0xf9f900
.LCPI2_30:
	.dword	137                             # 0x89
	.dword	44384912                        # 0x2a54290
	.dword	22338692                        # 0x154dc84
	.dword	44384912                        # 0x2a54290
.LCPI2_31:
	.word	255                             # 0xff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	255                             # 0xff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_32:
	.dword	-36                             # 0xffffffffffffffdc
	.dword	1                               # 0x1
	.dword	-4294967331                     # 0xfffffffeffffffdd
	.dword	1                               # 0x1
.LCPI2_33:
	.word	4294967260                      # 0xffffffdc
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967260                      # 0xffffffdc
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI2_34:
	.word	65535                           # 0xffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_35:
	.dword	0                               # 0x0
	.dword	281462091612156                 # 0xfffcfffcfffc
	.dword	0                               # 0x0
	.dword	281462091612156                 # 0xfffcfffcfffc
.LCPI2_36:
	.word	4210291698                      # 0xfaf3f3f2
	.word	0                               # 0x0
	.word	4193909241                      # 0xf9f9f9f9
	.word	0                               # 0x0
	.word	4210291698                      # 0xfaf3f3f2
	.word	0                               # 0x0
	.word	4193909241                      # 0xf9f9f9f9
	.word	0                               # 0x0
.LCPI2_37:
	.dword	-72057594037927936              # 0xff00000000000000
	.dword	-288511846833520640             # 0xfbff0000ffff0000
	.dword	-72057594037927936              # 0xff00000000000000
	.dword	-288511846833520640             # 0xfbff0000ffff0000
.LCPI2_38:
	.word	16843009                        # 0x1010101
	.word	16843009                        # 0x1010101
	.word	16843024                        # 0x1010110
	.word	16843009                        # 0x1010101
	.word	16843009                        # 0x1010101
	.word	16843009                        # 0x1010101
	.word	16843024                        # 0x1010110
	.word	16843009                        # 0x1010101
.LCPI2_39:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	12                              # 0xc
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	12                              # 0xc
	.word	0                               # 0x0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 224
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 128
	xvmaddwod.h.bu.b	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 28
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.h	$xr0, -255
	xvst	$xr0, $sp, 128
	xvrepli.h	$xr0, -64
	xvrepli.b	$xr2, -1
	xvst	$xr2, $sp, 64                   # 32-byte Folded Spill
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.h.bu.b	$xr1, $xr2, $xr0
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 39
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 128
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.h.bu.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 50
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 128
	xvmaddwod.h.bu.b	$xr1, $xr2, $xr1
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 61
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 128
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.h.bu.b	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 72
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr3, $sp, 32                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 128
	xvmaddwod.h.bu.b	$xr2, $xr3, $xr1
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 83
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_12)
	xvld	$xr2, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 128
	xvmaddwod.h.bu.b	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 94
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.h.bu.b	$xr1, $xr0, $xr2
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 105
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 2047
	xvreplgr2vr.d	$xr0, $a0
	xvmaddwod.h.bu.b	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu52i.d	$a0, $zero, -1025
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.w.hu.h	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 127
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvmaddwod.w.hu.h	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 138
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvld	$xr2, $sp, 64                   # 32-byte Folded Reload
	xvmaddwod.w.hu.h	$xr1, $xr0, $xr2
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 149
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 128
	lu52i.d	$a0, $zero, -256
	xvreplgr2vr.d	$xr1, $a0
	xvmaddwod.w.hu.h	$xr2, $xr0, $xr1
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 160
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_20)
	xvst	$xr0, $sp, 128
	xvmaddwod.w.hu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 171
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvmaddwod.w.hu.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 182
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.w.hu.h	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 193
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr0, $sp, 128
	lu52i.d	$a0, $zero, 2047
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.w.hu.h	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 204
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvmaddwod.w.hu.h	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.w.hu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 226
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 128
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.d.wu.w	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 237
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvmaddwod.d.wu.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 248
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 128
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.d.wu.w	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 259
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvmaddwod.d.wu.w	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 270
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr0, $sp, 128
	xvmaddwod.d.wu.w	$xr1, $xr2, $xr1
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 281
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 1
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.d.wu.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 292
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_36)
	xvst	$xr0, $sp, 128
	xvld	$xr2, $sp, 32                   # 32-byte Folded Reload
	xvmaddwod.d.wu.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 303
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvmaddwod.d.wu.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_39)
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 128
	xvmaddwod.d.wu.w	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 325
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -224
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvmaddwod-3.c"
	.size	.L.str.5, 137

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
