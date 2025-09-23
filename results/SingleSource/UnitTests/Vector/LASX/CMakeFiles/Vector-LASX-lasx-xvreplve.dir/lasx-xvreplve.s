	.file	"lasx-xvreplve.c"
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
	.dword	1157442765409226768             # 0x1010101010101010
	.dword	1157442765409226768             # 0x1010101010101010
	.dword	144680345676153346              # 0x202020202020202
	.dword	144680345676153346              # 0x202020202020202
.LCPI2_1:
	.byte	16                              # 0x10
	.byte	33                              # 0x21
	.byte	46                              # 0x2e
	.byte	1                               # 0x1
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
	.byte	2                               # 0x2
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	63                              # 0x3f
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
	.byte	63                              # 0x3f
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
.LCPI2_3:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
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
	.byte	127                             # 0x7f
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
.LCPI2_4:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
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
	.byte	0                               # 0x0
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
.LCPI2_5:
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_6:
	.byte	4                               # 0x4
	.byte	4                               # 0x4
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
	.byte	4                               # 0x4
	.byte	4                               # 0x4
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
.LCPI2_7:
	.dword	281479271743489                 # 0x1000100010001
	.dword	281479271743489                 # 0x1000100010001
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_8:
	.half	1                               # 0x1
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
	.half	0                               # 0x0
.LCPI2_9:
	.half	65535                           # 0xffff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	32512                           # 0x7f00
	.half	54528                           # 0xd500
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	32512                           # 0x7f00
	.half	54528                           # 0xd500
	.half	65280                           # 0xff00
.LCPI2_10:
	.half	0                               # 0x0
	.half	12288                           # 0x3000
	.half	6162                            # 0x1812
	.half	49554                           # 0xc192
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	49136                           # 0xbff0
	.half	0                               # 0x0
	.half	12288                           # 0x3000
	.half	6162                            # 0x1812
	.half	49554                           # 0xc192
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	49136                           # 0xbff0
.LCPI2_11:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	32751                           # 0x7fef
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	32751                           # 0x7fef
.LCPI2_12:
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	29                              # 0x1d
	.half	29                              # 0x1d
	.half	32739                           # 0x7fe3
	.half	32739                           # 0x7fe3
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	29                              # 0x1d
	.half	29                              # 0x1d
	.half	32739                           # 0x7fe3
	.half	32739                           # 0x7fe3
.LCPI2_13:
	.half	262                             # 0x106
	.half	199                             # 0xc7
	.half	263                             # 0x107
	.half	127                             # 0x7f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	262                             # 0x106
	.half	199                             # 0xc7
	.half	263                             # 0x107
	.half	127                             # 0x7f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_14:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_15:
	.dword	254                             # 0xfe
	.dword	-261                            # 0xfffffffffffffefb
	.dword	254                             # 0xfe
	.dword	-261                            # 0xfffffffffffffefb
.LCPI2_16:
	.dword	-2206375271561343392            # 0xe161616161614e60
	.dword	-2206375271561338527            # 0xe161616161616161
	.dword	-2206375271561343392            # 0xe161616161614e60
	.dword	-2206375271561338527            # 0xe161616161616161
.LCPI2_17:
	.dword	16711935                        # 0xff00ff
	.dword	0                               # 0x0
	.dword	16711935                        # 0xff00ff
	.dword	0                               # 0x0
.LCPI2_18:
	.dword	514                             # 0x202
	.dword	8388736                         # 0x800080
	.dword	514                             # 0x202
	.dword	8388736                         # 0x800080
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
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 288
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	lu12i.w	$a0, 15
	ori	$s1, $a0, 4095
	xvreplve.b	$xr0, $xr0, $s1
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 25
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 33
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvreplve.b	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 41
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 160
	xvreplve.b	$xr0, $xr1, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 49
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvreplve.b	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 57
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 65
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	xvrepli.b	$xr1, -1
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 160
	xvreplve.b	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 73
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 81
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvreplve.b	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 97
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 105
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	ori	$a0, $zero, 255
	xvreplve.b	$xr0, $xr0, $a0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 113
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	lu12i.w	$a0, 3
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr0, $a0
	xvreplve.b	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 121
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	xvrepli.b	$xr1, 64
	xvst	$xr1, $sp, 160
	xvreplve.b	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 129
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	xvrepli.b	$xr1, 4
	xvst	$xr1, $sp, 160
	xvreplve.b	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 137
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 145
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvrepli.w	$xr0, 2
	addi.d	$s2, $zero, -1
	xvreplve.b	$xr0, $xr0, $s2
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 153
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	lu12i.w	$a0, 246976
	ori	$a0, $a0, 2652
	xvreplve.h	$xr0, $xr0, $a0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 160
	xvreplve.h	$xr0, $xr1, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 169
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.h	$xr0, 63
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	xvrepli.d	$xr0, 63
	ori	$s3, $zero, 1024
	xvreplve.h	$xr0, $xr0, $s3
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 177
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvreplve.h	$xr0, $xr0, $s3
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 185
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvreplve.h	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 193
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvreplve.h	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 201
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvreplve.h	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 209
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 217
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 225
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 7
	pcalau12i	$a1, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_11)
	ori	$a0, $a0, 4079
	xvreplgr2vr.h	$xr1, $a0
	xvst	$xr1, $sp, 160
	xvreplve.h	$xr0, $xr0, $s2
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvreplve.h	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 241
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	xvrepli.h	$xr1, 262
	xvst	$xr1, $sp, 160
	xvreplve.h	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 249
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 257
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvreplve.w	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 265
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvreplve.w	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 273
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 32
	xvst	$xr0, $sp, 160
	lu12i.w	$a0, 131586
	ori	$a0, $a0, 32
	xvreplgr2vr.d	$xr0, $a0
	xvreplve.w	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 281
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvreplve.w	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 289
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 254
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 160
	lu12i.w	$a0, 366613
	ori	$a0, $a0, 3328
	xvreplve.d	$xr0, $xr1, $a0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 297
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1451
	xvreplgr2vr.w	$xr0, $a0
	xvst	$xr0, $sp, 160
	xvreplve.d	$xr0, $xr0, $s1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 398868
	ori	$a0, $a0, 3680
	lu32i.d	$a0, 90465
	pcalau12i	$a1, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_16)
	lu52i.d	$a0, $a0, -490
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 160
	xvreplve.d	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 313
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 128
	xvst	$xr0, $sp, 160
	ori	$a0, $zero, 172
	xvreplve.d	$xr0, $xr0, $a0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 321
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvreplve.d	$xr0, $xr0, $s2
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 329
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4080
	pcalau12i	$a1, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_17)
	ori	$a0, $a0, 255
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 160
	xvreplve.d	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 337
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvreplve.d	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 345
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	ori	$a0, $zero, 514
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 160
	xvreplve.d	$xr0, $xr0, $zero
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 353
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	lu12i.w	$a0, 253381
	ori	$a0, $a0, 3500
	xvreplve.d	$xr0, $xr0, $a0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 361
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -288
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvreplve.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
