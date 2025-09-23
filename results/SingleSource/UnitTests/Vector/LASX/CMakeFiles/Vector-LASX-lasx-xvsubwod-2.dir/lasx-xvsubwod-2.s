	.file	"lasx-xvsubwod-2.c"
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
	.byte	1                               # 0x1
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
	.byte	0                               # 0x0
.LCPI2_1:
	.dword	4286840577                      # 0xff83ff01
	.dword	-71495520257835008              # 0xff01ff3400000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_2:
	.byte	75                              # 0x4b
	.byte	255                             # 0xff
	.byte	253                             # 0xfd
	.byte	125                             # 0x7d
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	204                             # 0xcc
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_3:
	.dword	-4222189076152336               # 0xfff0fff0fff0fff0
	.dword	-4222189091815679               # 0xfff0fff0ff01ff01
	.dword	-4222189076152336               # 0xfff0fff0fff0fff0
	.dword	-4222189091815679               # 0xfff0fff0ff01ff01
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
	.dword	0                               # 0x0
	.dword	16711680                        # 0xff0000
	.dword	0                               # 0x0
	.dword	16711680                        # 0xff0000
.LCPI2_6:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
.LCPI2_7:
	.byte	135                             # 0x87
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	194                             # 0xc2
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	135                             # 0x87
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	194                             # 0xc2
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
	.byte	128                             # 0x80
	.byte	223                             # 0xdf
.LCPI2_8:
	.dword	1082348339202                   # 0xfc00fd0002
	.dword	0                               # 0x0
	.dword	18014948273684606               # 0x4000800080007e
	.dword	0                               # 0x0
.LCPI2_9:
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_10:
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	253                             # 0xfd
	.byte	252                             # 0xfc
	.byte	252                             # 0xfc
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
	.byte	254                             # 0xfe
	.byte	126                             # 0x7e
	.byte	5                               # 0x5
	.byte	128                             # 0x80
	.byte	130                             # 0x82
	.byte	128                             # 0x80
	.byte	121                             # 0x79
	.byte	64                              # 0x40
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_11:
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_12:
	.dword	-281470681710593                # 0xffff000100007fff
	.dword	-140741783290112                # 0xffff7fff00007f00
	.dword	32767                           # 0x7fff
	.dword	-281470681743360                # 0xffff000100000000
.LCPI2_13:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_14:
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32512                           # 0x7f00
	.half	0                               # 0x0
	.half	32766                           # 0x7ffe
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_15:
	.dword	-42949720264                    # 0xfffffff5ffff4738
	.dword	4294947764                      # 0xffffb3b4
	.dword	-42949720264                    # 0xfffffff5ffff4738
	.dword	4294947764                      # 0xffffb3b4
.LCPI2_16:
	.half	16612                           # 0x40e4
	.half	47304                           # 0xb8c8
	.half	36737                           # 0x8f81
	.half	11                              # 0xb
	.half	9058                            # 0x2362
	.half	19532                           # 0x4c4c
	.half	20560                           # 0x5050
	.half	0                               # 0x0
	.half	16612                           # 0x40e4
	.half	47304                           # 0xb8c8
	.half	36737                           # 0x8f81
	.half	11                              # 0xb
	.half	9058                            # 0x2362
	.half	19532                           # 0x4c4c
	.half	20560                           # 0x5050
	.half	0                               # 0x0
.LCPI2_17:
	.dword	4294918310                      # 0xffff40a6
	.dword	40959                           # 0x9fff
	.dword	4294918310                      # 0xffff40a6
	.dword	40959                           # 0x9fff
.LCPI2_18:
	.half	16847                           # 0x41cf
	.half	57179                           # 0xdf5b
	.half	8320                            # 0x2080
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16847                           # 0x41cf
	.half	57179                           # 0xdf5b
	.half	8320                            # 0x2080
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_19:
	.half	1                               # 0x1
	.half	8193                            # 0x2001
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	64896                           # 0xfd80
	.half	40959                           # 0x9fff
	.half	40959                           # 0x9fff
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	8193                            # 0x2001
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	64896                           # 0xfd80
	.half	40959                           # 0x9fff
	.half	40959                           # 0x9fff
	.half	0                               # 0x0
.LCPI2_20:
	.dword	-4294967295                     # 0xffffffff00000001
	.dword	-32767                          # 0xffffffffffff8001
	.dword	-4294967295                     # 0xffffffff00000001
	.dword	-32767                          # 0xffffffffffff8001
.LCPI2_21:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	32767                           # 0x7fff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	32767                           # 0x7fff
.LCPI2_22:
	.dword	261885                          # 0x3fefd
	.dword	0                               # 0x0
	.dword	-4260692228                     # 0xffffffff020afefc
	.dword	-4294836478                     # 0xffffffff0001ff02
.LCPI2_23:
	.word	0                               # 0x0
	.word	255                             # 0xff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4278190080                      # 0xff000000
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294902015                      # 0xffff00ff
.LCPI2_24:
	.word	393216                          # 0x60000
	.word	262140                          # 0x3fffc
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	135528448                       # 0x8140000
	.word	34275067                        # 0x20afefb
	.word	65536                           # 0x10000
	.word	65537                           # 0x10001
.LCPI2_25:
	.word	353690421                       # 0x1514e335
	.word	353637652                       # 0x15141514
	.word	353637652                       # 0x15141514
	.word	353637652                       # 0x15141514
	.word	353690421                       # 0x1514e335
	.word	353637652                       # 0x15141514
	.word	353637652                       # 0x15141514
	.word	353637652                       # 0x15141514
.LCPI2_26:
	.dword	262227                          # 0x40053
	.dword	-131072                         # 0xfffffffffffe0000
	.dword	786523                          # 0xc005b
	.dword	393224                          # 0x60008
.LCPI2_27:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	131072                          # 0x20000
	.word	131072                          # 0x20000
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	131072                          # 0x20000
	.word	131072                          # 0x20000
.LCPI2_28:
	.word	262176                          # 0x40020
	.word	262230                          # 0x40056
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	786473                          # 0xc0029
	.word	786526                          # 0xc005e
	.word	524296                          # 0x80008
	.word	524296                          # 0x80008
.LCPI2_29:
	.dword	16248                           # 0x3f78
	.dword	4160288760                      # 0xf7f8f7f8
	.dword	16248                           # 0x3f78
	.dword	4160288760                      # 0xf7f8f7f8
.LCPI2_30:
	.word	1073807232                      # 0x4000ff80
	.word	16248                           # 0x3f78
	.word	1073807353                      # 0x4000fff9
	.word	4160288760                      # 0xf7f8f7f8
	.word	1073807232                      # 0x4000ff80
	.word	16248                           # 0x3f78
	.word	4160813056                      # 0xf800f800
	.word	4160288760                      # 0xf7f8f7f8
.LCPI2_31:
	.dword	-1879076864                     # 0xffffffff8fff9000
	.dword	0                               # 0x0
	.dword	-1879076864                     # 0xffffffff8fff9000
	.dword	-1879076864                     # 0xffffffff8fff9000
.LCPI2_32:
	.word	1879076864                      # 0x70007000
	.word	1879076864                      # 0x70007000
	.word	1879076864                      # 0x70007000
	.word	0                               # 0x0
	.word	1879076864                      # 0x70007000
	.word	1879076864                      # 0x70007000
	.word	1879076864                      # 0x70007000
	.word	1879076864                      # 0x70007000
.LCPI2_33:
	.dword	-2286471240                     # 0xffffffff77b737b8
	.dword	-3360213064                     # 0xffffffff37b737b8
	.dword	-2286471240                     # 0xffffffff77b737b8
	.dword	-3360213064                     # 0xffffffff37b737b8
.LCPI2_34:
	.word	3360213064                      # 0xc848c848
	.word	2286471240                      # 0x8848c848
	.word	3360213064                      # 0xc848c848
	.word	3360213064                      # 0xc848c848
	.word	3360213064                      # 0xc848c848
	.word	2286471240                      # 0x8848c848
	.word	3360213064                      # 0xc848c848
	.word	3360213064                      # 0xc848c848
.LCPI2_35:
	.dword	-3129102273                     # 0xffffffff457db03f
	.dword	1165865022                      # 0x457db03e
	.dword	-3129102273                     # 0xffffffff457db03f
	.dword	1165865022                      # 0x457db03e
.LCPI2_36:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_37:
	.word	1168667408                      # 0x45a87310
	.word	1165865022                      # 0x457db03e
	.word	1165865022                      # 0x457db03e
	.word	1165865022                      # 0x457db03e
	.word	1168667408                      # 0x45a87310
	.word	1165865022                      # 0x457db03e
	.word	1165865022                      # 0x457db03e
	.word	1165865022                      # 0x457db03e
.LCPI2_38:
	.dword	281479271743489                 # 0x1000100010001
	.dword	0                               # 0x0
	.dword	281479271743489                 # 0x1000100010001
	.dword	0                               # 0x0
.LCPI2_39:
	.dword	-9223372034707292160            # 0x8000000080000000
	.dword	0                               # 0x0
	.dword	-9223372034707292160            # 0x8000000080000000
	.dword	0                               # 0x0
.LCPI2_40:
	.dword	-4294967295                     # 0xffffffff00000001
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967295                     # 0xffffffff00000001
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_41:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
.LCPI2_42:
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
.LCPI2_43:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
.LCPI2_44:
	.dword	-88305807663971                 # 0xffffafafb3b3dc9d
	.dword	0                               # 0x0
	.dword	-88305807663971                 # 0xffffafafb3b3dc9d
	.dword	0                               # 0x0
.LCPI2_45:
	.dword	3138502942824100                # 0xb2673a90896a4
	.dword	88305807663970                  # 0x50504c4c2362
	.dword	3138502942824100                # 0xb2673a90896a4
	.dword	88305807663970                  # 0x50504c4c2362
.LCPI2_46:
	.dword	-71777214294589696              # 0xff00ff00ff00ff00
	.dword	-1                              # 0xffffffffffffffff
	.dword	-71777214294589696              # 0xff00ff00ff00ff00
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_47:
	.dword	134546689                       # 0x8050501
	.dword	0                               # 0x0
	.dword	134546689                       # 0x8050501
	.dword	0                               # 0x0
.LCPI2_48:
	.dword	72057598332895233               # 0x100000100000001
	.dword	134546689                       # 0x8050501
	.dword	72057598332895233               # 0x100000100000001
	.dword	134546689                       # 0x8050501
.LCPI2_49:
	.dword	33550336                        # 0x1fff000
	.dword	0                               # 0x0
	.dword	33550336                        # 0x1fff000
	.dword	0                               # 0x0
.LCPI2_50:
	.dword	168304                          # 0x29170
	.dword	33550336                        # 0x1fff000
	.dword	168304                          # 0x29170
	.dword	33550336                        # 0x1fff000
.LCPI2_51:
	.dword	-32768                          # 0xffffffffffff8000
	.dword	0                               # 0x0
	.dword	-32768                          # 0xffffffffffff8000
	.dword	0                               # 0x0
.LCPI2_52:
	.dword	879981                          # 0xd6d6d
	.dword	0                               # 0x0
	.dword	151718150                       # 0x90b0906
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
	addi.d	$fp, $sp, 288
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.h	$xr0, -255
	xvst	$xr0, $sp, 192
	xvrepli.h	$xr0, -10
	xvrepli.b	$xr1, 0
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	xvsubwod.h.bu	$xr0, $xr1, $xr0
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
	xvsubwod.h.bu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvsubwod.h.bu	$xr0, $xr0, $xr1
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.h.bu	$xr0, $xr0, $xr1
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
	xvrepli.w	$xr0, 64
	xvrepli.d	$xr1, 128
	xvsubwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 3841
	xvreplgr2vr.w	$xr0, $a0
	xvst	$xr0, $sp, 192
	xvldi	$xr0, -2305
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
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
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 192
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvsubwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	lu12i.w	$a0, 31
	ori	$a0, $a0, 4094
	xvreplgr2vr.w	$xr1, $a0
	xvsubwod.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	xvrepli.h	$xr1, -223
	xvst	$xr1, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr2, $sp, 64                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 192
	xvsubwod.h.bu	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
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
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 130817
	pcalau12i	$a1, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_11)
	lu52i.d	$a0, $a0, -16
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
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
	xvsubwod.w.hu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvsubwod.w.hu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
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
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 192
	xvsubwod.w.hu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 192
	xvsubwod.d.wu	$xr0, $xr2, $xr1
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
	xvsubwod.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -90418
	ori	$a0, $a0, 2540
	lu32i.d	$a0, 0
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	lu12i.w	$a0, -4082
	ori	$a0, $a0, 3890
	lu32i.d	$a0, 65280
	lu52i.d	$a0, $a0, -16
	xvreplgr2vr.d	$xr1, $a0
	xvsubwod.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_28)
	xvst	$xr0, $sp, 192
	xvsubwod.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvldi	$xr0, -1777
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
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
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_30)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_32)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvsubwod.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
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
	xvsubwod.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 192
	xvrepli.h	$xr0, 1
	xvsubwod.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_41)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_43)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvsubwod.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvsubwod.q.du	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_46)
	xvst	$xr0, $sp, 192
	xvsubwod.q.du	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_48)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_50)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvsubwod.q.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_52)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvsubwod.q.du	$xr0, $xr1, $xr0
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
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvsubwod-2.c"
	.size	.L.str.5, 136

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
