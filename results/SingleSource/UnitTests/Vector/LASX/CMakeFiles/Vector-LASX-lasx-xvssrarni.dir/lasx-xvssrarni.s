	.file	"lasx-xvssrarni.c"
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
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_1:
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	0                               # 0x0
.LCPI2_2:
	.dword	0                               # 0x0
	.dword	-288230376151711744             # 0xfc00000000000000
	.dword	0                               # 0x0
	.dword	-288230376151711744             # 0xfc00000000000000
.LCPI2_3:
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	222                             # 0xde
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	222                             # 0xde
.LCPI2_4:
	.dword	0                               # 0x0
	.dword	15453528133134                  # 0xe0e0e0e0e0e
	.dword	0                               # 0x0
	.dword	1012762419733073422             # 0xe0e0e0e0e0e0e0e
.LCPI2_5:
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	112                             # 0x70
.LCPI2_6:
	.byte	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_7:
	.dword	9187624714804166656             # 0x7f80ffffff808000
	.dword	0                               # 0x0
	.dword	9187624714804166656             # 0x7f80ffffff808000
	.dword	0                               # 0x0
.LCPI2_8:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	251                             # 0xfb
	.byte	223                             # 0xdf
	.byte	65                              # 0x41
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	251                             # 0xfb
	.byte	223                             # 0xdf
	.byte	65                              # 0x41
.LCPI2_9:
	.dword	0                               # 0x0
	.dword	844433520066560                 # 0x3000200000000
	.dword	0                               # 0x0
	.dword	844433520066560                 # 0x3000200000000
.LCPI2_10:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1027                            # 0x403
	.half	1541                            # 0x605
	.half	2055                            # 0x807
	.half	2569                            # 0xa09
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1027                            # 0x403
	.half	1541                            # 0x605
	.half	2055                            # 0x807
	.half	2569                            # 0xa09
.LCPI2_11:
	.dword	-9223372034707292160            # 0x8000000080000000
	.dword	0                               # 0x0
	.dword	-9223372034707292160            # 0x8000000080000000
	.dword	0                               # 0x0
.LCPI2_12:
	.dword	0                               # 0x0
	.dword	280444168830735                 # 0xff0fff0fff0f
	.dword	0                               # 0x0
	.dword	280444168830735                 # 0xff0fff0fff0f
.LCPI2_13:
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_14:
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
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_15:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	562949953421312                 # 0x2000000000000
	.dword	0                               # 0x0
.LCPI2_16:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	30                              # 0x1e
	.half	0                               # 0x0
.LCPI2_17:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.word	2544                            # 0x9f0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3872                            # 0xf20
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_19:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2048                            # 0x800
	.word	0                               # 0x0
	.word	2048                            # 0x800
	.word	0                               # 0x0
	.word	2048                            # 0x800
	.word	0                               # 0x0
.LCPI2_20:
	.dword	17179869184                     # 0x400000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_21:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294950656                      # 0xffffbf00
	.word	8001                            # 0x1f41
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_22:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294964991                      # 0xfffff6ff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294964991                      # 0xfffff6ff
	.word	0                               # 0x0
.LCPI2_23:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	240518168576                    # 0x3800000000
.LCPI2_24:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	489539                          # 0x77843
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4181655552                      # 0xf93f0000
	.word	13                              # 0xd
.LCPI2_25:
	.dword	0                               # 0x0
	.dword	2311                            # 0x907
	.dword	0                               # 0x0
	.dword	2311                            # 0x907
.LCPI2_26:
	.word	302912013                       # 0x120e120d
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	302912013                       # 0x120e120d
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_27:
	.dword	4294967294                      # 0xfffffffe
	.dword	0                               # 0x0
	.dword	4294967294                      # 0xfffffffe
	.dword	0                               # 0x0
.LCPI2_28:
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_29:
	.dword	0                               # 0x0
	.dword	24                              # 0x18
	.dword	0                               # 0x0
	.dword	24                              # 0x18
.LCPI2_30:
	.word	3179346190                      # 0xbd80f90e
	.word	196737                          # 0x30081
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4194693646                      # 0xfa05f20e
	.word	196614                          # 0x30006
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_31:
	.dword	256                             # 0x100
	.dword	0                               # 0x0
	.dword	256                             # 0x100
	.dword	0                               # 0x0
.LCPI2_32:
	.dword	64424509455                     # 0xf0000000f
	.dword	137438953504                    # 0x2000000020
	.dword	64424509455                     # 0xf0000000f
	.dword	137438953504                    # 0x2000000020
.LCPI2_33:
	.dword	-724868738887139352             # 0xf5f0bfb8f5d8bfe8
	.dword	-723461355411750978             # 0xf5f5bfbaf5f5bfbe
	.dword	-724868738887139352             # 0xf5f0bfb8f5d8bfe8
	.dword	-723461355411750978             # 0xf5f5bfbaf5f5bfbe
.LCPI2_34:
	.dword	65536                           # 0x10000
	.dword	-65536                          # 0xffffffffffff0000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_35:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_36:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_37:
	.dword	0                               # 0x0
	.dword	131125456                       # 0x7d0d0d0
	.dword	0                               # 0x0
	.dword	131125456                       # 0x7d0d0d0
.LCPI2_38:
	.dword	3689970704324546645             # 0x333568ce26dcd055
	.dword	5911064709054511                # 0x150015003a402f
	.dword	3689970704324546645             # 0x333568ce26dcd055
	.dword	5911064709054511                # 0x150015003a402f
.LCPI2_39:
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
.LCPI2_40:
	.dword	-8192                           # 0xffffffffffffe000
	.dword	0                               # 0x0
	.dword	-8192                           # 0xffffffffffffe000
	.dword	0                               # 0x0
.LCPI2_41:
	.dword	140668768878592                 # 0x7ff000000000
	.dword	0                               # 0x0
	.dword	140668768878592                 # 0x7ff000000000
	.dword	0                               # 0x0
.LCPI2_42:
	.dword	8192                            # 0x2000
	.dword	0                               # 0x0
	.dword	8192                            # 0x2000
	.dword	0                               # 0x0
.LCPI2_43:
	.dword	562941363585129                 # 0x1fffe00018069
	.dword	562941363617786                 # 0x1fffe0001fffa
	.dword	562941363585129                 # 0x1fffe00018069
	.dword	562941363617786                 # 0x1fffe0001fffa
.LCPI2_44:
	.dword	30064902195                     # 0x700020033
	.dword	21474967554                     # 0x500020002
	.dword	30064902195                     # 0x700020033
	.dword	21474967554                     # 0x500020002
.LCPI2_45:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	4259905                         # 0x410041
.LCPI2_46:
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_47:
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
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_48:
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	136                             # 0x88
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	136                             # 0x88
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
	.byte	72                              # 0x48
	.byte	200                             # 0xc8
.LCPI2_49:
	.dword	0                               # 0x0
	.dword	274877906976                    # 0x4000000020
	.dword	0                               # 0x0
	.dword	274877906976                    # 0x4000000020
.LCPI2_50:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_51:
	.dword	16843009                        # 0x1010101
	.dword	0                               # 0x0
	.dword	16843009                        # 0x1010101
	.dword	0                               # 0x0
.LCPI2_52:
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	104                             # 0x68
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	104                             # 0x68
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_53:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	65535                           # 0xffff
.LCPI2_54:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_55:
	.dword	0                               # 0x0
	.dword	2305878194122661888             # 0x2000200020002000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_56:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_57:
	.dword	0                               # 0x0
	.dword	281474976710656                 # 0x1000000000000
	.dword	0                               # 0x0
	.dword	4294967296                      # 0x100000000
.LCPI2_58:
	.half	47728                           # 0xba70
	.half	65486                           # 0xffce
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	64925                           # 0xfd9d
	.half	57430                           # 0xe056
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_59:
	.half	54768                           # 0xd5f0
	.half	44818                           # 0xaf12
	.half	46894                           # 0xb72e
	.half	32769                           # 0x8001
	.half	46384                           # 0xb530
	.half	40348                           # 0x9d9c
	.half	18275                           # 0x4763
	.half	2                               # 0x2
	.half	54768                           # 0xd5f0
	.half	44818                           # 0xaf12
	.half	46894                           # 0xb72e
	.half	32769                           # 0x8001
	.half	46894                           # 0xb72e
	.half	1                               # 0x1
	.half	46894                           # 0xb72e
	.half	32769                           # 0x8001
.LCPI2_60:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63479                           # 0xf7f7
	.half	63479                           # 0xf7f7
	.half	63479                           # 0xf7f7
	.half	63479                           # 0xf7f7
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63479                           # 0xf7f7
	.half	63479                           # 0xf7f7
	.half	63479                           # 0xf7f7
	.half	63479                           # 0xf7f7
.LCPI2_61:
	.half	24158                           # 0x5e5e
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	24158                           # 0x5e5e
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	41377                           # 0xa1a1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_62:
	.half	0                               # 0x0
	.half	26688                           # 0x6840
	.half	128                             # 0x80
	.half	18816                           # 0x4980
	.half	65504                           # 0xffe0
	.half	18499                           # 0x4843
	.half	128                             # 0x80
	.half	18816                           # 0x4980
	.half	0                               # 0x0
	.half	26688                           # 0x6840
	.half	128                             # 0x80
	.half	18816                           # 0x4980
	.half	65504                           # 0xffe0
	.half	18499                           # 0x4843
	.half	128                             # 0x80
	.half	18816                           # 0x4980
.LCPI2_63:
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_64:
	.word	32768                           # 0x8000
	.word	2147483648                      # 0x80000000
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
.LCPI2_65:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_66:
	.word	4024430559                      # 0xefdfefdf
	.word	4024430559                      # 0xefdfefdf
	.word	0                               # 0x0
	.word	4024430559                      # 0xefdfefdf
	.word	4024430559                      # 0xefdfefdf
	.word	4024430559                      # 0xefdfefdf
	.word	0                               # 0x0
	.word	4024430559                      # 0xefdfefdf
.LCPI2_67:
	.word	218952435                       # 0xd0cf2f3
	.word	218952435                       # 0xd0cf2f3
	.word	0                               # 0x0
	.word	37780028                        # 0x2407a3c
	.word	218952435                       # 0xd0cf2f3
	.word	218952435                       # 0xd0cf2f3
	.word	0                               # 0x0
	.word	37780028                        # 0x2407a3c
.LCPI2_68:
	.dword	70231305224192                  # 0x3fe000000000
	.dword	0                               # 0x0
	.dword	70231305224192                  # 0x3fe000000000
	.dword	0                               # 0x0
.LCPI2_69:
	.word	4293001184                      # 0xffe1ffe0
	.word	4293001184                      # 0xffe1ffe0
	.word	4280221727                      # 0xff1f001f
	.word	33488928                        # 0x1ff0020
	.word	4293001184                      # 0xffe1ffe0
	.word	4293001184                      # 0xffe1ffe0
	.word	4280221727                      # 0xff1f001f
	.word	33488928                        # 0x1ff0020
.LCPI2_70:
	.word	16777215                        # 0xffffff
	.word	4278190080                      # 0xff000000
	.word	0                               # 0x0
	.word	4278190080                      # 0xff000000
	.word	16777215                        # 0xffffff
	.word	4278190080                      # 0xff000000
	.word	0                               # 0x0
	.word	4278190080                      # 0xff000000
.LCPI2_71:
	.word	352256000                       # 0x14ff0000
	.word	15312896                        # 0xe9a800
	.word	503252486                       # 0x1dff0606
	.word	11670295                        # 0xb21317
	.word	352256000                       # 0x14ff0000
	.word	15312896                        # 0xe9a800
	.word	503252486                       # 0x1dff0606
	.word	11670295                        # 0xb21317
.LCPI2_72:
	.dword	1024                            # 0x400
	.dword	288230376218820608              # 0x400000004000000
	.dword	1024                            # 0x400
	.dword	288230376218820608              # 0x400000004000000
.LCPI2_73:
	.word	65537                           # 0x10001
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	65537                           # 0x10001
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_74:
	.dword	2305843009213693952             # 0x2000000000000000
	.dword	144115188075855872              # 0x200000000000000
	.dword	2305843009213693952             # 0x2000000000000000
	.dword	144115188075855872              # 0x200000000000000
.LCPI2_75:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	248                             # 0xf8
	.word	134217728                       # 0x8000000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	248                             # 0xf8
	.word	134217728                       # 0x8000000
.LCPI2_76:
	.word	65535                           # 0xffff
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	8388608                         # 0x800000
	.word	65535                           # 0xffff
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	8388608                         # 0x800000
.LCPI2_77:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	536870912                       # 0x20000000
	.dword	536870912                       # 0x20000000
.LCPI2_78:
	.dword	0                               # 0x0
	.dword	-1024                           # 0xfffffffffffffc00
	.dword	-1024                           # 0xfffffffffffffc00
	.dword	0                               # 0x0
.LCPI2_79:
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
.LCPI2_80:
	.dword	0                               # 0x0
	.dword	2147483658                      # 0x8000000a
	.dword	0                               # 0x0
	.dword	2147483658                      # 0x8000000a
.LCPI2_81:
	.dword	-70651314387747072              # 0xff04ff00ff00ff00
	.dword	-71777214294589696              # 0xff00ff00ff00ff00
	.dword	-70651314387747072              # 0xff04ff00ff00ff00
	.dword	-71777214294589696              # 0xff00ff00ff00ff00
.LCPI2_82:
	.dword	17179934585                     # 0x40000ff79
	.dword	34359738520                     # 0x800000098
	.dword	17179934666                     # 0x40000ffca
	.dword	34359738520                     # 0x800000098
.LCPI2_83:
	.dword	2                               # 0x2
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	0                               # 0x0
.LCPI2_84:
	.dword	1610612736                      # 0x60000000
	.dword	2                               # 0x2
	.dword	1610612736                      # 0x60000000
	.dword	2                               # 0x2
.LCPI2_85:
	.dword	34359738318                     # 0x7ffffffce
	.dword	25769803775                     # 0x5ffffffff
	.dword	34359738318                     # 0x7ffffffce
	.dword	25769803775                     # 0x5ffffffff
.LCPI2_86:
	.dword	478                             # 0x1de
	.dword	28                              # 0x1c
	.dword	478                             # 0x1de
	.dword	28                              # 0x1c
.LCPI2_87:
	.dword	1095216725760                   # 0xff0000ff00
	.dword	1095216660735                   # 0xff000000ff
	.dword	1095216725760                   # 0xff0000ff00
	.dword	1095216660735                   # 0xff000000ff
.LCPI2_88:
	.dword	70269961244037                  # 0x3fe900140d85
	.dword	70274256237389                  # 0x3fea0014734d
	.dword	70269961244037                  # 0x3fe900140d85
	.dword	70274256237389                  # 0x3fea0014734d
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 224
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	lu12i.w	$a0, 65536
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 128
	xvssrarni.b.h	$xr0, $xr0, 4
	xvst	$xr0, $sp, 160
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 128
	xvssrarni.b.h	$xr0, $xr0, 15
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvssrarni.b.h	$xr1, $xr0, 8
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.b.h	$xr1, $xr0, 11
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 128
	xvrepli.d	$xr0, 8
	xvssrarni.b.h	$xr1, $xr0, 11
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvldi	$xr1, -1664
	xvssrarni.b.h	$xr0, $xr1, 14
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.b.h	$xr0, $xr1, 0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.h.w	$xr1, $xr0, 26
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 128
	lu52i.d	$a0, $zero, -2048
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.h.w	$xr1, $xr0, 4
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.h.w	$xr0, $xr0, 7
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 128
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvssrarni.h.w	$xr1, $xr0, 20
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.h.w	$xr0, $xr0, 2
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.h.w	$xr0, $xr0, 17
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.h.w	$xr0, $xr0, 12
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.h.w	$xr0, $xr0, 9
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvssrarni.h.w	$xr0, $xr1, 29
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	pcalau12i	$a1, %pc_hi20(.LCPI2_17)
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_17)
	xvst	$xr2, $sp, 32                   # 32-byte Folded Spill
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 128
	xvori.b	$xr0, $xr2, 0
	xvssrarni.h.w	$xr0, $xr1, 4
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 128
	xvssrarni.w.d	$xr1, $xr0, 30
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.w.d	$xr0, $xr1, 43
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvssrarni.w.d	$xr0, $xr1, 40
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.w.d	$xr0, $xr0, 3
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.w.d	$xr1, $xr0, 30
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvssrarni.w.d	$xr0, $xr1, 39
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.w.d	$xr1, $xr0, 17
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.w.d	$xr0, $xr0, 50
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	lu12i.w	$a0, 256
	ori	$a0, $a0, 32
	xvreplgr2vr.w	$xr1, $a0
	xvssrarni.w.d	$xr1, $xr0, 62
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_30)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.w.d	$xr1, $xr0, 45
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_32)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.d.q	$xr0, $xr1, 93
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -11
	pcalau12i	$a1, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_33)
	ori	$a0, $a0, 3932
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 128
	xvssrarni.d.q	$xr0, $xr0, 108
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_36)
	xvst	$xr0, $sp, 128
	xvssrarni.d.q	$xr2, $xr1, 48
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvssrarni.d.q	$xr0, $xr1, 23
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcalau12i	$a1, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_37)
	pcalau12i	$a1, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a1, %pc_lo12(.LCPI2_38)
	lu52i.d	$a0, $a0, 2047
	xvreplgr2vr.d	$xr2, $a0
	xvst	$xr2, $sp, 128
	xvssrarni.d.q	$xr1, $xr0, 2
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 128
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.d.q	$xr0, $xr1, 1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	xvst	$xr0, $sp, 128
	ori	$a0, $zero, 2
	lu32i.d	$a0, -2
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.d.q	$xr1, $xr0, 84
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	lu12i.w	$a0, 31
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 65537
	xvreplgr2vr.d	$xr1, $a0
	xvssrarni.d.q	$xr1, $xr0, 121
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_43)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.d.q	$xr0, $xr1, 100
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.d.q	$xr0, $xr0, 91
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvrepli.d	$xr0, 19
	xvssrarni.d.q	$xr1, $xr0, 106
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.d.q	$xr0, $xr0, 54
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 32768
	lu32i.d	$a0, 2048
	pcalau12i	$a1, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_44)
	lu52i.d	$a0, $a0, 320
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 128
	xvssrarni.d.q	$xr0, $xr0, 38
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_46)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.bu.h	$xr1, $xr0, 2
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 395
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.bu.h	$xr0, $xr0, 1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 404
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvrepli.h	$xr0, 22
	xvssrarni.bu.h	$xr0, $xr1, 9
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_47)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvssrarni.bu.h	$xr1, $xr0, 11
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 422
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvssrarni.bu.h	$xr1, $xr0, 8
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 431
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_50)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.bu.h	$xr1, $xr0, 3
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 440
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_52)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.bu.h	$xr0, $xr1, 15
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 449
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_54)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.hu.w	$xr1, $xr0, 0
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 458
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_56)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.hu.w	$xr1, $xr0, 3
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 467
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_57)
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_59)
	xvst	$xr0, $sp, 128
	xvssrarni.hu.w	$xr2, $xr1, 17
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 476
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_60)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvssrarni.hu.w	$xr1, $xr0, 26
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 485
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.hu.w	$xr0, $xr0, 6
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 494
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.hu.w	$xr0, $xr0, 16
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 503
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvssrarni.hu.w	$xr0, $xr1, 6
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 512
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_61)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvssrarni.hu.w	$xr0, $xr1, 4
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 521
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_63)
	xvld	$xr2, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 128
	xvssrarni.hu.w	$xr1, $xr0, 6
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 530
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	lu12i.w	$a0, 1375
	ori	$a0, $a0, 4011
	lu32i.d	$a0, 327765
	lu52i.d	$a0, $a0, 5
	xvreplgr2vr.d	$xr0, $a0
	xvssrarni.wu.d	$xr0, $xr0, 12
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 539
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvssrarni.wu.d	$xr1, $xr1, 59
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 548
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.wu.d	$xr0, $xr0, 39
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 557
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 566
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_64)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvssrarni.wu.d	$xr1, $xr0, 43
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 575
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.wu.d	$xr0, $xr0, 42
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 584
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_65)
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_66)
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_67)
	xvst	$xr0, $sp, 128
	xvssrarni.wu.d	$xr2, $xr1, 13
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 593
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvssrarni.wu.d	$xr0, $xr0, 44
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 602
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_68)
	pcalau12i	$a0, %pc_hi20(.LCPI2_69)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_69)
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvssrarni.wu.d	$xr0, $xr1, 43
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 611
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_70)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_70)
	pcalau12i	$a0, %pc_hi20(.LCPI2_71)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_71)
	xvld	$xr2, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 128
	xvssrarni.wu.d	$xr1, $xr0, 59
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 620
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_72)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_72)
	pcalau12i	$a0, %pc_hi20(.LCPI2_73)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_73)
	xvst	$xr0, $sp, 128
	xvrepli.w	$xr0, 1
	xvssrarni.wu.d	$xr0, $xr1, 6
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 629
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_74)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_74)
	pcalau12i	$a0, %pc_hi20(.LCPI2_75)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_75)
	pcalau12i	$a0, %pc_hi20(.LCPI2_76)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_76)
	xvst	$xr0, $sp, 128
	xvssrarni.wu.d	$xr2, $xr1, 30
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 638
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_77)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_77)
	pcalau12i	$a0, %pc_hi20(.LCPI2_78)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_78)
	xvst	$xr0, $sp, 128
	xvssrarni.du.q	$xr1, $xr1, 35
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 647
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_79)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_79)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvssrarni.du.q	$xr1, $xr0, 115
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 656
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_80)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_80)
	pcalau12i	$a0, %pc_hi20(.LCPI2_81)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_81)
	pcalau12i	$a0, %pc_hi20(.LCPI2_82)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_82)
	xvst	$xr0, $sp, 128
	xvssrarni.du.q	$xr2, $xr1, 68
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 665
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	lu12i.w	$a0, -144
	ori	$a0, $a0, 342
	xvreplgr2vr.d	$xr0, $a0
	xvrepli.w	$xr1, 255
	xvssrarni.du.q	$xr1, $xr0, 116
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 674
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_83)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_83)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 128
	xvssrarni.du.q	$xr1, $xr0, 69
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 683
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_84)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_84)
	pcalau12i	$a0, %pc_hi20(.LCPI2_85)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_85)
	pcalau12i	$a0, %pc_hi20(.LCPI2_86)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_86)
	xvst	$xr0, $sp, 128
	xvssrarni.du.q	$xr2, $xr1, 68
	xvst	$xr2, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 692
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_87)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_87)
	pcalau12i	$a0, %pc_hi20(.LCPI2_88)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_88)
	xvld	$xr2, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 128
	xvssrarni.du.q	$xr1, $xr0, 23
	xvst	$xr1, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 701
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -224
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvssrarni.c"
	.size	.L.str.5, 135

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
