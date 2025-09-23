	.file	"lasx-xvmulwev-2.c"
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
	.dword	-3876091142561471716            # 0xca355ba46a95e31c
	.dword	4952601502714441680             # 0x44bb2cd3a35c2fd0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_1:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_2:
	.byte	228                             # 0xe4
	.byte	33                              # 0x21
	.byte	107                             # 0x6b
	.byte	77                              # 0x4d
	.byte	92                              # 0x5c
	.byte	30                              # 0x1e
	.byte	203                             # 0xcb
	.byte	76                              # 0x4c
	.byte	48                              # 0x30
	.byte	27                              # 0x1b
	.byte	164                             # 0xa4
	.byte	205                             # 0xcd
	.byte	45                              # 0x2d
	.byte	204                             # 0xcc
	.byte	69                              # 0x45
	.byte	78                              # 0x4e
	.byte	255                             # 0xff
	.byte	234                             # 0xea
	.byte	51                              # 0x33
	.byte	78                              # 0x4e
	.byte	235                             # 0xeb
	.byte	253                             # 0xfd
	.byte	104                             # 0x68
	.byte	206                             # 0xce
	.byte	120                             # 0x78
	.byte	170                             # 0xaa
	.byte	186                             # 0xba
	.byte	205                             # 0xcd
	.byte	118                             # 0x76
	.byte	186                             # 0xba
	.byte	92                              # 0x5c
	.byte	78                              # 0x4e
.LCPI2_3:
	.dword	143552238155857920              # 0x1fe000001fe0000
	.dword	0                               # 0x0
	.dword	143552238139146495              # 0x1fe000000ff00ff
	.dword	0                               # 0x0
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	2                               # 0x2
.LCPI2_6:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_7:
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
.LCPI2_8:
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
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_9:
	.byte	136                             # 0x88
	.byte	247                             # 0xf7
	.byte	136                             # 0x88
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	136                             # 0x88
	.byte	247                             # 0xf7
	.byte	136                             # 0x88
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
.LCPI2_10:
	.dword	84181374326918                  # 0x4c9000e9d886
	.dword	8323072                         # 0x7f0000
	.dword	84181374326918                  # 0x4c9000e9d886
	.dword	8323072                         # 0x7f0000
.LCPI2_11:
	.byte	241                             # 0xf1
	.byte	4                               # 0x4
	.byte	233                             # 0xe9
	.byte	175                             # 0xaf
	.byte	175                             # 0xaf
	.byte	56                              # 0x38
	.byte	153                             # 0x99
	.byte	220                             # 0xdc
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	93                              # 0x5d
	.byte	11                              # 0xb
	.byte	214                             # 0xd6
	.byte	30                              # 0x1e
	.byte	118                             # 0x76
	.byte	241                             # 0xf1
	.byte	4                               # 0x4
	.byte	233                             # 0xe9
	.byte	175                             # 0xaf
	.byte	175                             # 0xaf
	.byte	56                              # 0x38
	.byte	153                             # 0x99
	.byte	220                             # 0xdc
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	93                              # 0x5d
	.byte	11                              # 0xb
	.byte	214                             # 0xd6
	.byte	30                              # 0x1e
	.byte	118                             # 0x76
.LCPI2_12:
	.byte	230                             # 0xe6
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	104                             # 0x68
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	230                             # 0xe6
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	104                             # 0x68
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_13:
	.dword	1933752452031379387             # 0x1ad6119c12def7bb
	.dword	51176                           # 0xc7e8
	.dword	137345038                       # 0x82fb80e
	.dword	13716                           # 0x3594
.LCPI2_14:
	.half	11479                           # 0x2cd7
	.half	26279                           # 0x66a7
	.half	8828                            # 0x227c
	.half	13938                           # 0x3672
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	3599                            # 0xe0f
	.half	3614                            # 0xe1e
	.half	22754                           # 0x58e2
	.half	107                             # 0x6b
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_15:
	.half	27581                           # 0x6bbd
	.half	44492                           # 0xadcc
	.half	51001                           # 0xc739
	.half	57394                           # 0xe032
	.half	25588                           # 0x63f4
	.half	12600                           # 0x3138
	.half	51674                           # 0xc9da
	.half	10250                           # 0x280a
	.half	38162                           # 0x9512
	.half	14858                           # 0x3a0a
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	6858                            # 0x1aca
	.half	65480                           # 0xffc8
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_16:
	.dword	-8070872740418027520            # 0x8ffe800100000000
	.dword	-562942370234367                # 0xfffe0001c3fe4001
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_17:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	49151                           # 0xbfff
	.half	26193                           # 0x6651
	.half	57343                           # 0xdfff
	.half	62248                           # 0xf328
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
.LCPI2_18:
	.dword	458710                          # 0x6ffd6
	.dword	71497934029914070               # 0xfe02fe0006ffd6
	.dword	15085455                        # 0xe62f8f
	.dword	71496838813253583               # 0xfe01ff0006ffcf
.LCPI2_19:
	.half	7                               # 0x7
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	7                               # 0x7
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	231                             # 0xe7
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	7                               # 0x7
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	255                             # 0xff
.LCPI2_20:
	.half	65530                           # 0xfffa
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	65530                           # 0xfffa
	.half	1                               # 0x1
	.half	65282                           # 0xff02
	.half	65282                           # 0xff02
	.half	65305                           # 0xff19
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65529                           # 0xfff9
	.half	0                               # 0x0
	.half	65281                           # 0xff01
	.half	65281                           # 0xff01
.LCPI2_21:
	.half	510                             # 0x1fe
	.half	382                             # 0x17e
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	382                             # 0x17e
	.half	255                             # 0xff
	.half	382                             # 0x17e
	.half	510                             # 0x1fe
	.half	382                             # 0x17e
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
.LCPI2_22:
	.dword	4112                            # 0x1010
	.dword	72337965224750865               # 0x100feff00feef11
	.dword	4112                            # 0x1010
	.dword	72337965224881903               # 0x100feff0100eeef
.LCPI2_23:
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
.LCPI2_24:
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	255                             # 0xff
	.half	256                             # 0x100
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
.LCPI2_25:
	.dword	-140814797766907                # 0xffff7fedffffff05
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_26:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_27:
	.half	251                             # 0xfb
	.half	33011                           # 0x80f3
	.half	32787                           # 0x8013
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	33022                           # 0x80fe
	.half	33011                           # 0x80f3
	.half	32787                           # 0x8013
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_28:
	.dword	-11106785459920                 # 0xfffff5e5ffff8130
	.dword	-130768869319511                # 0xffff8910ffff1ca9
	.dword	-222702644262560                # 0xffff3573ffff8960
	.dword	-130768869294591                # 0xffff8910ffff7e01
.LCPI2_29:
	.half	32464                           # 0x7ed0
	.half	10938                           # 0x2aba
	.half	2587                            # 0xa1b
	.half	17388                           # 0x43ec
	.half	58199                           # 0xe357
	.half	40759                           # 0x9f37
	.half	30448                           # 0x76f0
	.half	8765                            # 0x223d
	.half	30368                           # 0x76a0
	.half	318                             # 0x13e
	.half	51853                           # 0xca8d
	.half	14448                           # 0x3870
	.half	33279                           # 0x81ff
	.half	40760                           # 0x9f38
	.half	30448                           # 0x76f0
	.half	8765                            # 0x223d
.LCPI2_30:
	.dword	940393547923518195              # 0xd0cf2f30d0cf2f3
	.dword	162263984701964288              # 0x2407a3c00000000
	.dword	940393547923518195              # 0xd0cf2f30d0cf2f3
	.dword	162263984701964288              # 0x2407a3c00000000
.LCPI2_31:
	.half	3341                            # 0xd0d
	.half	3341                            # 0xd0d
	.half	3341                            # 0xd0d
	.half	3341                            # 0xd0d
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	3341                            # 0xd0d
	.half	3341                            # 0xd0d
	.half	3341                            # 0xd0d
	.half	3341                            # 0xd0d
	.half	3341                            # 0xd0d
	.half	3341                            # 0xd0d
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	3341                            # 0xd0d
	.half	3341                            # 0xd0d
.LCPI2_32:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	11308                           # 0x2c2c
	.half	11308                           # 0x2c2c
	.half	11308                           # 0x2c2c
	.half	11308                           # 0x2c2c
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	11308                           # 0x2c2c
	.half	11308                           # 0x2c2c
	.half	11308                           # 0x2c2c
	.half	11308                           # 0x2c2c
.LCPI2_33:
	.dword	2314814887196352480             # 0x201fdfe0201fdfe0
	.dword	0                               # 0x0
	.dword	2314814887196352480             # 0x201fdfe0201fdfe0
	.dword	0                               # 0x0
.LCPI2_34:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_35:
	.half	42887                           # 0xa787
	.half	0                               # 0x0
	.half	47179                           # 0xb84b
	.half	0                               # 0x0
	.half	22648                           # 0x5878
	.half	65535                           # 0xffff
	.half	18356                           # 0x47b4
	.half	65535                           # 0xffff
	.half	42887                           # 0xa787
	.half	0                               # 0x0
	.half	47179                           # 0xb84b
	.half	0                               # 0x0
	.half	22648                           # 0x5878
	.half	65535                           # 0xffff
	.half	18356                           # 0x47b4
	.half	65535                           # 0xffff
.LCPI2_36:
	.half	16397                           # 0x400d
	.half	0                               # 0x0
	.half	16191                           # 0x3f3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16397                           # 0x400d
	.half	0                               # 0x0
	.half	16191                           # 0x3f3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_37:
	.dword	64                              # 0x40
	.dword	0                               # 0x0
	.dword	64                              # 0x40
	.dword	0                               # 0x0
.LCPI2_38:
	.half	8                               # 0x8
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_39:
	.dword	0                               # 0x0
	.dword	281470681743373                 # 0xffff0000000d
	.dword	0                               # 0x0
	.dword	281470681743373                 # 0xffff0000000d
.LCPI2_40:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_41:
	.dword	1103806595329                   # 0x10100000101
	.dword	0                               # 0x0
	.dword	1103806595329                   # 0x10100000101
	.dword	0                               # 0x0
.LCPI2_42:
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	257                             # 0x101
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_43:
	.dword	4279959780                      # 0xff1b00e4
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_44:
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
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_45:
	.dword	17179869188                     # 0x400000004
	.dword	0                               # 0x0
	.dword	17179869188                     # 0x400000004
	.dword	0                               # 0x0
.LCPI2_46:
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_47:
	.word	3267534016                      # 0xc2c29cc0
	.word	3267543746                      # 0xc2c2c2c2
	.word	3267543746                      # 0xc2c2c2c2
	.word	3267543746                      # 0xc2c2c2c2
	.word	3267534016                      # 0xc2c29cc0
	.word	3267543746                      # 0xc2c2c2c2
	.word	3267543746                      # 0xc2c2c2c2
	.word	3267543746                      # 0xc2c2c2c2
.LCPI2_48:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_49:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	78                              # 0x4e
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_50:
	.dword	10                              # 0xa
	.dword	0                               # 0x0
	.dword	10                              # 0xa
	.dword	0                               # 0x0
.LCPI2_51:
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_52:
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_53:
	.dword	2147418112                      # 0x7fff0000
	.dword	0                               # 0x0
	.dword	2147418112                      # 0x7fff0000
	.dword	2130706432                      # 0x7f000000
.LCPI2_54:
	.dword	-290486608371679235             # 0xfbf7fbf7ffff7ffd
	.dword	290486608371679234              # 0x408040800008002
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_55:
	.dword	290486608371679235              # 0x408040800008003
	.dword	0                               # 0x0
	.dword	290486608371679235              # 0x408040800008003
	.dword	0                               # 0x0
.LCPI2_56:
	.dword	-4498506611395919872            # 0xc192181230000000
	.dword	-4616189618054758400            # 0xbff0000000000000
	.dword	-4498506611395919872            # 0xc192181230000000
	.dword	-4616189618054758400            # 0xbff0000000000000
.LCPI2_57:
	.dword	8173304783197065569             # 0x716d696573765161
	.dword	290495439161535797              # 0x4080c1014182d35
	.dword	8173304783197065569             # 0x716d696573765161
	.dword	290495439161535797              # 0x4080c1014182d35
.LCPI2_58:
	.dword	2314885530818470961             # 0x2020202020206431
	.dword	2314885530818453536             # 0x2020202020202020
	.dword	2314885530818470961             # 0x2020202020206431
	.dword	2314885530818453536             # 0x2020202020202020
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 352
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 256
	xvmulwev.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 288
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 256
	xvmulwev.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 224                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	xvmulwev.h.bu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_7)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvmulwev.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvmulwev.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvmulwev.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 256
	xvmulwev.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 256
	xvmulwev.w.hu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 256
	xvmulwev.w.hu	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvmulwev.w.hu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_20)
	xvst	$xr0, $sp, 256
	xvmulwev.w.hu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvmulwev.w.hu.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	lu52i.d	$a0, $zero, 2047
	xvreplgr2vr.d	$xr1, $a0
	xvmulwev.w.hu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 256
	xvmulwev.w.hu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_26)
	xvst	$xr2, $sp, 128                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 256
	xvmulwev.w.hu.h	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvrepli.d	$xr0, 13
	xvmulwev.w.hu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvmulwev.w.hu.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvmulwev.w.hu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_32)
	xvst	$xr0, $sp, 256
	xvmulwev.w.hu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	xvrepli.b	$xr0, 32
	xvmulwev.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvmulwev.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvmulwev.w.hu.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	xvst	$xr0, $sp, 256
	xvmulwev.w.hu.h	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_40)
	xvst	$xr0, $sp, 256
	xvrepli.w	$xr0, 1
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvmulwev.w.hu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	ori	$a0, $zero, 512
	xvreplgr2vr.w	$xr0, $a0
	xvmulwev.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvmulwev.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_44)
	xvst	$xr0, $sp, 256
	xvrepli.h	$xr0, -228
	xvmulwev.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_46)
	xvst	$xr0, $sp, 256
	xvmulwev.w.hu.h	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 32895
	ori	$a0, $a0, 2040
	xvreplgr2vr.w	$xr0, $a0
	xvst	$xr0, $sp, 256
	xvrepli.b	$xr0, 8
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvmulwev.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvmulwev.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_47)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvmulwev.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvmulwev.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_49)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvmulwev.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu32i.d	$a0, -2
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvmulwev.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvmulwev.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvmulwev.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_52)
	xvst	$xr0, $sp, 256
	xvmulwev.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvmulwev.q.du	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr1, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 395
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_53)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvmulwev.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 404
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_55)
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvmulwev.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvrepli.d	$xr0, 9
	xvmulwev.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 422
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	lu52i.d	$a0, $zero, -2048
	xvreplgr2vr.d	$xr0, $a0
	xvmulwev.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 431
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 440
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_56)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvmulwev.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 449
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_57)
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_58)
	xvst	$xr0, $sp, 256
	xvmulwev.q.du	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 458
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvrepli.w	$xr0, -15
	xvmulwev.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 467
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvmulwev.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 476
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -352
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvmulwev-2.c"
	.size	.L.str.5, 136

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
