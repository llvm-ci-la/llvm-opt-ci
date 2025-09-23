	.file	"lsx-vbitrevi.c"
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
	.dword	-1411627866023989932            # 0xec68e3ef5a98ed54
	.dword	289360691352306692              # 0x404040404040404
.LCPI2_1:
	.dword	-1157442765409226769            # 0xefefefefefefefef
	.dword	1157442765409226768             # 0x1010101010101010
.LCPI2_2:
	.dword	2026374941804067835             # 0x1c1f2145fbfbfbfb
	.dword	4620603027596508155             # 0x401fadf8fbfbfbfb
.LCPI2_3:
	.dword	-217020582939198211             # 0xfcfcfcedfcf5fcfd
	.dword	-217020506686291972             # 0xfcfcfcffbdfcfffc
.LCPI2_4:
	.dword	72227625937995851               # 0x1009aa4a301084b
	.dword	7176679015680055                # 0x197f26cb658837
.LCPI2_5:
	.dword	576751577558157317              # 0x801088108000805
	.dword	576469550409680896              # 0x800080077ff8800
.LCPI2_6:
	.dword	288234778426080002              # 0x4000400fbfffb02
	.dword	288234774265332736              # 0x400040004000400
.LCPI2_7:
	.dword	288234774265332749              # 0x40004000400040d
	.dword	288234774265332736              # 0x400040004000400
.LCPI2_8:
	.dword	4114098828122272530             # 0x3918371635143312
	.dword	81134192399498010               # 0x1203f1e3d1c3b1a
.LCPI2_9:
	.dword	-2206756858980174118            # 0xe160065422d476da
	.dword	-4362859991498752               # 0xfff0800080008000
.LCPI2_10:
	.dword	3816820951950380019             # 0x34f8126ef4454bf3
	.dword	-2963194668043179151            # 0xd6e09e262af46b71
.LCPI2_11:
	.dword	70368744206340                  # 0x400000007004
	.dword	70368744194048                  # 0x400000004000
.LCPI2_12:
	.dword	70368746291216                  # 0x400000204010
	.dword	70368744194048                  # 0x400000004000
.LCPI2_13:
	.dword	8484851887428878278             # 0x75c03fd642003fc6
	.dword	8484852385645084730             # 0x75c0404a4200403a
.LCPI2_14:
	.dword	1103806594815                   # 0x100fffffeff
	.dword	-1099511628033                  # 0xfffffefffffffeff
.LCPI2_15:
	.dword	4503599665647361                # 0x10000002480f01
	.dword	4503599631915145                # 0x10000000455889
.LCPI2_16:
	.dword	4611686019501129728             # 0x4000000040000000
	.dword	4611686019501129727             # 0x400000003fffffff
.LCPI2_17:
	.dword	1338003328                      # 0x4fc04f80
	.dword	1338003329                      # 0x4fc04f81
.LCPI2_18:
	.dword	2097152                         # 0x200000
	.dword	2097160                         # 0x200008
.LCPI2_19:
	.dword	580263000149951                 # 0x20fbf02000fbf
	.dword	1706162907254719                # 0x60fbf02040fbf
.LCPI2_20:
	.dword	-9223153476706449742            # 0x8000c6c78000c6b2
	.dword	218545115940550                 # 0xc6c40000c6c6
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	vrepli.b	$vr0, 2
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 22
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 27
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 32
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 64
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 37
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 8
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 42
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16448
	ori	$a0, $a0, 1028
	lu32i.d	$a0, 263428
	lu52i.d	$a0, $a0, 64
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 47
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, -65
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 52
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 57
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, -128
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 62
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 67
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 72
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 77
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 82
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1024
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 87
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 92
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 97
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.h	$vr0, 64
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 102
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_8)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 107
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 112
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 262148
	lu32i.d	$a0, 16400
	lu52i.d	$a0, $a0, 1916
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 117
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$s1, 1
	vreplgr2vr.h	$vr0, $s1
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 122
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 2
	vreplgr2vr.h	$vr0, $s0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 127
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 132
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_11)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 137
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 142
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 147
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 256
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 152
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 157
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_14)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 162
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu32i.d	$s1, -4097
	vreplgr2vr.d	$vr0, $s1
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 167
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 256
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 172
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 177
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 182
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, -129
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 187
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, -17
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 192
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_17)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 197
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 33408
	ori	$a0, $a0, 2056
	lu32i.d	$a0, -522232
	lu52i.d	$a0, $a0, 128
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 202
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 262144
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 207
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 32
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 212
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.d	$vr0, 256
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 217
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 2
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 222
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vreplgr2vr.d	$vr0, $s0
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_18)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 232
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_19)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 237
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 16
	ori	$a4, $zero, 242
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vbitrevi.c"
	.size	.L.str.5, 132

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
