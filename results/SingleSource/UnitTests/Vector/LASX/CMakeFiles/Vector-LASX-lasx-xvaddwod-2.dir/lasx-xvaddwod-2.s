	.file	"lasx-xvaddwod-2.c"
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
.LCPI2_1:
	.dword	71777214302913022               # 0xff00ff017e01fe
	.dword	107524536345166079              # 0x17e00ff017e00ff
	.dword	71777214302913022               # 0xff00ff017e01fe
	.dword	71777214294589695               # 0xff00ff00ff00ff
.LCPI2_2:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_3:
	.dword	51510199912562692               # 0xb7004100190004
	.dword	16646399                        # 0xfe00ff
	.dword	51510341661360128               # 0xb7006200fc0000
	.dword	51510152667463680               # 0xb7003600120000
.LCPI2_4:
	.byte	181                             # 0xb5
	.byte	4                               # 0x4
	.byte	157                             # 0x9d
	.byte	25                              # 0x19
	.byte	59                              # 0x3b
	.byte	65                              # 0x41
	.byte	28                              # 0x1c
	.byte	183                             # 0xb7
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	73                              # 0x49
	.byte	0                               # 0x0
	.byte	30                              # 0x1e
	.byte	252                             # 0xfc
	.byte	19                              # 0x13
	.byte	98                              # 0x62
	.byte	20                              # 0x14
	.byte	183                             # 0xb7
	.byte	126                             # 0x7e
	.byte	0                               # 0x0
	.byte	196                             # 0xc4
	.byte	18                              # 0x12
	.byte	219                             # 0xdb
	.byte	54                              # 0x36
	.byte	0                               # 0x0
	.byte	183                             # 0xb7
.LCPI2_5:
	.dword	71777214301208722               # 0xff00ff01640092
	.dword	7995640                         # 0x7a00f8
	.dword	71777214301208722               # 0xff00ff01640092
	.dword	7995640                         # 0x7a00f8
.LCPI2_6:
	.byte	0                               # 0x0
	.byte	21                              # 0x15
	.byte	117                             # 0x75
	.byte	103                             # 0x67
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	124                             # 0x7c
	.byte	142                             # 0x8e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	21                              # 0x15
	.byte	117                             # 0x75
	.byte	103                             # 0x67
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	124                             # 0x7c
	.byte	142                             # 0x8e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_7:
	.byte	0                               # 0x0
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	253                             # 0xfd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	124                             # 0x7c
	.byte	255                             # 0xff
	.byte	122                             # 0x7a
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	125                             # 0x7d
	.byte	1                               # 0x1
	.byte	253                             # 0xfd
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	124                             # 0x7c
	.byte	255                             # 0xff
	.byte	122                             # 0x7a
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_8:
	.dword	71776119077928960               # 0xff000000ff0000
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	71776119077928960               # 0xff000000ff0000
	.dword	71777214294589695               # 0xff00ff00ff00ff
.LCPI2_9:
	.byte	116                             # 0x74
	.byte	0                               # 0x0
	.byte	250                             # 0xfa
	.byte	255                             # 0xff
	.byte	120                             # 0x78
	.byte	0                               # 0x0
	.byte	250                             # 0xfa
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	116                             # 0x74
	.byte	0                               # 0x0
	.byte	250                             # 0xfa
	.byte	255                             # 0xff
	.byte	120                             # 0x78
	.byte	0                               # 0x0
	.byte	250                             # 0xfa
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
.LCPI2_10:
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	0                               # 0x0
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	0                               # 0x0
.LCPI2_11:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_12:
	.dword	71776668833742848               # 0xff008000ff0000
	.dword	16711680                        # 0xff0000
	.dword	71776668833742848               # 0xff008000ff0000
	.dword	16711680                        # 0xff0000
.LCPI2_13:
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_14:
	.dword	281470681743360                 # 0xffff00000000
	.dword	0                               # 0x0
	.dword	281470681743360                 # 0xffff00000000
	.dword	0                               # 0x0
.LCPI2_15:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_16:
	.dword	0                               # 0x0
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_17:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	1                               # 0x1
	.half	16705                           # 0x4141
	.half	0                               # 0x0
	.half	32832                           # 0x8040
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
.LCPI2_18:
	.dword	136043089164151                 # 0x7bbb0000f777
	.dword	17476                           # 0x4444
	.dword	136043089164151                 # 0x7bbb0000f777
	.dword	17476                           # 0x4444
.LCPI2_19:
	.half	30584                           # 0x7778
	.half	63351                           # 0xf777
	.half	48059                           # 0xbbbb
	.half	31675                           # 0x7bbb
	.half	17475                           # 0x4443
	.half	17476                           # 0x4444
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	30584                           # 0x7778
	.half	63351                           # 0xf777
	.half	48059                           # 0xbbbb
	.half	31675                           # 0x7bbb
	.half	17475                           # 0x4443
	.half	17476                           # 0x4444
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_20:
	.dword	68633577442170                  # 0x3e6c0000cb7a
	.dword	70437463654400                  # 0x401000000000
	.dword	68633577442170                  # 0x3e6c0000cb7a
	.dword	70437463654400                  # 0x401000000000
.LCPI2_21:
	.half	64354                           # 0xfb62
	.half	52090                           # 0xcb7a
	.half	59353                           # 0xe7d9
	.half	15980                           # 0x3e6c
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16400                           # 0x4010
	.half	64354                           # 0xfb62
	.half	52090                           # 0xcb7a
	.half	59353                           # 0xe7d9
	.half	15980                           # 0x3e6c
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16400                           # 0x4010
.LCPI2_22:
	.dword	129141076721662                 # 0x75740000fffe
	.dword	129029407561970                 # 0x755a0000d8f2
	.dword	129141076721662                 # 0x75740000fffe
	.dword	129029407561970                 # 0x755a0000d8f2
.LCPI2_23:
	.half	51849                           # 0xca89
	.half	32767                           # 0x7fff
	.half	50500                           # 0xc544
	.half	15034                           # 0x3aba
	.half	30129                           # 0x75b1
	.half	27769                           # 0x6c79
	.half	60495                           # 0xec4f
	.half	15021                           # 0x3aad
	.half	51849                           # 0xca89
	.half	32767                           # 0x7fff
	.half	50500                           # 0xc544
	.half	15034                           # 0x3aba
	.half	30129                           # 0x75b1
	.half	27769                           # 0x6c79
	.half	60495                           # 0xec4f
	.half	15021                           # 0x3aad
.LCPI2_24:
	.dword	281470681808878                 # 0xffff0000ffee
	.dword	0                               # 0x0
	.dword	281470681808878                 # 0xffff0000ffee
	.dword	0                               # 0x0
.LCPI2_25:
	.half	186                             # 0xba
	.half	65518                           # 0xffee
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	186                             # 0xba
	.half	65518                           # 0xffee
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_26:
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	175917565485057                 # 0x9fff00002001
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	175917565485057                 # 0x9fff00002001
.LCPI2_27:
	.half	65529                           # 0xfff9
	.half	65535                           # 0xffff
	.half	65529                           # 0xfff9
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	8193                            # 0x2001
	.half	64896                           # 0xfd80
	.half	40959                           # 0x9fff
	.half	65529                           # 0xfff9
	.half	65535                           # 0xffff
	.half	65529                           # 0xfff9
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	8193                            # 0x2001
	.half	64896                           # 0xfd80
	.half	40959                           # 0x9fff
.LCPI2_28:
	.dword	9                               # 0x9
	.dword	26                              # 0x1a
	.dword	9                               # 0x9
	.dword	26                              # 0x1a
.LCPI2_29:
	.word	0                               # 0x0
	.word	9                               # 0x9
	.word	1                               # 0x1
	.word	26                              # 0x1a
	.word	0                               # 0x0
	.word	9                               # 0x9
	.word	1                               # 0x1
	.word	26                              # 0x1a
.LCPI2_30:
	.dword	4294967294                      # 0xfffffffe
	.dword	0                               # 0x0
	.dword	4294967294                      # 0xfffffffe
	.dword	4294967294                      # 0xfffffffe
.LCPI2_31:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_32:
	.dword	4279615978                      # 0xff15c1ea
	.dword	65535                           # 0xffff
	.dword	1392405                         # 0x153f15
	.dword	65535                           # 0xffff
.LCPI2_33:
	.word	2515141375                      # 0x95ea02ff
	.word	4279615978                      # 0xff15c1ea
	.word	4294902016                      # 0xffff0100
	.word	65535                           # 0xffff
	.word	2498364159                      # 0x94ea02ff
	.word	1392405                         # 0x153f15
	.word	4294967295                      # 0xffffffff
	.word	65535                           # 0xffff
.LCPI2_34:
	.word	196615                          # 0x30007
	.word	0                               # 0x0
	.word	4128768                         # 0x3f0000
	.word	0                               # 0x0
	.word	196615                          # 0x30007
	.word	0                               # 0x0
	.word	4128768                         # 0x3f0000
	.word	0                               # 0x0
.LCPI2_35:
	.dword	16711935                        # 0xff00ff
	.dword	4311614719                      # 0x100fe04ff
	.dword	16711935                        # 0xff00ff
	.dword	4311614719                      # 0x100fe04ff
.LCPI2_36:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294902784                      # 0xffff0400
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294902784                      # 0xffff0400
.LCPI2_37:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	262143                          # 0x3ffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_38:
	.word	0                               # 0x0
	.word	65535                           # 0xffff
	.word	65535                           # 0xffff
	.word	65535                           # 0xffff
	.word	0                               # 0x0
	.word	65535                           # 0xffff
	.word	65535                           # 0xffff
	.word	65535                           # 0xffff
.LCPI2_39:
	.dword	4210291698                      # 0xfaf3f3f2
	.dword	4193909241                      # 0xf9f9f9f9
	.dword	4210291698                      # 0xfaf3f3f2
	.dword	4193909241                      # 0xf9f9f9f9
.LCPI2_40:
	.word	2                               # 0x2
	.word	16382457                        # 0xf9f9f9
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	16382457                        # 0xf9f9f9
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_41:
	.word	168304                          # 0x29170
	.word	0                               # 0x0
	.word	33550336                        # 0x1fff000
	.word	0                               # 0x0
	.word	168304                          # 0x29170
	.word	0                               # 0x0
	.word	33550336                        # 0x1fff000
	.word	0                               # 0x0
.LCPI2_42:
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	0                               # 0x0
.LCPI2_43:
	.dword	-4327743803056143376            # 0xc3f0c3f0c3f0c3f0
	.dword	0                               # 0x0
	.dword	-4327743803056143376            # 0xc3f0c3f0c3f0c3f0
	.dword	0                               # 0x0
.LCPI2_44:
	.dword	-1807941362408433895            # 0xe6e8e6e8e6e8d719
	.dword	1                               # 0x1
	.dword	-1807941362408433895            # 0xe6e8e6e8e6e8d719
	.dword	1                               # 0x1
.LCPI2_45:
	.dword	2252074692640877                # 0x800400010006d
	.dword	0                               # 0x0
	.dword	2252074692640877                # 0x800400010006d
	.dword	0                               # 0x0
.LCPI2_46:
	.dword	4194303                         # 0x3fffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	4194303                         # 0x3fffff
	.dword	-1                              # 0xffffffffffffffff
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 288
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvrepli.b	$xr1, 0
	xvst	$xr1, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr1, $sp, 160
	xvaddwod.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 160
	xvrepli.b	$xr0, -1
	xvaddwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 160
	xvaddwod.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvrepli.h	$xr0, 255
	xvaddwod.h.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65408
	lu52i.d	$a0, $a0, 15
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 160
	ori	$a0, $zero, 0
	lu32i.d	$a0, -32768
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvaddwod.w.hu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr0, $sp, 160
	xvaddwod.w.hu	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_25)
	xvst	$xr0, $sp, 160
	xvrepli.w	$xr0, 32
	xvaddwod.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 1
	xvst	$xr0, $sp, 160
	lu12i.w	$s2, 16
	ori	$a0, $s2, 1
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvaddwod.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu32i.d	$s2, 1
	xvreplgr2vr.d	$xr0, $s2
	xvst	$xr0, $sp, 160
	lu32i.d	$s1, 32768
	lu52i.d	$a0, $s1, -2048
	xvreplgr2vr.d	$xr0, $a0
	xvaddwod.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 160
	xvaddwod.d.wu.w	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 160
	xvrepli.d	$xr0, -18
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr0, $sp, 160
	xvaddwod.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	xvst	$xr0, $sp, 160
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	lu12i.w	$a0, 4064
	ori	$a0, $a0, 254
	lu32i.d	$a0, -65281
	lu52i.d	$a0, $a0, 15
	xvreplgr2vr.d	$xr1, $a0
	xvaddwod.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	xvreplgr2vr.w	$xr0, $a0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvaddwod.d.wu.w	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 160
	xvaddwod.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_40)
	xvst	$xr0, $sp, 160
	xvrepli.b	$xr0, -7
	xvaddwod.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvaddwod.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvaddwod.q.du	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 160
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	xvreplgr2vr.w	$xr0, $a0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	xvst	$xr0, $sp, 160
	lu12i.w	$a0, 12
	ori	$a0, $a0, 1008
	xvreplgr2vr.h	$xr0, $a0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_44)
	xvst	$xr0, $sp, 160
	lu12i.w	$a0, -4082
	ori	$a0, $a0, 3890
	lu32i.d	$a0, 65280
	lu52i.d	$a0, $a0, -16
	xvreplgr2vr.d	$xr0, $a0
	xvrepli.b	$xr1, -25
	xvaddwod.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvaddwod.q.du	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvaddwod.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -288
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvaddwod-2.c"
	.size	.L.str.5, 136

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
