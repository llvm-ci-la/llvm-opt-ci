	.file	"lasx-xvffint-2.c"
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
	.word	1333788608                      # 0x4f7fffc0
	.word	1333788646                      # 0x4f7fffe6
	.word	1333788672                      # 0x4f800000
	.word	1333788672                      # 0x4f800000
	.word	1191181824                      # 0x46fffe00
	.word	1333788607                      # 0x4f7fffbf
	.word	1333788672                      # 0x4f800000
	.word	1333788672                      # 0x4f800000
.LCPI2_1:
	.word	4294950911                      # 0xffffbfff
	.word	4294960721                      # 0xffffe651
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	32767                           # 0x7fff
	.word	4294950783                      # 0xffffbf7f
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_2:
	.word	1333788672                      # 0x4f800000
	.word	1333788672                      # 0x4f800000
	.word	1266712704                      # 0x4b808080
	.word	1266712704                      # 0x4b808080
	.word	1333788671                      # 0x4f7fffff
	.word	1333788672                      # 0x4f800000
	.word	1266712704                      # 0x4b808080
	.word	1266712704                      # 0x4b808080
.LCPI2_3:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	16843009                        # 0x1010101
	.word	16843009                        # 0x1010101
	.word	4294967037                      # 0xfffffefd
	.word	4294967295                      # 0xffffffff
	.word	16843009                        # 0x1010101
	.word	16843009                        # 0x1010101
.LCPI2_4:
	.word	1107296256                      # 0x42000000
	.word	0                               # 0x0
	.word	1115684864                      # 0x42800000
	.word	0                               # 0x0
	.word	1107296256                      # 0x42000000
	.word	0                               # 0x0
	.word	1115684864                      # 0x42800000
	.word	0                               # 0x0
.LCPI2_5:
	.word	32                              # 0x20
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	32                              # 0x20
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
.LCPI2_6:
	.dword	4859401590118809600             # 0x4370100000000000
	.dword	0                               # 0x0
	.dword	4859401590118809600             # 0x4370100000000000
	.dword	0                               # 0x0
.LCPI2_7:
	.dword	72339069014638592               # 0x101000000000000
	.dword	0                               # 0x0
	.dword	72339069014638592               # 0x101000000000000
	.dword	0                               # 0x0
.LCPI2_8:
	.dword	4881919657244626994             # 0x43c0101010101032
	.dword	4881919657244626960             # 0x43c0101010101010
	.dword	4881919657244626994             # 0x43c0101010101032
	.dword	4881919657244626960             # 0x43c0101010101010
.LCPI2_9:
	.dword	2314885530818470961             # 0x2020202020206431
	.dword	2314885530818453536             # 0x2020202020202020
	.dword	2314885530818470961             # 0x2020202020206431
	.dword	2314885530818453536             # 0x2020202020202020
.LCPI2_10:
	.dword	4890937534991290448             # 0x43e019c657c7d050
	.dword	4886471566263052793             # 0x43d03bfff827e9f9
	.dword	4889433593333436400             # 0x43dac1f2a3804ff0
	.dword	4886471566263052833             # 0x43d03bfff827ea21
.LCPI2_11:
	.dword	-9165332398978466048            # 0x80ce32be3e827f00
	.dword	4679239878077571928             # 0x40efffe09fa7e358
	.dword	7712355598150385409             # 0x6b07ca8e013fbf01
	.dword	4679239878077612640             # 0x40efffe09fa88260
.LCPI2_12:
	.dword	4751297606875873280             # 0x41f0000000000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_13:
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
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
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 96
	xvffint.s.wu	$xr0, $xr1
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 24
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 96
	xvffint.s.wu	$xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 31
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 96
	xvffint.s.wu	$xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 38
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 45
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 266240
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 96
	xvrepli.d	$xr0, 8
	xvffint.s.wu	$xr0, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 52
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 96
	xvffint.s.wu	$xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 59
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 66
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 128
	xvffint.d.lu	$xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 73
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvffint.d.lu	$xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 87
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 128
	xvffint.d.lu	$xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 94
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 128
	xvffint.d.lu	$xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 101
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu52i.d	$a0, $zero, 1087
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 128
	xvrepli.b	$xr0, -1
	xvffint.d.lu	$xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 108
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu52i.d	$a0, $zero, 1055
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 128
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	xvreplgr2vr.d	$xr0, $a0
	xvffint.d.lu	$xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 115
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 122
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 65793
	ori	$a0, $a0, 8
	lu32i.d	$a0, 4104
	lu52i.d	$a0, $a0, 1080
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 128
	lu12i.w	$a0, 8224
	ori	$a0, $a0, 258
	xvreplgr2vr.w	$xr0, $a0
	xvffint.d.lu	$xr0, $xr0
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 129
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 136
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 128
	xvffint.d.lu	$xr0, $xr1
	xvst	$xr0, $sp, 160
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvffint-2.c"
	.size	.L.str.5, 135

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
