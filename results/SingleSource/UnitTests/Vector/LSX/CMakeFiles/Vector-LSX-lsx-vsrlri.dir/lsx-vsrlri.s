	.file	"lsx-vsrlri.c"
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
	.dword	11821493761408904               # 0x29ff96005cff88
	.dword	6755644259041194                # 0x1800390049ffaa
.LCPI2_1:
	.dword	16974083                        # 0x1030103
	.dword	0                               # 0x0
.LCPI2_2:
	.byte	172                             # 0xac
	.byte	93                              # 0x5d
	.byte	220                             # 0xdc
	.byte	61                              # 0x3d
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
	.dword	8800438583296                   # 0x80103040000
	.dword	8830469734400                   # 0x80801030000
.LCPI2_4:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	134                             # 0x86
	.byte	84                              # 0x54
	.byte	22                              # 0x16
	.byte	253                             # 0xfd
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	86                              # 0x56
	.byte	35                              # 0x23
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_5:
	.dword	2097168                         # 0x200010
	.dword	0                               # 0x0
.LCPI2_6:
	.half	32771                           # 0x8003
	.half	65534                           # 0xfffe
	.half	1                               # 0x1
	.half	6                               # 0x6
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	16                              # 0x10
	.half	16                              # 0x10
.LCPI2_7:
	.dword	2025848832                      # 0x78c00000
	.dword	0                               # 0x0
.LCPI2_8:
	.dword	1073758208                      # 0x40004000
	.dword	4611756387171565568             # 0x4000400000000000
.LCPI2_9:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_10:
	.dword	0                               # 0x0
	.dword	34359738376                     # 0x800000008
.LCPI2_11:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
.LCPI2_12:
	.half	896                             # 0x380
	.half	0                               # 0x0
	.half	896                             # 0x380
	.half	960                             # 0x3c0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	960                             # 0x3c0
.LCPI2_13:
	.dword	562958543355904                 # 0x2000200000000
	.dword	0                               # 0x0
.LCPI2_14:
	.half	53                              # 0x35
	.half	0                               # 0x0
	.half	32896                           # 0x8080
	.half	32896                           # 0x8080
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_15:
	.dword	140737488355328                 # 0x800000000000
	.dword	0                               # 0x0
.LCPI2_16:
	.word	0                               # 0x0
	.word	65535                           # 0xffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_17:
	.dword	0                               # 0x0
	.dword	68719476736                     # 0x1000000000
.LCPI2_18:
	.word	81824                           # 0x13fa0
	.word	0                               # 0x0
	.word	81824                           # 0x13fa0
	.word	536879104                       # 0x20002000
.LCPI2_19:
	.dword	437116001684878                 # 0x18d8e00018d8e
	.dword	0                               # 0x0
.LCPI2_20:
	.word	1667457891                      # 0x63636363
	.word	1667457891                      # 0x63636363
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_21:
	.word	675299396                       # 0x28404044
	.word	72564902                        # 0x45340a6
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_22:
	.dword	10560195005959254               # 0x2584710016cc56
	.dword	9490301474068796                # 0x21b761002c593c
.LCPI2_23:
	.word	1529960949                      # 0x5b3159f5
	.word	2517746584                      # 0x9611c398
	.word	2976182571                      # 0xb164f12b
	.word	2262664001                      # 0x86dd8341
.LCPI2_24:
	.dword	9006649566035968                # 0x1fff8004000000
	.dword	2097152                         # 0x200000
.LCPI2_25:
	.dword	-1125762467889153               # 0xfffc001fffffffff
	.dword	4294967295                      # 0xffffffff
.LCPI2_26:
	.dword	103820800                       # 0x6302e00
	.dword	85267733                        # 0x5151515
.LCPI2_27:
	.dword	-4177721970150014976            # 0xc605c000aedd0000
	.dword	-6727636069646163293            # 0xa2a2a2a3a2a2a2a3
.LCPI2_28:
	.dword	8556510720                      # 0x1fe01fe00
	.dword	17112825600                     # 0x3fc00ff00
.LCPI2_29:
	.dword	4593741713784176644             # 0x3fc03fc000000004
	.dword	9187378286768947200             # 0x7f801fe000000000
.LCPI2_30:
	.dword	344                             # 0x158
	.dword	0                               # 0x0
.LCPI2_31:
	.dword	-4915418658331765261            # 0xbbc8ecc5f3ced5f3
	.dword	-4560790011846673709            # 0xc0b4d1a5f8babad3
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	vst	$vr0, $sp, 64
	vsrlri.b	$vr0, $vr0, 0
	vst	$vr0, $sp, 80
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 22
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $sp, 64
	vsrlri.b	$vr0, $vr0, 0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 27
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.b	$vr0, $vr0, 6
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 32
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.h	$vr0, 2
	vst	$vr0, $sp, 64
	vsrlri.b	$vr0, $vr0, 0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 37
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr0, $sp, 64
	vsrlri.b	$vr0, $vr1, 6
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 42
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 64
	vsrlri.b	$vr0, $vr1, 5
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 512
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 64
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vsrlri.h	$vr0, $vr0, 7
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 52
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 64
	vsrlri.h	$vr0, $vr1, 11
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 57
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 64
	vsrlri.h	$vr0, $vr0, 0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 62
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr0, $sp, 64
	vsrlri.h	$vr0, $vr1, 2
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 67
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.h	$vr0, $vr0, 15
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 72
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_11)
	vst	$vr0, $sp, 64
	vsrlri.h	$vr0, $vr1, 12
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 64
	vsrlri.h	$vr0, $vr0, 15
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 82
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_14)
	vst	$vr0, $sp, 64
	vsrlri.h	$vr0, $vr1, 14
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 87
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 8
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vsrlri.h	$vr0, $vr0, 1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 92
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 97
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.h	$vr0, $vr0, 2
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 102
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr0, $sp, 64
	vsrlri.w	$vr0, $vr1, 1
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.w	$vr0, $vr0, 16
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 112
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.w	$vr0, $vr0, 19
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 117
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.w	$vr0, $vr0, 28
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 122
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 82
	ori	$a0, $a0, 1320
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 64
	lu12i.w	$a0, 337191
	ori	$a0, $a0, 3453
	vreplgr2vr.w	$vr0, $a0
	vsrlri.w	$vr0, $vr0, 12
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 127
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.w	$vr0, $vr0, 5
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 132
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.w	$vr0, $vr0, 26
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr0, $sp, 64
	vsrlri.w	$vr0, $vr1, 25
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 142
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 4091
	lu32i.d	$a0, 3523
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 64
	lu12i.w	$a0, -305
	ori	$a0, $a0, 4076
	lu32i.d	$a0, -270356
	lu52i.d	$a0, $a0, 880
	vreplgr2vr.d	$vr0, $a0
	vsrlri.w	$vr0, $vr0, 18
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 147
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_20)
	vst	$vr0, $sp, 64
	vsrlri.w	$vr0, $vr1, 14
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 152
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 64
	vsrlri.w	$vr0, $vr0, 31
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 157
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.w	$vr0, $vr0, 4
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 162
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_23)
	vst	$vr0, $sp, 64
	vsrlri.w	$vr0, $vr1, 10
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.d	$vr0, $vr0, 3
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 172
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_25)
	vst	$vr0, $sp, 64
	vsrlri.d	$vr0, $vr1, 11
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 177
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.d	$vr1, $vr0, 40
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vst	$vr1, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 182
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vsrlri.d	$vr0, $vr0, 37
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 187
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 192
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 64
	vsrlri.d	$vr0, $vr1, 37
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 131072
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 64
	vrepli.d	$vr0, -256
	vsrlri.d	$vr0, $vr0, 35
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 202
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_29)
	vst	$vr0, $sp, 64
	vsrlri.d	$vr0, $vr1, 29
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 207
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $sp, 64
	vsrlri.d	$vr0, $vr0, 12
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 212
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	vst	$vr0, $sp, 64
	vsrlri.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 16
	ori	$a4, $zero, 217
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vsrlri.c"
	.size	.L.str.5, 130

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
