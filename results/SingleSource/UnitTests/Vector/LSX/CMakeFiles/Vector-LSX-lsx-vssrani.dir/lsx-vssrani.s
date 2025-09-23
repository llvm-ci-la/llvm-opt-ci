	.file	"lsx-vssrani.c"
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
	.dword	8355586                         # 0x7f7f02
	.dword	0                               # 0x0
.LCPI2_1:
	.byte	19                              # 0x13
	.byte	0                               # 0x0
	.byte	27                              # 0x1b
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	24                              # 0x18
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
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967295                      # 0xffffffff
.LCPI2_3:
	.byte	252                             # 0xfc
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_4:
	.dword	-9187343233384972032            # 0x8080000180800100
	.dword	9151314444947554304             # 0x7f0000007f000000
.LCPI2_5:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	20                              # 0x14
	.byte	253                             # 0xfd
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	19                              # 0x13
	.byte	253                             # 0xfd
	.byte	1                               # 0x1
	.byte	252                             # 0xfc
.LCPI2_6:
	.dword	0                               # 0x0
	.dword	64505                           # 0xfbf9
.LCPI2_7:
	.byte	106                             # 0x6a
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
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
.LCPI2_8:
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI2_9:
	.byte	158                             # 0x9e
	.byte	58                              # 0x3a
	.byte	123                             # 0x7b
	.byte	0                               # 0x0
	.byte	236                             # 0xec
	.byte	1                               # 0x1
	.byte	123                             # 0x7b
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
	.dword	255                             # 0xff
	.dword	4294967295                      # 0xffffffff
.LCPI2_11:
	.byte	27                              # 0x1b
	.byte	228                             # 0xe4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	199                             # 0xc7
	.byte	38                              # 0x26
	.byte	217                             # 0xd9
	.byte	21                              # 0x15
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_12:
	.byte	51                              # 0x33
	.byte	255                             # 0xff
	.byte	53                              # 0x35
	.byte	255                             # 0xff
	.byte	55                              # 0x37
	.byte	255                             # 0xff
	.byte	57                              # 0x39
	.byte	255                             # 0xff
	.byte	59                              # 0x3b
	.byte	23                              # 0x17
	.byte	61                              # 0x3d
	.byte	25                              # 0x19
	.byte	63                              # 0x3f
	.byte	31                              # 0x1f
	.byte	1                               # 0x1
	.byte	33                              # 0x21
.LCPI2_13:
	.dword	0                               # 0x0
	.dword	2139062143                      # 0x7f7f7f7f
.LCPI2_14:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_15:
	.dword	65520                           # 0xfff0
	.dword	0                               # 0x0
.LCPI2_16:
	.byte	224                             # 0xe0
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
.LCPI2_17:
	.byte	5                               # 0x5
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
.LCPI2_18:
	.dword	0                               # 0x0
	.dword	-1099511627776                  # 0xffffff0000000000
.LCPI2_19:
	.byte	4                               # 0x4
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
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	192                             # 0xc0
	.byte	255                             # 0xff
.LCPI2_20:
	.dword	0                               # 0x0
	.dword	4077127429                      # 0xf3040705
.LCPI2_21:
	.byte	60                              # 0x3c
	.byte	41                              # 0x29
	.byte	170                             # 0xaa
	.byte	63                              # 0x3f
	.byte	110                             # 0x6e
	.byte	38                              # 0x26
	.byte	124                             # 0x7c
	.byte	156                             # 0x9c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_22:
	.dword	255                             # 0xff
	.dword	0                               # 0x0
.LCPI2_23:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	208                             # 0xd0
	.byte	7                               # 0x7
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
.LCPI2_24:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	61                              # 0x3d
	.byte	26                              # 0x1a
	.byte	21                              # 0x15
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	26                              # 0x1a
	.byte	77                              # 0x4d
	.byte	8                               # 0x8
.LCPI2_25:
	.dword	0                               # 0x0
	.dword	32767                           # 0x7fff
.LCPI2_26:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_27:
	.dword	0                               # 0x0
	.dword	274877907008                    # 0x4000000040
.LCPI2_28:
	.dword	-281470681743361                # 0xffff0000ffffffff
	.dword	-7881466853521127               # 0xffe3ffd8ffe30919
.LCPI2_29:
	.half	59614                           # 0xe8de
	.half	65535                           # 0xffff
	.half	32961                           # 0x80c1
	.half	65535                           # 0xffff
	.half	328                             # 0x148
	.half	0                               # 0x0
	.half	32964                           # 0x80c4
	.half	65535                           # 0xffff
.LCPI2_30:
	.half	22143                           # 0x567f
	.half	18638                           # 0x48ce
	.half	65389                           # 0xff6d
	.half	65306                           # 0xff1a
	.half	60549                           # 0xec85
	.half	65216                           # 0xfec0
	.half	65534                           # 0xfffe
	.half	65306                           # 0xff1a
.LCPI2_31:
	.dword	0                               # 0x0
	.dword	9223372034707292159             # 0x7fffffff7fffffff
.LCPI2_32:
	.word	2130706685                      # 0x7f0000fd
	.word	2130706685                      # 0x7f0000fd
	.word	1081092                         # 0x107f04
	.word	2139062143                      # 0x7f7f7f7f
.LCPI2_33:
	.dword	-16600048599040                 # 0xfffff0e700000000
	.dword	0                               # 0x0
.LCPI2_34:
	.word	16646397                        # 0xfe00fd
	.word	0                               # 0x0
	.word	8388607                         # 0x7fffff
	.word	3282042879                      # 0xc39fffff
.LCPI2_35:
	.dword	104152956901                    # 0x183fffffe5
	.dword	536870912                       # 0x20000000
.LCPI2_36:
	.word	4294967081                      # 0xffffff29
	.word	1                               # 0x1
	.word	192                             # 0xc0
	.word	0                               # 0x0
.LCPI2_37:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_38:
	.dword	-1                              # 0xffffffffffffffff
	.dword	9223372034707292159             # 0x7fffffff7fffffff
.LCPI2_39:
	.word	234884128                       # 0xe000c20
	.word	251661600                       # 0xf000d20
	.word	268439072                       # 0x10000e20
	.word	285216544                       # 0x11000f20
.LCPI2_40:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1310721                         # 0x140001
.LCPI2_41:
	.word	3233857728                      # 0xc0c0c0c0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_42:
	.dword	558551923687167                 # 0x1fc0000fffeff
	.dword	189                             # 0xbd
.LCPI2_43:
	.word	2147450879                      # 0x7fff7fff
	.word	2147450879                      # 0x7fff7fff
	.word	13566047                        # 0xcf005f
	.word	16646145                        # 0xfe0001
.LCPI2_44:
	.word	4294947842                      # 0xffffb402
	.word	24214                           # 0x5e96
	.word	24212                           # 0x5e94
	.word	0                               # 0x0
.LCPI2_45:
	.dword	2251765453946880                # 0x7fff800000000
	.dword	4503599627370496                # 0x10000000000000
.LCPI2_46:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	65535                           # 0xffff
.LCPI2_47:
	.word	20                              # 0x14
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	131072                          # 0x20000
.LCPI2_48:
	.dword	0                               # 0x0
	.dword	-34096388160220733              # 0xff86dd83ff9611c3
.LCPI2_49:
	.word	1529960949                      # 0x5b3159f5
	.word	2517746584                      # 0x9611c398
	.word	2976182571                      # 0xb164f12b
	.word	2262664001                      # 0x86dd8341
.LCPI2_50:
	.dword	0                               # 0x0
	.dword	-524289                         # 0xfffffffffff7ffff
.LCPI2_51:
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	0                               # 0x0
.LCPI2_52:
	.dword	-4094351181852508679            # 0xc72df14afbfafdf9
	.dword	-9023742506692509697            # 0x82c539ffffffffff
.LCPI2_53:
	.dword	4294441985                      # 0xfff7fc01
	.dword	0                               # 0x0
.LCPI2_54:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1099511627776                  # 0xffffff0000000000
.LCPI2_55:
	.dword	1                               # 0x1
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_56:
	.dword	720586935663331840              # 0xa000a000a000a00
	.dword	0                               # 0x0
.LCPI2_57:
	.dword	-186                            # 0xffffffffffffff46
	.dword	-2                              # 0xfffffffffffffffe
.LCPI2_58:
	.dword	4104843410363                   # 0x3bbbbbbbbbb
	.dword	0                               # 0x0
.LCPI2_59:
	.dword	-150117696964745                # 0xffff7777ffff7777
	.dword	131354989131639                 # 0x777777777777
.LCPI2_60:
	.dword	3997930970190766080             # 0x377b810912c0e000
	.dword	-7488225795101143040            # 0x98147a504d145000
.LCPI2_61:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	-2305807824841605121            # 0xe0001fffffffffff
.LCPI2_62:
	.dword	1507415049226971648             # 0x14eb6a002a406a00
	.dword	350966955                       # 0x14eb54ab
.LCPI2_63:
	.dword	281474976710655                 # 0xffffffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_64:
	.dword	0                               # 0x0
	.dword	-2147483648                     # 0xffffffff80000000
.LCPI2_65:
	.dword	1080863910568919040             # 0xf00000000000000
	.dword	0                               # 0x0
.LCPI2_66:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.byte	252                             # 0xfc
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
	.byte	63                              # 0x3f
.LCPI2_67:
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	222                             # 0xde
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	207                             # 0xcf
	.byte	0                               # 0x0
.LCPI2_68:
	.dword	71776119077928960               # 0xff000000ff0000
	.dword	0                               # 0x0
.LCPI2_69:
	.byte	51                              # 0x33
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	128                             # 0x80
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_70:
	.byte	104                             # 0x68
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
.LCPI2_71:
	.dword	868913296173892100              # 0xc0f000a070f0204
	.dword	3                               # 0x3
.LCPI2_72:
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	63                              # 0x3f
	.byte	19                              # 0x13
	.byte	10                              # 0xa
	.byte	126                             # 0x7e
	.byte	124                             # 0x7c
	.byte	56                              # 0x38
	.byte	0                               # 0x0
	.byte	80                              # 0x50
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	81                              # 0x51
	.byte	123                             # 0x7b
	.byte	21                              # 0x15
	.byte	103                             # 0x67
.LCPI2_73:
	.byte	1                               # 0x1
	.byte	25                              # 0x19
	.byte	149                             # 0x95
	.byte	185                             # 0xb9
	.byte	59                              # 0x3b
	.byte	145                             # 0x91
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	218                             # 0xda
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	134                             # 0x86
	.byte	4                               # 0x4
	.byte	104                             # 0x68
	.byte	0                               # 0x0
.LCPI2_74:
	.dword	3329384208475881472             # 0x2e34594c3b000000
	.dword	0                               # 0x0
.LCPI2_75:
	.byte	102                             # 0x66
	.byte	233                             # 0xe9
	.byte	75                              # 0x4b
	.byte	212                             # 0xd4
	.byte	239                             # 0xef
	.byte	138                             # 0x8a
	.byte	44                              # 0x2c
	.byte	59                              # 0x3b
	.byte	136                             # 0x88
	.byte	76                              # 0x4c
	.byte	250                             # 0xfa
	.byte	89                              # 0x59
	.byte	202                             # 0xca
	.byte	52                              # 0x34
	.byte	43                              # 0x2b
	.byte	46                              # 0x2e
.LCPI2_76:
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_77:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_78:
	.dword	-4294770625                     # 0xffffffff0003003f
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_79:
	.half	63                              # 0x3f
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
.LCPI2_80:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32512                           # 0x7f00
	.half	32512                           # 0x7f00
	.half	32512                           # 0x7f00
	.half	32512                           # 0x7f00
.LCPI2_81:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_82:
	.dword	-3117935295911155658            # 0xd4bade5e2e902836
	.dword	0                               # 0x0
.LCPI2_83:
	.half	22897                           # 0x5971
	.half	5147                            # 0x141b
	.half	15367                           # 0x3c07
	.half	5960                            # 0x1748
	.half	18808                           # 0x4978
	.half	28463                           # 0x6f2f
	.half	23301                           # 0x5b05
	.half	27229                           # 0x6a5d
.LCPI2_84:
	.dword	0                               # 0x0
	.dword	1152921504875286528             # 0x1000000010001000
.LCPI2_85:
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	0                               # 0x0
	.half	16                              # 0x10
	.half	16                              # 0x10
.LCPI2_86:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
.LCPI2_87:
	.word	16515072                        # 0xfc0000
	.word	262268                          # 0x4007c
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_88:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
.LCPI2_89:
	.word	255                             # 0xff
	.word	16256                           # 0x3f80
	.word	255                             # 0xff
	.word	0                               # 0x0
.LCPI2_90:
	.dword	249108103226                    # 0x3a0000003a
	.dword	0                               # 0x0
.LCPI2_91:
	.word	976879616                       # 0x3a3a0000
	.word	976879616                       # 0x3a3a0000
	.word	976894522                       # 0x3a3a3a3a
	.word	976894523                       # 0x3a3a3a3b
.LCPI2_92:
	.word	4                               # 0x4
	.word	4294967278                      # 0xffffffee
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI2_93:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
.LCPI2_94:
	.dword	141287244300800                 # 0x808000020200
	.dword	0                               # 0x0
.LCPI2_95:
	.word	1094779137                      # 0x41410101
	.word	1077936128                      # 0x40400000
	.word	84213760                        # 0x5050000
	.word	269488401                       # 0x10101111
.LCPI2_96:
	.word	3818476541                      # 0xe39953fd
	.word	4185482584                      # 0xf9796558
	.word	2214890531                      # 0x84048c23
	.word	3542456873                      # 0xd3259a29
.LCPI2_97:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_98:
	.word	509307060                       # 0x1e5b68b4
	.word	3610677606                      # 0xd7369166
	.word	292048786                       # 0x11684f92
	.word	882146123                       # 0x34947b4b
.LCPI2_99:
	.dword	0                               # 0x0
	.dword	994                             # 0x3e2
.LCPI2_100:
	.word	62224                           # 0xf310
	.word	63652                           # 0xf8a4
	.word	65530                           # 0xfffa
	.word	4294635856                      # 0xfffaf150
.LCPI2_101:
	.word	3088342864                      # 0xb8145f50
	.word	665956614                       # 0x27b1b106
	.word	1206227088                      # 0x47e59090
	.word	4132744564                      # 0xf654ad74
.LCPI2_102:
	.dword	0                               # 0x0
	.dword	227                             # 0xe3
.LCPI2_103:
	.dword	-2081640592250861833            # 0xe31c86e90cda86f7
	.dword	0                               # 0x0
.LCPI2_104:
	.dword	0                               # 0x0
	.dword	2040                            # 0x7f8
.LCPI2_105:
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	0                               # 0x0
.LCPI2_106:
	.dword	36027147722162176               # 0x7ffe7ffe400000
	.dword	0                               # 0x0
.LCPI2_107:
	.dword	8589541370                      # 0x1fff9fffa
	.dword	8589541369                      # 0x1fff9fff9
.LCPI2_108:
	.dword	65536                           # 0x10000
	.dword	50309                           # 0xc485
.LCPI2_109:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_110:
	.dword	-4285758075442298880            # 0xc485edbcc0000000
	.dword	0                               # 0x0
.LCPI2_111:
	.dword	134201344                       # 0x7ffc000
	.dword	0                               # 0x0
.LCPI2_112:
	.dword	35180077129727                  # 0x1fff00001fff
	.dword	0                               # 0x0
.LCPI2_113:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_114:
	.dword	0                               # 0x0
	.dword	3221225470                      # 0xbffffffe
.LCPI2_115:
	.dword	4295032827                      # 0x10000fffb
	.dword	12884901883                     # 0x2fffffffb
.LCPI2_116:
	.dword	344                             # 0x158
	.dword	0                               # 0x0
.LCPI2_117:
	.dword	4286578688                      # 0xff800000
	.dword	-1970724269064272               # 0xfff8ffa2fffdffb0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	vrepli.b	$vr2, 0
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 80
	vori.b	$vr0, $vr2, 0
	vssrani.b.h	$vr0, $vr1, 3
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 80
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vssrani.b.h	$vr1, $vr0, 12
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_5)
	vst	$vr0, $sp, 80
	lu52i.d	$a0, $zero, 2047
	vreplgr2vr.d	$vr0, $a0
	vssrani.b.h	$vr0, $vr1, 0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.b.h	$vr1, $vr0, 6
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr0, $sp, 80
	vrepli.h	$vr0, 1
	vssrani.b.h	$vr0, $vr1, 13
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.b.h	$vr0, $vr0, 13
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 80
	vssrani.b.h	$vr2, $vr1, 14
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_14)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.b.h	$vr1, $vr0, 0
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.b.h	$vr0, $vr1, 1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vssrani.b.h	$vr0, $vr1, 10
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_19)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.b.h	$vr1, $vr0, 14
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.b.h	$vr0, $vr0, 6
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_21)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.b.h	$vr1, $vr0, 11
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_24)
	vst	$vr0, $sp, 80
	vssrani.b.h	$vr2, $vr1, 15
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_26)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.h.w	$vr1, $vr0, 0
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.h.w	$vr0, $vr0, 8
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 80
	vrepli.d	$vr0, 64
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vssrani.h.w	$vr0, $vr1, 0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.h.w	$vr0, $vr0, 21
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_30)
	vst	$vr0, $sp, 80
	vssrani.h.w	$vr2, $vr1, 19
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.h.w	$vr0, $vr0, 0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_32)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.w.d	$vr1, $vr0, 29
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_34)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.w.d	$vr0, $vr1, 50
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_37)
	vst	$vr0, $sp, 80
	vssrani.w.d	$vr2, $vr1, 3
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.w.d	$vr0, $vr0, 42
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_39)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vssrani.w.d	$vr1, $vr0, 6
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_41)
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	vst	$vr2, $sp, 80
	vssrani.w.d	$vr1, $vr0, 53
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.w.d	$vr0, $vr0, 40
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_43)
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_44)
	vst	$vr0, $sp, 80
	vssrani.w.d	$vr1, $vr2, 39
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.w.d	$vr0, $vr0, 19
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_47)
	vst	$vr0, $sp, 80
	vssrani.w.d	$vr2, $vr1, 29
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_49)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.w.d	$vr1, $vr0, 40
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_50)
	vst	$vr0, $sp, 80
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, -9
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vssrani.d.q	$vr0, $vr1, 100
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.d.q	$vr0, $vr0, 71
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_53)
	vst	$vr0, $sp, 80
	vssrani.d.q	$vr2, $vr1, 35
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_55)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vssrani.d.q	$vr1, $vr0, 24
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_56)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vssrani.d.q	$vr0, $vr1, 77
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.d.q	$vr0, $vr0, 76
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_57)
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vssrani.d.q	$vr0, $vr1, 76
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_59)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.d.q	$vr0, $vr1, 69
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_60)
	lu52i.d	$a0, $zero, -2048
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 80
	vssrani.d.q	$vr0, $vr0, 11
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.d.q	$vr0, $vr0, 46
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
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
	vst	$vr0, $sp, 80
	vssrani.d.q	$vr2, $vr1, 3
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_64)
	vst	$vr0, $sp, 80
	vldi	$vr0, -3200
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vssrani.d.q	$vr0, $vr1, 96
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
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
	vst	$vr0, $sp, 80
	vssrani.bu.h	$vr2, $vr1, 10
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_68)
	vst	$vr0, $sp, 80
	ori	$a0, $zero, 0
	lu32i.d	$a0, 2048
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vssrani.bu.h	$vr1, $vr0, 1
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_69)
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_70)
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	vst	$vr2, $sp, 80
	vssrani.bu.h	$vr1, $vr0, 15
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 293
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_71)
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_72)
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_73)
	vst	$vr0, $sp, 80
	vssrani.bu.h	$vr2, $vr1, 11
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 299
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_74)
	pcalau12i	$a0, %pc_hi20(.LCPI2_75)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_75)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.bu.h	$vr0, $vr1, 8
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 305
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_76)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_76)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vldi	$vr1, -1600
	vssrani.bu.h	$vr1, $vr0, 10
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 311
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_77)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_77)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vldi	$vr1, -1552
	vssrani.hu.w	$vr1, $vr0, 18
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 317
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.hu.w	$vr0, $vr0, 22
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 323
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_78)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_78)
	pcalau12i	$a0, %pc_hi20(.LCPI2_79)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_79)
	pcalau12i	$a0, %pc_hi20(.LCPI2_80)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_80)
	vst	$vr0, $sp, 80
	vssrani.hu.w	$vr2, $vr1, 0
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 329
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_81)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_81)
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.hu.w	$vr0, $vr2, 12
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 335
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_82)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_82)
	pcalau12i	$a0, %pc_hi20(.LCPI2_83)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_83)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.hu.w	$vr0, $vr1, 15
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 341
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_84)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_84)
	pcalau12i	$a0, %pc_hi20(.LCPI2_85)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_85)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.hu.w	$vr1, $vr0, 8
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 347
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_86)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_86)
	pcalau12i	$a0, %pc_hi20(.LCPI2_87)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_87)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vssrani.wu.d	$vr0, $vr1, 13
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 353
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_88)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_88)
	pcalau12i	$a0, %pc_hi20(.LCPI2_89)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_89)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vssrani.wu.d	$vr1, $vr0, 10
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 359
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_90)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_90)
	pcalau12i	$a0, %pc_hi20(.LCPI2_91)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_91)
	pcalau12i	$a0, %pc_hi20(.LCPI2_92)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_92)
	vst	$vr0, $sp, 80
	vssrani.wu.d	$vr2, $vr1, 56
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 365
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_93)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_93)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vssrani.wu.d	$vr1, $vr0, 19
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 371
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_94)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_94)
	pcalau12i	$a0, %pc_hi20(.LCPI2_95)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_95)
	pcalau12i	$a0, %pc_hi20(.LCPI2_96)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_96)
	vst	$vr0, $sp, 80
	vssrani.wu.d	$vr2, $vr1, 45
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 377
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_97)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_97)
	pcalau12i	$a0, %pc_hi20(.LCPI2_98)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_98)
	vst	$vr0, $sp, 80
	vrepli.b	$vr0, 19
	vssrani.wu.d	$vr0, $vr1, 25
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 383
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_99)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_99)
	pcalau12i	$a0, %pc_hi20(.LCPI2_100)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_100)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.wu.d	$vr1, $vr0, 38
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 389
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_101)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_101)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vssrani.wu.d	$vr0, $vr1, 63
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 395
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_102)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_102)
	pcalau12i	$a0, %pc_hi20(.LCPI2_103)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_103)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vssrani.du.q	$vr1, $vr0, 56
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 401
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_104)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_104)
	pcalau12i	$a0, %pc_hi20(.LCPI2_105)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_105)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.du.q	$vr1, $vr0, 45
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 407
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_106)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_106)
	pcalau12i	$a0, %pc_hi20(.LCPI2_107)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_107)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.du.q	$vr0, $vr1, 42
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 413
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_108)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_108)
	pcalau12i	$a0, %pc_hi20(.LCPI2_109)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_109)
	pcalau12i	$a0, %pc_hi20(.LCPI2_110)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_110)
	vst	$vr0, $sp, 80
	vssrani.du.q	$vr2, $vr1, 48
	vst	$vr2, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 419
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_111)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_111)
	pcalau12i	$a0, %pc_hi20(.LCPI2_112)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_112)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.du.q	$vr0, $vr1, 18
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 425
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_113)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_113)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vssrani.du.q	$vr0, $vr1, 7
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 431
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_114)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_114)
	pcalau12i	$a0, %pc_hi20(.LCPI2_115)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_115)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vssrani.du.q	$vr1, $vr0, 66
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 437
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_116)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_116)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vssrani.du.q	$vr0, $vr1, 121
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 443
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vssrani.du.q	$vr0, $vr0, 48
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 449
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_117)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_117)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vssrani.du.q	$vr0, $vr1, 80
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 455
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vssrani.c"
	.size	.L.str.5, 131

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
