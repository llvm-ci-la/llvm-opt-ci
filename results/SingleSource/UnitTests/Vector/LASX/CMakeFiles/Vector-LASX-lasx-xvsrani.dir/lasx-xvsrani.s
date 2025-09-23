	.file	"lasx-xvsrani.c"
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
	.dword	4227858428                      # 0xfbfffffc
	.dword	-217020518530546684             # 0xfcfcfcfcfc040404
	.dword	4227858428                      # 0xfbfffffc
	.dword	-217020518530546684             # 0xfcfcfcfcfc040404
.LCPI2_1:
	.byte	248                             # 0xf8
	.byte	207                             # 0xcf
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	143                             # 0x8f
	.byte	188                             # 0xbc
	.byte	248                             # 0xf8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	248                             # 0xf8
	.byte	207                             # 0xcf
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	240                             # 0xf0
	.byte	143                             # 0x8f
	.byte	188                             # 0xbc
	.byte	248                             # 0xf8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_2:
	.byte	197                             # 0xc5
	.byte	69                              # 0x45
	.byte	197                             # 0xc5
	.byte	69                              # 0x45
	.byte	197                             # 0xc5
	.byte	69                              # 0x45
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	196                             # 0xc4
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	69                              # 0x45
	.byte	197                             # 0xc5
	.byte	69                              # 0x45
	.byte	197                             # 0xc5
	.byte	69                              # 0x45
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	197                             # 0xc5
	.byte	196                             # 0xc4
	.byte	197                             # 0xc5
.LCPI2_3:
	.dword	0                               # 0x0
	.dword	723118041428460547              # 0xa09080706050403
	.dword	0                               # 0x0
	.dword	723118041428460547              # 0xa09080706050403
.LCPI2_4:
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
.LCPI2_5:
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	4294967295                      # 0xffffffff
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	4294967295                      # 0xffffffff
.LCPI2_6:
	.byte	253                             # 0xfd
	.byte	254                             # 0xfe
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
	.byte	253                             # 0xfd
	.byte	254                             # 0xfe
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
.LCPI2_7:
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
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
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
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
.LCPI2_8:
	.dword	578                             # 0x242
	.dword	-4294901761                     # 0xffffffff0000ffff
	.dword	578                             # 0x242
	.dword	-4294901761                     # 0xffffffff0000ffff
.LCPI2_9:
	.byte	42                              # 0x2a
	.byte	84                              # 0x54
	.byte	42                              # 0x2a
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
	.byte	42                              # 0x2a
	.byte	84                              # 0x54
	.byte	42                              # 0x2a
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
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_11:
	.dword	2130640640                      # 0x7efeff00
	.dword	16842752                        # 0x1010000
	.dword	2130640640                      # 0x7efeff00
	.dword	16842752                        # 0x1010000
.LCPI2_12:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	126                             # 0x7e
	.byte	127                             # 0x7f
	.byte	127                             # 0x7f
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
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	126                             # 0x7e
	.byte	127                             # 0x7f
	.byte	127                             # 0x7f
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_13:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
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
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_14:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_15:
	.dword	987139                          # 0xf1003
	.dword	1095216660735                   # 0xff000000ff
	.dword	252641283                       # 0xf0f0003
	.dword	1095216660735                   # 0xff000000ff
.LCPI2_16:
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
.LCPI2_17:
	.dword	280371136561152                 # 0xfefefe000000
	.dword	0                               # 0x0
	.dword	280371136561152                 # 0xfefefe000000
	.dword	0                               # 0x0
.LCPI2_18:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	252                             # 0xfc
	.byte	56                              # 0x38
	.byte	252                             # 0xfc
	.byte	56                              # 0x38
	.byte	252                             # 0xfc
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
	.byte	252                             # 0xfc
	.byte	56                              # 0x38
	.byte	252                             # 0xfc
	.byte	56                              # 0x38
	.byte	252                             # 0xfc
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_19:
	.dword	4683743892732968960             # 0x4100004141410000
	.dword	2207613190144                   # 0x20200000000
	.dword	4683743892732968960             # 0x4100004141410000
	.dword	2207613190658                   # 0x20200000202
.LCPI2_20:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	10                              # 0xa
	.byte	10                              # 0xa
.LCPI2_21:
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	20                              # 0x14
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_22:
	.dword	4294967232                      # 0xffffffc0
	.dword	0                               # 0x0
	.dword	4294967232                      # 0xffffffc0
	.dword	0                               # 0x0
.LCPI2_23:
	.byte	0                               # 0x0
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
.LCPI2_24:
	.dword	0                               # 0x0
	.dword	4294967168                      # 0xffffff80
	.dword	0                               # 0x0
	.dword	4294967168                      # 0xffffff80
.LCPI2_25:
	.byte	0                               # 0x0
	.byte	128                             # 0x80
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_26:
	.dword	11822448956296633               # 0x2a0074666a4db9
	.dword	1013047762166479122             # 0xe0f1192846ff912
	.dword	11822448956296633               # 0x2a0074666a4db9
	.dword	1013047762166479122             # 0xe0f1192846ff912
.LCPI2_27:
	.half	53333                           # 0xd055
	.half	9948                            # 0x26dc
	.half	26830                           # 0x68ce
	.half	13109                           # 0x3335
	.half	16431                           # 0x402f
	.half	58                              # 0x3a
	.half	21                              # 0x15
	.half	21                              # 0x15
	.half	53333                           # 0xd055
	.half	9948                            # 0x26dc
	.half	26830                           # 0x68ce
	.half	13109                           # 0x3335
	.half	16431                           # 0x402f
	.half	58                              # 0x3a
	.half	21                              # 0x15
	.half	21                              # 0x15
.LCPI2_28:
	.half	10629                           # 0x2985
	.half	64649                           # 0xfc89
	.half	48485                           # 0xbd65
	.half	49719                           # 0xc237
	.half	12939                           # 0x328b
	.half	2249                            # 0x8c9
	.half	65206                           # 0xfeb6
	.half	1799                            # 0x707
	.half	10629                           # 0x2985
	.half	64649                           # 0xfc89
	.half	48485                           # 0xbd65
	.half	49719                           # 0xc237
	.half	12939                           # 0x328b
	.half	2249                            # 0x8c9
	.half	65206                           # 0xfeb6
	.half	1799                            # 0x707
.LCPI2_29:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_30:
	.dword	-9007194961870848               # 0xffe00000ffe00000
	.dword	0                               # 0x0
	.dword	-9007194961870848               # 0xffe00000ffe00000
	.dword	0                               # 0x0
.LCPI2_31:
	.half	1029                            # 0x405
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	256                             # 0x100
	.half	257                             # 0x101
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	1029                            # 0x405
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	256                             # 0x100
	.half	257                             # 0x101
	.half	0                               # 0x0
	.half	32768                           # 0x8000
.LCPI2_32:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI2_33:
	.dword	32755                           # 0x7ff3
	.dword	0                               # 0x0
	.dword	32755                           # 0x7ff3
	.dword	0                               # 0x0
.LCPI2_34:
	.word	1073348602                      # 0x3ff9fffa
	.word	1073348602                      # 0x3ff9fffa
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1073348602                      # 0x3ff9fffa
	.word	1073348602                      # 0x3ff9fffa
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_35:
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_36:
	.dword	17179869183                     # 0x3ffffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_37:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_38:
	.dword	7                               # 0x7
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_39:
	.dword	-67765100618441532              # 0xff0f400001781cc4
	.dword	0                               # 0x0
	.dword	-67765100618441532              # 0xff0f400001781cc4
	.dword	0                               # 0x0
.LCPI2_40:
	.dword	-2168483219790129011            # 0xe1e800002f03988d
	.dword	-1                              # 0xffffffffffffffff
	.dword	-2168483219790129011            # 0xe1e800002f03988d
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_41:
	.dword	128                             # 0x80
	.dword	0                               # 0x0
	.dword	128                             # 0x80
	.dword	0                               # 0x0
.LCPI2_42:
	.dword	0                               # 0x0
	.dword	128                             # 0x80
	.dword	0                               # 0x0
	.dword	128                             # 0x80
.LCPI2_43:
	.dword	-2199023256065                  # 0xfffffdfffffffdff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-2199023256065                  # 0xfffffdfffffffdff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_44:
	.dword	-194                            # 0xffffffffffffff3e
	.dword	0                               # 0x0
	.dword	-194                            # 0xffffffffffffff3e
	.dword	0                               # 0x0
.LCPI2_45:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-54325499446493378              # 0xff3eff3eff3eff3e
	.dword	-1                              # 0xffffffffffffffff
	.dword	-54325499446493378              # 0xff3eff3eff3eff3e
.LCPI2_46:
	.dword	18014398509481984               # 0x40000000000000
	.dword	0                               # 0x0
	.dword	54043195528445952               # 0xc0000000000000
	.dword	0                               # 0x0
.LCPI2_47:
	.dword	0                               # 0x0
	.dword	562958543486984                 # 0x2000200020008
	.dword	0                               # 0x0
	.dword	562958543487000                 # 0x2000200020018
.LCPI2_48:
	.dword	1157442765409226768             # 0x1010101010101010
	.dword	0                               # 0x0
	.dword	1157442765409226768             # 0x1010101010101010
	.dword	0                               # 0x0
.LCPI2_49:
	.dword	72340172838076873               # 0x1010101010101c9
	.dword	72340172838076673               # 0x101010101010101
	.dword	72340172838076873               # 0x1010101010101c9
	.dword	72340172838076673               # 0x101010101010101
.LCPI2_50:
	.dword	60                              # 0x3c
	.dword	2260630401189896                # 0x8080808080808
	.dword	0                               # 0x0
	.dword	2260630401189896                # 0x8080808080808
.LCPI2_51:
	.dword	100                             # 0x64
	.dword	1921                            # 0x781
	.dword	100                             # 0x64
	.dword	0                               # 0x0
.LCPI2_52:
	.dword	15552                           # 0x3cc0
	.dword	0                               # 0x0
	.dword	15552                           # 0x3cc0
	.dword	0                               # 0x0
.LCPI2_53:
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	68399059305169151               # 0xf3009500db00ff
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	68399059305169151               # 0xf3009500db00ff
.LCPI2_54:
	.dword	4294465439                      # 0xfff8579f
	.dword	0                               # 0x0
	.dword	4294465439                      # 0xfff8579f
	.dword	0                               # 0x0
.LCPI2_55:
	.dword	-5404319552844595200            # 0xb500000000000000
	.dword	36028797018963967               # 0x7fffffffffffff
	.dword	-5404319552844595200            # 0xb500000000000000
	.dword	36028797018963967               # 0x7fffffffffffff
.LCPI2_56:
	.dword	128                             # 0x80
	.dword	164282499072000                 # 0x956a00000000
	.dword	128                             # 0x80
	.dword	164282499072000                 # 0x956a00000000
.LCPI2_57:
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967295                      # 0xffffffff
.LCPI2_58:
	.dword	2                               # 0x2
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	0                               # 0x0
.LCPI2_59:
	.dword	4294967246                      # 0xffffffce
	.dword	0                               # 0x0
	.dword	4294967246                      # 0xffffffce
	.dword	0                               # 0x0
.LCPI2_60:
	.dword	35184372088832                  # 0x200000000000
	.dword	0                               # 0x0
	.dword	35184372088832                  # 0x200000000000
	.dword	0                               # 0x0
.LCPI2_61:
	.dword	16615                           # 0x40e7
	.dword	16384                           # 0x4000
	.dword	16615                           # 0x40e7
	.dword	16384                           # 0x4000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 256
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 160
	xvsrani.b.h	$xr2, $xr1, 12
	xvst	$xr2, $sp, 192
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 160
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvsrani.b.h	$xr1, $xr0, 9
	xvst	$xr1, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 160
	xvsrani.b.h	$xr2, $xr1, 13
	xvst	$xr2, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 160
	xvsrani.b.h	$xr2, $xr1, 4
	xvst	$xr2, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 160
	xvsrani.b.h	$xr2, $xr1, 7
	xvst	$xr2, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvrepli.b	$xr1, -1
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	xvori.b	$xr0, $xr1, 0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvsrani.b.h	$xr0, $xr1, 3
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 160
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr1, $a0
	xvsrani.b.h	$xr1, $xr0, 9
	xvst	$xr1, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_18)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.b.h	$xr0, $xr1, 9
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_21)
	xvst	$xr0, $sp, 160
	xvsrani.b.h	$xr2, $xr1, 3
	xvst	$xr2, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvrepli.b	$xr0, 8
	xvsrani.b.h	$xr0, $xr0, 13
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.b.h	$xr0, $xr1, 9
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_25)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.b.h	$xr1, $xr0, 8
	xvst	$xr1, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_28)
	xvst	$xr0, $sp, 160
	xvsrani.h.w	$xr2, $xr1, 15
	xvst	$xr2, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 160
	xvrepli.d	$xr0, 1
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvsrani.h.w	$xr0, $xr1, 12
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.h.w	$xr0, $xr1, 26
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvsrani.h.w	$xr0, $xr0, 26
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvrepli.d	$xr0, 19
	xvsrani.w.d	$xr0, $xr1, 12
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvsrani.w.d	$xr0, $xr1, 52
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_35)
	xvst	$xr0, $sp, 160
	xvsrani.w.d	$xr2, $xr1, 47
	xvst	$xr2, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_38)
	xvst	$xr0, $sp, 160
	xvsrani.d.q	$xr2, $xr1, 29
	xvst	$xr2, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_40)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.d.q	$xr0, $xr1, 5
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.d.q	$xr0, $xr1, 64
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	xvst	$xr0, $sp, 160
	xvrepli.w	$xr0, -2
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvsrani.d.q	$xr1, $xr0, 55
	xvst	$xr1, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_45)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.d.q	$xr0, $xr1, 112
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_47)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.d.q	$xr0, $xr1, 13
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_49)
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.d.q	$xr0, $xr1, 44
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_51)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvsrani.d.q	$xr0, $xr1, 69
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvsrani.d.q	$xr0, $xr0, 21
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_53)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.d.q	$xr0, $xr1, 106
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_54)
	xvrepli.d	$xr1, 3
	xvst	$xr1, $sp, 160
	xvsrani.d.q	$xr0, $xr0, 30
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_57)
	xvst	$xr0, $sp, 160
	xvsrani.d.q	$xr2, $xr1, 41
	xvst	$xr2, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvrepli.d	$xr0, 64
	xvsrani.d.q	$xr0, $xr1, 102
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_58)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvsrani.d.q	$xr1, $xr0, 4
	xvst	$xr1, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_59)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvsrani.d.q	$xr0, $xr1, 107
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_60)
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_61)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrani.d.q	$xr0, $xr1, 33
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -256
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvsrani.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
