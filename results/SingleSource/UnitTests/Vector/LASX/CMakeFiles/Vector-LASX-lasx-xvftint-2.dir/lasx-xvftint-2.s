	.file	"lasx-xvftint-2.c"
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
	.dword	8589934592                      # 0x200000000
	.dword	0                               # 0x0
	.dword	8589934592                      # 0x200000000
	.dword	0                               # 0x0
.LCPI2_1:
	.word	0x00000000                      # float 0
	.word	0x40000000                      # float 2
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x40000000                      # float 2
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_2:
	.word	0xffffff46                      # float NaN
	.word	0xffffff7e                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffff46                      # float NaN
	.word	0xffffff7e                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_3:
	.word	0x002e2100                      # float 4.23627099E-39
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_4:
	.word	0x5d54aaab                      # float 9.57765543E+17
	.word	0x5d5ca2a3                      # float 9.93653053E+17
	.word	0x55555555                      # float 1.46601547E+13
	.word	0x55555555                      # float 1.46601547E+13
	.word	0x5d555d55                      # float 9.60908635E+17
	.word	0x5d5d5d5d                      # float 9.96937981E+17
	.word	0x55555555                      # float 1.46601547E+13
	.word	0x55555555                      # float 1.46601547E+13
.LCPI2_5:
	.word	0x00000011                      # float 2.38220739E-44
	.word	0x00000000                      # float 0
	.word	0xffeeffaf                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000011                      # float 2.38220739E-44
	.word	0x00000000                      # float 0
	.word	0xffeeffaf                      # float NaN
	.word	0x00000000                      # float 0
.LCPI2_6:
	.word	0x001d001d                      # float 2.66327003E-39
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_7:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	4294967297                      # 0x100000001
	.dword	0                               # 0x0
.LCPI2_8:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00010102                      # float 9.21970311E-41
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_9:
	.dword	0                               # 0x0
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
	.dword	4294967296                      # 0x100000000
.LCPI2_10:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x10000000                      # float 2.5243549E-29
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x10000000                      # float 2.5243549E-29
.LCPI2_11:
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_12:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xfffefffd                      # float NaN
	.word	0xfffefffe                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xfffefffe                      # float NaN
.LCPI2_13:
	.dword	25651692175359                  # 0x17547fffffff
	.dword	0                               # 0x0
	.dword	25651692175359                  # 0x17547fffffff
	.dword	0                               # 0x0
.LCPI2_14:
	.word	0x6a95a985                      # float 9.04652402E+25
	.word	0x45baa7ef                      # float 5972.99169
	.word	0x0707b7d0                      # float 1.02102888E-34
	.word	0x0707feb6                      # float 1.0231124E-34
	.word	0x6a95a985                      # float 9.04652402E+25
	.word	0x45baa7ef                      # float 5972.99169
	.word	0x0707b7d0                      # float 1.02102888E-34
	.word	0x0707feb6                      # float 1.0231124E-34
.LCPI2_15:
	.word	0xfff10000                      # float NaN
	.word	0xfff10000                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xfff10000                      # float NaN
	.word	0xfff10000                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_16:
	.dword	0                               # 0x0
	.dword	2147483648                      # 0x80000000
	.dword	0                               # 0x0
	.dword	2147483648                      # 0x80000000
.LCPI2_17:
	.word	0x1d20ffff                      # float 2.13081706E-21
	.word	0x0000e282                      # float 8.12556927E-41
	.word	0xfdfcfda8                      # float -4.20353142E+37
	.word	0x00000000                      # float 0
	.word	0x1d20ffff                      # float 2.13081706E-21
	.word	0x0000e282                      # float 8.12556927E-41
	.word	0xfdfcfda8                      # float -4.20353142E+37
	.word	0x00000000                      # float 0
.LCPI2_18:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	-109276852912128                # 0xffff9c9d00000000
	.dword	1                               # 0x1
.LCPI2_19:
	.word	0x00000000                      # float 0
	.word	0x8787878a                      # float -2.03922051E-34
	.word	0x3f3f3f3c                      # float 0.74705863
	.word	0x00000000                      # float 0
	.word	0x8787878a                      # float -2.03922051E-34
	.word	0xc6c6c6c6                      # float -25443.3867
	.word	0x3f3f3f3c                      # float 0.74705863
	.word	0x00000000                      # float 0
.LCPI2_20:
	.word	0x00000000                      # float 0
	.word	0x7ff80000                      # float NaN
	.word	0x3e3b31d4                      # float 0.182807267
	.word	0x1f0fdf7f                      # float 3.04662995E-20
	.word	0x00000000                      # float 0
	.word	0x7ff80000                      # float NaN
	.word	0x3e3b31d4                      # float 0.182807267
	.word	0x1f0fdf7f                      # float 3.04662995E-20
.LCPI2_21:
	.dword	0                               # 0x0
	.dword	2147483647                      # 0x7fffffff
	.dword	0                               # 0x0
	.dword	2147483647                      # 0x7fffffff
.LCPI2_22:
	.word	0x00000004                      # float 5.60519386E-45
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x55555555                      # float 1.46601547E+13
	.word	0x00000000                      # float 0
	.word	0x00000004                      # float 5.60519386E-45
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x55555555                      # float 1.46601547E+13
	.word	0x00000000                      # float 0
.LCPI2_23:
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000505              # double 6.3487435490600181E-321
	.dword	0x0000000000000000              # double 0
.LCPI2_24:
	.dword	2147483647                      # 0x7fffffff
	.dword	0                               # 0x0
	.dword	2147483647                      # 0x7fffffff
	.dword	0                               # 0x0
.LCPI2_25:
	.dword	0x4df5b1a3ed5e02c1              # double 3.655416196129003E+67
	.dword	0x108659e46485f7e1              # double 4.6069448298543227E-229
	.dword	0x4df5b1a3ed5e02c1              # double 3.655416196129003E+67
	.dword	0x108659e46485f7e1              # double 4.6069448298543227E-229
.LCPI2_26:
	.dword	0x0000000800000010              # double 1.6975966335627229E-313
	.dword	0x0000000500000000              # double 1.0609978954826362E-313
	.dword	0x0000001100000000              # double 3.6073928446409629E-313
	.dword	0x000000030000000c              # double 6.3659873788246047E-314
.LCPI2_27:
	.dword	0x00000000714910f9              # double 9.390280246111031E-315
	.dword	0xffffffffd1108199              # double NaN
	.dword	0x0000000004040104              # double 3.3285829035563706E-316
	.dword	0x0000000000000004              # double 1.9762625833649862E-323
.LCPI2_28:
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
.LCPI2_29:
	.dword	0x0000001000000010              # double 3.3951932663349407E-313
	.dword	0x0000000000000000              # double 0
	.dword	0x0000001000000010              # double 3.3951932663349407E-313
	.dword	0x0000000000000000              # double 0
.LCPI2_30:
	.dword	0x7c00000880008000              # double 1.9490786018488337E+289
	.dword	0x0000000000000000              # double 0
	.dword	0x7c00000880008000              # double 1.9490786018488337E+289
	.dword	0x0000000000000000              # double 0
.LCPI2_31:
	.dword	0x0000000180007fe8              # double 3.1830098641334159E-314
	.dword	0x000000017bfffff0              # double 3.1498374943090258E-314
	.dword	0x0000000180007fe8              # double 3.1830098641334159E-314
	.dword	0x000000017bfffff0              # double 3.1498374943090258E-314
.LCPI2_32:
	.dword	0x0000000000ff0100              # double 8.2567934530975784E-317
	.dword	0x0000000001fe01fe              # double 1.6513585918063865E-316
	.dword	0x0000000000ff0100              # double 8.2567934530975784E-317
	.dword	0x0000000001fe01fe              # double 1.6513585918063865E-316
.LCPI2_33:
	.dword	0x00000000000007c8              # double 9.8417876651576312E-321
	.dword	0x0000000000000000              # double 0
	.dword	0x00000000000007c8              # double 9.8417876651576312E-321
	.dword	0x0000000000000000              # double 0
.LCPI2_34:
	.dword	0x000020a4ffffbe4f              # double 1.7733518816788079E-310
	.dword	0x000000010000685e              # double 2.1220089914111979E-314
	.dword	0x000020a4ffffbe4f              # double 1.7733518816788079E-310
	.dword	0x000000010000685e              # double 2.1220089914111979E-314
.LCPI2_35:
	.dword	0x0000000000000000              # double 0
	.dword	0x0000800000000000              # double 6.9533558078350043E-310
	.dword	0x0000000000000000              # double 0
	.dword	0x0000800000000000              # double 6.9533558078350043E-310
.LCPI2_36:
	.dword	0xfffffff0ffff0000              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0xfffffff0ffff0000              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_37:
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI2_38:
	.dword	0x3ff1808001020101              # double 1.0938720740669512
	.dword	0x0101010101010101              # double 7.7486041854893479E-304
	.dword	0x3ff1808001020101              # double 1.0938720740669512
	.dword	0x0101010101010101              # double 7.7486041854893479E-304
.LCPI2_39:
	.dword	0x363c0000fff3c000              # double 1.915838788047647E-47
	.dword	0x3380000000000000              # double 1.2446030555722283E-60
	.dword	0xfff6e00000000000              # double NaN
	.dword	0x34000000fff00000              # double 3.186186860104742E-58
.LCPI2_40:
	.dword	0xa5a5a5a5a5a5a5ff              # double -2.4983353906950004E-127
	.dword	0xa5a5a5a5a5a5a5a5              # double -2.4983353906949635E-127
	.dword	0xa5a5a5a5a5a5a5ff              # double -2.4983353906950004E-127
	.dword	0xa5a5a5a5a5a5a5a5              # double -2.4983353906949635E-127
.LCPI2_41:
	.dword	0x0b004bc000000000              # double 1.0853054884256937E-255
	.dword	0x0b085bfc00000000              # double 1.6223282957809958E-255
	.dword	0x0b004bc000000000              # double 1.0853054884256937E-255
	.dword	0x0b085bfc00000000              # double 1.6223282957809958E-255
.LCPI2_42:
	.dword	0x00003fe000000000              # double 3.4698875173864133E-310
	.dword	0x0000000000000000              # double 0
	.dword	0x00003fe000000000              # double 3.4698875173864133E-310
	.dword	0x0000000000000000              # double 0
.LCPI2_43:
	.dword	0x7fe1ffe0ffe1ffe0              # double 1.0111758145541899E+308
	.dword	0x01ff0020ff1f001f              # double 4.6290627296492835E-299
	.dword	0x7fe1ffe0ffe1ffe0              # double 1.0111758145541899E+308
	.dword	0x01ff0020ff1f001f              # double 4.6290627296492835E-299
.LCPI2_44:
	.dword	0x8000000000000000              # double -0
	.dword	0x0000000000000000              # double 0
	.dword	0x8000000000000000              # double -0
	.dword	0x0000000000000000              # double 0
.LCPI2_45:
	.dword	4294967297                      # 0x100000001
	.dword	0                               # 0x0
	.dword	4294967297                      # 0x100000001
	.dword	0                               # 0x0
.LCPI2_46:
	.dword	0x0010001000107878              # double 2.2251078109731592E-308
	.dword	0x0010001000100010              # double 2.2251078109579301E-308
	.dword	0x0010001000107878              # double 2.2251078109731592E-308
	.dword	0x0010001000100010              # double 2.2251078109579301E-308
.LCPI2_47:
	.dword	0                               # 0x0
	.dword	4294967297                      # 0x100000001
	.dword	0                               # 0x0
	.dword	4294967297                      # 0x100000001
.LCPI2_48:
	.dword	4294967297                      # 0x100000001
	.dword	6442450944                      # 0x180000000
	.dword	4294967297                      # 0x100000001
	.dword	6442450944                      # 0x180000000
.LCPI2_49:
	.dword	0x00003fe50001c013              # double 3.4709485209491747E-310
	.dword	0x00003fea00013fec              # double 3.4720095172237762E-310
	.dword	0x00003fe50001c013              # double 3.4709485209491747E-310
	.dword	0x00003fea00013fec              # double 3.4720095172237762E-310
.LCPI2_50:
	.dword	0xfefefefefefefefe              # double -5.3140103725178076E+303
	.dword	0x0005000500050005              # double 6.9534619092435316E-309
	.dword	0xfefefefefefefefe              # double -5.3140103725178076E+303
	.dword	0x0005000500050005              # double 6.9534619092435316E-309
.LCPI2_51:
	.dword	8589934592                      # 0x200000000
	.dword	-9223372034707292160            # 0x8000000080000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_52:
	.dword	0x0000ffffffffffff              # double 1.3906711615669959E-309
	.dword	0x4001000100020000              # double 2.1250019074068405
	.dword	0x0000ffff00010000              # double 1.3906499419328821E-309
	.dword	0xfffe000000000000              # double NaN
.LCPI2_53:
	.dword	0xc7387fff6bbfffff              # double -1.2721122715295055E+35
	.dword	0xc9da000063f50000              # double -5.9373517622014005E+47
	.dword	0x0000000095120000              # double 1.2356506862612415E-314
	.dword	0xffff000000010000              # double NaN
.LCPI2_54:
	.dword	0xffffffffffffffff              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0xffffffffffffffff              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_55:
	.dword	0x0000000000000000              # double 0
	.dword	0xffffffffffffffff              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0xffffffffffffffff              # double NaN
.LCPI2_56:
	.dword	0                               # 0x0
	.dword	-9223372034707292160            # 0x8000000080000000
	.dword	0                               # 0x0
	.dword	-9223372034707292160            # 0x8000000080000000
.LCPI2_57:
	.dword	0xefdfefdfefdfefdf              # double -7.747310471123839E+230
	.dword	0xefdfefdf00000000              # double -7.7473070027864139E+230
	.dword	0xefdfefdfefdfefdf              # double -7.747310471123839E+230
	.dword	0xefdfefdf00000000              # double -7.7473070027864139E+230
.LCPI2_58:
	.dword	0x21f8c3c4c0000005              # double 4.9581029104348646E-145
	.dword	0x00000000c0000005              # double 1.5914968456942825E-314
	.dword	0x21f8c3c4c0000005              # double 4.9581029104348646E-145
	.dword	0x00000000c0000005              # double 1.5914968456942825E-314
.LCPI2_59:
	.dword	0x43ef878780000009              # double 1.8175468166858164E+19
	.dword	0x0000000000000000              # double 0
	.dword	0x43ef878780000009              # double 1.8175468166858164E+19
	.dword	0x0000000000000000              # double 0
.LCPI2_60:
	.dword	0x8000000100000001              # double -2.121995791459338E-314
	.dword	0x00000000ffe36780              # double 2.1210698882298148E-314
	.dword	0x8000000100000001              # double -2.121995791459338E-314
	.dword	0x00000000ffe36780              # double 2.1210698882298148E-314
.LCPI2_61:
	.dword	0xff00ff007f007f00              # double -5.8276700329243221E+303
	.dword	0xff00ff00ff00ff00              # double -5.8276726489520494E+303
	.dword	0xff00ff007f007f00              # double -5.8276700329243221E+303
	.dword	0xff00ff00ff00ff00              # double -5.8276726489520494E+303
.LCPI2_62:
	.dword	0x003f00ff003f00c4              # double 1.7246486847297512E-307
	.dword	0x003f020001400200              # double 1.724866829225695E-307
	.dword	0x003f00ff003f00c4              # double 1.7246486847297512E-307
	.dword	0x003f020001400200              # double 1.724866829225695E-307
.LCPI2_63:
	.dword	0xffff0000fffd0003              # double NaN
	.dword	0x0000ffff0002fffc              # double 1.390649942580444E-309
	.dword	0xffff0000fffd0003              # double NaN
	.dword	0x0000ffff0002fffc              # double 1.390649942580444E-309
.LCPI2_64:
	.dword	0x0000ffff00010002              # double 1.390649941932892E-309
	.dword	0x0080000200000003              # double 2.8480999711984445E-306
	.dword	0x0000ffff00010002              # double 1.390649941932892E-309
	.dword	0x0000000200000003              # double 4.2439915834127416E-314
.LCPI2_65:
	.dword	0x00ff00ffff0000ff              # double 7.0641644724080963E-304
	.dword	0xffffffffffffffff              # double NaN
	.dword	0x00ff00ffff0000ff              # double 7.0641644724080963E-304
	.dword	0xffffffffffffffff              # double NaN
.LCPI2_66:
	.dword	0                               # 0x0
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
	.dword	9223372034707292159             # 0x7fffffff7fffffff
.LCPI2_67:
	.dword	0x7fe363637fe36364              # double 1.0891906418478151E+308
	.dword	0x7fe36364661af18f              # double 1.089191412721287E+308
	.dword	0x7fe363637fe36364              # double 1.0891906418478151E+308
	.dword	0x7fe36364661af18f              # double 1.089191412721287E+308
.LCPI2_68:
	.dword	0x000000000000000a              # double 4.9406564584124654E-323
	.dword	0x0000000000000000              # double 0
	.dword	0x000000000000000a              # double 4.9406564584124654E-323
	.dword	0x0000000000000000              # double 0
.LCPI2_69:
	.dword	0x000000020000000a              # double 4.2439915868712011E-314
	.dword	0x0000000000000007              # double 3.4584595208887258E-323
	.dword	0x000000020000000b              # double 4.2439915873652667E-314
	.dword	0x0000000000000007              # double 3.4584595208887258E-323
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
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 352
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 224                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	xvftintrne.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 24
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 256
	xvftintrne.w.s	$xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 31
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 38
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrne.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 45
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvftintrne.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 52
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 59
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 66
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.w	$s1, $zero, -1
	lu52i.d	$a0, $s1, 255
	xvreplgr2vr.d	$xr0, $a0
	xvftintrne.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 73
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvldi	$xr0, -3200
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	lu12i.w	$a0, 15
	ori	$a0, $a0, 3346
	xvreplgr2vr.h	$xr0, $a0
	xvftintrne.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvftintrz.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 87
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 94
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 101
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrz.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 108
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 115
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 524287
	pcalau12i	$a1, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_4)
	ori	$a0, $a0, 4095
	xvreplgr2vr.w	$xr1, $a0
	xvst	$xr1, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr1, $sp, 256
	xvftintrz.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 122
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrz.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 129
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvftintrz.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 136
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvrepli.h	$xr0, 255
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvftintrz.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrz.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 150
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	lu12i.w	$a0, -516190
	ori	$a0, $a0, 2276
	xvreplgr2vr.w	$xr0, $a0
	xvftintrz.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 157
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	lu12i.w	$a0, -417
	ori	$a0, $a0, 4070
	lu32i.d	$a0, 327654
	lu52i.d	$a0, $a0, -2
	xvreplgr2vr.d	$xr0, $a0
	xvftintrp.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 164
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 256
	xvftintrp.w.s	$xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 171
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvldi	$xr0, -2688
	xvftintrp.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 178
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvftintrp.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 185
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 192
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvftintrp.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 199
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 256
	xvftintrp.w.s	$xr0, $xr1
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
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 213
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 220
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.w	$xr0, 1
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvftintrp.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 227
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrm.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 234
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvftintrm.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 241
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrm.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 248
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_14)
	xvst	$xr0, $sp, 256
	xvftintrm.w.s	$xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 255
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvrepli.b	$xr0, 109
	xvftintrm.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 262
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 276
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvftintrm.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 283
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 290
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrm.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 297
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
	ori	$a4, $zero, 304
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 256
	xvftintrm.w.s	$xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 311
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 318
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
	ori	$a4, $zero, 325
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 256
	lu12i.w	$a0, -262136
	ori	$a0, $a0, 1
	lu32i.d	$a0, 65535
	xvreplgr2vr.d	$xr0, $a0
	xvftint.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvftint.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 339
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 256
	xvftint.w.s	$xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 346
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftint.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 353
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	xvst	$xr1, $sp, 128                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr1, $sp, 256
	xvftint.w.s	$xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 360
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 367
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvftintrne.w.d	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr1, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 376
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrne.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 385
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 394
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvftintrne.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 403
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvftintrne.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 412
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvrepli.w	$xr0, -27
	xvftintrne.w.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 421
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 256
	lu52i.d	$a0, $zero, 2047
	xvreplgr2vr.d	$xr0, $a0
	xvftintrne.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 430
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	lu32i.d	$s1, 1
	xvreplgr2vr.d	$xr0, $s1
	xvftintrne.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 439
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvftintrne.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 448
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_33)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvftintrne.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 457
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrne.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 466
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrne.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 475
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvrepli.h	$xr0, 10
	xvftintrne.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 484
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrz.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 493
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvftintrz.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 502
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvftintrz.w.d	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr1, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 511
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvftintrz.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 520
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvftintrz.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 529
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 538
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvftintrz.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 547
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvftintrz.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 556
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_43)
	xvld	$xr2, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvftintrz.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 565
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 574
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 583
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvftintrp.w.d	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr1, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 592
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 601
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_44)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrp.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 610
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 619
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 628
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	xvrepli.d	$xr0, 1
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvftintrp.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 637
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvftintrp.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 646
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvftintrp.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 655
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_47)
	xvst	$xr0, $sp, 256
	lu52i.d	$a0, $zero, 4
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvftintrp.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 664
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_50)
	xvst	$xr0, $sp, 256
	xvftintrp.w.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 673
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_53)
	xvst	$xr0, $sp, 256
	xvftintrm.w.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 682
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_55)
	xvst	$xr2, $sp, 192                  # 32-byte Folded Spill
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrm.w.d	$xr0, $xr2, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 691
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvftintrm.w.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 700
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 709
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_56)
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_57)
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvftintrm.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 718
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_59)
	xvld	$xr2, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvftintrm.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 727
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_60)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvftintrm.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 736
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvftintrm.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 745
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvldi	$xr0, -3456
	xvftintrm.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 754
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	lu12i.w	$a0, 128
	lu52i.d	$a0, $a0, 506
	xvreplgr2vr.d	$xr0, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -524288
	lu52i.d	$a0, $a0, 2047
	xvreplgr2vr.d	$xr1, $a0
	xvftintrm.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 763
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_61)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftintrm.w.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 772
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_63)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvftintrm.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 781
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_64)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftint.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 790
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvftint.w.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 799
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_65)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvftint.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 808
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_66)
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_67)
	xvst	$xr0, $sp, 256
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvftint.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 817
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 256
	xvrepli.d	$xr0, -11
	xvftint.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 826
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	xvldi	$xr0, -1552
	xvrepli.d	$xr1, -8
	xvftint.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 835
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_68)
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_69)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 256
	xvftint.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 288
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 32
	ori	$a4, $zero, 844
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -352
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvftint-2.c"
	.size	.L.str.5, 135

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
