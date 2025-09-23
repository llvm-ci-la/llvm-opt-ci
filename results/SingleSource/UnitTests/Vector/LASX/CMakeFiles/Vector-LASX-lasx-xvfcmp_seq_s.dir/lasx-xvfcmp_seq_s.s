	.file	"lasx-xvfcmp_seq_s.c"
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
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x41d66000                      # float 26.796875
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x41d66000                      # float 26.796875
.LCPI2_1:
	.word	0x00000000                      # float 0
	.word	0x59800000                      # float 4.50359963E+15
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x59800000                      # float 4.50359963E+15
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_2:
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_3:
	.word	0xa41aa42e                      # float -3.35324925E-17
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_4:
	.word	0xff295329                      # float -2.25071324E+38
	.word	0xffffffff                      # float NaN
	.word	0xfefefeff                      # float -1.69473963E+38
	.word	0xffffffff                      # float NaN
	.word	0xff295329                      # float -2.25071324E+38
	.word	0xffffffff                      # float NaN
	.word	0xfefefeff                      # float -1.69473963E+38
	.word	0xffffffff                      # float NaN
.LCPI2_5:
	.word	0x00005400                      # float 3.01335222E-41
	.word	0x01010101                      # float 2.36942783E-38
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x83f95466                      # float -1.46542816E-36
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
.LCPI2_6:
	.word	0x955d3f68                      # float -4.46806133E-26
	.word	0x21f6050d                      # float 1.66709453E-18
	.word	0x4f9bf1ac                      # float 5.23261338E+9
	.word	0x111ebb78                      # float 1.25217706E-28
	.word	0x809f3b50                      # float -1.46231212E-38
	.word	0x1c386546                      # float 6.10113859E-22
	.word	0x4f9c4100                      # float 5.24301107E+9
	.word	0x111ebb78                      # float 1.25217706E-28
.LCPI2_7:
	.word	0xffff0001                      # float NaN
	.word	0xffff0000                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffff0001                      # float NaN
	.word	0xffff0000                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_8:
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_9:
	.word	0xff910072                      # float NaN
	.word	0x00000002                      # float 2.80259693E-45
	.word	0x00000100                      # float 3.58732407E-43
	.word	0x00000000                      # float 0
	.word	0xff910072                      # float NaN
	.word	0x00000002                      # float 2.80259693E-45
	.word	0x00000100                      # float 3.58732407E-43
	.word	0x00000000                      # float 0
.LCPI2_10:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_11:
	.word	0xffff97a2                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffff97a2                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_12:
	.dword	0x063ecfbd58abc4b7              # double 1.3579276300482948E-278
	.dword	0x4a1c80bb8e892e00              # double 1.0414244829976822E+49
	.dword	0x182100c72280e687              # double 1.8633709433849914E-192
	.dword	0x345947dcd192b5c4              # double 1.6109799866779288E-56
.LCPI2_13:
	.dword	0x9a7491f9e016ccd4              # double -3.0982862191629219E-181
	.dword	0x12eb8332e3e15093              # double 1.5587738969818773E-217
	.dword	0x8e41dcbff87e7900              # double -5.3576081515453428E-240
	.dword	0x053531f7c6334908              # double 1.4253494270119496E-283
.LCPI2_14:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_15:
	.dword	0x00000000ffffffff              # double 2.1219957904712067E-314
	.dword	0x0000000000000000              # double 0
	.dword	0x00000000ffffffff              # double 2.1219957904712067E-314
	.dword	0x0000000000000000              # double 0
.LCPI2_16:
	.dword	0xffffff90ffffff80              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0xffffff90ffffff80              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_17:
	.dword	0xffff0002fffeffff              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0xffff0002fffeffff              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_18:
	.dword	0x0000000100000006              # double 2.1219957939296662E-314
	.dword	0x000000010486048c              # double 2.1594913478377406E-314
	.dword	0x0000000100000006              # double 2.1219957939296662E-314
	.dword	0x000000010486048c              # double 2.1594913478377406E-314
.LCPI2_19:
	.dword	0xffffffffffffffff              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0xffffffffffffffff              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_20:
	.dword	0x00ff00ff00ef0120              # double 7.064161021989917E-304
	.dword	0x00ff00ff00ff00ff              # double 7.0641610228386886E-304
	.dword	0x00ff00ff00ef0120              # double 7.064161021989917E-304
	.dword	0x00ff00ff00ff00ff              # double 7.0641610228386886E-304
.LCPI2_21:
	.dword	0x0000000000000002              # double 9.8813129168249309E-324
	.dword	0xff00ffff00000001              # double -5.8290015911176744E+303
	.dword	0x0000000000000002              # double 9.8813129168249309E-324
	.dword	0xff00ffff00000001              # double -5.8290015911176744E+303
.LCPI2_22:
	.dword	0x032feea900000000              # double 2.4999077207919702E-293
	.dword	0x04e8296f08181818              # double 5.0776680648941695E-285
	.dword	0x032feea900000000              # double 2.4999077207919702E-293
	.dword	0x04e8296f08181818              # double 5.0776680648941695E-285
.LCPI2_23:
	.word	0x0001fffe                      # float 1.8366819E-40
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x0001fffe                      # float 1.8366819E-40
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_24:
	.word	0x80000000                      # float -0
	.word	0x55555555                      # float 1.46601547E+13
	.word	0x3f800000                      # float 1
	.word	0x55555555                      # float 1.46601547E+13
	.word	0x80000000                      # float -0
	.word	0x55555555                      # float 1.46601547E+13
	.word	0x3f800000                      # float 1
	.word	0x55555555                      # float 1.46601547E+13
.LCPI2_25:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00030000                      # float 2.75506488E-40
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00030000                      # float 2.75506488E-40
	.word	0x00000000                      # float 0
.LCPI2_26:
	.word	0x00000002                      # float 2.80259693E-45
	.word	0x00000000                      # float 0
	.word	0x00018002                      # float 1.37756047E-40
	.word	0x00000000                      # float 0
	.word	0x00000002                      # float 2.80259693E-45
	.word	0x00000000                      # float 0
	.word	0x00018002                      # float 1.37756047E-40
	.word	0x00000000                      # float 0
.LCPI2_27:
	.word	0x00000100                      # float 3.58732407E-43
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000100                      # float 3.58732407E-43
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_28:
	.word	0x0000ff70                      # float 9.16337091E-41
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x0000ff70                      # float 9.16337091E-41
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_29:
	.word	0x00000008                      # float 1.12103877E-44
	.word	0x00000002                      # float 2.80259693E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000008                      # float 1.12103877E-44
	.word	0x00000002                      # float 2.80259693E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_30:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_31:
	.word	0xa9000000                      # float -2.84217094E-14
	.word	0x43b32fee                      # float 358.374451
	.word	0xbc606060                      # float -0.0136948526
	.word	0x4393a0a5                      # float 295.255035
	.word	0xa9000000                      # float -2.84217094E-14
	.word	0x43b32fee                      # float 358.374451
	.word	0xbc606060                      # float -0.0136948526
	.word	0x4393a0a5                      # float 295.255035
.LCPI2_32:
	.word	0x20010001                      # float 1.09267263E-19
	.word	0xfffe97c0                      # float NaN
	.word	0x9ffffd80                      # float -1.08416081E-19
	.word	0xfffeb683                      # float NaN
	.word	0x20010001                      # float 1.09267263E-19
	.word	0xfffe97c0                      # float NaN
	.word	0x9ffffd80                      # float -1.08416081E-19
	.word	0xfffeb683                      # float NaN
.LCPI2_33:
	.word	0xdf5b41b0                      # float -1.57991025E+19
	.word	0xfffe97a1                      # float NaN
	.word	0x007ffd61                      # float 1.17540032E-38
	.word	0xfffeb664                      # float NaN
	.word	0xdf5b41b0                      # float -1.57991025E+19
	.word	0xfffe97a1                      # float NaN
	.word	0x007ffd61                      # float 1.17540032E-38
	.word	0xfffeb664                      # float NaN
.LCPI2_34:
	.dword	0x0000000000000000              # double 0
	.dword	0x000000000000ffff              # double 3.2378592100206092E-319
	.dword	0x0000000000000000              # double 0
	.dword	0x000000000000ff80              # double 3.2315845763184254E-319
.LCPI2_35:
	.dword	0x0000000000000000              # double 0
	.dword	0xffffffffffffffff              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
.LCPI2_36:
	.dword	0x41d8585858400000              # double 1633771873
	.dword	0xc1be9e9e9f000000              # double -513711775
	.dword	0x41d8585858400000              # double 1633771873
	.dword	0xc1be9e9e9f000000              # double -513711775
.LCPI2_37:
	.dword	0x0000000000000000              # double 0
	.dword	0xffff040000000000              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0xffff040000000000              # double NaN
.LCPI2_38:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_39:
	.dword	0x00000000ffffff7d              # double 2.1219957262426727E-314
	.dword	0x0000000000000000              # double 0
	.dword	0xffffe045fffffeff              # double NaN
	.dword	0x0000000000000000              # double 0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 352
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 224                  # 32-byte Folded Spill
	xvfcmp.seq.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	xvldi	$xr2, -1777
	xvst	$xr2, $sp, 256
	xvfcmp.seq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 256
	xvfcmp.seq.s	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvfcmp.seq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvfcmp.seq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvfcmp.seq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvfcmp.seq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.seq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.seq.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_13)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvfcmp.seq.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_14)
	xvst	$xr1, $sp, 128                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.seq.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.seq.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.seq.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvfcmp.seq.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvfcmp.seq.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvfcmp.seq.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	lu12i.w	$a0, -4082
	ori	$a0, $a0, 3890
	lu32i.d	$a0, 65280
	lu52i.d	$a0, $a0, -16
	xvreplgr2vr.d	$xr1, $a0
	xvfcmp.seq.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvfcmp.seq.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvfcmp.seq.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	lu12i.w	$a0, -3633
	ori	$a0, $a0, 3868
	xvreplgr2vr.d	$xr0, $a0
	xvfcmp.seq.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	lu12i.w	$a0, 32768
	lu32i.d	$a0, 2048
	lu52i.d	$a0, $a0, 320
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvfcmp.seq.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.sueq.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_24)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvfcmp.sueq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	xvldi	$xr2, -1552
	xvst	$xr2, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr2, $sp, 256
	xvfcmp.sueq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 2046
	xvreplgr2vr.d	$xr0, $a0
	lu12i.w	$a0, -144
	ori	$a0, $a0, 342
	xvreplgr2vr.d	$xr1, $a0
	xvfcmp.sueq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_28)
	xvld	$xr2, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvfcmp.sueq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_29)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.sueq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvfcmp.sueq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvrepli.d	$xr0, 3
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.sueq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_33)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvfcmp.sueq.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.sueq.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvfcmp.sueq.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 395
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.sueq.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 404
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvfcmp.sueq.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 422
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.sueq.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 431
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvrepli.h	$xr0, 510
	xvfcmp.sueq.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 440
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.sueq.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 449
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -352
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvfcmp_seq_s.c"
	.size	.L.str.5, 138

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
