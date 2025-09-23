	.file	"lasx-xvmulwod-2.c"
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
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_1:
	.dword	4244828685                      # 0xfd02f20d
	.dword	0                               # 0x0
	.dword	6473924506616030                # 0x170000028500de
	.dword	0                               # 0x0
.LCPI2_2:
	.byte	13                              # 0xd
	.byte	243                             # 0xf3
	.byte	250                             # 0xfa
	.byte	254                             # 0xfe
	.byte	14                              # 0xe
	.byte	249                             # 0xf9
	.byte	241                             # 0xf1
	.byte	94                              # 0x5e
	.byte	249                             # 0xf9
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	240                             # 0xf0
	.byte	145                             # 0x91
	.byte	222                             # 0xde
	.byte	190                             # 0xbe
	.byte	222                             # 0xde
	.byte	110                             # 0x6e
	.byte	129                             # 0x81
	.byte	115                             # 0x73
	.byte	192                             # 0xc0
	.byte	41                              # 0x29
	.byte	23                              # 0x17
	.byte	31                              # 0x1f
	.byte	114                             # 0x72
	.byte	70                              # 0x46
	.byte	192                             # 0xc0
	.byte	39                              # 0x27
	.byte	225                             # 0xe1
	.byte	162                             # 0xa2
	.byte	190                             # 0xbe
.LCPI2_3:
	.byte	100                             # 0x64
	.byte	255                             # 0xff
	.byte	220                             # 0xdc
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
	.byte	162                             # 0xa2
	.byte	1                               # 0x1
	.byte	40                              # 0x28
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	72                              # 0x48
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_4:
	.byte	250                             # 0xfa
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
	.byte	250                             # 0xfa
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
.LCPI2_5:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	127                             # 0x7f
.LCPI2_6:
	.dword	4521964499506298880             # 0x3ec13ec100000000
	.dword	5670382404485775360             # 0x4eb13ec100000000
	.dword	4521964499506298880             # 0x3ec13ec100000000
	.dword	5670382404485775360             # 0x4eb13ec100000000
.LCPI2_7:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	63                              # 0x3f
	.byte	192                             # 0xc0
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	120                             # 0x78
	.byte	63                              # 0x3f
	.byte	252                             # 0xfc
	.byte	79                              # 0x4f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	100                             # 0x64
	.byte	63                              # 0x3f
	.byte	192                             # 0xc0
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	120                             # 0x78
	.byte	63                              # 0x3f
	.byte	252                             # 0xfc
	.byte	79                              # 0x4f
.LCPI2_8:
	.byte	16                              # 0x10
	.byte	115                             # 0x73
	.byte	168                             # 0xa8
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
	.byte	16                              # 0x10
	.byte	115                             # 0x73
	.byte	168                             # 0xa8
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
.LCPI2_9:
	.dword	1069563840                      # 0x3fc03fc0
	.dword	-143554428605891326             # 0xfe01fe01fd02fd02
	.dword	1069563840                      # 0x3fc03fc0
	.dword	-143554428605891326             # 0xfe01fe01fd02fd02
.LCPI2_10:
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_11:
	.dword	356071278755513585              # 0x4f104f104f104f1
	.dword	0                               # 0x0
	.dword	356071278755513585              # 0x4f104f104f104f1
	.dword	0                               # 0x0
.LCPI2_12:
	.byte	236                             # 0xec
	.byte	5                               # 0x5
	.byte	234                             # 0xea
	.byte	5                               # 0x5
	.byte	234                             # 0xea
	.byte	5                               # 0x5
	.byte	234                             # 0xea
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	236                             # 0xec
	.byte	5                               # 0x5
	.byte	234                             # 0xea
	.byte	5                               # 0x5
	.byte	234                             # 0xea
	.byte	5                               # 0x5
	.byte	234                             # 0xea
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_13:
	.half	65296                           # 0xff10
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65505                           # 0xffe1
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65296                           # 0xff10
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65505                           # 0xffe1
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_14:
	.dword	4575727593374413828             # 0x3f804000c008f404
	.dword	-4609159333189976064            # 0xc008fa01c0090000
	.dword	4575727593374413828             # 0x3f804000c008f404
	.dword	-4609159333189976064            # 0xc008fa01c0090000
.LCPI2_15:
	.half	3033                            # 0xbd9
	.half	33534                           # 0x82fe
	.half	0                               # 0x0
	.half	32640                           # 0x7f80
	.half	0                               # 0x0
	.half	33536                           # 0x8300
	.half	36909                           # 0x902d
	.half	33535                           # 0x82ff
	.half	3033                            # 0xbd9
	.half	33534                           # 0x82fe
	.half	0                               # 0x0
	.half	32640                           # 0x7f80
	.half	0                               # 0x0
	.half	33536                           # 0x8300
	.half	36909                           # 0x902d
	.half	33535                           # 0x82ff
.LCPI2_16:
	.half	15552                           # 0x3cc0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	15552                           # 0x3cc0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.half	8                               # 0x8
	.half	64                              # 0x40
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	109                             # 0x6d
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	64                              # 0x40
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	109                             # 0x6d
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.dword	1150670804304789504             # 0xff8010000000000
	.dword	0                               # 0x0
	.dword	1150670804304789504             # 0xff8010000000000
	.dword	0                               # 0x0
.LCPI2_19:
	.word	0                               # 0x0
	.word	1072693248                      # 0x3ff00000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1072693248                      # 0x3ff00000
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_20:
	.word	4289138749                      # 0xffa7103d
	.word	4294965465                      # 0xfffff8d9
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4280885534                      # 0xff29211e
	.word	4287563842                      # 0xff8f0842
	.word	239284456                       # 0xe4330e8
	.word	1144305                         # 0x1175f1
.LCPI2_21:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
.LCPI2_22:
	.dword	851060805993216                 # 0x3060909060300
	.dword	8760076468690688                # 0x1f1f3e3e1f1f00
	.dword	851060805993216                 # 0x3060909060300
	.dword	8760076468690688                # 0x1f1f3e3e1f1f00
.LCPI2_23:
	.word	1579032                         # 0x181818
	.word	1579032                         # 0x181818
	.word	16253176                        # 0xf800f8
	.word	16253176                        # 0xf800f8
	.word	1579032                         # 0x181818
	.word	1579032                         # 0x181818
	.word	16253176                        # 0xf800f8
	.word	16253176                        # 0xf800f8
.LCPI2_24:
	.word	538993713                       # 0x20206431
	.word	538976288                       # 0x20202020
	.word	538976288                       # 0x20202020
	.word	538976288                       # 0x20202020
	.word	538993713                       # 0x20206431
	.word	538976288                       # 0x20202020
	.word	538976288                       # 0x20202020
	.word	538976288                       # 0x20202020
.LCPI2_25:
	.dword	576460816459496962              # 0x800000eeffffe02
	.dword	0                               # 0x0
	.dword	5188217753395232513             # 0x4800408ef07f7f01
	.dword	0                               # 0x0
.LCPI2_26:
	.word	2415951872                      # 0x90008000
	.word	268435454                       # 0xffffffe
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2415951872                      # 0x90008000
	.word	2415951871                      # 0x90007fff
	.word	268435455                       # 0xfffffff
	.word	268435455                       # 0xfffffff
.LCPI2_27:
	.word	255                             # 0xff
	.word	2147483903                      # 0x800000ff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	255                             # 0xff
	.word	2147483903                      # 0x800000ff
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI2_28:
	.dword	1                               # 0x1
	.dword	-2                              # 0xfffffffffffffffe
	.dword	1                               # 0x1
	.dword	-2                              # 0xfffffffffffffffe
.LCPI2_29:
	.dword	6575426979774857216             # 0x5b409c0000000000
	.dword	558526068072274                 # 0x1fbf9fbe29f52
	.dword	6575426979774857216             # 0x5b409c0000000000
	.dword	558526068072274                 # 0x1fbf9fbe29f52
.LCPI2_30:
	.dword	0                               # 0x0
	.dword	72052113709850400               # 0xfffb0402fddf20
	.dword	0                               # 0x0
	.dword	72052113709850400               # 0xfffb0402fddf20
.LCPI2_31:
	.dword	0                               # 0x0
	.dword	142993548776570880              # 0x1fc03e000000000
	.dword	0                               # 0x0
	.dword	142993548776570880              # 0x1fc03e000000000
.LCPI2_32:
	.dword	-4611791550068981760            # 0xbfffa004fffd8000
	.dword	0                               # 0x0
	.dword	-4611791550068981760            # 0xbfffa004fffd8000
	.dword	0                               # 0x0
.LCPI2_33:
	.dword	74698071179264                  # 0x43efffff8000
	.dword	4294934528                      # 0xffff8000
	.dword	74698071179264                  # 0x43efffff8000
	.dword	4294934528                      # 0xffff8000
.LCPI2_34:
	.dword	2447921647278096389             # 0x21f8c3c4c0000005
	.dword	3221225477                      # 0xc0000005
	.dword	2447921647278096389             # 0x21f8c3c4c0000005
	.dword	3221225477                      # 0xc0000005
.LCPI2_35:
	.dword	4503668347895824                # 0x10001000100010
	.dword	1048592                         # 0x100010
	.dword	4503668347895824                # 0x10001000100010
	.dword	1048592                         # 0x100010
.LCPI2_36:
	.dword	-1342778302305                  # 0xfffffec75c2d209f
	.dword	33489918                        # 0x1ff03fe
	.dword	-1342778302305                  # 0xfffffec75c2d209f
	.dword	33489918                        # 0x1ff03fe
.LCPI2_37:
	.dword	132095                          # 0x203ff
	.dword	33489919                        # 0x1ff03ff
	.dword	132095                          # 0x203ff
	.dword	33489919                        # 0x1ff03ff
.LCPI2_38:
	.dword	5551407994588627164             # 0x4d0a902890b800dc
	.dword	-40095                          # 0xffffffffffff6361
	.dword	5551407994588627164             # 0x4d0a902890b800dc
	.dword	-40095                          # 0xffffffffffff6361
.LCPI2_39:
	.dword	-281470681939965                # 0xffff0000fffd0003
	.dword	281470681939964                 # 0xffff0002fffc
	.dword	-281470681939965                # 0xffff0000fffd0003
	.dword	281470681939964                 # 0xffff0002fffc
.LCPI2_40:
	.dword	356071278755775725              # 0x4f104f104f504ed
	.dword	281470681939965                 # 0xffff0002fffd
	.dword	356071278755775725              # 0x4f104f104f504ed
	.dword	281470681939965                 # 0xffff0002fffd
.LCPI2_41:
	.dword	-240                            # 0xffffffffffffff10
	.dword	-1                              # 0xffffffffffffffff
	.dword	-240                            # 0xffffffffffffff10
	.dword	-1                              # 0xffffffffffffffff
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvrepli.b	$xr1, 0
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 128
	xvmulwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 160
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 128
	xvmulwod.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvmulwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvmulwod.h.bu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvmulwod.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 128
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvmulwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvmulwod.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvmulwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvmulwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	lu12i.w	$a0, 4
	xvreplgr2vr.w	$xr0, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, -1021
	xvreplgr2vr.d	$xr1, $a0
	xvmulwod.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	lu12i.w	$a0, 15
	ori	$a0, $a0, 3330
	xvreplgr2vr.h	$xr1, $a0
	xvmulwod.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvmulwod.w.hu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvmulwod.w.hu	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvmulwod.w.hu.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvrepli.b	$xr0, -112
	xvmulwod.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvmulwod.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 128
	xvmulwod.w.hu.h	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvmulwod.w.hu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvmulwod.w.hu.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 128
	xvmulwod.d.wu	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvmulwod.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvmulwod.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvmulwod.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 128
	xvmulwod.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
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
	xvmulwod.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvmulwod.q.du	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 128
	xvmulwod.q.du	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
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
	xvmulwod.q.du	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvmulwod.q.du	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvmulwod.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_38)
	xvst	$xr0, $sp, 128
	xvmulwod.q.du	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_41)
	xvst	$xr0, $sp, 128
	xvmulwod.q.du	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvmulwod-2.c"
	.size	.L.str.5, 136

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
