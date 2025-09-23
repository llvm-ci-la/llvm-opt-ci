	.file	"lasx-xvpackev.c"
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
	.dword	54043195541028864               # 0xc0000000c00000
	.dword	36029896538980608               # 0x80010000800100
	.dword	54043195541028864               # 0xc0000000c00000
	.dword	36029896538980608               # 0x80010000800100
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	127                             # 0x7f
.LCPI2_2:
	.byte	0                               # 0x0
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
	.byte	1                               # 0x1
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
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_3:
	.dword	-71778313806347521              # 0xff00fe00feff02ff
	.dword	33554175                        # 0x1fffeff
	.dword	278180736729855                 # 0xfd00ffff02ff
	.dword	16711935                        # 0xff00ff
.LCPI2_4:
	.byte	2                               # 0x2
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	254                             # 0xfe
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	253                             # 0xfd
	.byte	1                               # 0x1
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
.LCPI2_5:
	.dword	31885837212928                  # 0x1d0000001d00
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_6:
	.byte	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	29                              # 0x1d
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
.LCPI2_7:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
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
	.byte	1                               # 0x1
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
.LCPI2_8:
	.dword	7871215978168089323             # 0x6d3c2d3a89167aeb
	.dword	149782689484576                 # 0x883a00000f20
	.dword	-983596327218562080             # 0xf259905a09c23be0
	.dword	27766963627674                  # 0x19410000e69a
.LCPI2_9:
	.half	31467                           # 0x7aeb
	.half	49783                           # 0xc277
	.half	11578                           # 0x2d3a
	.half	28027                           # 0x6d7b
	.half	3872                            # 0xf20
	.half	12506                           # 0x30da
	.half	34874                           # 0x883a
	.half	20773                           # 0x5125
	.half	15328                           # 0x3be0
	.half	58345                           # 0xe3e9
	.half	36954                           # 0x905a
	.half	8659                            # 0x21d3
	.half	59034                           # 0xe69a
	.half	3463                            # 0xd87
	.half	6465                            # 0x1941
	.half	1096                            # 0x448
.LCPI2_10:
	.half	35094                           # 0x8916
	.half	30776                           # 0x7838
	.half	27964                           # 0x6d3c
	.half	20755                           # 0x5113
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2498                            # 0x9c2
	.half	40709                           # 0x9f05
	.half	62041                           # 0xf259
	.half	33271                           # 0x81f7
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_11:
	.dword	-7038785682407424               # 0xffe6fe42ffc00000
	.dword	279284543454754                 # 0xfe020000fe22
	.dword	-18295869224779776              # 0xffbf0000fe000000
	.dword	0                               # 0x0
.LCPI2_12:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65090                           # 0xfe42
	.half	65353                           # 0xff49
	.half	65058                           # 0xfe22
	.half	65253                           # 0xfee5
	.half	65026                           # 0xfe02
	.half	65026                           # 0xfe02
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_13:
	.half	65472                           # 0xffc0
	.half	20351                           # 0x4f7f
	.half	65510                           # 0xffe6
	.half	20351                           # 0x4f7f
	.half	0                               # 0x0
	.half	20352                           # 0x4f80
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65024                           # 0xfe00
	.half	0                               # 0x0
	.half	65471                           # 0xffbf
	.half	20351                           # 0x4f7f
	.half	0                               # 0x0
	.half	20352                           # 0x4f80
	.half	0                               # 0x0
	.half	20352                           # 0x4f80
.LCPI2_14:
	.dword	23925377309802497               # 0x550000ffab0001
	.dword	-281470681808896                # 0xffff0000ffff0000
	.dword	23925377309802497               # 0x550000ffab0001
	.dword	-281470681808896                # 0xffff0000ffff0000
.LCPI2_15:
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_16:
	.half	65451                           # 0xffab
	.half	85                              # 0x55
	.half	85                              # 0x55
	.half	49253                           # 0xc065
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65451                           # 0xffab
	.half	85                              # 0x55
	.half	85                              # 0x55
	.half	49253                           # 0xc065
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_17:
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
.LCPI2_18:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_19:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_20:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	3                               # 0x3
	.dword	1                               # 0x1
.LCPI2_21:
	.dword	-24769793669136384              # 0xffa80000ff310000
	.dword	70087269208817664               # 0xf9000000780000
	.dword	-70650214872252416              # 0xff050000ff3c0000
	.dword	-5066549575811072               # 0xffee0000004c0000
.LCPI2_22:
	.half	65329                           # 0xff31
	.half	206                             # 0xce
	.half	65448                           # 0xffa8
	.half	87                              # 0x57
	.half	120                             # 0x78
	.half	32888                           # 0x8078
	.half	249                             # 0xf9
	.half	33017                           # 0x80f9
	.half	65340                           # 0xff3c
	.half	195                             # 0xc3
	.half	65285                           # 0xff05
	.half	250                             # 0xfa
	.half	76                              # 0x4c
	.half	32844                           # 0x804c
	.half	65518                           # 0xffee
	.half	32785                           # 0x8011
.LCPI2_23:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
.LCPI2_24:
	.dword	281470681743360                 # 0xffff00000000
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	281470681743360                 # 0xffff00000000
	.dword	281470681808895                 # 0xffff0000ffff
.LCPI2_25:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	255                             # 0xff
.LCPI2_26:
	.dword	-72057594037927936              # 0xff00000000000000
	.dword	-288511846833520640             # 0xfbff0000ffff0000
	.dword	-72057594037927936              # 0xff00000000000000
	.dword	-288511846833520640             # 0xfbff0000ffff0000
.LCPI2_27:
	.half	0                               # 0x0
	.half	65408                           # 0xff80
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	64511                           # 0xfbff
	.half	16863                           # 0x41df
	.half	0                               # 0x0
	.half	65408                           # 0xff80
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	64511                           # 0xfbff
	.half	16863                           # 0x41df
.LCPI2_28:
	.dword	281457796907000                 # 0xfffc0000fff8
	.dword	0                               # 0x0
	.dword	281457796907000                 # 0xfffc0000fff8
	.dword	0                               # 0x0
.LCPI2_29:
	.half	65528                           # 0xfff8
	.half	2051                            # 0x803
	.half	65532                           # 0xfffc
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	2048                            # 0x800
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65528                           # 0xfff8
	.half	2051                            # 0x803
	.half	65532                           # 0xfffc
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	2048                            # 0x800
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_30:
	.dword	-107366121346                   # 0xffffffe7007b007e
	.dword	-107374182400                   # 0xffffffe700000000
	.dword	-107366121346                   # 0xffffffe7007b007e
	.dword	-107374182400                   # 0xffffffe700000000
.LCPI2_31:
	.word	8061054                         # 0x7b007e
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	8061054                         # 0x7b007e
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_32:
	.dword	0                               # 0x0
	.dword	65535                           # 0xffff
	.dword	0                               # 0x0
	.dword	65408                           # 0xff80
.LCPI2_33:
	.dword	65535                           # 0xffff
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	65408                           # 0xff80
	.dword	65535                           # 0xffff
.LCPI2_34:
	.dword	143554428555755520              # 0x1fe01fe00000000
	.dword	0                               # 0x0
	.dword	143554428589179390              # 0x1fe01fe01fe01fe
	.dword	0                               # 0x0
.LCPI2_35:
	.dword	143554428555755520              # 0x1fe01fe00000000
	.dword	143554428589179390              # 0x1fe01fe01fe01fe
	.dword	143554428589179390              # 0x1fe01fe01fe01fe
	.dword	143554428589179390              # 0x1fe01fe01fe01fe
.LCPI2_36:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_37:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_38:
	.dword	137                             # 0x89
	.dword	44384912                        # 0x2a54290
	.dword	22338692                        # 0x154dc84
	.dword	44384912                        # 0x2a54290
.LCPI2_39:
	.dword	137                             # 0x89
	.dword	0                               # 0x0
	.dword	22338692                        # 0x154dc84
	.dword	0                               # 0x0
.LCPI2_40:
	.dword	44384912                        # 0x2a54290
	.dword	0                               # 0x0
	.dword	44384912                        # 0x2a54290
	.dword	0                               # 0x0
.LCPI2_41:
	.dword	70231305224192                  # 0x3fe000000000
	.dword	0                               # 0x0
	.dword	70231305224192                  # 0x3fe000000000
	.dword	0                               # 0x0
.LCPI2_42:
	.dword	0                               # 0x0
	.dword	-2061582336481                  # 0xfffffe20001dfe1f
	.dword	0                               # 0x0
	.dword	-2061582336481                  # 0xfffffe20001dfe1f
.LCPI2_43:
	.dword	4286119936                      # 0xff790000
	.dword	0                               # 0x0
	.dword	4286119936                      # 0xff790000
	.dword	0                               # 0x0
.LCPI2_44:
	.dword	4286119936                      # 0xff790000
	.dword	4287168512                      # 0xff890000
	.dword	4286119936                      # 0xff790000
	.dword	4287168512                      # 0xff890000
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
	addi.d	$fp, $sp, 192
	bstrins.d	$sp, $zero, 4, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 96
	lu12i.w	$a0, 4096
	xvreplgr2vr.d	$xr0, $a0
	lu32i.d	$a0, 4
	xvreplgr2vr.d	$xr1, $a0
	xvpackev.b	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvldi	$xr0, -1697
	xvst	$xr0, $sp, 96
	xvrepli.b	$xr0, -1
	xvldi	$xr1, -1777
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	xvpackev.b	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 96
	xvpackev.b	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 96
	xvpackev.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvpackev.b	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvpackev.b	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvpackev.b	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 96
	xvpackev.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 96
	xvpackev.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 96
	xvpackev.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 96
	xvpackev.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvpackev.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvpackev.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvpackev.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr0, $sp, 96
	xvpackev.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_25)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvpackev.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvpackev.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvpackev.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvpackev.w	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 512
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvpackev.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 96
	xvrepli.w	$xr0, -25
	xvpackev.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_33)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvpackev.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_35)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvpackev.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_37)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvpackev.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_40)
	xvst	$xr0, $sp, 96
	xvpackev.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 96
	xvpackev.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvpackev.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_44)
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvpackev.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -192
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvpackev.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
