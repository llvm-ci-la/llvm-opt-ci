	.file	"lsx-vsigncov.c"
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
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	128                             # 0x80
	.byte	63                              # 0x3f
	.byte	128                             # 0x80
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
.LCPI2_1:
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
.LCPI2_2:
	.dword	72058693549621248               # 0x100010000010000
	.dword	72058693549555713               # 0x100010000000001
.LCPI2_3:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
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
.LCPI2_4:
	.byte	246                             # 0xf6
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	253                             # 0xfd
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
.LCPI2_5:
	.dword	-8525224245301712960            # 0x89b051b7ac3e67c0
	.dword	-1852388051994043224            # 0xe64afee18eb79ca8
.LCPI2_6:
	.byte	64                              # 0x40
	.byte	153                             # 0x99
	.byte	194                             # 0xc2
	.byte	84                              # 0x54
	.byte	73                              # 0x49
	.byte	175                             # 0xaf
	.byte	80                              # 0x50
	.byte	119                             # 0x77
	.byte	88                              # 0x58
	.byte	100                             # 0x64
	.byte	73                              # 0x49
	.byte	114                             # 0x72
	.byte	31                              # 0x1f
	.byte	2                               # 0x2
	.byte	182                             # 0xb6
	.byte	26                              # 0x1a
.LCPI2_7:
	.dword	9223372034724135170             # 0x7fffffff81010102
	.dword	9223091667848986882             # 0x7fff010181010102
.LCPI2_8:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	65                              # 0x41
	.byte	37                              # 0x25
	.byte	27                              # 0x1b
	.byte	24                              # 0x18
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	252                             # 0xfc
	.byte	169                             # 0xa9
	.byte	27                              # 0x1b
	.byte	68                              # 0x44
.LCPI2_9:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_10:
	.byte	52                              # 0x34
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
.LCPI2_11:
	.dword	72056498821332993               # 0xffff0100010001
	.dword	0                               # 0x0
.LCPI2_12:
	.byte	142                             # 0x8e
	.byte	0                               # 0x0
	.byte	220                             # 0xdc
	.byte	0                               # 0x0
	.byte	190                             # 0xbe
	.byte	1                               # 0x1
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
.LCPI2_13:
	.dword	-286534456775278592             # 0xfc06066e00000000
	.dword	0                               # 0x0
.LCPI2_14:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	146                             # 0x92
	.byte	250                             # 0xfa
	.byte	250                             # 0xfa
	.byte	4                               # 0x4
	.byte	146                             # 0x92
	.byte	240                             # 0xf0
	.byte	245                             # 0xf5
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.byte	246                             # 0xf6
	.byte	250                             # 0xfa
	.byte	4                               # 0x4
.LCPI2_15:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_16:
	.half	0                               # 0x0
	.half	129                             # 0x81
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	7326                            # 0x1c9e
	.half	65408                           # 0xff80
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.half	3169                            # 0xc61
	.half	28138                           # 0x6dea
	.half	841                             # 0x349
	.half	128                             # 0x80
	.half	128                             # 0x80
	.half	128                             # 0x80
	.half	128                             # 0x80
	.half	128                             # 0x80
.LCPI2_18:
	.dword	-3997930970190766080            # 0xc8847ef6ed3f2000
	.dword	7488225792099397632             # 0x67eb85af0000b000
.LCPI2_19:
	.half	8192                            # 0x2000
	.half	60735                           # 0xed3f
	.half	32502                           # 0x7ef6
	.half	51332                           # 0xc884
	.half	45056                           # 0xb000
	.half	45803                           # 0xb2eb
	.half	34223                           # 0x85af
	.half	26603                           # 0x67eb
.LCPI2_20:
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	0                               # 0x0
	.half	16                              # 0x10
	.half	16                              # 0x10
.LCPI2_21:
	.word	4117476301                      # 0xf56bb3cd
	.word	2265540801                      # 0x870968c1
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_22:
	.word	4026531840                      # 0xf0000000
	.word	1784128271                      # 0x6a57a30f
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI2_23:
	.word	13                              # 0xd
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_24:
	.dword	0                               # 0x0
	.dword	4194304                         # 0x400000
.LCPI2_25:
	.word	1073741797                      # 0x3fffffe5
	.word	24                              # 0x18
	.word	536870912                       # 0x20000000
	.word	0                               # 0x0
.LCPI2_26:
	.dword	281479275937787                 # 0x100010040fffb
	.dword	281487865806850                 # 0x1000300400002
.LCPI2_27:
	.word	85263872                        # 0x5150600
	.word	35601154                        # 0x21f3b02
	.word	33686016                        # 0x2020200
	.word	131584                          # 0x20200
.LCPI2_28:
	.word	675299396                       # 0x28404044
	.word	0                               # 0x0
	.word	72564902                        # 0x45340a6
	.word	0                               # 0x0
.LCPI2_29:
	.dword	0                               # 0x0
	.dword	4294967297                      # 0x100000001
.LCPI2_30:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_31:
	.dword	-3392489096                     # 0xffffffff35cab978
	.dword	0                               # 0x0
.LCPI2_32:
	.dword	3392489096                      # 0xca354688
	.dword	0                               # 0x0
.LCPI2_33:
	.dword	-2005500627196157               # 0xfff8e001ff84e703
	.dword	-1152675206494101629            # 0xf000e001bf84df83
.LCPI2_34:
	.dword	9223372030412322816             # 0x7ffffffe7ffff800
	.dword	-214374702693114                # 0xffff3d06ffff4506
.LCPI2_35:
	.dword	72342371844554753               # 0x101030100010001
	.dword	72339073309671425               # 0x101000100010001
.LCPI2_36:
	.dword	259                             # 0x103
	.dword	4294967296                      # 0x100000000
.LCPI2_37:
	.dword	32                              # 0x20
	.dword	107458134                       # 0x667ae56
.LCPI2_38:
	.dword	4294836226                      # 0xfffe0002
	.dword	1                               # 0x1
.LCPI2_39:
	.dword	562954248519682                 # 0x2000100020002
	.dword	0                               # 0x0
.LCPI2_40:
	.dword	4293001152                      # 0xffe1ffc0
	.dword	281479271743506                 # 0x1000100010012
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
	vst	$vr2, $sp, 80
	vsigncov.b	$vr0, $vr1, $vr0
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
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	lu12i.w	$a0, 337191
	ori	$a0, $a0, 3453
	vreplgr2vr.w	$vr0, $a0
	vsigncov.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 80
	vsigncov.b	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -333078
	ori	$a0, $a0, 3637
	lu32i.d	$a0, -86354
	lu52i.d	$a0, $a0, -1302
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 80
	lu12i.w	$a0, 337189
	ori	$a0, $a0, 715
	lu32i.d	$a0, 152146
	lu52i.d	$a0, $a0, 1317
	vreplgr2vr.d	$vr0, $a0
	vrepli.b	$vr1, -1
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vsigncov.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vsigncov.b	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
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
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 4
	vst	$vr0, $sp, 80
	vsigncov.b	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 80
	vrepli.d	$vr0, -4
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vsigncov.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 80
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4094
	lu32i.d	$a0, -1
	lu52i.d	$a0, $a0, 2047
	vreplgr2vr.d	$vr1, $a0
	vsigncov.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_10)
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	vst	$vr2, $sp, 80
	vsigncov.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsigncov.b	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 80
	vsigncov.b	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vrepli.d	$vr0, 1
	vsigncov.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.h	$vr0, -10
	vst	$vr0, $sp, 80
	vrepli.h	$vr0, 10
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vsigncov.h	$vr0, $vr1, $vr0
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
	vsigncov.h	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vsigncov.h	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vsigncov.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_20)
	vst	$vr0, $sp, 80
	vsigncov.h	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vsigncov.w	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vsigncov.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_22)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vsigncov.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vsigncov.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_25)
	vst	$vr0, $sp, 80
	vsigncov.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu52i.d	$a0, $zero, 1016
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 80
	lu12i.w	$a0, 260096
	vreplgr2vr.w	$vr0, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -256
	lu52i.d	$a0, $a0, 1023
	vreplgr2vr.d	$vr1, $a0
	vsigncov.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 304
	ori	$a0, $a0, 20
	lu32i.d	$a0, -270356
	lu52i.d	$a0, $a0, 880
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 80
	lu12i.w	$a0, -305
	ori	$a0, $a0, 4076
	lu32i.d	$a0, -270356
	lu52i.d	$a0, $a0, 880
	vreplgr2vr.d	$vr0, $a0
	vsigncov.w	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 80
	vsigncov.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsigncov.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	move	$a1, $a0
	lu32i.d	$a1, 0
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 80
	pcalau12i	$a1, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_28)
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 3
	vreplgr2vr.d	$vr1, $a0
	vsigncov.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_30)
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vsigncov.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_33)
	vst	$vr0, $sp, 80
	vsigncov.d	$vr0, $vr2, $vr1
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
	vsigncov.d	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vsigncov.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vrepli.h	$vr0, -8
	vsigncov.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vsigncov.d	$vr0, $vr1, $vr0
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
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vsigncov.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.d	$vr0, 4
	vst	$vr0, $sp, 80
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vsigncov.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_36)
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vst	$vr1, $sp, 80
	vsigncov.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_38)
	vst	$vr0, $sp, 80
	vsigncov.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_39)
	vst	$vr0, $sp, 80
	vsigncov.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	vst	$vr0, $sp, 80
	vsigncov.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 96
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vsigncov.c"
	.size	.L.str.5, 132

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
