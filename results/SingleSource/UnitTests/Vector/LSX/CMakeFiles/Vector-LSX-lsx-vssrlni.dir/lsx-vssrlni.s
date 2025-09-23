	.file	"lsx-vssrlni.c"
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
	.dword	1085102592318504960             # 0xf0f0f0f00000000
	.dword	64424509455                     # 0xf0000000f
.LCPI2_1:
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
	.byte	255                             # 0xff
.LCPI2_2:
	.dword	1266633100263423                # 0x47fff00007fff
	.dword	0                               # 0x0
.LCPI2_3:
	.half	0                               # 0x0
	.half	256                             # 0x100
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2048                            # 0x800
	.half	2040                            # 0x7f8
	.half	2048                            # 0x800
	.half	0                               # 0x0
.LCPI2_4:
	.dword	0                               # 0x0
	.dword	865676287453986815              # 0xc037fff342c7fff
.LCPI2_5:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1024                            # 0x400
	.half	0                               # 0x0
	.half	1024                            # 0x400
	.half	0                               # 0x0
.LCPI2_6:
	.half	8191                            # 0x1fff
	.half	65535                           # 0xffff
	.half	44955                           # 0xaf9b
	.half	13356                           # 0x342c
	.half	6929                            # 0x1b11
	.half	56696                           # 0xdd78
	.half	57726                           # 0xe17e
	.half	3075                            # 0xc03
.LCPI2_7:
	.dword	720586935663331840              # 0xa000a000a000a00
	.dword	0                               # 0x0
.LCPI2_8:
	.dword	0                               # 0x0
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
.LCPI2_9:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_10:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
.LCPI2_11:
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
	.dword	5192509630722310143             # 0x480f7fff7fff7fff
.LCPI2_12:
	.half	4882                            # 0x1312
	.half	5396                            # 0x1514
	.half	5910                            # 0x1716
	.half	6424                            # 0x1918
	.half	6938                            # 0x1b1a
	.half	7452                            # 0x1d1c
	.half	7966                            # 0x1f1e
	.half	8480                            # 0x2120
.LCPI2_13:
	.half	13074                           # 0x3312
	.half	13588                           # 0x3514
	.half	14102                           # 0x3716
	.half	14616                           # 0x3918
	.half	15130                           # 0x3b1a
	.half	15644                           # 0x3d1c
	.half	16158                           # 0x3f1e
	.half	288                             # 0x120
.LCPI2_14:
	.half	32577                           # 0x7f41
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_15:
	.dword	47288448931332216               # 0xa8009800880078
	.dword	0                               # 0x0
.LCPI2_16:
	.half	7195                            # 0x1c1b
	.half	7709                            # 0x1e1d
	.half	8223                            # 0x201f
	.half	8737                            # 0x2221
	.half	9251                            # 0x2423
	.half	9765                            # 0x2625
	.half	10279                           # 0x2827
	.half	10793                           # 0x2a29
.LCPI2_17:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8194                            # 0x2002
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.dword	9223090564025516031             # 0x7fff00007fff7fff
	.dword	0                               # 0x0
.LCPI2_19:
	.half	32896                           # 0x8080
	.half	32896                           # 0x8080
	.half	27392                           # 0x6b00
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32895                           # 0x807f
	.half	32768                           # 0x8000
.LCPI2_20:
	.half	42104                           # 0xa478
	.half	55274                           # 0xd7ea
	.half	46932                           # 0xb754
	.half	59655                           # 0xe907
	.half	28892                           # 0x70dc
	.half	9248                            # 0x2420
	.half	52974                           # 0xceee
	.half	49597                           # 0xc1bd
.LCPI2_21:
	.dword	562945658454016                 # 0x1ffff00000000
	.dword	0                               # 0x0
.LCPI2_22:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.word	4294967295                      # 0xffffffff
.LCPI2_23:
	.dword	9223372032559808512             # 0x7fffffff00000000
	.dword	9223372034707292159             # 0x7fffffff7fffffff
.LCPI2_24:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4043374588                      # 0xf100fffc
	.word	4294967295                      # 0xffffffff
.LCPI2_25:
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_26:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_27:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	8388736                         # 0x800080
	.word	0                               # 0x0
.LCPI2_28:
	.dword	0                               # 0x0
	.dword	9223372034707292159             # 0x7fffffff7fffffff
.LCPI2_29:
	.word	4294967287                      # 0xfffffff7
	.word	4294967295                      # 0xffffffff
	.word	3857049052                      # 0xe5e5e5dc
	.word	4076004837                      # 0xf2f2e5e5
.LCPI2_30:
	.dword	9049496092672                   # 0x83b00000000
	.dword	4294967328                      # 0x100000020
.LCPI2_31:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1105199103                      # 0x41dfffff
.LCPI2_32:
	.word	16843009                        # 0x1010101
	.word	16843009                        # 0x1010101
	.word	0                               # 0x0
	.word	524288                          # 0x80000
.LCPI2_33:
	.dword	8144                            # 0x1fd0
	.dword	0                               # 0x0
.LCPI2_34:
	.word	2130869763                      # 0x7f027e03
	.word	2134998849                      # 0x7f417f41
	.word	63                              # 0x3f
	.word	0                               # 0x0
.LCPI2_35:
	.word	103820800                       # 0x6302e00
	.word	0                               # 0x0
	.word	85267733                        # 0x5151515
	.word	0                               # 0x0
.LCPI2_36:
	.word	2164326658                      # 0x81010102
	.word	2147483647                      # 0x7fffffff
	.word	2164326658                      # 0x81010102
	.word	2147418369                      # 0x7fff0101
.LCPI2_37:
	.word	4227924226                      # 0xfc010102
	.word	67108863                        # 0x3ffffff
	.word	4227924226                      # 0xfc010102
	.word	67043585                        # 0x3ff0101
.LCPI2_38:
	.dword	0                               # 0x0
	.dword	1338                            # 0x53a
.LCPI2_39:
	.word	1403319378                      # 0x53a4f452
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_40:
	.dword	0                               # 0x0
	.dword	8                               # 0x8
.LCPI2_41:
	.word	2374813382                      # 0x8d8cc6c6
	.word	2374864269                      # 0x8d8d8d8d
	.word	50887                           # 0xc6c7
	.word	0                               # 0x0
.LCPI2_42:
	.dword	0                               # 0x0
	.dword	66846723                        # 0x3fc0003
.LCPI2_43:
	.dword	142991487208915200              # 0x1fc020000fe0100
	.dword	280375481794560                 # 0xff0000ff0000
.LCPI2_44:
	.dword	0                               # 0x0
	.dword	9007199254740991                # 0x1fffffffffffff
.LCPI2_45:
	.dword	-9223372034707292160            # 0x8000000080000000
	.dword	-2048                           # 0xfffffffffffff800
.LCPI2_46:
	.dword	3                               # 0x3
	.dword	0                               # 0x0
.LCPI2_47:
	.dword	8589934463                      # 0x1ffffff7f
	.dword	0                               # 0x0
.LCPI2_48:
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
.LCPI2_49:
	.dword	86045374857834                  # 0x4e420000c26a
	.dword	197525545969626                 # 0xb3a6000067da
.LCPI2_50:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
.LCPI2_51:
	.dword	-3997930970190766080            # 0xc8847ef6ed3f2000
	.dword	7488225795101143040             # 0x67eb85afb2ebb000
.LCPI2_52:
	.dword	255                             # 0xff
	.dword	0                               # 0x0
.LCPI2_53:
	.dword	-70355859275232                 # 0xffffc00300000220
	.dword	2211908161744                   # 0x203000010d0
.LCPI2_54:
	.dword	9934259358104                   # 0x90900000998
	.dword	269380348807424                 # 0xf50000000900
.LCPI2_55:
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
.LCPI2_56:
	.byte	42                              # 0x2a
	.byte	104                             # 0x68
	.byte	0                               # 0x0
	.byte	126                             # 0x7e
	.byte	210                             # 0xd2
	.byte	112                             # 0x70
	.byte	86                              # 0x56
	.byte	104                             # 0x68
	.byte	210                             # 0xd2
	.byte	164                             # 0xa4
	.byte	118                             # 0x76
	.byte	0                               # 0x0
	.byte	50                              # 0x32
	.byte	198                             # 0xc6
	.byte	204                             # 0xcc
	.byte	20                              # 0x14
.LCPI2_57:
	.dword	0                               # 0x0
	.dword	16843009                        # 0x1010101
.LCPI2_58:
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
.LCPI2_59:
	.dword	72340172821233920               # 0x101010100000100
	.dword	0                               # 0x0
.LCPI2_60:
	.byte	171                             # 0xab
	.byte	92                              # 0x5c
	.byte	252                             # 0xfc
	.byte	255                             # 0xff
	.byte	173                             # 0xad
	.byte	0                               # 0x0
	.byte	85                              # 0x55
	.byte	85                              # 0x55
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_61:
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_62:
	.dword	0                               # 0x0
	.dword	117901063                       # 0x7070707
.LCPI2_63:
	.dword	0                               # 0x0
	.dword	128                             # 0x80
.LCPI2_64:
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
.LCPI2_65:
	.dword	1085102592318508800             # 0xf0f0f0f00000f00
	.dword	1                               # 0x1
.LCPI2_66:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	176                             # 0xb0
	.byte	255                             # 0xff
	.byte	253                             # 0xfd
	.byte	255                             # 0xff
	.byte	162                             # 0xa2
	.byte	255                             # 0xff
	.byte	248                             # 0xf8
	.byte	255                             # 0xff
.LCPI2_67:
	.byte	248                             # 0xf8
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_68:
	.half	65459                           # 0xffb3
	.half	65525                           # 0xfff5
	.half	104                             # 0x68
	.half	65415                           # 0xff87
	.half	49                              # 0x31
	.half	6                               # 0x6
	.half	85                              # 0x55
	.half	78                              # 0x4e
.LCPI2_69:
	.dword	0                               # 0x0
	.dword	257                             # 0x101
.LCPI2_70:
	.half	65026                           # 0xfe02
	.half	514                             # 0x202
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_71:
	.dword	237846351090941951              # 0x34cffff03e5ffff
	.dword	96264439707926527               # 0x155ffff754affff
.LCPI2_72:
	.half	29482                           # 0x732a
	.half	43804                           # 0xab1c
	.half	12076                           # 0x2f2c
	.half	31                              # 0x1f
	.half	32913                           # 0x8091
	.half	17712                           # 0x4530
	.half	25779                           # 0x64b3
	.half	26                              # 0x1a
.LCPI2_73:
	.half	28342                           # 0x6eb6
	.half	51284                           # 0xc854
	.half	21902                           # 0x558e
	.half	938                             # 0x3aa
	.half	33314                           # 0x8222
	.half	43042                           # 0xa822
	.half	43042                           # 0xa822
	.half	10                              # 0xa
.LCPI2_74:
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_75:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_76:
	.dword	0                               # 0x0
	.dword	282578783371520                 # 0x1010100010100
.LCPI2_77:
	.word	2155872256                      # 0x80800000
	.word	2155872256                      # 0x80800000
	.word	32896                           # 0x8080
	.word	2155905152                      # 0x80808080
.LCPI2_78:
	.word	4294443008                      # 0xfff80000
	.word	0                               # 0x0
	.word	4294508536                      # 0xfff8fff8
	.word	0                               # 0x0
.LCPI2_79:
	.dword	16320                           # 0x3fc0
	.dword	0                               # 0x0
.LCPI2_80:
	.word	65280                           # 0xff00
	.word	65280                           # 0xff00
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_81:
	.dword	9040115884097536                # 0x201df000000000
	.dword	1047599                         # 0xffc2f
.LCPI2_82:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294959104                      # 0xffffe000
	.word	1077665792                      # 0x403be000
.LCPI2_83:
	.word	719706483                       # 0x2ae5d973
	.word	536371198                       # 0x1ff85ffe
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_84:
	.dword	16777215                        # 0xffffff
	.dword	54043195541028863               # 0xc0000000bfffff
.LCPI2_85:
	.word	4294901822                      # 0xffff003e
	.word	4294967235                      # 0xffffffc3
	.word	65535                           # 0xffff
	.word	63                              # 0x3f
.LCPI2_86:
	.word	4294950927                      # 0xffffc00f
	.word	3221225456                      # 0xbffffff0
	.word	3221241855                      # 0xc0003fff
	.word	3221225487                      # 0xc000000f
.LCPI2_87:
	.word	10551299                        # 0xa10003
	.word	196611                          # 0x30003
	.word	2146435327                      # 0x7ff000ff
	.word	196611                          # 0x30003
.LCPI2_88:
	.dword	402499625                       # 0x17fda829
	.dword	0                               # 0x0
.LCPI2_89:
	.dword	536870745                       # 0x1fffff59
	.dword	0                               # 0x0
.LCPI2_90:
	.dword	2257767578753106624             # 0x1f5533a694f902c0
	.dword	-5713533604692                  # 0xfffffacdb6dbecac
.LCPI2_91:
	.dword	103130350497984                 # 0x5dcbe7e830c0
	.dword	0                               # 0x0
.LCPI2_92:
	.dword	-9187202498044100481            # 0x808080010080007f
	.dword	-9223371482803961729            # 0x800000810000807f
.LCPI2_93:
	.dword	8589934594                      # 0x200000002
	.dword	288300753552949250              # 0x400400204004002
.LCPI2_94:
	.dword	8970044557815214454             # 0x7c7c000000007176
	.dword	0                               # 0x0
.LCPI2_95:
	.dword	60077416609116435               # 0xd5701794027113
	.dword	687277724561682                 # 0x2711350a27112
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
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	vst	$vr0, $sp, 192
	vssrlni.b.h	$vr0, $vr0, 8
	vst	$vr0, $sp, 208
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.b.h	$vr0, $vr0, 5
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.b.h	$vr0, $vr0, 13
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	vst	$vr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	vst	$vr1, $sp, 160                  # 16-byte Folded Spill
	lu12i.w	$a0, 31
	ori	$a0, $a0, 3585
	vreplgr2vr.d	$vr0, $a0
	vssrlni.b.h	$vr0, $vr1, 12
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.b.h	$vr0, $vr0, 15
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.h.w	$vr0, $vr1, 9
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 192
	vssrlni.h.w	$vr2, $vr1, 16
	vst	$vr2, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 192
	vrepli.h	$vr0, 10
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.h.w	$vr1, $vr0, 8
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_8)
	vst	$vr1, $sp, 128                  # 16-byte Folded Spill
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	vst	$vr1, $sp, 192
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.h.w	$vr0, $vr1, 13
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr1, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	vld	$vr2, $sp, 176                  # 16-byte Folded Reload
	vst	$vr2, $sp, 192
	vssrlni.h.w	$vr0, $vr1, 27
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
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
	vst	$vr0, $sp, 192
	vssrlni.h.w	$vr2, $vr1, 10
	vst	$vr2, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vst	$vr1, $sp, 192
	vssrlni.h.w	$vr1, $vr0, 22
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	pcalau12i	$a1, %pc_hi20(.LCPI2_17)
	vld	$vr2, $a1, %pc_lo12(.LCPI2_17)
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	vld	$vr1, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 192
	vori.b	$vr0, $vr2, 0
	vssrlni.h.w	$vr0, $vr1, 22
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_19)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.h.w	$vr0, $vr1, 3
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vst	$vr1, $sp, 192
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.h.w	$vr0, $vr1, 4
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_22)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.w.d	$vr0, $vr1, 47
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	pcalau12i	$a1, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a1, %pc_lo12(.LCPI2_25)
	vst	$vr1, $sp, 128                  # 16-byte Folded Spill
	vld	$vr2, $a0, %pc_lo12(.LCPI2_24)
	vst	$vr2, $sp, 112                  # 16-byte Folded Spill
	vst	$vr0, $sp, 192
	vori.b	$vr0, $vr1, 0
	vssrlni.w.d	$vr0, $vr2, 33
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.w.d	$vr0, $vr0, 2
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_26)
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_27)
	vld	$vr2, $sp, 176                  # 16-byte Folded Reload
	vst	$vr2, $sp, 192
	vssrlni.w.d	$vr0, $vr1, 56
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.w.d	$vr1, $vr0, 22
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.w.d	$vr0, $vr0, 3
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_32)
	vst	$vr0, $sp, 192
	vssrlni.w.d	$vr2, $vr1, 51
	vst	$vr2, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_35)
	vst	$vr0, $sp, 192
	vssrlni.w.d	$vr2, $vr1, 50
	vst	$vr2, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.w.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 524287
	pcalau12i	$a1, %pc_hi20(.LCPI2_36)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_36)
	pcalau12i	$a1, %pc_hi20(.LCPI2_37)
	vld	$vr1, $a1, %pc_lo12(.LCPI2_37)
	ori	$a0, $a0, 4095
	vreplgr2vr.w	$vr2, $a0
	vst	$vr2, $sp, 192
	vssrlni.w.d	$vr1, $vr0, 0
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_39)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.w.d	$vr1, $vr0, 20
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_41)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.w.d	$vr1, $vr0, 60
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_43)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.d.q	$vr1, $vr0, 86
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_45)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.d.q	$vr1, $vr0, 75
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	lu52i.d	$a0, $s0, 2047
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 192
	lu52i.d	$a0, $zero, 2047
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vssrlni.d.q	$vr0, $vr1, 53
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_46)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vssrlni.d.q	$vr0, $vr1, 126
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_47)
	vst	$vr0, $sp, 192
	vrepli.w	$vr0, -65
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.d.q	$vr1, $vr0, 95
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_48)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 192
	lu12i.w	$a0, -33
	ori	$a0, $a0, 4092
	vreplgr2vr.w	$vr0, $a0
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.d.q	$vr0, $vr1, 19
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_49)
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vst	$vr1, $sp, 192
	vssrlni.d.q	$vr1, $vr0, 122
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_51)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.d.q	$vr0, $vr1, 56
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_53)
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vst	$vr2, $sp, 192
	vssrlni.d.q	$vr1, $vr0, 39
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_54)
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	vreplgr2vr.w	$vr1, $a0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vssrlni.d.q	$vr0, $vr1, 32
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vssrlni.bu.h	$vr0, $vr0, 1
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_55)
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vst	$vr1, $sp, 192
	vssrlni.bu.h	$vr1, $vr0, 13
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_56)
	lu32i.d	$s1, 65537
	vreplgr2vr.d	$vr1, $s1
	vst	$vr1, $sp, 192
	vssrlni.bu.h	$vr0, $vr0, 15
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_57)
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_58)
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	vst	$vr0, $sp, 192
	vori.b	$vr0, $vr1, 0
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.bu.h	$vr0, $vr1, 15
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_59)
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_60)
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_61)
	vst	$vr0, $sp, 192
	vssrlni.bu.h	$vr2, $vr1, 15
	vst	$vr2, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_62)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.bu.h	$vr0, $vr1, 13
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_63)
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_64)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.bu.h	$vr1, $vr0, 1
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_65)
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_66)
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_67)
	vst	$vr0, $sp, 192
	vssrlni.bu.h	$vr2, $vr1, 12
	vst	$vr2, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 293
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	lu32i.d	$a0, 96
	pcalau12i	$a1, %pc_hi20(.LCPI2_68)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_68)
	lu52i.d	$a0, $a0, 78
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 192
	vssrlni.hu.w	$vr0, $vr0, 12
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 299
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.hu.w	$vr0, $vr0, 13
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 305
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vrepli.d	$vr0, -2
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vssrlni.hu.w	$vr0, $vr1, 16
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 311
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_69)
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_70)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.hu.w	$vr1, $vr0, 17
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 317
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.hu.w	$vr0, $vr0, 5
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 323
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.hu.w	$vr0, $vr1, 0
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 329
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_71)
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_72)
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_73)
	vst	$vr0, $sp, 192
	vssrlni.hu.w	$vr2, $vr1, 11
	vst	$vr2, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 335
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.hu.w	$vr0, $vr1, 5
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 341
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_74)
	vst	$vr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_75)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_75)
	lu12i.w	$a0, 337191
	ori	$a0, $a0, 3453
	vreplgr2vr.w	$vr1, $a0
	vssrlni.wu.d	$vr1, $vr0, 16
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 347
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_76)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_76)
	pcalau12i	$a0, %pc_hi20(.LCPI2_77)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_77)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.wu.d	$vr1, $vr0, 47
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 353
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_78)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_78)
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vst	$vr1, $sp, 192
	vssrlni.wu.d	$vr1, $vr0, 55
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 359
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_79)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_79)
	pcalau12i	$a0, %pc_hi20(.LCPI2_80)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_80)
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vssrlni.wu.d	$vr0, $vr1, 34
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 365
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_81)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_81)
	pcalau12i	$a0, %pc_hi20(.LCPI2_82)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_82)
	pcalau12i	$a0, %pc_hi20(.LCPI2_83)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_83)
	vst	$vr0, $sp, 192
	vssrlni.wu.d	$vr2, $vr1, 41
	vst	$vr2, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 371
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_84)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_84)
	pcalau12i	$a0, %pc_hi20(.LCPI2_85)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_85)
	pcalau12i	$a0, %pc_hi20(.LCPI2_86)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_86)
	vst	$vr0, $sp, 192
	vssrlni.wu.d	$vr2, $vr1, 40
	vst	$vr2, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 377
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_87)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_87)
	lu32i.d	$s0, -65536
	lu52i.d	$a0, $s0, 3
	vreplgr2vr.d	$vr1, $a0
	vssrlni.wu.d	$vr1, $vr0, 60
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 383
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.du.q	$vr0, $vr0, 79
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 389
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_88)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_88)
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vst	$vr1, $sp, 192
	vssrlni.du.q	$vr1, $vr0, 39
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 395
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.du.q	$vr0, $vr0, 53
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 401
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_89)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_89)
	pcalau12i	$a0, %pc_hi20(.LCPI2_90)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_90)
	pcalau12i	$a0, %pc_hi20(.LCPI2_91)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_91)
	vst	$vr0, $sp, 192
	vssrlni.du.q	$vr2, $vr1, 99
	vst	$vr2, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 407
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 192
	vrepli.d	$vr0, 64
	vssrlni.du.q	$vr0, $vr0, 57
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 413
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 131072
	pcalau12i	$a1, %pc_hi20(.LCPI2_92)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_92)
	ori	$a0, $a0, 32
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 192
	vssrlni.du.q	$vr0, $vr0, 98
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 419
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_93)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_93)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 192
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.du.q	$vr0, $vr1, 109
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 425
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vssrlni.du.q	$vr0, $vr1, 38
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 431
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vssrlni.du.q	$vr0, $vr0, 69
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 437
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_94)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_94)
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 192
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.du.q	$vr1, $vr0, 62
	vst	$vr1, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 443
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_95)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_95)
	vld	$vr1, $sp, 160                  # 16-byte Folded Reload
	vst	$vr1, $sp, 192
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vssrlni.du.q	$vr0, $vr1, 6
	vst	$vr0, $sp, 208
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 16
	ori	$a4, $zero, 449
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vssrlni.c"
	.size	.L.str.5, 131

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
