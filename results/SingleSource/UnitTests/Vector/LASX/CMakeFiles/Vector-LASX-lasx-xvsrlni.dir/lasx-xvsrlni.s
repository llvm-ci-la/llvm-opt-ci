	.file	"lasx-xvsrlni.c"
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
	.dword	0                               # 0x0
	.dword	16843009                        # 0x1010101
	.dword	0                               # 0x0
	.dword	16843009                        # 0x1010101
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
.LCPI2_2:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
.LCPI2_3:
	.dword	-3996873209750749817            # 0xc88840fdf887fd87
	.dword	65562                           # 0x1001a
	.dword	-3345150810891110433            # 0xd193a30f94b9b7df
	.dword	4280811542                      # 0xff280016
.LCPI2_4:
	.byte	15                              # 0xf
	.byte	243                             # 0xf3
	.byte	251                             # 0xfb
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.byte	249                             # 0xf9
	.byte	241                             # 0xf1
	.byte	95                              # 0x5f
	.byte	251                             # 0xfb
	.byte	7                               # 0x7
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	17                              # 0x11
	.byte	241                             # 0xf1
	.byte	145                             # 0x91
	.byte	223                             # 0xdf
	.byte	190                             # 0xbe
	.byte	223                             # 0xdf
	.byte	110                             # 0x6e
	.byte	131                             # 0x83
	.byte	115                             # 0x73
	.byte	193                             # 0xc1
	.byte	41                              # 0x29
	.byte	23                              # 0x17
	.byte	31                              # 0x1f
	.byte	114                             # 0x72
	.byte	71                              # 0x47
	.byte	193                             # 0xc1
	.byte	39                              # 0x27
	.byte	225                             # 0xe1
	.byte	163                             # 0xa3
	.byte	191                             # 0xbf
.LCPI2_5:
	.byte	52                              # 0x34
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
	.byte	0                               # 0x0
	.byte	45                              # 0x2d
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	80                              # 0x50
	.byte	252                             # 0xfc
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
.LCPI2_6:
	.dword	33685760                        # 0x2020100
	.dword	117899781                       # 0x7070205
	.dword	33685760                        # 0x2020100
	.dword	117899781                       # 0x7070205
.LCPI2_7:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	63                              # 0x3f
	.byte	85                              # 0x55
	.byte	85                              # 0x55
	.byte	85                              # 0x55
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
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	63                              # 0x3f
	.byte	85                              # 0x55
	.byte	85                              # 0x55
	.byte	85                              # 0x55
	.byte	85                              # 0x55
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_8:
	.byte	168                             # 0xa8
	.byte	170                             # 0xaa
	.byte	86                              # 0x56
	.byte	85                              # 0x55
	.byte	252                             # 0xfc
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
	.byte	168                             # 0xa8
	.byte	170                             # 0xaa
	.byte	86                              # 0x56
	.byte	85                              # 0x55
	.byte	252                             # 0xfc
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
.LCPI2_9:
	.dword	71777214395778823               # 0xff00ff07070707
	.dword	117901063                       # 0x7070707
	.dword	71777214395778823               # 0xff00ff07070707
	.dword	117901063                       # 0x7070707
.LCPI2_10:
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_11:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
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
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
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
.LCPI2_12:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	22912                           # 0x5980
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	22912                           # 0x5980
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_13:
	.half	65535                           # 0xffff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_14:
	.dword	1152657617521213472             # 0xfff0fff00000020
	.dword	0                               # 0x0
	.dword	1152657617521213472             # 0xfff0fff00000020
	.dword	0                               # 0x0
.LCPI2_15:
	.half	1                               # 0x1
	.half	523                             # 0x20b
	.half	65025                           # 0xfe01
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	523                             # 0x20b
	.half	65025                           # 0xfe01
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_16:
	.dword	0                               # 0x0
	.dword	17733194119839807               # 0x3f003f003f003f
	.dword	0                               # 0x0
	.dword	17733194119839807               # 0x3f003f003f003f
.LCPI2_17:
	.half	8308                            # 0x2074
	.half	65530                           # 0xfffa
	.half	8312                            # 0x2078
	.half	65530                           # 0xfffa
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	8308                            # 0x2074
	.half	65530                           # 0xfffa
	.half	8312                            # 0x2078
	.half	65530                           # 0xfffa
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
.LCPI2_18:
	.half	116                             # 0x74
	.half	65530                           # 0xfffa
	.half	120                             # 0x78
	.half	65530                           # 0xfffa
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	116                             # 0x74
	.half	65530                           # 0xfffa
	.half	120                             # 0x78
	.half	65530                           # 0xfffa
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
	.half	65534                           # 0xfffe
.LCPI2_19:
	.dword	257199821613548                 # 0xe9ec0000e9ec
	.dword	71777214294589728               # 0xff00ff00ff0120
	.dword	257199821613548                 # 0xe9ec0000e9ec
	.dword	71777214294589728               # 0xff00ff00ff0120
.LCPI2_20:
	.half	288                             # 0x120
	.half	239                             # 0xef
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	288                             # 0x120
	.half	239                             # 0xef
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
.LCPI2_21:
	.dword	0                               # 0x0
	.dword	4609223079094599672             # 0x3ff73ff83ff73ff8
	.dword	0                               # 0x0
	.dword	4609223079094599672             # 0x3ff73ff83ff73ff8
.LCPI2_22:
	.half	49                              # 0x31
	.half	65504                           # 0xffe0
	.half	29                              # 0x1d
	.half	65501                           # 0xffdd
	.half	32                              # 0x20
	.half	65504                           # 0xffe0
	.half	29                              # 0x1d
	.half	65501                           # 0xffdd
	.half	49                              # 0x31
	.half	65504                           # 0xffe0
	.half	29                              # 0x1d
	.half	65501                           # 0xffdd
	.half	32                              # 0x20
	.half	65504                           # 0xffe0
	.half	29                              # 0x1d
	.half	65501                           # 0xffdd
.LCPI2_23:
	.dword	0                               # 0x0
	.dword	844437815230467                 # 0x3000300030003
	.dword	0                               # 0x0
	.dword	844437815230467                 # 0x3000300030003
.LCPI2_24:
	.dword	0                               # 0x0
	.dword	432352161297334272              # 0x600060000000000
	.dword	0                               # 0x0
	.dword	432352161297334272              # 0x600060000000000
.LCPI2_25:
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_26:
	.dword	279280248487425                 # 0xfe010000fe01
	.dword	-2449678921336094720            # 0xde00fe0000000000
	.dword	279280248487425                 # 0xfe010000fe01
	.dword	-2449678921336094720            # 0xde00fe0000000000
.LCPI2_27:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	32751                           # 0x7fef
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	32751                           # 0x7fef
.LCPI2_28:
	.dword	287948901175001088              # 0x3ff000000000000
	.dword	287948901242045439              # 0x3ff000003ff03ff
	.dword	287948901175001088              # 0x3ff000000000000
	.dword	287948901242045439              # 0x3ff000003ff03ff
.LCPI2_29:
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_30:
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
.LCPI2_31:
	.dword	-1                              # 0xffffffffffffffff
	.dword	15393162792448                  # 0xe0000000e00
	.dword	-1                              # 0xffffffffffffffff
	.dword	15393162792448                  # 0xe0000000e00
.LCPI2_32:
	.half	65464                           # 0xffb8
	.half	1                               # 0x1
	.half	65279                           # 0xfeff
	.half	0                               # 0x0
	.half	65520                           # 0xfff0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65464                           # 0xffb8
	.half	1                               # 0x1
	.half	65279                           # 0xfeff
	.half	0                               # 0x0
	.half	65520                           # 0xfff0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_33:
	.dword	15                              # 0xf
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_34:
	.word	4294967040                      # 0xffffff00
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_35:
	.dword	0                               # 0x0
	.dword	4393751544831                   # 0x3ff000003ff
	.dword	0                               # 0x0
	.dword	4393751544831                   # 0x3ff000003ff
.LCPI2_36:
	.word	0                               # 0x0
	.word	4294967038                      # 0xfffffefe
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967038                      # 0xfffffefe
	.word	4294967038                      # 0xfffffefe
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_37:
	.dword	0                               # 0x0
	.dword	142733031511785104              # 0x1fb16ef98f97e90
	.dword	0                               # 0x0
	.dword	142733031511785104              # 0x1fb16ef98f97e90
.LCPI2_38:
	.word	2566487696                      # 0x98f97e90
	.word	3370824278                      # 0xc8eab256
	.word	33232623                        # 0x1fb16ef
	.word	3523733760                      # 0xd207e900
	.word	2566487696                      # 0x98f97e90
	.word	3370824278                      # 0xc8eab256
	.word	33232623                        # 0x1fb16ef
	.word	3523733760                      # 0xd207e900
.LCPI2_39:
	.dword	0                               # 0x0
	.dword	4611686021380178733             # 0x40000000b000032d
	.dword	0                               # 0x0
	.dword	4611686021380178733             # 0x40000000b000032d
.LCPI2_40:
	.word	52090                           # 0xcb7a
	.word	15980                           # 0x3e6c
	.word	0                               # 0x0
	.word	16400                           # 0x4010
	.word	52090                           # 0xcb7a
	.word	15980                           # 0x3e6c
	.word	0                               # 0x0
	.word	16400                           # 0x4010
.LCPI2_41:
	.dword	2251795519242239                # 0x7ffff0007ffff
	.dword	30064771079                     # 0x700000007
	.dword	2251795519242239                # 0x7ffff0007ffff
	.dword	30064771079                     # 0x700000007
.LCPI2_42:
	.dword	252254080812974080              # 0x3802fc000000000
	.dword	0                               # 0x0
	.dword	252254080812974080              # 0x3802fc000000000
	.dword	0                               # 0x0
.LCPI2_43:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4227858432                      # 0xfc000000
	.word	4227872770                      # 0xfc003802
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4227858432                      # 0xfc000000
	.word	4227872770                      # 0xfc003802
.LCPI2_44:
	.word	16384                           # 0x4000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	8192                            # 0x2000
	.word	16384                           # 0x4000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	8192                            # 0x2000
.LCPI2_45:
	.dword	142993669068948476              # 0x1fc03fc01fc03fc
	.dword	-4                              # 0xfffffffffffffffc
	.dword	142993669068948476              # 0x1fc03fc01fc03fc
	.dword	-4                              # 0xfffffffffffffffc
.LCPI2_46:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_47:
	.dword	524280                          # 0x7fff8
	.dword	2251765454995440                # 0x7fff8000ffff0
	.dword	524280                          # 0x7fff8
	.dword	2251765454995440                # 0x7fff8000ffff0
.LCPI2_48:
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
.LCPI2_49:
	.dword	562941363552257                 # 0x1fffe00010001
	.dword	562941363552255                 # 0x1fffe0000ffff
	.dword	562941363552257                 # 0x1fffe00010001
	.dword	562941363552255                 # 0x1fffe0000ffff
.LCPI2_50:
	.dword	0                               # 0x0
	.dword	2161727821641162752             # 0x1e0000001e002000
	.dword	0                               # 0x0
	.dword	2161727821641162752             # 0x1e0000001e002000
.LCPI2_51:
	.dword	4503664051879951                # 0x10000f0000000f
	.dword	9007263679250447                # 0x20000f0000000f
	.dword	4503664051879951                # 0x10000f0000000f
	.dword	9007263679250447                # 0x20000f0000000f
.LCPI2_52:
	.dword	71574531                        # 0x4442403
	.dword	0                               # 0x0
	.dword	71574531                        # 0x4442403
	.dword	0                               # 0x0
.LCPI2_53:
	.dword	1880560806837687315             # 0x1a19181716151413
	.dword	2459282189542300699             # 0x2221201f1e1d1c1b
	.dword	1880560806837687315             # 0x1a19181716151413
	.dword	2459282189542300699             # 0x2221201f1e1d1c1b
.LCPI2_54:
	.dword	4294914597                      # 0xffff3225
	.dword	0                               # 0x0
	.dword	4294914597                      # 0xffff3225
	.dword	0                               # 0x0
.LCPI2_55:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_56:
	.dword	-1044411245354877206            # 0xf18181818132feea
	.dword	36733046841442432               # 0x828082f0808080
	.dword	-1044411245354877206            # 0xf18181818132feea
	.dword	36733046841442432               # 0x828082f0808080
.LCPI2_57:
	.dword	1382586020242915328             # 0x132feea900000000
	.dword	353578127870924824              # 0x4e8296f18181818
	.dword	1382586020242915328             # 0x132feea900000000
	.dword	353578127870924824              # 0x4e8296f18181818
.LCPI2_58:
	.dword	578721348346972192              # 0x808080008280820
	.dword	578721348346972207              # 0x80808000828082f
	.dword	578721348346972192              # 0x808080008280820
	.dword	578721348346972207              # 0x80808000828082f
.LCPI2_59:
	.dword	0                               # 0x0
	.dword	-287948901174984768             # 0xfc01000000003fc0
	.dword	0                               # 0x0
	.dword	-287948901174984768             # 0xfc01000000003fc0
.LCPI2_60:
	.dword	1069562812                      # 0x3fc03bbc
	.dword	-143554428622734335             # 0xfe01fe01fc01fc01
	.dword	1069562812                      # 0x3fc03bbc
	.dword	-143554428622734335             # 0xfe01fe01fc01fc01
.LCPI2_61:
	.dword	18014398446567424               # 0x3ffffffc400000
	.dword	77070344                        # 0x4980008
	.dword	18014398446567424               # 0x3ffffffc400000
	.dword	77070344                        # 0x4980008
.LCPI2_62:
	.dword	1224979094618243078             # 0x10ffffff10000006
	.dword	1152921500580315142             # 0xfffffff10000006
	.dword	1224979094618243078             # 0x10ffffff10000006
	.dword	1152921500580315142             # 0xfffffff10000006
.LCPI2_63:
	.dword	2690091943336886304             # 0x2555205ea7bc4020
	.dword	4932502016                      # 0x126000200
	.dword	2690091943336886304             # 0x2555205ea7bc4020
	.dword	4932502016                      # 0x126000200
.LCPI2_64:
	.dword	0                               # 0x0
	.dword	38280081302880135               # 0x87ff87f807ff87
	.dword	0                               # 0x0
	.dword	38280081302880135               # 0x87ff87f807ff87
.LCPI2_65:
	.dword	-4223219868303600               # 0xfff0ff00fff0ff10
	.dword	67553994426286096               # 0xf0000000f00010
	.dword	-4223219868303600               # 0xfff0ff00fff0ff10
	.dword	67553994426286096               # 0xf0000000f00010
.LCPI2_66:
	.dword	0                               # 0x0
	.dword	281474976710655                 # 0xffffffffffff
	.dword	0                               # 0x0
	.dword	281474976710655                 # 0xffffffffffff
.LCPI2_67:
	.dword	62922745                        # 0x3c01ff9
	.dword	0                               # 0x0
	.dword	62922745                        # 0x3c01ff9
	.dword	5120                            # 0x1400
.LCPI2_68:
	.dword	-1113797574026018159            # 0xf08aff01f07cc291
	.dword	-1150671392983155175            # 0xf007fe76f008fe19
	.dword	-1113797574026018159            # 0xf08aff01f07cc291
	.dword	-1150671392983155175            # 0xf007fe76f008fe19
.LCPI2_69:
	.dword	-72340172838076674              # 0xfefefefefefefefe
	.dword	327685                          # 0x50005
	.dword	-72340172838076674              # 0xfefefefefefefefe
	.dword	1407396358717445                # 0x5000500050005
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
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 224
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 128
	xvsrlni.b.h	$xr0, $xr0, 9
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 128
	xvsrlni.b.h	$xr2, $xr1, 15
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 128
	xvsrlni.b.h	$xr2, $xr1, 1
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 128
	xvsrlni.b.h	$xr2, $xr1, 13
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 128
	xvsrlni.b.h	$xr2, $xr1, 5
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvsrlni.b.h	$xr0, $xr0, 8
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvsrlni.b.h	$xr0, $xr0, 6
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvsrlni.h.w	$xr1, $xr0, 2
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -130562
	pcalau12i	$a1, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_13)
	ori	$a0, $a0, 31
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 128
	xvsrlni.h.w	$xr0, $xr0, 11
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.h.w	$xr0, $xr1, 20
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	xvrepli.b	$xr1, -1
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 128
	xvori.b	$xr0, $xr1, 0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.h.w	$xr0, $xr1, 26
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_18)
	xvrepli.h	$xr2, 511
	xvst	$xr2, $sp, 128
	xvsrlni.h.w	$xr1, $xr0, 23
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	lu12i.w	$a0, -90418
	ori	$a0, $a0, 2540
	lu32i.d	$a0, 0
	xvreplgr2vr.d	$xr1, $a0
	xvsrlni.h.w	$xr0, $xr1, 0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.h.w	$xr1, $xr0, 18
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 128
	lu12i.w	$a0, 3
	ori	$a0, $a0, 4095
	xvreplgr2vr.w	$xr0, $a0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.h.w	$xr0, $xr1, 12
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_25)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvsrlni.h.w	$xr0, $xr1, 7
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	xvst	$xr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	lu12i.w	$a0, 4080
	ori	$a0, $a0, 255
	xvreplgr2vr.d	$xr1, $a0
	xvsrlni.h.w	$xr0, $xr1, 7
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_30)
	xvst	$xr0, $sp, 128
	xvsrlni.h.w	$xr2, $xr1, 22
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 128
	lu12i.w	$a0, 224
	ori	$a0, $a0, 14
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvsrlni.h.w	$xr0, $xr1, 8
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvsrlni.h.w	$xr1, $xr0, 17
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvsrlni.w.d	$xr0, $xr0, 31
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvsrlni.w.d	$xr0, $xr0, 29
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.w.d	$xr0, $xr1, 28
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_36)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.w.d	$xr1, $xr0, 54
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.w.d	$xr1, $xr0, 0
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_40)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.w.d	$xr1, $xr0, 6
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	xvst	$xr0, $sp, 128
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	xvreplgr2vr.d	$xr0, $a1
	lu32i.d	$a0, 65535
	xvreplgr2vr.d	$xr1, $a0
	xvsrlni.w.d	$xr1, $xr0, 45
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_43)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.w.d	$xr0, $xr1, 20
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_44)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvsrlni.w.d	$xr0, $xr1, 57
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	lu12i.w	$a0, 15
	ori	$s1, $a0, 4095
	xvreplgr2vr.w	$xr0, $s1
	xvsrlni.d.q	$xr1, $xr0, 115
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_46)
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 128
	lu12i.w	$a0, 2032
	ori	$a0, $a0, 255
	xvreplgr2vr.w	$xr0, $a0
	xvsrlni.d.q	$xr1, $xr0, 62
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_49)
	xvst	$xr0, $sp, 128
	xvsrlni.d.q	$xr2, $xr1, 29
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_51)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.d.q	$xr1, $xr0, 39
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_54)
	xvst	$xr0, $sp, 128
	xvsrlni.d.q	$xr2, $xr1, 99
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvsrlni.d.q	$xr0, $xr0, 102
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_55)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvsrlni.d.q	$xr0, $xr1, 90
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_57)
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_58)
	xvst	$xr0, $sp, 128
	xvsrlni.d.q	$xr2, $xr1, 36
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvsrlni.d.q	$xr0, $xr0, 67
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_59)
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_60)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.d.q	$xr1, $xr0, 16
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_61)
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_63)
	xvst	$xr0, $sp, 128
	xvsrlni.d.q	$xr2, $xr1, 70
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_64)
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_65)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlni.d.q	$xr1, $xr0, 13
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvsrlni.d.q	$xr0, $xr0, 104
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 395
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_66)
	xvst	$xr0, $sp, 128
	xvreplgr2vr.d	$xr0, $s1
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvsrlni.d.q	$xr1, $xr0, 80
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 404
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_67)
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_68)
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_69)
	xvst	$xr0, $sp, 128
	xvsrlni.d.q	$xr2, $xr1, 102
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -224
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvsrlni.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
