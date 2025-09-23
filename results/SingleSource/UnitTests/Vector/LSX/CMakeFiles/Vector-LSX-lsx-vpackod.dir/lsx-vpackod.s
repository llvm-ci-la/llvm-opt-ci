	.file	"lsx-vpackod.c"
	.text
	.globl	check_lsx_out                   # -- Begin function check_lsx_out
	.p2align	5
	.type	check_lsx_out,@function
check_lsx_out:                          # @check_lsx_out
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
	slti	$a0, $a2, 16
	ori	$a1, $zero, 16
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
	.size	check_lsx_out, .Lfunc_end0-check_lsx_out
                                        # -- End function
	.globl	check_lsx_fp_out                # -- Begin function check_lsx_fp_out
	.p2align	5
	.type	check_lsx_fp_out,@function
check_lsx_fp_out:                       # @check_lsx_fp_out
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
	ori	$s8, $zero, 16
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
	pcaddu18i	$t8, %call36(check_lsx_out)
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
	.size	check_lsx_fp_out, .Lfunc_end1-check_lsx_fp_out
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI2_0:
	.byte	32                              # 0x20
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
	.dword	71494644084506624               # 0xfe000000000000
	.dword	0                               # 0x0
.LCPI2_2:
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_3:
	.dword	4503668346847248                # 0x10001000000010
	.dword	68719476736                     # 0x1000000000
.LCPI2_4:
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.byte	0                               # 0x0
.LCPI2_5:
	.dword	-55732904395407565              # 0xff39ff37ff35ff33
	.dword	2378216434095167291             # 0x21011f3f193d173b
.LCPI2_6:
	.byte	18                              # 0x12
	.byte	51                              # 0x33
	.byte	20                              # 0x14
	.byte	53                              # 0x35
	.byte	22                              # 0x16
	.byte	55                              # 0x37
	.byte	24                              # 0x18
	.byte	57                              # 0x39
	.byte	26                              # 0x1a
	.byte	59                              # 0x3b
	.byte	28                              # 0x1c
	.byte	61                              # 0x3d
	.byte	30                              # 0x1e
	.byte	63                              # 0x3f
	.byte	32                              # 0x20
	.byte	1                               # 0x1
.LCPI2_7:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.byte	32                              # 0x20
	.byte	33                              # 0x21
.LCPI2_8:
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	0                               # 0x0
.LCPI2_9:
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_10:
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
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
.LCPI2_11:
	.dword	0                               # 0x0
	.dword	71776119077928960               # 0xff000000ff0000
.LCPI2_12:
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_13:
	.dword	12948231184646144               # 0x2e0059003b0000
	.dword	0                               # 0x0
.LCPI2_14:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	59                              # 0x3b
	.byte	76                              # 0x4c
	.byte	89                              # 0x59
	.byte	52                              # 0x34
	.byte	46                              # 0x2e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_15:
	.dword	281457796841472                 # 0xfffc00000000
	.dword	70300024700928                  # 0x3ff000000000
.LCPI2_16:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32                              # 0x20
	.half	65532                           # 0xfffc
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16368                           # 0x3ff0
.LCPI2_17:
	.half	510                             # 0x1fe
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.half	21                              # 0x15
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	58                              # 0x3a
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_19:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2048                            # 0x800
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_20:
	.dword	-107805461541093376             # 0xfe80ff80ffff0000
	.dword	0                               # 0x0
.LCPI2_21:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65408                           # 0xff80
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_22:
	.half	65282                           # 0xff02
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65152                           # 0xfe80
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_23:
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	281471751290879                 # 0xffff3fbfffff
.LCPI2_24:
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_25:
	.half	32760                           # 0x7ff8
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	16319                           # 0x3fbf
	.half	16319                           # 0x3fbf
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_26:
	.dword	255                             # 0xff
	.dword	281470681776256                 # 0xffff00008080
.LCPI2_27:
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	25442                           # 0x6362
	.half	32896                           # 0x8080
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_28:
	.dword	0                               # 0x0
	.dword	-281474976710656                # 0xffff000000000000
.LCPI2_29:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	20                              # 0x14
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_30:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
.LCPI2_31:
	.half	59                              # 0x3b
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	61440                           # 0xf000
	.half	65535                           # 0xffff
	.half	17422                           # 0x440e
	.half	0                               # 0x0
.LCPI2_32:
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
.LCPI2_33:
	.half	36014                           # 0x8cae
	.half	0                               # 0x0
	.half	40346                           # 0x9d9a
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_34:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	51456                           # 0xc900
	.half	0                               # 0x0
	.half	18007                           # 0x4657
	.half	0                               # 0x0
	.half	52941                           # 0xcecd
	.half	0                               # 0x0
.LCPI2_35:
	.dword	131328                          # 0x20100
	.dword	0                               # 0x0
.LCPI2_36:
	.word	11                              # 0xb
	.word	131328                          # 0x20100
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_37:
	.dword	0                               # 0x0
	.dword	240747116158733882              # 0x3574e3a03574e3a
.LCPI2_38:
	.word	16842752                        # 0x1010000
	.word	0                               # 0x0
	.word	1648393731                      # 0x62407e03
	.word	56053306                        # 0x3574e3a
.LCPI2_39:
	.dword	1080878341659033600             # 0xf000d2000000000
	.dword	1224995728758145024             # 0x11000f2000000000
.LCPI2_40:
	.word	234884128                       # 0xe000c20
	.word	251661600                       # 0xf000d20
	.word	268439072                       # 0x10000e20
	.word	285216544                       # 0x11000f20
.LCPI2_41:
	.dword	211106232532992                 # 0xc00000000000
	.dword	476741369856                    # 0x6f00000000
.LCPI2_42:
	.word	4294950912                      # 0xffffc000
	.word	49152                           # 0xc000
	.word	7946                            # 0x1f0a
	.word	111                             # 0x6f
.LCPI2_43:
	.dword	281474974613471                 # 0xffffffdfffdf
	.dword	281474976710655                 # 0xffffffffffff
.LCPI2_44:
	.word	4292869856                      # 0xffdffee0
	.word	4292870111                      # 0xffdfffdf
	.word	4294967032                      # 0xfffffef8
	.word	4294967295                      # 0xffffffff
.LCPI2_45:
	.word	65280                           # 0xff00
	.word	65535                           # 0xffff
	.word	65535                           # 0xffff
	.word	65535                           # 0xffff
.LCPI2_46:
	.dword	-9223254386954698624            # 0x80006b0080808080
	.dword	-9223230753905573888            # 0x8000807f00000000
.LCPI2_47:
	.word	2154496011                      # 0x806b000b
	.word	2155905152                      # 0x80808080
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_48:
	.word	2816                            # 0xb00
	.word	2147511040                      # 0x80006b00
	.word	2155905024                      # 0x80808000
	.word	2147516543                      # 0x8000807f
.LCPI2_49:
	.dword	70373039144959                  # 0x4000ffffffff
	.dword	4294967295                      # 0xffffffff
.LCPI2_50:
	.word	4294901760                      # 0xffff0000
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI2_51:
	.word	16384                           # 0x4000
	.word	16384                           # 0x4000
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_52:
	.dword	281479271743488                 # 0x1000100010000
	.dword	281479271677952                 # 0x1000100000000
.LCPI2_53:
	.word	0                               # 0x0
	.word	65536                           # 0x10000
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_54:
	.dword	-9205498373686165504            # 0x803f800080000000
	.dword	-2287757959024852927            # 0xe0404041e0404041
.LCPI2_55:
	.dword	-2287757959561723840            # 0xe0404041c0404040
	.dword	-9205498373686165504            # 0x803f800080000000
.LCPI2_56:
	.dword	-844437815230468                # 0xfffcfffcfffcfffc
	.dword	4679240081557422080             # 0x40f0001000000000
.LCPI2_57:
	.dword	2459571365176480784             # 0x2222272011111410
	.dword	137438953504                    # 0x2000000020
.LCPI2_58:
	.dword	139268814                       # 0x84d12ce
	.dword	2999616560892150                # 0xaa822a79308f6
.LCPI2_59:
	.dword	280929474052096                 # 0xff80fd820000
	.dword	139268814                       # 0x84d12ce
.LCPI2_60:
	.dword	264117597018502561              # 0x3aa558e1d37b5a1
	.dword	2999616560892150                # 0xaa822a79308f6
.LCPI2_61:
	.dword	-242618439674746                # 0xffff2356fe165486
	.dword	281470681808895                 # 0xffff0000ffff
.LCPI2_62:
	.dword	6845105392261227837             # 0x5efeb3165bd7653d
	.dword	-242618439674746                # 0xffff2356fe165486
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	vst	$vr1, $sp, 80
	vpackod.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vpackod.b	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vpackod.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vpackod.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 80
	vpackod.b	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 256
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 80
	ori	$a0, $zero, 252
	lu32i.d	$a0, 256
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vpackod.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr0, $sp, 80
	vpackod.b	$vr0, $vr1, $vr2
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vpackod.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3280
	ori	$a0, $a0, 99
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 80
	lu12i.w	$a0, -207306
	ori	$a0, $a0, 867
	vreplgr2vr.w	$vr0, $a0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vpackod.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_14)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vpackod.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr0, $sp, 80
	vrepli.d	$vr0, 64
	vpackod.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vpackod.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vpackod.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	vldi	$vr1, -2305
	vst	$vr1, $sp, 80
	vrepli.b	$vr1, -1
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vpackod.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vpackod.h	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_22)
	vst	$vr0, $sp, 80
	vpackod.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 3968
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 80
	lu12i.w	$a0, 325632
	vreplgr2vr.w	$vr0, $a0
	vpackod.h	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_25)
	vst	$vr0, $sp, 80
	vpackod.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vpackod.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vpackod.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 495
	ori	$a0, $a0, 4014
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 80
	vrepli.h	$vr0, -82
	vrepli.h	$vr1, 30
	vpackod.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_31)
	vst	$vr0, $sp, 80
	vpackod.h	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_34)
	vst	$vr0, $sp, 80
	vpackod.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_36)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vpackod.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_38)
	vst	$vr0, $sp, 80
	vpackod.w	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.d	$vr0, 1
	vst	$vr0, $sp, 80
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vpackod.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vpackod.w	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_40)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vpackod.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_42)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vpackod.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_45)
	vst	$vr0, $sp, 80
	vpackod.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vldi	$vr0, -1552
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vpackod.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16448
	ori	$a1, $a0, 1284
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 80
	ori	$a0, $a0, 1028
	lu32i.d	$a0, 263428
	lu52i.d	$a0, $a0, 64
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vpackod.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_48)
	vst	$vr0, $sp, 80
	vpackod.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_51)
	vst	$vr0, $sp, 80
	vpackod.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_53)
	vst	$vr0, $sp, 80
	vrepli.h	$vr0, 1
	vpackod.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 32768
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 80
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vpackod.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65538
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 80
	vrepli.h	$vr0, -2
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vpackod.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vpackod.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_54)
	vst	$vr0, $sp, 80
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_55)
	lu12i.w	$a0, -130044
	ori	$a0, $a0, 65
	vreplgr2vr.w	$vr1, $a0
	vpackod.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_56)
	vst	$vr0, $sp, 80
	lu32i.d	$s0, 16
	lu52i.d	$a0, $s0, 1039
	vreplgr2vr.d	$vr0, $a0
	vrepli.h	$vr1, -4
	vpackod.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vpackod.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_57)
	vrepli.w	$vr1, 32
	vst	$vr1, $sp, 80
	vpackod.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 293
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 299
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_59)
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_60)
	vst	$vr0, $sp, 80
	vpackod.d	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 305
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_61)
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_62)
	vst	$vr0, $sp, 80
	vldi	$vr0, -2305
	vpackod.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 311
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vpackod.c"
	.size	.L.str.5, 131

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
