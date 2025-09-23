	.file	"lasx-xvmaddwod-1.c"
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
	.dword	72057594037927935               # 0xffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	72057594037927935               # 0xffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_1:
	.dword	0                               # 0x0
	.dword	1688849860526080                # 0x6000000040000
	.dword	0                               # 0x0
	.dword	1688849860526080                # 0x6000000040000
.LCPI2_2:
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
.LCPI2_3:
	.dword	1161946433757122592             # 0x1020102010201020
	.dword	1166736181285621792             # 0x1031146010201020
	.dword	1161946433757122592             # 0x1020102010201020
	.dword	1166736181285621792             # 0x1031146010201020
.LCPI2_4:
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
	.byte	223                             # 0xdf
	.byte	239                             # 0xef
.LCPI2_5:
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	157                             # 0x9d
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	64                              # 0x40
	.byte	192                             # 0xc0
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
	.byte	157                             # 0x9d
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	64                              # 0x40
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_6:
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
.LCPI2_7:
	.dword	4412750543122677053             # 0x3d3d3d3d3d3d3d3d
	.dword	0                               # 0x0
	.dword	4412750543122677053             # 0x3d3d3d3d3d3d3d3d
	.dword	0                               # 0x0
.LCPI2_8:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-256                            # 0xffffffffffffff00
	.dword	-1                              # 0xffffffffffffffff
	.dword	-256                            # 0xffffffffffffff00
.LCPI2_9:
	.dword	-7721426706497536000            # 0x94d7fb5200000000
	.dword	1095216660480                   # 0xff00000000
	.dword	-7721426706497536000            # 0x94d7fb5200000000
	.dword	1095216660480                   # 0xff00000000
.LCPI2_10:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	74                              # 0x4a
	.byte	77                              # 0x4d
	.byte	234                             # 0xea
	.byte	56                              # 0x38
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
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	74                              # 0x4a
	.byte	77                              # 0x4d
	.byte	234                             # 0xea
	.byte	56                              # 0x38
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_11:
	.byte	206                             # 0xce
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	206                             # 0xce
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_12:
	.dword	68438282665984                  # 0x3e3e87870000
	.dword	4294967039                      # 0xfffffeff
	.dword	68439343793798                  # 0x3e3ec6c68686
	.dword	-1099511628033                  # 0xfffffefffffffeff
.LCPI2_13:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
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
.LCPI2_14:
	.word	2273771520                      # 0x87870000
	.word	16191                           # 0x3f3f
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3334899591                      # 0xc6c68787
	.word	16191                           # 0x3f3f
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_15:
	.dword	116249861170003968              # 0x19d00a2003a0000
	.dword	143552762138067216              # 0x1fe007a01c40110
	.dword	116249861170003961              # 0x19d00a20039fff9
	.dword	143552762138067216              # 0x1fe007a01c40110
.LCPI2_16:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	7                               # 0x7
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
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
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.word	3801088                         # 0x3a0000
	.word	27066530                        # 0x19d00a2
	.word	29622544                        # 0x1c40110
	.word	33423482                        # 0x1fe007a
	.word	3801088                         # 0x3a0000
	.word	27066530                        # 0x19d00a2
	.word	29622544                        # 0x1c40110
	.word	33423482                        # 0x1fe007a
.LCPI2_19:
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
.LCPI2_20:
	.half	10112                           # 0x2780
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	10112                           # 0x2780
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_21:
	.dword	267353124298751                 # 0xf3280000dfff
	.dword	-4294901761                     # 0xffffffff0000ffff
	.dword	77541339594617                  # 0x468600007f79
	.dword	281470681808768                 # 0xffff0000ff80
.LCPI2_22:
	.word	2147450879                      # 0x7fff7fff
	.word	32767                           # 0x7fff
	.word	2147450879                      # 0x7fff7fff
	.word	2147418621                      # 0x7fff01fd
	.word	2147450879                      # 0x7fff7fff
	.word	2147450879                      # 0x7fff7fff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_23:
	.dword	-476741369984                   # 0xffffff90ffffff80
	.dword	0                               # 0x0
	.dword	-476741369984                   # 0xffffff90ffffff80
	.dword	0                               # 0x0
.LCPI2_24:
	.word	2147483648                      # 0x80000000
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	2147483648                      # 0x80000000
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI2_25:
	.dword	9218868437227405312             # 0x7ff0000000000000
	.dword	4552127183900971084             # 0x3f2c678e38d1104c
	.dword	9218868437227405312             # 0x7ff0000000000000
	.dword	4552127183900971084             # 0x3f2c678e38d1104c
.LCPI2_26:
	.word	4294967295                      # 0xffffffff
	.word	4294814378                      # 0xfffdaaaa
	.word	4294705151                      # 0xfffbffff
	.word	4294574079                      # 0xfff9ffff
	.word	4294967295                      # 0xffffffff
	.word	4294814378                      # 0xfffdaaaa
	.word	4294705151                      # 0xfffbffff
	.word	4294574079                      # 0xfff9ffff
.LCPI2_27:
	.dword	4611686018368404633             # 0x3ffffffffc7bfc99
	.dword	0                               # 0x0
	.dword	4611686018368404633             # 0x3ffffffffc7bfc99
	.dword	0                               # 0x0
.LCPI2_28:
	.word	16907664                        # 0x101fd90
	.word	50529127                        # 0x3030367
	.word	33751040                        # 0x2030000
	.word	0                               # 0x0
	.word	16907664                        # 0x101fd90
	.word	50529127                        # 0x3030367
	.word	33751040                        # 0x2030000
	.word	0                               # 0x0
.LCPI2_29:
	.word	4244733184                      # 0xfd017d00
	.word	4294967295                      # 0xffffffff
	.word	2063563776                      # 0x7aff7c00
	.word	12                              # 0xc
	.word	4244733184                      # 0xfd017d00
	.word	4294967295                      # 0xffffffff
	.word	2063563776                      # 0x7aff7c00
	.word	12                              # 0xc
.LCPI2_30:
	.dword	4611686018418933760             # 0x3fffffffff7f0000
	.dword	0                               # 0x0
	.dword	4611686018418933760             # 0x3fffffffff7f0000
	.dword	0                               # 0x0
.LCPI2_31:
	.word	0                               # 0x0
	.word	4286578688                      # 0xff800000
	.word	4286578688                      # 0xff800000
	.word	4286578688                      # 0xff800000
	.word	4286578688                      # 0xff800000
	.word	4286578688                      # 0xff800000
	.word	4286578688                      # 0xff800000
	.word	4286578688                      # 0xff800000
.LCPI2_32:
	.word	65536                           # 0x10000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_33:
	.word	32                              # 0x20
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	32                              # 0x20
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
.LCPI2_34:
	.dword	144115196699344898              # 0x200000202000002
	.dword	0                               # 0x0
	.dword	144115196699344898              # 0x200000202000002
	.dword	0                               # 0x0
.LCPI2_35:
	.word	1048704                         # 0x100080
	.word	0                               # 0x0
	.word	128                             # 0x80
	.word	0                               # 0x0
	.word	1048704                         # 0x100080
	.word	0                               # 0x0
	.word	128                             # 0x80
	.word	0                               # 0x0
.LCPI2_36:
	.word	0                               # 0x0
	.word	256                             # 0x100
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	256                             # 0x100
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_37:
	.dword	-107931355907620872             # 0xfe808d00eefffff8
	.dword	-16712063                       # 0xffffffffff00fe81
	.dword	-8                              # 0xfffffffffffffff8
	.dword	0                               # 0x0
.LCPI2_38:
	.dword	-51230361316753408              # 0xff49fe4200000000
	.dword	-143272949302559198             # 0xfe02fe02fee5fe22
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_39:
	.dword	-8                              # 0xfffffffffffffff8
	.dword	-8388608                        # 0xffffffffff800000
	.dword	-8                              # 0xfffffffffffffff8
	.dword	0                               # 0x0
.LCPI2_40:
	.dword	-576188069258928128             # 0xf800f800f800e000
	.dword	-576188069258928128             # 0xf800f800f800e000
	.dword	-504411954492760064             # 0xf8fff7fff7ffa000
	.dword	-576188073537191681             # 0xf800f7fff8ffc0ff
.LCPI2_41:
	.dword	1125882727366656                # 0x3fffc00060000
	.dword	1                               # 0x1
	.dword	147210291968737280              # 0x20afefb08140000
	.dword	281479271743488                 # 0x1000100010000
.LCPI2_42:
	.dword	1095216660480                   # 0xff00000000
	.dword	0                               # 0x0
	.dword	-16777216                       # 0xffffffffff000000
	.dword	-280375465082881                # 0xffff00ffffffffff
.LCPI2_43:
	.dword	-576188069258928128             # 0xf800f800f800e000
	.dword	-576188069258928128             # 0xf800f800f800e000
	.dword	-576188069258944512             # 0xf800f800f800a000
	.dword	-576188069258936320             # 0xf800f800f800c000
.LCPI2_44:
	.dword	262146                          # 0x40002
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI2_45:
	.dword	7133701809754865664             # 0x6300000000000000
	.dword	-3566850904877432834            # 0xce7ffffffffffffe
	.dword	7133701809754865664             # 0x6300000000000000
	.dword	-3566850904877432834            # 0xce7ffffffffffffe
.LCPI2_46:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-7133701809754865665            # 0x9cffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-7133701809754865665            # 0x9cffffffffffffff
.LCPI2_47:
	.dword	-3321888769                     # 0xffffffff39ffffff
	.dword	0                               # 0x0
	.dword	-3321888769                     # 0xffffffff39ffffff
	.dword	0                               # 0x0
.LCPI2_48:
	.dword	4611686018427387904             # 0x4000000000000000
	.dword	0                               # 0x0
	.dword	4611686018427387904             # 0x4000000000000000
	.dword	0                               # 0x0
.LCPI2_49:
	.dword	656773514002432                 # 0x2555500000000
	.dword	524288                          # 0x80000
	.dword	656773514002432                 # 0x2555500000000
	.dword	524288                          # 0x80000
.LCPI2_50:
	.dword	1537598291968                   # 0x16600000000
	.dword	0                               # 0x0
	.dword	1537598291968                   # 0x16600000000
	.dword	0                               # 0x0
.LCPI2_51:
	.dword	6148914690870214656             # 0x555555553f800000
	.dword	0                               # 0x0
	.dword	6148914690870214656             # 0x555555553f800000
	.dword	0                               # 0x0
.LCPI2_52:
	.dword	-2206375271561343392            # 0xe161616161614e60
	.dword	-2206375271561338527            # 0xe161616161616161
	.dword	-2206375271561343392            # 0xe161616161614e60
	.dword	-2206375271561338527            # 0xe161616161616161
.LCPI2_53:
	.dword	98785755159                     # 0x1700170017
	.dword	23                              # 0x17
	.dword	98785755159                     # 0x1700170017
	.dword	23                              # 0x17
.LCPI2_54:
	.dword	-9165332398978466048            # 0x80ce32be3e827f00
	.dword	4679239878077571928             # 0x40efffe09fa7e358
	.dword	7712355598150385409             # 0x6b07ca8e013fbf01
	.dword	4679239878077612640             # 0x40efffe09fa88260
.LCPI2_55:
	.dword	-71778313814736257              # 0xff00fe00fe7f027f
	.dword	4286513408                      # 0xff7f0100
	.dword	4286513791                      # 0xff7f027f
	.dword	4286578559                      # 0xff7fff7f
.LCPI2_56:
	.dword	9187482879951602047             # 0x7f807f007f7f817f
	.dword	-6919641256058453633            # 0x9ff87ef07f7f817f
	.dword	9187482879951602047             # 0x7f807f007f7f817f
	.dword	-6919641256058453633            # 0x9ff87ef07f7f817f
.LCPI2_57:
	.dword	0                               # 0x0
	.dword	4679239875398991872             # 0x40efffe000000000
	.dword	0                               # 0x0
	.dword	4679239875398991872             # 0x40efffe000000000
.LCPI2_58:
	.dword	0                               # 0x0
	.dword	289360691352306692              # 0x404040404040404
	.dword	0                               # 0x0
	.dword	289360691352306692              # 0x404040404040404
.LCPI2_59:
	.dword	100                             # 0x64
	.dword	1921                            # 0x781
	.dword	100                             # 0x64
	.dword	0                               # 0x0
.LCPI2_60:
	.dword	0                               # 0x0
	.dword	255                             # 0xff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_61:
	.dword	0                               # 0x0
	.dword	8830452762632                   # 0x80800000808
	.dword	0                               # 0x0
	.dword	8830452762632                   # 0x80800000808
.LCPI2_62:
	.dword	277283088694336                 # 0xfc300000fc40
	.dword	0                               # 0x0
	.dword	277283088694336                 # 0xfc300000fc40
	.dword	0                               # 0x0
.LCPI2_63:
	.dword	-1614813453                     # 0xffffffff9fbfe6f3
	.dword	1614813452                      # 0x6040190c
	.dword	-1614813453                     # 0xffffffff9fbfe6f3
	.dword	1614813452                      # 0x6040190c
.LCPI2_64:
	.dword	0                               # 0x0
	.dword	1614813453                      # 0x6040190d
	.dword	0                               # 0x0
	.dword	1614813453                      # 0x6040190d
.LCPI2_65:
	.dword	1463062499                      # 0x57348fe3
	.dword	4294967296                      # 0x100000000
	.dword	1463062499                      # 0x57348fe3
	.dword	4294967296                      # 0x100000000
.LCPI2_66:
	.dword	1325399552                      # 0x4efffe00
	.dword	38250                           # 0x956a
	.dword	1325399552                      # 0x4efffe00
	.dword	38250                           # 0x956a
.LCPI2_67:
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967295                      # 0xffffffff
.LCPI2_68:
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_69:
	.dword	-280371170115583                # 0xffff010100000001
	.dword	0                               # 0x0
	.dword	-280371170115583                # 0xffff010100000001
	.dword	0                               # 0x0
.LCPI2_70:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_71:
	.dword	-1                              # 0xffffffffffffffff
	.dword	18014398509481983               # 0x3fffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	18014398509481983               # 0x3fffffffffffff
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
	xvst	$xr0, $sp, 192
	xvrepli.b	$xr1, 0
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	xvmaddwod.h.b	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 28
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvmaddwod.h.b	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 39
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.h.b	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 50
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 524279
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 192
	xvldi	$xr1, -1777
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.h.b	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 61
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 32
	xvreplgr2vr.h	$xr2, $a0
	xvmaddwod.h.b	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 72
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.h.b	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 83
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
	ori	$a4, $zero, 94
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	ori	$a0, $zero, 2056
	xvreplgr2vr.w	$xr1, $a0
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	xvmaddwod.h.b	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 105
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.h.b	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 192
	lu12i.w	$a0, -113
	ori	$a0, $a0, 4095
	xvreplgr2vr.w	$xr1, $a0
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.h.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 127
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.h.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 138
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16
	ori	$a0, $a0, 513
	lu32i.d	$a0, 512
	pcalau12i	$a1, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_11)
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 192
	xvldi	$xr1, -3838
	xvmaddwod.h.b	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 149
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 382
	xvst	$xr0, $sp, 192
	xvrepli.h	$xr1, 63
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.w.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 160
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_14)
	xvst	$xr0, $sp, 192
	xvrepli.b	$xr0, 1
	xvmaddwod.w.h	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 171
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_18)
	xvst	$xr0, $sp, 192
	xvmaddwod.w.h	$xr3, $xr2, $xr1
	xvst	$xr3, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 182
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_19)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.w.h	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 193
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.w.h	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 204
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.d.w	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.d.w	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 226
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.d.w	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 237
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.d.w	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 248
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.d.w	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 259
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_30)
	xvst	$xr0, $sp, 192
	xvmaddwod.d.w	$xr3, $xr2, $xr1
	xvst	$xr3, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 270
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_32)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvmaddwod.d.w	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 281
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvmaddwod.d.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 292
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvldi	$xr0, -1744
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.d.w	$xr1, $xr0, $xr2
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 303
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.d.w	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr0, $sp, 192
	xvrepli.d	$xr1, 8
	xvmaddwod.d.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 325
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_36)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvmaddwod.d.w	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 336
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 192
	xvmaddwod.q.du.d	$xr2, $xr1, $xr2
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 347
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.q.d	$xr1, $xr1, $xr1
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 358
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_43)
	xvst	$xr0, $sp, 192
	xvmaddwod.q.d	$xr3, $xr2, $xr1
	xvst	$xr3, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 369
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_44)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.q.du.d	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 380
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvmaddwod.q.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 391
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 2047
	xvreplgr2vr.d	$xr1, $a0
	xvmaddwod.q.du.d	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 402
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_47)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.q.d	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_49)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.q.du	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 424
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_51)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.q.du.d	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 435
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_52)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.q.du	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 446
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.q.du.d	$xr1, $xr1, $xr1
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 457
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvmaddwod.q.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 468
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_53)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.q.du.d	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 479
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 490
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_57)
	xvst	$xr0, $sp, 192
	xvmaddwod.q.du	$xr3, $xr2, $xr1
	xvst	$xr3, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 501
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_58)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.q.du	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 512
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr0, $a0
	xvmaddwod.q.du.d	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 523
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_59)
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_60)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.q.du.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 534
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.q.du.d	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 545
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_61)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.q.du	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 556
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_62)
	xvrepli.d	$xr1, 2
	xvst	$xr1, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.q.d	$xr1, $xr2, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 567
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.q.du.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 578
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvmaddwod.q.du.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 589
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvrepli.b	$xr0, 61
	xvmaddwod.q.du.d	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 600
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_63)
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_64)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvld	$xr2, $sp, 128                  # 32-byte Folded Reload
	xvmaddwod.q.du	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 611
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_65)
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_66)
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_67)
	xvst	$xr0, $sp, 192
	xvmaddwod.q.du	$xr2, $xr1, $xr1
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 622
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_68)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwod.q.d	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 633
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 644
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvmaddwod.q.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 655
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
	ori	$a4, $zero, 666
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_69)
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_70)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvmaddwod.q.du	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 677
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_71)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwod.q.du	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 688
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvmaddwod-1.c"
	.size	.L.str.5, 137

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
