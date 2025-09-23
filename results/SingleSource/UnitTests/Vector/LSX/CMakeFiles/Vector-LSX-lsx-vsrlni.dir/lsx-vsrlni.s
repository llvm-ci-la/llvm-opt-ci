	.file	"lsx-vsrlni.c"
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
	.dword	0                               # 0x0
	.dword	71777214277877760               # 0xff00ff00000000
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_2:
	.byte	31                              # 0x1f
	.byte	68                              # 0x44
	.byte	118                             # 0x76
	.byte	99                              # 0x63
	.byte	31                              # 0x1f
	.byte	10                              # 0xa
	.byte	31                              # 0x1f
	.byte	23                              # 0x17
	.byte	153                             # 0x99
	.byte	0                               # 0x0
	.byte	153                             # 0x99
	.byte	99                              # 0x63
	.byte	124                             # 0x7c
	.byte	121                             # 0x79
	.byte	99                              # 0x63
	.byte	99                              # 0x63
.LCPI2_3:
	.dword	71777214277877760               # 0xff00ff00000000
	.dword	0                               # 0x0
.LCPI2_4:
	.dword	144680345676217858              # 0x20202020202fe02
	.dword	4423816315910                   # 0x40600000406
.LCPI2_5:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	127                             # 0x7f
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
.LCPI2_6:
	.dword	256                             # 0x100
	.dword	8623620608                      # 0x202020200
.LCPI2_7:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	71                              # 0x47
	.byte	68                              # 0x44
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	206                             # 0xce
	.byte	18                              # 0x12
	.byte	77                              # 0x4d
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_8:
	.byte	112                             # 0x70
	.byte	6                               # 0x6
	.byte	111                             # 0x6f
	.byte	177                             # 0xb1
	.byte	177                             # 0xb1
	.byte	177                             # 0xb1
	.byte	177                             # 0xb1
	.byte	177                             # 0xb1
	.byte	65                              # 0x41
	.byte	171                             # 0xab
	.byte	66                              # 0x42
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_9:
	.dword	1012957056                      # 0x3c607f80
	.dword	7047852212441055359             # 0x61cf003f0000007f
.LCPI2_10:
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	0                               # 0x0
	.half	30912                           # 0x78c0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_11:
	.half	253                             # 0xfd
	.half	254                             # 0xfe
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	127                             # 0x7f
	.half	65535                           # 0xffff
	.half	50079                           # 0xc39f
.LCPI2_12:
	.half	65281                           # 0xff01
	.half	32513                           # 0x7f01
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_13:
	.dword	70364449226751                  # 0x3fff00003fff
	.dword	0                               # 0x0
.LCPI2_14:
	.dword	4222124650659840                # 0xf000000000000
	.dword	4222159010398210                # 0xf000800000002
.LCPI2_15:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_16:
	.half	16384                           # 0x4000
	.half	10240                           # 0x2800
	.half	40960                           # 0xa000
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	32768                           # 0x8000
	.half	61693                           # 0xf0fd
.LCPI2_17:
	.dword	70231573544928                  # 0x3fe00ffe3fe0
	.dword	0                               # 0x0
.LCPI2_18:
	.word	2143289344                      # 0x7fc00000
	.word	511713276                       # 0x1e801ffc
	.word	2143289344                      # 0x7fc00000
	.word	2143289344                      # 0x7fc00000
.LCPI2_19:
	.word	135531648                       # 0x8140c80
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_20:
	.dword	17587891080758                  # 0xfff00000e36
	.dword	0                               # 0x0
.LCPI2_21:
	.word	904781824                       # 0x35ede000
	.word	3815002707                      # 0xe3645253
	.word	4294959104                      # 0xffffe000
	.word	4294959104                      # 0xffffe000
.LCPI2_22:
	.dword	31                              # 0x1f
	.dword	0                               # 0x0
.LCPI2_23:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_24:
	.dword	4503530906845167                # 0xfffefffefffef
	.dword	9007130539458544                # 0x1ffff0003ffff0
.LCPI2_25:
	.dword	0                               # 0x0
	.dword	9223231297218904063             # 0x7fff7fff7fff7fff
.LCPI2_26:
	.dword	0                               # 0x0
	.dword	-140728898453503                # 0xffff8001ffff8001
.LCPI2_27:
	.dword	-2251799813685248               # 0xfff8000000000000
	.dword	-1406283995938817               # 0xfffb00fdfdf7ffff
.LCPI2_28:
	.dword	6926465578978770943             # 0x601fbfbeffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_29:
	.dword	8                               # 0x8
	.dword	0                               # 0x0
.LCPI2_30:
	.dword	18611524949                     # 0x455555555
	.dword	0                               # 0x0
.LCPI2_31:
	.dword	0                               # 0x0
	.dword	7967                            # 0x1f1f
.LCPI2_32:
	.dword	4077127429                      # 0xf3040705
	.dword	0                               # 0x0
.LCPI2_33:
	.dword	8970044557815214454             # 0x7c7c000000007176
	.dword	0                               # 0x0
.LCPI2_34:
	.dword	262145                          # 0x40001
	.dword	786431                          # 0xbffff
.LCPI2_35:
	.dword	-4611226944405528057            # 0xc001a1867fffa207
	.dword	-1961113754995216407            # 0xe4c8b96e2560afe9
.LCPI2_36:
	.dword	0                               # 0x0
	.dword	34565502720                     # 0x80c43b700
.LCPI2_37:
	.dword	0                               # 0x0
	.dword	144978226320704061              # 0x20310edc003023d
.LCPI2_38:
	.dword	144978226320704061              # 0x20310edc003023d
	.dword	3524913469844364064             # 0x30eb022002101b20
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_1)
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 48
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vori.b	$vr0, $vr2, 0
	vsrlni.b.h	$vr0, $vr1, 0
	vst	$vr0, $sp, 64
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 23
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 20513
	ori	$a0, $a0, 2065
	lu32i.d	$a0, -124928
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_2)
	lu52i.d	$a0, $a0, 385
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 48
	vsrlni.b.h	$vr0, $vr0, 10
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 29
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vsrlni.b.h	$vr0, $vr1, 0
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 35
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_5)
	lu12i.w	$a0, 8272
	ori	$a0, $a0, 800
	vreplgr2vr.d	$vr2, $a0
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 48
	vori.b	$vr0, $vr2, 0
	vsrlni.b.h	$vr0, $vr1, 7
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 41
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_8)
	vst	$vr0, $sp, 48
	vsrlni.b.h	$vr2, $vr1, 14
	vst	$vr2, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 48
	vsrlni.b.h	$vr0, $vr0, 6
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 53
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_11)
	vst	$vr0, $sp, 48
	vsrlni.h.w	$vr2, $vr1, 17
	vst	$vr2, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	vrepli.d	$vr1, -509
	vst	$vr1, $sp, 48
	vsrlni.h.w	$vr0, $vr0, 15
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 65
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr0, $sp, 48
	vldi	$vr0, -1729
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vsrlni.h.w	$vr1, $vr0, 18
	vst	$vr1, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 71
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr0, $sp, 48
	vsrlni.h.w	$vr2, $vr1, 28
	vst	$vr2, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 48
	vsrlni.h.w	$vr0, $vr0, 26
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 83
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 48
	vsrlni.h.w	$vr0, $vr0, 22
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 89
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 48
	vsrlni.h.w	$vr0, $vr0, 12
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 95
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vsrlni.w.d	$vr0, $vr1, 17
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vst	$vr1, $sp, 48
	vrepli.d	$vr0, 8
	vsrlni.w.d	$vr0, $vr1, 10
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 48
	vsrlni.w.d	$vr0, $vr0, 7
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 113
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 2
	vst	$vr0, $sp, 48
	lu12i.w	$a0, -333078
	ori	$a0, $a0, 3637
	lu32i.d	$a0, -86354
	lu52i.d	$a0, $a0, -1302
	vreplgr2vr.d	$vr0, $a0
	vsrlni.w.d	$vr0, $vr0, 62
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 119
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 48
	vsrlni.w.d	$vr0, $vr0, 2
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 125
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_21)
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vsrlni.w.d	$vr0, $vr1, 52
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 131
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 48
	vsrlni.w.d	$vr0, $vr0, 31
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_23)
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vsrlni.d.q	$vr0, $vr1, 123
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_26)
	vst	$vr0, $sp, 48
	vsrlni.d.q	$vr2, $vr1, 75
	vst	$vr2, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 149
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_28)
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vsrlni.d.q	$vr1, $vr0, 13
	vst	$vr1, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 155
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_30)
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vsrlni.d.q	$vr0, $vr1, 31
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 161
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_33)
	vst	$vr0, $sp, 48
	vsrlni.d.q	$vr2, $vr1, 50
	vst	$vr2, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_34)
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vst	$vr1, $sp, 48
	vrepli.d	$vr1, 1
	vsrlni.d.q	$vr1, $vr0, 109
	vst	$vr1, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 173
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -409599
	ori	$a0, $a0, 2584
	lu32i.d	$a0, 396030
	pcalau12i	$a1, %pc_hi20(.LCPI2_35)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_35)
	lu52i.d	$a0, $a0, -475
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 48
	vsrlni.d.q	$vr0, $vr0, 36
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 179
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_36)
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_37)
	vst	$vr0, $sp, 48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vsrlni.d.q	$vr1, $vr0, 86
	vst	$vr1, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 111104
	ori	$a0, $a0, 515
	lu32i.d	$a0, 528
	pcalau12i	$a1, %pc_hi20(.LCPI2_38)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_38)
	lu52i.d	$a0, $a0, 34
	vreplgr2vr.d	$vr1, $a0
	vst	$vr1, $sp, 48
	vsrlni.d.q	$vr0, $vr0, 48
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 16
	ori	$a4, $zero, 191
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vsrlni.c"
	.size	.L.str.5, 130

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
