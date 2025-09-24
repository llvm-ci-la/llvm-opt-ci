	.file	"nbench0.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	5                               # 0x5
	.dword	3000                            # 0xbb8
.LCPI0_1:
	.dword	5                               # 0x5
	.dword	4000                            # 0xfa0
.LCPI0_2:
	.dword	5                               # 0x5
	.dword	5000                            # 0x1388
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	move	$t0, $a0
	pcalau12i	$a1, %pc_hi20(global_min_ticks)
	ori	$a0, $zero, 60
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(global_min_ticks)
	pcalau12i	$a1, %pc_hi20(global_min_seconds)
	ori	$a0, $zero, 5
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(global_min_seconds)
	pcalau12i	$a1, %pc_hi20(global_allstats)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(global_allstats)
	pcalau12i	$a1, %pc_hi20(global_custrun)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(global_custrun)
	pcalau12i	$a2, %pc_hi20(global_align)
	ori	$a1, $zero, 8
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.w	$a1, $a2, %pc_lo12(global_align)
	pcalau12i	$s8, %pc_hi20(write_to_file)
	st.w	$zero, $s8, %pc_lo12(write_to_file)
	pcalau12i	$a1, %pc_hi20(mem_array_ents)
	st.w	$zero, $a1, %pc_lo12(mem_array_ents)
	pcalau12i	$a1, %pc_hi20(tests_to_do)
	addi.d	$s7, $a1, %pc_lo12(tests_to_do)
	vrepli.w	$vr0, 1
	vst	$vr0, $s7, 0
	vst	$vr0, $s7, 16
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $s7, 32
	pcalau12i	$a1, %pc_hi20(global_numsortstruct)
	addi.d	$a2, $a1, %pc_lo12(global_numsortstruct)
	st.d	$a0, $a2, 8
	pcalau12i	$a1, %pc_hi20(global_strsortstruct)
	addi.d	$a3, $a1, %pc_lo12(global_strsortstruct)
	st.d	$a0, $a3, 8
	pcalau12i	$a1, %pc_hi20(global_bitopstruct)
	addi.d	$a4, $a1, %pc_lo12(global_bitopstruct)
	st.d	$a0, $a4, 8
	pcalau12i	$a1, %pc_hi20(global_fourierstruct)
	addi.d	$a5, $a1, %pc_lo12(global_fourierstruct)
	st.d	$a0, $a5, 8
	pcalau12i	$a1, %pc_hi20(global_assignstruct)
	addi.d	$a6, $a1, %pc_lo12(global_assignstruct)
	st.d	$a0, $a6, 8
	pcalau12i	$a1, %pc_hi20(global_nnetstruct)
	addi.d	$a7, $a1, %pc_lo12(global_nnetstruct)
	st.d	$a0, $a7, 8
	pcalau12i	$a1, %pc_hi20(global_lustruct)
	addi.d	$a1, $a1, %pc_lo12(global_lustruct)
	st.d	$a0, $a1, 8
	st.w	$zero, $a2, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4015
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $a2, 32
	st.w	$zero, $a3, 0
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $a3, 32
	st.w	$zero, $a4, 0
	lu12i.w	$a0, 8
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $a4, 32
	pcalau12i	$a0, %pc_hi20(global_emfloatstruct)
	addi.d	$a2, $a0, %pc_lo12(global_emfloatstruct)
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	st.w	$zero, $a2, 0
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	vst	$vr0, $a2, 8
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	st.w	$zero, $a5, 0
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	st.w	$zero, $a6, 0
	pcalau12i	$a0, %pc_hi20(global_ideastruct)
	addi.d	$a2, $a0, %pc_lo12(global_ideastruct)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_1)
	st.w	$zero, $a2, 0
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	vst	$vr0, $a2, 8
	pcalau12i	$a0, %pc_hi20(global_huffstruct)
	addi.d	$a2, $a0, %pc_lo12(global_huffstruct)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	st.w	$zero, $a2, 0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	vst	$vr0, $a2, 8
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.w	$zero, $a7, 0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.w	$zero, $a1, 0
	ori	$a0, $zero, 2
	pcalau12i	$a1, %pc_hi20(global_ofile)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$t0, $sp, 160                   # 8-byte Folded Spill
	blt	$t0, $a0, .LBB0_75
# %bb.1:                                # %.preheader.preheader
	addi.d	$s1, $sp, 201
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 200
	ori	$s0, $zero, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %read_comfile.exit.i
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %parse_arg.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s0, $s0, 1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB0_75
.LBB0_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_22 Depth 3
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$s4, $a1, $a0
	ld.bu	$a0, $s4, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB0_167
# %bb.5:                                # %.preheader.i
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s3, $s4, 1
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB0_167
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s5, $zero
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph.i
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a0, $s3, $s5
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.b	$a0, $a1, $a0
	stx.b	$a0, $s3, $s5
	addi.d	$s5, $s5, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bltu	$s5, $a0, .LBB0_7
# %bb.8:                                # %._crit_edge.i
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 67
	beq	$a0, $a1, .LBB0_11
# %bb.9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a1, $zero, 86
	bne	$a0, $a1, .LBB0_167
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(global_allstats)
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s4, $s4, 2
	move	$a0, $s4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_166
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	move	$s3, $a0
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_13:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
.LBB0_14:                               # %.loopexit.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_15:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_22 Depth 3
	addi.d	$a0, $sp, 200
	ori	$a1, $zero, 39
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
# %bb.16:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	add.d	$a0, $fp, $a0
	st.b	$zero, $a0, -1
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $sp, 200
	ori	$a1, $zero, 61
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	st.b	$zero, $a0, 0
	ld.bu	$a2, $sp, 200
	move	$a1, $s1
	.p2align	4, , 16
.LBB0_20:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $s2, 0
	ext.w.b	$a2, $a2
	slli.d	$a2, $a2, 2
	ldx.b	$a3, $a3, $a2
	ld.bu	$a2, $a1, 0
	st.b	$a3, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB0_20
# %bb.21:                               # %strtoupper.exit.preheader.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$s4, $a0, 1
	ori	$s5, $zero, 41
	ori	$s6, $zero, 328
	.p2align	4, , 16
.LBB0_22:                               # %strtoupper.exit.i.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a0, %pc_hi20(paramnames)
	addi.d	$a0, $a0, %pc_lo12(paramnames)
	ldx.d	$a1, $a0, $s6
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=3
	addi.d	$s6, $s6, -8
	addi.w	$a0, $zero, -8
	addi.w	$s5, $s5, -1
	bne	$s6, $a0, .LBB0_22
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 41
	bltu	$a0, $s5, .LBB0_15
# %bb.26:                               #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a0, $s5, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(global_min_ticks)
	b	.LBB0_15
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB0_15
.LBB0_29:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(tests_to_do+32)
	st.w	$a0, $a1, %pc_lo12(tests_to_do+32)
	b	.LBB0_15
.LBB0_30:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_67
.LBB0_31:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(tests_to_do+24)
	st.w	$a0, $a1, %pc_lo12(tests_to_do+24)
	b	.LBB0_15
.LBB0_32:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB0_15
.LBB0_33:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB0_15
.LBB0_34:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, 24
	b	.LBB0_68
.LBB0_35:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, 24
	b	.LBB0_68
.LBB0_36:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_59
.LBB0_37:                               # %.loopexit.loopexit.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltu	$a1, $zero, $a0
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a2, %pc_lo12(global_custrun)
	pcalau12i	$a0, %pc_hi20(tests_to_do)
	addi.d	$a0, $a0, %pc_lo12(tests_to_do)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 8
	st.w	$a1, $a0, 12
	st.w	$a1, $a0, 16
	st.w	$a1, $a0, 20
	st.w	$a1, $a0, 24
	st.w	$a1, $a0, 28
	st.w	$a1, $a0, 32
	st.w	$a1, $a0, 36
	b	.LBB0_15
.LBB0_38:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	b	.LBB0_50
.LBB0_39:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB0_15
.LBB0_40:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(tests_to_do+4)
	st.w	$a0, $a1, %pc_lo12(tests_to_do+4)
	b	.LBB0_15
.LBB0_41:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, 16
	b	.LBB0_15
.LBB0_42:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(tests_to_do+20)
	st.w	$a0, $a1, %pc_lo12(tests_to_do+20)
	b	.LBB0_15
.LBB0_43:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(global_allstats)
	b	.LBB0_15
.LBB0_44:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, 32
	b	.LBB0_15
.LBB0_45:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(global_ofile_name)
	addi.d	$s5, $a0, %pc_lo12(global_ofile_name)
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(global_ofile)
	bnez	$a0, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	pcalau12i	$a1, %pc_hi20(global_ofile_name)
	addi.d	$a1, $a1, %pc_lo12(global_ofile_name)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB0_47:                               #   in Loop: Header=BB0_15 Depth=2
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s8, %pc_lo12(write_to_file)
	b	.LBB0_15
.LBB0_48:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, 32
	b	.LBB0_15
.LBB0_49:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(global_min_seconds)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
.LBB0_50:                               # %.loopexit.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB0_15
.LBB0_51:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(tests_to_do+28)
	st.w	$a0, $a1, %pc_lo12(tests_to_do+28)
	b	.LBB0_15
.LBB0_52:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(tests_to_do+12)
	st.w	$a0, $a1, %pc_lo12(tests_to_do+12)
	b	.LBB0_15
.LBB0_53:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(global_align)
	b	.LBB0_15
.LBB0_54:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB0_15
.LBB0_55:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(tests_to_do)
	st.w	$a0, $a1, %pc_lo12(tests_to_do)
	b	.LBB0_15
.LBB0_56:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(tests_to_do+16)
	st.w	$a0, $a1, %pc_lo12(tests_to_do+16)
	b	.LBB0_15
.LBB0_57:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(tests_to_do+8)
	st.w	$a0, $a1, %pc_lo12(tests_to_do+8)
	b	.LBB0_15
.LBB0_58:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
.LBB0_59:                               # %.loopexit.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.h	$a0, $a1, 24
	b	.LBB0_68
.LBB0_60:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, 16
	b	.LBB0_15
.LBB0_61:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, 32
	b	.LBB0_15
.LBB0_62:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB0_15
.LBB0_63:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB0_15
.LBB0_64:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, 16
	b	.LBB0_15
.LBB0_65:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_67
.LBB0_66:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
.LBB0_67:                               # %.loopexit.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.d	$a0, $a1, 16
.LBB0_68:                               # %.loopexit.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	b	.LBB0_15
.LBB0_69:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, 24
	b	.LBB0_15
.LBB0_70:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB0_15
.LBB0_71:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, 16
	b	.LBB0_15
.LBB0_72:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, 24
	b	.LBB0_15
.LBB0_73:                               #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -84
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(tests_to_do+36)
	st.w	$a0, $a1, %pc_lo12(tests_to_do+36)
	b	.LBB0_15
.LBB0_74:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB0_15
.LBB0_75:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_77
# %bb.76:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_77:                               # %output_string.exit
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_79
# %bb.78:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_79:                               # %output_string.exit77
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_81
# %bb.80:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_81:                               # %output_string.exit80
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_83
# %bb.82:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_83:                               # %output_string.exit83
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_85
# %bb.84:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_85:                               # %output_string.exit86
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_87
# %bb.86:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_87:                               # %output_string.exit89
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_89
# %bb.88:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_89:                               # %output_string.exit92
	pcalau12i	$a0, %pc_hi20(.Lstr.9)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.9)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_91
# %bb.90:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 52
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_91:                               # %output_string.exit95
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(global_allstats)
	beqz	$a0, .LBB0_108
# %bb.92:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_94
# %bb.93:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB0_94:                               # %output_string.exit98
	pcalau12i	$a0, %pc_hi20(.Lstr.10)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.10)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_96
# %bb.95:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 78
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_96:                               # %output_string.exit101
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(asctime)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$fp, $a0, %pc_lo12(buffer)
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a1, $a0, %pc_lo12(.L.str.63)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_98
# %bb.97:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_98:                               # %output_string.exit104
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 8
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$fp, $a0, %pc_lo12(buffer)
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a1, $a0, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	ori	$a4, $zero, 4
	ori	$a5, $zero, 8
	ori	$a6, $zero, 1
	ori	$a7, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_100
# %bb.99:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_100:                              # %output_string.exit107
	pcalau12i	$a0, %pc_hi20(sysname)
	ld.d	$a2, $a0, %pc_lo12(sysname)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$fp, $a0, %pc_lo12(buffer)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_102
# %bb.101:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_102:                              # %output_string.exit110
	pcalau12i	$a0, %pc_hi20(compilername)
	ld.d	$a2, $a0, %pc_lo12(compilername)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$fp, $a0, %pc_lo12(buffer)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_104
# %bb.103:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_104:                              # %output_string.exit113
	pcalau12i	$a0, %pc_hi20(compilerversion)
	ld.d	$a2, $a0, %pc_lo12(compilerversion)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$fp, $a0, %pc_lo12(buffer)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_106
# %bb.105:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_106:                              # %output_string.exit116
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_108
# %bb.107:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	ori	$a1, $zero, 78
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_108:                              # %output_string.exit119
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.12)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_110
# %bb.109:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	ori	$a1, $zero, 67
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_110:                              # %output_string.exit122.preheader
	pcalau12i	$a0, %pc_hi20(ftestnames)
	addi.d	$s4, $a0, %pc_lo12(ftestnames)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$fp, $a0, %pc_lo12(buffer)
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$s0, $a0, %pc_lo12(.L.str.68)
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$s1, $a0, %pc_lo12(.L.str.88)
	pcalau12i	$a0, %pc_hi20(funcpointer)
	addi.d	$a0, $a0, %pc_lo12(funcpointer)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$s2, $a0, %pc_lo12(.L.str.69)
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI0_1)
	addi.d	$s3, $a0, %pc_lo12(.LJTI0_1)
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$s5, $zero
	b	.LBB0_112
	.p2align	4, , 16
.LBB0_111:                              # %output_string.exit138
                                        #   in Loop: Header=BB0_112 Depth=1
	addi.d	$s7, $s7, 4
	addi.d	$s5, $s5, 8
	addi.w	$s6, $s6, 1
	ori	$a0, $zero, 80
	beq	$s5, $a0, .LBB0_154
.LBB0_112:                              # %output_string.exit122
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s7, 0
	beqz	$a0, .LBB0_111
# %bb.113:                              #   in Loop: Header=BB0_112 Depth=1
	ldx.d	$a2, $s4, $s5
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_115:                              # %output_string.exit125
                                        #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s5
	jirl	$ra, $a0, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_117:                              # %output_string.exit128
                                        #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(global_allstats)
	beqz	$a0, .LBB0_111
# %bb.118:                              #   in Loop: Header=BB0_112 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_120:                              # %output_string.exit131
                                        #   in Loop: Header=BB0_112 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_122:                              # %output_string.exit134
                                        #   in Loop: Header=BB0_112 Depth=1
	ori	$a0, $zero, 9
	bltu	$a0, $s6, .LBB0_152
# %bb.123:                              # %output_string.exit134
                                        #   in Loop: Header=BB0_112 Depth=1
	slli.d	$a0, $s6, 2
	ldx.w	$a0, $s3, $a0
	add.d	$a0, $s3, $a0
	jr	$a0
.LBB0_124:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.hu	$a2, $a0, 24
	addi.d	$a0, $sp, 200
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 200
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_126:                              # %output_string.exit.i
                                        #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_141
.LBB0_127:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a1, $a0, %pc_lo12(.L.str.95)
	b	.LBB0_149
.LBB0_128:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_143
.LBB0_129:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 24
	addi.d	$a0, $sp, 200
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_131:                              # %output_string.exit12.i
                                        #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	b	.LBB0_149
.LBB0_132:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 24
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_134:                              # %output_string.exit18.i
                                        #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a1, $a0, %pc_lo12(.L.str.94)
	b	.LBB0_149
.LBB0_135:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a1, $a0, %pc_lo12(.L.str.94)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_137:                              # %output_string.exit36.i
                                        #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 24
	b	.LBB0_148
.LBB0_138:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.hu	$a2, $a0, 24
	addi.d	$a0, $sp, 200
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 200
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_140:                              # %output_string.exit6.i
                                        #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
.LBB0_141:                              # %output_string.exit.i
                                        #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a2, $a0, 32
	addi.d	$a0, $sp, 200
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 200
	move	$a0, $s1
	b	.LBB0_150
.LBB0_142:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
.LBB0_143:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a2, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a1, $a0, %pc_lo12(.L.str.96)
	b	.LBB0_149
.LBB0_144:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a1, $a0, %pc_lo12(.L.str.94)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_146:                              # %output_string.exit30.i
                                        #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 24
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	b	.LBB0_149
.LBB0_147:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
.LBB0_148:                              # %output_string.exit36.i
                                        #   in Loop: Header=BB0_112 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
.LBB0_149:                              #   in Loop: Header=BB0_112 Depth=1
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	addi.d	$a1, $sp, 200
.LBB0_150:                              #   in Loop: Header=BB0_112 Depth=1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_152
# %bb.151:                              # %output_string.exit3.sink.split.i
                                        #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_152:                              # %show_stats.exit
                                        #   in Loop: Header=BB0_112 Depth=1
	ldx.d	$a2, $s4, $s5
	move	$a0, $fp
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_111
# %bb.153:                              #   in Loop: Header=BB0_112 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	b	.LBB0_111
.LBB0_154:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(global_custrun)
	bnez	$a0, .LBB0_165
# %bb.155:
	pcalau12i	$a0, %pc_hi20(.Lstr.13)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.13)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_157
# %bb.156:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	ori	$a1, $zero, 78
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_157:                              # %output_string.exit141
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$fp, $a0, %pc_lo12(buffer)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_159
# %bb.158:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_159:                              # %output_string.exit144
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$fp, $a0, %pc_lo12(buffer)
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_161
# %bb.160:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$a0, $a0, %pc_lo12(buffer)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB0_161:                              # %output_string.exit147
	pcalau12i	$a0, %pc_hi20(.Lstr.14)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.14)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_163
# %bb.162:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	ori	$a1, $zero, 74
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_163:                              # %output_string.exit150
	pcalau12i	$a0, %pc_hi20(.Lstr.15)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.15)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(write_to_file)
	beqz	$a0, .LBB0_165
# %bb.164:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(global_ofile)
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	ori	$a1, $zero, 54
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_165:                              # %output_string.exit153
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_166:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_167:                              # %.loopexit168
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(display_help)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_43-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_37-.LJTI0_0
	.word	.LBB0_55-.LJTI0_0
	.word	.LBB0_58-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_40-.LJTI0_0
	.word	.LBB0_61-.LJTI0_0
	.word	.LBB0_36-.LJTI0_0
	.word	.LBB0_39-.LJTI0_0
	.word	.LBB0_57-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
	.word	.LBB0_44-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_52-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_69-.LJTI0_0
	.word	.LBB0_54-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_65-.LJTI0_0
	.word	.LBB0_70-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_41-.LJTI0_0
	.word	.LBB0_74-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_71-.LJTI0_0
	.word	.LBB0_72-.LJTI0_0
	.word	.LBB0_63-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_30-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_73-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_38-.LJTI0_0
	.word	.LBB0_53-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_124-.LJTI0_1
	.word	.LBB0_138-.LJTI0_1
	.word	.LBB0_129-.LJTI0_1
	.word	.LBB0_132-.LJTI0_1
	.word	.LBB0_127-.LJTI0_1
	.word	.LBB0_142-.LJTI0_1
	.word	.LBB0_144-.LJTI0_1
	.word	.LBB0_135-.LJTI0_1
	.word	.LBB0_147-.LJTI0_1
	.word	.LBB0_128-.LJTI0_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function display_help
	.type	display_help,@function
display_help:                           # @display_help
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	display_help, .Lfunc_end1-display_help
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"You can enter your system description in nbench0.h"
	.size	.L.str, 51

	.type	sysname,@object                 # @sysname
	.data
	.globl	sysname
	.p2align	3, 0x0
sysname:
	.dword	.L.str
	.size	sysname, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"It then will be printed here after you recompile"
	.size	.L.str.1, 49

	.type	compilername,@object            # @compilername
	.data
	.globl	compilername
	.p2align	3, 0x0
compilername:
	.dword	.L.str.1
	.size	compilername, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Have a nice day"
	.size	.L.str.2, 16

	.type	compilerversion,@object         # @compilerversion
	.data
	.globl	compilerversion
	.p2align	3, 0x0
compilerversion:
	.dword	.L.str.2
	.size	compilerversion, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"NUMERIC SORT    "
	.size	.L.str.3, 17

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"STRING SORT     "
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"BITFIELD        "
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"FP EMULATION    "
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"FOURIER         "
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"ASSIGNMENT      "
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"IDEA            "
	.size	.L.str.9, 17

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"HUFFMAN         "
	.size	.L.str.10, 17

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"NEURAL NET      "
	.size	.L.str.11, 17

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"LU DECOMPOSITION"
	.size	.L.str.12, 17

	.type	ftestnames,@object              # @ftestnames
	.data
	.globl	ftestnames
	.p2align	3, 0x0
ftestnames:
	.dword	.L.str.3
	.dword	.L.str.4
	.dword	.L.str.5
	.dword	.L.str.6
	.dword	.L.str.7
	.dword	.L.str.8
	.dword	.L.str.9
	.dword	.L.str.10
	.dword	.L.str.11
	.dword	.L.str.12
	.size	ftestnames, 80

	.type	bindex,@object                  # @bindex
	.globl	bindex
	.p2align	3, 0x0
bindex:
	.dword	0x40437f1a9fbe76c9              # double 38.993000000000002
	.dword	0x4001e76c8b439581              # double 2.238
	.dword	0x41563d1200000000              # double 5829704
	.dword	0x4000ac083126e979              # double 2.0840000000000001
	.dword	0x408b7a395810624e              # double 879.27800000000002
	.dword	0x3fd0d1b71758e219              # double 0.26279999999999998
	.dword	0x40505872b020c49c              # double 65.382000000000005
	.dword	0x404207ef9db22d0e              # double 36.061999999999998
	.dword	0x3fe3eb851eb851ec              # double 0.62250000000000005
	.dword	0x40334d97f62b6ae8              # double 19.303100000000001
	.size	bindex, 80

	.type	lx_bindex,@object               # @lx_bindex
	.globl	lx_bindex
	.p2align	3, 0x0
lx_bindex:
	.dword	0x405daeb851eb851f              # double 118.73
	.dword	0x402ceb020c49ba5e              # double 14.459
	.dword	0x417a9df700000000              # double 2.791E+7
	.dword	0x40221013a92a3055              # double 9.0313999999999997
	.dword	0x4098760000000000              # double 1565.5
	.dword	0x3ff036113404ea4b              # double 1.0132000000000001
	.dword	0x406b86b851eb851f              # double 220.21000000000001
	.dword	0x405c3b851eb851ec              # double 112.93000000000001
	.dword	0x3ff7adab9f559b3d              # double 1.4799
	.dword	0x403abb645a1cac08              # double 26.731999999999999
	.size	lx_bindex, 80

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"GLOBALMINTICKS"
	.size	.L.str.13, 15

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"MINSECONDS"
	.size	.L.str.14, 11

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"ALLSTATS"
	.size	.L.str.15, 9

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"OUTFILE"
	.size	.L.str.16, 8

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"CUSTOMRUN"
	.size	.L.str.17, 10

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"DONUMSORT"
	.size	.L.str.18, 10

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"NUMNUMARRAYS"
	.size	.L.str.19, 13

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"NUMARRAYSIZE"
	.size	.L.str.20, 13

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"NUMMINSECONDS"
	.size	.L.str.21, 14

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"DOSTRINGSORT"
	.size	.L.str.22, 13

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"STRARRAYSIZE"
	.size	.L.str.23, 13

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"NUMSTRARRAYS"
	.size	.L.str.24, 13

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"STRMINSECONDS"
	.size	.L.str.25, 14

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"DOBITFIELD"
	.size	.L.str.26, 11

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"NUMBITOPS"
	.size	.L.str.27, 10

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"BITFIELDSIZE"
	.size	.L.str.28, 13

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"BITMINSECONDS"
	.size	.L.str.29, 14

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"DOEMF"
	.size	.L.str.30, 6

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"EMFARRAYSIZE"
	.size	.L.str.31, 13

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"EMFLOOPS"
	.size	.L.str.32, 9

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"EMFMINSECONDS"
	.size	.L.str.33, 14

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"DOFOUR"
	.size	.L.str.34, 7

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"FOURSIZE"
	.size	.L.str.35, 9

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"FOURMINSECONDS"
	.size	.L.str.36, 15

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"DOASSIGN"
	.size	.L.str.37, 9

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"ASSIGNARRAYS"
	.size	.L.str.38, 13

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"ASSIGNMINSECONDS"
	.size	.L.str.39, 17

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"DOIDEA"
	.size	.L.str.40, 7

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"IDEARRAYSIZE"
	.size	.L.str.41, 13

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"IDEALOOPS"
	.size	.L.str.42, 10

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"IDEAMINSECONDS"
	.size	.L.str.43, 15

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"DOHUFF"
	.size	.L.str.44, 7

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"HUFARRAYSIZE"
	.size	.L.str.45, 13

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"HUFFLOOPS"
	.size	.L.str.46, 10

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"HUFFMINSECONDS"
	.size	.L.str.47, 15

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"DONNET"
	.size	.L.str.48, 7

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"NNETLOOPS"
	.size	.L.str.49, 10

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"NNETMINSECONDS"
	.size	.L.str.50, 15

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"DOLU"
	.size	.L.str.51, 5

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"LUNUMARRAYS"
	.size	.L.str.52, 12

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"LUMINSECONDS"
	.size	.L.str.53, 13

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"ALIGN"
	.size	.L.str.54, 6

	.type	paramnames,@object              # @paramnames
	.data
	.globl	paramnames
	.p2align	3, 0x0
paramnames:
	.dword	.L.str.13
	.dword	.L.str.14
	.dword	.L.str.15
	.dword	.L.str.16
	.dword	.L.str.17
	.dword	.L.str.18
	.dword	.L.str.19
	.dword	.L.str.20
	.dword	.L.str.21
	.dword	.L.str.22
	.dword	.L.str.23
	.dword	.L.str.24
	.dword	.L.str.25
	.dword	.L.str.26
	.dword	.L.str.27
	.dword	.L.str.28
	.dword	.L.str.29
	.dword	.L.str.30
	.dword	.L.str.31
	.dword	.L.str.32
	.dword	.L.str.33
	.dword	.L.str.34
	.dword	.L.str.35
	.dword	.L.str.36
	.dword	.L.str.37
	.dword	.L.str.38
	.dword	.L.str.39
	.dword	.L.str.40
	.dword	.L.str.41
	.dword	.L.str.42
	.dword	.L.str.43
	.dword	.L.str.44
	.dword	.L.str.45
	.dword	.L.str.46
	.dword	.L.str.47
	.dword	.L.str.48
	.dword	.L.str.49
	.dword	.L.str.50
	.dword	.L.str.51
	.dword	.L.str.52
	.dword	.L.str.53
	.dword	.L.str.54
	.size	paramnames, 336

	.type	global_numsortstruct,@object    # @global_numsortstruct
	.bss
	.globl	global_numsortstruct
	.p2align	3, 0x0
global_numsortstruct:
	.space	40
	.size	global_numsortstruct, 40

	.type	global_strsortstruct,@object    # @global_strsortstruct
	.globl	global_strsortstruct
	.p2align	3, 0x0
global_strsortstruct:
	.space	40
	.size	global_strsortstruct, 40

	.type	global_bitopstruct,@object      # @global_bitopstruct
	.globl	global_bitopstruct
	.p2align	3, 0x0
global_bitopstruct:
	.space	40
	.size	global_bitopstruct, 40

	.type	global_emfloatstruct,@object    # @global_emfloatstruct
	.globl	global_emfloatstruct
	.p2align	3, 0x0
global_emfloatstruct:
	.space	40
	.size	global_emfloatstruct, 40

	.type	global_fourierstruct,@object    # @global_fourierstruct
	.globl	global_fourierstruct
	.p2align	3, 0x0
global_fourierstruct:
	.space	32
	.size	global_fourierstruct, 32

	.type	global_assignstruct,@object     # @global_assignstruct
	.globl	global_assignstruct
	.p2align	3, 0x0
global_assignstruct:
	.space	32
	.size	global_assignstruct, 32

	.type	global_ideastruct,@object       # @global_ideastruct
	.globl	global_ideastruct
	.p2align	3, 0x0
global_ideastruct:
	.space	40
	.size	global_ideastruct, 40

	.type	global_huffstruct,@object       # @global_huffstruct
	.globl	global_huffstruct
	.p2align	3, 0x0
global_huffstruct:
	.space	40
	.size	global_huffstruct, 40

	.type	global_nnetstruct,@object       # @global_nnetstruct
	.globl	global_nnetstruct
	.p2align	3, 0x0
global_nnetstruct:
	.space	32
	.size	global_nnetstruct, 32

	.type	global_lustruct,@object         # @global_lustruct
	.globl	global_lustruct
	.p2align	3, 0x0
global_lustruct:
	.space	32
	.size	global_lustruct, 32

	.type	global_fstruct,@object          # @global_fstruct
	.data
	.globl	global_fstruct
	.p2align	3, 0x0
global_fstruct:
	.dword	global_numsortstruct
	.dword	global_strsortstruct
	.dword	global_bitopstruct
	.dword	global_emfloatstruct
	.dword	global_fourierstruct
	.dword	global_assignstruct
	.dword	global_ideastruct
	.dword	global_huffstruct
	.dword	global_nnetstruct
	.dword	global_lustruct
	.size	global_fstruct, 80

	.type	funcpointer,@object             # @funcpointer
	.globl	funcpointer
	.p2align	3, 0x0
funcpointer:
	.dword	DoNumSort
	.dword	DoStringSort
	.dword	DoBitops
	.dword	DoEmFloat
	.dword	DoFourier
	.dword	DoAssign
	.dword	DoIDEA
	.dword	DoHuffman
	.dword	DoNNET
	.dword	DoLU
	.size	funcpointer, 80

	.type	global_min_ticks,@object        # @global_min_ticks
	.bss
	.globl	global_min_ticks
	.p2align	3, 0x0
global_min_ticks:
	.dword	0                               # 0x0
	.size	global_min_ticks, 8

	.type	global_min_seconds,@object      # @global_min_seconds
	.globl	global_min_seconds
	.p2align	3, 0x0
global_min_seconds:
	.dword	0                               # 0x0
	.size	global_min_seconds, 8

	.type	global_allstats,@object         # @global_allstats
	.globl	global_allstats
	.p2align	2, 0x0
global_allstats:
	.word	0                               # 0x0
	.size	global_allstats, 4

	.type	global_custrun,@object          # @global_custrun
	.globl	global_custrun
	.p2align	2, 0x0
global_custrun:
	.word	0                               # 0x0
	.size	global_custrun, 4

	.type	global_align,@object            # @global_align
	.globl	global_align
	.p2align	2, 0x0
global_align:
	.word	0                               # 0x0
	.size	global_align, 4

	.type	write_to_file,@object           # @write_to_file
	.globl	write_to_file
	.p2align	2, 0x0
write_to_file:
	.word	0                               # 0x0
	.size	write_to_file, 4

	.type	mem_array_ents,@object          # @mem_array_ents
	.globl	mem_array_ents
	.p2align	2, 0x0
mem_array_ents:
	.word	0                               # 0x0
	.size	mem_array_ents, 4

	.type	tests_to_do,@object             # @tests_to_do
	.globl	tests_to_do
	.p2align	4, 0x0
tests_to_do:
	.space	40
	.size	tests_to_do, 40

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"BBBBBB   YYY   Y  TTTTTTT  EEEEEEE\n"
	.size	.L.str.55, 36

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"BBB   B  YYY   Y    TTT    EEE\n"
	.size	.L.str.56, 32

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"BBBBBB    YYY Y     TTT    EEEEEEE\n"
	.size	.L.str.57, 36

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"BBB   B    YYY      TTT    EEE\n"
	.size	.L.str.58, 32

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"BBBBBB     YYY      TTT    EEEEEEE\n\n"
	.size	.L.str.59, 37

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"\nBYTEmark (tm) Native Mode Benchmark ver. 2 (10/95)\n"
	.size	.L.str.60, 53

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"============================== ALL STATISTICS ===============================\n"
	.size	.L.str.62, 79

	.type	buffer,@object                  # @buffer
	.bss
	.globl	buffer
buffer:
	.space	1024
	.size	buffer, 1024

	.type	.L.str.63,@object               # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"**Date and time of benchmark run: %s"
	.size	.L.str.63, 37

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"**Sizeof: char:%u short:%u int:%u long:%u u8:%u u16:%u u32:%u int32:%u\n"
	.size	.L.str.64, 72

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"**%s\n"
	.size	.L.str.65, 6

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"=============================================================================\n"
	.size	.L.str.66, 79

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"\nNOTE!!! Iteration display disabled to prevent diffs from failing!\n"
	.size	.L.str.67, 68

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%s    :"
	.size	.L.str.68, 8

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"  Iterations/sec.: %13.2f  Index: %6.2f\n"
	.size	.L.str.69, 41

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"  Absolute standard deviation: %g\n"
	.size	.L.str.70, 35

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"  Number of runs: %lu\n"
	.size	.L.str.72, 23

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"Done with %s\n\n"
	.size	.L.str.73, 15

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"==========================ORIGINAL BYTEMARK RESULTS==========================\n"
	.size	.L.str.74, 79

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"INTEGER INDEX       : %.3f\n"
	.size	.L.str.75, 28

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"FLOATING-POINT INDEX: %.3f\n"
	.size	.L.str.76, 28

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"Baseline (MSDOS*)   : Pentium* 90, 256 KB L2-cache, Watcom* compiler 10.0\n"
	.size	.L.str.77, 75

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"* Trademarks are property of their respective holder.\n"
	.size	.L.str.78, 55

	.type	global_ofile_name,@object       # @global_ofile_name
	.bss
	.globl	global_ofile_name
global_ofile_name:
	.space	1024
	.size	global_ofile_name, 1024

	.type	global_ofile,@object            # @global_ofile
	.globl	global_ofile
	.p2align	3, 0x0
global_ofile:
	.dword	0
	.size	global_ofile, 8

	.type	mem_array,@object               # @mem_array
	.globl	mem_array
	.p2align	3, 0x0
mem_array:
	.space	320
	.size	mem_array, 320

	.type	.L.str.79,@object               # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"r"
	.size	.L.str.79, 2

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"**Error opening file: %s\n"
	.size	.L.str.80, 26

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"**COMMAND FILE ERROR at LINE:\n %s\n"
	.size	.L.str.81, 35

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"**COMMAND FILE ERROR -- UNKNOWN PARAM: %s"
	.size	.L.str.82, 42

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"a"
	.size	.L.str.83, 2

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"**Error opening output file: %s\n"
	.size	.L.str.84, 33

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"Usage: %s [-v] [-c<FILE>]\n"
	.size	.L.str.85, 27

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"%s"
	.size	.L.str.88, 3

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"  Number of arrays: %d\n"
	.size	.L.str.89, 24

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"  Array size: %ld\n"
	.size	.L.str.90, 19

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"  Operations array size: %ld\n"
	.size	.L.str.91, 30

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"  Bitfield array size: %ld\n"
	.size	.L.str.92, 28

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"  Number of loops: %lu\n"
	.size	.L.str.93, 24

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"  Array size: %lu\n"
	.size	.L.str.94, 19

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"  Number of coefficients: %lu\n"
	.size	.L.str.95, 31

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"  Number of arrays: %lu\n"
	.size	.L.str.96, 25

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	" Number of loops: %lu\n"
	.size	.L.str.97, 23

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" -v = verbose"
	.size	.Lstr, 14

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	" -c = input parameters thru command file <FILE>"
	.size	.Lstr.1, 48

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"BBBBBB   YYY   Y  TTTTTTT  EEEEEEE"
	.size	.Lstr.2, 35

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"BBB   B  YYY   Y    TTT    EEE"
	.size	.Lstr.4, 31

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"BBBBBB    YYY Y     TTT    EEEEEEE"
	.size	.Lstr.5, 35

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"BBB   B    YYY      TTT    EEE"
	.size	.Lstr.7, 31

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"BBBBBB     YYY      TTT    EEEEEEE\n"
	.size	.Lstr.8, 36

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"\nBYTEmark (tm) Native Mode Benchmark ver. 2 (10/95)"
	.size	.Lstr.9, 52

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"============================== ALL STATISTICS ==============================="
	.size	.Lstr.10, 78

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"============================================================================="
	.size	.Lstr.11, 78

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"\nNOTE!!! Iteration display disabled to prevent diffs from failing!"
	.size	.Lstr.12, 67

	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	"==========================ORIGINAL BYTEMARK RESULTS=========================="
	.size	.Lstr.13, 78

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"Baseline (MSDOS*)   : Pentium* 90, 256 KB L2-cache, Watcom* compiler 10.0"
	.size	.Lstr.14, 74

	.type	.Lstr.15,@object                # @str.15
.Lstr.15:
	.asciz	"* Trademarks are property of their respective holder."
	.size	.Lstr.15, 54

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DoNumSort
	.addrsig_sym DoStringSort
	.addrsig_sym DoBitops
	.addrsig_sym DoEmFloat
	.addrsig_sym DoFourier
	.addrsig_sym DoAssign
	.addrsig_sym DoIDEA
	.addrsig_sym DoHuffman
	.addrsig_sym DoNNET
	.addrsig_sym DoLU
	.addrsig_sym global_numsortstruct
	.addrsig_sym global_strsortstruct
	.addrsig_sym global_bitopstruct
	.addrsig_sym global_emfloatstruct
	.addrsig_sym global_fourierstruct
	.addrsig_sym global_assignstruct
	.addrsig_sym global_ideastruct
	.addrsig_sym global_huffstruct
	.addrsig_sym global_nnetstruct
	.addrsig_sym global_lustruct
	.addrsig_sym buffer
	.addrsig_sym global_ofile_name
