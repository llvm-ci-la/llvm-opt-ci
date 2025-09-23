	.file	"lasx-xvfcmp_cle_s.c"
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
	.word	0x00000000                      # float 0
	.word	0x0018796d                      # float 2.24761127E-39
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_1:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_2:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffc00000                      # float NaN
	.word	0x41dfffdf                      # float 27.9999371
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x41dfffc0                      # float 27.9998779
.LCPI2_3:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x02fddf20                      # float 3.73030763E-37
	.word	0x00fffb04                      # float 2.3508099E-38
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x02fddf20                      # float 3.73030763E-37
	.word	0x00fffb04                      # float 2.3508099E-38
.LCPI2_4:
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00800022                      # float 1.17549912E-38
	.word	0x0000fffe                      # float 9.18326935E-41
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00800022                      # float 1.17549912E-38
	.word	0x0000fffe                      # float 9.18326935E-41
.LCPI2_5:
	.word	0x003a0000                      # float 5.32645878E-39
	.word	0x019d00a2                      # float 5.76735996E-38
	.word	0x01c40110                      # float 7.20005536E-38
	.word	0x01fe007a                      # float 9.33055479E-38
	.word	0x0039fff9                      # float 5.32644897E-39
	.word	0x019d00a2                      # float 5.76735996E-38
	.word	0x01c40110                      # float 7.20005536E-38
	.word	0x01fe007a                      # float 9.33055479E-38
.LCPI2_6:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_7:
	.word	0xffffffff                      # float NaN
	.word	0x7fff7ffe                      # float NaN
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0x7fff7ffe                      # float NaN
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
.LCPI2_8:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x04000000                      # float 1.50463277E-36
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x04000000                      # float 1.50463277E-36
	.word	0x00000000                      # float 0
.LCPI2_9:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_10:
	.word	0x00000040                      # float 8.96831017E-44
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000040                      # float 8.96831017E-44
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_11:
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_12:
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_13:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_14:
	.dword	0x000000007fffffff              # double 1.0609978949885705E-314
	.dword	0x0000000000000000              # double 0
	.dword	0x7fffffff7fffffff              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_15:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_16:
	.dword	0x161616167fffffff              # double 2.8177698138249693E-202
	.dword	0x7ffe16167f161616              # double NaN
	.dword	0x161616167fffffff              # double 2.8177698138249693E-202
	.dword	0x1616161616161616              # double 2.8177690084182086E-202
.LCPI2_17:
	.dword	0x0000000000003373              # double 6.5073386213750582E-320
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000007773              # double 1.5108033384179478E-319
	.dword	0x0000000000000000              # double 0
.LCPI2_18:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_19:
	.dword	0xbabababababababa              # double -8.6367387487154351E-26
	.dword	0x0000000000000000              # double 0
	.dword	0xbabababababababa              # double -8.6367387487154351E-26
	.dword	0x0000000000000000              # double 0
.LCPI2_20:
	.dword	0x000000007dfdff4b              # double 1.0443549557675064E-314
	.dword	0xffffcc8000000000              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
.LCPI2_21:
	.dword	0x0101010101010101              # double 7.7486041854893479E-304
	.dword	0x01010101d58f43c9              # double 7.748609958830974E-304
	.dword	0x0101010101010101              # double 7.7486041854893479E-304
	.dword	0x0101010183f9999b              # double 7.7486077428663379E-304
.LCPI2_22:
	.dword	0x0000000002a54290              # double 2.1929060212886894E-316
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000002a54290              # double 2.1929060212886894E-316
	.dword	0x0000000000000000              # double 0
.LCPI2_23:
	.dword	0x1010100f10100fd4              # double 2.5865608135113977E-231
	.dword	0x0000ffff00000001              # double 1.3906499416090962E-309
	.dword	0x1010100f10100fd4              # double 2.5865608135113977E-231
	.dword	0x0000ffff00000001              # double 1.3906499416090962E-309
.LCPI2_24:
	.dword	0x0100000001000100              # double 7.2911220467183581E-304
	.dword	0x00000000ffffffff              # double 2.1219957904712067E-314
	.dword	0x0100000001000100              # double 7.2911220467183581E-304
	.dword	0x00000000ffffffff              # double 2.1219957904712067E-314
.LCPI2_25:
	.dword	0x0000000002070145              # double 1.6804906291412052E-316
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000002070145              # double 1.6804906291412052E-316
	.dword	0x0000000000000000              # double 0
.LCPI2_26:
	.dword	0xffffffff0007a861              # double NaN
	.dword	0xffffffffffffffff              # double NaN
	.dword	0xffffffff0007a861              # double NaN
	.dword	0xffffffffffffffff              # double NaN
.LCPI2_27:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	4294967295                      # 0xffffffff
	.dword	4294967295                      # 0xffffffff
	.dword	4294967295                      # 0xffffffff
.LCPI2_28:
	.word	0x004658c7                      # float 6.46033204E-39
	.word	0xffce110f                      # float NaN
	.word	0xfff00ecb                      # float NaN
	.word	0x00a2afb7                      # float 1.4940385E-38
	.word	0xff937648                      # float NaN
	.word	0xff4f6838                      # float -2.7569133E+38
	.word	0xffff00ff                      # float NaN
	.word	0x01a72334                      # float 6.13966254E-38
.LCPI2_29:
	.word	0x1da8e5bb                      # float 4.47067655E-21
	.word	0xe5fb66c8                      # float -1.48401246E+23
	.word	0x4facb558                      # float 5.79513139E+9
	.word	0x18b988e6                      # float 4.79596113E-24
	.word	0x2fc05f69                      # float 3.49923895E-10
	.word	0xe37affb4                      # float -4.63011137E+21
	.word	0x2fc4c101                      # float 3.57893298E-10
	.word	0x1b976395                      # float 2.50452079E-22
.LCPI2_30:
	.word	0x00001000                      # float 5.73971851E-42
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00001000                      # float 5.73971851E-42
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_31:
	.word	0x0000ff31                      # float 9.15454274E-41
	.word	0x0000ffa8                      # float 9.17121819E-41
	.word	0x0000ff78                      # float 9.16449196E-41
	.word	0x0000fff9                      # float 9.18256871E-41
	.word	0x0000ff3c                      # float 9.15608416E-41
	.word	0x0000ff05                      # float 9.14837702E-41
	.word	0x0000ff4c                      # float 9.15832624E-41
	.word	0x0000ffee                      # float 9.18102727E-41
.LCPI2_32:
	.word	0x000000ff                      # float 3.57331108E-43
	.word	0x000000ff                      # float 3.57331108E-43
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ff00                      # float 9.14767637E-41
	.word	0x000000ff                      # float 3.57331108E-43
	.word	0x000000ff                      # float 3.57331108E-43
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ff00                      # float 9.14767637E-41
.LCPI2_33:
	.word	0xffff0000                      # float NaN
	.word	0xffff0000                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffff0000                      # float NaN
	.word	0xffff0000                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_34:
	.word	0x0000ff01                      # float 9.1478165E-41
	.word	0x00000000                      # float 0
	.word	0x00ff0000                      # float 2.34180515E-38
	.word	0x0000ff01                      # float 9.1478165E-41
	.word	0x0000ff01                      # float 9.1478165E-41
	.word	0x00000000                      # float 0
	.word	0x00ff0000                      # float 2.34180515E-38
	.word	0x0000ff01                      # float 9.1478165E-41
.LCPI2_35:
	.word	0x02000000                      # float 9.4039548E-38
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x02000000                      # float 9.4039548E-38
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_36:
	.word	0x00010000                      # float 9.18354962E-41
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00010000                      # float 9.18354962E-41
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_37:
	.word	0x01010000                      # float 2.3693558E-38
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x01010000                      # float 2.3693558E-38
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_38:
	.word	0x00000001                      # float 1.40129846E-45
	.word	0xffff0101                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000001                      # float 1.40129846E-45
	.word	0xffff0101                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_39:
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_40:
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0001000e                      # float 9.18551143E-41
	.word	0x0000ffff                      # float 9.18340949E-41
.LCPI2_41:
	.dword	0x8080808280808082              # double -2.937451956732223E-306
	.dword	0x8080808280808080              # double -2.9374519567322217E-306
	.dword	0x8080808280808082              # double -2.937451956732223E-306
	.dword	0x8080808280808082              # double -2.937451956732223E-306
.LCPI2_42:
	.dword	0xfffeffff10000000              # double NaN
	.dword	0xffffffffffffffff              # double NaN
	.dword	0xfffeffff10000000              # double NaN
	.dword	0xffffffffffffffff              # double NaN
.LCPI2_43:
	.dword	0x0f00204000000000              # double 1.9811594790286843E-236
	.dword	0x0c6a240000000000              # double 7.3021300184988376E-249
	.dword	0x0f00204000000000              # double 1.9811594790286843E-236
	.dword	0x0c6a240000000000              # double 7.3021300184988376E-249
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
	addi.d	$fp, $sp, 320
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvrepli.b	$xr1, 0
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr1, $sp, 224
	xvrepli.b	$xr1, -1
	xvst	$xr1, $sp, 192                  # 32-byte Folded Spill
	xvfcmp.cle.s	$xr0, $xr0, $xr1
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr2, $sp, 32                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr2, $sp, 224
	xvfcmp.cle.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvrepli.d	$xr0, -18
	xvfcmp.cle.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cle.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvfcmp.cle.s	$xr0, $xr1, $xr0
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
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvfcmp.cle.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr1, $sp, 128                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr1, $sp, 224
	xvrepli.d	$xr1, 2
	xvfcmp.cle.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvfcmp.cle.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cle.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	lu12i.w	$a0, 16
	ori	$a0, $a0, 1
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvfcmp.cle.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cle.s	$xr0, $xr0, $xr1
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
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cle.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	lu12i.w	$a0, 398868
	ori	$a0, $a0, 3680
	lu32i.d	$a0, 90465
	lu52i.d	$a0, $a0, -490
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cle.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 224
	xvfcmp.cle.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_20)
	xvst	$xr0, $sp, 224
	xvfcmp.cle.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_22)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvfcmp.cle.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvrepli.h	$xr1, 1
	xvfcmp.cle.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cle.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvfcmp.cle.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cle.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvrepli.d	$xr1, 3
	xvfcmp.cle.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 224
	xvfcmp.cule.s	$xr0, $xr2, $xr1
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
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cule.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cule.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_32)
	xvld	$xr2, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvfcmp.cule.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cule.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_34)
	lu32i.d	$a0, -1
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 224
	xvfcmp.cule.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_36)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvfcmp.cule.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvfcmp.cule.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_39)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvfcmp.cule.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvrepli.w	$xr1, -5
	xvfcmp.cule.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cule.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvfcmp.cule.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.cule.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -320
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvfcmp_cle_s.c"
	.size	.L.str.5, 138

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
