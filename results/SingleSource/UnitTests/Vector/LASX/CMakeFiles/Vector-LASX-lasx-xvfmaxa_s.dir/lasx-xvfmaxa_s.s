	.file	"lasx-xvfmaxa_s.c"
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
	.word	21                              # 0x15
	.word	0                               # 0x0
	.word	21845                           # 0x5555
	.word	21845                           # 0x5555
	.word	4268943381                      # 0xfe72e815
	.word	198655                          # 0x307ff
	.word	21845                           # 0x5555
	.word	21845                           # 0x5555
.LCPI2_1:
	.word	262144                          # 0x40000
	.word	16711935                        # 0xff00ff
	.word	16711935                        # 0xff00ff
	.word	16711935                        # 0xff00ff
	.word	786432                          # 0xc0000
	.word	16711935                        # 0xff00ff
	.word	16711935                        # 0xff00ff
	.word	16711935                        # 0xff00ff
.LCPI2_2:
	.word	0                               # 0x0
	.word	2047                            # 0x7ff
	.word	2047                            # 0x7ff
	.word	2047                            # 0x7ff
	.word	0                               # 0x0
	.word	2047                            # 0x7ff
	.word	2047                            # 0x7ff
	.word	2047                            # 0x7ff
.LCPI2_3:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xffffffff                      # float NaN
	.word	0xffffffff                      # float NaN
.LCPI2_4:
	.word	0xfffff800                      # float NaN
	.word	0x000007ff                      # float 2.86845796E-42
	.word	0x000007ff                      # float 2.86845796E-42
	.word	0x000007ff                      # float 2.86845796E-42
	.word	0xfffff800                      # float NaN
	.word	0x000007ff                      # float 2.86845796E-42
	.word	0x000007ff                      # float 2.86845796E-42
	.word	0x000007ff                      # float 2.86845796E-42
.LCPI2_5:
	.word	4286578688                      # 0xff800000
	.word	2031840                         # 0x1f00e0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4286578688                      # 0xff800000
	.word	2031840                         # 0x1f00e0
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI2_6:
	.word	0xff800000                      # float -Inf
	.word	0x80000000                      # float -0
	.word	0x80000000                      # float -0
	.word	0x80000000                      # float -0
	.word	0xff800000                      # float -Inf
	.word	0x80000000                      # float -0
	.word	0x80000000                      # float -0
	.word	0x80000000                      # float -0
.LCPI2_7:
	.word	0x1f1f1fff                      # float 3.36960262E-20
	.word	0x001f00e0                      # float 2.84721427E-39
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
	.word	0x1f1f1fff                      # float 3.36960262E-20
	.word	0x001f00e0                      # float 2.84721427E-39
	.word	0x00000001                      # float 1.40129846E-45
	.word	0x00000000                      # float 0
.LCPI2_8:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_9:
	.word	536936449                       # 0x20010001
	.word	65535                           # 0xffff
	.word	2684353920                      # 0x9ffffd80
	.word	40959                           # 0x9fff
	.word	536936449                       # 0x20010001
	.word	65535                           # 0xffff
	.word	2684353920                      # 0x9ffffd80
	.word	40959                           # 0x9fff
.LCPI2_10:
	.word	0x20010001                      # float 1.09267263E-19
	.word	0xfffe97c0                      # float NaN
	.word	0x9ffffd80                      # float -1.08416081E-19
	.word	0xfffeb683                      # float NaN
	.word	0x20010001                      # float 1.09267263E-19
	.word	0xfffe97c0                      # float NaN
	.word	0x9ffffd80                      # float -1.08416081E-19
	.word	0xfffeb683                      # float NaN
.LCPI2_11:
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00002001                      # float 1.14808383E-41
	.word	0x00009fff                      # float 5.73957838E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x0000ffff                      # float 9.18340949E-41
	.word	0x00002001                      # float 1.14808383E-41
	.word	0x00009fff                      # float 5.73957838E-41
.LCPI2_12:
	.word	0x0055ffab                      # float 7.89773355E-39
	.word	0xc0650055                      # float -3.57814527
	.word	0x00000080                      # float 1.79366203E-43
	.word	0x00000170                      # float 5.15677835E-43
	.word	0x0055ffab                      # float 7.89773355E-39
	.word	0xc0650055                      # float -3.57814527
	.word	0x00000080                      # float 1.79366203E-43
	.word	0x00000170                      # float 5.15677835E-43
.LCPI2_13:
	.word	4294901760                      # 0xffff0000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294901760                      # 0xffff0000
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_14:
	.word	12845190                        # 0xc40086
	.word	0                               # 0x0
	.word	65536                           # 0x10000
	.word	0                               # 0x0
	.word	12845190                        # 0xc40086
	.word	0                               # 0x0
	.word	65536                           # 0x10000
	.word	0                               # 0x0
.LCPI2_15:
	.word	0x02a54287                      # float 2.42827558E-37
	.word	0x00000000                      # float 0
	.word	0x82a54290                      # float -2.4282776E-37
	.word	0x00000000                      # float 0
	.word	0x028aa700                      # float 2.03731309E-37
	.word	0x00000000                      # float 0
	.word	0x82a54290                      # float -2.4282776E-37
	.word	0x00000000                      # float 0
.LCPI2_16:
	.word	0x00c40086                      # float 1.7999945E-38
	.word	0x00000000                      # float 0
	.word	0x00010000                      # float 9.18354962E-41
	.word	0x00fe01f0                      # float 2.33269111E-38
	.word	0x00c40086                      # float 1.7999945E-38
	.word	0x00000000                      # float 0
	.word	0x00010000                      # float 9.18354962E-41
	.word	0x00fe01f0                      # float 2.33269111E-38
.LCPI2_17:
	.word	137                             # 0x89
	.word	0                               # 0x0
	.word	44384912                        # 0x2a54290
	.word	0                               # 0x0
	.word	22338692                        # 0x154dc84
	.word	0                               # 0x0
	.word	44384912                        # 0x2a54290
	.word	0                               # 0x0
.LCPI2_18:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x04000000                      # float 1.50463277E-36
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x04000000                      # float 1.50463277E-36
	.word	0x00000000                      # float 0
.LCPI2_19:
	.word	0x00000010                      # float 2.24207754E-44
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000010                      # float 2.24207754E-44
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 192
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvst	$xr0, $sp, 96
	xvrepli.b	$xr1, 0
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvfmaxa.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvfmaxa.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 96
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvfmaxa.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_4)
	xvst	$xr0, $sp, 96
	xvfmaxa.s	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_5)
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_7)
	xvst	$xr0, $sp, 96
	xvfmaxa.s	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 96
	xvfmaxa.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 96
	xvfmaxa.s	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvfmina.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_13)
	xvst	$xr0, $sp, 96
	xvrepli.h	$xr1, -2
	xvfmina.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvfmina.s	$xr1, $xr0, $xr0
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 96
	xvfmina.s	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	xvst	$xr0, $sp, 96
	xvfmina.s	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_18)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvfmina.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvldi	$xr0, -3568
	xvfmina.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_19)
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 96
	xvfmina.s	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.w	$xr0, 1
	xvst	$xr0, $sp, 96
	xvrepli.w	$xr1, 128
	xvfmina.s	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 128
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -192
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
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
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvfmaxa_s.c"
	.size	.L.str.5, 135

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
