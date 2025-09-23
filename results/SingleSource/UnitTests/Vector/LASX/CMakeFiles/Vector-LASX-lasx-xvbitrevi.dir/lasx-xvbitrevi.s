	.file	"lasx-xvbitrevi.c"
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
	.dword	72340177082777089               # 0x1010101fe01fe01
	.dword	72340172838076673               # 0x101010101010101
	.dword	72340177082777089               # 0x1010101fe01fe01
	.dword	72340172838076673               # 0x101010101010101
.LCPI2_1:
	.dword	1157442765409357841             # 0x1010101010121011
	.dword	1157442765409226768             # 0x1010101010101010
	.dword	1157442765409226768             # 0x1010101010101010
	.dword	1157442765409226768             # 0x1010101010101010
.LCPI2_2:
	.dword	9187201950427480061             # 0x7f7f7f7f7f017ffd
	.dword	9187201950435737471             # 0x7f7f7f7f7f7f7f7f
	.dword	9187201950427480061             # 0x7f7f7f7f7f017ffd
	.dword	9187201950435737471             # 0x7f7f7f7f7f7f7f7f
.LCPI2_3:
	.dword	80714190840464763               # 0x11ec1210161057b
	.dword	-80777288150350463              # 0xfee1057c01e10581
	.dword	80714190840464763               # 0x11ec1210161057b
	.dword	-80777288150350463              # 0xfee1057c01e10581
.LCPI2_4:
	.dword	-2125731450633166216            # 0xe27fe2821d226278
	.dword	-144680345676153347             # 0xfdfdfdfdfdfdfdfd
	.dword	-2125731450633166216            # 0xe27fe2821d226278
	.dword	-144680345676153347             # 0xfdfdfdfdfdfdfdfd
.LCPI2_5:
	.dword	578721348346972192              # 0x808080008280820
	.dword	578721348346972207              # 0x80808000828082f
	.dword	578721348346972192              # 0x808080008280820
	.dword	578721348346972207              # 0x80808000828082f
.LCPI2_6:
	.dword	9223231262859165687             # 0x7fff7ff77fff7ff7
	.dword	34359738376                     # 0x800000008
	.dword	9223231262859165687             # 0x7fff7ff77fff7ff7
	.dword	34359738376                     # 0x800000008
.LCPI2_7:
	.dword	36526776993710079               # 0x81c4e8ff7fffff
	.dword	36028797027352576               # 0x80000000800000
	.dword	36526776993710079               # 0x81c4e8ff7fffff
	.dword	36028797027352576               # 0x80000000800000
.LCPI2_8:
	.dword	144115192337268735              # 0x2000000fdffffff
	.dword	144115188109410304              # 0x200000002000000
	.dword	144115192337268735              # 0x2000000fdffffff
	.dword	144115188109410304              # 0x200000002000000
.LCPI2_9:
	.dword	9223232401025466624             # 0x7fff81007fff0100
	.dword	1099511628032                   # 0x10000000100
	.dword	9223232401025466624             # 0x7fff81007fff0100
	.dword	1099511628032                   # 0x10000000100
.LCPI2_10:
	.dword	168296704                       # 0xa080100
	.dword	134217728                       # 0x8000000
	.dword	168296704                       # 0xa080100
	.dword	134217728                       # 0x8000000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 160
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 24
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 1
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 31
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 38
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 32
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 45
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 52
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 64
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 59
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 66
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 73
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 87
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	xvreplgr2vr.h	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 94
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.h	$xr0, 256
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 101
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.h	$xr0, 1
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 108
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 32
	ori	$a0, $a0, 2
	lu32i.d	$a0, -327678
	lu52i.d	$a0, $a0, -1021
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 115
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 122
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.w	$xr0, 64
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 129
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 136
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.w	$xr0, 2
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.w	$xr0, 8
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 150
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 157
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 164
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.d	$xr0, 1
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 171
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 512
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 178
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu52i.d	$a0, $zero, 1024
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 185
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 192
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu32i.d	$s1, 32768
	xvreplgr2vr.d	$xr0, $s1
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 199
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -17
	ori	$a0, $a0, 4077
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 64
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -160
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvbitrevi.c"
	.size	.L.str.5, 135

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
