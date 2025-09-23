	.file	"lasx-xvfnmadd_s.c"
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
	.word	0xff005f0f                      # float -1.70634756E+38
	.word	0xff00ff0f                      # float -1.71465523E+38
	.word	0x0000000f                      # float 2.1019477E-44
	.word	0x0000000f                      # float 2.1019477E-44
	.word	0xff005f0f                      # float -1.70634756E+38
	.word	0xff00ff0f                      # float -1.71465523E+38
	.word	0x0000000f                      # float 2.1019477E-44
	.word	0x0000000f                      # float 2.1019477E-44
.LCPI2_1:
	.word	2148335618                      # 0x800d0002
	.word	2147549183                      # 0x8000ffff
	.word	2147483650                      # 0x80000002
	.word	2147483648                      # 0x80000000
	.word	2147614719                      # 0x8001ffff
	.word	2190147339                      # 0x828aff0b
	.word	2147614720                      # 0x80020000
	.word	2147483648                      # 0x80000000
.LCPI2_2:
	.word	0x00010000                      # float 9.18354962E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x0001ffff                      # float 1.83669591E-40
	.word	0x000000ff                      # float 3.57331108E-43
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_3:
	.word	0x40000010                      # float 2.00000381
	.word	0x80000000                      # float -0
	.word	0x40000000                      # float 2
	.word	0x80000000                      # float -0
	.word	0x10000010                      # float 2.52435971E-29
	.word	0x40000000                      # float 2
	.word	0x40000000                      # float 2
	.word	0x80000000                      # float -0
.LCPI2_4:
	.word	0x00060000                      # float 5.51012977E-40
	.word	0x0003fffc                      # float 3.67336379E-40
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0x08140000                      # float 4.453713E-34
	.word	0x020afefb                      # float 1.02118146E-37
	.word	0x00010000                      # float 9.18354962E-41
	.word	0x00010001                      # float 9.18368975E-41
.LCPI2_5:
	.word	2937247216                      # 0xaf12d5f0
	.word	2147596078                      # 0x8001b72e
	.word	2644292912                      # 0x9d9cb530
	.word	149347                          # 0x24763
	.word	2937247216                      # 0xaf12d5f0
	.word	2147596078                      # 0x8001b72e
	.word	112430                          # 0x1b72e
	.word	2147596078                      # 0x8001b72e
.LCPI2_6:
	.word	0x9e1423d4                      # float -7.84246384E-21
	.word	0x1d949d94                      # float 3.93382058E-21
	.word	0x3dd41d95                      # float 0.103572048
	.word	0x1de9a03f                      # float 6.1840277E-21
	.word	0x9e1423d4                      # float -7.84246384E-21
	.word	0x1d949d94                      # float 3.93382058E-21
	.word	0x9d949d95                      # float -3.93382098E-21
	.word	0x1d949d94                      # float 3.93382058E-21
.LCPI2_7:
	.word	0xd07dbf01                      # float -1.70286131E+10
	.word	0x1f3d2101                      # float 4.00496069E-20
	.word	0x1f3d2101                      # float 4.00496069E-20
	.word	0x9f1fd080                      # float -3.38420268E-20
	.word	0xd07dbf01                      # float -1.70286131E+10
	.word	0x1f3d2101                      # float 4.00496069E-20
	.word	0x1f3d2101                      # float 4.00496069E-20
	.word	0x1f3d2101                      # float 4.00496069E-20
.LCPI2_8:
	.word	2147483648                      # 0x80000000
	.word	2146959360                      # 0x7ff80000
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	2146959360                      # 0x7ff80000
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
.LCPI2_9:
	.word	0x00000000                      # float 0
	.word	0x7ff80000                      # float NaN
	.word	0x3e3b31d4                      # float 0.182807267
	.word	0x1f0fdf7f                      # float 3.04662995E-20
	.word	0x00000000                      # float 0
	.word	0x7ff80000                      # float NaN
	.word	0x3e3b31d4                      # float 0.182807267
	.word	0x1f0fdf7f                      # float 3.04662995E-20
.LCPI2_10:
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_11:
	.word	2147483649                      # 0x80000001
	.word	4294967264                      # 0xffffffe0
	.word	2147483649                      # 0x80000001
	.word	4294967200                      # 0xffffffa0
	.word	2147483649                      # 0x80000001
	.word	4294967264                      # 0xffffffe0
	.word	2147483649                      # 0x80000001
	.word	4294967200                      # 0xffffffa0
.LCPI2_12:
	.word	0x00000001                      # float 1.40129846E-45
	.word	0xffffffe0                      # float NaN
	.word	0x00000001                      # float 1.40129846E-45
	.word	0xffffffa0                      # float NaN
	.word	0x00000001                      # float 1.40129846E-45
	.word	0xffffffe0                      # float NaN
	.word	0x00000001                      # float 1.40129846E-45
	.word	0xffffffa0                      # float NaN
.LCPI2_13:
	.word	0x68410001                      # float 3.64566721E+24
	.word	0x49810081                      # float 1056784.13
	.word	0x4843ffe1                      # float 200703.516
	.word	0x49810081                      # float 1056784.13
	.word	0x68410001                      # float 3.64566721E+24
	.word	0x49810081                      # float 1056784.13
	.word	0x4843ffe1                      # float 200703.516
	.word	0x49810081                      # float 1056784.13
.LCPI2_14:
	.word	2147549183                      # 0x8000ffff
	.word	4294875072                      # 0xfffe97c0
	.word	2147491841                      # 0x80002001
	.word	4294882947                      # 0xfffeb683
	.word	2147549183                      # 0x8000ffff
	.word	4294875072                      # 0xfffe97c0
	.word	2147491841                      # 0x80002001
	.word	4294882947                      # 0xfffeb683
.LCPI2_15:
	.word	0x20010001                      # float 1.09267263E-19
	.word	0xfffe97c0                      # float NaN
	.word	0x9ffffd80                      # float -1.08416081E-19
	.word	0xfffeb683                      # float NaN
	.word	0x20010001                      # float 1.09267263E-19
	.word	0xfffe97c0                      # float NaN
	.word	0x9ffffd80                      # float -1.08416081E-19
	.word	0xfffeb683                      # float NaN
.LCPI2_16:
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00002001                      # float 1.14808383E-41
	.word	0x00009fff                      # float 5.73957838E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00002001                      # float 1.14808383E-41
	.word	0x00009fff                      # float 5.73957838E-41
.LCPI2_17:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_18:
	.word	0x00000000                      # float 0
	.word	0x6651bfff                      # float 2.47629074E+23
	.word	0xf328dfff                      # float -1.33796547E+31
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_19:
	.word	0xe651bfff                      # float -2.47629074E+23
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xbf7f7fff                      # float -0.998046815
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_20:
	.word	2147483648                      # 0x80000000
	.word	1716633599                      # 0x6651bfff
	.word	4079542271                      # 0xf328dfff
	.word	4294967295                      # 0xffffffff
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	1183219577                      # 0x46867f79
	.word	4294967168                      # 0xffffff80
.LCPI2_21:
	.word	0x5c800400                      # float 2.88265561E+17
	.word	0x02020080                      # float 9.55103509E-38
	.word	0xfeff0000                      # float -1.69476569E+38
	.word	0xffffff80                      # float NaN
	.word	0x01000400                      # float 2.35127569E-38
	.word	0x00000000                      # float 0
	.word	0xfefeff00                      # float -1.69473973E+38
	.word	0xffffff80                      # float NaN
.LCPI2_22:
	.word	0x00000000                      # float 0
	.word	0x07030200                      # float 9.85593238E-35
	.word	0x00020100                      # float 1.84029725E-40
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x01020400                      # float 2.38800989E-38
	.word	0x07070707                      # float 1.01583363E-34
	.word	0x00000000                      # float 0
.LCPI2_23:
	.word	2147483648                      # 0x80000000
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	2147483648                      # 0x80000000
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI2_24:
	.word	0x80000000                      # float -0
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x80000000                      # float -0
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_25:
	.word	2143289344                      # 0x7fc00000
	.word	2143289344                      # 0x7fc00000
	.word	2139095040                      # 0x7f800000
	.word	2139095040                      # 0x7f800000
	.word	2143289344                      # 0x7fc00000
	.word	2143289344                      # 0x7fc00000
	.word	2139095040                      # 0x7f800000
	.word	2139095040                      # 0x7f800000
.LCPI2_26:
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	4286578688                      # 0xff800000
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	4286578688                      # 0xff800000
	.word	2147483648                      # 0x80000000
.LCPI2_27:
	.word	0x00003f78                      # float 2.27682974E-41
	.word	0x00000000                      # float 0
	.word	0xf7f8f7f8                      # float -1.00993674E+34
	.word	0x00000000                      # float 0
	.word	0x00003f78                      # float 2.27682974E-41
	.word	0x00000000                      # float 0
	.word	0xf7f8f7f8                      # float -1.00993674E+34
	.word	0x00000000                      # float 0
.LCPI2_28:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
.LCPI2_29:
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_30:
	.word	1029                            # 0x405
	.word	2147483648                      # 0x80000000
	.word	16843008                        # 0x1010100
	.word	2147483648                      # 0x80000000
	.word	1029                            # 0x405
	.word	2147483648                      # 0x80000000
	.word	16843008                        # 0x1010100
	.word	2147483648                      # 0x80000000
.LCPI2_31:
	.word	0x00000405                      # float 1.44193612E-42
	.word	0x00000000                      # float 0
	.word	0x01010100                      # float 2.36942755E-38
	.word	0x00000000                      # float 0
	.word	0x00000405                      # float 1.44193612E-42
	.word	0x00000000                      # float 0
	.word	0x01010100                      # float 2.36942755E-38
	.word	0x00000000                      # float 0
.LCPI2_32:
	.word	4291362696                      # 0xffc8ff88
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	4291362696                      # 0xffc8ff88
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
.LCPI2_33:
	.word	0xff88ff88                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xff88ff88                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_34:
	.word	0x00000202                      # float 7.20267411E-43
	.word	0x00000000                      # float 0
	.word	0x00800080                      # float 1.17551229E-38
	.word	0x00000000                      # float 0
	.word	0x00000202                      # float 7.20267411E-43
	.word	0x00000000                      # float 0
	.word	0x00800080                      # float 1.17551229E-38
	.word	0x00000000                      # float 0
.LCPI2_35:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	2097151                         # 0x1fffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	2097151                         # 0x1fffff
.LCPI2_36:
	.word	4294967056                      # 0xffffff10
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967056                      # 0xffffff10
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_37:
	.word	0x7fff0000                      # float NaN
	.word	0x7fff8000                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x7fff0000                      # float NaN
	.word	0x7fff8000                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 224
	bstrins.d	$sp, $zero, 4, 0
	lu12i.w	$a0, -11
	ori	$a0, $a0, 3932
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_0)
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 128
	xvrepli.b	$xr2, 0
	xvst	$xr2, $sp, 96                   # 32-byte Folded Spill
	xvfnmadd.s	$xr0, $xr2, $xr1, $xr0
	xvst	$xr0, $sp, 160
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 28
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 128
	xvfnmadd.s	$xr0, $xr3, $xr2, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 39
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvfnmadd.s	$xr0, $xr2, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 50
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvfnmadd.s	$xr0, $xr1, $xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 61
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu52i.d	$a0, $a0, -2048
	bstrins.d	$a0, $a0, 32, 31
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	lu52i.d	$a0, $zero, -2048
	xvreplgr2vr.d	$xr1, $a0
	xvrepli.d	$xr2, 1
	xvfnmadd.s	$xr0, $xr1, $xr0, $xr2
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 72
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 128
	ori	$a0, $zero, 512
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvfnmadd.s	$xr0, $xr2, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 83
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$s1, -524288
	xvreplgr2vr.w	$xr0, $s1
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvfnmadd.s	$xr0, $xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 94
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvfnmadd.s	$xr0, $xr0, $xr1, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 105
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvfnmadd.s	$xr0, $xr1, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 128
	xvfnmadd.s	$xr0, $xr2, $xr1, $xr2
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 127
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 512047
	ori	$a0, $a0, 3330
	lu32i.d	$a0, -1
	lu52i.d	$a0, $a0, 2047
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 128
	lu12i.w	$a0, 15
	ori	$a0, $a0, 3330
	xvreplgr2vr.h	$xr0, $a0
	lu52i.d	$a0, $s1, 2047
	xvreplgr2vr.d	$xr1, $a0
	xvfnmadd.s	$xr0, $xr1, $xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 138
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_18)
	xvst	$xr2, $sp, 32                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr1, $xr0, $xr2
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 149
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr2, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 160
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 128
	lu12i.w	$a0, -131072
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr0, $xr1, $xr2
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 171
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 182
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 193
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr1, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 204
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 2046
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr1, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 226
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr1, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 237
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr1, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 248
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr1, $xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 259
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr2, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 270
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr1, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 281
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_37)
	xvst	$xr0, $sp, 128
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvfnmsub.s	$xr0, $xr2, $xr1, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 292
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -224
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvfnmadd_s.c"
	.size	.L.str.5, 136

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
