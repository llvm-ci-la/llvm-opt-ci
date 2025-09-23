	.file	"lasx-xvaddwev-1.c"
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
	.dword	-3940881601003573               # 0xfff1ffca0011ffcb
	.dword	4784834087026514                # 0x10ffc80010ff52
	.dword	-3940881601003573               # 0xfff1ffca0011ffcb
	.dword	4784834087026514                # 0x10ffc80010ff52
.LCPI2_1:
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	97                              # 0x61
	.byte	136                             # 0x88
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	224                             # 0xe0
	.byte	97                              # 0x61
	.byte	136                             # 0x88
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_2:
	.dword	-476741369984                   # 0xffffff90ffffff80
	.dword	0                               # 0x0
	.dword	-476741369984                   # 0xffffff90ffffff80
	.dword	0                               # 0x0
.LCPI2_3:
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	144                             # 0x90
	.byte	254                             # 0xfe
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
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	144                             # 0x90
	.byte	254                             # 0xfe
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
.LCPI2_4:
	.dword	5                               # 0x5
	.dword	0                               # 0x0
	.dword	5                               # 0x5
	.dword	0                               # 0x0
.LCPI2_5:
	.dword	35                              # 0x23
	.dword	0                               # 0x0
	.dword	35                              # 0x23
	.dword	0                               # 0x0
.LCPI2_6:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-16044322776809414              # 0xffc6ffc6003a003a
	.dword	-1                              # 0xffffffffffffffff
	.dword	-16044322776809414              # 0xffc6ffc6003a003a
.LCPI2_7:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	58                              # 0x3a
	.byte	254                             # 0xfe
	.byte	58                              # 0x3a
	.byte	254                             # 0xfe
	.byte	198                             # 0xc6
	.byte	1                               # 0x1
	.byte	198                             # 0xc6
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	58                              # 0x3a
	.byte	254                             # 0xfe
	.byte	58                              # 0x3a
	.byte	254                             # 0xfe
	.byte	198                             # 0xc6
	.byte	1                               # 0x1
	.byte	198                             # 0xc6
	.byte	1                               # 0x1
.LCPI2_8:
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
.LCPI2_9:
	.dword	17                              # 0x11
	.dword	9                               # 0x9
	.dword	17                              # 0x11
	.dword	9                               # 0x9
.LCPI2_10:
	.byte	8                               # 0x8
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
	.byte	8                               # 0x8
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
.LCPI2_11:
	.dword	35184642666004496               # 0x7d003effa80010
	.dword	35184638384996414               # 0x7d003e007d003e
	.dword	35184642666004496               # 0x7d003effa80010
	.dword	35184638384996414               # 0x7d003e007d003e
.LCPI2_12:
	.byte	16                              # 0x10
	.byte	115                             # 0x73
	.byte	168                             # 0xa8
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
	.byte	16                              # 0x10
	.byte	115                             # 0x73
	.byte	168                             # 0xa8
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
	.byte	62                              # 0x3e
	.byte	176                             # 0xb0
	.byte	125                             # 0x7d
	.byte	69                              # 0x45
.LCPI2_13:
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_14:
	.dword	0                               # 0x0
	.dword	56857949589995520               # 0xca0000fff80000
	.dword	0                               # 0x0
	.dword	56857949589995520               # 0xca0000fff80000
.LCPI2_15:
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
	.byte	36                              # 0x24
	.byte	106                             # 0x6a
	.byte	12                              # 0xc
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
	.byte	36                              # 0x24
	.byte	106                             # 0x6a
	.byte	12                              # 0xc
.LCPI2_16:
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
	.byte	248                             # 0xf8
	.byte	61                              # 0x3d
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	96                              # 0x60
	.byte	56                              # 0x38
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
	.byte	248                             # 0xf8
	.byte	61                              # 0x3d
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	96                              # 0x60
	.byte	56                              # 0x38
.LCPI2_17:
	.dword	69595650027824                  # 0x3f4bffff7130
	.dword	127603478342935                 # 0x740dffffad17
	.dword	4904852606033                   # 0x475ffff4c51
	.dword	-55787330212672                 # 0xffffcd42ffffecc0
.LCPI2_18:
	.half	52544                           # 0xcd40
	.half	47572                           # 0xb9d4
	.half	56107                           # 0xdb2b
	.half	57458                           # 0xe072
	.half	4898                            # 0x1322
	.half	29916                           # 0x74dc
	.half	26802                           # 0x68b2
	.half	9898                            # 0x26aa
	.half	44256                           # 0xace0
	.half	26324                           # 0x66d4
	.half	2169                            # 0x879
	.half	33981                           # 0x84bd
	.half	15296                           # 0x3bc0
	.half	16635                           # 0x40fb
	.half	12237                           # 0x2fcd
	.half	32967                           # 0x80c7
.LCPI2_19:
	.half	41968                           # 0xa3f0
	.half	11150                           # 0x2b8e
	.half	25632                           # 0x6420
	.half	3458                            # 0xd82
	.half	39413                           # 0x99f5
	.half	60284                           # 0xeb7c
	.half	2907                            # 0xb5b
	.half	12659                           # 0x3173
	.half	40817                           # 0x9f71
	.half	16747                           # 0x416b
	.half	64508                           # 0xfbfc
	.half	21604                           # 0x5464
	.half	45312                           # 0xb100
	.half	59562                           # 0xe8aa
	.half	40309                           # 0x9d75
	.half	14126                           # 0x372e
.LCPI2_20:
	.dword	-14117557510111                 # 0xfffff328ffffe021
	.dword	-1                              # 0xffffffffffffffff
	.dword	77541339594872                  # 0x468600008078
	.dword	-128                            # 0xffffffffffffff80
.LCPI2_21:
	.half	34                              # 0x22
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_22:
	.half	57343                           # 0xdfff
	.half	0                               # 0x0
	.half	62248                           # 0xf328
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	32633                           # 0x7f79
	.half	0                               # 0x0
	.half	18054                           # 0x4686
	.half	0                               # 0x0
	.half	65408                           # 0xff80
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
.LCPI2_23:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
.LCPI2_24:
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
.LCPI2_25:
	.dword	-123690763140892                # 0xffff8f81000040e4
	.dword	88300232647521                  # 0x504f00002361
	.dword	-123690763140892                # 0xffff8f81000040e4
	.dword	88300232647521                  # 0x504f00002361
.LCPI2_26:
	.half	16612                           # 0x40e4
	.half	47304                           # 0xb8c8
	.half	36737                           # 0x8f81
	.half	11                              # 0xb
	.half	9058                            # 0x2362
	.half	19532                           # 0x4c4c
	.half	20560                           # 0x5050
	.half	0                               # 0x0
	.half	16612                           # 0x40e4
	.half	47304                           # 0xb8c8
	.half	36737                           # 0x8f81
	.half	11                              # 0xb
	.half	9058                            # 0x2362
	.half	19532                           # 0x4c4c
	.half	20560                           # 0x5050
	.half	0                               # 0x0
.LCPI2_27:
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
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_28:
	.dword	140733193417628                 # 0x7fff0000739c
	.dword	71133248368596                  # 0x40b200002fd4
	.dword	140733193417628                 # 0x7fff0000739c
	.dword	71133248368596                  # 0x40b200002fd4
.LCPI2_29:
	.half	23874                           # 0x5d42
	.half	23874                           # 0x5d42
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	12337                           # 0x3031
	.half	12337                           # 0x3031
	.half	16563                           # 0x40b3
	.half	16562                           # 0x40b2
	.half	23874                           # 0x5d42
	.half	23874                           # 0x5d42
	.half	32767                           # 0x7fff
	.half	32767                           # 0x7fff
	.half	12337                           # 0x3031
	.half	12337                           # 0x3031
	.half	16563                           # 0x40b3
	.half	16562                           # 0x40b2
.LCPI2_30:
	.half	5722                            # 0x165a
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65443                           # 0xffa3
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	5722                            # 0x165a
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65443                           # 0xffa3
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	0                               # 0x0
.LCPI2_31:
	.dword	140600049434592                 # 0x7fe000007fe0
	.dword	140591459499988                 # 0x7fde00007fd4
	.dword	140600049434592                 # 0x7fe000007fe0
	.dword	140591459499988                 # 0x7fde00007fd4
.LCPI2_32:
	.half	16368                           # 0x3ff0
	.half	0                               # 0x0
	.half	16368                           # 0x3ff0
	.half	0                               # 0x0
	.half	16362                           # 0x3fea
	.half	0                               # 0x0
	.half	16367                           # 0x3fef
	.half	0                               # 0x0
	.half	16368                           # 0x3ff0
	.half	0                               # 0x0
	.half	16368                           # 0x3ff0
	.half	0                               # 0x0
	.half	16362                           # 0x3fea
	.half	0                               # 0x0
	.half	16367                           # 0x3fef
	.half	0                               # 0x0
.LCPI2_33:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI2_34:
	.dword	19800336                        # 0x12e2110
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	1                               # 0x1
.LCPI2_35:
	.word	16777232                        # 0x1000010
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI2_36:
	.word	3023104                         # 0x2e2100
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_37:
	.dword	1048576                         # 0x100000
	.dword	5781504                         # 0x583800
	.dword	1048576                         # 0x100000
	.dword	5781504                         # 0x583800
.LCPI2_38:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4732928                         # 0x483800
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4732928                         # 0x483800
	.word	0                               # 0x0
.LCPI2_39:
	.dword	1932735283                      # 0x73333333
	.dword	1145324611                      # 0x44444443
	.dword	1932735283                      # 0x73333333
	.dword	1145324611                      # 0x44444443
.LCPI2_40:
	.word	2075900859                      # 0x7bbbbbbb
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2075900859                      # 0x7bbbbbbb
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_41:
	.word	4151801720                      # 0xf7777778
	.word	2075900859                      # 0x7bbbbbbb
	.word	1145324611                      # 0x44444443
	.word	0                               # 0x0
	.word	4151801720                      # 0xf7777778
	.word	2075900859                      # 0x7bbbbbbb
	.word	1145324611                      # 0x44444443
	.word	0                               # 0x0
.LCPI2_42:
	.dword	65536                           # 0x10000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_43:
	.dword	8290450                         # 0x7e8092
	.dword	8290432                         # 0x7e8080
	.dword	8290450                         # 0x7e8092
	.dword	8290432                         # 0x7e8080
.LCPI2_44:
	.word	8290415                         # 0x7e806f
	.word	8355967                         # 0x7f807f
	.word	8290432                         # 0x7e8080
	.word	8355967                         # 0x7f807f
	.word	8290415                         # 0x7e806f
	.word	8355967                         # 0x7f807f
	.word	8290432                         # 0x7e8080
	.word	8355967                         # 0x7f807f
.LCPI2_45:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	25400                           # 0x6338
	.dword	0                               # 0x0
.LCPI2_46:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	100                             # 0x64
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_47:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	25300                           # 0x62d4
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_48:
	.dword	-2147483648                     # 0xffffffff80000000
	.dword	0                               # 0x0
	.dword	-2147483648                     # 0xffffffff80000000
	.dword	0                               # 0x0
.LCPI2_49:
	.word	2147483648                      # 0x80000000
	.word	4294934528                      # 0xffff8000
	.word	0                               # 0x0
	.word	4294934528                      # 0xffff8000
	.word	2147483648                      # 0x80000000
	.word	4294934528                      # 0xffff8000
	.word	0                               # 0x0
	.word	4294934528                      # 0xffff8000
.LCPI2_50:
	.dword	1069562812                      # 0x3fc03bbc
	.dword	-66978815                       # 0xfffffffffc01fc01
	.dword	1069562812                      # 0x3fc03bbc
	.dword	-66978815                       # 0xfffffffffc01fc01
.LCPI2_51:
	.word	1069562812                      # 0x3fc03bbc
	.word	0                               # 0x0
	.word	4227988481                      # 0xfc01fc01
	.word	4261543425                      # 0xfe01fe01
	.word	1069562812                      # 0x3fc03bbc
	.word	0                               # 0x0
	.word	4227988481                      # 0xfc01fc01
	.word	4261543425                      # 0xfe01fe01
.LCPI2_52:
	.dword	7348580226662196666             # 0x65fb66c81da8e5ba
	.dword	0                               # 0x0
	.dword	-2055049130580877463            # 0xe37affb42fc05f69
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_53:
	.dword	-1874791810192579141            # 0xe5fb66c81da8e5bb
	.dword	1781605650362316120             # 0x18b988e64facb558
	.dword	-2055049130580877463            # 0xe37affb42fc05f69
	.dword	1988167252910063873             # 0x1b9763952fc4c101
.LCPI2_54:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_55:
	.dword	1229782942542270738             # 0x1111111211111112
	.dword	0                               # 0x0
	.dword	1157442769704194065             # 0x1010101110101011
	.dword	0                               # 0x0
.LCPI2_56:
	.dword	1229782938247303443             # 0x1111111111111113
	.dword	1157442765409226899             # 0x1010101010101093
	.dword	1157442765409226770             # 0x1010101010101012
	.dword	1157442765409226770             # 0x1010101010101012
.LCPI2_57:
	.dword	6449154666394550272             # 0x5980000000000000
	.dword	0                               # 0x0
	.dword	6449154666394550272             # 0x5980000000000000
	.dword	0                               # 0x0
.LCPI2_58:
	.dword	-1108101562368                  # 0xfffffefe00000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1103806595330                  # 0xfffffefefffffefe
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_59:
	.dword	71777386076831760               # 0xff012700040010
	.dword	0                               # 0x0
	.dword	71777386077356048               # 0xff0127000c0010
	.dword	0                               # 0x0
.LCPI2_60:
	.dword	71777214278139904               # 0xff00ff00040000
	.dword	71777214294589695               # 0xff00ff00ff00ff
	.dword	71777214278664192               # 0xff00ff000c0000
	.dword	71777214294589695               # 0xff00ff00ff00ff
.LCPI2_61:
	.dword	171798691856                    # 0x2800000010
	.dword	0                               # 0x0
	.dword	171798691856                    # 0x2800000010
	.dword	0                               # 0x0
.LCPI2_62:
	.dword	-9223090555435548672            # 0x8001000180010000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-9223090555435548672            # 0x8001000180010000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_63:
	.dword	-4611545277717774336            # 0xc0008000c0008000
	.dword	0                               # 0x0
	.dword	-4611545277717774336            # 0xc0008000c0008000
	.dword	0                               # 0x0
.LCPI2_64:
	.dword	-140728898420734                # 0xffff800200000002
	.dword	-1                              # 0xffffffffffffffff
	.dword	-140728898420734                # 0xffff800200000002
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_65:
	.dword	2199023256064                   # 0x20000000200
	.dword	0                               # 0x0
	.dword	2199023256064                   # 0x20000000200
	.dword	0                               # 0x0
.LCPI2_66:
	.dword	-396098526969855                # 0xfffe97c020010001
	.dword	-1                              # 0xffffffffffffffff
	.dword	-396098526969855                # 0xfffe97c020010001
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_67:
	.dword	-396098526969855                # 0xfffe97c020010001
	.dword	-362273512096384                # 0xfffeb6839ffffd80
	.dword	-396098526969855                # 0xfffe97c020010001
	.dword	-362273512096384                # 0xfffeb6839ffffd80
.LCPI2_68:
	.dword	0                               # 0x0
	.dword	2061615759840                   # 0x1e001e001e0
	.dword	0                               # 0x0
	.dword	2061615759840                   # 0x1e001e001e0
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
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 320
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvst	$xr0, $sp, 224
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	lu12i.w	$a0, -425711
	ori	$a0, $a0, 3274
	xvreplgr2vr.w	$xr1, $a0
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvaddwev.h.b	$xr0, $xr1, $xr0
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvaddwev.h.b	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvaddwev.h.b	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.h.b	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.h	$xr0, -2
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvaddwev.h.b	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.h.b	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 224
	xvaddwev.h.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 224
	xvrepli.d	$xr0, 9
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvaddwev.h.b	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.h.b	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.h.b	$xr0, $xr1, $xr0
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
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 224
	xvaddwev.h.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 224
	xvaddwev.w.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_22)
	xvst	$xr0, $sp, 224
	xvaddwev.w.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2452
	xvreplgr2vr.w	$xr0, $a0
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.w.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 3937
	lu32i.d	$a0, 24929
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 224
	lu12i.w	$a0, 398868
	ori	$a0, $a0, 3937
	lu32i.d	$a0, 90465
	lu52i.d	$a0, $a0, -490
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.w.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.w.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr2, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	xvaddwev.w.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 18
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvaddwev.w.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_30)
	xvst	$xr0, $sp, 224
	xvaddwev.w.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.w.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_32)
	xvst	$xr0, $sp, 224
	xvaddwev.w.h	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvaddwev.d.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_35)
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_36)
	xvst	$xr0, $sp, 224
	xvaddwev.d.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvaddwev.d.w	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	xvst	$xr0, $sp, 224
	lu12i.w	$a0, 256
	xvreplgr2vr.w	$xr0, $a0
	xvaddwev.d.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_40)
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_41)
	xvst	$xr0, $sp, 224
	xvaddwev.d.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_42)
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.d.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_43)
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_44)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvaddwev.d.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_45)
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_47)
	xvst	$xr0, $sp, 224
	xvaddwev.d.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_48)
	xvst	$xr0, $sp, 224
	pcalau12i	$a0, %pc_hi20(.LCPI2_49)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_49)
	ori	$s1, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	lu52i.d	$a0, $a0, 1
	xvreplgr2vr.d	$xr1, $a0
	xvaddwev.d.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_50)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_50)
	pcalau12i	$a0, %pc_hi20(.LCPI2_51)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_51)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.d.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_52)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_52)
	pcalau12i	$a0, %pc_hi20(.LCPI2_53)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_53)
	pcalau12i	$a0, %pc_hi20(.LCPI2_54)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_54)
	xvst	$xr0, $sp, 224
	xvaddwev.q.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvaddwev.q.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_55)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_55)
	pcalau12i	$a0, %pc_hi20(.LCPI2_56)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_56)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvaddwev.q.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_57)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_57)
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.q.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 368
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_58)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_58)
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.q.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 377
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.q.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 386
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 395
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_59)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_59)
	pcalau12i	$a0, %pc_hi20(.LCPI2_60)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_60)
	pcalau12i	$a0, %pc_hi20(.LCPI2_61)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_61)
	xvst	$xr0, $sp, 224
	xvaddwev.q.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 404
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_62)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_62)
	pcalau12i	$a0, %pc_hi20(.LCPI2_63)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_63)
	xvst	$xr0, $sp, 224
	xvaddwev.q.d	$xr0, $xr1, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 413
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_64)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_64)
	xvst	$xr0, $sp, 224
	lu32i.d	$s1, -32768
	xvreplgr2vr.d	$xr0, $s1
	xvrepli.w	$xr1, 2
	xvaddwev.q.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 422
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_65)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_65)
	xvst	$xr0, $sp, 224
	ori	$a0, $zero, 512
	xvreplgr2vr.w	$xr0, $a0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.q.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 431
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_66)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_66)
	pcalau12i	$a0, %pc_hi20(.LCPI2_67)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_67)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvaddwev.q.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 440
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_68)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_68)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvaddwev.q.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 449
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -320
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvaddwev-1.c"
	.size	.L.str.5, 136

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
