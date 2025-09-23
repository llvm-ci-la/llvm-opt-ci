	.file	"lasx-xvpickod.c"
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
	.dword	2161727821641154560             # 0x1e0000001e000000
	.dword	9007340988661759                # 0x200020ffffffff
	.dword	2161727821641154560             # 0x1e0000001e000000
	.dword	9007340988661759                # 0x200020ffffffff
.LCPI2_1:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	128                             # 0x80
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
	.byte	32                              # 0x20
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	128                             # 0x80
	.byte	0                               # 0x0
.LCPI2_2:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_3:
	.dword	69542089261056                  # 0x3f3f87870000
	.dword	0                               # 0x0
	.dword	69543150389127                  # 0x3f3fc6c68787
	.dword	0                               # 0x0
.LCPI2_4:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	138                             # 0x8a
	.byte	135                             # 0x87
	.byte	135                             # 0x87
	.byte	135                             # 0x87
	.byte	60                              # 0x3c
	.byte	63                              # 0x3f
	.byte	63                              # 0x3f
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	138                             # 0x8a
	.byte	135                             # 0x87
	.byte	135                             # 0x87
	.byte	135                             # 0x87
	.byte	198                             # 0xc6
	.byte	198                             # 0xc6
	.byte	198                             # 0xc6
	.byte	198                             # 0xc6
	.byte	60                              # 0x3c
	.byte	63                              # 0x3f
	.byte	63                              # 0x3f
	.byte	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_5:
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_6:
	.dword	36029351069745151               # 0x800080ffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	36029351069745151               # 0x800080ffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_7:
	.dword	288234774265332736              # 0x400040004000400
	.dword	65535                           # 0xffff
	.dword	288234774265332736              # 0x400040004000400
	.dword	0                               # 0x0
.LCPI2_8:
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
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
.LCPI2_9:
	.dword	107525081797689726              # 0x17e017e00ff017e
	.dword	279287615461789                 # 0xfe02b71c199d
	.dword	71777214294589822               # 0xff00ff00ff017e
	.dword	-5260183728674243554            # 0xb70012c4b714fc1e
.LCPI2_10:
	.half	255                             # 0xff
	.half	382                             # 0x17e
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	510                             # 0x1fe
	.half	382                             # 0x17e
	.half	255                             # 0xff
	.half	382                             # 0x17e
	.half	255                             # 0xff
	.half	382                             # 0x17e
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
	.half	255                             # 0xff
.LCPI2_11:
	.half	1205                            # 0x4b5
	.half	6557                            # 0x199d
	.half	16699                           # 0x413b
	.half	46876                           # 0xb71c
	.half	65534                           # 0xfffe
	.half	65026                           # 0xfe02
	.half	254                             # 0xfe
	.half	0                               # 0x0
	.half	73                              # 0x49
	.half	64542                           # 0xfc1e
	.half	25107                           # 0x6213
	.half	46868                           # 0xb714
	.half	126                             # 0x7e
	.half	4804                            # 0x12c4
	.half	14043                           # 0x36db
	.half	46848                           # 0xb700
.LCPI2_12:
	.dword	32767                           # 0x7fff
	.dword	9223372034707292159             # 0x7fffffff7fffffff
	.dword	32767                           # 0x7fff
	.dword	9223372034707292159             # 0x7fffffff7fffffff
.LCPI2_13:
	.half	63                              # 0x3f
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	63                              # 0x3f
	.half	32767                           # 0x7fff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_14:
	.dword	75060924381047                  # 0x44447bbbf777
	.dword	40024800247316                  # 0x246700003e14
	.dword	75060924381047                  # 0x44447bbbf777
	.dword	40024800247316                  # 0x246700003e14
.LCPI2_15:
	.half	30584                           # 0x7778
	.half	63351                           # 0xf777
	.half	48059                           # 0xbbbb
	.half	31675                           # 0x7bbb
	.half	17475                           # 0x4443
	.half	17476                           # 0x4444
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	30584                           # 0x7778
	.half	63351                           # 0xf777
	.half	48059                           # 0xbbbb
	.half	31675                           # 0x7bbb
	.half	17475                           # 0x4443
	.half	17476                           # 0x4444
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_16:
	.half	14418                           # 0x3852
	.half	15892                           # 0x3e14
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	56217                           # 0xdb99
	.half	9319                            # 0x2467
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	14418                           # 0x3852
	.half	15892                           # 0x3e14
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	56217                           # 0xdb99
	.half	9319                            # 0x2467
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.dword	-4616189614834581504            # 0xbff00000bff00000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4616189614834581504            # 0xbff00000bff00000
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_18:
	.dword	0                               # 0x0
	.dword	-6919640641878065281            # 0x9ff87f7f7f807f7f
	.dword	0                               # 0x0
	.dword	-6919640641878065281            # 0x9ff87f7f7f807f7f
.LCPI2_19:
	.half	33151                           # 0x817f
	.half	32639                           # 0x7f7f
	.half	32512                           # 0x7f00
	.half	32640                           # 0x7f80
	.half	33151                           # 0x817f
	.half	32639                           # 0x7f7f
	.half	32496                           # 0x7ef0
	.half	40952                           # 0x9ff8
	.half	33151                           # 0x817f
	.half	32639                           # 0x7f7f
	.half	32512                           # 0x7f00
	.half	32640                           # 0x7f80
	.half	33151                           # 0x817f
	.half	32639                           # 0x7f7f
	.half	32496                           # 0x7ef0
	.half	40952                           # 0x9ff8
.LCPI2_20:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	127                             # 0x7f
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	127                             # 0x7f
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_21:
	.half	65408                           # 0xff80
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_22:
	.dword	0                               # 0x0
	.dword	262148                          # 0x40004
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_23:
	.word	4294966848                      # 0xfffffe40
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294937728                      # 0xffff8c80
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI2_24:
	.word	262148                          # 0x40004
	.word	262148                          # 0x40004
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_25:
	.dword	1688849860395008                # 0x6000000020000
	.dword	0                               # 0x0
	.dword	1688849860395008                # 0x6000000020000
	.dword	0                               # 0x0
.LCPI2_26:
	.word	0                               # 0x0
	.word	131072                          # 0x20000
	.word	262144                          # 0x40000
	.word	393216                          # 0x60000
	.word	0                               # 0x0
	.word	131072                          # 0x20000
	.word	262144                          # 0x40000
	.word	393216                          # 0x60000
.LCPI2_27:
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_28:
	.dword	-1                              # 0xffffffffffffffff
	.dword	2025524839466146844             # 0x1c1c1c1c1c1c1c1c
	.dword	-1                              # 0xffffffffffffffff
	.dword	2025524839466146844             # 0x1c1c1c1c1c1c1c1c
.LCPI2_29:
	.dword	-215425025                      # 0xfffffffff328dfff
	.dword	1117120993883655                # 0x3f8040002f607
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_30:
	.dword	7372885166919778304             # 0x6651bfff00000000
	.dword	-215425025                      # 0xfffffffff328dfff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_31:
	.dword	688891279441920                 # 0x2728b00000000
	.dword	1117120993883655                # 0x3f8040002f607
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_32:
	.dword	281474979856286                 # 0x10000002fff9e
	.dword	281470677155741                 # 0xfffeffb9ff9d
	.dword	843879464501248                 # 0x2ff80ffb70000
	.dword	-4575375750721830958            # 0xc080ffff0049ffd2
.LCPI2_33:
	.dword	-20829693740515368              # 0xffb5ff80ffd0ffd8
	.dword	281474979856286                 # 0x10000002fff9e
	.dword	-20266743787094056              # 0xffb7ff80ffd0ffd8
	.dword	843879464501248                 # 0x2ff80ffb70000
.LCPI2_34:
	.dword	99643460315447346               # 0x1620133004b0032
	.dword	281470677155741                 # 0xfffeffb9ff9d
	.dword	281470686592978                 # 0xffff0049ffd2
	.dword	-4575375750721830958            # 0xc080ffff0049ffd2
.LCPI2_35:
	.dword	-4991471925827290438            # 0xbabababababababa
	.dword	0                               # 0x0
	.dword	-4991471925827290438            # 0xbabababababababa
	.dword	0                               # 0x0
.LCPI2_36:
	.dword	0                               # 0x0
	.dword	-578721382704613385             # 0xf7f7f7f7f7f7f7f7
	.dword	0                               # 0x0
	.dword	-578721382704613385             # 0xf7f7f7f7f7f7f7f7
.LCPI2_37:
	.dword	0                               # 0x0
	.dword	-360                            # 0xfffffffffffffe98
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_38:
	.dword	100                             # 0x64
	.dword	-360                            # 0xfffffffffffffe98
	.dword	100                             # 0x64
	.dword	0                               # 0x0
.LCPI2_39:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
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
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr1, $sp, 96                   # 32-byte Folded Spill
	ori	$s1, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -524288
	lu52i.d	$a0, $a0, 481
	xvreplgr2vr.d	$xr0, $a0
	xvpickod.b	$xr0, $xr1, $xr0
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
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr1, 0
	xvst	$xr1, $sp, 192                  # 32-byte Folded Spill
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvpickod.b	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
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
	xvpickod.b	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 224
	xvpickod.b	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	lu12i.w	$a0, 2032
	ori	$a0, $a0, 255
	xvreplgr2vr.w	$xr0, $a0
	xvpickod.b	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvpickod.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvpickod.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 224
	ori	$a0, $zero, 1024
	xvreplgr2vr.h	$xr0, $a0
	xvpickod.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 224
	xvpickod.h	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	xvst	$xr0, $sp, 224
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 2047
	xvreplgr2vr.d	$xr1, $a0
	xvpickod.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
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
	xvpickod.h	$xr0, $xr2, $xr1
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
	xvst	$xr0, $sp, 224
	lu52i.d	$a0, $zero, -1025
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvpickod.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvpickod.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvpickod.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	lu32i.d	$s1, 127
	xvreplgr2vr.d	$xr1, $s1
	xvst	$xr1, $sp, 224
	xvpickod.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvpickod.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 224
	xvpickod.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_27)
	xvst	$xr0, $sp, 224
	xvpickod.w	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvpickod.w	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr0, 28
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvpickod.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 224
	xvpickod.d	$xr0, $xr2, $xr1
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
	xvpickod.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_34)
	xvst	$xr0, $sp, 224
	xvpickod.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_35)
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr0, -70
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvpickod.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr0, -9
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvpickod.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 287
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvpickod.d	$xr0, $xr1, $xr0
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
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvpickod.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvpickod.c"
	.size	.L.str.5, 134

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
