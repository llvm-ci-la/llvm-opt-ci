	.file	"lsx-vfcmp_slt.c"
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
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_1:
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00000000                      # float 0
	.word	0x0000ffff                      # float 9.18340949E-41
.LCPI2_2:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00007f01                      # float 4.5560417E-41
	.word	0x00000001                      # float 1.40129846E-45
.LCPI2_3:
	.word	0xffffff02                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_4:
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967295                      # 0xffffffff
.LCPI2_5:
	.word	0x442403e4                      # float 656.060791
	.word	0x00000004                      # float 5.60519386E-45
	.word	0x05452505                      # float 9.26969489E-36
	.word	0x00000000                      # float 0
.LCPI2_6:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
.LCPI2_7:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
.LCPI2_8:
	.word	0xe1cb5a01                      # float -4.68896814E+20
	.word	0x5e695e95                      # float 4.20401047E+18
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_9:
	.word	0x7fff7fff                      # float NaN
	.word	0x7fff7fff                      # float NaN
	.word	0xe29a5a60                      # float -1.4236554E+21
	.word	0x5f675e96                      # float 1.66719278E+19
.LCPI2_10:
	.word	0x806b000b                      # float -9.8264135E-39
	.word	0x80808080                      # float -1.18010406E-38
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_11:
	.word	0x0000000b                      # float 1.54142831E-44
	.word	0x0080006b                      # float 1.17550934E-38
	.word	0x00800080                      # float 1.17551229E-38
	.word	0x00800080                      # float 1.17551229E-38
.LCPI2_12:
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_13:
	.dword	0x0000000300000003              # double 6.3659873743780139E-314
	.dword	0x0000000200000002              # double 4.2439915829186759E-314
.LCPI2_14:
	.dword	0x000000000000001f              # double 1.5316035021078643E-322
	.dword	0x0000000000000000              # double 0
.LCPI2_15:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_16:
	.dword	0x65017c2ac9ca9fd0              # double 3.5426950918116805E+178
	.dword	0xe93d0bd19ff07013              # double -8.6849233744884512E+198
.LCPI2_17:
	.dword	0x0000000000001021              # double 2.039997051678507E-320
	.dword	0x00d3012acc56f9bb              # double 1.0825356310546812E-304
.LCPI2_18:
	.dword	0x685670d37e80682a              # double 4.0953794005353436E+194
	.dword	0x14ccc6320176a4d2              # double 1.7504764783411298E-208
.LCPI2_19:
	.dword	0x0000001000000000              # double 3.3951932655444357E-313
	.dword	0x0000001000000010              # double 3.3951932663349407E-313
.LCPI2_20:
	.dword	0x0000000000000000              # double 0
	.dword	0x0080000000800000              # double 2.8480945441942072E-306
.LCPI2_21:
	.dword	0x345002920f3017d6              # double 1.0202186845699801E-56
	.dword	0x0000000000000000              # double 0
.LCPI2_22:
	.dword	0xffffffff00000000              # double NaN
	.dword	0x0000000000000000              # double 0
.LCPI2_23:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_24:
	.word	0xfffffffc                      # float NaN
	.word	0xfffefffe                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_25:
	.word	0xfffff1a0                      # float NaN
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
.LCPI2_26:
	.word	0x00010001                      # float 9.18368975E-41
	.word	0x0000ffc1                      # float 9.17472144E-41
	.word	0x00000007                      # float 9.80908925E-45
	.word	0xffc2ffe7                      # float NaN
.LCPI2_27:
	.word	0xd5aaaac1                      # float -2.34562949E+13
	.word	0xaa55556f                      # float -1.89478411E-13
	.word	0xd5aa55c4                      # float -2.34106672E+13
	.word	0x55aa55c3                      # float 2.34106651E+13
.LCPI2_28:
	.word	0x6ac02b9b                      # float 1.16159839E+26
	.word	0x0d8e3670                      # float 8.76453101E-31
	.word	0x307d0771                      # float 9.20514386E-10
	.word	0x153e3e49                      # float 3.84193288E-26
.LCPI2_29:
	.word	0x0015172b                      # float 1.93685652E-39
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_30:
	.word	0xffffffff                      # float NaN
	.word	0xffff0000                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI2_31:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
.LCPI2_32:
	.word	0x5b3159f5                      # float 4.99199797E+16
	.word	0x9611c398                      # float -1.17747252E-25
	.word	0xb164f12b                      # float -3.33154548E-9
	.word	0x86dd8341                      # float -8.33238208E-35
.LCPI2_33:
	.dword	0xfffffffffffffffe              # double NaN
	.dword	0x0000000000000001              # double 4.9406564584124654E-324
.LCPI2_34:
	.dword	0xff0cff78ff96ff14              # double -9.9428935495969053E+303
	.dword	0xffffff8607db959f              # double NaN
.LCPI2_35:
	.dword	0x7ef8000000000000              # double 4.1145930515952665E+303
	.dword	0x0000000000000000              # double 0
.LCPI2_36:
	.dword	0x0000000000000005              # double 2.4703282292062327E-323
	.dword	0x0000000000000000              # double 0
.LCPI2_37:
	.dword	0xffffffee00000004              # double NaN
	.dword	0xffffffff00000001              # double NaN
.LCPI2_38:
	.dword	0x0000000000000000              # double 0
	.dword	0xffff00000000ffff              # double NaN
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	vst	$vr0, $sp, 160
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	vfcmp.slt.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	lu12i.w	$a0, 522240
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	vfcmp.slt.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vfcmp.slt.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vfcmp.slt.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 160
	vfcmp.slt.s	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr0, $sp, 160
	vfcmp.slt.s	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	vld	$vr2, $sp, 144                  # 16-byte Folded Reload
	vst	$vr2, $sp, 160
	vfcmp.slt.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfcmp.slt.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vldi	$vr0, -1552
	vst	$vr0, $sp, 160
	lu52i.d	$a0, $zero, -8
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vfcmp.slt.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vfcmp.slt.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	vfcmp.slt.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_14)
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
	vst	$vr2, $sp, 160
	vfcmp.slt.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vfcmp.slt.d	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	vst	$vr1, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr1, $sp, 160
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vfcmp.slt.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	lu12i.w	$a0, -5
	ori	$a0, $a0, 1279
	vreplgr2vr.d	$vr1, $a0
	vfcmp.slt.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vfcmp.slt.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	lu52i.d	$a0, $a0, 3
	vreplgr2vr.d	$vr0, $a0
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vfcmp.slt.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vfcmp.slt.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vfcmp.slt.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vfcmp.slt.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_22)
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vfcmp.slt.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vfcmp.slt.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_23)
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	vst	$vr1, $sp, 160
	vfcmp.sult.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vfcmp.sult.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_26)
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vst	$vr2, $sp, 160
	vfcmp.sult.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_28)
	vld	$vr2, $sp, 32                   # 16-byte Folded Reload
	vst	$vr2, $sp, 160
	vfcmp.sult.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_29)
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vrepli.d	$vr1, -2
	vfcmp.sult.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 203
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 209
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vfcmp.sult.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 215
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vrepli.h	$vr0, 1
	vfcmp.sult.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 221
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vldi	$vr0, -1552
	vfcmp.sult.s	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_32)
	vst	$vr0, $sp, 160
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vfcmp.sult.s	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 233
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vfcmp.sult.d	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 96                   # 16-byte Folded Spill
	vst	$vr1, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 239
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_33)
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vfcmp.sult.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 245
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vfcmp.sult.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 251
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_36)
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vst	$vr2, $sp, 160
	vfcmp.sult.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 257
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vst	$vr1, $sp, 160
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vfcmp.sult.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 263
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_38)
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
	vst	$vr2, $sp, 160
	vfcmp.sult.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 269
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vfcmp.sult.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 275
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 176
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 16
	ori	$a4, $zero, 281
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vfcmp_slt.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
