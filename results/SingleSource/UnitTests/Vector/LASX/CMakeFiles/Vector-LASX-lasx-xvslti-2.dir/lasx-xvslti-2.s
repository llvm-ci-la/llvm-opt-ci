	.file	"lasx-xvslti-2.c"
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
	.dword	-71777214294589696              # 0xff00ff00ff00ff00
	.dword	-1                              # 0xffffffffffffffff
	.dword	-71777214294589696              # 0xff00ff00ff00ff00
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_1:
	.byte	126                             # 0x7e
	.byte	0                               # 0x0
	.byte	74                              # 0x4a
	.byte	0                               # 0x0
	.byte	33                              # 0x21
	.byte	0                               # 0x0
	.byte	34                              # 0x22
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	126                             # 0x7e
	.byte	0                               # 0x0
	.byte	74                              # 0x4a
	.byte	0                               # 0x0
	.byte	33                              # 0x21
	.byte	0                               # 0x0
	.byte	34                              # 0x22
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
.LCPI2_2:
	.dword	-281470681743361                # 0xffff0000ffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-281470681743361                # 0xffff0000ffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_3:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	240                             # 0xf0
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
.LCPI2_4:
	.dword	281474976710655                 # 0xffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	281474976710655                 # 0xffffffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_5:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_6:
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_7:
	.half	18232                           # 0x4738
	.half	65535                           # 0xffff
	.half	65525                           # 0xfff5
	.half	65535                           # 0xffff
	.half	46004                           # 0xb3b4
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	18232                           # 0x4738
	.half	65535                           # 0xffff
	.half	65525                           # 0xfff5
	.half	65535                           # 0xffff
	.half	46004                           # 0xb3b4
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_8:
	.dword	-4294901761                     # 0xffffffff0000ffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294901761                     # 0xffffffff0000ffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_9:
	.half	0                               # 0x0
	.half	257                             # 0x101
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	257                             # 0x101
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_10:
	.word	8454271                         # 0x81007f
	.word	8323199                         # 0x7f007f
	.word	8257776                         # 0x7e00f0
	.word	10420472                        # 0x9f00f8
	.word	8454271                         # 0x81007f
	.word	8323199                         # 0x7f007f
	.word	8257776                         # 0x7e00f0
	.word	10420472                        # 0x9f00f8
.LCPI2_11:
	.dword	0                               # 0x0
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_12:
	.word	3772834016                      # 0xe0e0e0e0
	.word	3772834016                      # 0xe0e0e0e0
	.word	3772834016                      # 0xe0e0e0e0
	.word	0                               # 0x0
	.word	3772834016                      # 0xe0e0e0e0
	.word	3772834016                      # 0xe0e0e0e0
	.word	3772834016                      # 0xe0e0e0e0
	.word	3772834016                      # 0xe0e0e0e0
.LCPI2_13:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_14:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_15:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_16:
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
.LCPI2_17:
	.dword	13171                           # 0x3373
	.dword	0                               # 0x0
	.dword	30579                           # 0x7773
	.dword	0                               # 0x0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 256
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvslti.bu	$xr0, $xr0, 13
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 24
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.bu	$xr0, $xr0, 25
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 31
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.bu	$xr0, $xr0, 7
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 38
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 160
	xvslti.bu	$xr0, $xr1, 21
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 45
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 160
	xvslti.bu	$xr0, $xr1, 12
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 52
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.bu	$xr0, $xr0, 5
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 59
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.bu	$xr0, $xr0, 15
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 66
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvrepli.d	$xr0, 8
	xvslti.bu	$xr0, $xr0, 24
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 73
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.bu	$xr0, $xr0, 18
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.bu	$xr0, $xr0, 3
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 87
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.hu	$xr0, $xr0, 12
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 94
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 160
	xvslti.hu	$xr0, $xr1, 15
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 101
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.hu	$xr0, $xr0, 25
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 108
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 115
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 160
	xvslti.hu	$xr0, $xr1, 20
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 122
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 160
	xvslti.hu	$xr0, $xr1, 7
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 129
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.wu	$xr0, $xr0, 25
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 136
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.wu	$xr0, $xr0, 31
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvslti.wu	$xr0, $xr0, 29
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 150
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvslti.wu	$xr0, $xr0, 22
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 157
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.wu	$xr0, $xr0, 12
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 164
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 160
	xvslti.wu	$xr0, $xr1, 9
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 171
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.wu	$xr0, $xr0, 19
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 178
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.wu	$xr0, $xr0, 28
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 185
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvrepli.d	$xr0, 1
	xvslti.wu	$xr0, $xr0, 23
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 192
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 160
	ori	$a0, $zero, 512
	xvreplgr2vr.d	$xr0, $a0
	xvslti.wu	$xr0, $xr0, 22
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 199
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.du	$xr0, $xr0, 3
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_14)
	xvst	$xr0, $sp, 160
	xvslti.du	$xr0, $xr1, 25
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 213
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr1, $sp, 160
	xvslti.du	$xr0, $xr0, 7
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 220
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvslti.du	$xr0, $xr0, 10
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 227
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 234
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvslti.du	$xr0, $xr0, 11
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 241
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.du	$xr0, $xr0, 4
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 248
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	xvreplgr2vr.d	$xr0, $a0
	xvslti.du	$xr0, $xr0, 17
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 255
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.du	$xr0, $xr0, 23
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 262
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvslti.du	$xr0, $xr0, 2
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -256
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvslti-2.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
