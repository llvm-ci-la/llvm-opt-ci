	.file	"lsx-vfcmp_ceq.c"
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
	.word	0x01000000                      # float 2.3509887E-38
	.word	0x00000000                      # float 0
	.word	0x00007f00                      # float 4.55590157E-41
	.word	0x00000000                      # float 0
.LCPI2_1:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x0004300c                      # float 3.84577956E-40
	.word	0x0000800c                      # float 4.59345637E-41
.LCPI2_2:
	.word	0x9b7fb213                      # float -2.11506445E-22
	.word	0x4303c67e                      # float 131.77536
	.word	0xbfdb1927                      # float -1.71170509
	.word	0x08fdc221                      # float 1.52725231E-33
.LCPI2_3:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
.LCPI2_4:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_5:
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_6:
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_7:
	.word	0x00000000                      # float 0
	.word	0x00000800                      # float 2.86985925E-42
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_8:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_9:
	.word	0x2bfd9461                      # float 1.80179146E-12
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_10:
	.word	0x2bfd9461                      # float 1.80179146E-12
	.word	0x00000000                      # float 0
	.word	0x00007fff                      # float 4.59163468E-41
	.word	0x00007fff                      # float 4.59163468E-41
.LCPI2_11:
	.word	0x01000000                      # float 2.3509887E-38
	.word	0x01000000                      # float 2.3509887E-38
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_12:
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_13:
	.word	0xff800000                      # float -Inf
	.word	0x007fffff                      # float 1.17549421E-38
	.word	0x007fffff                      # float 1.17549421E-38
	.word	0x00000000                      # float 0
.LCPI2_14:
	.word	0x00011197                      # float 9.81455431E-41
	.word	0x0000c900                      # float 7.21052137E-41
	.word	0x00004657                      # float 2.52331814E-41
	.word	0x0000cecd                      # float 7.4186142E-41
.LCPI2_15:
	.dword	0x0100000100010001              # double 7.2911289730183067E-304
	.dword	0x0101010101010101              # double 7.7486041854893479E-304
.LCPI2_16:
	.dword	0x460f3b393ef4be3a              # double 3.0930023244935083E+29
	.dword	0xc2409edab019323f              # double -142769217586.39255
.LCPI2_17:
	.dword	0x000000000000ff00              # double 3.2252605360516574E-319
	.dword	0x0000000000000000              # double 0
.LCPI2_18:
	.dword	0x14eb6a002a406a00              # double 6.6709309189546789E-208
	.dword	0x0000000014eb54ab              # double 1.7340071529101071E-315
.LCPI2_19:
	.word	0x3f6fb04d                      # float 0.936283886
	.word	0xfffefffe                      # float NaN
	.word	0x3ea5016b                      # float 0.322276443
	.word	0xffffffff                      # float NaN
.LCPI2_20:
	.word	0xf235ed87                      # float -3.60345214E+30
	.word	0x0983e2db                      # float 3.17504367E-33
	.word	0xd6050189                      # float -3.656041E+13
	.word	0xf51df8db                      # float -2.00253417E+32
.LCPI2_21:
	.word	0xffabff99                      # float NaN
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0xffa8ff9f                      # float NaN
	.word	0x00000000                      # float 0
.LCPI2_22:
	.word	0x9703f605                      # float -4.26389032E-25
	.word	0xab7b3134                      # float -8.92413964E-13
	.word	0x703fa5f0                      # float 2.37248972E+29
	.word	0x3bcc5098                      # float 0.00623519346
.LCPI2_23:
	.word	0x0001fe01                      # float 1.82954929E-40
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_24:
	.word	0xfe01fd02                      # float -4.31960258E+37
	.word	0x000000ff                      # float 3.57331108E-43
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_25:
	.word	0x00800000                      # float 1.17549435E-38
	.word	0x00800000                      # float 1.17549435E-38
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_26:
	.dword	0xffffffffffffffff              # double NaN
	.dword	0x00000000ffffffff              # double 2.1219957904712067E-314
.LCPI2_27:
	.dword	0x0100010000000000              # double 7.2929020786432033E-304
	.dword	0x0100000001000100              # double 7.2911220467183581E-304
.LCPI2_28:
	.dword	0x0000c000ffffc000              # double 1.0430245910522126E-309
	.dword	0x0000006f00001f0a              # double 2.3554153672299085E-312
.LCPI2_29:
	.dword	0xffff000000000000              # double NaN
	.dword	0xffff0000ffff0000              # double NaN
.LCPI2_30:
	.dword	0xffffffffe000ffdf              # double NaN
	.dword	0xffffffffffffffff              # double NaN
.LCPI2_31:
	.dword	0x5779108fdedda7e5              # double 2.4111310526218985E+113
	.dword	0xd78cfd70b5f65d77              # double -5.5774619247784117E+113
.LCPI2_32:
	.dword	0x00000000ffff0000              # double 2.1219634118791065E-314
	.dword	0x00000000ffffffff              # double 2.1219957904712067E-314
.LCPI2_33:
	.dword	0x000000ff0000ffff              # double 5.4110895907473654E-312
	.dword	0x0000000000000000              # double 0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vfcmp.ceq.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vfcmp.ceq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_2)
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vst	$vr2, $sp, 112
	vfcmp.ceq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_5)
	vst	$vr0, $sp, 112
	vfcmp.ceq.s	$vr0, $vr1, $vr2
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr1, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vfcmp.ceq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_8)
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr2, $sp, 112
	vfcmp.ceq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vfcmp.ceq.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	lu12i.w	$a0, -207306
	ori	$a0, $a0, 867
	vreplgr2vr.w	$vr0, $a0
	vfcmp.ceq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vfcmp.ceq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vfcmp.ceq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_16)
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vst	$vr2, $sp, 112
	vfcmp.ceq.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	ori	$s0, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 255
	vreplgr2vr.d	$vr0, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -256
	lu52i.d	$a0, $a0, 15
	vreplgr2vr.d	$vr1, $a0
	vfcmp.ceq.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vfcmp.ceq.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_17)
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vrepli.w	$vr0, -65
	vfcmp.ceq.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vrepli.h	$vr0, -3
	vfcmp.ceq.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vfcmp.ceq.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vrepli.d	$vr0, -12
	vfcmp.ceq.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_20)
	lu32i.d	$s0, -1
	vreplgr2vr.d	$vr2, $s0
	vst	$vr2, $sp, 112
	vfcmp.cueq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vfcmp.cueq.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vfcmp.cueq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vrepli.b	$vr0, 64
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vfcmp.cueq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_22)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vfcmp.cueq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_24)
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vfcmp.cueq.s	$vr0, $vr2, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	ori	$a0, $zero, 256
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vfcmp.cueq.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_25)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vfcmp.cueq.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vfcmp.cueq.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	vreplgr2vr.w	$vr0, $a0
	vfcmp.cueq.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vfcmp.cueq.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_26)
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vfcmp.cueq.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_27)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vfcmp.cueq.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vst	$vr2, $sp, 112
	vfcmp.cueq.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	lu12i.w	$a0, 991
	ori	$a0, $a0, 4034
	vreplgr2vr.d	$vr0, $a0
	vfcmp.cueq.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vfcmp.cueq.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vrepli.w	$vr0, 257
	vfcmp.cueq.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vrepli.d	$vr0, 11
	vfcmp.cueq.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vfcmp.cueq.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $sp, 112
	vfcmp.cueq.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_33)
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vst	$vr2, $sp, 112
	vfcmp.cueq.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 128
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vfcmp_ceq.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
