	.file	"lasx-xvssrlrn.c"
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
	.half	43692                           # 0xaaac
	.half	43690                           # 0xaaaa
	.half	21845                           # 0x5555
	.half	21845                           # 0x5555
	.half	43692                           # 0xaaac
	.half	13994                           # 0x36aa
	.half	21845                           # 0x5555
	.half	21845                           # 0x5555
	.half	43692                           # 0xaaac
	.half	43690                           # 0xaaaa
	.half	21845                           # 0x5555
	.half	21845                           # 0x5555
	.half	43692                           # 0xaaac
	.half	13994                           # 0x36aa
	.half	21845                           # 0x5555
	.half	21845                           # 0x5555
.LCPI2_1:
	.half	65058                           # 0xfe22
	.half	613                             # 0x265
	.half	1126                            # 0x466
	.half	1026                            # 0x402
	.half	248                             # 0xf8
	.half	637                             # 0x27d
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65058                           # 0xfe22
	.half	613                             # 0x265
	.half	1126                            # 0x466
	.half	1026                            # 0x402
	.half	248                             # 0xf8
	.half	637                             # 0x27d
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_2:
	.dword	139646566694658                 # 0x7f0200007f02
	.dword	0                               # 0x0
	.dword	139646566694658                 # 0x7f0200007f02
	.dword	0                               # 0x0
.LCPI2_3:
	.half	255                             # 0xff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_4:
	.dword	9187201950435737471             # 0x7f7f7f7f7f7f7f7f
	.dword	0                               # 0x0
	.dword	9187201950435737471             # 0x7f7f7f7f7f7f7f7f
	.dword	0                               # 0x0
.LCPI2_5:
	.half	24158                           # 0x5e5e
	.half	24158                           # 0x5e5e
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	24158                           # 0x5e5e
	.half	24158                           # 0x5e5e
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
.LCPI2_6:
	.dword	17660905525264                  # 0x101000001010
	.dword	0                               # 0x0
	.dword	17660905525264                  # 0x101000001010
	.dword	0                               # 0x0
.LCPI2_7:
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_8:
	.dword	6434029439                      # 0x17f7f7f7f
	.dword	0                               # 0x0
	.dword	6434029439                      # 0x17f7f7f7f
	.dword	0                               # 0x0
.LCPI2_9:
	.half	32768                           # 0x8000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_10:
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
	.dword	0                               # 0x0
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
	.dword	0                               # 0x0
.LCPI2_11:
	.word	4160806912                      # 0xf800e000
	.word	4160813056                      # 0xf800f800
	.word	4160806912                      # 0xf800e000
	.word	4160813056                      # 0xf800f800
	.word	4160790528                      # 0xf800a000
	.word	4160813056                      # 0xf800f800
	.word	4160798720                      # 0xf800c000
	.word	4160813056                      # 0xf800f800
.LCPI2_12:
	.dword	562958543486978                 # 0x2000200020002
	.dword	0                               # 0x0
	.dword	562958543486978                 # 0x2000200020002
	.dword	0                               # 0x0
.LCPI2_13:
	.dword	25                              # 0x19
	.dword	0                               # 0x0
	.dword	25                              # 0x19
	.dword	0                               # 0x0
.LCPI2_14:
	.word	16580608                        # 0xfd0000
	.word	27                              # 0x1b
	.word	27                              # 0x1b
	.word	27                              # 0x1b
	.word	16580608                        # 0xfd0000
	.word	27                              # 0x1b
	.word	27                              # 0x1b
	.word	27                              # 0x1b
.LCPI2_15:
	.dword	2147450879                      # 0x7fff7fff
	.dword	0                               # 0x0
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
	.dword	0                               # 0x0
.LCPI2_16:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	8388608                         # 0x800000
	.word	65537                           # 0x10001
	.word	65537                           # 0x10001
	.word	65537                           # 0x10001
.LCPI2_17:
	.word	2164260863                      # 0x80ffffff
	.word	2130640638                      # 0x7efefefe
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2164260863                      # 0x80ffffff
	.word	2130640638                      # 0x7efefefe
	.word	4294934528                      # 0xffff8000
	.word	4294967295                      # 0xffffffff
.LCPI2_18:
	.dword	563637148319776                 # 0x200a000020020
	.dword	0                               # 0x0
	.dword	563637148319776                 # 0x200a000020020
	.dword	0                               # 0x0
.LCPI2_19:
	.word	536936449                       # 0x20010001
	.word	4294875072                      # 0xfffe97c0
	.word	2684353920                      # 0x9ffffd80
	.word	4294882947                      # 0xfffeb683
	.word	536936449                       # 0x20010001
	.word	4294875072                      # 0xfffe97c0
	.word	2684353920                      # 0x9ffffd80
	.word	4294882947                      # 0xfffeb683
.LCPI2_20:
	.dword	562958543355904                 # 0x2000200000000
	.dword	0                               # 0x0
	.dword	562958543355904                 # 0x2000200000000
	.dword	0                               # 0x0
.LCPI2_21:
	.word	256                             # 0x100
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	256                             # 0x100
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_22:
	.dword	72057594037927935               # 0xffffffffffffff
	.dword	1095216660480                   # 0xff00000000
	.dword	72057594037927935               # 0xffffffffffffff
	.dword	1095216660480                   # 0xff00000000
.LCPI2_23:
	.dword	71776123356184575               # 0xff0000ffffffff
	.dword	0                               # 0x0
	.dword	71776123356184575               # 0xff0000ffffffff
	.dword	0                               # 0x0
.LCPI2_24:
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
.LCPI2_25:
	.dword	-9223231297218904064            # 0x8000800080008000
	.dword	0                               # 0x0
	.dword	-9223231297218904064            # 0x8000800080008000
	.dword	0                               # 0x0
.LCPI2_26:
	.dword	552977088640                    # 0x80c000c080
	.dword	4611897674415734912             # 0x4000c08000000080
	.dword	552977088640                    # 0x80c000c080
	.dword	4611897674415734912             # 0x4000c08000000080
.LCPI2_27:
	.dword	8589934594                      # 0x200000002
	.dword	0                               # 0x0
	.dword	8589934594                      # 0x200000002
	.dword	0                               # 0x0
.LCPI2_28:
	.dword	-63895794685772004              # 0xff1cff1cff1cff1c
	.dword	-63895794685820985              # 0xff1cff1cff1c3fc7
	.dword	-63895794685772004              # 0xff1cff1cff1cff1c
	.dword	-63895794685820985              # 0xff1cff1cff1c3fc7
.LCPI2_29:
	.dword	-16775937                       # 0xffffffffff0004ff
	.dword	0                               # 0x0
	.dword	-16775937                       # 0xffffffffff0004ff
	.dword	0                               # 0x0
.LCPI2_30:
	.half	705                             # 0x2c1
	.half	60766                           # 0xed5e
	.half	45475                           # 0xb1a3
	.half	19957                           # 0x4df5
	.half	63457                           # 0xf7e1
	.half	25733                           # 0x6485
	.half	23012                           # 0x59e4
	.half	4230                            # 0x1086
	.half	705                             # 0x2c1
	.half	60766                           # 0xed5e
	.half	45475                           # 0xb1a3
	.half	19957                           # 0x4df5
	.half	63457                           # 0xf7e1
	.half	25733                           # 0x6485
	.half	23012                           # 0x59e4
	.half	4230                            # 0x1086
.LCPI2_31:
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
	.half	0                               # 0x0
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
	.half	0                               # 0x0
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
	.half	65529                           # 0xfff9
.LCPI2_32:
	.dword	289360708464803856              # 0x404040800000010
	.dword	0                               # 0x0
	.dword	289637746740297744              # 0x404ffff00000010
	.dword	0                               # 0x0
.LCPI2_33:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65533                           # 0xfffd
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
.LCPI2_34:
	.half	16                              # 0x10
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65519                           # 0xffef
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	16                              # 0x10
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65519                           # 0xffef
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_35:
	.dword	65281                           # 0xff01
	.dword	0                               # 0x0
	.dword	65281                           # 0xff01
	.dword	0                               # 0x0
.LCPI2_36:
	.half	32772                           # 0x8004
	.half	65440                           # 0xffa0
	.half	32768                           # 0x8000
	.half	16383                           # 0x3fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	16383                           # 0x3fff
	.half	32772                           # 0x8004
	.half	65440                           # 0xffa0
	.half	32768                           # 0x8000
	.half	16383                           # 0x3fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	16383                           # 0x3fff
.LCPI2_37:
	.half	17                              # 0x11
	.half	65409                           # 0xff81
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	17                              # 0x11
	.half	65409                           # 0xff81
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_38:
	.dword	281470715297792                 # 0xffff02000000
	.dword	0                               # 0x0
	.dword	281470715297792                 # 0xffff02000000
	.dword	0                               # 0x0
.LCPI2_39:
	.half	65408                           # 0xff80
	.half	65535                           # 0xffff
	.half	65440                           # 0xffa0
	.half	65471                           # 0xffbf
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	65280                           # 0xff00
	.half	65408                           # 0xff80
	.half	65535                           # 0xffff
	.half	65440                           # 0xffa0
	.half	65471                           # 0xffbf
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	65280                           # 0xff00
.LCPI2_40:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	64512                           # 0xfc00
	.half	64568                           # 0xfc38
	.half	64568                           # 0xfc38
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	64512                           # 0xfc00
	.half	64568                           # 0xfc38
	.half	64568                           # 0xfc38
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_41:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_42:
	.half	1028                            # 0x404
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1028                            # 0x404
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_43:
	.dword	137438953472                    # 0x2000000000
	.dword	0                               # 0x0
	.dword	137438953472                    # 0x2000000000
	.dword	0                               # 0x0
.LCPI2_44:
	.half	65472                           # 0xffc0
	.half	65400                           # 0xff78
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65472                           # 0xffc0
	.half	65416                           # 0xff88
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65472                           # 0xffc0
	.half	65400                           # 0xff78
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65472                           # 0xffc0
	.half	65416                           # 0xff88
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_45:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32                              # 0x20
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32                              # 0x20
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_46:
	.word	4294967038                      # 0xfffffefe
	.word	4294967038                      # 0xfffffefe
	.word	4294967038                      # 0xfffffefe
	.word	4294967038                      # 0xfffffefe
	.word	4294966522                      # 0xfffffcfa
	.word	4294967038                      # 0xfffffefe
	.word	4294967038                      # 0xfffffefe
	.word	4294967038                      # 0xfffffefe
.LCPI2_47:
	.word	4294355416                      # 0xfff6a9d8
	.word	0                               # 0x0
	.word	4286578560                      # 0xff7fff80
	.word	8323320                         # 0x7f00f8
	.word	4294355416                      # 0xfff6a9d8
	.word	0                               # 0x0
	.word	4286578560                      # 0xff7fff80
	.word	8323320                         # 0x7f00f8
.LCPI2_48:
	.dword	65535                           # 0xffff
	.dword	0                               # 0x0
	.dword	65535                           # 0xffff
	.dword	0                               # 0x0
.LCPI2_49:
	.word	44384912                        # 0x2a54290
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	44384912                        # 0x2a54290
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_50:
	.word	16253267                        # 0xf80153
	.word	17498248                        # 0x10b0088
	.word	15925709                        # 0xf301cd
	.word	9896217                         # 0x970119
	.word	17760580                        # 0x10f0144
	.word	3277012                         # 0x3200d4
	.word	15990943                        # 0xf4009f
	.word	9896217                         # 0x970119
.LCPI2_51:
	.dword	281470681874433                 # 0xffff00020001
	.dword	0                               # 0x0
	.dword	281470681874433                 # 0xffff00020001
	.dword	0                               # 0x0
.LCPI2_52:
	.word	1165865023                      # 0x457db03f
	.word	4294967295                      # 0xffffffff
	.word	1165865022                      # 0x457db03e
	.word	0                               # 0x0
	.word	1165865023                      # 0x457db03f
	.word	4294967295                      # 0xffffffff
	.word	1165865022                      # 0x457db03e
	.word	0                               # 0x0
.LCPI2_53:
	.dword	8061054                         # 0x7b007e
	.dword	0                               # 0x0
	.dword	8061054                         # 0x7b007e
	.dword	0                               # 0x0
.LCPI2_54:
	.word	67174425                        # 0x4010019
	.word	167904281                       # 0xa020419
	.word	65561                           # 0x10019
	.word	65561                           # 0x10019
	.word	67174425                        # 0x4010019
	.word	167904281                       # 0xa020419
	.word	65561                           # 0x10019
	.word	65561                           # 0x10019
.LCPI2_55:
	.word	4227858432                      # 0xfc000000
	.word	4127194112                      # 0xf5fffc00
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4227858432                      # 0xfc000000
	.word	4127194112                      # 0xf5fffc00
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_56:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	4294967297                      # 0x100000001
	.dword	0                               # 0x0
.LCPI2_57:
	.dword	-4991471925827290438            # 0xbabababababababa
	.dword	0                               # 0x0
	.dword	-4991471925827290438            # 0xbabababababababa
	.dword	0                               # 0x0
.LCPI2_58:
	.dword	1541757906                      # 0x5be55bd2
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_59:
	.dword	9934714114578                   # 0x9091b1b1212
	.dword	7726646167303                   # 0x70700000707
	.dword	9934714114578                   # 0x9091b1b1212
	.dword	7726646167303                   # 0x70700000707
.LCPI2_60:
	.dword	497979983134719                 # 0x1c4e8ffffffff
	.dword	0                               # 0x0
	.dword	497979983134719                 # 0x1c4e8ffffffff
	.dword	0                               # 0x0
.LCPI2_61:
	.dword	-3969164036570251632            # 0xc8eab25698f97e90
	.dword	-3312422814665206033            # 0xd207e90001fb16ef
	.dword	-3969164036570251632            # 0xc8eab25698f97e90
	.dword	-3312422814665206033            # 0xd207e90001fb16ef
.LCPI2_62:
	.dword	2139062144                      # 0x7f7f7f80
	.dword	0                               # 0x0
	.dword	2139062144                      # 0x7f7f7f80
	.dword	0                               # 0x0
.LCPI2_63:
	.dword	2                               # 0x2
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	0                               # 0x0
.LCPI2_64:
	.dword	545469169791                    # 0x7f007f007f
	.dword	0                               # 0x0
	.dword	545469169791                    # 0x7f007f007f
	.dword	0                               # 0x0
.LCPI2_65:
	.dword	-4294967168                     # 0xffffffff00000080
	.dword	0                               # 0x0
	.dword	-4294967168                     # 0xffffffff00000080
	.dword	0                               # 0x0
.LCPI2_66:
	.dword	34359738318                     # 0x7ffffffce
	.dword	25769803775                     # 0x5ffffffff
	.dword	34359738318                     # 0x7ffffffce
	.dword	25769803775                     # 0x5ffffffff
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 288
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvrepli.b	$xr1, 0
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr1, $sp, 192
	xvssrlrn.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlrn.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlrn.b.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	xvreplgr2vr.d	$xr1, $a0
	xvssrlrn.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 192
	lu52i.d	$a0, $zero, 2047
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvssrlrn.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	xvreplgr2vr.d	$xr1, $a0
	xvssrlrn.b.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlrn.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	xvrepli.b	$xr0, 21
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlrn.h.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlrn.h.w	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlrn.h.w	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 192
	lu12i.w	$a0, -64
	xvreplgr2vr.w	$xr0, $a0
	xvrepli.b	$xr1, -1
	xvst	$xr1, $sp, 128                  # 32-byte Folded Spill
	xvssrlrn.h.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_14)
	xvst	$xr0, $sp, 192
	xvrepli.w	$xr0, 25
	xvssrlrn.h.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvssrlrn.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 192
	xvssrlrn.h.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 192
	xvrepli.d	$xr0, -8
	xvssrlrn.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvssrlrn.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlrn.w.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvssrlrn.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_26)
	xvst	$xr0, $sp, 192
	xvssrlrn.w.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_28)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvssrlrn.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 192
	xvssrlrn.bu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr0, $sp, 192
	xvssrlrn.bu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_37)
	xvst	$xr0, $sp, 192
	xvssrlrn.bu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_40)
	xvst	$xr0, $sp, 192
	xvssrlrn.bu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_41)
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr1, $sp, 192
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvssrlrn.bu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_45)
	xvst	$xr0, $sp, 192
	xvssrlrn.bu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlrn.bu.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlrn.hu.w	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlrn.hu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_47)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlrn.hu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_49)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlrn.hu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_50)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvssrlrn.hu.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_52)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrlrn.hu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_55)
	xvst	$xr0, $sp, 192
	xvssrlrn.hu.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 395
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_56)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlrn.wu.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 404
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvssrlrn.wu.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_57)
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_58)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvssrlrn.wu.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 422
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_59)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlrn.wu.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 431
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_60)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_61)
	lu12i.w	$a0, 14
	ori	$a0, $a0, 627
	xvreplgr2vr.h	$xr1, $a0
	xvssrlrn.wu.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 440
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlrn.wu.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 449
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_62)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlrn.wu.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 458
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_63)
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_64)
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_65)
	xvst	$xr0, $sp, 192
	xvssrlrn.wu.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 467
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrlrn.wu.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 476
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_66)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlrn.wu.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 485
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	ori	$a0, $zero, 512
	xvreplgr2vr.w	$xr0, $a0
	lu12i.w	$a0, -16384
	lu32i.d	$a0, -1024
	lu52i.d	$a0, $a0, -161
	xvreplgr2vr.d	$xr1, $a0
	xvssrlrn.wu.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 494
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -288
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvssrlrn.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
