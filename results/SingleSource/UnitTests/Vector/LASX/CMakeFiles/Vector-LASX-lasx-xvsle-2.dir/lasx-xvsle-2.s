	.file	"lasx-xvsle-2.c"
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
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	0                               # 0x0
.LCPI2_1:
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
	.byte	16                              # 0x10
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
	.byte	16                              # 0x10
	.byte	0                               # 0x0
.LCPI2_2:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_3:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
	.byte	117                             # 0x75
.LCPI2_4:
	.dword	-281470681808896                # 0xffff0000ffff0000
	.dword	-4294967041                     # 0xffffffff000000ff
	.dword	-281470681808896                # 0xffff0000ffff0000
	.dword	-4294967041                     # 0xffffffff000000ff
.LCPI2_5:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	241                             # 0xf1
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	241                             # 0xf1
	.byte	255                             # 0xff
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
	.byte	241                             # 0xf1
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	241                             # 0xf1
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_6:
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_7:
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
.LCPI2_8:
	.half	255                             # 0xff
	.half	23423                           # 0x5b7f
	.half	255                             # 0xff
	.half	23423                           # 0x5b7f
	.half	0                               # 0x0
	.half	21152                           # 0x52a0
	.half	0                               # 0x0
	.half	57088                           # 0xdf00
	.half	255                             # 0xff
	.half	23423                           # 0x5b7f
	.half	255                             # 0xff
	.half	23423                           # 0x5b7f
	.half	0                               # 0x0
	.half	21152                           # 0x52a0
	.half	0                               # 0x0
	.half	57088                           # 0xdf00
.LCPI2_9:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-281470681743361                # 0xffff0000ffffffff
.LCPI2_10:
	.half	17034                           # 0x428a
	.half	0                               # 0x0
	.half	16320                           # 0x3fc0
	.half	0                               # 0x0
	.half	49309                           # 0xc09d
	.half	65535                           # 0xffff
	.half	49216                           # 0xc040
	.half	65535                           # 0xffff
	.half	17034                           # 0x428a
	.half	0                               # 0x0
	.half	16320                           # 0x3fc0
	.half	0                               # 0x0
	.half	49309                           # 0xc09d
	.half	65535                           # 0xffff
	.half	49216                           # 0xc040
	.half	65535                           # 0xffff
.LCPI2_11:
	.half	65329                           # 0xff31
	.half	142                             # 0x8e
	.half	65448                           # 0xffa8
	.half	23                              # 0x17
	.half	56                              # 0x38
	.half	32824                           # 0x8038
	.half	185                             # 0xb9
	.half	32953                           # 0x80b9
	.half	65340                           # 0xff3c
	.half	131                             # 0x83
	.half	65285                           # 0xff05
	.half	186                             # 0xba
	.half	12                              # 0xc
	.half	32780                           # 0x800c
	.half	65454                           # 0xffae
	.half	32785                           # 0x8011
.LCPI2_12:
	.dword	-4294901761                     # 0xffffffff0000ffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294901761                     # 0xffffffff0000ffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_13:
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_14:
	.half	1023                            # 0x3ff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1023                            # 0x3ff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_15:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_16:
	.half	1516                            # 0x5ec
	.half	1514                            # 0x5ea
	.half	1514                            # 0x5ea
	.half	1514                            # 0x5ea
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1516                            # 0x5ec
	.half	1514                            # 0x5ea
	.half	1514                            # 0x5ea
	.half	1514                            # 0x5ea
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_17:
	.half	64020                           # 0xfa14
	.half	64021                           # 0xfa15
	.half	64021                           # 0xfa15
	.half	64021                           # 0xfa15
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	64020                           # 0xfa14
	.half	64021                           # 0xfa15
	.half	64021                           # 0xfa15
	.half	64021                           # 0xfa15
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_19:
	.word	0                               # 0x0
	.word	4294967038                      # 0xfffffefe
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967038                      # 0xfffffefe
	.word	4294967038                      # 0xfffffefe
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_20:
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967296                     # 0xffffffff00000000
	.dword	-1                              # 0xffffffffffffffff
	.dword	-4294967296                     # 0xffffffff00000000
.LCPI2_21:
	.word	65535                           # 0xffff
	.word	65535                           # 0xffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	65535                           # 0xffff
	.word	65535                           # 0xffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_22:
	.word	44384912                        # 0x2a54290
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	44384912                        # 0x2a54290
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_23:
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967295                      # 0xffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_24:
	.word	51179                           # 0xc7eb
	.word	65206                           # 0xfeb6
	.word	47056                           # 0xb7d0
	.word	65206                           # 0xfeb6
	.word	51179                           # 0xc7eb
	.word	65206                           # 0xfeb6
	.word	47056                           # 0xb7d0
	.word	65206                           # 0xfeb6
.LCPI2_25:
	.word	4278259696                      # 0xff010ff0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4278259696                      # 0xff010ff0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_26:
	.word	4294967295                      # 0xffffffff
	.word	2147483647                      # 0x7fffffff
	.word	2565492682                      # 0x98ea4fca
	.word	84348                           # 0x1497c
	.word	4294967295                      # 0xffffffff
	.word	2147483647                      # 0x7fffffff
	.word	2565492682                      # 0x98ea4fca
	.word	84348                           # 0x1497c
.LCPI2_27:
	.word	3747299791                      # 0xdf5b41cf
	.word	4294875072                      # 0xfffe97c0
	.word	8387968                         # 0x7ffd80
	.word	4294882947                      # 0xfffeb683
	.word	3747299791                      # 0xdf5b41cf
	.word	4294875072                      # 0xfffe97c0
	.word	8387968                         # 0x7ffd80
	.word	4294882947                      # 0xfffeb683
.LCPI2_28:
	.word	83166445                        # 0x4f504ed
	.word	82904305                        # 0x4f104f1
	.word	196605                          # 0x2fffd
	.word	65535                           # 0xffff
	.word	83166445                        # 0x4f504ed
	.word	82904305                        # 0x4f104f1
	.word	196605                          # 0x2fffd
	.word	65535                           # 0xffff
.LCPI2_29:
	.word	4294967056                      # 0xffffff10
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967056                      # 0xffffff10
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_30:
	.dword	72340172838076674               # 0x101010101010102
	.dword	72340172838076674               # 0x101010101010102
	.dword	72340177133044228               # 0x101010201010204
	.dword	72340172838076674               # 0x101010101010102
.LCPI2_31:
	.dword	-88306675089408                 # 0xffffafaf80000000
	.dword	-9223372030412292225            # 0x8000000180007f7f
	.dword	-88306675089408                 # 0xffffafaf80000000
	.dword	-9223372030412292225            # 0x8000000180007f7f
.LCPI2_32:
	.dword	567493354852644                 # 0x20421d7d41124
	.dword	0                               # 0x0
	.dword	567493354852644                 # 0x20421d7d41124
	.dword	0                               # 0x0
.LCPI2_33:
	.dword	5551407994588627164             # 0x4d0a902890b800dc
	.dword	-40095                          # 0xffffffffffff6361
	.dword	5551407994588627164             # 0x4d0a902890b800dc
	.dword	-40095                          # 0xffffffffffff6361
.LCPI2_34:
	.dword	-396098526969855                # 0xfffe97c020010001
	.dword	-362273512096384                # 0xfffeb6839ffffd80
	.dword	-396098526969855                # 0xfffe97c020010001
	.dword	-362273512096384                # 0xfffeb6839ffffd80
.LCPI2_35:
	.dword	-7721426706497536000            # 0x94d7fb5200000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_36:
	.dword	70300024717296                  # 0x3ff000003ff0
	.dword	70295729749994                  # 0x3fef00003fea
	.dword	70300024717296                  # 0x3ff000003ff0
	.dword	70295729749994                  # 0x3fef00003fea
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
	addi.d	$fp, $sp, 320
	bstrins.d	$sp, $zero, 4, 0
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvsle.bu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
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
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvrepli.d	$xr0, -18
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvsle.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvsle.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_2)
	xvst	$xr1, $sp, 128                  # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvsle.bu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_6)
	xvst	$xr0, $sp, 224
	xvsle.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvrepli.d	$xr0, 382
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvsle.hu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvsle.hu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvsle.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
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
	xvsle.hu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 224
	xvrepli.b	$xr0, 8
	xvsle.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
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
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvsle.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr2, $sp, 96                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr2, $sp, 224
	xvsle.hu	$xr0, $xr1, $xr0
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
	xvsle.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_21)
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvsle.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvsle.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvsle.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 224
	xvsle.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 224
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvsle.wu	$xr0, $xr0, $xr1
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
	xvsle.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvsle.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_27)
	xvld	$xr2, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvsle.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_28)
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_29)
	xvld	$xr2, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvsle.wu	$xr0, $xr1, $xr0
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
	lu12i.w	$a0, -4096
	xvreplgr2vr.d	$xr0, $a0
	lu12i.w	$a0, 4096
	lu32i.d	$a0, 4
	xvreplgr2vr.d	$xr1, $a0
	xvsle.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_30)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvsle.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvsle.du	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 278
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_31)
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_32)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvsle.du	$xr0, $xr1, $xr0
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
	lu52i.d	$a0, $zero, -1
	xvreplgr2vr.d	$xr1, $a0
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	lu12i.w	$a0, -3556
	ori	$a0, $a0, 577
	xvreplgr2vr.w	$xr0, $a0
	xvsle.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 296
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvsle.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 305
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvsle.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 314
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 192                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvsle.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 323
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 224
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 332
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvsle.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 341
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_35)
	xvld	$xr2, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr2, $sp, 224
	xvsle.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 350
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 224
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	xvsle.du	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 256
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 32
	ori	$a4, $zero, 359
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -320
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvsle-2.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
