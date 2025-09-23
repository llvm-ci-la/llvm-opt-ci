	.file	"lsx-vpickve2gr.c"
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
	.byte	0                               # 0x0
	.byte	198                             # 0xc6
	.byte	58                              # 0x3a
	.byte	125                             # 0x7d
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
.LCPI2_1:
	.byte	82                              # 0x52
	.byte	0                               # 0x0
	.byte	182                             # 0xb6
	.byte	255                             # 0xff
	.byte	206                             # 0xce
	.byte	255                             # 0xff
	.byte	166                             # 0xa6
	.byte	0                               # 0x0
	.byte	244                             # 0xf4
	.byte	255                             # 0xff
	.byte	132                             # 0x84
	.byte	255                             # 0xff
	.byte	244                             # 0xf4
	.byte	255                             # 0xff
	.byte	132                             # 0x84
	.byte	255                             # 0xff
.LCPI2_2:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	127                             # 0x7f
.LCPI2_3:
	.byte	118                             # 0x76
	.byte	113                             # 0x71
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	124                             # 0x7c
	.byte	156                             # 0x9c
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
	.word	0                               # 0x0
	.word	131074                          # 0x20002
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_5:
	.word	0                               # 0x0
	.word	1040064                         # 0xfdec0
	.word	493768704                       # 0x1d6e5000
	.word	1683224032                      # 0x6453f5e0
.LCPI2_6:
	.word	2618122514                      # 0x9c0d6112
	.word	969219896                       # 0x39c51f38
	.word	2204445574                      # 0x83652b86
	.word	2373464940                      # 0x8d78336c
.LCPI2_7:
	.word	151718150                       # 0x90b0906
	.word	4258168835                      # 0xfdce8003
	.word	2322922624                      # 0x8a74fc80
	.word	108316806                       # 0x674c886
.LCPI2_8:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_9:
	.dword	1037852076                      # 0x3ddc5dac
	.dword	0                               # 0x0
.LCPI2_10:
	.dword	60129542158                     # 0xe0000000e
	.dword	77309411341                     # 0x120000000d
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	st.w	$zero, $sp, 92
	vpickve2gr.b	$a0, $vr0, 7
	st.w	$a0, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 22
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 132
	st.w	$a0, $sp, 64
	vpickve2gr.bu	$a0, $vr0, 10
	st.w	$a0, $sp, 68
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 68
	ori	$a2, $zero, 4
	ori	$a4, $zero, 27
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	addi.w	$s0, $zero, -1
	lu32i.d	$s0, 0
	st.w	$s0, $sp, 92
	vpickve2gr.b	$a0, $vr0, 12
	st.w	$a0, $sp, 88
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 32
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 255
	st.w	$a0, $sp, 64
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vpickve2gr.bu	$a0, $vr0, 9
	st.w	$a0, $sp, 68
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 68
	ori	$a2, $zero, 4
	ori	$a4, $zero, 37
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	st.w	$zero, $sp, 92
	vpickve2gr.b	$a0, $vr0, 14
	st.w	$a0, $sp, 88
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 42
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1024
	st.w	$a0, $sp, 64
	vldi	$vr0, -2812
	vpickve2gr.hu	$a0, $vr0, 5
	st.w	$a0, $sp, 68
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 68
	ori	$a2, $zero, 4
	ori	$a4, $zero, 52
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.w	$s0, $sp, 92
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vpickve2gr.h	$a0, $vr0, 2
	st.w	$a0, $sp, 88
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 57
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 92
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vpickve2gr.h	$a0, $vr0, 1
	st.w	$a0, $sp, 88
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 62
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vpickve2gr.wu	$s1, $vr0, 3
	st.w	$s1, $sp, 68
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 68
	ori	$a2, $zero, 4
	ori	$a4, $zero, 67
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 92
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vpickve2gr.w	$a0, $vr0, 2
	st.w	$a0, $sp, 88
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 72
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.w	$s0, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vpickve2gr.wu	$a0, $vr0, 2
	st.w	$a0, $sp, 68
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 68
	ori	$a2, $zero, 4
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 64
	st.w	$s1, $sp, 68
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 68
	ori	$a2, $zero, 4
	ori	$a4, $zero, 82
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.w	$s0, $sp, 92
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vpickve2gr.w	$a0, $vr0, 1
	st.w	$a0, $sp, 88
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 87
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	st.w	$zero, $sp, 64
	vpickve2gr.wu	$a0, $vr0, 2
	st.w	$a0, $sp, 68
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 68
	ori	$a2, $zero, 4
	ori	$a4, $zero, 92
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 92
	vrepli.w	$vr0, 2
	vpickve2gr.w	$a0, $vr0, 0
	st.w	$a0, $sp, 88
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 97
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	lu12i.w	$a0, 120549
	st.w	$a0, $sp, 92
	vpickve2gr.w	$a0, $vr0, 2
	st.w	$a0, $sp, 88
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 102
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -409386
	pcalau12i	$a1, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_6)
	ori	$a0, $a0, 274
	lu32i.d	$a0, 0
	st.w	$a0, $sp, 92
	vpickve2gr.w	$a0, $vr0, 0
	st.w	$a0, $sp, 88
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	lu12i.w	$a0, 37040
	ori	$a0, $a0, 2310
	st.w	$a0, $sp, 92
	vpickve2gr.w	$a0, $vr0, 0
	st.w	$a0, $sp, 88
	addi.d	$a0, $sp, 92
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 4
	ori	$a4, $zero, 112
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vpickve2gr.du	$a0, $vr0, 1
	st.d	$a0, $sp, 56
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 8
	ori	$a4, $zero, 117
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 72
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vpickve2gr.d	$s0, $vr0, 1
	st.d	$s0, $sp, 80
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 8
	ori	$a4, $zero, 122
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 260096
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $sp, 48
	vldi	$vr0, -1424
	vpickve2gr.du	$a0, $vr0, 0
	st.d	$a0, $sp, 56
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 8
	ori	$a4, $zero, 127
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 72
	st.d	$s0, $sp, 80
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 8
	ori	$a4, $zero, 132
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vpickve2gr.du	$s0, $vr0, 0
	st.d	$s0, $sp, 56
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 8
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	st.d	$zero, $sp, 48
	vpickve2gr.du	$a0, $vr0, 0
	st.d	$a0, $sp, 56
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 8
	ori	$a4, $zero, 142
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	lu12i.w	$a0, 253381
	ori	$a0, $a0, 3500
	st.d	$a0, $sp, 72
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 80
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 8
	ori	$a4, $zero, 147
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 48
	st.d	$s0, $sp, 56
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 8
	ori	$a4, $zero, 152
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	ori	$a0, $zero, 14
	lu32i.d	$a0, 14
	st.d	$a0, $sp, 48
	vpickve2gr.du	$a0, $vr0, 0
	st.d	$a0, $sp, 56
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 8
	ori	$a4, $zero, 157
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vpickve2gr.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
