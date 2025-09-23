	.file	"lsx-vfcmp_clt.c"
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
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_1:
	.word	0xff800000                      # float -Inf
	.word	0xff800000                      # float -Inf
	.word	0xff800000                      # float -Inf
	.word	0x7f800000                      # float +Inf
.LCPI2_2:
	.word	0xa494006b                      # float -6.41854767E-17
	.word	0x0124d8f6                      # float 3.02777046E-38
	.word	0x43c0d41e                      # float 385.657166
	.word	0x56411278                      # float 5.30712667E+13
.LCPI2_3:
	.dword	4294967295                      # 0xffffffff
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_4:
	.word	0xbefcb21e                      # float -0.493546426
	.word	0x00000002                      # float 2.80259693E-45
	.word	0x00000000                      # float 0
	.word	0x84939413                      # float -3.46955186E-36
.LCPI2_5:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_6:
	.word	0xa3a9a96a                      # float -1.83947664E-17
	.word	0xaaacac88                      # float -3.06730552E-13
	.word	0xac01015b                      # float -1.8332755E-12
	.word	0x000000c5                      # float 2.76055797E-43
.LCPI2_7:
	.word	0xfff80002                      # float NaN
	.word	0xfffefff6                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_8:
	.word	0xfffffff0                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xff84fff4                      # float NaN
	.word	0xff84fff4                      # float NaN
.LCPI2_9:
	.word	0x0e000c20                      # float 1.57830561E-30
	.word	0x0f000d20                      # float 6.31341502E-30
	.word	0x10000e20                      # float 2.52544305E-29
	.word	0x11000f20                      # float 1.01020803E-28
.LCPI2_10:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
.LCPI2_11:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00bd003d                      # float 1.73569943E-38
	.word	0x00000000                      # float 0
.LCPI2_12:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000c00                      # float 4.30478888E-42
	.word	0x00000000                      # float 0
.LCPI2_13:
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_14:
	.word	0x0f800009                      # float 1.2621788E-29
	.word	0xff80000a                      # float NaN
	.word	0x00000009                      # float 1.26116862E-44
	.word	0x00000009                      # float 1.26116862E-44
.LCPI2_15:
	.word	0x0f800000                      # float 1.26217745E-29
	.word	0xff800001                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_16:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
.LCPI2_17:
	.word	0x00003f80                      # float 2.27795078E-41
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_18:
	.word	0xab7e3848                      # float -9.03170333E-13
	.word	0x3b5eae24                      # float 0.00339783076
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00000000                      # float 0
.LCPI2_19:
	.word	0x00011197                      # float 9.81455431E-41
	.word	0x0000c900                      # float 7.21052137E-41
	.word	0x00004657                      # float 2.52331814E-41
	.word	0x0000cecd                      # float 7.4186142E-41
.LCPI2_20:
	.word	0xf1ef4eaa                      # float -2.36998452E+30
	.word	0x41f8e080                      # float 31.1096191
	.word	0x3f3e47c1                      # float 0.743282377
	.word	0x63636363                      # float 4.19457247E+21
.LCPI2_21:
	.dword	0x000000010000003f              # double 2.121995822091408E-314
	.dword	0x7fff7fff7fff7fff              # double NaN
.LCPI2_22:
	.dword	0x000000010000003f              # double 2.121995822091408E-314
	.dword	0x0000000000000000              # double 0
.LCPI2_23:
	.dword	0x000000003be14000              # double 4.9634710660788575E-315
	.dword	0x0000000036de0000              # double 4.5479664428555626E-315
.LCPI2_24:
	.dword	0x0000000000000003              # double 1.4821969375237396E-323
	.dword	0x0000000000000001              # double 4.9406564584124654E-324
.LCPI2_25:
	.dword	0x0032000000000000              # double 1.0012832363282406E-307
	.dword	0x0000000000000000              # double 0
.LCPI2_26:
	.dword	0x1111113111111121              # double 1.8011272657845851E-226
	.dword	0x1111113111111141              # double 1.8011272657845971E-226
.LCPI2_27:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_28:
	.dword	0x65017c2ac9ca9fd0              # double 3.5426950918116805E+178
	.dword	0xe93d0bd19ff07013              # double -8.6849233744884512E+198
.LCPI2_29:
	.dword	0x0000000080000000              # double 1.0609978954826362E-314
	.dword	0x0000000000000000              # double 0
.LCPI2_30:
	.dword	0x007f007f007effc6              # double 2.7592640629985732E-306
	.dword	0x007f007f007f007e              # double 2.7592640629986313E-306
.LCPI2_31:
	.dword	0x0000000000000158              # double 1.6995858216938881E-321
	.dword	0x0000000000000000              # double 0
.LCPI2_32:
	.dword	0x00000000ffff0000              # double 2.1219634118791065E-314
	.dword	0x0000015800000000              # double 7.2996655209205368E-312
.LCPI2_33:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
.LCPI2_34:
	.word	0x00000000                      # float 0
	.word	0x42652524                      # float 57.2862701
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_35:
	.word	0x2742ba3e                      # float 2.70238704E-15
	.word	0x9e063f80                      # float -7.10703243E-21
	.word	0x0ffe354e                      # float 2.5066866E-29
	.word	0x454c2996                      # float 3266.59912
.LCPI2_36:
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967295                      # 0xffffffff
.LCPI2_37:
	.word	0x0070007c                      # float 1.02857493E-38
	.word	0xffb7005f                      # float NaN
	.word	0xff81007c                      # float NaN
	.word	0x00000000                      # float 0
.LCPI2_38:
	.word	0x00010000                      # float 9.18354962E-41
	.word	0x00030000                      # float 2.75506488E-40
	.word	0x00050000                      # float 4.59177481E-40
	.word	0x00070000                      # float 6.42848473E-40
.LCPI2_39:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x0000006f                      # float 1.5554413E-43
	.word	0x00000000                      # float 0
.LCPI2_40:
	.word	0xffffffff                      # float NaN
	.word	0x7bffffff                      # float 2.65845583E+36
	.word	0xffffffff                      # float NaN
	.word	0xfbffffff                      # float -2.65845583E+36
.LCPI2_41:
	.word	0x0002a000                      # float 2.41068177E-40
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_42:
	.word	0x01030103                      # float 2.40616259E-38
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_43:
	.word	0x14155445                      # float 7.53919683E-27
	.word	0x00000000                      # float 0
	.word	0xfc606ec5                      # float -4.66128468E+36
	.word	0xffffffff                      # float NaN
.LCPI2_44:
	.word	0x10d20fbf                      # float 8.28546557E-29
	.word	0xffd27db0                      # float NaN
	.word	0x63636363                      # float 4.19457247E+21
	.word	0x63636363                      # float 4.19457247E+21
.LCPI2_45:
	.word	0x02000fbf                      # float 9.40847371E-38
	.word	0x00020fbf                      # float 1.89319626E-40
	.word	0x02040fbf                      # float 9.7023473E-38
	.word	0x00060fbf                      # float 5.56661611E-40
.LCPI2_46:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000008                      # float 1.12103877E-44
.LCPI2_47:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x7f800000                      # float +Inf
.LCPI2_48:
	.dword	0x7fff00007fff7fff              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_49:
	.dword	0x004200a000200001              # double 2.0028380889466298E-307
	.dword	0x004200a000000000              # double 2.0028380881177248E-307
.LCPI2_50:
	.dword	0x0000000000000001              # double 4.9406564584124654E-324
	.dword	0x0000000000000000              # double 0
.LCPI2_51:
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000100000001              # double 2.121995791459338E-314
.LCPI2_52:
	.dword	0x000000000000001e              # double 1.4821969375237396E-322
	.dword	0x0000000000000000              # double 0
.LCPI2_53:
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000001580000              # double 1.1138405641053065E-316
.LCPI2_54:
	.dword	0x0000000455555555              # double 9.1953150940181582E-314
	.dword	0x0000000000000000              # double 0
.LCPI2_55:
	.dword	0x0000001f0000001f              # double 6.5781869535239477E-313
	.dword	0x0000002000000020              # double 6.7903865326698815E-313
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr0, $sp, 96
	vfcmp.clt.s	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 96
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vfcmp.clt.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vfcmp.clt.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_7)
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.clt.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vfcmp.clt.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vfcmp.clt.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vfcmp.clt.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 96
	vfcmp.clt.s	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vrepli.h	$vr0, -2
	vrepli.d	$vr1, 5
	vfcmp.clt.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vfcmp.clt.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 96
	vfcmp.clt.s	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr2, $sp, 96
	vfcmp.clt.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_20)
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.clt.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_22)
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.clt.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_24)
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.clt.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_26)
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.clt.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	vst	$vr2, $sp, 96
	vfcmp.clt.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vfcmp.clt.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_32)
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.clt.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	lu12i.w	$a0, 524272
	vreplgr2vr.w	$vr0, $a0
	vfcmp.clt.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	lu12i.w	$a0, 522256
	ori	$a0, $a0, 1
	vreplgr2vr.w	$vr0, $a0
	vfcmp.clt.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_35)
	vst	$vr0, $sp, 96
	vfcmp.cult.s	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_38)
	vst	$vr0, $sp, 96
	vfcmp.cult.s	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_39)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vfcmp.cult.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_40)
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vfcmp.cult.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_41)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vfcmp.cult.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vfcmp.cult.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_43)
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.cult.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_45)
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.cult.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_47)
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.cult.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vfcmp.cult.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_49)
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.cult.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_50)
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vfcmp.cult.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vrepli.h	$vr0, -256
	vfcmp.cult.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_51)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vfcmp.cult.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_52)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vfcmp.cult.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_54)
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	vst	$vr2, $sp, 96
	vfcmp.cult.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vfcmp.cult.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_55)
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vst	$vr1, $sp, 96
	vfcmp.cult.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 112
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vfcmp_clt.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
