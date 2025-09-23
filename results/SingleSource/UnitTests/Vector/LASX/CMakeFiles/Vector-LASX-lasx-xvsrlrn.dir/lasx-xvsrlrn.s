	.file	"lasx-xvsrlrn.c"
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
	.dword	144680345659310080              # 0x202020201010000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_1:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	49151                           # 0xbfff
	.half	26193                           # 0x6651
	.half	57343                           # 0xdfff
	.half	62248                           # 0xf328
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
.LCPI2_2:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	1285                            # 0x505
	.dword	0                               # 0x0
.LCPI2_3:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	5                               # 0x5
	.half	5                               # 0x5
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_4:
	.half	6656                            # 0x1a00
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	6656                            # 0x1a00
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_5:
	.dword	1095216660735                   # 0xff000000ff
	.dword	0                               # 0x0
	.dword	1095216660735                   # 0xff000000ff
	.dword	0                               # 0x0
.LCPI2_6:
	.dword	4278321152                      # 0xff020000
	.dword	0                               # 0x0
	.dword	4278321152                      # 0xff020000
	.dword	0                               # 0x0
.LCPI2_7:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65280                           # 0xff00
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65280                           # 0xff00
.LCPI2_8:
	.dword	1196264356052992                # 0x43fff00000000
	.dword	0                               # 0x0
	.dword	1196264356052992                # 0x43fff00000000
	.dword	0                               # 0x0
.LCPI2_9:
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	65023                           # 0xfdff
	.half	33855                           # 0x843f
	.half	4                               # 0x4
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	65023                           # 0xfdff
	.half	33855                           # 0x843f
	.half	4                               # 0x4
	.half	0                               # 0x0
.LCPI2_10:
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI2_11:
	.word	65281                           # 0xff01
	.word	0                               # 0x0
	.word	16711680                        # 0xff0000
	.word	65281                           # 0xff01
	.word	65281                           # 0xff01
	.word	0                               # 0x0
	.word	16711680                        # 0xff0000
	.word	65281                           # 0xff01
.LCPI2_12:
	.dword	9007199256903679                # 0x2000000020ffff
	.dword	0                               # 0x0
	.dword	9007199256838144                # 0x20000000200000
	.dword	0                               # 0x0
.LCPI2_13:
	.word	14876928                        # 0xe30100
	.word	4280090395                      # 0xff1cff1b
	.word	14876900                        # 0xe300e4
	.word	4280090395                      # 0xff1cff1b
	.word	14876900                        # 0xe300e4
	.word	4280090395                      # 0xff1cff1b
	.word	14876900                        # 0xe300e4
	.word	4280090395                      # 0xff1cff1b
.LCPI2_14:
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	0                               # 0x0
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	0                               # 0x0
.LCPI2_15:
	.dword	5617591427834708673             # 0x4df5b1a3ed5e02c1
	.dword	1190737988959991777             # 0x108659e46485f7e1
	.dword	5617591427834708673             # 0x4df5b1a3ed5e02c1
	.dword	1190737988959991777             # 0x108659e46485f7e1
.LCPI2_16:
	.dword	562962830065666                 # 0x20002ff820002
	.dword	0                               # 0x0
	.dword	562962830065666                 # 0x20002ff820002
	.dword	0                               # 0x0
.LCPI2_17:
	.dword	-35465834188898302              # 0xff820002ff820002
	.dword	562958543486978                 # 0x2000200020002
	.dword	-35465834188898302              # 0xff820002ff820002
	.dword	562958543486978                 # 0x2000200020002
.LCPI2_18:
	.dword	2                               # 0x2
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	0                               # 0x0
.LCPI2_19:
	.dword	4042322160                      # 0xf0f0f0f0
	.dword	0                               # 0x0
	.dword	4042322160                      # 0xf0f0f0f0
	.dword	0                               # 0x0
.LCPI2_20:
	.dword	567493354852644                 # 0x20421d7d41124
	.dword	0                               # 0x0
	.dword	567493354852644                 # 0x20421d7d41124
	.dword	0                               # 0x0
.LCPI2_21:
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	0                               # 0x0
.LCPI2_22:
	.dword	143554428555820801              # 0x1fe01fe0000ff01
	.dword	0                               # 0x0
	.dword	143554428555820801              # 0x1fe01fe0000ff01
	.dword	0                               # 0x0
.LCPI2_23:
	.dword	1992                            # 0x7c8
	.dword	0                               # 0x0
	.dword	1992                            # 0x7c8
	.dword	0                               # 0x0
.LCPI2_24:
	.dword	16711936                        # 0xff0100
	.dword	33423870                        # 0x1fe01fe
	.dword	16711936                        # 0xff0100
	.dword	33423870                        # 0x1fe01fe
.LCPI2_25:
	.dword	-434041041222369278             # 0xf9f9f9f900000002
	.dword	0                               # 0x0
	.dword	-434041041222369278             # 0xf9f9f9f900000002
	.dword	0                               # 0x0
.LCPI2_26:
	.dword	4010932519108593                # 0xe3fec0004fff1
	.dword	0                               # 0x0
	.dword	4010932519108593                # 0xe3fec0004fff1
	.dword	0                               # 0x0
.LCPI2_27:
	.dword	72339069014704128               # 0x101000000010000
	.dword	2207646876162                   # 0x20202020202
	.dword	72339069014704128               # 0x101000000010000
	.dword	2207646876162                   # 0x20202020202
.LCPI2_28:
	.dword	-22518101215739919              # 0xffafffe80004fff1
	.dword	-10133545834446929              # 0xffdbff980038ffaf
	.dword	-22518101215739919              # 0xffafffe80004fff1
	.dword	-10133545834446929              # 0xffdbff980038ffaf
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
	xvst	$xr0, $sp, 160
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvsrlrn.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 160
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	xvsrlrn.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	lu12i.w	$a0, 8
	xvreplgr2vr.h	$xr0, $a0
	xvsrlrn.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_4)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvsrlrn.b.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 160
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvsrlrn.b.h	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrlrn.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvsrlrn.b.h	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
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
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_9)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrlrn.b.h	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_10)
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvsrlrn.h.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	lu52i.d	$a0, $zero, -2048
	xvreplgr2vr.d	$xr0, $a0
	xvsrlrn.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_11)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvsrlrn.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	xvreplgr2vr.d	$xr0, $a0
	xvsrlrn.h.w	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlrn.h.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvsrlrn.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvsrlrn.w.d	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvsrlrn.w.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_19)
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_20)
	xvst	$xr0, $sp, 160
	xvsrlrn.w.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr1, $sp, 160
	xvsrlrn.w.d	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvld	$xr1, $sp, 128                  # 32-byte Folded Reload
	xvsrlrn.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_24)
	xvst	$xr0, $sp, 160
	xvsrlrn.w.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 160
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_25)
	xvst	$xr0, $sp, 160
	xvrepli.b	$xr0, -7
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvsrlrn.w.d	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_28)
	xvst	$xr0, $sp, 160
	xvsrlrn.w.d	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 192
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvsrlrn.c"
	.size	.L.str.5, 133

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
