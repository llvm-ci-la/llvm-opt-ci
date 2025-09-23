	.file	"lsx-vsubwod-1.c"
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
	.dword	34902952950890496               # 0x7c000d00400000
	.dword	17732923532771328               # 0x3f000000000000
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	188                             # 0xbc
	.byte	237                             # 0xed
	.byte	133                             # 0x85
	.byte	196                             # 0xc4
	.byte	0                               # 0x0
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	250                             # 0xfa
	.byte	243                             # 0xf3
	.byte	64                              # 0x40
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
	.byte	63                              # 0x3f
.LCPI2_3:
	.dword	34902897116184704               # 0x7c0000003e0080
	.dword	0                               # 0x0
.LCPI2_4:
	.byte	31                              # 0x1f
	.byte	128                             # 0x80
	.byte	143                             # 0x8f
	.byte	194                             # 0xc2
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	132                             # 0x84
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_5:
	.dword	4294967296                      # 0x100000000
	.dword	4294967297                      # 0x100000001
.LCPI2_6:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_7:
	.dword	4097                            # 0x1001
	.dword	32767                           # 0x7fff
.LCPI2_8:
	.half	4228                            # 0x1084
	.half	4097                            # 0x1001
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	36864                           # 0x9000
	.half	32767                           # 0x7fff
	.half	1                               # 0x1
	.half	0                               # 0x0
.LCPI2_9:
	.dword	4294951610                      # 0xffffc2ba
	.dword	-258                            # 0xfffffffffffffefe
.LCPI2_10:
	.half	49858                           # 0xc2c2
	.half	49850                           # 0xc2ba
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65130                           # 0xfe6a
	.half	65278                           # 0xfefe
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_11:
	.dword	1649267441664                   # 0x18000000000
	.dword	0                               # 0x0
.LCPI2_12:
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65152                           # 0xfe80
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_13:
	.half	254                             # 0xfe
	.half	0                               # 0x0
	.half	639                             # 0x27f
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	0                               # 0x0
.LCPI2_14:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
.LCPI2_15:
	.half	31315                           # 0x7a53
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	7946                            # 0x1f0a
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_16:
	.dword	-6674379176724                  # 0xfffff9ee000004ec
	.dword	386547057192                    # 0x5a00000228
.LCPI2_17:
	.half	7224                            # 0x1c38
	.half	64276                           # 0xfb14
	.half	703                             # 0x2bf
	.half	1554                            # 0x612
	.half	61303                           # 0xef77
	.half	64984                           # 0xfdd8
	.half	65425                           # 0xff91
	.half	65446                           # 0xffa6
.LCPI2_18:
	.half	65414                           # 0xff86
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_19:
	.half	8192                            # 0x2000
	.half	8160                            # 0x1fe0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8192                            # 0x2000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_20:
	.dword	2216203124517                   # 0x203ffffff25
	.dword	53790170415068                  # 0x30ebffffffdc
.LCPI2_21:
	.half	50378                           # 0xc4ca
	.half	49374                           # 0xc0de
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	21588                           # 0x5454
	.half	564                             # 0x234
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_22:
	.half	544                             # 0x220
	.half	49155                           # 0xc003
	.half	4304                            # 0x10d0
	.half	515                             # 0x203
	.half	6915                            # 0x1b03
	.half	528                             # 0x210
	.half	515                             # 0x203
	.half	12523                           # 0x30eb
.LCPI2_23:
	.dword	-61637075648512                 # 0xffffc7f100004000
	.dword	0                               # 0x0
.LCPI2_24:
	.half	0                               # 0x0
	.half	49152                           # 0xc000
	.half	57311                           # 0xdfdf
	.half	14351                           # 0x380f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_25:
	.dword	24011                           # 0x5dcb
	.dword	0                               # 0x0
.LCPI2_26:
	.word	58395                           # 0xe41b
	.word	0                               # 0x0
	.word	366552775                       # 0x15d926c7
	.word	0                               # 0x0
.LCPI2_27:
	.word	3890753728                      # 0xe7e830c0
	.word	24011                           # 0x5dcb
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_28:
	.dword	15480877                        # 0xec382d
	.dword	15480878                        # 0xec382e
.LCPI2_29:
	.word	1879048350                      # 0x7000009e
	.word	15728768                        # 0xf00080
	.word	8388736                         # 0x800080
	.word	15728769                        # 0xf00081
.LCPI2_30:
	.dword	-50569088                       # 0xfffffffffcfc6080
	.dword	-50529028                       # 0xfffffffffcfcfcfc
.LCPI2_31:
	.word	29046                           # 0x7176
	.word	40060                           # 0x9c7c
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_32:
	.word	4244373504                      # 0xfcfc0000
	.word	4244438268                      # 0xfcfcfcfc
	.word	4244438269                      # 0xfcfcfcfd
	.word	4244438268                      # 0xfcfcfcfc
.LCPI2_33:
	.dword	-1139151670                     # 0xffffffffbc19ecca
	.dword	-1056583254                     # 0xffffffffc105d1aa
.LCPI2_34:
	.word	4090418675                      # 0xf3ced5f3
	.word	3150507205                      # 0xbbc8ecc5
	.word	4172987091                      # 0xf8babad3
	.word	3233075621                      # 0xc0b4d1a5
.LCPI2_35:
	.dword	281479271743489                 # 0x1000100010001
	.dword	0                               # 0x0
.LCPI2_36:
	.dword	16646399                        # 0xfe00ff
	.dword	0                               # 0x0
.LCPI2_37:
	.dword	281479305036286                 # 0x1000101fd01fe
	.dword	281479271743489                 # 0x1000100010001
.LCPI2_38:
	.dword	-1152956689247331011            # 0xefffdffff0009d3d
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_39:
	.dword	-17587891081216                 # 0xfffff000fffff000
	.dword	-17592186000067                 # 0xfffff0000000ad3d
.LCPI2_40:
	.dword	-1095216660735                  # 0xffffff00ffffff01
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_41:
	.dword	280375465082880                 # 0xff0000000000
	.dword	1095216660735                   # 0xff000000ff
.LCPI2_42:
	.dword	281479271743612                 # 0x100010001007c
	.dword	0                               # 0x0
.LCPI2_43:
	.dword	281479271743489                 # 0x1000100010001
	.dword	281479271743612                 # 0x100010001007c
.LCPI2_44:
	.dword	6803072709951183361             # 0x5e695e95e1cb5a01
	.dword	0                               # 0x0
.LCPI2_45:
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
	.dword	71494648393039967               # 0xfe000100cf005f
.LCPI2_46:
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
	.dword	6874567358344223328             # 0x5f675e96e29a5a60
.LCPI2_47:
	.dword	9151031861919678977             # 0x7efefefe82010201
	.dword	0                               # 0x0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $sp, 64
	vsubwod.h.b	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 80
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr0, $sp, 64
	vsubwod.h.b	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsubwod.h.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.h	$vr0, 1
	vst	$vr0, $sp, 64
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vsubwod.h.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsubwod.w.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsubwod.w.h	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_8)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsubwod.w.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -128
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 64
	lu52i.d	$a0, $zero, -8
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vsubwod.w.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsubwod.w.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr0, $sp, 64
	vsubwod.w.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsubwod.w.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr0, $sp, 64
	vsubwod.w.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 64
	vsubwod.w.h	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vsubwod.w.h	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_22)
	vst	$vr0, $sp, 64
	vsubwod.w.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_24)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsubwod.w.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsubwod.d.w	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 64
	vsubwod.d.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 64
	vrepli.d	$vr0, 20
	vsubwod.d.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	vst	$vr0, $sp, 64
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_29)
	lu12i.w	$a0, -228292
	ori	$a0, $a0, 2174
	lu32i.d	$a0, 247891
	vreplgr2vr.d	$vr1, $a0
	vsubwod.d.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_32)
	vst	$vr0, $sp, 64
	vsubwod.d.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	vst	$vr0, $sp, 64
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	lu12i.w	$a0, -1297
	ori	$a0, $a0, 4091
	vreplgr2vr.w	$vr1, $a0
	vsubwod.d.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_37)
	vst	$vr0, $sp, 64
	vsubwod.q.d	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsubwod.q.d	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vst	$vr1, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_39)
	vst	$vr0, $sp, 64
	vldi	$vr0, -2800
	vsubwod.q.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_41)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsubwod.q.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_43)
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsubwod.q.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_46)
	vst	$vr0, $sp, 64
	vsubwod.q.d	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_47)
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 64
	vsubwod.q.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vsubwod-1.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
