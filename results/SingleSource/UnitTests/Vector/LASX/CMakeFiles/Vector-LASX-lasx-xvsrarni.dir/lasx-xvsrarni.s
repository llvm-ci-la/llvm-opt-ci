	.file	"lasx-xvsrarni.c"
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
	.dword	-4557430832964255539            # 0xc0c0c0cdc0c0c0cd
	.dword	0                               # 0x0
	.dword	-4557430832964255539            # 0xc0c0c0cdc0c0c0cd
	.dword	364910016                       # 0x15c015c0
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
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	85                              # 0x55
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	85                              # 0x55
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
	.dword	-1729359176009522136            # 0xe80014fdf0e3e428
	.dword	0                               # 0x0
	.dword	-1729360189670702856            # 0xe8001411edf9c0f8
	.dword	0                               # 0x0
.LCPI2_3:
	.byte	80                              # 0x50
	.byte	208                             # 0xd0
	.byte	199                             # 0xc7
	.byte	87                              # 0x57
	.byte	198                             # 0xc6
	.byte	25                              # 0x19
	.byte	224                             # 0xe0
	.byte	67                              # 0x43
	.byte	249                             # 0xf9
	.byte	233                             # 0xe9
	.byte	39                              # 0x27
	.byte	248                             # 0xf8
	.byte	255                             # 0xff
	.byte	59                              # 0x3b
	.byte	208                             # 0xd0
	.byte	67                              # 0x43
	.byte	240                             # 0xf0
	.byte	79                              # 0x4f
	.byte	128                             # 0x80
	.byte	163                             # 0xa3
	.byte	242                             # 0xf2
	.byte	193                             # 0xc1
	.byte	218                             # 0xda
	.byte	67                              # 0x43
	.byte	33                              # 0x21
	.byte	234                             # 0xea
	.byte	39                              # 0x27
	.byte	248                             # 0xf8
	.byte	255                             # 0xff
	.byte	59                              # 0x3b
	.byte	208                             # 0xd0
	.byte	67                              # 0x43
.LCPI2_4:
	.dword	0                               # 0x0
	.dword	-72373274151027200              # 0xfefee0e3fefefe00
	.dword	0                               # 0x0
	.dword	-72373274151027200              # 0xfefee0e3fefefe00
.LCPI2_5:
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	241                             # 0xf1
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	20                              # 0x14
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	241                             # 0xf1
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	20                              # 0x14
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	255                             # 0xff
.LCPI2_6:
	.dword	0                               # 0x0
	.dword	270604577                       # 0x10211921
	.dword	0                               # 0x0
	.dword	270604577                       # 0x10211921
.LCPI2_7:
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	199                             # 0xc7
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	1                               # 0x1
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
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	199                             # 0xc7
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	1                               # 0x1
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
.LCPI2_8:
	.dword	0                               # 0x0
	.dword	576460752303423736              # 0x8000000000000f8
	.dword	0                               # 0x0
	.dword	576460752303423736              # 0x8000000000000f8
.LCPI2_9:
	.byte	255                             # 0xff
	.byte	128                             # 0x80
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
	.byte	128                             # 0x80
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
.LCPI2_10:
	.dword	0                               # 0x0
	.dword	85                              # 0x55
	.dword	0                               # 0x0
	.dword	85                              # 0x55
.LCPI2_11:
	.half	21545                           # 0x5429
	.half	42                              # 0x2a
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	21545                           # 0x5429
	.half	42                              # 0x2a
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_12:
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
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_13:
	.dword	0                               # 0x0
	.dword	17179869188                     # 0x400000004
	.dword	0                               # 0x0
	.dword	17179869188                     # 0x400000004
.LCPI2_14:
	.dword	0                               # 0x0
	.dword	127791593607069242              # 0x1c601c6fe3afe3a
	.dword	0                               # 0x0
	.dword	127791593607069242              # 0x1c601c6fe3afe3a
.LCPI2_15:
	.half	36494                           # 0x8e8e
	.half	36494                           # 0x8e8e
	.half	36494                           # 0x8e8e
	.half	36494                           # 0x8e8e
	.half	29041                           # 0x7171
	.half	29041                           # 0x7171
	.half	29041                           # 0x7171
	.half	29041                           # 0x7171
	.half	36494                           # 0x8e8e
	.half	36494                           # 0x8e8e
	.half	36494                           # 0x8e8e
	.half	36494                           # 0x8e8e
	.half	29041                           # 0x7171
	.half	29041                           # 0x7171
	.half	29041                           # 0x7171
	.half	29041                           # 0x7171
.LCPI2_16:
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI2_17:
	.half	32768                           # 0x8000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.half	3713                            # 0xe81
	.half	806                             # 0x326
	.half	64595                           # 0xfc53
	.half	940                             # 0x3ac
	.half	943                             # 0x3af
	.half	943                             # 0x3af
	.half	943                             # 0x3af
	.half	943                             # 0x3af
	.half	3713                            # 0xe81
	.half	806                             # 0x326
	.half	64595                           # 0xfc53
	.half	940                             # 0x3ac
	.half	943                             # 0x3af
	.half	943                             # 0x3af
	.half	943                             # 0x3af
	.half	943                             # 0x3af
.LCPI2_19:
	.word	203576                          # 0x31b38
	.word	257416                          # 0x3ed88
	.word	8190284                         # 0x7cf94c
	.word	7557752                         # 0x735278
	.word	54872                           # 0xd658
	.word	202156                          # 0x315ac
	.word	0                               # 0x0
	.word	3034546                         # 0x2e4db2
.LCPI2_20:
	.word	133171189                       # 0x7f007f5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_21:
	.dword	-30131879936                    # 0xfffffff8fc000000
	.dword	0                               # 0x0
	.dword	-30064771080                    # 0xfffffff8fffffff8
	.dword	0                               # 0x0
.LCPI2_22:
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	4294967038                      # 0xfffffefe
	.word	4294967038                      # 0xfffffefe
	.word	4294966522                      # 0xfffffcfa
	.word	4294967038                      # 0xfffffefe
	.word	4294967038                      # 0xfffffefe
	.word	4294967038                      # 0xfffffefe
.LCPI2_23:
	.dword	6781890800916504                # 0x18181800181818
	.dword	69806859392385272               # 0xf800f800f800f8
	.dword	6781890800916504                # 0x18181800181818
	.dword	69806859392385272               # 0xf800f800f800f8
.LCPI2_24:
	.word	256                             # 0x100
	.word	197379                          # 0x30303
	.word	256                             # 0x100
	.word	197379                          # 0x30303
	.word	768                             # 0x300
	.word	197379                          # 0x30303
	.word	768                             # 0x300
	.word	197379                          # 0x30303
.LCPI2_25:
	.dword	-4294967295                     # 0xffffffff00000001
	.dword	4294967297                      # 0x100000001
	.dword	-4294967295                     # 0xffffffff00000001
	.dword	4294967297                      # 0x100000001
.LCPI2_26:
	.word	2197687257                      # 0x82fe0bd9
	.word	2139095040                      # 0x7f800000
	.word	2197815296                      # 0x83000000
	.word	2197786669                      # 0x82ff902d
	.word	2197687257                      # 0x82fe0bd9
	.word	2139095040                      # 0x7f800000
	.word	2197815296                      # 0x83000000
	.word	2197786669                      # 0x82ff902d
.LCPI2_27:
	.word	4294967294                      # 0xfffffffe
	.word	2147483647                      # 0x7fffffff
	.word	2147483647                      # 0x7fffffff
	.word	2147483647                      # 0x7fffffff
	.word	4294967294                      # 0xfffffffe
	.word	2147483647                      # 0x7fffffff
	.word	2147483647                      # 0x7fffffff
	.word	2147483647                      # 0x7fffffff
.LCPI2_28:
	.dword	4                               # 0x4
	.dword	137438953506                    # 0x2000000022
	.dword	4                               # 0x4
	.dword	137438953506                    # 0x2000000022
.LCPI2_29:
	.dword	16777232                        # 0x1000010
	.dword	1                               # 0x1
	.dword	1                               # 0x1
	.dword	1                               # 0x1
.LCPI2_30:
	.dword	9223231262859165687             # 0x7fff7ff77fff7ff7
	.dword	34359738376                     # 0x800000008
	.dword	9223231262859165687             # 0x7fff7ff77fff7ff7
	.dword	34359738376                     # 0x800000008
.LCPI2_31:
	.dword	0                               # 0x0
	.dword	7133701809754865664             # 0x6300000000000000
	.dword	0                               # 0x0
	.dword	7133701809754865664             # 0x6300000000000000
.LCPI2_32:
	.dword	1537598291968                   # 0x16600000000
	.dword	0                               # 0x0
	.dword	1537598291968                   # 0x16600000000
	.dword	0                               # 0x0
.LCPI2_33:
	.dword	6449154666394550272             # 0x5980000000000000
	.dword	0                               # 0x0
	.dword	6449154666394550272             # 0x5980000000000000
	.dword	0                               # 0x0
.LCPI2_34:
	.dword	-1108101562368                  # 0xfffffefe00000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1103806595330                  # 0xfffffefefffffefe
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_35:
	.dword	851973                          # 0xd0005
	.dword	69                              # 0x45
	.dword	851973                          # 0xd0005
	.dword	69                              # 0x45
.LCPI2_36:
	.dword	0                               # 0x0
	.dword	-277076930199552                # 0xffff040000000000
	.dword	0                               # 0x0
	.dword	-277076930199552                # 0xffff040000000000
.LCPI2_37:
	.dword	0                               # 0x0
	.dword	35747322050576384               # 0x7f0000007f0000
	.dword	0                               # 0x0
	.dword	35747322050576384               # 0x7f0000007f0000
.LCPI2_38:
	.dword	0                               # 0x0
	.dword	35180613994479                  # 0x1fff200007ef
	.dword	0                               # 0x0
	.dword	2233819500036229103             # 0x1f001f00000007ef
.LCPI2_39:
	.dword	69784628690816                  # 0x3f780000ff80
	.dword	-578439907593093127             # 0xf7f8f7f80000fff9
	.dword	69784628690816                  # 0x3f780000ff80
	.dword	-578439903432345600             # 0xf7f8f7f8f800f800
.LCPI2_40:
	.dword	69539815505984                  # 0x3f3f00004040
	.dword	0                               # 0x0
	.dword	69539815505984                  # 0x3f3f00004040
	.dword	0                               # 0x0
.LCPI2_41:
	.dword	69539815505984                  # 0x3f3f00004040
	.dword	69539815505727                  # 0x3f3f00003f3f
	.dword	69539815505984                  # 0x3f3f00004040
	.dword	69539815505727                  # 0x3f3f00003f3f
.LCPI2_42:
	.dword	1157442765409226768             # 0x1010101010101010
	.dword	0                               # 0x0
	.dword	1157442765409226768             # 0x1010101010101010
	.dword	0                               # 0x0
.LCPI2_43:
	.dword	-8                              # 0xfffffffffffffff8
	.dword	0                               # 0x0
	.dword	-8                              # 0xfffffffffffffff8
	.dword	0                               # 0x0
.LCPI2_44:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_45:
	.dword	2314850208468434944             # 0x2020000000000000
	.dword	9007199252643840                # 0x1fffffffe00000
	.dword	2314850208468434944             # 0x2020000000000000
	.dword	9007199252643840                # 0x1fffffffe00000
.LCPI2_46:
	.dword	0                               # 0x0
	.dword	72340172838076673               # 0x101010101010101
	.dword	0                               # 0x0
	.dword	72340172838076673               # 0x101010101010101
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
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 96
	xvsrarni.b.h	$xr0, $xr0, 2
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvst	$xr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	lu12i.w	$a0, -4082
	ori	$a0, $a0, 3890
	lu32i.d	$a0, 65280
	lu52i.d	$a0, $a0, -16
	xvreplgr2vr.d	$xr1, $a0
	xvsrarni.b.h	$xr0, $xr1, 2
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.b.h	$xr0, $xr1, 1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.b.h	$xr1, $xr0, 3
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.b.h	$xr1, $xr0, 3
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	ori	$a0, $zero, 1
	lu32i.d	$a0, -2
	xvreplgr2vr.d	$xr1, $a0
	xvsrarni.b.h	$xr0, $xr1, 12
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvsrarni.b.h	$xr0, $xr0, 15
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvsrarni.h.w	$xr0, $xr0, 18
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvsrarni.h.w	$xr0, $xr0, 11
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
	xvst	$xr0, $sp, 96
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvsrarni.h.w	$xr1, $xr0, 15
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvsrarni.h.w	$xr0, $xr1, 22
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 96
	lu12i.w	$a0, 511
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.h.w	$xr0, $xr1, 19
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvsrarni.h.w	$xr0, $xr0, 15
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 96
	xvrepli.d	$xr0, 1
	xvsrarni.h.w	$xr1, $xr0, 22
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.h.w	$xr1, $xr0, 1
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvsrarni.h.w	$xr0, $xr0, 23
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvsrarni.h.w	$xr1, $xr0, 16
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvsrarni.h.w	$xr0, $xr0, 27
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_20)
	xvld	$xr2, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 96
	xvsrarni.w.d	$xr1, $xr0, 61
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvsrarni.w.d	$xr0, $xr0, 61
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.w.d	$xr0, $xr1, 37
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvsrarni.w.d	$xr0, $xr1, 18
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvsrarni.w.d	$xr0, $xr0, 47
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvsrarni.w.d	$xr0, $xr0, 32
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 96
	xvrepli.h	$xr0, 31
	xvsrarni.w.d	$xr0, $xr1, 29
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
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
	xvsrarni.w.d	$xr2, $xr1, 63
	xvst	$xr2, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvsrarni.w.d	$xr0, $xr0, 11
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
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
	xvsrarni.d.q	$xr2, $xr1, 62
	xvst	$xr2, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvsrarni.d.q	$xr1, $xr0, 34
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_33)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.d.q	$xr0, $xr1, 22
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvsrarni.d.q	$xr1, $xr0, 127
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvsrarni.d.q	$xr0, $xr0, 10
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvsrarni.d.q	$xr1, $xr0, 80
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvsrarni.d.q	$xr0, $xr1, 0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	xvst	$xr0, $sp, 96
	lu12i.w	$a0, 260096
	xvreplgr2vr.w	$xr0, $a0
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.d.q	$xr0, $xr1, 39
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvsrarni.d.q	$xr0, $xr0, 25
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.d.q	$xr1, $xr0, 35
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_41)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.d.q	$xr0, $xr1, 0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 96
	xvrepli.b	$xr0, 64
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.d.q	$xr1, $xr0, 58
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_44)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvsrarni.d.q	$xr0, $xr1, 29
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	xvst	$xr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	xvreplgr2vr.d	$xr1, $a0
	xvsrarni.d.q	$xr1, $xr0, 11
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvsrarni.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
