	.file	"io.c"
	.text
	.globl	logo                            # -- Begin function logo
	.p2align	5
	.type	logo,@function
logo:                                   # @logo
# %bb.0:                                # %.lr.ph.preheader.i
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$s0, $a0, %pc_lo12(.Lstr.1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 20
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 20
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 80
	blt	$a2, $a1, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader.i3
	ori	$a1, $zero, 79
	sub.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	addi.d	$fp, $a0, 1
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph.i4
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB0_2
.LBB0_3:                                # %center_print.exit9
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 20
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end0:
	.size	logo, .Lfunc_end0-logo
                                        # -- End function
	.globl	border_print                    # -- Begin function border_print
	.p2align	5
	.type	border_print,@function
border_print:                           # @border_print
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end1:
	.size	border_print, .Lfunc_end1-border_print
                                        # -- End function
	.globl	center_print                    # -- Begin function center_print
	.p2align	5
	.type	center_print,@function
center_print:                           # @center_print
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	sub.w	$a0, $s0, $a0
	addi.w	$a1, $zero, -1
	blt	$a0, $a1, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	addi.d	$s0, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB2_2
.LBB2_3:                                # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end2:
	.size	center_print, .Lfunc_end2-center_print
                                        # -- End function
	.globl	fancy_int                       # -- Begin function fancy_int
	.p2align	5
	.type	fancy_int,@function
fancy_int:                              # @fancy_int
# %bb.0:
	ori	$a1, $zero, 999
	move	$a4, $a0
	blt	$a1, $a0, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $a4
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB3_2:
	lu12i.w	$a0, 244
	ori	$a1, $a0, 575
	bltu	$a1, $a4, .LBB3_4
# %bb.3:
	bstrpick.d	$a0, $a4, 31, 0
	lu12i.w	$a1, 67108
	ori	$a1, $a1, 3539
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 38
	ori	$a0, $zero, 1000
	mul.d	$a0, $a1, $a0
	sub.w	$a2, $a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB3_4:
	lu12i.w	$a2, 244140
	ori	$a1, $a2, 2559
	bltu	$a1, $a4, .LBB3_6
# %bb.5:
	bstrpick.d	$a3, $a4, 31, 0
	lu12i.w	$a1, 274877
	ori	$a1, $a1, 3715
	mul.d	$a1, $a3, $a1
	srli.d	$a1, $a1, 50
	ori	$a0, $a0, 576
	mul.d	$a0, $a1, $a0
	sub.d	$a0, $a4, $a0
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a2, 1048
	ori	$a2, $a2, 2360
	mul.d	$a0, $a0, $a2
	srli.d	$a2, $a0, 32
	lu12i.w	$a0, 67108
	ori	$a0, $a0, 3539
	mul.d	$a0, $a3, $a0
	srli.d	$a0, $a0, 38
	ori	$a3, $zero, 1000
	mul.d	$a0, $a0, $a3
	sub.w	$a3, $a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB3_6:
	bstrpick.d	$a1, $a4, 31, 9
	lu12i.w	$a3, 68
	ori	$a3, $a3, 2947
	mul.d	$a1, $a1, $a3
	srli.d	$a1, $a1, 39
	ori	$a2, $a2, 2560
	mul.d	$a2, $a1, $a2
	sub.d	$a2, $a4, $a2
	bstrpick.d	$a2, $a2, 31, 0
	lu12i.w	$a3, 274877
	ori	$a3, $a3, 3715
	mul.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 50
	bstrpick.d	$a5, $a4, 31, 0
	mul.d	$a3, $a5, $a3
	srli.d	$a3, $a3, 50
	ori	$a0, $a0, 576
	mul.d	$a0, $a3, $a0
	sub.d	$a0, $a4, $a0
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a3, 1048
	ori	$a3, $a3, 2360
	mul.d	$a0, $a0, $a3
	srli.d	$a3, $a0, 32
	lu12i.w	$a0, 67108
	ori	$a0, $a0, 3539
	mul.d	$a0, $a5, $a0
	srli.d	$a0, $a0, 38
	ori	$a5, $zero, 1000
	mul.d	$a0, $a0, $a5
	sub.w	$a4, $a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end3:
	.size	fancy_int, .Lfunc_end3-fancy_int
                                        # -- End function
	.globl	read_CLI                        # -- Begin function read_CLI
	.p2align	5
	.type	read_CLI,@function
read_CLI:                               # @read_CLI
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $a1
	ori	$a1, $zero, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.w	$a1, $a0, 24
	ori	$a1, $zero, 2
	lu12i.w	$a0, 2441
	blt	$s6, $a1, .LBB4_35
# %bb.1:                                # %sub_0.preheader
	move	$s5, $a2
	ori	$s2, $zero, 355
	ori	$s8, $zero, 100
	ori	$s0, $zero, 1000
	ori	$s4, $zero, 1
	ori	$s7, $a0, 1664
	ori	$s1, $zero, 116
	ori	$a0, $zero, 100
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$fp, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	b	.LBB4_4
.LBB4_2:                                #   in Loop: Header=BB4_4 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $s6, .LBB4_36
.LBB4_4:                                # %sub_0
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s5, $a0
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB4_44
# %bb.5:                                # %sub_1
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s1, .LBB4_7
# %bb.6:                                # %.tail
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 2
	beqz	$a1, .LBB4_21
.LBB4_7:                                # %sub_152
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 108
	bne	$a1, $a2, .LBB4_9
# %bb.8:                                # %.tail50
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 2
	beqz	$a1, .LBB4_23
.LBB4_9:                                # %sub_157
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 110
	bne	$a1, $a2, .LBB4_11
# %bb.10:                               # %.tail55
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 2
	beqz	$a1, .LBB4_25
.LBB4_11:                               # %sub_162
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 115
	bne	$a1, $a2, .LBB4_13
# %bb.12:                               # %.tail60
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 2
	beqz	$a1, .LBB4_27
.LBB4_13:                               # %sub_167
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s8, .LBB4_15
# %bb.14:                               # %.tail65
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 2
	beqz	$a1, .LBB4_2
.LBB4_15:                               # %sub_172
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 119
	bne	$a1, $a2, .LBB4_17
# %bb.16:                               # %.tail70
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 2
	beqz	$a1, .LBB4_31
.LBB4_17:                               # %sub_177
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 112
	bne	$a1, $a2, .LBB4_44
# %bb.18:                               # %.tail75
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a0, $a0, 2
	bnez	$a0, .LBB4_44
# %bb.19:                               #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $s6, .LBB4_44
# %bb.20:                               #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s5, $a0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB4_3
.LBB4_21:                               #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $s6, .LBB4_44
# %bb.22:                               #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s5, $a0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB4_3
.LBB4_23:                               #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $s6, .LBB4_44
# %bb.24:                               #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s5, $a0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	b	.LBB4_3
.LBB4_25:                               #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $s6, .LBB4_44
# %bb.26:                               #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s5, $a0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	b	.LBB4_3
.LBB4_27:                               #   in Loop: Header=BB4_4 Depth=1
	move	$s8, $s3
	move	$s3, $s7
	addi.w	$s4, $s4, 1
	bge	$s4, $s6, .LBB4_46
# %bb.28:                               #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$s7, $s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_33
# %bb.29:                               #   in Loop: Header=BB4_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_46
# %bb.30:                               #   in Loop: Header=BB4_4 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB4_34
.LBB4_31:                               #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $s6, .LBB4_44
# %bb.32:                               #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s5, $a0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB4_3
.LBB4_33:                               #   in Loop: Header=BB4_4 Depth=1
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
.LBB4_34:                               #   in Loop: Header=BB4_4 Depth=1
	move	$s7, $s3
	move	$s3, $s8
	ori	$s8, $zero, 100
	b	.LBB4_3
.LBB4_35:
	ori	$s0, $zero, 1000
	ori	$a1, $zero, 100
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$s2, $zero, 355
	ori	$s3, $zero, 1
	ori	$s7, $a0, 1664
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$fp, $zero, 1
.LBB4_36:                               # %._crit_edge
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$s0, $a2, 16
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	st.w	$a3, $a2, 20
	st.w	$fp, $a2, 28
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a1, $a2, 12
	st.w	$s2, $a2, 4
	st.w	$s7, $a2, 8
	addi.w	$a0, $s3, 0
	st.w	$s3, $a2, 0
	blez	$a0, .LBB4_45
# %bb.37:
	addi.w	$a0, $s2, 0
	blez	$a0, .LBB4_45
# %bb.38:
	addi.w	$a0, $s7, 0
	blez	$a0, .LBB4_45
# %bb.39:
	addi.w	$a0, $s0, 0
	blez	$a0, .LBB4_45
# %bb.40:
	addi.w	$a0, $a3, 0
	blez	$a0, .LBB4_45
# %bb.41:
	bnez	$a1, .LBB4_43
# %bb.42:
	ori	$a0, $zero, 68
	st.w	$a0, $a2, 4
.LBB4_43:
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB4_44:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$s0, $a1, 16
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 20
	st.w	$fp, $a1, 28
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a1, 12
	st.w	$s2, $a1, 4
	st.w	$s7, $a1, 8
	st.w	$s3, $a1, 0
.LBB4_45:
	pcaddu18i	$ra, %call36(print_CLI_error)
	jirl	$ra, $ra, 0
.LBB4_46:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$s0, $a1, 16
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 20
	st.w	$fp, $a1, 28
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a1, 12
	st.w	$s2, $a1, 4
	st.w	$s3, $a1, 8
	st.w	$s8, $a1, 0
	pcaddu18i	$ra, %call36(print_CLI_error)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	read_CLI, .Lfunc_end4-read_CLI
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	print_CLI_error                 # -- Begin function print_CLI_error
	.p2align	5
	.type	print_CLI_error,@function
print_CLI_error:                        # @print_CLI_error
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.9)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.9)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.10)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.10)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	print_CLI_error, .Lfunc_end5-print_CLI_error
                                        # -- End function
	.text
	.globl	print_input_summary             # -- Begin function print_input_summary
	.p2align	5
	.type	print_input_summary,@function
print_input_summary:                    # @print_input_summary
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a0
	vld	$vr0, $a0, 16
	vld	$vr1, $a0, 0
	vst	$vr0, $sp, 32
	vst	$vr1, $sp, 16
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(get_mem_estimate)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.12)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.Lstr.13)
	addi.d	$a1, $a1, %pc_lo12(.Lstr.13)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.Lstr.14)
	addi.d	$a2, $a2, %pc_lo12(.Lstr.14)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 28
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.Lstr.15)
	addi.d	$a1, $a1, %pc_lo12(.Lstr.15)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.Lstr.16)
	addi.d	$a2, $a2, %pc_lo12(.Lstr.16)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 16
	ori	$a0, $zero, 999
	lu12i.w	$s1, 244
	blt	$a0, $a1, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB6_7
.LBB6_2:
	ori	$a0, $s1, 575
	bltu	$a0, $a1, .LBB6_4
# %bb.3:
	bstrpick.d	$a0, $a1, 31, 0
	lu12i.w	$a2, 67108
	ori	$a2, $a2, 3539
	mul.d	$a0, $a0, $a2
	srli.d	$a3, $a0, 38
	ori	$a0, $zero, 1000
	mul.d	$a0, $a3, $a0
	sub.w	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB6_7
.LBB6_4:
	lu12i.w	$a0, 244140
	ori	$a2, $a0, 2559
	bltu	$a2, $a1, .LBB6_6
# %bb.5:
	bstrpick.d	$a0, $a1, 31, 0
	lu12i.w	$a2, 274877
	ori	$a2, $a2, 3715
	mul.d	$a2, $a0, $a2
	srli.d	$a4, $a2, 50
	ori	$a2, $s1, 576
	mul.d	$a2, $a4, $a2
	sub.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 31, 0
	lu12i.w	$a3, 1048
	ori	$a3, $a3, 2360
	mul.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 32
	lu12i.w	$a3, 67108
	ori	$a3, $a3, 3539
	mul.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 38
	ori	$a3, $zero, 1000
	mul.d	$a0, $a0, $a3
	sub.w	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB6_7
.LBB6_6:
	bstrpick.d	$a2, $a1, 31, 9
	lu12i.w	$a3, 68
	ori	$a3, $a3, 2947
	mul.d	$a2, $a2, $a3
	srli.d	$a5, $a2, 39
	ori	$a0, $a0, 2560
	mul.d	$a0, $a5, $a0
	sub.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a2, 274877
	ori	$a3, $a2, 3715
	mul.d	$a0, $a0, $a3
	srli.d	$a2, $a0, 50
	bstrpick.d	$a0, $a1, 31, 0
	mul.d	$a3, $a0, $a3
	srli.d	$a3, $a3, 50
	ori	$a4, $s1, 576
	mul.d	$a3, $a3, $a4
	sub.d	$a3, $a1, $a3
	bstrpick.d	$a3, $a3, 31, 0
	lu12i.w	$a4, 1048
	ori	$a4, $a4, 2360
	mul.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 32
	lu12i.w	$a4, 67108
	ori	$a4, $a4, 3539
	mul.d	$a0, $a0, $a4
	srli.d	$a0, $a0, 38
	ori	$a4, $zero, 1000
	mul.d	$a0, $a0, $a4
	sub.w	$a4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $a5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB6_7:                                # %fancy_int.exit
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 20
	ori	$a0, $zero, 999
	blt	$a0, $a1, .LBB6_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB6_14
.LBB6_9:
	ori	$a0, $s1, 575
	bltu	$a0, $a1, .LBB6_11
# %bb.10:
	bstrpick.d	$a0, $a1, 31, 0
	lu12i.w	$a2, 67108
	ori	$a2, $a2, 3539
	mul.d	$a0, $a0, $a2
	srli.d	$a3, $a0, 38
	ori	$a0, $zero, 1000
	mul.d	$a0, $a3, $a0
	sub.w	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB6_14
.LBB6_11:
	lu12i.w	$a0, 244140
	ori	$a2, $a0, 2559
	bltu	$a2, $a1, .LBB6_13
# %bb.12:
	bstrpick.d	$a0, $a1, 31, 0
	lu12i.w	$a2, 274877
	ori	$a2, $a2, 3715
	mul.d	$a2, $a0, $a2
	srli.d	$a4, $a2, 50
	ori	$a2, $s1, 576
	mul.d	$a2, $a4, $a2
	sub.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 31, 0
	lu12i.w	$a3, 1048
	ori	$a3, $a3, 2360
	mul.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 32
	lu12i.w	$a3, 67108
	ori	$a3, $a3, 3539
	mul.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 38
	ori	$a3, $zero, 1000
	mul.d	$a0, $a0, $a3
	sub.w	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB6_14
.LBB6_13:
	bstrpick.d	$a2, $a1, 31, 9
	lu12i.w	$a3, 68
	ori	$a3, $a3, 2947
	mul.d	$a2, $a2, $a3
	srli.d	$a5, $a2, 39
	ori	$a0, $a0, 2560
	mul.d	$a0, $a5, $a0
	sub.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a2, 274877
	ori	$a3, $a2, 3715
	mul.d	$a0, $a0, $a3
	srli.d	$a2, $a0, 50
	bstrpick.d	$a0, $a1, 31, 0
	mul.d	$a3, $a0, $a3
	srli.d	$a3, $a3, 50
	ori	$a4, $s1, 576
	mul.d	$a3, $a3, $a4
	sub.d	$a3, $a1, $a3
	bstrpick.d	$a3, $a3, 31, 0
	lu12i.w	$a4, 1048
	ori	$a4, $a4, 2360
	mul.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 32
	lu12i.w	$a4, 67108
	ori	$a4, $a4, 3539
	mul.d	$a0, $a0, $a4
	srli.d	$a0, $a0, 38
	ori	$a4, $zero, 1000
	mul.d	$a0, $a0, $a4
	sub.w	$a4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $a5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB6_14:                               # %fancy_int.exit5
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	ori	$a0, $zero, 999
	blt	$a0, $a1, .LBB6_16
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB6_21
.LBB6_16:
	ori	$a0, $s1, 575
	bltu	$a0, $a1, .LBB6_18
# %bb.17:
	bstrpick.d	$a0, $a1, 31, 0
	lu12i.w	$a2, 67108
	ori	$a2, $a2, 3539
	mul.d	$a0, $a0, $a2
	srli.d	$a3, $a0, 38
	ori	$a0, $zero, 1000
	mul.d	$a0, $a3, $a0
	sub.w	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB6_21
.LBB6_18:
	lu12i.w	$a0, 244140
	ori	$a2, $a0, 2559
	bltu	$a2, $a1, .LBB6_20
# %bb.19:
	bstrpick.d	$a0, $a1, 31, 0
	lu12i.w	$a2, 274877
	ori	$a2, $a2, 3715
	mul.d	$a2, $a0, $a2
	srli.d	$a4, $a2, 50
	ori	$a2, $s1, 576
	mul.d	$a2, $a4, $a2
	sub.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 31, 0
	lu12i.w	$a3, 1048
	ori	$a3, $a3, 2360
	mul.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 32
	lu12i.w	$a3, 67108
	ori	$a3, $a3, 3539
	mul.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 38
	ori	$a3, $zero, 1000
	mul.d	$a0, $a0, $a3
	sub.w	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB6_21
.LBB6_20:
	bstrpick.d	$a2, $a1, 31, 9
	lu12i.w	$a3, 68
	ori	$a3, $a3, 2947
	mul.d	$a2, $a2, $a3
	srli.d	$a5, $a2, 39
	ori	$a0, $a0, 2560
	mul.d	$a0, $a5, $a0
	sub.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a2, 274877
	ori	$a3, $a2, 3715
	mul.d	$a0, $a0, $a3
	srli.d	$a2, $a0, 50
	bstrpick.d	$a0, $a1, 31, 0
	mul.d	$a3, $a0, $a3
	srli.d	$a3, $a3, 50
	ori	$a4, $s1, 576
	mul.d	$a3, $a3, $a4
	sub.d	$a3, $a1, $a3
	bstrpick.d	$a3, $a3, 31, 0
	lu12i.w	$a4, 1048
	ori	$a4, $a4, 2360
	mul.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 32
	lu12i.w	$a4, 67108
	ori	$a4, $a4, 3539
	mul.d	$a0, $a0, $a4
	srli.d	$a0, $a0, 38
	ori	$a4, $zero, 1000
	mul.d	$a0, $a0, $a4
	sub.w	$a4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $a5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB6_21:                               # %fancy_int.exit6
	ld.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	srli.d	$a0, $fp, 32
	lu52i.d	$a1, $zero, 1107
	or	$a0, $a0, $a1
	movgr2fr.d	$fa0, $a0
	lu12i.w	$a0, 256
	lu52i.d	$a0, $a0, 1107
	movgr2fr.d	$fa1, $a0
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a0, 275200
	bstrins.d	$fp, $a0, 63, 32
	movgr2fr.d	$fa1, $fp
	fadd.d	$fa0, $fa1, $fa0
	lu52i.d	$a0, $zero, 1013
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end6:
	.size	print_input_summary, .Lfunc_end6-print_input_summary
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Developed at Argonne National Laboratory"
	.size	.L.str.1, 41

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Version: %d"
	.size	.L.str.2, 12

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%d\n"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d,%03d\n"
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%d,%03d,%03d\n"
	.size	.L.str.8, 14

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%d,%03d,%03d,%03d\n"
	.size	.L.str.9, 19

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"small"
	.size	.L.str.14, 6

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"large"
	.size	.L.str.15, 6

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"H-M Benchmark Size:          "
	.size	.L.str.30, 30

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Total Nuclides:              %d\n"
	.size	.L.str.35, 33

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Avg Poles per Nuclide:       "
	.size	.L.str.36, 30

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Avg Windows per Nuclide:     "
	.size	.L.str.37, 30

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"XS Lookups:                  "
	.size	.L.str.38, 30

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Threads:                     %d\n"
	.size	.L.str.39, 33

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Est. Memory Usage (MB):      %.1lf\n"
	.size	.L.str.40, 36

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"                    _____   _____ ____                  _     \n                   |  __ \\ / ____|  _ \\                | |    \n                   | |__) | (___ | |_) | ___ _ __   ___| |__  \n                   |  _  / \\___ \\|  _ < / _ \\ '_ \\ / __| '_ \\ \n                   | | \\ \\ ____) | |_) |  __/ | | | (__| | | |\n                   |_|  \\_\\_____/|____/ \\___|_| |_|\\___|_| |_|"
	.size	.Lstr, 378

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"================================================================================"
	.size	.Lstr.1, 81

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Usage: ./multibench <options>"
	.size	.Lstr.2, 30

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Options include:"
	.size	.Lstr.3, 17

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"  -t <threads>     Number of OpenMP threads to run"
	.size	.Lstr.4, 51

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"  -s <size>        Size of H-M Benchmark to run (small, large)"
	.size	.Lstr.5, 63

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"  -l <lookups>     Number of Cross-section (XS) lookups"
	.size	.Lstr.6, 56

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"  -p <poles>       Average Number of Poles per Nuclide"
	.size	.Lstr.7, 55

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"  -w <poles>       Average Number of Windows per Nuclide"
	.size	.Lstr.8, 57

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"  -d               Disables Temperature Dependence (Doppler Broadening)"
	.size	.Lstr.9, 72

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"Default is equivalent to: -s large -l 10000000 -p 1000 -w 100"
	.size	.Lstr.10, 62

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"See readme for full description of default run values"
	.size	.Lstr.11, 54

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"Materials:                   12"
	.size	.Lstr.12, 32

	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	"Large"
	.size	.Lstr.13, 6

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"Small"
	.size	.Lstr.14, 6

	.type	.Lstr.15,@object                # @str.15
.Lstr.15:
	.asciz	"Temperature Dependence:      OFF"
	.size	.Lstr.15, 33

	.type	.Lstr.16,@object                # @str.16
.Lstr.16:
	.asciz	"Temperature Dependence:      ON"
	.size	.Lstr.16, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
