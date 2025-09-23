	.file	"lasx-xvssrln.c"
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
	.dword	9152861505058439295             # 0x7f057f0b7f5b007f
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_1:
	.half	145                             # 0x91
	.half	143                             # 0x8f
	.half	280                             # 0x118
	.half	21                              # 0x15
	.half	170                             # 0xaa
	.half	2                               # 0x2
	.half	283                             # 0x11b
	.half	1                               # 0x1
	.half	292                             # 0x124
	.half	8                               # 0x8
	.half	184                             # 0xb8
	.half	2                               # 0x2
	.half	160                             # 0xa0
	.half	5                               # 0x5
	.half	171                             # 0xab
	.half	1                               # 0x1
.LCPI2_2:
	.half	58140                           # 0xe31c
	.half	27285                           # 0x6a95
	.half	23460                           # 0x5ba4
	.half	51765                           # 0xca35
	.half	12240                           # 0x2fd0
	.half	41820                           # 0xa35c
	.half	11475                           # 0x2cd3
	.half	17595                           # 0x44bb
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_3:
	.dword	9187201950435737471             # 0x7f7f7f7f7f7f7f7f
	.dword	0                               # 0x0
	.dword	9187201950435737471             # 0x7f7f7f7f7f7f7f7f
	.dword	0                               # 0x0
.LCPI2_4:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_5:
	.dword	140185576603648                 # 0x7f7f7f7f0000
	.dword	0                               # 0x0
	.dword	9187201950435737471             # 0x7f7f7f7f7f7f7f7f
	.dword	0                               # 0x0
.LCPI2_6:
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
.LCPI2_7:
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI2_8:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_9:
	.dword	140183488102400                 # 0x7f7f03030000
	.dword	0                               # 0x0
	.dword	1644972474368                   # 0x17f00000000
	.dword	0                               # 0x0
.LCPI2_10:
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
.LCPI2_11:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
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
.LCPI2_12:
	.dword	72340172838076673               # 0x101010101010101
	.dword	0                               # 0x0
	.dword	72340172838076673               # 0x101010101010101
	.dword	0                               # 0x0
.LCPI2_13:
	.dword	24117376                        # 0x1700080
	.dword	0                               # 0x0
	.dword	24117376                        # 0x1700080
	.dword	0                               # 0x0
.LCPI2_14:
	.word	128                             # 0x80
	.word	368                             # 0x170
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	128                             # 0x80
	.word	368                             # 0x170
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_15:
	.dword	140733193388169                 # 0x7fff00000089
	.dword	0                               # 0x0
	.dword	140733193420799                 # 0x7fff00007fff
	.dword	0                               # 0x0
.LCPI2_16:
	.word	137                             # 0x89
	.word	0                               # 0x0
	.word	44384912                        # 0x2a54290
	.word	0                               # 0x0
	.word	22338692                        # 0x154dc84
	.word	0                               # 0x0
	.word	44384912                        # 0x2a54290
	.word	0                               # 0x0
.LCPI2_17:
	.dword	9223090561878130688             # 0x7fff000000010000
	.dword	0                               # 0x0
	.dword	9223090564025483264             # 0x7fff00007fff0000
	.dword	0                               # 0x0
.LCPI2_18:
	.word	536872943                       # 0x200007ef
	.word	8191                            # 0x1fff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2031                            # 0x7ef
	.word	520101632                       # 0x1f001f00
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_19:
	.word	0                               # 0x0
	.word	2153775104                      # 0x80600000
	.word	0                               # 0x0
	.word	2146435072                      # 0x7ff00000
	.word	0                               # 0x0
	.word	2153775104                      # 0x80600000
	.word	0                               # 0x0
	.word	2146435072                      # 0x7ff00000
.LCPI2_20:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	491519                          # 0x77fff
	.dword	0                               # 0x0
.LCPI2_21:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_22:
	.word	4293001184                      # 0xffe1ffe0
	.word	2145517536                      # 0x7fe1ffe0
	.word	4280221727                      # 0xff1f001f
	.word	33488928                        # 0x1ff0020
	.word	4293001184                      # 0xffe1ffe0
	.word	2145517536                      # 0x7fe1ffe0
	.word	4280221727                      # 0xff1f001f
	.word	33488928                        # 0x1ff0020
.LCPI2_23:
	.dword	2147450879                      # 0x7fff7fff
	.dword	0                               # 0x0
	.dword	2147450879                      # 0x7fff7fff
	.dword	0                               # 0x0
.LCPI2_24:
	.word	0                               # 0x0
	.word	4278190080                      # 0xff000000
	.word	4294967040                      # 0xffffff00
	.word	4294967040                      # 0xffffff00
	.word	0                               # 0x0
	.word	4278190080                      # 0xff000000
	.word	4294967040                      # 0xffffff00
	.word	4294967040                      # 0xffffff00
.LCPI2_25:
	.word	48865                           # 0xbee1
	.word	73723                           # 0x11ffb
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	48865                           # 0xbee1
	.word	73723                           # 0x11ffb
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_26:
	.word	8323199                         # 0x7f007f
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	8323199                         # 0x7f007f
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_27:
	.dword	9223231295071453184             # 0x7fff7fff00000000
	.dword	0                               # 0x0
	.dword	9223231295071453184             # 0x7fff7fff00000000
	.dword	0                               # 0x0
.LCPI2_28:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_29:
	.word	16776960                        # 0xffff00
	.word	33554243                        # 0x1ffff43
	.word	16777472                        # 0x1000100
	.word	16777472                        # 0x1000100
	.word	16776960                        # 0xffff00
	.word	33554243                        # 0x1ffff43
	.word	16777472                        # 0x1000100
	.word	16777472                        # 0x1000100
.LCPI2_30:
	.dword	98303                           # 0x17fff
	.dword	0                               # 0x0
	.dword	98303                           # 0x17fff
	.dword	0                               # 0x0
.LCPI2_31:
	.word	2139062143                      # 0x7f7f7f7f
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2139062143                      # 0x7f7f7f7f
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_32:
	.dword	9223090561878163455             # 0x7fff000000017fff
	.dword	0                               # 0x0
	.dword	9223090561878163455             # 0x7fff000000017fff
	.dword	0                               # 0x0
.LCPI2_33:
	.word	4278190080                      # 0xff000000
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4278190080                      # 0xff000000
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_34:
	.word	4286578688                      # 0xff800000
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.word	4286578688                      # 0xff800000
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
.LCPI2_35:
	.dword	2147483647                      # 0x7fffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_36:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	4294967295                      # 0xffffffff
	.dword	4294967295                      # 0xffffffff
	.dword	4294967295                      # 0xffffffff
.LCPI2_37:
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_38:
	.dword	576456796772823174              # 0x7fffc670800f086
	.dword	-43666932496311                 # 0xffffd84900000849
	.dword	9223231292923965438             # 0x7fff7ffe7fffeffe
	.dword	32512                           # 0x7f00
.LCPI2_39:
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
.LCPI2_40:
	.dword	-64424574976                    # 0xfffffff0ffff0000
	.dword	0                               # 0x0
	.dword	-64424574976                    # 0xfffffff0ffff0000
	.dword	0                               # 0x0
.LCPI2_41:
	.dword	4294967297                      # 0x100000001
	.dword	0                               # 0x0
	.dword	4294967297                      # 0x100000001
	.dword	0                               # 0x0
.LCPI2_42:
	.dword	-4294964756                     # 0xffffffff000009ec
	.dword	-42949672960                    # 0xfffffff600000000
	.dword	-4294964756                     # 0xffffffff000009ec
	.dword	-42949672960                    # 0xfffffff600000000
.LCPI2_43:
	.dword	4294967303                      # 0x100000007
	.dword	0                               # 0x0
	.dword	4294967303                      # 0x100000007
	.dword	0                               # 0x0
.LCPI2_44:
	.dword	9187201950427480061             # 0x7f7f7f7f7f017ffd
	.dword	9187201950435737471             # 0x7f7f7f7f7f7f7f7f
	.dword	9187201950427480061             # 0x7f7f7f7f7f017ffd
	.dword	9187201950435737471             # 0x7f7f7f7f7f7f7f7f
.LCPI2_45:
	.dword	-8257667                        # 0xffffffffff81ff7d
	.dword	-35466405411291137              # 0xff81ff7dffffffff
	.dword	-8257667                        # 0xffffffffff81ff7d
	.dword	-35466405411291137              # 0xff81ff7dffffffff
.LCPI2_46:
	.dword	280379760640064                 # 0xff0100090040
	.dword	4294508352                      # 0xfff8ff40
	.dword	280379760640064                 # 0xff0100090040
	.dword	4294508352                      # 0xfff8ff40
.LCPI2_47:
	.dword	-9187201950435737472            # 0x8080808080808080
	.dword	-545202177                      # 0xffffffffdf80dfff
	.dword	-9187201950435737472            # 0x8080808080808080
	.dword	-2341626061634084865            # 0xdf80df80df80dfff
.LCPI2_48:
	.dword	6601399664897                   # 0x60102150101
	.dword	0                               # 0x0
	.dword	6601399664897                   # 0x60102150101
	.dword	0                               # 0x0
.LCPI2_49:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	43690                           # 0xaaaa
	.half	65533                           # 0xfffd
	.half	65535                           # 0xffff
	.half	65531                           # 0xfffb
	.half	65535                           # 0xffff
	.half	65529                           # 0xfff9
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	43690                           # 0xaaaa
	.half	65533                           # 0xfffd
	.half	65535                           # 0xffff
	.half	65531                           # 0xfffb
	.half	65535                           # 0xffff
	.half	65529                           # 0xfff9
.LCPI2_50:
	.half	43692                           # 0xaaac
	.half	43690                           # 0xaaaa
	.half	21845                           # 0x5555
	.half	21845                           # 0x5555
	.half	43692                           # 0xaaac
	.half	13994                           # 0x36aa
	.half	85                              # 0x55
	.half	0                               # 0x0
	.half	43692                           # 0xaaac
	.half	43690                           # 0xaaaa
	.half	21845                           # 0x5555
	.half	21845                           # 0x5555
	.half	43692                           # 0xaaac
	.half	13994                           # 0x36aa
	.half	85                              # 0x55
	.half	0                               # 0x0
.LCPI2_51:
	.dword	-72057594037927936              # 0xff00000000000000
	.dword	0                               # 0x0
	.dword	-72057594037927936              # 0xff00000000000000
	.dword	0                               # 0x0
.LCPI2_52:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	7421                            # 0x1cfd
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65024                           # 0xfe00
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	7421                            # 0x1cfd
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65024                           # 0xfe00
.LCPI2_53:
	.dword	4128768                         # 0x3f0000
	.dword	0                               # 0x0
	.dword	4128768                         # 0x3f0000
	.dword	0                               # 0x0
.LCPI2_54:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63                              # 0x3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63                              # 0x3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_55:
	.dword	1095216660481                   # 0xff00000001
	.dword	0                               # 0x0
	.dword	1095216660481                   # 0xff00000001
	.dword	0                               # 0x0
.LCPI2_56:
	.half	63                              # 0x3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63                              # 0x3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_57:
	.dword	-280371170115583                # 0xffff010100000001
	.dword	0                               # 0x0
	.dword	-280371170115583                # 0xffff010100000001
	.dword	0                               # 0x0
.LCPI2_58:
	.half	65535                           # 0xffff
	.half	63                              # 0x3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	63                              # 0x3f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_59:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	12                              # 0xc
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	12                              # 0xc
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_60:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
.LCPI2_61:
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_62:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	536870912                       # 0x20000000
	.word	0                               # 0x0
	.word	536870912                       # 0x20000000
	.word	0                               # 0x0
.LCPI2_63:
	.word	4294705148                      # 0xfffbfffc
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_64:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	16711680                        # 0xff0000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	16711680                        # 0xff0000
	.word	0                               # 0x0
.LCPI2_65:
	.dword	-65536                          # 0xffffffffffff0000
	.dword	0                               # 0x0
	.dword	-65536                          # 0xffffffffffff0000
	.dword	0                               # 0x0
.LCPI2_66:
	.word	0                               # 0x0
	.word	53472937                        # 0x32feea9
	.word	135796760                       # 0x8181818
	.word	82323823                        # 0x4e8296f
	.word	0                               # 0x0
	.word	53472937                        # 0x32feea9
	.word	135796760                       # 0x8181818
	.word	82323823                        # 0x4e8296f
.LCPI2_67:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_68:
	.dword	4293977088                      # 0xfff0e400
	.dword	4294967295                      # 0xffffffff
	.dword	4294937728                      # 0xffff8c80
	.dword	4294967295                      # 0xffffffff
.LCPI2_69:
	.dword	-36028797018963968              # 0xff80000000000000
	.dword	-108086472686436372             # 0xfe7fffecfe7fffec
	.dword	-36028792732385280              # 0xff800000ff800000
	.dword	-108086472686436372             # 0xfe7fffecfe7fffec
.LCPI2_70:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	4294967295                      # 0xffffffff
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	4294967295                      # 0xffffffff
.LCPI2_71:
	.dword	-844437815230468                # 0xfffcfffcfffcfffc
	.dword	281462091612156                 # 0xfffcfffcfffc
	.dword	-844437815230468                # 0xfffcfffcfffcfffc
	.dword	281462091612156                 # 0xfffcfffcfffc
.LCPI2_72:
	.dword	5364530108                      # 0x13fc03bbc
	.dword	0                               # 0x0
	.dword	5364530108                      # 0x13fc03bbc
	.dword	0                               # 0x0
.LCPI2_73:
	.dword	4742255351527636992             # 0x41cfe01dde000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	4742255351527636992             # 0x41cfe01dde000000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_74:
	.dword	1069562812                      # 0x3fc03bbc
	.dword	-66978815                       # 0xfffffffffc01fc01
	.dword	1069562812                      # 0x3fc03bbc
	.dword	-66978815                       # 0xfffffffffc01fc01
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
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 320
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 224
	xvssrln.b.h	$xr0, $xr2, $xr1
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 224
	lu12i.w	$a0, 2
	xvreplgr2vr.h	$xr0, $a0
	xvrepli.b	$xr1, 1
	xvssrln.b.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	xvssrln.b.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrln.b.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrln.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.b.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrln.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 224
	xvssrln.b.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvssrln.b.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrln.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_14)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrln.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrln.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrln.h.w	$xr0, $xr1, $xr0
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
	xvssrln.h.w	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.h.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 224
	xvssrln.h.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrln.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrln.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_25)
	xvst	$xr0, $sp, 224
	xvssrln.h.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrln.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_28)
	xvst	$xr2, $sp, 128                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 224
	xvssrln.h.w	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrln.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr0, $sp, 224
	xvssrln.h.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_36)
	xvst	$xr0, $sp, 224
	xvssrln.w.d	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrln.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4094
	lu32i.d	$a0, 1
	xvreplgr2vr.d	$xr1, $a0
	xvssrln.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrln.w.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrln.w.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_45)
	xvst	$xr0, $sp, 224
	xvssrln.w.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_47)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrln.bu.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
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
	xvssrln.bu.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_52)
	xvst	$xr0, $sp, 224
	xvssrln.bu.h	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_54)
	addi.w	$s1, $zero, -1
	xvst	$xr0, $sp, 224
	move	$a0, $s1
	lu32i.d	$a0, 0
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvssrln.bu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 395
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	lu52i.d	$a0, $zero, 2047
	xvreplgr2vr.d	$xr0, $a0
	lu52i.d	$a0, $s1, 2046
	xvreplgr2vr.d	$xr1, $a0
	xvssrln.bu.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 404
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_56)
	xvst	$xr0, $sp, 224
	lu12i.w	$a0, 8
	xvreplgr2vr.d	$xr0, $a0
	xvssrln.bu.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.bu.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 422
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_57)
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_58)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvssrln.bu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 431
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_59)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrln.bu.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 440
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_60)
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_61)
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_62)
	xvst	$xr0, $sp, 224
	xvssrln.hu.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 449
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvssrln.hu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 458
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_63)
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvssrln.hu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 467
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_64)
	lu12i.w	$a0, 31
	ori	$a0, $a0, 4094
	xvreplgr2vr.w	$xr1, $a0
	xvssrln.hu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 476
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_65)
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_66)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvssrln.hu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 485
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.hu.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 494
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	ori	$a0, $zero, 1
	lu32i.d	$a0, -2
	xvreplgr2vr.d	$xr0, $a0
	xvssrln.hu.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 503
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_67)
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_68)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvssrln.wu.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 512
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvssrln.wu.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 521
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 530
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_69)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvssrln.wu.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 539
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvrepli.w	$xr0, 255
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.wu.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 548
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrln.wu.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 557
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_70)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.wu.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 566
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_71)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvssrln.wu.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 575
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_72)
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_73)
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_74)
	xvst	$xr0, $sp, 224
	xvssrln.wu.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 584
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -320
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvssrln.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
