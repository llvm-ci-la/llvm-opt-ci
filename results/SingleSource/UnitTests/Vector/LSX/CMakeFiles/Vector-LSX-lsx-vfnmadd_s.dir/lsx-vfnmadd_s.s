	.file	"lsx-vfnmadd_s.c"
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
	.word	1047726401                      # 0x3e730941
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_1:
	.word	0x3c90260e                      # float 0.0175962709
	.word	0x6a1a3fbb                      # float 4.66188837E+25
	.word	0x5d04acbb                      # float 5.97513857E+17
	.word	0x195f307a                      # float 1.15386196E-23
.LCPI2_2:
	.word	0xbe6ed565                      # float -0.233235911
	.word	0xfffffffe                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_3:
	.word	2130837249                      # 0x7f01ff01
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_4:
	.word	0xff01ff01                      # float -1.72794467E+38
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_5:
	.word	4294967295                      # 0xffffffff
	.word	2151678079                      # 0x8040007f
	.word	4294967295                      # 0xffffffff
	.word	2150658088                      # 0x80307028
.LCPI2_6:
	.word	0xff800000                      # float -Inf
	.word	0x0040007f                      # float 5.87764972E-39
	.word	0x003f80b0                      # float 5.83180063E-39
	.word	0x00307028                      # float 4.4483379E-39
.LCPI2_7:
	.word	4294967295                      # 0xffffffff
	.word	2147483649                      # 0x80000001
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
.LCPI2_8:
	.word	0x00000000                      # float 0
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_9:
	.word	0xffffffff                      # float NaN
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x0000004d                      # float 1.07899982E-43
	.word	0x00000049                      # float 1.02294788E-43
.LCPI2_10:
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
	.word	4294965248                      # 0xfffff800
	.word	4294967295                      # 0xffffffff
.LCPI2_11:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xfffff800                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_12:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000800                      # float 2.86985925E-42
	.word	0x00000000                      # float 0
.LCPI2_13:
	.word	0x00ff0000                      # float 2.34180515E-38
	.word	0x00ff0000                      # float 2.34180515E-38
	.word	0xffff0000                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_14:
	.word	2147614720                      # 0x80020000
	.word	2147745792                      # 0x80040000
	.word	2147614720                      # 0x80020000
	.word	2147876864                      # 0x80060000
.LCPI2_15:
	.word	0x00010000                      # float 9.18354962E-41
	.word	0x00020000                      # float 1.83670992E-40
	.word	0x00010000                      # float 9.18354962E-41
	.word	0x00030000                      # float 2.75506488E-40
.LCPI2_16:
	.word	2214594560                      # 0x84000800
	.word	2147549185                      # 0x80010001
	.word	2147549185                      # 0x80010001
	.word	2147549185                      # 0x80010001
.LCPI2_17:
	.word	0x04000800                      # float 1.50500011E-36
	.word	0x00010001                      # float 9.18368975E-41
	.word	0x00010001                      # float 9.18368975E-41
	.word	0x00010001                      # float 9.18368975E-41
.LCPI2_18:
	.word	0x00000408                      # float 1.44614002E-42
	.word	0x00000000                      # float 0
	.word	0x97957687                      # float -9.65881982E-25
	.word	0x00000008                      # float 1.12103877E-44
.LCPI2_19:
	.word	2147483648                      # 0x80000000
	.word	2149588464                      # 0x80201df0
	.word	2148531247                      # 0x800ffc2f
	.word	4290969575                      # 0xffc2ffe7
.LCPI2_20:
	.word	0x00000000                      # float 0
	.word	0x00201df0                      # float 2.94947543E-39
	.word	0x000ffc2f                      # float 1.46799887E-39
	.word	0x00000000                      # float 0
.LCPI2_21:
	.word	0x00010001                      # float 9.18368975E-41
	.word	0x0000ffc1                      # float 9.17472144E-41
	.word	0x00000007                      # float 9.80908925E-45
	.word	0xffc2ffe7                      # float NaN
.LCPI2_22:
	.word	0x00000005                      # float 7.00649232E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_23:
	.word	0x80800008                      # float -1.17549547E-38
	.word	0x80808080                      # float -1.18010406E-38
	.word	0x80808080                      # float -1.18010406E-38
	.word	0x80808080                      # float -1.18010406E-38
.LCPI2_24:
	.word	2733984286                      # 0xa2f54a1e
	.word	2733984286                      # 0xa2f54a1e
	.word	2147483656                      # 0x80000008
	.word	2147483648                      # 0x80000000
.LCPI2_25:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000008                      # float 1.12103877E-44
	.word	0x00000000                      # float 0
.LCPI2_26:
	.word	0x31313131                      # float 2.5784852E-9
	.word	0x31313131                      # float 2.5784852E-9
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_27:
	.word	3907193325                      # 0xe8e309ed
	.word	655473361                       # 0x2711bad1
	.word	3527569860                      # 0xd24271c4
	.word	4294967295                      # 0xffffffff
.LCPI2_28:
	.word	0x5f94ab13                      # float 2.14253541E+19
	.word	0x0fa96b88                      # float 1.67061062E-29
	.word	0xd2436487                      # float -2.09801298E+11
	.word	0xffffffff                      # float NaN
.LCPI2_29:
	.word	0x79ffa22f                      # float 1.65915647E+35
	.word	0x8dc5a4d1                      # float -1.21807405E-30
	.word	0xf8760005                      # float -1.99578972E+34
	.word	0x6d564875                      # float 4.1448367E+27
.LCPI2_30:
	.word	0x2e635d65                      # float 5.16967753E-11
	.word	0x58bcc201                      # float 1.66033141E+15
	.word	0x157ca12e                      # float 5.10181431E-26
	.word	0xa486c90f                      # float -5.8453843E-17
.LCPI2_31:
	.word	20973632                        # 0x1400840
	.word	8387840                         # 0x7ffd00
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
.LCPI2_32:
	.word	0x01400840                      # float 3.52707496E-38
	.word	0x007ffd00                      # float 1.17538673E-38
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_33:
	.word	2147483648                      # 0x80000000
	.word	2139095040                      # 0x7f800000
	.word	2147483648                      # 0x80000000
	.word	2147483648                      # 0x80000000
.LCPI2_34:
	.word	0x00000000                      # float 0
	.word	0x7f800000                      # float +Inf
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr0, $sp, 48
	vfnmadd.s	$vr0, $vr2, $vr1, $vr2
	vst	$vr0, $sp, 64
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 24
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vfnmadd.s	$vr0, $vr1, $vr0, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 31
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 48
	vldi	$vr0, -1777
	vld	$vr2, $sp, 32                   # 16-byte Folded Reload
	vfnmadd.s	$vr0, $vr2, $vr0, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 38
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr0, $sp, 48
	vfnmadd.s	$vr0, $vr2, $vr1, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 45
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr0, $sp, 48
	vfnmadd.s	$vr0, $vr3, $vr2, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 52
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vldi	$vr0, -3200
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vfnmadd.s	$vr0, $vr0, $vr0, $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 48
	vldi	$vr0, -1424
	vfnmadd.s	$vr0, $vr1, $vr0, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 66
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr0, $sp, 48
	vfnmadd.s	$vr0, $vr2, $vr2, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 73
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_21)
	vst	$vr0, $sp, 48
	vfnmadd.s	$vr0, $vr2, $vr2, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 80
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vldi	$vr0, -3200
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 87
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_22)
	vldi	$vr1, -3200
	vst	$vr1, $sp, 48
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vfnmadd.s	$vr0, $vr0, $vr1, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 94
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	vldi	$vr1, -3200
	vst	$vr1, $sp, 48
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vfnmadd.s	$vr0, $vr0, $vr1, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_26)
	vst	$vr0, $sp, 48
	vfnmadd.s	$vr0, $vr2, $vr2, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 108
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vldi	$vr0, -3200
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 115
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_30)
	vst	$vr0, $sp, 48
	vfnmsub.s	$vr0, $vr3, $vr2, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 122
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vldi	$vr0, -3200
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vfnmsub.s	$vr0, $vr0, $vr0, $vr0
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 129
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_32)
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vfnmsub.s	$vr0, $vr0, $vr0, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 136
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_34)
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vfnmsub.s	$vr0, $vr0, $vr0, $vr1
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -207306
	ori	$a0, $a0, 867
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 48
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vfnmsub.s	$vr0, $vr1, $vr1, $vr0
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 150
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vfnmadd_s.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
