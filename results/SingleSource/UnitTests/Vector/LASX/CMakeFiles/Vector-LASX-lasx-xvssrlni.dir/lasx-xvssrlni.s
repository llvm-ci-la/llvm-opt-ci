	.file	"lasx-xvssrlni.c"
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
	.byte	64                              # 0x40
	.byte	66                              # 0x42
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	64                              # 0x40
	.byte	66                              # 0x42
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_1:
	.dword	0                               # 0x0
	.dword	140183437606783                 # 0x7f7f00007f7f
	.dword	0                               # 0x0
	.dword	140183437606783                 # 0x7f7f00007f7f
.LCPI2_2:
	.dword	2139062143                      # 0x7f7f7f7f
	.dword	0                               # 0x0
	.dword	2139062143                      # 0x7f7f7f7f
	.dword	0                               # 0x0
.LCPI2_3:
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	85                              # 0x55
	.byte	255                             # 0xff
	.byte	86                              # 0x56
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	85                              # 0x55
	.byte	255                             # 0xff
	.byte	86                              # 0x56
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_4:
	.dword	35887507618889599               # 0x7f7f7f7f7f7f7f
	.dword	9187061764859101184             # 0x7f7f000000000000
	.dword	35887507618889599               # 0x7f7f7f7f7f7f7f
	.dword	9187061764859101184             # 0x7f7f000000000000
.LCPI2_5:
	.byte	121                             # 0x79
	.byte	88                              # 0x58
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	180                             # 0xb4
	.byte	71                              # 0x47
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	113                             # 0x71
	.byte	50                              # 0x32
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	79                              # 0x4f
	.byte	80                              # 0x50
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	121                             # 0x79
	.byte	88                              # 0x58
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	180                             # 0xb4
	.byte	71                              # 0x47
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	113                             # 0x71
	.byte	50                              # 0x32
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	79                              # 0x4f
	.byte	80                              # 0x50
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_6:
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
	.byte	164                             # 0xa4
	.byte	150                             # 0x96
	.byte	8                               # 0x8
	.byte	169                             # 0xa9
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
	.byte	164                             # 0xa4
	.byte	150                             # 0x96
	.byte	8                               # 0x8
	.byte	169                             # 0xa9
.LCPI2_7:
	.dword	197632                          # 0x30400
	.dword	133143986207                    # 0x1f0000001f
	.dword	50528256                        # 0x3030000
	.dword	133143986207                    # 0x1f0000001f
.LCPI2_8:
	.byte	239                             # 0xef
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	255                             # 0xff
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
	.byte	239                             # 0xef
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_9:
	.dword	144679246164525314              # 0x202010202020102
	.dword	9159617402711670587             # 0x7f1d7f7f7f1d7f3b
	.dword	144679246164525314              # 0x202010202020102
	.dword	9159617402711670587             # 0x7f1d7f7f7f1d7f3b
.LCPI2_10:
	.byte	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	157                             # 0x9d
	.byte	255                             # 0xff
	.byte	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	158                             # 0x9e
	.byte	255                             # 0xff
	.byte	157                             # 0x9d
	.byte	255                             # 0xff
	.byte	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	157                             # 0x9d
	.byte	255                             # 0xff
	.byte	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	158                             # 0x9e
	.byte	255                             # 0xff
	.byte	157                             # 0x9d
	.byte	255                             # 0xff
	.byte	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	255                             # 0xff
.LCPI2_11:
	.dword	0                               # 0x0
	.dword	69539815505727                  # 0x3f3f00003f3f
	.dword	0                               # 0x0
	.dword	69539815505727                  # 0x3f3f00003f3f
.LCPI2_12:
	.byte	243                             # 0xf3
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	241                             # 0xf1
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	243                             # 0xf3
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	241                             # 0xf1
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	13                              # 0xd
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_13:
	.dword	140735340838911                 # 0x7fff7fff7fff
	.dword	9223092750163869695             # 0x7fff01fd7fff7fff
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
	.dword	0                               # 0x0
.LCPI2_14:
	.half	16799                           # 0x419f
	.half	40857                           # 0x9f99
	.half	20375                           # 0x4f97
	.half	16599                           # 0x40d7
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_15:
	.half	15968                           # 0x3e60
	.half	24678                           # 0x6066
	.half	12392                           # 0x3068
	.half	16168                           # 0x3f28
	.half	32639                           # 0x7f7f
	.half	0                               # 0x0
	.half	32639                           # 0x7f7f
	.half	32639                           # 0x7f7f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_16:
	.dword	0                               # 0x0
	.dword	562958543486984                 # 0x2000200020008
	.dword	0                               # 0x0
	.dword	562958543487000                 # 0x2000200020018
.LCPI2_17:
	.half	16                              # 0x10
	.half	0                               # 0x0
	.half	40                              # 0x28
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16                              # 0x10
	.half	0                               # 0x0
	.half	40                              # 0x28
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.half	17425                           # 0x4411
	.half	4                               # 0x4
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	17425                           # 0x4411
	.half	12                              # 0xc
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
.LCPI2_19:
	.dword	3458817291183992832             # 0x3000300030003000
	.dword	0                               # 0x0
	.dword	3458817291183992832             # 0x3000300030003000
	.dword	0                               # 0x0
.LCPI2_20:
	.dword	9223090564025483264             # 0x7fff00007fff0000
	.dword	954879306                       # 0x38ea4d4a
	.dword	9223090564025483264             # 0x7fff00007fff0000
	.dword	954879306                       # 0x38ea4d4a
.LCPI2_21:
	.half	13611                           # 0x352b
	.half	1                               # 0x1
	.half	58283                           # 0xe3ab
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	13611                           # 0x352b
	.half	1                               # 0x1
	.half	58283                           # 0xe3ab
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_22:
	.dword	253155143535780675              # 0x383634303836343
	.dword	2305843005455597567             # 0x1fffffff1fffffff
	.dword	253155143535780675              # 0x383634303836343
	.dword	2305843005455597567             # 0x1fffffff1fffffff
.LCPI2_23:
	.word	1008                            # 0x3f0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1008                            # 0x3f0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_24:
	.dword	2147483647                      # 0x7fffffff
	.dword	9222809089032060928             # 0x7ffe00007f000000
	.dword	2147483647                      # 0x7fffffff
	.dword	0                               # 0x0
.LCPI2_25:
	.word	3                               # 0x3
	.word	4294967289                      # 0xfffffff9
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	4294967289                      # 0xfffffff9
	.word	2                               # 0x2
	.word	0                               # 0x0
.LCPI2_26:
	.word	65504                           # 0xffe0
	.word	65024                           # 0xfe00
	.word	65248                           # 0xfee0
	.word	65532                           # 0xfffc
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_27:
	.word	2147483647                      # 0x7fffffff
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483647                      # 0x7fffffff
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_28:
	.word	2147581951                      # 0x80017fff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147581951                      # 0x80017fff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_29:
	.word	3937332971                      # 0xeaaeeeeb
	.word	4294966974                      # 0xfffffebe
	.word	3937336059                      # 0xeaaefafb
	.word	4294966974                      # 0xfffffebe
	.word	3937332971                      # 0xeaaeeeeb
	.word	4294966974                      # 0xfffffebe
	.word	3937336059                      # 0xeaaefafb
	.word	4294966974                      # 0xfffffebe
.LCPI2_30:
	.dword	288230371923853311              # 0x3ffffff03ffffff
	.dword	144044815036710912              # 0x1ffbfff00000000
	.dword	288230371923853311              # 0x3ffffff03ffffff
	.dword	144044815036710912              # 0x1ffbfff00000000
.LCPI2_31:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	2146435071                      # 0x7fefffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	2146435071                      # 0x7fefffff
.LCPI2_32:
	.dword	0                               # 0x0
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
	.dword	9223372034707292159             # 0x7fffffff7fffffff
.LCPI2_33:
	.dword	16384                           # 0x4000
	.dword	35184372088832                  # 0x200000000000
	.dword	16384                           # 0x4000
	.dword	35184372088832                  # 0x200000000000
.LCPI2_34:
	.word	2147516416                      # 0x80008000
	.word	2147516416                      # 0x80008000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147516416                      # 0x80008000
	.word	2147516416                      # 0x80008000
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_35:
	.word	3221274752                      # 0xc000c080
	.word	128                             # 0x80
	.word	128                             # 0x80
	.word	1073791104                      # 0x4000c080
	.word	3221274752                      # 0xc000c080
	.word	128                             # 0x80
	.word	128                             # 0x80
	.word	1073791104                      # 0x4000c080
.LCPI2_36:
	.dword	274877907072                    # 0x4000000080
	.dword	0                               # 0x0
	.dword	274877907072                    # 0x4000000080
	.dword	0                               # 0x0
.LCPI2_37:
	.word	1048685                         # 0x10006d
	.word	0                               # 0x0
	.word	524352                          # 0x80040
	.word	0                               # 0x0
	.word	1048685                         # 0x10006d
	.word	0                               # 0x0
	.word	524352                          # 0x80040
	.word	0                               # 0x0
.LCPI2_38:
	.word	280                             # 0x118
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	280                             # 0x118
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_39:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
.LCPI2_40:
	.dword	8388608                         # 0x800000
	.dword	33554432                        # 0x2000000
	.dword	8388608                         # 0x800000
	.dword	33554432                        # 0x2000000
.LCPI2_41:
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	0                               # 0x0
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	0                               # 0x0
.LCPI2_42:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	0                               # 0x0
	.dword	2                               # 0x2
.LCPI2_43:
	.dword	0                               # 0x0
	.dword	60130590734                     # 0xe0010000e
	.dword	0                               # 0x0
	.dword	60130590734                     # 0xe0010000e
.LCPI2_44:
	.dword	2955534500790283                # 0xa800b000a800b
	.dword	985179598585860                 # 0x3800400038004
	.dword	2955534500790283                # 0xa800b000a800b
	.dword	985179598585860                 # 0x3800400038004
.LCPI2_45:
	.dword	46923776                        # 0x2cc0000
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	46923776                        # 0x2cc0000
	.dword	9223372036854775807             # 0x7fffffffffffffff
.LCPI2_46:
	.dword	0                               # 0x0
	.dword	1432                            # 0x598
	.dword	0                               # 0x0
	.dword	1432                            # 0x598
.LCPI2_47:
	.dword	704391348303                    # 0xa400ff004f
	.dword	4294967390                      # 0x10000005e
	.dword	704391348303                    # 0xa400ff004f
	.dword	4294967390                      # 0x10000005e
.LCPI2_48:
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
.LCPI2_49:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	9007199252643857                # 0x1fffffffe00011
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	9007199252643857                # 0x1fffffffe00011
.LCPI2_50:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_51:
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	247                             # 0xf7
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	247                             # 0xf7
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	247                             # 0xf7
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	247                             # 0xf7
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
	.byte	119                             # 0x77
.LCPI2_52:
	.dword	847736349917440                 # 0x3030300000100
	.dword	847736349917440                 # 0x3030300000100
	.dword	847736349917952                 # 0x3030300000300
	.dword	847736349917952                 # 0x3030300000300
.LCPI2_53:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	64                              # 0x40
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_54:
	.dword	4286709633                      # 0xff81ff81
	.dword	2147548928                      # 0x8000ff00
	.dword	4286709633                      # 0xff81ff81
	.dword	2147548928                      # 0x8000ff00
.LCPI2_55:
	.byte	129                             # 0x81
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	128                             # 0x80
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	128                             # 0x80
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_56:
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_57:
	.dword	-2097865973888450561            # 0xe2e2e202ffffffff
	.dword	65280                           # 0xff00
	.dword	-2097865973888450561            # 0xe2e2e202ffffffff
	.dword	65280                           # 0xff00
.LCPI2_58:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	143                             # 0x8f
	.byte	142                             # 0x8e
	.byte	142                             # 0x8e
	.byte	142                             # 0x8e
	.byte	142                             # 0x8e
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	113                             # 0x71
	.byte	113                             # 0x71
	.byte	113                             # 0x71
	.byte	113                             # 0x71
	.byte	113                             # 0x71
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	143                             # 0x8f
	.byte	142                             # 0x8e
	.byte	142                             # 0x8e
	.byte	142                             # 0x8e
	.byte	142                             # 0x8e
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	113                             # 0x71
	.byte	113                             # 0x71
	.byte	113                             # 0x71
	.byte	113                             # 0x71
	.byte	113                             # 0x71
.LCPI2_59:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	142                             # 0x8e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
	.byte	112                             # 0x70
	.byte	142                             # 0x8e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
.LCPI2_60:
	.dword	0                               # 0x0
	.dword	506381209866536711              # 0x707070707070707
	.dword	0                               # 0x0
	.dword	506381209866536711              # 0x707070707070707
.LCPI2_61:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_62:
	.byte	1                               # 0x1
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_63:
	.byte	94                              # 0x5e
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
	.byte	94                              # 0x5e
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
.LCPI2_64:
	.dword	16711935                        # 0xff00ff
	.dword	0                               # 0x0
	.dword	60146254079                     # 0xe00ff00ff
	.dword	0                               # 0x0
.LCPI2_65:
	.half	4157                            # 0x103d
	.half	65447                           # 0xffa7
	.half	63705                           # 0xf8d9
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8478                            # 0x211e
	.half	65321                           # 0xff29
	.half	2114                            # 0x842
	.half	65423                           # 0xff8f
	.half	12520                           # 0x30e8
	.half	3651                            # 0xe43
	.half	30193                           # 0x75f1
	.half	17                              # 0x11
.LCPI2_66:
	.half	65523                           # 0xfff3
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	51478                           # 0xc916
	.half	0                               # 0x0
	.half	49006                           # 0xbf6e
	.half	0                               # 0x0
	.half	4                               # 0x4
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	0                               # 0x0
.LCPI2_67:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-281474976710656                # 0xffff000000000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-281474976710656                # 0xffff000000000000
.LCPI2_68:
	.half	60138                           # 0xeaea
	.half	60138                           # 0xeaea
	.half	60138                           # 0xeaea
	.half	27370                           # 0x6aea
	.half	60395                           # 0xebeb
	.half	60395                           # 0xebeb
	.half	60395                           # 0xebeb
	.half	60395                           # 0xebeb
	.half	60138                           # 0xeaea
	.half	60138                           # 0xeaea
	.half	60138                           # 0xeaea
	.half	27370                           # 0x6aea
	.half	60395                           # 0xebeb
	.half	60395                           # 0xebeb
	.half	60395                           # 0xebeb
	.half	60395                           # 0xebeb
.LCPI2_69:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_70:
	.dword	-4294901761                     # 0xffffffff0000ffff
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	65535                           # 0xffff
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_71:
	.dword	196615                          # 0x30007
	.dword	4128768                         # 0x3f0000
	.dword	196615                          # 0x30007
	.dword	4128768                         # 0x3f0000
.LCPI2_72:
	.half	65520                           # 0xfff0
	.half	15                              # 0xf
	.half	65528                           # 0xfff8
	.half	7                               # 0x7
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65520                           # 0xfff0
	.half	15                              # 0xf
	.half	65528                           # 0xfff8
	.half	7                               # 0x7
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_73:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	127                             # 0x7f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	127                             # 0x7f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_74:
	.dword	8725857424048159                # 0x1f001f001f001f
	.dword	0                               # 0x0
	.dword	8725857424048159                # 0x1f001f001f001f
	.dword	0                               # 0x0
.LCPI2_75:
	.half	51201                           # 0xc801
	.half	51200                           # 0xc800
	.half	51200                           # 0xc800
	.half	34816                           # 0x8800
	.half	51200                           # 0xc800
	.half	51200                           # 0xc800
	.half	51200                           # 0xc800
	.half	51200                           # 0xc800
	.half	51201                           # 0xc801
	.half	51200                           # 0xc800
	.half	51200                           # 0xc800
	.half	34816                           # 0x8800
	.half	51200                           # 0xc800
	.half	51200                           # 0xc800
	.half	51200                           # 0xc800
	.half	51200                           # 0xc800
.LCPI2_76:
	.dword	143835907856793662              # 0x1ff01ff01c0003e
	.dword	0                               # 0x0
	.dword	143835907856793662              # 0x1ff01ff01c0003e
	.dword	0                               # 0x0
.LCPI2_77:
	.half	24698                           # 0x607a
	.half	7968                            # 0x1f20
	.half	57472                           # 0xe080
	.half	57469                           # 0xe07d
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	24698                           # 0x607a
	.half	7968                            # 0x1f20
	.half	57472                           # 0xe080
	.half	57469                           # 0xe07d
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_78:
	.half	65534                           # 0xfffe
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65408                           # 0xff80
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	126                             # 0x7e
	.half	65534                           # 0xfffe
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65408                           # 0xff80
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	126                             # 0x7e
.LCPI2_79:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
.LCPI2_80:
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_81:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_82:
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	4294967036                      # 0xfffffefc
	.word	4294967294                      # 0xfffffffe
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
.LCPI2_83:
	.dword	-4294963200                     # 0xffffffff00001000
	.dword	0                               # 0x0
	.dword	-4294963200                     # 0xffffffff00001000
	.dword	0                               # 0x0
.LCPI2_84:
	.word	16384                           # 0x4000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2139125760                      # 0x7f807800
	.word	16384                           # 0x4000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2139125760                      # 0x7f807800
.LCPI2_85:
	.dword	3                               # 0x3
	.dword	0                               # 0x0
	.dword	3                               # 0x3
	.dword	0                               # 0x0
.LCPI2_86:
	.word	65316                           # 0xff24
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	65316                           # 0xff24
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_87:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_88:
	.dword	7704                            # 0x1e18
	.dword	65504                           # 0xffe0
	.dword	7704                            # 0x1e18
	.dword	65504                           # 0xffe0
.LCPI2_89:
	.dword	2168483220578893824             # 0x1e18000000000000
	.dword	2168483221083783168             # 0x1e1800001e180000
	.dword	2168483220578893824             # 0x1e18000000000000
	.dword	2168483221083783168             # 0x1e1800001e180000
.LCPI2_90:
	.dword	95967143984                     # 0x1658166830
	.dword	0                               # 0x0
	.dword	78519355728                     # 0x12481e4950
	.dword	0                               # 0x0
.LCPI2_91:
	.dword	-5566252045519847418            # 0xb2c0b341807f8006
	.dword	-5566252045519847418            # 0xb2c0b341807f8006
	.dword	-7908054543794864091            # 0x9240f24a84b18025
	.dword	-7908054543794864091            # 0x9240f24a84b18025
.LCPI2_92:
	.dword	-2269779844394909336            # 0xe0801f41e0800168
	.dword	0                               # 0x0
	.dword	-2198622415372678996            # 0xe17cec8fe08008ac
	.dword	0                               # 0x0
.LCPI2_93:
	.dword	-1                              # 0xffffffffffffffff
	.dword	1121484881525763                # 0x3fbfc0bfbfc03
	.dword	-1                              # 0xffffffffffffffff
	.dword	1121484881525763                # 0x3fbfc0bfbfc03
.LCPI2_94:
	.dword	4593741439975833792             # 0x3fc03f803fc040c0
	.dword	5763551408825581760             # 0x4ffc3f783fc040c0
	.dword	4593741439975833792             # 0x3fc03f803fc040c0
	.dword	5763551408825581760             # 0x4ffc3f783fc040c0
.LCPI2_95:
	.dword	9187482879951602047             # 0x7f807f007f7f817f
	.dword	2139062655                      # 0x7f7f817f
	.dword	9187482879951602047             # 0x7f807f007f7f817f
	.dword	2139062655                      # 0x7f7f817f
.LCPI2_96:
	.dword	-8589934592                     # 0xfffffffe00000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-8589934592                     # 0xfffffffe00000000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_97:
	.dword	144115188075855872              # 0x200000000000000
	.dword	0                               # 0x0
	.dword	144115188075855872              # 0x200000000000000
	.dword	0                               # 0x0
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
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 288
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	xvssrlni.b.h	$xr0, $xr0, 5
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
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.b.h	$xr0, $xr0, 13
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 7
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_0)
	ori	$a0, $a0, 3967
	xvreplgr2vr.w	$xr1, $a0
	xvst	$xr1, $sp, 192
	xvssrlni.b.h	$xr0, $xr0, 3
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 192
	lu12i.w	$a0, 524279
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.b.h	$xr0, $xr1, 7
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.b.h	$xr0, $xr1, 1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.b.h	$xr0, $xr0, 6
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 192
	xvssrlni.b.h	$xr2, $xr1, 3
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr1, $a0
	xvssrlni.b.h	$xr1, $xr0, 11
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.b.h	$xr0, $xr0, 0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	lu12i.w	$a0, 16
	ori	$a0, $a0, 2
	lu32i.d	$a0, 131074
	xvreplgr2vr.d	$xr1, $a0
	xvssrlni.b.h	$xr0, $xr1, 0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.b.h	$xr1, $xr0, 10
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.b.h	$xr0, $xr0, 11
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 192
	xvssrlni.h.w	$xr2, $xr1, 6
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.h.w	$xr0, $xr0, 17
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_18)
	xvst	$xr0, $sp, 192
	xvssrlni.h.w	$xr2, $xr1, 15
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 192
	xvrepli.h	$xr0, 24
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.h.w	$xr1, $xr0, 7
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	xvreplgr2vr.d	$xr1, $a0
	xvssrlni.h.w	$xr0, $xr1, 2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr0, $sp, 192
	lu12i.w	$a0, 115121
	ori	$a0, $a0, 2585
	xvrepli.b	$xr1, -1
	xvst	$xr1, $sp, 128                  # 32-byte Folded Spill
	xvreplgr2vr.w	$xr0, $a0
	xvssrlni.w.d	$xr1, $xr0, 35
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlni.w.d	$xr0, $xr1, 48
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr2, $sp, 32                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	xvst	$xr2, $sp, 192
	xvssrlni.w.d	$xr1, $xr0, 17
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 4095
	xvreplgr2vr.w	$xr0, $a0
	xvst	$xr0, $sp, 192
	xvrepli.d	$xr0, -2
	xvssrlni.w.d	$xr0, $xr0, 50
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 524287
	pcalau12i	$a1, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_27)
	pcalau12i	$a1, %pc_hi20(.LCPI2_28)
	xvld	$xr1, $a1, %pc_lo12(.LCPI2_28)
	ori	$s1, $a0, 4095
	xvreplgr2vr.d	$xr2, $s1
	xvst	$xr2, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr2, $sp, 192
	xvssrlni.w.d	$xr1, $xr0, 28
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_29)
	xvreplgr2vr.w	$xr1, $s1
	xvst	$xr1, $sp, 192
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvssrlni.w.d	$xr1, $xr0, 19
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvssrlni.w.d	$xr1, $xr0, 38
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	xvst	$xr0, $sp, 192
	xvrepli.h	$xr0, 510
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.w.d	$xr0, $xr1, 0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_35)
	xvst	$xr0, $sp, 192
	xvssrlni.w.d	$xr2, $xr1, 49
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_37)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.w.d	$xr0, $xr1, 13
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlni.w.d	$xr0, $xr1, 46
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.w.d	$xr0, $xr0, 15
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	lu12i.w	$s1, 4096
	xvreplgr2vr.d	$xr0, $s1
	xvssrlni.d.q	$xr1, $xr0, 108
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvssrlni.d.q	$xr0, $xr1, 57
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 192
	xvssrlni.d.q	$xr2, $xr1, 40
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.d.q	$xr0, $xr0, 97
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_44)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.d.q	$xr1, $xr0, 78
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_46)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvssrlni.d.q	$xr0, $xr1, 49
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcalau12i	$a1, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_47)
	lu52i.d	$a0, $a0, 2047
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 192
	xvssrlni.d.q	$xr0, $xr0, 6
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_49)
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvssrlni.d.q	$xr1, $xr0, 8
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.bu.h	$xr0, $xr0, 11
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.bu.h	$xr0, $xr0, 5
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_50)
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_51)
	xvst	$xr1, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.bu.h	$xr0, $xr1, 1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_53)
	xvst	$xr0, $sp, 192
	xvssrlni.bu.h	$xr1, $xr1, 14
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_56)
	xvst	$xr0, $sp, 192
	xvssrlni.bu.h	$xr2, $xr1, 8
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 395
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_57)
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_59)
	xvst	$xr0, $sp, 192
	xvssrlni.bu.h	$xr2, $xr1, 7
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 404
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.bu.h	$xr0, $xr0, 12
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.bu.h	$xr0, $xr0, 6
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 422
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_60)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.bu.h	$xr0, $xr1, 13
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 431
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_61)
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_62)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvssrlni.bu.h	$xr1, $xr0, 9
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 440
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_63)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlni.bu.h	$xr1, $xr0, 9
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 449
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_64)
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_65)
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_66)
	xvst	$xr0, $sp, 192
	xvssrlni.hu.w	$xr2, $xr1, 24
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 458
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_67)
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_68)
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_69)
	xvst	$xr0, $sp, 192
	xvssrlni.hu.w	$xr2, $xr1, 5
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 467
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_70)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvssrlni.hu.w	$xr0, $xr1, 12
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 476
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.hu.w	$xr0, $xr0, 19
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 485
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_71)
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_72)
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_73)
	xvst	$xr0, $sp, 192
	xvssrlni.hu.w	$xr2, $xr1, 17
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 494
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_74)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvssrlni.hu.w	$xr0, $xr1, 27
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 503
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.hu.w	$xr0, $xr0, 20
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 512
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_75)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_75)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.hu.w	$xr0, $xr1, 2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 521
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.hu.w	$xr0, $xr0, 8
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 530
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_76)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_76)
	pcalau12i	$a0, %pc_hi20(.LCPI2_77)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_77)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.hu.w	$xr0, $xr1, 23
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 539
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvrepli.w	$xr0, 1
	xvssrlni.hu.w	$xr1, $xr0, 21
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 548
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_78)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_78)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.hu.w	$xr0, $xr1, 4
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 557
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.hu.w	$xr0, $xr0, 15
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 566
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_79)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_79)
	pcalau12i	$a0, %pc_hi20(.LCPI2_80)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_80)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.wu.d	$xr1, $xr0, 3
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 575
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	lu12i.w	$a0, 864
	ori	$a0, $a0, 50
	xvreplgr2vr.w	$xr0, $a0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.wu.d	$xr0, $xr1, 20
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 584
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_81)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_81)
	pcalau12i	$a0, %pc_hi20(.LCPI2_82)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_82)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.wu.d	$xr0, $xr1, 29
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 593
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_83)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_83)
	pcalau12i	$a0, %pc_hi20(.LCPI2_84)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_84)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.wu.d	$xr0, $xr1, 2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 602
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_85)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_85)
	pcalau12i	$a0, %pc_hi20(.LCPI2_86)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_86)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.wu.d	$xr0, $xr1, 14
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 611
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvssrlni.wu.d	$xr0, $xr0, 56
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 620
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_87)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_87)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvssrlni.wu.d	$xr1, $xr0, 53
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 629
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_88)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_88)
	pcalau12i	$a0, %pc_hi20(.LCPI2_89)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_89)
	xvst	$xr0, $sp, 192
	xvrepli.h	$xr0, -32
	xvssrlni.du.q	$xr0, $xr1, 112
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 638
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	lu32i.d	$s1, 4
	xvreplgr2vr.d	$xr0, $s1
	xvssrlni.du.q	$xr1, $xr0, 104
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 647
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_90)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_90)
	pcalau12i	$a0, %pc_hi20(.LCPI2_91)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_91)
	pcalau12i	$a0, %pc_hi20(.LCPI2_92)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_92)
	xvst	$xr0, $sp, 192
	xvssrlni.du.q	$xr2, $xr1, 91
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 656
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_93)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_93)
	pcalau12i	$a0, %pc_hi20(.LCPI2_94)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_94)
	pcalau12i	$a0, %pc_hi20(.LCPI2_95)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_95)
	xvst	$xr0, $sp, 192
	xvssrlni.du.q	$xr2, $xr1, 45
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 665
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_96)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_96)
	xvst	$xr0, $sp, 192
	xvrepli.b	$xr0, -9
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvssrlni.du.q	$xr0, $xr1, 31
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 674
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_97)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_97)
	xvst	$xr0, $sp, 192
	xvrepli.d	$xr0, 256
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrlni.du.q	$xr1, $xr0, 15
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 683
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -288
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvssrlni.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
