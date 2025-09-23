	.file	"lsx-vssrlrni.c"
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
	.dword	-9187343237679939584            # 0x8080000080800000
	.dword	-9187201952591609728            # 0x8080808000008080
.LCPI2_1:
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
.LCPI2_2:
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
.LCPI2_3:
	.byte	132                             # 0x84
	.byte	16                              # 0x10
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	144                             # 0x90
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_4:
	.dword	-1                              # 0xffffffffffffffff
	.dword	1224716311355920639             # 0x10ff10ff10ff10ff
.LCPI2_5:
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.byte	32                              # 0x20
	.byte	33                              # 0x21
.LCPI2_6:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_7:
	.dword	0                               # 0x0
	.dword	-281474976710656                # 0xffff000000000000
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_9:
	.dword	4294967295                      # 0xffffffff
	.dword	1279                            # 0x4ff
.LCPI2_10:
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
.LCPI2_11:
	.byte	132                             # 0x84
	.byte	19                              # 0x13
	.byte	15                              # 0xf
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
.LCPI2_12:
	.dword	8796093022208                   # 0x80000000000
	.dword	0                               # 0x0
.LCPI2_13:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	4                               # 0x4
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_14:
	.dword	524287                          # 0x7ffff
	.dword	458759                          # 0x70007
.LCPI2_15:
	.half	13                              # 0xd
	.half	65535                           # 0xffff
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_16:
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32780                           # 0x800c
	.half	0                               # 0x0
.LCPI2_18:
	.dword	4503668347895824                # 0x10001000100010
	.dword	4503668346847248                # 0x10001000000010
.LCPI2_19:
	.half	65534                           # 0xfffe
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65534                           # 0xfffe
	.half	65535                           # 0xffff
	.half	65407                           # 0xff7f
	.half	65535                           # 0xffff
.LCPI2_20:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_21:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967168                     # 0xffffffff00000080
.LCPI2_22:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967040                      # 0xffffff00
.LCPI2_23:
	.word	2147450879                      # 0x7fff7fff
	.word	0                               # 0x0
	.word	2147450879                      # 0x7fff7fff
	.word	2147450879                      # 0x7fff7fff
.LCPI2_24:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	2147483647                      # 0x7fffffff
.LCPI2_25:
	.dword	0                               # 0x0
	.dword	274877906946                    # 0x4000000002
.LCPI2_26:
	.word	16907911                        # 0x101fe87
	.word	16843262                        # 0x10101fe
	.word	16843009                        # 0x1010101
	.word	16843009                        # 0x1010101
.LCPI2_27:
	.word	4212399160                      # 0xfb141c38
	.word	101843647                       # 0x61202bf
	.word	4258852727                      # 0xfdd8ef77
	.word	4289134481                      # 0xffa6ff91
.LCPI2_28:
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_29:
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	4286578688                      # 0xff800000
	.word	4290838400                      # 0xffc0ff80
.LCPI2_30:
	.dword	137437904912                    # 0x1ffff00010
	.dword	32                              # 0x20
.LCPI2_31:
	.dword	-7345348727126622208            # 0x9a10144000400000
	.dword	-140735374261247                # 0xffff80007e028401
.LCPI2_32:
	.dword	-20547265270644612              # 0xffb7005f0070007c
	.dword	4286644348                      # 0xff81007c
.LCPI2_33:
	.dword	506647227203589502              # 0x707f8f803e8157e
	.dword	434322516199081991              # 0x607060700000807
.LCPI2_34:
	.dword	-16711425                       # 0xffffffffff0100ff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_35:
	.dword	0                               # 0x0
	.dword	4611686019501129728             # 0x4000000040000000
.LCPI2_36:
	.dword	133143986207                    # 0x1f0000001f
	.dword	137438953504                    # 0x2000000020
.LCPI2_37:
	.dword	35184372154368                  # 0x200000010000
	.dword	144678155242832386              # 0x202000402020202
.LCPI2_38:
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_39:
	.byte	9                               # 0x9
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
.LCPI2_40:
	.dword	9187201950435737471             # 0x7f7f7f7f7f7f7f7f
	.dword	2130739071                      # 0x7f007f7f
.LCPI2_41:
	.byte	248                             # 0xf8
	.byte	165                             # 0xa5
	.byte	58                              # 0x3a
	.byte	114                             # 0x72
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	214                             # 0xd6
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_42:
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
.LCPI2_43:
	.dword	134743552                       # 0x8080600
	.dword	0                               # 0x0
.LCPI2_44:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	192                             # 0xc0
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
.LCPI2_45:
	.dword	9187063411970637695             # 0x7f7f017f7f7f7f7f
	.dword	9187201948296675354             # 0x7f7f7f7f0000001a
.LCPI2_46:
	.byte	96                              # 0x60
	.byte	76                              # 0x4c
	.byte	130                             # 0x82
	.byte	3                               # 0x3
	.byte	108                             # 0x6c
	.byte	254                             # 0xfe
	.byte	27                              # 0x1b
	.byte	254                             # 0xfe
	.byte	225                             # 0xe1
	.byte	30                              # 0x1e
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	27                              # 0x1b
	.byte	254                             # 0xfe
.LCPI2_47:
	.byte	52                              # 0x34
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	24                              # 0x18
	.byte	61                              # 0x3d
	.byte	9                               # 0x9
	.byte	123                             # 0x7b
	.byte	127                             # 0x7f
	.byte	125                             # 0x7d
	.byte	17                              # 0x11
.LCPI2_48:
	.dword	577032515664349187              # 0x802080408060803
	.dword	0                               # 0x0
.LCPI2_49:
	.byte	186                             # 0xba
	.byte	81                              # 0x51
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	195                             # 0xc3
	.byte	179                             # 0xb3
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	253                             # 0xfd
	.byte	137                             # 0x89
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	129                             # 0x81
	.byte	58                              # 0x3a
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_50:
	.dword	140183438655359                 # 0x7f7f00107f7f
	.dword	33346395055911                  # 0x1e5410082727
.LCPI2_51:
	.byte	238                             # 0xee
	.byte	194                             # 0xc2
	.byte	39                              # 0x27
	.byte	36                              # 0x24
	.byte	62                              # 0x3e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	85                              # 0x55
	.byte	151                             # 0x97
	.byte	109                             # 0x6d
	.byte	36                              # 0x24
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_52:
	.byte	154                             # 0x9a
	.byte	0                               # 0x0
	.byte	154                             # 0x9a
	.byte	0                               # 0x0
	.byte	33                              # 0x21
	.byte	0                               # 0x0
	.byte	62                              # 0x3e
	.byte	0                               # 0x0
	.byte	81                              # 0x51
	.byte	1                               # 0x1
	.byte	118                             # 0x76
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_53:
	.dword	0                               # 0x0
	.dword	9223090561878065152             # 0x7fff000000000000
.LCPI2_54:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
.LCPI2_55:
	.dword	16777216                        # 0x1000000
	.dword	32512                           # 0x7f00
.LCPI2_56:
	.half	4                               # 0x4
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_57:
	.half	0                               # 0x0
	.half	127                             # 0x7f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_58:
	.dword	85900656660                     # 0x1400140014
	.dword	3661734497747070                # 0xd02540000007e
.LCPI2_59:
	.half	1285                            # 0x505
	.half	1285                            # 0x505
	.half	0                               # 0x0
	.half	1285                            # 0x505
	.half	0                               # 0x0
	.half	1285                            # 0x505
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_60:
	.half	31625                           # 0x7b89
	.half	8064                            # 0x1f80
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	51761                           # 0xca31
	.half	38130                           # 0x94f2
	.half	20027                           # 0x4e3b
	.half	855                             # 0x357
.LCPI2_61:
	.dword	255                             # 0xff
	.dword	171                             # 0xab
.LCPI2_62:
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	63                              # 0x3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_63:
	.half	65534                           # 0xfffe
	.half	43691                           # 0xaaab
	.half	21845                           # 0x5555
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_64:
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_65:
	.dword	85899345940                     # 0x1400000014
	.dword	65536                           # 0x10000
.LCPI2_66:
	.half	20352                           # 0x4f80
	.half	20352                           # 0x4f80
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	20353                           # 0x4f81
	.half	20352                           # 0x4f80
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_67:
	.half	10176                           # 0x27c0
	.half	0                               # 0x0
	.half	636                             # 0x27c
	.half	636                             # 0x27c
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_68:
	.dword	2                               # 0x2
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
.LCPI2_69:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_70:
	.half	65213                           # 0xfebd
	.half	65436                           # 0xff9c
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65285                           # 0xff05
	.half	65436                           # 0xff9c
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_71:
	.half	25443                           # 0x6363
	.half	32896                           # 0x8080
	.half	25443                           # 0x6363
	.half	32896                           # 0x8080
	.half	32896                           # 0x8080
	.half	32896                           # 0x8080
	.half	32994                           # 0x80e2
	.half	32896                           # 0x8080
.LCPI2_72:
	.dword	2147450879                      # 0x7fff7fff
	.dword	0                               # 0x0
.LCPI2_73:
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_74:
	.dword	0                               # 0x0
	.dword	50463490                        # 0x3020302
.LCPI2_75:
	.half	32768                           # 0x8000
	.half	49280                           # 0xc080
	.half	32768                           # 0x8000
	.half	49280                           # 0xc080
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_76:
	.dword	0                               # 0x0
	.dword	4611756388245323776             # 0x4000400040004000
.LCPI2_77:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	4344                            # 0x10f8
.LCPI2_78:
	.dword	134209537                       # 0x7ffe001
	.dword	576451956210434048              # 0x7fff80000008000
.LCPI2_79:
	.word	4294967295                      # 0xffffffff
	.word	4294705184                      # 0xfffc0020
	.word	4294910207                      # 0xffff20ff
	.word	0                               # 0x0
.LCPI2_80:
	.word	131076                          # 0x20004
	.word	1048580                         # 0x100004
	.word	4294934530                      # 0xffff8002
	.word	4294901761                      # 0xffff0001
.LCPI2_81:
	.dword	195067600678797457              # 0x2b504f305a5c091
	.dword	0                               # 0x0
.LCPI2_82:
	.word	4093987763                      # 0xf4054bb3
	.word	3031962158                      # 0xb4b8122e
	.word	716466993                       # 0x2ab46b31
	.word	1453366886                      # 0x56a09e66
.LCPI2_83:
	.dword	0                               # 0x0
	.dword	114349209315328                 # 0x680000006800
.LCPI2_84:
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
.LCPI2_85:
	.word	4294967295                      # 0xffffffff
	.word	4152287132                      # 0xf77edf9c
	.word	4152360925                      # 0xf77fffdd
	.word	4286578686                      # 0xff7ffffe
.LCPI2_86:
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_87:
	.word	3974160606                      # 0xece0e0de
	.word	4294181896                      # 0xfff40408
	.word	803651597                       # 0x2fe6c00d
	.word	1073217791                      # 0x3ff800ff
.LCPI2_88:
	.word	264232961                       # 0xfbfe001
	.word	4112636                         # 0x3ec0fc
	.word	4034854912                      # 0xf07f0000
	.word	4126877                         # 0x3ef89d
.LCPI2_89:
	.dword	9007199254740992                # 0x20000000000000
	.dword	137438953504                    # 0x2000000020
.LCPI2_90:
	.word	65539                           # 0x10003
	.word	65445                           # 0xffa5
	.word	65627                           # 0x1005b
	.word	65430                           # 0xff96
.LCPI2_91:
	.word	16777112                        # 0xffff98
	.word	16711689                        # 0xff0009
	.word	16711935                        # 0xff00ff
	.word	16711935                        # 0xff00ff
.LCPI2_92:
	.word	4294901760                      # 0xffff0000
	.word	4294901760                      # 0xffff0000
	.word	4294902015                      # 0xffff00ff
	.word	4294902015                      # 0xffff00ff
.LCPI2_93:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
.LCPI2_94:
	.dword	1677807438899337328             # 0x1748c4f9ed1a5870
	.dword	-9223372036854775808            # 0x8000000000000000
.LCPI2_95:
	.dword	-6901027304200018974            # 0xa03aa03ae3e2e3e2
	.dword	4026527743                      # 0xefffefff
.LCPI2_96:
	.dword	4215369252200251392             # 0x3a8000003a800000
	.dword	1442840662                      # 0x56000056
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	vst	$vr0, $sp, 128
	vldi	$vr0, -1552
	vssrlrni.bu.h	$vr1, $vr0, 9
	vst	$vr1, $sp, 144
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 128
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vssrlrni.bu.h	$vr1, $vr0, 4
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_5)
	vst	$vr0, $sp, 128
	vldi	$vr0, -2273
	vssrlrni.bu.h	$vr0, $vr1, 1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 128
	vrepli.b	$vr0, 82
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.bu.h	$vr0, $vr1, 2
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_8)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.bu.h	$vr1, $vr0, 4
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.bu.h	$vr0, $vr0, 4
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_11)
	vst	$vr0, $sp, 128
	vssrlrni.bu.h	$vr1, $vr2, 2
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr1, $sp, 128
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.hu.w	$vr1, $vr0, 7
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr0, $sp, 128
	vssrlrni.hu.w	$vr2, $vr1, 1
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrlrni.hu.w	$vr0, $vr1, 22
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vst	$vr0, $sp, 128
	lu12i.w	$a0, 524287
	ori	$s0, $a0, 4095
	lu52i.d	$a0, $s0, -2048
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, -337190
	ori	$a0, $a0, 3501
	lu32i.d	$a0, 152146
	lu52i.d	$a0, $a0, 1317
	vreplgr2vr.d	$vr1, $a0
	vssrlrni.hu.w	$vr1, $vr0, 6
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_19)
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 128
	lu12i.w	$a0, -12337
	ori	$a0, $a0, 3292
	vreplgr2vr.w	$vr0, $a0
	vssrlrni.hu.w	$vr1, $vr0, 28
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524288
	pcalau12i	$a1, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_20)
	lu32i.d	$a0, 0
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 128
	vssrlrni.wu.d	$vr0, $vr0, 1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	pcalau12i	$a1, %pc_hi20(.LCPI2_23)
	vld	$vr2, $a1, %pc_lo12(.LCPI2_23)
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	vld	$vr1, $a0, %pc_lo12(.LCPI2_22)
	vst	$vr0, $sp, 128
	vori.b	$vr0, $vr2, 0
	vssrlrni.wu.d	$vr0, $vr1, 24
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.wu.d	$vr1, $vr0, 52
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.wu.d	$vr0, $vr0, 41
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 128
	vssrlrni.wu.d	$vr2, $vr1, 58
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.wu.d	$vr1, $vr0, 21
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.du.q	$vr0, $vr0, 86
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.du.q	$vr0, $vr0, 109
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.du.q	$vr0, $vr0, 65
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	lu12i.w	$a0, -16
	vreplgr2vr.w	$vr0, $a0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.du.q	$vr0, $vr1, 59
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.du.q	$vr0, $vr0, 67
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_32)
	vst	$vr0, $sp, 128
	vssrlrni.du.q	$vr2, $vr1, 91
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_34)
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vssrlrni.du.q	$vr1, $vr0, 49
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.du.q	$vr0, $vr0, 33
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	ori	$a0, $zero, 0
	lu32i.d	$a0, -2
	lu52i.d	$a0, $a0, 2047
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.du.q	$vr1, $vr0, 58
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_36)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.du.q	$vr1, $vr0, 39
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.du.q	$vr0, $vr0, 38
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_39)
	vst	$vr0, $sp, 128
	vssrlrni.b.h	$vr2, $vr1, 7
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	ori	$a0, $zero, 1024
	vreplgr2vr.d	$vr0, $a0
	vssrlrni.b.h	$vr0, $vr1, 14
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_41)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vssrlrni.b.h	$vr1, $vr0, 6
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.b.h	$vr0, $vr0, 13
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrlrni.b.h	$vr0, $vr1, 12
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_44)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.b.h	$vr0, $vr1, 13
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_47)
	vst	$vr0, $sp, 128
	vssrlrni.b.h	$vr2, $vr1, 1
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_49)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.b.h	$vr0, $vr1, 13
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_52)
	vst	$vr0, $sp, 128
	vssrlrni.b.h	$vr2, $vr1, 2
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_54)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.h.w	$vr1, $vr0, 1
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_57)
	vst	$vr0, $sp, 128
	vssrlrni.h.w	$vr2, $vr1, 8
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_59)
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_60)
	vst	$vr0, $sp, 128
	vssrlrni.h.w	$vr2, $vr1, 22
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_61)
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_63)
	vst	$vr0, $sp, 128
	vssrlrni.h.w	$vr2, $vr1, 24
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_64)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vssrlrni.h.w	$vr1, $vr0, 7
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_65)
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_66)
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_67)
	vst	$vr0, $sp, 128
	vssrlrni.h.w	$vr2, $vr1, 26
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_68)
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_69)
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_70)
	vst	$vr0, $sp, 128
	vssrlrni.h.w	$vr1, $vr2, 15
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_71)
	vrepli.h	$vr1, 4
	vst	$vr1, $sp, 128
	vssrlrni.h.w	$vr0, $vr0, 29
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 293
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_72)
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_73)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.h.w	$vr0, $vr1, 9
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 299
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_74)
	pcalau12i	$a0, %pc_hi20(.LCPI2_75)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_75)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.h.w	$vr1, $vr0, 22
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 305
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_76)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_76)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.h.w	$vr0, $vr1, 18
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 311
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.h.w	$vr0, $vr0, 2
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 317
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_77)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_77)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vssrlrni.h.w	$vr1, $vr0, 30
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 323
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.w.d	$vr0, $vr0, 61
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 329
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_78)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_78)
	pcalau12i	$a0, %pc_hi20(.LCPI2_79)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_79)
	pcalau12i	$a0, %pc_hi20(.LCPI2_80)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_80)
	vst	$vr0, $sp, 128
	vssrlrni.w.d	$vr2, $vr1, 37
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 335
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_81)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_81)
	pcalau12i	$a0, %pc_hi20(.LCPI2_82)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_82)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrlrni.w.d	$vr0, $vr1, 37
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 341
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.w.d	$vr0, $vr0, 55
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 347
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_83)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_83)
	vst	$vr0, $sp, 128
	vrepli.h	$vr0, 13
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.w.d	$vr0, $vr1, 37
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 353
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_84)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_84)
	pcalau12i	$a0, %pc_hi20(.LCPI2_85)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_85)
	pcalau12i	$a0, %pc_hi20(.LCPI2_86)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_86)
	vst	$vr0, $sp, 128
	vssrlrni.w.d	$vr2, $vr1, 30
	vst	$vr2, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 359
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_87)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_87)
	pcalau12i	$a0, %pc_hi20(.LCPI2_88)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_88)
	vreplgr2vr.w	$vr2, $s0
	vst	$vr2, $sp, 96                   # 16-byte Folded Spill
	vst	$vr2, $sp, 128
	vssrlrni.w.d	$vr1, $vr0, 10
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 365
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_89)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_89)
	pcalau12i	$a0, %pc_hi20(.LCPI2_90)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_90)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vssrlrni.w.d	$vr1, $vr0, 43
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 371
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.w.d	$vr0, $vr0, 40
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 377
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_91)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_91)
	pcalau12i	$a0, %pc_hi20(.LCPI2_92)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_92)
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vssrlrni.w.d	$vr1, $vr0, 15
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 383
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vssrlrni.d.q	$vr0, $vr0, 124
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 389
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_93)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_93)
	pcalau12i	$a0, %pc_hi20(.LCPI2_94)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_94)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrlrni.d.q	$vr0, $vr1, 28
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 395
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_95)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_95)
	pcalau12i	$a0, %pc_hi20(.LCPI2_96)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_96)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vssrlrni.d.q	$vr1, $vr0, 117
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 401
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vssrlrni.c"
	.size	.L.str.5, 132

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
