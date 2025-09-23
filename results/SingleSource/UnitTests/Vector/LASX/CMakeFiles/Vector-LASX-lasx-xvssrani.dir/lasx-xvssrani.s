	.file	"lasx-xvssrani.c"
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
	.dword	65535                           # 0xffff
	.dword	0                               # 0x0
	.dword	65535                           # 0xffff
	.dword	0                               # 0x0
.LCPI2_1:
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
	.byte	0                               # 0x0
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
	.byte	0                               # 0x0
.LCPI2_2:
	.dword	-64424574976                    # 0xfffffff0ffff0000
	.dword	0                               # 0x0
	.dword	-64424574976                    # 0xfffffff0ffff0000
	.dword	0                               # 0x0
.LCPI2_3:
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	128                             # 0x80
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
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_4:
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
.LCPI2_5:
	.dword	0                               # 0x0
	.dword	281470681743360                 # 0xffff00000000
	.dword	0                               # 0x0
	.dword	281470681743360                 # 0xffff00000000
.LCPI2_6:
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
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_7:
	.dword	1099511627520                   # 0xffffffff00
	.dword	281470681743360                 # 0xffff00000000
	.dword	16711680                        # 0xff0000
	.dword	281470681743360                 # 0xffff00000000
.LCPI2_8:
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	253                             # 0xfd
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_9:
	.byte	254                             # 0xfe
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_10:
	.dword	9187201948296675455             # 0x7f7f7f7f0000007f
	.dword	986895                          # 0xf0f0f
	.dword	9187201948296675455             # 0x7f7f7f7f0000007f
	.dword	986895                          # 0xf0f0f
.LCPI2_11:
	.byte	128                             # 0x80
	.byte	94                              # 0x5e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	171                             # 0xab
	.byte	84                              # 0x54
	.byte	135                             # 0x87
	.byte	120                             # 0x78
	.byte	114                             # 0x72
	.byte	114                             # 0x72
	.byte	245                             # 0xf5
	.byte	10                              # 0xa
	.byte	128                             # 0x80
	.byte	94                              # 0x5e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	171                             # 0xab
	.byte	84                              # 0x54
	.byte	135                             # 0x87
	.byte	120                             # 0x78
	.byte	114                             # 0x72
	.byte	114                             # 0x72
	.byte	245                             # 0xf5
	.byte	10                              # 0xa
.LCPI2_12:
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
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
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
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
.LCPI2_13:
	.dword	255                             # 0xff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_14:
	.byte	128                             # 0x80
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
.LCPI2_15:
	.dword	2147450879                      # 0x7fff7fff
	.dword	2147516416                      # 0x80008000
	.dword	2147450879                      # 0x7fff7fff
	.dword	2147516416                      # 0x80008000
.LCPI2_16:
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.dword	1125917086973956                # 0x4000400040004
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_19:
	.half	0                               # 0x0
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	0                               # 0x0
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	256                             # 0x100
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_20:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_21:
	.dword	0                               # 0x0
	.dword	2147450879                      # 0x7fff7fff
	.dword	0                               # 0x0
	.dword	2147450879                      # 0x7fff7fff
.LCPI2_22:
	.half	0                               # 0x0
	.half	770                             # 0x302
	.half	771                             # 0x303
	.half	771                             # 0x303
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	770                             # 0x302
	.half	771                             # 0x303
	.half	771                             # 0x303
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_23:
	.dword	0                               # 0x0
	.dword	468097829819056256              # 0x67f047f027f0080
	.dword	0                               # 0x0
	.dword	468097829819056256              # 0x67f047f027f0080
.LCPI2_24:
	.half	33022                           # 0x80fe
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	2                               # 0x2
	.half	32767                           # 0x7fff
	.half	4                               # 0x4
	.half	32767                           # 0x7fff
	.half	6                               # 0x6
	.half	33022                           # 0x80fe
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	2                               # 0x2
	.half	32767                           # 0x7fff
	.half	4                               # 0x4
	.half	32767                           # 0x7fff
	.half	6                               # 0x6
.LCPI2_25:
	.dword	1028                            # 0x404
	.dword	16843009                        # 0x1010101
	.dword	1028                            # 0x404
	.dword	16843009                        # 0x1010101
.LCPI2_26:
	.half	16384                           # 0x4000
	.half	16448                           # 0x4040
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16384                           # 0x4000
	.half	16448                           # 0x4040
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_27:
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	4112                            # 0x1010
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_28:
	.dword	-1                              # 0xffffffffffffffff
	.dword	4194240                         # 0x3fffc0
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4290773056                     # 0xffffffff003fffc0
.LCPI2_29:
	.half	65535                           # 0xffff
	.half	33023                           # 0x80ff
	.half	65278                           # 0xfefe
	.half	32510                           # 0x7efe
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	33023                           # 0x80ff
	.half	65278                           # 0xfefe
	.half	32510                           # 0x7efe
	.half	32768                           # 0x8000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_30:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_31:
	.dword	0                               # 0x0
	.dword	2296868795307786240             # 0x1fe01e0000000000
	.dword	0                               # 0x0
	.dword	2296868795307786240             # 0x1fe01e0000000000
.LCPI2_32:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4026531840                      # 0xf0000000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4026531840                      # 0xf0000000
	.word	0                               # 0x0
.LCPI2_33:
	.word	16384                           # 0x4000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2139125760                      # 0x7f807800
	.word	16384                           # 0x4000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2139125760                      # 0x7f807800
.LCPI2_34:
	.word	12845190                        # 0xc40086
	.word	0                               # 0x0
	.word	65536                           # 0x10000
	.word	0                               # 0x0
	.word	12845190                        # 0xc40086
	.word	0                               # 0x0
	.word	65536                           # 0x10000
	.word	0                               # 0x0
.LCPI2_35:
	.word	137                             # 0x89
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	22338692                        # 0x154dc84
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_36:
	.word	16711680                        # 0xff0000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	16711680                        # 0xff0000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_37:
	.word	44384912                        # 0x2a54290
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	44384912                        # 0x2a54290
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_38:
	.dword	0                               # 0x0
	.dword	2147483647                      # 0x7fffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_39:
	.word	0                               # 0x0
	.word	1073741824                      # 0x40000000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_40:
	.dword	-1                              # 0xffffffffffffffff
	.dword	30064771080                     # 0x700000008
	.dword	-1                              # 0xffffffffffffffff
	.dword	30064771080                     # 0x700000008
.LCPI2_41:
	.word	2147418112                      # 0x7fff0000
	.word	1082425344                      # 0x40848000
	.word	2147436616                      # 0x7fff4848
	.word	1051424566                      # 0x3eab7736
	.word	2147418112                      # 0x7fff0000
	.word	1082425344                      # 0x40848000
	.word	2147436616                      # 0x7fff4848
	.word	1051424566                      # 0x3eab7736
.LCPI2_42:
	.dword	-1                              # 0xffffffffffffffff
	.dword	4293926880                      # 0xfff01fe0
	.dword	-1                              # 0xffffffffffffffff
	.dword	4293926880                      # 0xfff01fe0
.LCPI2_43:
	.word	3229581312                      # 0xc07f8000
	.word	3229581312                      # 0xc07f8000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3229581312                      # 0xc07f8000
	.word	3229581312                      # 0xc07f8000
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_44:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	256                             # 0x100
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	256                             # 0x100
	.word	0                               # 0x0
.LCPI2_45:
	.word	538976256                       # 0x20202000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	538976256                       # 0x20202000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_46:
	.dword	9223372034707292160             # 0x7fffffff80000000
	.dword	0                               # 0x0
	.dword	9223372034707292160             # 0x7fffffff80000000
	.dword	0                               # 0x0
.LCPI2_47:
	.word	65535                           # 0xffff
	.word	2147549183                      # 0x8000ffff
	.word	66848764                        # 0x3fc07fc
	.word	66846716                        # 0x3fbfffc
	.word	65535                           # 0xffff
	.word	2147549183                      # 0x8000ffff
	.word	66848764                        # 0x3fc07fc
	.word	66846716                        # 0x3fbfffc
.LCPI2_48:
	.dword	0                               # 0x0
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	0                               # 0x0
	.dword	-9223372036854775808            # 0x8000000000000000
.LCPI2_49:
	.dword	140735340871679                 # 0x7fff7fffffff
	.dword	0                               # 0x0
	.dword	140735340871679                 # 0x7fff7fffffff
	.dword	0                               # 0x0
.LCPI2_50:
	.dword	254                             # 0xfe
	.dword	-72057594037927936              # 0xff00000000000000
	.dword	254                             # 0xfe
	.dword	-72057594037927936              # 0xff00000000000000
.LCPI2_51:
	.dword	-3321888769                     # 0xffffffff39ffffff
	.dword	0                               # 0x0
	.dword	-3321888769                     # 0xffffffff39ffffff
	.dword	0                               # 0x0
.LCPI2_52:
	.dword	7133701809754865664             # 0x6300000000000000
	.dword	-3566850904877432834            # 0xce7ffffffffffffe
	.dword	7133701809754865664             # 0x6300000000000000
	.dword	-3566850904877432834            # 0xce7ffffffffffffe
.LCPI2_53:
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
.LCPI2_54:
	.dword	-5390668009105871086            # 0xb5308001b72eaf12
	.dword	143552247910079900              # 0x1fe000247639d9c
	.dword	-5247115770983436526            # 0xb72e8001b72eaf12
	.dword	143692982979002369              # 0x1fe8001b72e0001
.LCPI2_55:
	.dword	1125899907088384                # 0x400000003c000
	.dword	0                               # 0x0
	.dword	1125899907039232                # 0x4000000030000
	.dword	0                               # 0x0
.LCPI2_56:
	.dword	137438953497                    # 0x2000000019
	.dword	137438953502                    # 0x200000001e
	.dword	137438953497                    # 0x2000000019
	.dword	137438953496                    # 0x2000000018
.LCPI2_57:
	.dword	127                             # 0x7f
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	0                               # 0x0
.LCPI2_58:
	.dword	0                               # 0x0
	.dword	2305843009213693952             # 0x2000000000000000
	.dword	0                               # 0x0
	.dword	2305843009213693952             # 0x2000000000000000
.LCPI2_59:
	.dword	35958463704580103               # 0x7fc0083fc7c007
	.dword	0                               # 0x0
	.dword	35958463704580103               # 0x7fc0083fc7c007
	.dword	0                               # 0x0
.LCPI2_60:
	.dword	9214927654407503840             # 0x7fe1ffe0ffe1ffe0
	.dword	143833854818320415              # 0x1ff0020ff1f001f
	.dword	9214927654407503840             # 0x7fe1ffe0ffe1ffe0
	.dword	143833854818320415              # 0x1ff0020ff1f001f
.LCPI2_61:
	.dword	281479271677952                 # 0x1000100000000
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	281479271677952                 # 0x1000100000000
	.dword	9223372036854775807             # 0x7fffffffffffffff
.LCPI2_62:
	.dword	274877906944                    # 0x4000000000
	.dword	1073758208                      # 0x40004000
	.dword	274877906944                    # 0x4000000000
	.dword	1073758208                      # 0x40004000
.LCPI2_63:
	.dword	144114376343813888              # 0x1ffff4300ffff00
	.dword	72058693566333184               # 0x100010001000100
	.dword	144114376343813888              # 0x1ffff4300ffff00
	.dword	72058693566333184               # 0x100010001000100
.LCPI2_64:
	.dword	4295032576                      # 0x10000ff00
	.dword	16711680                        # 0xff0000
	.dword	4295032576                      # 0x10000ff00
	.dword	16711680                        # 0xff0000
.LCPI2_65:
	.dword	7709037761663205120             # 0x6afc01000001ff00
	.dword	4271308437                      # 0xfe96fe95
	.dword	7709037761663205120             # 0x6afc01000001ff00
	.dword	4271308437                      # 0xfe96fe95
.LCPI2_66:
	.dword	0                               # 0x0
	.dword	8177                            # 0x1ff1
	.dword	0                               # 0x0
	.dword	8177                            # 0x1ff1
.LCPI2_67:
	.dword	4286119872                      # 0xff78ffc0
	.dword	4287168448                      # 0xff88ffc0
	.dword	4286119872                      # 0xff78ffc0
	.dword	4287168448                      # 0xff88ffc0
.LCPI2_68:
	.dword	-4593741714853740481            # 0xc03fc03fc03fc03f
	.dword	63                              # 0x3f
	.dword	-4593741714853740481            # 0xc03fc03fc03fc03f
	.dword	63                              # 0x3f
.LCPI2_69:
	.dword	-71777216442106112              # 0xff00ff007f007f00
	.dword	-71777214294589696              # 0xff00ff00ff00ff00
	.dword	-71777216442106112              # 0xff00ff007f007f00
	.dword	-71777214294589696              # 0xff00ff00ff00ff00
.LCPI2_70:
	.dword	-4393751544832                  # 0xfffffc00fffffc00
	.dword	0                               # 0x0
	.dword	-4393751544832                  # 0xfffffc00fffffc00
	.dword	0                               # 0x0
.LCPI2_71:
	.dword	15                              # 0xf
	.dword	15                              # 0xf
	.dword	-16                             # 0xfffffffffffffff0
	.dword	-16                             # 0xfffffffffffffff0
.LCPI2_72:
	.dword	-281470681939964                # 0xffff0000fffd0004
	.dword	281470681939965                 # 0xffff0002fffd
	.dword	281470681939965                 # 0xffff0002fffd
	.dword	-281470681939964                # 0xffff0000fffd0004
.LCPI2_73:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_74:
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
.LCPI2_75:
	.dword	17587891094850                  # 0xfff00004542
	.dword	71777218556133120               # 0xff00ffff00ff00
	.dword	17587891094850                  # 0xfff00004542
	.dword	71777218556133120               # 0xff00ffff00ff00
.LCPI2_76:
	.byte	32                              # 0x20
	.byte	4                               # 0x4
	.byte	86                              # 0x56
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	4                               # 0x4
	.byte	86                              # 0x56
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_77:
	.byte	139                             # 0x8b
	.byte	215                             # 0xd7
	.byte	243                             # 0xf3
	.byte	100                             # 0x64
	.byte	128                             # 0x80
	.byte	230                             # 0xe6
	.byte	6                               # 0x6
	.byte	105                             # 0x69
	.byte	86                              # 0x56
	.byte	59                              # 0x3b
	.byte	84                              # 0x54
	.byte	213                             # 0xd5
	.byte	205                             # 0xcd
	.byte	82                              # 0x52
	.byte	71                              # 0x47
	.byte	208                             # 0xd0
	.byte	139                             # 0x8b
	.byte	215                             # 0xd7
	.byte	243                             # 0xf3
	.byte	100                             # 0x64
	.byte	128                             # 0x80
	.byte	230                             # 0xe6
	.byte	6                               # 0x6
	.byte	105                             # 0x69
	.byte	86                              # 0x56
	.byte	59                              # 0x3b
	.byte	84                              # 0x54
	.byte	213                             # 0xd5
	.byte	205                             # 0xcd
	.byte	82                              # 0x52
	.byte	71                              # 0x47
	.byte	208                             # 0xd0
.LCPI2_78:
	.dword	0                               # 0x0
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_79:
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
.LCPI2_80:
	.dword	0                               # 0x0
	.dword	1080880403494997760             # 0xf000f000f000f00
	.dword	0                               # 0x0
	.dword	1080880403494997760             # 0xf000f000f000f00
.LCPI2_81:
	.byte	120                             # 0x78
	.byte	60                              # 0x3c
	.byte	67                              # 0x43
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
	.byte	120                             # 0x78
	.byte	60                              # 0x3c
	.byte	67                              # 0x43
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
.LCPI2_82:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	128                             # 0x80
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
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	128                             # 0x80
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
.LCPI2_83:
	.dword	133171189                       # 0x7f007f5
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_84:
	.half	127                             # 0x7f
	.half	32603                           # 0x7f5b
	.half	32523                           # 0x7f0b
	.half	32517                           # 0x7f05
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
.LCPI2_85:
	.dword	0                               # 0x0
	.dword	201                             # 0xc9
	.dword	3801600                         # 0x3a0200
	.dword	0                               # 0x0
.LCPI2_86:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16384                           # 0x4000
	.half	12962                           # 0x32a2
	.half	1857                            # 0x741
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_87:
	.half	0                               # 0x0
	.half	6440                            # 0x1928
	.half	64264                           # 0xfb08
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	52916                           # 0xceb4
	.half	50293                           # 0xc475
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	64512                           # 0xfc00
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_88:
	.dword	-4294959105                     # 0xffffffff00001fff
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-4294959105                     # 0xffffffff00001fff
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_89:
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
.LCPI2_90:
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
.LCPI2_91:
	.dword	1073741824                      # 0x40000000
	.dword	281474976710655                 # 0xffffffffffff
	.dword	3221225472                      # 0xc0000000
	.dword	281474976710655                 # 0xffffffffffff
.LCPI2_92:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	64                              # 0x40
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	192                             # 0xc0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_93:
	.half	255                             # 0xff
	.half	23423                           # 0x5b7f
	.half	255                             # 0xff
	.half	23423                           # 0x5b7f
	.half	0                               # 0x0
	.half	21152                           # 0x52a0
	.half	0                               # 0x0
	.half	57088                           # 0xdf00
	.half	255                             # 0xff
	.half	23423                           # 0x5b7f
	.half	255                             # 0xff
	.half	23423                           # 0x5b7f
	.half	0                               # 0x0
	.half	21152                           # 0x52a0
	.half	0                               # 0x0
	.half	57088                           # 0xdf00
.LCPI2_94:
	.dword	288247968404869120              # 0x400100004001000
	.dword	0                               # 0x0
	.dword	288247968404869120              # 0x400100004001000
	.dword	0                               # 0x0
.LCPI2_95:
	.half	15                              # 0xf
	.half	16                              # 0x10
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	16                              # 0x10
	.half	15                              # 0xf
	.half	4                               # 0x4
	.half	15                              # 0xf
	.half	16                              # 0x10
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	16                              # 0x10
	.half	15                              # 0xf
	.half	4                               # 0x4
.LCPI2_96:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_97:
	.word	128                             # 0x80
	.word	4293918720                      # 0xfff00000
	.word	0                               # 0x0
	.word	4293918720                      # 0xfff00000
	.word	128                             # 0x80
	.word	4293918720                      # 0xfff00000
	.word	0                               # 0x0
	.word	4293918720                      # 0xfff00000
.LCPI2_98:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_99:
	.word	131074                          # 0x20002
	.word	131074                          # 0x20002
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_100:
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_101:
	.word	1128303546                      # 0x43408bba
	.word	2277577552                      # 0x87c11350
	.word	507111395                       # 0x1e39e7e3
	.word	10239520                        # 0x9c3e20
	.word	1128303546                      # 0x43408bba
	.word	2277577552                      # 0x87c11350
	.word	507111395                       # 0x1e39e7e3
	.word	10239520                        # 0x9c3e20
.LCPI2_102:
	.dword	4294967296                      # 0x100000000
	.dword	4294999935                      # 0x100007f7f
	.dword	4294967296                      # 0x100000000
	.dword	4294999935                      # 0x100007f7f
.LCPI2_103:
	.word	943709965                       # 0x383fdf0d
	.word	3503877839                      # 0xd0d8eecf
	.word	65537                           # 0x10001
	.word	65537                           # 0x10001
	.word	943709965                       # 0x383fdf0d
	.word	3503877839                      # 0xd0d8eecf
	.word	65537                           # 0x10001
	.word	65537                           # 0x10001
.LCPI2_104:
	.word	2402765184                      # 0x8f374980
	.word	2139062108                      # 0x7f7f7f5c
	.word	3031817631                      # 0xb4b5dd9f
	.word	110769                          # 0x1b0b1
	.word	2402765184                      # 0x8f374980
	.word	2139062108                      # 0x7f7f7f5c
	.word	3031817631                      # 0xb4b5dd9f
	.word	110769                          # 0x1b0b1
.LCPI2_105:
	.word	45119                           # 0xb03f
	.word	0                               # 0x0
	.word	17789                           # 0x457d
	.word	0                               # 0x0
	.word	45119                           # 0xb03f
	.word	0                               # 0x0
	.word	17789                           # 0x457d
	.word	0                               # 0x0
.LCPI2_106:
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_107:
	.dword	4294967295                      # 0xffffffff
	.dword	4294967296                      # 0x100000000
	.dword	4294967295                      # 0xffffffff
	.dword	1                               # 0x1
.LCPI2_108:
	.dword	8                               # 0x8
	.dword	-1                              # 0xffffffffffffffff
	.dword	8                               # 0x8
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_109:
	.dword	140821256143099                 # 0x801380f300fb
	.dword	0                               # 0x0
	.dword	140821256175870                 # 0x801380f380fe
	.dword	0                               # 0x0
.LCPI2_110:
	.dword	0                               # 0x0
	.dword	4104821368115660848             # 0x38f7414938f78830
	.dword	0                               # 0x0
	.dword	4104821368115660847             # 0x38f7414938f7882f
.LCPI2_111:
	.dword	7                               # 0x7
	.dword	0                               # 0x0
	.dword	7                               # 0x7
	.dword	0                               # 0x0
.LCPI2_112:
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI2_113:
	.dword	36451005197516800               # 0x817fff00810000
	.dword	35043630305542143               # 0x7c7fff00007fff
	.dword	36451005197516800               # 0x817fff00810000
	.dword	35043630305542143               # 0x7c7fff00007fff
.LCPI2_114:
	.dword	0                               # 0x0
	.dword	16                              # 0x10
	.dword	0                               # 0x0
	.dword	16                              # 0x10
.LCPI2_115:
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
.LCPI2_116:
	.dword	5                               # 0x5
	.dword	0                               # 0x0
	.dword	5                               # 0x5
	.dword	0                               # 0x0
.LCPI2_117:
	.dword	30064771072                     # 0x700000000
	.dword	25769803775                     # 0x5ffffffff
	.dword	30064771072                     # 0x700000000
	.dword	25769803775                     # 0x5ffffffff
.LCPI2_118:
	.dword	1125921381941253                # 0x4000500040005
	.dword	1125917086973956                # 0x4000400040004
	.dword	1125921381941253                # 0x4000500040005
	.dword	1125917086973956                # 0x4000400040004
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 320
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr1, $sp, 128                  # 32-byte Folded Spill
	xvrepli.b	$xr2, 0
	xvst	$xr2, $sp, 192                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	xvori.b	$xr0, $xr2, 0
	xvssrani.b.h	$xr0, $xr1, 9
	xvst	$xr0, $sp, 256
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.b.h	$xr0, $xr1, 11
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 8191
	pcalau12i	$a1, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_4)
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 224
	xvssrani.b.h	$xr0, $xr0, 14
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.b.h	$xr1, $xr0, 4
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.b.h	$xr0, $xr0, 11
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 224
	xvssrani.b.h	$xr2, $xr1, 12
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 224
	xvssrani.b.h	$xr2, $xr1, 3
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_14)
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.b.h	$xr0, $xr1, 14
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 224
	xvssrani.h.w	$xr2, $xr1, 0
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.h.w	$xr0, $xr0, 29
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_20)
	xvst	$xr0, $sp, 224
	xvssrani.h.w	$xr2, $xr1, 22
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.h.w	$xr1, $xr0, 4
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.h.w	$xr0, $xr0, 19
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.h.w	$xr0, $xr0, 12
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.h.w	$xr1, $xr0, 8
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.h.w	$xr0, $xr0, 7
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.h.w	$xr0, $xr0, 10
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 224
	xvssrani.h.w	$xr2, $xr1, 20
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvssrani.h.w	$xr1, $xr0, 25
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrani.h.w	$xr0, $xr1, 27
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_33)
	xvst	$xr0, $sp, 224
	xvssrani.w.d	$xr2, $xr1, 34
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvrepli.w	$xr0, 1
	xvssrani.w.d	$xr0, $xr0, 59
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_35)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvssrani.w.d	$xr1, $xr0, 25
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_37)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvssrani.w.d	$xr1, $xr0, 63
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.w.d	$xr0, $xr0, 57
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.w.d	$xr1, $xr0, 31
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.w.d	$xr0, $xr0, 50
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_41)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrani.w.d	$xr1, $xr0, 59
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 224
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	ori	$a0, $zero, 1
	lu32i.d	$a0, -2
	xvreplgr2vr.d	$xr1, $a0
	xvssrani.w.d	$xr0, $xr1, 42
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_45)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvssrani.w.d	$xr1, $xr0, 61
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.w.d	$xr0, $xr0, 8
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_47)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.w.d	$xr0, $xr1, 24
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_50)
	xvst	$xr0, $sp, 224
	xvssrani.d.q	$xr2, $xr1, 55
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_52)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrani.d.q	$xr0, $xr1, 94
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_54)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.d.q	$xr1, $xr0, 38
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_57)
	xvst	$xr0, $sp, 224
	xvssrani.d.q	$xr2, $xr1, 51
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_58)
	xvst	$xr0, $sp, 224
	xvrepli.d	$xr0, 4
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrani.d.q	$xr0, $xr1, 5
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_59)
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_60)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.d.q	$xr0, $xr1, 66
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_61)
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_63)
	xvst	$xr0, $sp, 224
	xvssrani.d.q	$xr2, $xr1, 46
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_64)
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_65)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvssrani.d.q	$xr1, $xr0, 126
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_66)
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_67)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.d.q	$xr1, $xr0, 83
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_68)
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_69)
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_70)
	xvst	$xr0, $sp, 224
	xvssrani.d.q	$xr2, $xr1, 58
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 395
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_71)
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_72)
	xvst	$xr0, $sp, 224
	xvssrani.d.q	$xr1, $xr1, 108
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 404
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_73)
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	lu12i.w	$a0, -64
	xvreplgr2vr.w	$xr0, $a0
	ori	$a0, $zero, 1024
	xvreplgr2vr.h	$xr1, $a0
	xvssrani.bu.h	$xr1, $xr0, 0
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_74)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvssrani.bu.h	$xr0, $xr1, 9
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 422
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.bu.h	$xr0, $xr0, 5
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 431
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_75)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_75)
	pcalau12i	$a0, %pc_hi20(.LCPI2_76)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_76)
	pcalau12i	$a0, %pc_hi20(.LCPI2_77)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_77)
	xvst	$xr0, $sp, 224
	xvssrani.bu.h	$xr2, $xr1, 4
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 440
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_78)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_78)
	pcalau12i	$a0, %pc_hi20(.LCPI2_79)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_79)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.bu.h	$xr1, $xr0, 7
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 449
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_80)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_80)
	xvst	$xr0, $sp, 224
	lu12i.w	$a0, 522240
	xvreplgr2vr.w	$xr0, $a0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrani.bu.h	$xr0, $xr1, 11
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 458
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	xvreplgr2vr.h	$xr0, $a0
	xvst	$xr0, $sp, 224
	lu12i.w	$a0, 16448
	xvreplgr2vr.w	$xr0, $a0
	xvssrani.bu.h	$xr0, $xr0, 4
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 467
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_81)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_81)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrani.bu.h	$xr1, $xr0, 0
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 476
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_82)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_82)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrani.bu.h	$xr1, $xr0, 15
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 485
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_83)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_83)
	pcalau12i	$a0, %pc_hi20(.LCPI2_84)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_84)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.hu.w	$xr0, $xr1, 20
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 494
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_85)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_85)
	pcalau12i	$a0, %pc_hi20(.LCPI2_86)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_86)
	pcalau12i	$a0, %pc_hi20(.LCPI2_87)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_87)
	xvst	$xr0, $sp, 224
	xvssrani.hu.w	$xr2, $xr1, 21
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 503
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.hu.w	$xr0, $xr0, 6
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 512
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_88)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_88)
	pcalau12i	$a0, %pc_hi20(.LCPI2_89)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_89)
	pcalau12i	$a0, %pc_hi20(.LCPI2_90)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_90)
	xvst	$xr0, $sp, 224
	xvssrani.hu.w	$xr2, $xr1, 2
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 521
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_91)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_91)
	pcalau12i	$a0, %pc_hi20(.LCPI2_92)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_92)
	pcalau12i	$a0, %pc_hi20(.LCPI2_93)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_93)
	xvst	$xr0, $sp, 224
	xvssrani.hu.w	$xr2, $xr1, 8
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 530
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrani.hu.w	$xr0, $xr1, 27
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 539
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.hu.w	$xr0, $xr0, 11
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 548
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrani.hu.w	$xr0, $xr1, 7
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 557
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_94)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_94)
	pcalau12i	$a0, %pc_hi20(.LCPI2_95)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_95)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrani.hu.w	$xr0, $xr1, 8
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 566
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_96)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_96)
	pcalau12i	$a0, %pc_hi20(.LCPI2_97)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_97)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvssrani.wu.d	$xr1, $xr0, 17
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 575
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvssrani.wu.d	$xr0, $xr1, 49
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 584
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_98)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_98)
	pcalau12i	$a0, %pc_hi20(.LCPI2_99)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_99)
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr0, -128
	xvssrani.wu.d	$xr0, $xr1, 10
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 593
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_100)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_100)
	pcalau12i	$a0, %pc_hi20(.LCPI2_101)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_101)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.wu.d	$xr1, $xr0, 13
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 602
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_102)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_102)
	pcalau12i	$a0, %pc_hi20(.LCPI2_103)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_103)
	pcalau12i	$a0, %pc_hi20(.LCPI2_104)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_104)
	xvst	$xr0, $sp, 224
	xvssrani.wu.d	$xr2, $xr1, 48
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 611
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.wu.d	$xr0, $xr0, 11
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 620
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_105)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_105)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrani.wu.d	$xr0, $xr1, 59
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 629
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_106)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_106)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvssrani.wu.d	$xr1, $xr0, 21
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 638
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_107)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_107)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrani.du.q	$xr0, $xr1, 115
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 647
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.du.q	$xr0, $xr0, 107
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 656
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_108)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_108)
	pcalau12i	$a0, %pc_hi20(.LCPI2_109)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_109)
	pcalau12i	$a0, %pc_hi20(.LCPI2_110)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_110)
	xvst	$xr0, $sp, 224
	xvssrani.du.q	$xr2, $xr1, 44
	xvst	$xr2, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 665
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_111)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_111)
	xvst	$xr0, $sp, 224
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrani.du.q	$xr1, $xr0, 77
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 674
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_112)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_112)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrani.du.q	$xr1, $xr0, 89
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 683
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_113)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_113)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrani.du.q	$xr0, $xr1, 124
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 692
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.du.q	$xr0, $xr0, 75
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 701
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvssrani.du.q	$xr0, $xr1, 85
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 710
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_114)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_114)
	pcalau12i	$a0, %pc_hi20(.LCPI2_115)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_115)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrani.du.q	$xr1, $xr0, 28
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 719
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrani.du.q	$xr0, $xr0, 108
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 728
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_116)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_116)
	pcalau12i	$a0, %pc_hi20(.LCPI2_117)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_117)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrani.du.q	$xr0, $xr1, 96
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 737
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	pcalau12i	$a0, %pc_hi20(.LCPI2_118)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_118)
	lu12i.w	$a0, 64
	ori	$a0, $a0, 5
	xvreplgr2vr.w	$xr1, $a0
	xvssrani.du.q	$xr1, $xr0, 26
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 746
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -320
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvssrani.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
