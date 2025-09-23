	.file	"lasx-xvfcmp_slt_s.c"
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
	.word	0x00000101                      # float 3.60133705E-43
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_1:
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_2:
	.word	0x00000102                      # float 3.61535004E-43
	.word	0x00000101                      # float 3.60133705E-43
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000102                      # float 3.61535004E-43
	.word	0x00000101                      # float 3.60133705E-43
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_3:
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0xc08f7800                      # float -4.48339844
	.word	0xfffffefd                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0xc08f7800                      # float -4.48339844
.LCPI2_4:
	.word	0x09060300                      # float 1.61310739E-33
	.word	0x00030609                      # float 2.77671495E-40
	.word	0x3e1f1f00                      # float 0.155391693
	.word	0x001f1f3e                      # float 2.85810797E-39
	.word	0x09060300                      # float 1.61310739E-33
	.word	0x00030609                      # float 2.77671495E-40
	.word	0x3e1f1f00                      # float 0.155391693
	.word	0x001f1f3e                      # float 2.85810797E-39
.LCPI2_5:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000001                      # float 1.40129846E-45
.LCPI2_6:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x20fc0000                      # float 4.26904605E-19
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x20fc0000                      # float 4.26904605E-19
.LCPI2_7:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffff0400                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffff0400                      # float NaN
.LCPI2_8:
	.word	0x08050501                      # float 4.00291137E-34
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x08050501                      # float 4.00291137E-34
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_9:
	.word	0x00000000                      # float 0
	.word	0xd8d8c000                      # float -1.90655316E+15
	.word	0x00000000                      # float 0
	.word	0x00001ff8                      # float 1.14682266E-41
	.word	0x00000000                      # float 0
	.word	0xd8d8c000                      # float -1.90655316E+15
	.word	0x00000000                      # float 0
	.word	0x00001ff8                      # float 1.14682266E-41
.LCPI2_10:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffe00000                      # float NaN
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffe00000                      # float NaN
	.word	0x00000001                      # float 1.40129846E-45
.LCPI2_11:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_12:
	.dword	0xc06500550055ffab              # double -168.01037613674757
	.dword	0x0000017000000080              # double 7.8089445113846061E-312
	.dword	0xc06500550055ffab              # double -168.01037613674757
	.dword	0x0000017000000080              # double 7.8089445113846061E-312
.LCPI2_13:
	.dword	0x0ff80100ffffffff              # double 9.6633018432401757E-232
	.dword	0x0000000000000000              # double 0
	.dword	0x0ff80100ffffffff              # double 9.6633018432401757E-232
	.dword	0x0000000000000000              # double 0
.LCPI2_14:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_15:
	.dword	0x0101010101010101              # double 7.7486041854893479E-304
	.dword	0x0101010101010101              # double 7.7486041854893479E-304
	.dword	0x0101010101010203              # double 7.7486041854897656E-304
	.dword	0x0101010101010101              # double 7.7486041854893479E-304
.LCPI2_16:
	.dword	0x00000000ffdcff64              # double 2.1208624458752267E-314
	.dword	0x0000000000000000              # double 0
	.dword	0x01480000052801a2              # double 1.7498693071019192E-302
	.dword	0x0000000000000000              # double 0
.LCPI2_17:
	.dword	0xffff000100000000              # double NaN
	.dword	0x7fefffffffffffff              # double 1.7976931348623157E+308
	.dword	0x0000000000000000              # double 0
	.dword	0x7ff0000000000000              # double +Inf
.LCPI2_18:
	.dword	0x0000fe0100000000              # double 1.3798277630751683E-309
	.dword	0x0000000000000000              # double 0
	.dword	0x0000fe0100000000              # double 1.3798277630751683E-309
	.dword	0x0000000000000000              # double 0
.LCPI2_19:
	.dword	0x000000007fffffff              # double 1.0609978949885705E-314
	.dword	0x0000000000000000              # double 0
	.dword	0x000000007fffffff              # double 1.0609978949885705E-314
	.dword	0x0000000000000000              # double 0
.LCPI2_20:
	.dword	0x000000000000ffff              # double 3.2378592100206092E-319
	.dword	0x0000000000000000              # double 0
	.dword	0xffffffffffffffff              # double NaN
	.dword	0xffffffffffffffff              # double NaN
.LCPI2_21:
	.dword	0x00000fff00004542              # double 8.689572772762574E-311
	.dword	0x00ff00ffff00ff00              # double 7.0641644724607326E-304
	.dword	0x00000fff00004542              # double 8.689572772762574E-311
	.dword	0x00ff00ffff00ff00              # double 7.0641644724607326E-304
.LCPI2_22:
	.dword	0xfffffffffffffffe              # double NaN
	.dword	0x0000000000000001              # double 4.9406564584124654E-324
	.dword	0xfffffffffffffffe              # double NaN
	.dword	0x0000000000000001              # double 4.9406564584124654E-324
.LCPI2_23:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_24:
	.dword	0x00aa00ab00ff00ff              # double 1.8514472394809601E-305
	.dword	0x0000000000000000              # double 0
	.dword	0x00aa00ab00ff00ff              # double 1.8514472394809601E-305
	.dword	0x0000000000000000              # double 0
.LCPI2_25:
	.dword	0x00000000ffff8000              # double 2.1219796014221894E-314
	.dword	0xffe37fe3001d001d              # double -1.0954443954363611E+308
	.dword	0x00000000ffff8000              # double 2.1219796014221894E-314
	.dword	0xffe37fe3001d001d              # double -1.0954443954363611E+308
.LCPI2_26:
	.dword	0x7fffffffa2beb040              # double NaN
	.dword	0x0000000022beb03f              # double 2.8800188410696181E-315
	.dword	0x7fffffffa2beb040              # double NaN
	.dword	0x0000000022beb03f              # double 2.8800188410696181E-315
.LCPI2_27:
	.dword	0x0000104000000000              # double 8.8275024904155328E-311
	.dword	0xffffffa30000165a              # double NaN
	.dword	0x0000104000000000              # double 8.8275024904155328E-311
	.dword	0xffffffa30000165a              # double NaN
.LCPI2_28:
	.dword	0x00003fe000000000              # double 3.4698875173864133E-310
	.dword	0x0000000000000000              # double 0
	.dword	0x00003fe000000000              # double 3.4698875173864133E-310
	.dword	0x0000000000000000              # double 0
.LCPI2_29:
	.dword	0x000000430207f944              # double 1.4219055426771031E-312
	.dword	0x0000000000000000              # double 0
	.dword	0x000000430207f944              # double 1.4219055426771031E-312
	.dword	0x0000000000000000              # double 0
.LCPI2_30:
	.dword	0x00000000ffff0008              # double 2.1219634158316316E-314
	.dword	0x0000000000000000              # double 0
	.dword	0x00000000ffff0008              # double 2.1219634158316316E-314
	.dword	0x0000000000000000              # double 0
.LCPI2_31:
	.dword	0x000000003fc001fe              # double 5.2842693820018293E-315
	.dword	0xfe01fe017e81fd02              # double -9.4134805654006845E+298
	.dword	0x000000003fc001fe              # double 5.2842693820018293E-315
	.dword	0xfe01fe017e81fd02              # double -9.4134805654006845E+298
.LCPI2_32:
	.dword	0xffffffffffffffff              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0xffffffffffffffff              # double NaN
	.dword	0xffffffffffffffff              # double NaN
.LCPI2_33:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_34:
	.word	0xfc000000                      # float -2.65845599E+36
	.word	0xfffffff8                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xfffffff8                      # float NaN
	.word	0xfffffff8                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_35:
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0x7fef0001                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x01060005                      # float 2.4611927E-38
	.word	0x00000000                      # float 0
	.word	0x60000108                      # float 3.68946492E+19
	.word	0x00000000                      # float 0
.LCPI2_36:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
.LCPI2_37:
	.word	0x00000000                      # float 0
	.word	0x63000000                      # float 2.36118324E+21
	.word	0xfffffffe                      # float NaN
	.word	0xce7fffff                      # float -1.07374176E+9
	.word	0x00000000                      # float 0
	.word	0x63000000                      # float 2.36118324E+21
	.word	0xfffffffe                      # float NaN
	.word	0xce7fffff                      # float -1.07374176E+9
.LCPI2_38:
	.word	0x00000000                      # float 0
	.word	0x63000000                      # float 2.36118324E+21
	.word	0x01010102                      # float 2.36942811E-38
	.word	0x327f0101                      # float 1.48431818E-8
	.word	0x00000000                      # float 0
	.word	0x63000000                      # float 2.36118324E+21
	.word	0x01010102                      # float 2.36942811E-38
	.word	0x327f0101                      # float 1.48431818E-8
.LCPI2_39:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xa6e6ac80                      # float -1.60062122E-15
	.word	0x0eb7aaaa                      # float 4.52773265E-30
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xa6e6ac80                      # float -1.60062122E-15
	.word	0x0eb7aaaa                      # float 4.52773265E-30
.LCPI2_40:
	.word	0x00000000                      # float 0
	.word	0x59800000                      # float 4.50359963E+15
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x59800000                      # float 4.50359963E+15
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_41:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
.LCPI2_42:
	.word	0x00000007                      # float 9.80908925E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000007                      # float 9.80908925E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_43:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00003fff                      # float 2.29574727E-41
	.word	0xdbc80000                      # float -1.12589991E+17
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00003fff                      # float 2.29574727E-41
	.word	0xdbc80000                      # float -1.12589991E+17
.LCPI2_44:
	.word	0xfffffff3                      # float NaN
	.word	0xfffffff3                      # float NaN
	.word	0x0000000b                      # float 1.54142831E-44
	.word	0xfffffff3                      # float NaN
	.word	0xfffffff3                      # float NaN
	.word	0xfffffff3                      # float NaN
	.word	0x0000000b                      # float 1.54142831E-44
	.word	0xfffffff3                      # float NaN
.LCPI2_45:
	.word	0x0000007f                      # float 1.77964905E-43
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000002                      # float 2.80259693E-45
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_46:
	.word	0x955d3f68                      # float -4.46806133E-26
	.word	0x21f6050d                      # float 1.66709453E-18
	.word	0x4f9bf1ac                      # float 5.23261338E+9
	.word	0x111ebb78                      # float 1.25217706E-28
	.word	0x809f3b50                      # float -1.46231212E-38
	.word	0x1c386546                      # float 6.10113859E-22
	.word	0x4f9c4100                      # float 5.24301107E+9
	.word	0x111ebb78                      # float 1.25217706E-28
.LCPI2_47:
	.word	0x2aba7ed0                      # float 3.31282311E-13
	.word	0x43ec0a1b                      # float 472.078949
	.word	0x9f37e357                      # float -3.89398084E-20
	.word	0x223d76f0                      # float 2.56772413E-18
	.word	0x013e76a0                      # float 3.49825978E-38
	.word	0x3870ca8d                      # float 5.74090991E-5
	.word	0x9f3881ff                      # float -3.90710458E-20
	.word	0x223d76f0                      # float 2.56772413E-18
.LCPI2_48:
	.word	0x00004b0f                      # float 2.692595E-41
	.word	0x00000c4f                      # float 4.41549146E-42
	.word	0x00005111                      # float 2.9081147E-41
	.word	0x00001251                      # float 6.57068849E-42
	.word	0x00004b0f                      # float 2.692595E-41
	.word	0x00000c4f                      # float 4.41549146E-42
	.word	0x00005111                      # float 2.9081147E-41
	.word	0x00001251                      # float 6.57068849E-42
.LCPI2_49:
	.word	0x179e951d                      # float 1.02481522E-24
	.word	0x23a2a121                      # float 1.76323159E-17
	.word	0x27272525                      # float 2.31960417E-15
	.word	0x01010101                      # float 2.36942783E-38
	.word	0x179e951d                      # float 1.02481522E-24
	.word	0x23a2a121                      # float 1.76323159E-17
	.word	0x27272525                      # float 2.31960417E-15
	.word	0x01010101                      # float 2.36942783E-38
.LCPI2_50:
	.word	0x80000000                      # float -0
	.word	0x80000000                      # float -0
	.word	0xff800000                      # float -Inf
	.word	0x80000000                      # float -0
	.word	0x80000000                      # float -0
	.word	0x80000000                      # float -0
	.word	0xff800000                      # float -Inf
	.word	0x80000000                      # float -0
.LCPI2_51:
	.dword	0x00000000000000fe              # double 1.2549267404367662E-321
	.dword	0x0000000000000000              # double 0
	.dword	0x00000000000000fe              # double 1.2549267404367662E-321
	.dword	0x0000000000000000              # double 0
.LCPI2_52:
	.dword	0xffff000000000000              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0xffff000000000000              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_53:
	.dword	0x0045b8ae81bce1d8              # double 2.4165873853589861E-307
	.dword	0x0000003868686a20              # double 1.1969720593187161E-312
	.dword	0x0045b8ae81bce1d8              # double 2.4165873853589861E-307
	.dword	0x0000003868686a20              # double 1.1969720593187161E-312
.LCPI2_54:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_55:
	.dword	0xfffff8d9ffa7103d              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0xff8f0842ff29211e              # double -2.7239503346105201E+306
	.dword	0x001175f10e4330e8              # double 2.4282105118027452E-308
.LCPI2_56:
	.dword	0x0000000000080000              # double 2.5903268932681547E-318
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000008              # double 3.9525251667299724E-323
	.dword	0x0000000000000000              # double 0
.LCPI2_57:
	.dword	0x0fff0fff00000020              # double 1.2504880335717581E-231
	.dword	0x0000000000000000              # double 0
	.dword	0x0fff0fff00000020              # double 1.2504880335717581E-231
	.dword	0x0000000000000000              # double 0
.LCPI2_58:
	.dword	0x8020004a0011002a              # double -4.4504617734923961E-308
	.dword	0x000b004a00440040              # double 1.5298953076140419E-308
	.dword	0x8020004a0011002a              # double -4.4504617734923961E-308
	.dword	0x000b004a00440040              # double 1.5298953076140419E-308
.LCPI2_59:
	.dword	0x8000000000000000              # double -0
	.dword	0x0000000000000000              # double 0
	.dword	0x8000000000000000              # double -0
	.dword	0x0000000000000000              # double 0
.LCPI2_60:
	.dword	0xfff0000000000000              # double -Inf
	.dword	0x0002000000020000              # double 2.7813423237815835E-309
	.dword	0xfff0000000000000              # double -Inf
	.dword	0x0002000000020000              # double 2.7813423237815835E-309
.LCPI2_61:
	.dword	0x0002000000000000              # double 2.7813423231340017E-309
	.dword	0x0006000000040000              # double 8.3440269706971686E-309
	.dword	0x0002000000000000              # double 2.7813423231340017E-309
	.dword	0x0006000000040000              # double 8.3440269706971686E-309
.LCPI2_62:
	.dword	0xfffefffefffeffff              # double NaN
	.dword	0xffffffffffffffff              # double NaN
	.dword	0xfffefffefffeffff              # double NaN
	.dword	0xffffffffffffffff              # double NaN
.LCPI2_63:
	.dword	0x00ffffffffffffff              # double 7.2911220195563967E-304
	.dword	0x000000ff00000000              # double 5.4110892669614444E-312
	.dword	0x00ffffffffffffff              # double 7.2911220195563967E-304
	.dword	0x000000ff00000000              # double 5.4110892669614444E-312
.LCPI2_64:
	.dword	0x0000000800200028              # double 1.6977002478242112E-313
	.dword	0x0000000860601934              # double 1.7774826329317624E-313
	.dword	0x0000000800200028              # double 1.6977002478242112E-313
	.dword	0x0000000860601934              # double 1.7774826329317624E-313
.LCPI2_65:
	.dword	0x007ffcfcfd020202              # double 2.8470474454127632E-306
	.dword	0x0000000000000000              # double 0
	.dword	0x4079808280057efe              # double 408.03186037203693
	.dword	0x0000000000000002              # double 9.8813129168249309E-324
.LCPI2_66:
	.dword	0xffffffff00000000              # double NaN
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
.LCPI2_67:
	.dword	0x00000000000000ff              # double 1.2598673968951787E-321
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
.LCPI2_68:
	.dword	0x0000000400000004              # double 8.4879831658373518E-314
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000400000004              # double 8.4879831658373518E-314
	.dword	0x0000000000000000              # double 0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 384
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 256                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 288
	xvfcmp.slt.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 320
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvrepli.b	$xr1, -1
	xvst	$xr1, $sp, 224                  # 32-byte Folded Spill
	xvfcmp.slt.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr2, $sp, 128                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr2, $sp, 288
	xvfcmp.slt.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.slt.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvfcmp.slt.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	xvreplgr2vr.w	$xr1, $a0
	xvfcmp.slt.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvfcmp.slt.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvrepli.b	$xr1, -112
	xvfcmp.slt.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	lu12i.w	$a0, 8224
	ori	$a0, $a0, 258
	xvreplgr2vr.w	$xr1, $a0
	xvfcmp.slt.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvrepli.h	$xr0, 255
	xvfcmp.slt.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.slt.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr2, $sp, 160                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr2, $sp, 288
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 288
	xvfcmp.slt.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvfcmp.slt.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvrepli.w	$xr1, 25
	xvfcmp.slt.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_19)
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvfcmp.slt.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	xvld	$xr2, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvfcmp.slt.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr1, $sp, 192                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr1, $sp, 288
	xvrepli.w	$xr1, 255
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	lu12i.w	$a0, 127
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 30
	xvreplgr2vr.d	$xr1, $a0
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_27)
	xvld	$xr2, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_30)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvfcmp.slt.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.slt.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvfcmp.slt.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_35)
	xvst	$xr0, $sp, 288
	xvfcmp.sult.s	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_36)
	xvst	$xr2, $sp, 160                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	xvst	$xr2, $sp, 288
	xvfcmp.sult.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_40)
	xvld	$xr2, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.sult.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.sult.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.sult.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.sult.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_45)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.sult.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_47)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.sult.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_49)
	xvld	$xr2, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.sult.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_50)
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvfcmp.sult.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 395
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 288
	lu52i.d	$a0, $zero, 2047
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	xvrepli.d	$xr0, 1
	xvfcmp.sult.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 404
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.sult.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvfcmp.sult.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 422
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvfcmp.sult.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 431
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	lu52i.d	$a0, $zero, -2048
	xvreplgr2vr.d	$xr0, $a0
	xvfcmp.sult.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 440
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_52)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.sult.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 449
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_53)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.sult.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 458
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_55)
	xvst	$xr0, $sp, 288
	xvfcmp.sult.d	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 467
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_56)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.sult.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 476
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_57)
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_58)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.sult.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 485
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_59)
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvfcmp.sult.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 494
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_60)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvfcmp.sult.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 503
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_61)
	xvld	$xr1, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvrepli.b	$xr1, 64
	xvfcmp.sult.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 512
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvfcmp.sult.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 521
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_63)
	xvld	$xr2, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.sult.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 530
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvfcmp.sult.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 539
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_64)
	xvld	$xr1, $sp, 224                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 288
	xvfcmp.sult.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 548
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 557
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_65)
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_66)
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.sult.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 566
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_67)
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_68)
	xvld	$xr2, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 288
	xvfcmp.sult.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 575
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 584
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 320
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 32
	ori	$a4, $zero, 593
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -384
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvfcmp_slt_s.c"
	.size	.L.str.5, 138

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
