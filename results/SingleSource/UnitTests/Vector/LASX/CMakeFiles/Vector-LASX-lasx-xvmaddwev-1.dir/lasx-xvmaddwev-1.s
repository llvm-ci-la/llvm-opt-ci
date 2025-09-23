	.file	"lasx-xvmaddwev-1.c"
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
	.dword	-281470681743360                # 0xffff000100000000
	.dword	9218868437227405311             # 0x7fefffffffffffff
	.dword	0                               # 0x0
	.dword	9218868437227405312             # 0x7ff0000000000000
.LCPI2_1:
	.dword	-1970354902204424               # 0xfff8fff8fff8fff8
	.dword	0                               # 0x0
	.dword	-1970354902204424               # 0xfff8fff8fff8fff8
	.dword	0                               # 0x0
.LCPI2_2:
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
.LCPI2_3:
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
	.byte	128                             # 0x80
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
	.byte	128                             # 0x80
.LCPI2_4:
	.byte	49                              # 0x31
	.byte	100                             # 0x64
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	49                              # 0x31
	.byte	100                             # 0x64
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
.LCPI2_5:
	.dword	16248                           # 0x3f78
	.dword	4160288760                      # 0xf7f8f7f8
	.dword	16248                           # 0x3f78
	.dword	4160288760                      # 0xf7f8f7f8
.LCPI2_6:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	95                              # 0x5f
	.byte	128                             # 0x80
	.byte	1                               # 0x1
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	95                              # 0x5f
	.byte	128                             # 0x80
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_7:
	.dword	-288230376151703680             # 0xfc00000000001f80
	.dword	13523172615788152               # 0x300b40fc001678
	.dword	-288230376151703680             # 0xfc00000000001f80
	.dword	13523172615788152               # 0x300b40fc001678
.LCPI2_8:
	.byte	72                              # 0x48
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	252                             # 0xfc
	.byte	56                              # 0x38
	.byte	252                             # 0xfc
	.byte	56                              # 0x38
	.byte	252                             # 0xfc
	.byte	120                             # 0x78
	.byte	255                             # 0xff
	.byte	24                              # 0x18
	.byte	2                               # 0x2
	.byte	72                              # 0x48
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	252                             # 0xfc
	.byte	56                              # 0x38
	.byte	252                             # 0xfc
	.byte	56                              # 0x38
	.byte	252                             # 0xfc
	.byte	120                             # 0x78
	.byte	255                             # 0xff
	.byte	24                              # 0x18
	.byte	2                               # 0x2
.LCPI2_9:
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	248                             # 0xf8
	.byte	1                               # 0x1
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	248                             # 0xf8
	.byte	1                               # 0x1
	.byte	120                             # 0x78
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	248                             # 0xf8
	.byte	1                               # 0x1
	.byte	112                             # 0x70
	.byte	0                               # 0x0
	.byte	248                             # 0xf8
	.byte	1                               # 0x1
	.byte	120                             # 0x78
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	24                              # 0x18
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
.LCPI2_10:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	64512                           # 0xfc00
	.half	64568                           # 0xfc38
	.half	64568                           # 0xfc38
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	64512                           # 0xfc00
	.half	64568                           # 0xfc38
	.half	64568                           # 0xfc38
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_11:
	.dword	-398196736                      # 0xffffffffe8440000
	.dword	0                               # 0x0
	.dword	-398196736                      # 0xffffffffe8440000
	.dword	0                               # 0x0
.LCPI2_12:
	.dword	-4503668347895825               # 0xffefffefffefffef
	.dword	-4503672641814528               # 0xffefffef00000000
	.dword	-4503668347895825               # 0xffefffefffefffef
	.dword	-4503672641814528               # 0xffefffef00000000
.LCPI2_13:
	.half	61407                           # 0xefdf
	.half	61407                           # 0xefdf
	.half	61407                           # 0xefdf
	.half	61407                           # 0xefdf
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	61407                           # 0xefdf
	.half	61407                           # 0xefdf
	.half	61407                           # 0xefdf
	.half	61407                           # 0xefdf
	.half	61407                           # 0xefdf
	.half	61407                           # 0xefdf
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	61407                           # 0xefdf
	.half	61407                           # 0xefdf
.LCPI2_14:
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
	.half	57568                           # 0xe0e0
.LCPI2_15:
	.dword	0                               # 0x0
	.dword	-2061582336481                  # 0xfffffe20001dfe1f
	.dword	0                               # 0x0
	.dword	-2061582336481                  # 0xfffffe20001dfe1f
.LCPI2_16:
	.dword	56090694305157760               # 0xc7463075439280
	.dword	-430363892961946880             # 0xfa070a51cbd95300
	.dword	98070388487198208               # 0x15c6a7facc39600
	.dword	-1441972185152356352            # 0xebfd15f000000000
.LCPI2_17:
	.word	2519439056                      # 0x962b96d0
	.word	4225808486                      # 0xfbe0b866
	.word	582374336                       # 0x22b653c0
	.word	337148536                       # 0x14187a78
	.word	745608896                       # 0x2c7116c0
	.word	1151611662                      # 0x44a4330e
	.word	0                               # 0x0
	.word	4184696648                      # 0xf96d6748
.LCPI2_18:
	.word	4283697792                      # 0xff540a80
	.word	8400848                         # 0x802fd0
	.word	606212864                       # 0x24221300
	.word	4112566208                      # 0xf520c7c0
	.word	4287567360                      # 0xff8f1600
	.word	24118424                        # 0x1700498
	.word	0                               # 0x0
	.word	3959231984                      # 0xebfd15f0
.LCPI2_19:
	.dword	0                               # 0x0
	.dword	384306801698406400              # 0x555550000000000
	.dword	0                               # 0x0
	.dword	384306801698406400              # 0x555550000000000
.LCPI2_20:
	.word	5636011                         # 0x55ffab
	.word	3227844693                      # 0xc0650055
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	5636011                         # 0x55ffab
	.word	3227844693                      # 0xc0650055
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_21:
	.dword	-9181854394037239803            # 0x80938013800d0005
	.dword	-9187764363510022144            # 0x807e80fd80fe0000
	.dword	-9181854394037207038            # 0x80938013800d8002
	.dword	-9187764363509989123            # 0x807e80fd80fe80fd
.LCPI2_22:
	.word	8191                            # 0x1fff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	8191                            # 0x1fff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI2_23:
	.dword	6155482642557676168             # 0x556caad9aabbaa88
	.dword	319261747908                    # 0x4a557baac4
	.dword	6155482642557676168             # 0x556caad9aabbaa88
	.dword	319261747908                    # 0x4a557baac4
.LCPI2_24:
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483648                      # 0x80000000
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_25:
	.dword	4575515929860898816             # 0x3f7f7f7eff800000
	.dword	0                               # 0x0
	.dword	4575515929860898816             # 0x3f7f7f7eff800000
	.dword	0                               # 0x0
.LCPI2_26:
	.word	2147483647                      # 0x7fffffff
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483647                      # 0x7fffffff
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_27:
	.dword	-36170084271521793              # 0xff7f7f7fff7fffff
	.dword	0                               # 0x0
	.dword	-36170084271521793              # 0xff7f7f7fff7fffff
	.dword	0                               # 0x0
.LCPI2_28:
	.dword	-36                             # 0xffffffffffffffdc
	.dword	1                               # 0x1
	.dword	-4294967331                     # 0xfffffffeffffffdd
	.dword	1                               # 0x1
.LCPI2_29:
	.word	0                               # 0x0
	.word	2817962                         # 0x2affaa
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_30:
	.dword	4295688203                      # 0x1000b000b
	.dword	281474976710656                 # 0x1000000000000
	.dword	4295688203                      # 0x1000b000b
	.dword	281474976710656                 # 0x1000000000000
.LCPI2_31:
	.word	65537                           # 0x10001
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	65536                           # 0x10000
	.word	65537                           # 0x10001
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	65536                           # 0x10000
.LCPI2_32:
	.word	10                              # 0xa
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	10                              # 0xa
.LCPI2_33:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3584                            # 0xe00
	.word	3584                            # 0xe00
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3584                            # 0xe00
	.word	3584                            # 0xe00
.LCPI2_34:
	.dword	6935570969775833088             # 0x6040190d00000000
	.dword	1382586032369908536             # 0x132feeabd2d33b38
	.dword	6935570970314963576             # 0x6040190d20227a78
	.dword	6924284427082140881             # 0x6018000000000cd1
.LCPI2_35:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1515874151                      # 0x5a5a6767
	.word	250682085                       # 0xef11ae5
	.word	67391311                        # 0x4044f4f
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	538970120                       # 0x20200808
.LCPI2_36:
	.dword	6935570969775833088             # 0x6040190d00000000
	.dword	1382586020242915328             # 0x132feea900000000
	.dword	6935570969775833088             # 0x6040190d00000000
	.dword	6924284427082140881             # 0x6018000000000cd1
.LCPI2_37:
	.dword	68182605824                     # 0xfe0000000
	.dword	0                               # 0x0
	.dword	68182605824                     # 0xfe0000000
	.dword	0                               # 0x0
.LCPI2_38:
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_39:
	.word	1065353216                      # 0x3f800000
	.word	4278124286                      # 0xfefefefe
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1065353216                      # 0x3f800000
	.word	4278124286                      # 0xfefefefe
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_40:
	.word	280                             # 0x118
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	280                             # 0x118
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_41:
	.dword	140735340838911                 # 0x7fff7fff7fff
	.dword	9223092750163869695             # 0x7fff01fd7fff7fff
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
	.dword	0                               # 0x0
.LCPI2_42:
	.dword	65535                           # 0xffff
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	65408                           # 0xff80
	.dword	65535                           # 0xffff
.LCPI2_43:
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
	.dword	0                               # 0x0
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
	.dword	0                               # 0x0
.LCPI2_44:
	.dword	281479271743489                 # 0x1000100010001
	.dword	281479271743489                 # 0x1000100010001
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_45:
	.dword	5617591427834708673             # 0x4df5b1a3ed5e02c1
	.dword	1190737988959991777             # 0x108659e46485f7e1
	.dword	5617591427834708673             # 0x4df5b1a3ed5e02c1
	.dword	1190737988959991777             # 0x108659e46485f7e1
.LCPI2_46:
	.dword	1589746410486497280             # 0x160fe9f000000000
	.dword	1190750795280823700             # 0x1086658a18ba3594
	.dword	1589746410486497280             # 0x160fe9f000000000
	.dword	1190750795280823700             # 0x1086658a18ba3594
.LCPI2_47:
	.dword	281470681743360                 # 0xffff00000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_48:
	.dword	0                               # 0x0
	.dword	9218868437227405312             # 0x7ff0000000000000
	.dword	0                               # 0x0
	.dword	9218868437227405312             # 0x7ff0000000000000
.LCPI2_49:
	.dword	-144115188075855872             # 0xfe00000000000000
	.dword	33554431                        # 0x1ffffff
	.dword	-144115188075855872             # 0xfe00000000000000
	.dword	33554431                        # 0x1ffffff
.LCPI2_50:
	.dword	144115188042301440              # 0x1fffffffe000000
	.dword	0                               # 0x0
	.dword	144115188042301440              # 0x1fffffffe000000
	.dword	0                               # 0x0
.LCPI2_51:
	.dword	562941363552257                 # 0x1fffe00010001
	.dword	562941363552255                 # 0x1fffe0000ffff
	.dword	562941363552257                 # 0x1fffe00010001
	.dword	562941363552255                 # 0x1fffe0000ffff
.LCPI2_52:
	.dword	0                               # 0x0
	.dword	140183437606783                 # 0x7f7f00007f7f
	.dword	0                               # 0x0
	.dword	140183437606783                 # 0x7f7f00007f7f
.LCPI2_53:
	.dword	2863398911                      # 0xaaabffff
	.dword	0                               # 0x0
	.dword	2863398911                      # 0xaaabffff
	.dword	0                               # 0x0
.LCPI2_54:
	.dword	-9115547408997019664            # 0x817f11ed81800ff0
	.dword	254                             # 0xfe
	.dword	-9115547408997019664            # 0x817f11ed81800ff0
	.dword	254                             # 0xfe
.LCPI2_55:
	.dword	4286644241                      # 0xff810011
	.dword	0                               # 0x0
	.dword	4286644241                      # 0xff810011
	.dword	0                               # 0x0
.LCPI2_56:
	.dword	65281                           # 0xff01
	.dword	0                               # 0x0
	.dword	65281                           # 0xff01
	.dword	0                               # 0x0
.LCPI2_57:
	.dword	-72057594021150721              # 0xff00000000ffffff
	.dword	-72057594037927936              # 0xff00000000000000
	.dword	-72057594021150721              # 0xff00000000ffffff
	.dword	-72057594037927936              # 0xff00000000000000
.LCPI2_58:
	.dword	17660905525264                  # 0x101000001010
	.dword	0                               # 0x0
	.dword	17660905525264                  # 0x101000001010
	.dword	0                               # 0x0
.LCPI2_59:
	.dword	4503668347895824                # 0x10001000100010
	.dword	1048592                         # 0x100010
	.dword	4503668347895824                # 0x10001000100010
	.dword	1048592                         # 0x100010
.LCPI2_60:
	.dword	0                               # 0x0
	.dword	9223372034707292161             # 0x7fffffff80000001
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	-9223372036854775808            # 0x8000000000000000
.LCPI2_61:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_62:
	.dword	34359738318                     # 0x7ffffffce
	.dword	25769803775                     # 0x5ffffffff
	.dword	34359738318                     # 0x7ffffffce
	.dword	25769803775                     # 0x5ffffffff
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
	addi.d	$fp, $sp, 288
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	xvrepli.b	$xr1, 0
	xvst	$xr1, $sp, 160                  # 32-byte Folded Spill
	xvmaddwev.h.b	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 28
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr2, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	xvrepli.b	$xr0, 8
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.h.b	$xr1, $xr0, $xr2
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 39
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_4)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvmaddwev.h.b	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 50
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.h.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 61
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 192
	xvmaddwev.h.b	$xr3, $xr2, $xr1
	xvst	$xr3, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 72
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.h.b	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 83
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.h.b	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 94
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.w.h	$xr1, $xr1, $xr1
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 105
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.w.h	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.w.h	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 127
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvmaddwev.w.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 138
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.w.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 149
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 160
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_18)
	xvst	$xr0, $sp, 192
	xvmaddwev.d.w	$xr2, $xr2, $xr1
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 171
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvmaddwev.d.w	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 182
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_20)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.d.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 193
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.d.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 204
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 192
	xvmaddwev.d.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 192
	xvmaddwev.d.w	$xr2, $xr1, $xr1
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 226
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.d.w	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 237
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.d.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 248
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_32)
	xvst	$xr0, $sp, 192
	xvmaddwev.d.w	$xr1, $xr2, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 259
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 270
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.d.w	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 281
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_36)
	xvst	$xr0, $sp, 192
	xvrepli.d	$xr0, 8
	xvmaddwev.d.w	$xr2, $xr0, $xr1
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 292
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.d.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 303
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.d.w	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.q.d	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 325
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	xvst	$xr0, $sp, 192
	xvrepli.h	$xr1, -196
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.q.d	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 336
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_44)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.q.d	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 347
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.q.d	$xr1, $xr1, $xr1
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 358
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	lu12i.w	$a0, 4
	ori	$a0, $a0, 3937
	lu32i.d	$a0, 24929
	xvreplgr2vr.d	$xr1, $a0
	lu12i.w	$a0, 398868
	ori	$a0, $a0, 3937
	lu32i.d	$a0, 90465
	lu52i.d	$a0, $a0, -490
	xvreplgr2vr.d	$xr2, $a0
	xvmaddwev.q.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 369
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_48)
	xvld	$xr2, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvld	$xr2, $sp, 128                  # 32-byte Folded Reload
	xvmaddwev.q.d	$xr1, $xr0, $xr2
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 380
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_49)
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_50)
	xvst	$xr0, $sp, 192
	xvldi	$xr0, -1777
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvmaddwev.q.d	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 391
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_51)
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_52)
	xvld	$xr2, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 192
	xvmaddwev.q.d	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 402
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_53)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.q.d	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 424
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_54)
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_56)
	xvst	$xr0, $sp, 192
	xvrepli.w	$xr0, 255
	xvmaddwev.q.d	$xr2, $xr1, $xr0
	xvst	$xr2, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 435
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 446
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_57)
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.q.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 457
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvmaddwev.q.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 468
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_58)
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_59)
	xvst	$xr0, $sp, 192
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvmaddwev.q.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 479
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_60)
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_61)
	xvst	$xr0, $sp, 192
	lu52i.d	$a0, $zero, -2048
	xvreplgr2vr.d	$xr0, $a0
	xvmaddwev.q.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 490
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_62)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 192
	xvmaddwev.q.d	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 224
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 32
	ori	$a4, $zero, 501
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -288
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvmaddwev-1.c"
	.size	.L.str.5, 137

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
