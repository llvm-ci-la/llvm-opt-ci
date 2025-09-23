	.file	"lsx-vftint-3.c"
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
	.dword	244813135872                    # 0x3900000000
	.dword	0                               # 0x0
.LCPI2_1:
	.word	0x00000000                      # float 0
	.word	0x42652524                      # float 57.2862701
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_2:
	.dword	0                               # 0x0
	.dword	-9223372036854775808            # 0x8000000000000000
.LCPI2_3:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xff00ff7f                      # float -1.71467795E+38
.LCPI2_4:
	.word	0x7f800000                      # float +Inf
	.word	0x2d1da85b                      # float 8.96179918E-12
	.word	0x7f800000                      # float +Inf
	.word	0xffffffff                      # float NaN
.LCPI2_5:
	.word	0xffffffff                      # float NaN
	.word	0x8040007f                      # float -5.87764972E-39
	.word	0xffffffff                      # float NaN
	.word	0x80307028                      # float -4.4483379E-39
.LCPI2_6:
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_7:
	.word	0x03010302                      # float 3.79131456E-37
	.word	0x00000000                      # float 0
	.word	0x03050302                      # float 3.908864E-37
	.word	0x00000000                      # float 0
.LCPI2_8:
	.word	0x1d37b5a1                      # float 2.43137483E-21
	.word	0x03aa355e                      # float 1.00039545E-36
	.word	0xa79308f6                      # float -4.08104116E-15
	.word	0x000aa822                      # float 9.7866965E-40
.LCPI2_9:
	.word	0xffff0000                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0xffffff00                      # float NaN
.LCPI2_10:
	.word	0xfffffff7                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_11:
	.word	0xfffffff0                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xff84fff4                      # float NaN
	.word	0xff84fff4                      # float NaN
.LCPI2_12:
	.word	0x07ffc000                      # float 3.84809831E-34
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_13:
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0xffff0000                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
.LCPI2_14:
	.dword	9223372034707292160             # 0x7fffffff80000000
	.dword	-9223372032559818656            # 0x80000000ffffd860
.LCPI2_15:
	.word	0xfbd2e34b                      # float -2.18998478E+36
	.word	0x6db7da53                      # float 7.11246182E+27
	.word	0xc61e81ef                      # float -10144.4834
	.word	0xf039b8c0                      # float -2.29912303E+29
.LCPI2_16:
	.word	0xffff0001                      # float NaN
	.word	0x00020000                      # float 1.83670992E-40
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_17:
	.dword	0                               # 0x0
	.dword	2147483647                      # 0x7fffffff
.LCPI2_18:
	.word	0x94027113                      # float -6.58562269E-27
	.word	0x00d57017                      # float 1.96011709E-38
	.word	0x50a27112                      # float 2.18025533E+10
	.word	0x00027113                      # float 2.24234379E-40
.LCPI2_19:
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	2147483647                      # 0x7fffffff
.LCPI2_20:
	.word	0x7f3b7f21                      # float 2.49225726E+38
	.word	0x7f3b7f3f                      # float 2.49226335E+38
	.word	0x7e017f01                      # float 4.30324634E+37
	.word	0xff80ff80                      # float NaN
.LCPI2_21:
	.dword	4294967297                      # 0x100000001
	.dword	0                               # 0x0
.LCPI2_22:
	.word	0x041b0013                      # float 1.82201965E-36
	.word	0x00001802                      # float 8.61238036E-42
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_23:
	.word	0xffffffff                      # float NaN
	.word	0x7ffffffe                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xff80ffff                      # float NaN
.LCPI2_24:
	.dword	9223372034707292160             # 0x7fffffff80000000
	.dword	2147483648                      # 0x80000000
.LCPI2_25:
	.word	0xdefb5ada                      # float -9.05601427E+18
	.word	0x5f5f7bfe                      # float 1.61037442E+19
	.word	0xfedbfefe                      # float -1.46212463E+38
	.word	0xfffffadf                      # float NaN
.LCPI2_26:
	.word	0x0000003b                      # float 8.26766094E-44
	.word	0x000ef000                      # float 1.37179272E-39
	.word	0x3a800000                      # float 9.765625E-4
	.word	0x3a800000                      # float 9.765625E-4
.LCPI2_27:
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x09610001                      # float 2.70833917E-33
	.word	0x00000000                      # float 0
	.word	0x10404000                      # float 3.79146273E-29
.LCPI2_28:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xfffffff7                      # float NaN
	.word	0x0000001a                      # float 3.64337601E-44
.LCPI2_29:
	.dword	-8589934600                     # 0xfffffffdfffffff8
	.dword	0                               # 0x0
.LCPI2_30:
	.word	0xc0ff00ff                      # float -7.96887159
	.word	0xc03fc03f                      # float -2.99610877
	.word	0x013ec13e                      # float 3.5036133E-38
	.word	0x00000000                      # float 0
.LCPI2_31:
	.dword	1099511628032                   # 0x10000000100
	.dword	0                               # 0x0
.LCPI2_32:
	.word	0x43800000                      # float 256
	.word	0x43800000                      # float 256
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_33:
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00000000                      # float 0
	.word	0x0000ffff                      # float 9.18340949E-41
.LCPI2_34:
	.word	0x00010000                      # float 9.18354962E-41
	.word	0x00010001                      # float 9.18368975E-41
	.word	0x00040100                      # float 3.67700717E-40
	.word	0x00000000                      # float 0
.LCPI2_35:
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_36:
	.dword	-9223372036359319264            # 0x800000001d881120
	.dword	-9223372036361633280            # 0x800000001d64c200
.LCPI2_37:
	.word	0x4dec4089                      # float 495456544
	.word	0xe101e001                      # float -1.49735698E+20
	.word	0x4deb2610                      # float 493142528
	.word	0xe1000000                      # float -1.47573953E+20
.LCPI2_38:
	.dword	9223372032559808512             # 0x7fffffff00000000
	.dword	0                               # 0x0
.LCPI2_39:
	.word	0x80000000                      # float -0
	.word	0x76f42488                      # float 2.47590112E+33
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_40:
	.word	0x0000001f                      # float 4.34402524E-44
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_41:
	.word	0x003f003f                      # float 5.78572454E-39
	.word	0xffc0ffc0                      # float NaN
	.word	0xffc0003f                      # float NaN
	.word	0x003fffc0                      # float 5.87738207E-39
.LCPI2_42:
	.dword	0x0000000000000000              # double 0
	.dword	0xffffffffffffffff              # double NaN
.LCPI2_43:
	.dword	0xffffff8000000000              # double NaN
	.dword	0xffffff7fffffffff              # double NaN
.LCPI2_44:
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
.LCPI2_45:
	.dword	0x00000000c2bac2c2              # double 1.6141220784926892E-314
	.dword	0x00000000fefefe6a              # double 2.1136741652299962E-314
.LCPI2_46:
	.dword	0x000000004fc04f80              # double 6.6106147838605724E-315
	.dword	0x000000004fc04f81              # double 6.6106147888012288E-315
.LCPI2_47:
	.dword	0x000000002bfd9461              # double 3.646396563972159E-315
	.dword	0x0000000000000000              # double 0
.LCPI2_48:
	.dword	0x0000003a0000003a              # double 1.230757559046416E-312
	.dword	0x0000000000000000              # double 0
.LCPI2_49:
	.dword	0x0000000000000068              # double 5.1382827167489641E-322
	.dword	0x0000000000000000              # double 0
.LCPI2_50:
	.dword	0                               # 0x0
	.dword	9223372034707292160             # 0x7fffffff80000000
.LCPI2_51:
	.dword	0xe22b3595efa4aa0c              # double -7.8343923846087456E+164
	.dword	0x4429146a7b4c88b2              # double 2.3131986281983489E+20
.LCPI2_52:
	.dword	0x0000000400000000              # double 8.4879831638610893E-314
	.dword	0x0000000000000000              # double 0
.LCPI2_53:
	.dword	0x0001000000000000              # double 1.3906711615670009E-309
	.dword	0x0000000000000000              # double 0
.LCPI2_54:
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000001              # double 4.9406564584124654E-324
.LCPI2_55:
	.dword	0x00000000fffffff5              # double 2.1219957855305502E-314
	.dword	0x0000000000000000              # double 0
.LCPI2_56:
	.dword	-9223372034707292160            # 0x8000000080000000
	.dword	0                               # 0x0
.LCPI2_57:
	.dword	0xe7e5dabf00010001              # double -3.1159297880468824E+192
	.dword	0xe7e5560400010001              # double -3.0420070729808383E+192
.LCPI2_58:
	.dword	0x046a09ec009c0000              # double 2.1375407569283352E-287
	.dword	0x0000000000000000              # double 0
.LCPI2_59:
	.dword	0x00000008ffffa209              # double 1.909795023393834E-313
	.dword	0x0000000600007fff              # double 1.2731990934840651E-313
.LCPI2_60:
	.dword	0x0000000017fda829              # double 1.9886123717648454E-315
	.dword	0x0000000000000000              # double 0
.LCPI2_61:
	.dword	0x7ffeffff7bfff828              # double NaN
	.dword	0x7fff0007e215b122              # double NaN
.LCPI2_62:
	.dword	0x0000000000000158              # double 1.6995858216938881E-321
	.dword	0x0000000000000000              # double 0
.LCPI2_63:
	.dword	0x00000000011ff040              # double 9.3231847430813249E-317
	.dword	0xffffffffffffffee              # double NaN
.LCPI2_64:
	.dword	0                               # 0x0
	.dword	4294967297                      # 0x100000001
.LCPI2_65:
	.dword	0x004200a000200000              # double 2.0028380889466294E-307
	.dword	0x004200a000000000              # double 2.0028380881177248E-307
.LCPI2_66:
	.dword	0x0000ffff0000ffff              # double 1.3906499419328771E-309
	.dword	0x0000000000000000              # double 0
.LCPI2_67:
	.dword	0x0000000000fe00ff              # double 8.2244138728660806E-317
	.dword	0x0000000000000000              # double 0
.LCPI2_68:
	.dword	0x0001000101fd01fe              # double 1.3906925463369788E-309
	.dword	0x0001000100010001              # double 1.3906923818487063E-309
.LCPI2_69:
	.dword	4294967297                      # 0x100000001
	.dword	1                               # 0x1
.LCPI2_70:
	.dword	0x00000000fffff800              # double 2.1219947791188296E-314
	.dword	0x00000000ffffffff              # double 2.1219957904712067E-314
.LCPI2_71:
	.dword	0x0000c2f90000bafa              # double 1.0591517593809858E-309
	.dword	0x0000000000000000              # double 0
.LCPI2_72:
	.dword	0x0804080407040804              # double 4.7396173613293011E-270
	.dword	0x0101080408040804              # double 7.76108564961644E-304
.LCPI2_73:
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	-9223372036854775807            # 0x8000000000000001
.LCPI2_74:
	.dword	0x8160cdd2f365ed0d              # double -4.9008006068104045E-302
	.dword	0xfefffffffed08f77              # double -5.4861240566813494E+303
.LCPI2_75:
	.dword	0x061202bffb141c38              # double 1.9844293196099238E-279
	.dword	0xffa6ff91fdd8ef77              # double -8.0749852544810369E+306
.LCPI2_76:
	.dword	0                               # 0x0
	.dword	6442450943                      # 0x17fffffff
.LCPI2_77:
	.dword	0x7f801fe000000000              # double 1.4153771494044842E+306
	.dword	0x3f413f4100000000              # double 5.2633928135037422E-4
.LCPI2_78:
	.dword	0xfe03fe3ffe01fa21              # double -1.0460374634089535E+299
	.dword	0xfe3bfb01fe3bfe01              # double -1.1711463158520346E+300
.LCPI2_79:
	.dword	0xffff00fc0000ff02              # double NaN
	.dword	0x0000000000000001              # double 4.9406564584124654E-324
.LCPI2_80:
	.dword	0x000000000202fe02              # double 1.6674977401934367E-316
	.dword	0x0000000000000000              # double 0
.LCPI2_81:
	.dword	0x7fffffff7ffffffb              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_82:
	.dword	0x00000000ffffffff              # double 2.1219957904712067E-314
	.dword	0xffffffff00000000              # double NaN
.LCPI2_83:
	.dword	0xffffffffffffffff              # double NaN
	.dword	0xffffffff00000080              # double NaN
.LCPI2_84:
	.dword	0x8000000080000000              # double -1.0609978954826362E-314
	.dword	0xfffffffffffff800              # double NaN
.LCPI2_85:
	.dword	0x0000f0080000f800              # double 1.3039239739460129E-309
	.dword	0x0000e0180000e810              # double 1.2173465456544719E-309
.LCPI2_86:
	.dword	0x7ff8000000000000              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_87:
	.dword	0x9c9c9c9c9c9c9c9c              # double -7.4036710823662963E-171
	.dword	0xffffffffffffffff              # double NaN
.LCPI2_88:
	.dword	0x0202f5f80000ff00              # double 5.6625405497274447E-299
	.dword	0x0000000000000000              # double 0
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
	vftintrne.w.s	$vr0, $vr1
	vst	$vr0, $sp, 144
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 22
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr1, $sp, 128
	vftintrne.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 27
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 524287
	pcalau12i	$a1, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_4)
	ori	$s0, $a0, 4095
	vreplgr2vr.d	$vr1, $s0
	vst	$vr1, $sp, 128
	vftintrne.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 32
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	vst	$vr1, $sp, 128
	vftintrne.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 37
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrne.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 42
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vftintrne.w.s	$vr0, $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 52
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 57
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrne.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 62
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrne.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 67
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrne.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 72
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vftintrz.w.s	$vr0, $vr0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 82
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrz.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 87
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrz.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 92
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 97
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 102
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrz.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrz.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 112
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vftintrz.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 117
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 122
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 128
	vftintrz.w.s	$vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 127
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrz.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 132
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr0, $sp, 128
	vftintrz.w.s	$vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_20)
	vst	$vr0, $sp, 128
	vftintrz.w.s	$vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 142
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_22)
	vst	$vr0, $sp, 128
	vftintrp.w.s	$vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 147
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrp.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 152
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 128
	vrepli.h	$vr0, 1
	vftintrp.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 157
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_25)
	vst	$vr0, $sp, 128
	vftintrp.w.s	$vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 162
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	lu12i.w	$a0, 33841
	ori	$a0, $a0, 1190
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vftintrp.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vftintrp.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 172
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_26)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrp.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 177
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_27)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrm.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 182
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vftintrm.w.s	$vr0, $vr0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 187
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 192
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrm.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 202
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vrepli.h	$vr0, 4
	vftintrm.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 207
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vftintrm.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 212
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 128
	vldi	$vr0, -1686
	vftintrm.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 217
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_30)
	vst	$vr0, $sp, 128
	vftintrm.w.s	$vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 222
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_32)
	vst	$vr0, $sp, 128
	vftintrm.w.s	$vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vrepli.d	$vr0, 20
	vftintrm.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 232
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 237
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftint.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 242
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vftint.w.s	$vr0, $vr0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 247
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftint.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 252
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftint.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 262
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	lu12i.w	$a0, 304
	lu32i.d	$a0, 196608
	lu52i.d	$a0, $a0, -3
	vreplgr2vr.d	$vr0, $a0
	vftint.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 267
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_37)
	vst	$vr0, $sp, 128
	vftint.w.s	$vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 272
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_39)
	vst	$vr0, $sp, 128
	vftint.w.s	$vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 277
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftint.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 282
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_41)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftint.w.s	$vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 287
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_43)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vftintrne.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 293
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vftintrne.w.d	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 299
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_44)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $sp, 128
	lu12i.w	$a0, 522240
	vreplgr2vr.w	$vr0, $a0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vftintrne.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 305
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
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
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 317
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_45)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrne.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 323
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_47)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vftintrne.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 329
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 335
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vrepli.d	$vr0, 31
	vftintrne.w.d	$vr0, $vr0, $vr1
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_48)
	ori	$a0, $zero, 0
	lu32i.d	$a0, 16
	lu52i.d	$a0, $a0, 892
	vreplgr2vr.d	$vr1, $a0
	vftintrne.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 347
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_49)
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vrepli.b	$vr1, 99
	vftintrne.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 353
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_51)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vftintrne.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 359
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_53)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vftintrne.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 365
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_55)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vftintrne.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 371
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_57)
	vst	$vr0, $sp, 128
	vreplgr2vr.w	$vr0, $s0
	vftintrne.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 377
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_59)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vftintrne.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 383
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_60)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrz.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 389
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vftintrz.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 395
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vftintrz.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 401
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_61)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrz.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 407
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_62)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrz.w.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 413
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vftintrz.w.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 419
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 425
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_63)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrz.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 431
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	lu12i.w	$a0, 18430
	ori	$a0, $a0, 752
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vftintrz.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 437
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vftintrp.w.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 443
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 449
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_64)
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_65)
	vst	$vr1, $sp, 128
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vftintrp.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 455
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_66)
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_67)
	vrepli.d	$vr2, 1
	vst	$vr2, $sp, 128
	vftintrp.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 461
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_68)
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vftintrp.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 467
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_69)
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_70)
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_71)
	vst	$vr0, $sp, 128
	vftintrp.w.d	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 473
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_72)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftintrp.w.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 479
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 485
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	lu12i.w	$a0, -608
	ori	$a0, $a0, 243
	lu32i.d	$a0, 3
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vftintrp.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 491
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_73)
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_74)
	pcalau12i	$a0, %pc_hi20(.LCPI2_75)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_75)
	vst	$vr0, $sp, 128
	vftintrp.w.d	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 497
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_76)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_76)
	pcalau12i	$a0, %pc_hi20(.LCPI2_77)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_77)
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vftintrp.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 503
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 509
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 515
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_78)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_78)
	vldi	$vr1, -3200
	vst	$vr1, $sp, 128
	vftintrp.w.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 521
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vftintrm.w.d	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 527
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vftintrm.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 533
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vldi	$vr0, -2808
	vftintrm.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 539
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_79)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_79)
	pcalau12i	$a0, %pc_hi20(.LCPI2_80)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_80)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vftintrm.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 545
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_81)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_81)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vldi	$vr1, -1787
	vftintrm.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 551
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 557
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 563
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vftint.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 569
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	lu12i.w	$a0, 337191
	ori	$a0, $a0, 3453
	vreplgr2vr.w	$vr0, $a0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vftint.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 575
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vftint.w.d	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 96                   # 16-byte Folded Spill
	vst	$vr1, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 581
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_82)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_82)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftint.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 587
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_83)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_83)
	pcalau12i	$a0, %pc_hi20(.LCPI2_84)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_84)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 128
	vftint.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 593
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_85)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_85)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftint.w.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 599
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_86)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_86)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftint.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 605
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vldi	$vr0, -1729
	vftint.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 611
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 617
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 623
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_87)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_87)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vftint.w.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 629
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_88)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_88)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	vldi	$vr1, -1777
	vftint.w.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 144
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 16
	ori	$a4, $zero, 635
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vftint-3.c"
	.size	.L.str.5, 132

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
